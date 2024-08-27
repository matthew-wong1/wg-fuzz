struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    global0 = ~2147483647i;
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(1743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(123f * 737f))), 1218f, 553f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f))), -1050f, -122f, -289f));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 726f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1526f, -106f, -1324f), vec4<f32>(var_0.x, var_0.x, 988f, -280f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1587f, 348f, var_0.x) + vec4<f32>(-1689f, -111f, var_0.x, -994f))))) * vec4<f32>(-1655f, -933f, -2679f, -173f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 2189f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), !vec4<bool>((50917u << (u_input.b % 32u)) != 0u, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), true, !all(vec4<bool>(true, false, false, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, var_0.x, -1000f, 529f));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -493f, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, var_0.x, var_0.x, -655f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1556f, var_0.x, 1000f, var_1.x) * vec4<f32>(-496f, 254f, -437f, var_1.x))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.a.d.yx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-971f)) - _wgslsmith_f_op_f32(f32(-1f) * -965f)))));
    let var_2 = abs(-vec2<i32>(40283i, arg_0));
    let var_3 = arg_1;
    let var_4 = var_3;
    return var_2.x;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = vec2<f32>(1000f, -467f);
    global0 = -arg_0;
    global0 = ~arg_2.a.d.x;
    var var_1 = -arg_0;
    var var_2 = _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(max(-655f, arg_1.x))))) - var_0.x), arg_2.a.b));
    return func_2(arg_2.a.c, Struct_2(Struct_1(abs(arg_2.a.a | arg_2.a.c), !any(vec3<bool>(false, arg_2.a.b, true)), i32(-1i) * -1i, max(arg_2.a.d, -vec3<i32>(-59607i, -1i, arg_2.a.a))), ~max(arg_2.b, _wgslsmith_mod_u32(80569u, 23070u))));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global0 = select(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 10168i), abs(-50502i)), abs(-_wgslsmith_add_i32(-6682i, 11693i)), (arg_0.x >> (countOneBits(1u) % 32u)) < arg_0.x) & (-2147483647i >> (((u_input.b ^ u_input.b) ^ ~arg_0.x) % 32u));
    let var_0 = any(select(vec2<bool>(true, select(true, true, true) != false), vec2<bool>(true, true), !vec2<bool>(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, false, false)))));
    let var_1 = Struct_1(1i, true, i32(-1i) * -35810i, vec3<i32>(func_4(func_2(0i, Struct_2(Struct_1(0i, true, 21669i, vec3<i32>(1i, 1i, 3625i)), arg_0.x)) | 59598i, _wgslsmith_div_vec2_f32(vec2<f32>(-740f, -760f), vec2<f32>(-1934f, -1455f)), Struct_2(Struct_1(-2147483647i, var_0, 47142i, vec3<i32>(1i, -1i, 2147483647i)), _wgslsmith_mod_u32(u_input.b, 0u))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-45884i, -52240i), vec2<i32>(-1i, 2147483647i))) >> (countOneBits(0u) % 32u), reverseBits(1i) | (17192i << ((4294967295u ^ u_input.b) % 32u))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -132f);
    var var_3 = Struct_1(-2147483647i, u_input.a == ~0u, _wgslsmith_mod_i32(var_1.d.x, reverseBits(-1i) << (_wgslsmith_add_u32(~u_input.b, ~arg_0.x) % 32u)), -select(-var_1.d, _wgslsmith_add_vec3_i32(vec3<i32>(-1256i, var_1.d.x, var_1.c), var_1.d) ^ vec3<i32>(0i, 2147483647i, var_1.d.x), true || var_0));
    return -((-24850i >> (u_input.a % 32u)) << (42621u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_mod_i32(~func_1(vec3<u32>(u_input.a, 4294967295u, 0u)) & 1i, ~abs(reverseBits(18799i)));
    var var_0 = Struct_2(Struct_1(-abs(_wgslsmith_mult_i32(0i, 1i)), true, ~(-1i), reverseBits(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-28184i, -1i, 29441i)), vec3<i32>(4358i, -1i, -1i)))), _wgslsmith_add_u32(65258u, ~75267u));
    let var_1 = _wgslsmith_mult_vec4_i32(-(~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.d.x, -1i, var_0.a.d.x, -1i), vec4<i32>(9955i, 10077i, 9805i, var_0.a.a)))), ~vec4<i32>(abs(-2147483647i), ~(var_0.a.d.x ^ -2147483647i), var_0.a.d.x, -2147483647i));
    let var_2 = ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0.b, 1u, 4294967295u, u_input.a)), firstTrailingBit(~vec4<u32>(26333u, 107985u, var_0.b, 32309u))));
    global0 = max(func_1(var_2.xzz ^ select(var_2.ywy, _wgslsmith_clamp_vec3_u32(var_2.yzx, var_2.www, vec3<u32>(var_2.x, var_2.x, var_2.x)), vec3<bool>(var_0.a.b, false, var_0.a.b))), -var_0.a.d.x);
    var_0 = Struct_2(Struct_1(var_1.x, true, -10329i ^ abs(-1i >> (var_2.x % 32u)), vec3<i32>(i32(-1i) * -1i, func_4(0i, vec2<f32>(1621f, 1928f), Struct_2(var_0.a, u_input.b)), var_1.x) & vec3<i32>(max(2147483647i, var_0.a.c), i32(-1i) * -17579i, abs(1i))), (var_2.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(95189u, 0u, var_0.b, var_2.x) | vec4<u32>(1u, 1u, var_0.b, var_0.b), select(var_2, vec4<u32>(0u, var_2.x, u_input.b, var_0.b), true))) | u_input.a);
    var var_3 = var_0.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f), -253f), 408f));
    var_4 = vec2<f32>(_wgslsmith_div_f32(1396f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) * var_4.x)))), -1360f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.wzz, ~var_2.wzw), ~(1u << (var_2.x % 32u)), 4294967295u), 36468u));
}

