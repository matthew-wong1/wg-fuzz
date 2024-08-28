struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec4<f32> {
    let var_0 = min(u_input.e, ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(71048u, u_input.c, u_input.e) & vec3<u32>(u_input.e, u_input.c, 8124u), select(vec3<u32>(u_input.d.x, 1u, u_input.d.x), vec3<u32>(u_input.c, u_input.c, 49144u), vec3<bool>(true, false, true))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 2438u, u_input.e), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 21935u, u_input.a.x), vec3<u32>(0u, 10478u, u_input.e)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-939f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-245f - _wgslsmith_div_f32(arg_1.x, arg_1.x)), arg_1.x)), !vec2<bool>(select(true, arg_1.x == arg_1.x, true), true));
    var var_2 = all(!select(!vec3<bool>(var_1.b.x, true, var_1.b.x), select(vec3<bool>(false, false, false), vec3<bool>(true, false, var_1.b.x), vec3<bool>(false, false, false)), all(vec4<bool>(false, var_1.b.x, var_1.b.x, true)))) | !all(vec2<bool>(true, all(vec3<bool>(var_1.b.x, false, var_1.b.x))));
    let var_3 = arg_1;
    var_2 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(abs(var_3.x)), var_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-142f, 401f)), _wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, -899f, -688f))))), !(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), arg_2))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(512f, arg_0, -253f, arg_0), vec4<f32>(450f, arg_0, -1063f, arg_0)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -138f, arg_0, arg_0) * vec4<f32>(arg_0, -1021f, -749f, arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 260f, 473f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -1698f)))), vec2<bool>(any(!vec3<bool>(arg_2, true, false)), arg_2)), abs(44520u));
    let var_1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(arg_3.wyz, vec3<i32>(-24833i, 9683i, -4085i))), _wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.b, u_input.b, arg_3.x), arg_3.yxz), select(arg_3.ywx, arg_3.yyz, false))), firstLeadingBit(countOneBits(_wgslsmith_mod_i32(u_input.b, u_input.b))));
    let var_2 = select(select(!(!(!vec3<bool>(false, arg_2, arg_2))), !vec3<bool>(false, true, var_0.b.b.x), var_0.a.b.x), select(select(vec3<bool>(any(vec2<bool>(false, false)), !var_0.b.b.x, true), !select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, true, var_0.a.b.x), arg_2), all(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), var_0.b.b))), vec3<bool>(var_0.a.b.x, true, true & any(var_0.a.b)), !vec3<bool>(any(vec4<bool>(false, var_0.b.b.x, var_0.b.b.x, true)), var_0.b.b.x, arg_2)), all(vec3<bool>(all(vec4<bool>(var_0.b.b.x, false, arg_2, arg_2)), ~arg_1.x < ~1u, _wgslsmith_mod_i32(arg_3.x, 1i) != u_input.b)));
    var var_3 = Struct_3(var_0.a.b.x);
    var_3 = Struct_3(!var_0.a.b.x);
    return (~0u | ~u_input.c) << (~(reverseBits(~u_input.c) & _wgslsmith_mult_u32(~var_0.c, 4294967295u)) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-934f, arg_0.a.x, 303f, 352f))))));
    var var_1 = u_input.a.x;
    var_1 = func_3(-889f, select(reverseBits(min(u_input.d, ~vec2<u32>(1u, u_input.c))), ~vec2<u32>(_wgslsmith_clamp_u32(5326u, 106657u, u_input.a.x), u_input.e), vec2<bool>(true | (65866u < u_input.d.x), false)), arg_1.x < 38572i, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-1519i, arg_2, 136i, -1i), vec4<i32>(1i, 0i, arg_2, -20109i)), ~arg_1), -vec4<i32>(u_input.b, arg_2, 44232i, -34249i) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c, u_input.e, u_input.d.x, u_input.a.x)), ~vec4<u32>(u_input.e, u_input.d.x, u_input.c, u_input.e)) % vec4<u32>(32u)), arg_1));
    var_1 = _wgslsmith_div_u32(~1u, 4555u);
    var var_2 = arg_1;
    return Struct_4(arg_0, arg_0, countOneBits(u_input.e));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    var var_0 = all(!vec2<bool>(arg_1.x, arg_1.x));
    let var_1 = ~(~vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, u_input.b)), vec2<i32>(u_input.b, 19182i)), -1554i, (u_input.b | u_input.b) ^ ~u_input.b, -2147483647i));
    var_0 = arg_1.x;
    var var_2 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(~23220u, u_input.d.x, ~u_input.a.x), max(vec3<u32>(arg_2.c, max(arg_2.c, arg_2.c), arg_2.c), vec3<u32>(_wgslsmith_mod_u32(u_input.e, 4294967295u), arg_2.c, 46722u)));
    var_2 = vec3<u32>(~var_2.x, var_2.x, ~_wgslsmith_div_u32(~firstTrailingBit(u_input.e), var_2.x));
    return func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, arg_2.a.a.x, arg_2.b.a.x, arg_2.a.a.x)), select(select(vec2<bool>(false, arg_0.a), vec2<bool>(true, false), vec2<bool>(false, arg_2.b.b.x)), select(arg_3.b, vec2<bool>(true, arg_3.b.x), vec2<bool>(true, true)), arg_1.x)), vec4<i32>(-1i) * -var_1, -37420i, _wgslsmith_div_u32(arg_2.c, func_3(152f, vec2<u32>(arg_2.c, 17680u), false, var_1)) >= (13302u ^ (var_2.x ^ u_input.d.x))).a, ~(~vec4<i32>(-var_1.x, 1i, countOneBits(0i), _wgslsmith_add_i32(28664i, 16190i))), ~(~var_1.x), false).a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1245f;
    var var_1 = vec3<bool>(true, true, !(!(true & (u_input.b > u_input.b))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, -792f, 1154f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(func_1(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(677f, 431f))))), !(!(!vec4<bool>(var_1.x, true, false, true))))), var_1.yz);
    var_1 = !vec3<bool>(all(!select(vec3<bool>(false, var_1.x, var_2.b.x), vec3<bool>(false, false, var_1.x), false)), false != func_4(Struct_3(true), select(vec4<bool>(var_2.b.x, var_2.b.x, true, var_1.x), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), func_2(Struct_1(vec4<f32>(-1038f, var_0, -1000f, -1192f), vec2<bool>(false, true)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), -15731i, var_1.x), func_2(Struct_1(var_2.a, var_1.yy), vec4<i32>(u_input.b, -50329i, u_input.b, u_input.b), u_input.b, false).a), var_2.b.x);
    var var_3 = 51634u;
    var var_4 = ~u_input.a.x;
    var var_5 = ~u_input.c & ~(~u_input.a.x);
    let var_6 = Struct_2(countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(select(u_input.b, u_input.b, var_1.x), min(u_input.b, u_input.b)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, 7207i), u_input.b))), vec3<u32>(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(7888u, 25189u ^ u_input.d.x), ~vec2<u32>(81964u, 28681u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(43652u, u_input.a.x, 4294967295u, 1u), ~vec4<u32>(43484u, u_input.a.x, 1u, u_input.e)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.a.x, 100121u), vec4<u32>(u_input.c, u_input.c, 0u, 22171u)), vec4<u32>(u_input.c, u_input.e, 21516u, u_input.d.x), max(vec4<u32>(1u, 0u, 29208u, 2909u), vec4<u32>(u_input.d.x, u_input.c, 4294967295u, 4294967295u))))));
    let var_7 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(-var_2.a))), var_2.b), vec4<i32>(u_input.b, min(-2147483647i, _wgslsmith_clamp_i32(u_input.b, 2147483647i, var_6.a)), var_6.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_6.a, var_6.a), vec3<i32>(-2147483647i, u_input.b, -1i))) & vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_6.a, -634i, -34644i), vec3<i32>(u_input.b, var_6.a, -1i)), _wgslsmith_add_i32(~u_input.b, -u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b | -1i), u_input.b), ~var_6.a, 1u >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, min(11259u, 1u), 1913u, func_3(var_2.a.x, var_6.b.zx, var_1.x, vec4<i32>(var_6.a, var_6.a, -28665i, 0i))), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.d.x, 95000u, 1u, 57611u), vec4<u32>(13162u, 20356u, var_6.b.x, 17144u), vec4<bool>(var_2.b.x, false, var_1.x, var_1.x)), vec4<u32>(4294967295u, u_input.d.x, 38394u, 1u)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~38369u, _wgslsmith_add_u32(29152u, var_6.b.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-16678i, u_input.b, u_input.b, 0i) << (vec4<u32>(38554u, 50917u, var_6.b.x, 13050u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(u_input.b, -20935i), 1i, ~u_input.b, -2147483647i)), -(~var_6.a)), var_6.b.x);
}

