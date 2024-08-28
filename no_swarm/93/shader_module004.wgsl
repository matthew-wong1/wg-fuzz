struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<bool> {
    let var_0 = select(1u, select(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1, u_input.a.x), u_input.a.x), arg_1, all(vec3<bool>(true, true, true))), false);
    let var_1 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true)), select(vec3<bool>(false, !all(vec3<bool>(true, false, false)), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), false), !vec3<bool>(false, true, select(false, false, true))), vec3<bool>(false, u_input.e.x == (u_input.b >> (abs(arg_0.a) % 32u)), _wgslsmith_div_i32(firstLeadingBit(2147483647i), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.b))) != _wgslsmith_add_i32(u_input.e.x, u_input.c)));
    let var_2 = vec4<bool>(all(select(!(!vec4<bool>(true, true, true, var_1.x)), select(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false), false), !vec4<bool>(true, true, var_1.x, true), false), _wgslsmith_f_op_f32(floor(-1000f)) != -1178f)), all(!vec2<bool>(all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !var_1.x)), false, false && all(select(!vec4<bool>(false, var_1.x, true, true), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), true)));
    var var_3 = select(vec4<bool>(true, !any(select(var_2.zw, var_1.zz, vec2<bool>(var_1.x, var_2.x))), var_1.x, var_2.x), vec4<bool>(true, true, !var_2.x, true), var_2);
    var_3 = select(vec4<bool>(any(vec2<bool>(true, var_3.x)), false, var_1.x, !var_1.x), vec4<bool>(false, true, all(vec2<bool>(false, !var_3.x)), u_input.a.x <= ~_wgslsmith_mult_u32(42582u, arg_0.a)), !(!(!vec4<bool>(true, var_3.x, var_3.x, false))));
    return select(select(!(!select(vec2<bool>(var_3.x, var_1.x), var_2.wy, var_3.x)), select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(false, false), true), var_3.zw), select(var_2.zw, !(!select(vec2<bool>(var_1.x, true), var_3.wy, var_3.x)), !(!var_2.ww)), vec2<bool>(var_3.x, any(!(!vec4<bool>(var_2.x, var_3.x, true, var_3.x)))));
}

