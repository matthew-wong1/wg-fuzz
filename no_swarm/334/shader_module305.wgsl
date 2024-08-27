struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-986f, 559f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1020f, 880f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(909f, -317f) * vec2<f32>(-364f, -760f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1459f, 1000f) * vec3<f32>(515f, -524f, var_1.x))))))), arg_1.x);
    let var_3 = select(vec2<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(-12262i, 1i)), arg_0) & firstTrailingBit(~vec2<i32>(-28765i, arg_0)), vec2<i32>(-1i, _wgslsmith_mod_i32(~(-arg_0), 2147483647i)), select(select(var_0, select(var_0, !vec2<bool>(var_2.b, true), !var_0), all(!vec4<bool>(var_0.x, arg_1.x, var_0.x, false))), vec2<bool>(true, (false || arg_1.x) & true), vec2<bool>(arg_1.x, all(vec2<bool>(arg_1.x, true)))));
    var var_4 = min(countOneBits(u_input.a.x), abs(_wgslsmith_clamp_u32(6565u, u_input.a.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(54750u, 61634u, 15624u)), _wgslsmith_sub_vec3_u32(u_input.a.www, u_input.a.wyz)))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_2.a.x, 1812f, var_1.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(341f, -502f, var_2.a.x, 373f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, -1000f, var_1.x, var_1.x)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1734f);
    let var_1 = _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(18519u, u_input.a.x)) | reverseBits(4294967295u), ~u_input.a.x);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1, !arg_0.yy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -395f, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(622f, var_0, var_0, 604f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, -1691f, var_0))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(-331f, 498f, var_0, var_0))))));
    var var_3 = Struct_3(u_input.a.x << (_wgslsmith_clamp_u32(var_1, var_1, u_input.a.x) % 32u), vec2<i32>(arg_1, _wgslsmith_mod_i32(-1i, abs(_wgslsmith_div_i32(39865i, 3622i)))));
    let var_4 = arg_1;
    return abs(vec3<i32>(max(-1i, var_3.b.x), -24695i, reverseBits(_wgslsmith_add_i32(var_3.b.x, _wgslsmith_mult_i32(arg_1, 24238i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, 651f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2894f, 288f), vec2<f32>(-988f, 362f))))))));
    var var_2 = select(vec2<bool>(all(!(!vec4<bool>(arg_3, arg_3, arg_3, false))), true), arg_2, !arg_2);
    let var_3 = arg_3 && all(!(!(!vec4<bool>(arg_2.x, arg_3, arg_2.x, true))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -602f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(175f, -1253f), vec2<f32>(-471f, var_1.x))) - vec2<f32>(var_1.x, 1261f))), vec2<f32>(-299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 554f) + _wgslsmith_f_op_f32(898f * -614f))), arg_2.x)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(func_3(reverseBits(arg_0.x) | 1i, arg_2)).xyx, any(select(vec3<bool>(all(arg_2), !var_3, var_3), select(vec3<bool>(true, false, true), vec3<bool>(var_2.x, var_2.x, arg_2.x), arg_2.x), select(true, true, arg_2.x))));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> vec4<bool> {
    var var_0 = u_input.a.x;
    var var_1 = select(vec2<bool>(arg_0.b, any(select(select(vec4<bool>(arg_0.b, false, false, arg_0.b), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), false), true))), select(select(vec2<bool>(false, arg_0.b), vec2<bool>(true, !arg_0.b), false), !select(vec2<bool>(true, true), vec2<bool>(arg_0.b, arg_0.b), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, arg_0.b), true), vec2<bool>(arg_0.b, true), select(!vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, arg_0.b)))), vec2<bool>(all(select(vec2<bool>(false, arg_0.b), vec2<bool>(true, arg_0.b), true)), false));
    let var_2 = countOneBits(u_input.a.x);
    let var_3 = Struct_1(~vec3<u32>(firstTrailingBit(53923u) ^ ~4294967295u, u_input.a.x, abs(max(var_2, 52397u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.a.x)))), select(vec4<bool>(true, !arg_0.b, arg_0.b, false), vec4<bool>(var_1.x, (var_2 <= 19859u) && (u_input.a.x > 1u), var_2 > var_2, func_4(-vec3<i32>(18784i, 1i, 1i), func_2(vec4<bool>(var_1.x, true, var_1.x, var_1.x), -1i), vec2<bool>(var_1.x, false), 1u > var_2).b), !vec4<bool>(true, var_1.x, false, true)), countOneBits(_wgslsmith_add_u32(0u, ~(~61873u))));
    let var_4 = _wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(u_input.a.x, 246u, var_3.a.x)) ^ _wgslsmith_mod_vec3_u32(var_3.a, u_input.a.zyy), u_input.a.yyw, ~vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, 0u), ~4920u, var_2)) ^ vec3<u32>(var_3.d, u_input.a.x << (1u % 32u), abs(48137u));
    return vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(var_3.b)))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(select(arg_1, 1178f, var_3.c.x)))))), all(select(select(select(var_3.c.yww, vec3<bool>(arg_0.b, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, var_3.c.x, true), var_3.c.zwz, false), var_3.c.x || arg_0.b), select(!vec3<bool>(arg_0.b, var_1.x, arg_0.b), !var_3.c.ywz, var_1.x), vec3<bool>(true, true & arg_0.b, all(var_3.c)))), (arg_0.b != (func_4(vec3<i32>(-34414i, -35604i, 49288i), vec3<i32>(-44449i, -1i, -41653i), vec2<bool>(true, var_1.x), var_3.c.x).b && true)) || true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = vec4<f32>(-911f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1235f - _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1082f)) + _wgslsmith_f_op_f32(max(-2681f, -491f))))));
    let var_1 = var_0.x;
    let var_2 = func_5(func_4(min(-vec3<i32>(arg_0.x, -10466i, 0i), _wgslsmith_div_vec3_i32(func_2(vec4<bool>(false, true, false, false), -6699i), vec3<i32>(arg_0.x, 1i, arg_0.x))), vec3<i32>(_wgslsmith_mod_i32(41798i, arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -29657i), arg_0.yyy), 1i) | arg_0.yww, !vec2<bool>(true, 0u == arg_1.x), all(vec2<bool>(select(true, false, false), false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(arg_0.ywy, arg_0.zyw, vec2<bool>(true, true), all(vec3<bool>(false, true, false))).a.x * _wgslsmith_div_f32(146f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))));
    let var_3 = Struct_3(_wgslsmith_dot_vec2_u32((select(arg_1.yx, vec2<u32>(u_input.a.x, 4294967295u), var_2.x) << (~vec2<u32>(arg_1.x, u_input.a.x) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(u_input.a.wx << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), ~arg_1.yy), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_1.x), select(vec2<u32>(1u, 4294967295u), ~u_input.a.xy, func_5(Struct_2(vec3<f32>(-210f, var_0.x, 761f), var_2.x), 764f).wz))), arg_0.xw);
    let var_4 = var_0;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(abs(~(1i << (func_1(vec4<i32>(2147483647i, 2147483647i, -27904i, 2147483647i), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) % 32u))), 70150i);
    var_0 = func_2(vec4<bool>(any(vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)), true, true)), any(vec3<bool>(true, true, false)), !any(vec3<bool>(true, true, false)) || false, !(true & any(vec2<bool>(true, false)))), 0i).x;
    var var_1 = Struct_1(u_input.a.zxz, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1206f - 384f), _wgslsmith_f_op_f32(291f + -1112f))))), !vec4<bool>(func_4(vec3<i32>(1i, 1i, 1i), vec3<i32>(24139i, -1727i, 0i), vec2<bool>(false, false), func_5(Struct_2(vec3<f32>(721f, 529f, -1195f), true), -172f).x).b, func_4(abs(vec3<i32>(28444i, 73172i, 1i)), vec3<i32>(-13123i, 42480i, 2147483647i), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true).b, true, func_4(-vec3<i32>(-46448i, 0i, 5678i), vec3<i32>(1i, 1i, 1i), vec2<bool>(false, true), all(vec3<bool>(false, false, false))).b), _wgslsmith_mod_u32(~(~u_input.a.x) >> (_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u), ~78726u));
    var_0 = 0i;
    let var_2 = vec2<bool>(var_1.c.x, any(select(vec2<bool>(select(false, true, var_1.c.x), var_1.c.x), select(func_5(Struct_2(vec3<f32>(var_1.b, var_1.b, var_1.b), var_1.c.x), -1241f).yy, var_1.c.xy, true), !var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.b));
}