fn func_2() -> bool {
    let var_0 = 1u;
    let var_1 = !any(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_2 = !(!select(vec2<bool>(!var_1, false), func_3(Struct_3(17548u, vec3<u32>(6186u, var_0, 0u)), _wgslsmith_add_u32(57800u, var_0)), vec2<bool>(true, true)));
    var var_3 = false;
    var_3 = true;
    return var_2.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_1(vec2<f32>(-215f, _wgslsmith_f_op_f32(arg_1 + 1f)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.c, arg_0, arg_0, -21325i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, 11462i, -24402i, -44835i), vec4<i32>(arg_0, -11725i, u_input.b, 2147483647i) | u_input.e)), u_input.e >> (~vec4<u32>(4294967295u, arg_3.x, arg_3.x, arg_3.x) % vec4<u32>(32u))), -_wgslsmith_mod_i32(u_input.d, ~(~(-32208i))), abs(~_wgslsmith_add_u32(0u, arg_3.x)) >> (countOneBits(arg_3.x) % 32u), !vec4<bool>(true, all(vec2<bool>(false, true)) == false, select(true, func_2(), u_input.a.x <= 4294967295u), !arg_2));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - arg_1), _wgslsmith_f_op_f32(ceil(arg_1))), var_0.a)), var_0.a);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-274f, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1292f * 519f))), -_wgslsmith_mult_vec4_i32(u_input.e, _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, arg_0, var_0.c, -27586i)), _wgslsmith_div_vec4_i32(vec4<i32>(4138i, 2147483647i, var_0.c, -18625i), vec4<i32>(var_0.c, arg_0, -2147483647i, -9534i)))), u_input.c, u_input.a.x, vec4<bool>(any(var_0.e.zxw) == true, !arg_2, false, any(vec2<bool>(arg_2, u_input.a.x <= u_input.a.x))));
    var_1 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1515f, -1080f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, arg_1))), !(u_input.a.x <= arg_3.x))))));
    return select(u_input.a.x, min(u_input.a.x ^ arg_3.x, u_input.a.x), false);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    var var_0 = u_input.e;
    let var_1 = arg_2.c;
    let var_2 = !arg_2.c.e.xyy;
    var var_3 = func_3(arg_0, var_1.d);
    var var_4 = var_2.x;
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, arg_2.a.a.x)), arg_2.c.a, !select(arg_2.c.e.xy, arg_2.c.e.ww, var_1.e.xy))), var_1.a), 52486u, Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1586f, var_1.a.x), -1000f), var_1.a.x), vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_clamp_i32(arg_3, arg_3, -2147483647i), reverseBits(arg_3)), 2147483647i << (var_1.d % 32u), -_wgslsmith_div_i32(-47986i, arg_3)), 0i, 0u, arg_2.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(u_input.a.x, vec3<u32>(~u_input.a.x, ~(~u_input.a.x), u_input.a.x)), !(_wgslsmith_add_i32(u_input.e.x, ~0i) < (1i << (func_1(u_input.e.x, -642f, true, vec3<u32>(38108u, 0u, 9137u)) % 32u))), Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(2204f * 431f), 1457f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(226f, -124f), vec2<f32>(1295f, 1146f)))), ~_wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(24444u, 4154u, 0u, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1356f, -625f))), u_input.e, 1i, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 17102u, 4294967295u), vec3<u32>(68102u, u_input.a.x, 1u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), u_input.b <= u_input.d))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e.zxx, vec3<i32>(1i << (0u % 32u), abs(-2147483647i), -u_input.e.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, u_input.b, u_input.e.x), vec3<i32>(u_input.e.x, 54800i, 62822i)), vec3<i32>(-16940i, _wgslsmith_mod_i32(3129i, u_input.b), firstTrailingBit(-1i)))));
    var_0 = Struct_4(var_0.a, abs(3948u), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.x, var_0.c.a.x) * var_0.c.a), var_0.c.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.a.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(686f, var_0.a.a.x), var_0.c.a, vec2<bool>(true, true))))))), -(reverseBits(vec4<i32>(-2147483647i, u_input.c, var_0.c.b.x, u_input.b)) & ~vec4<i32>(-1i, u_input.e.x, var_0.c.c, 2147483647i)), -73997i, _wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 11188u, 4294967295u))), var_0.c.e));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x * func_4(Struct_3(var_0.c.d, u_input.a.xyw), !var_0.c.e.x, func_4(Struct_3(0u, u_input.a.zww), var_0.c.e.x, Struct_4(Struct_2(var_0.a.a, var_0.c.a), u_input.a.x, Struct_1(vec2<f32>(-438f, var_0.c.a.x), var_0.c.b, 14144i, 0u, vec4<bool>(true, false, var_0.c.e.x, var_0.c.e.x))), -19329i), _wgslsmith_dot_vec2_i32(vec2<i32>(-3955i, u_input.e.x), vec2<i32>(var_0.c.b.x, -1i))).c.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b.x, var_0.c.a.x)) - _wgslsmith_f_op_f32(step(var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.a.b.x)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_0.c.a.x)))))));
    var var_2 = vec4<u32>(var_0.b & 1u, 0u, abs(~var_0.b), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(37683u, ~1u, _wgslsmith_mult_u32(45962u, u_input.a.x), _wgslsmith_div_u32(8148u, 23188u)), vec4<u32>(u_input.a.x, firstLeadingBit(var_0.b), func_4(Struct_3(22054u, u_input.a.xzz), var_0.c.e.x, Struct_4(Struct_2(var_0.c.a, var_0.c.a), 35126u, Struct_1(var_0.a.b, vec4<i32>(29113i, 0i, 1i, 0i), u_input.c, 22999u, vec4<bool>(var_0.c.e.x, true, true, var_0.c.e.x))), -2012i).b, countOneBits(0u)), u_input.a)));
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(vec2<i32>(-6021i, -587i))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~var_2.x), vec2<u32>(_wgslsmith_sub_u32(5725u, var_0.c.d), 4294967295u), _wgslsmith_div_vec2_u32(var_2.zz, _wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(74127u, 74708u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(940f))), _wgslsmith_f_op_f32(round(-572f)))), vec3<f32>(-1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), -1679f), (vec4<u32>(~1u, firstLeadingBit(u_input.a.x), func_1(-9251i, var_0.c.a.x, var_0.c.e.x, vec3<u32>(4294967295u, 1u, u_input.a.x)), ~u_input.a.x) << (vec4<u32>(1u, 0u, 1u, 15493u) % vec4<u32>(32u))) ^ abs(vec4<u32>(var_2.x | var_0.c.d, _wgslsmith_clamp_u32(u_input.a.x, var_2.x, var_0.b), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 19318u), vec3<u32>(u_input.a.x, var_2.x, var_0.b)))), max(select(~select(var_2.x, 74982u, false), _wgslsmith_dot_vec2_u32(var_2.yx, ~vec2<u32>(12782u, u_input.a.x)), true), ~func_4(Struct_3(u_input.a.x, vec3<u32>(u_input.a.x, 16200u, var_2.x)), select(true, false, var_0.c.e.x), func_4(Struct_3(var_0.b, vec3<u32>(var_0.b, u_input.a.x, 1229u)), true, Struct_4(Struct_2(var_0.a.a, var_0.a.a), var_0.c.d, var_0.c), 9497i), u_input.e.x).b));
}

