struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = arg_1.d;
    global0 = array<i32, 15>();
    var var_1 = 29535u;
    var var_2 = vec3<bool>(true, all(arg_1.a), !(max(1u, 4294967295u) < arg_1.d.a.x));
    var_2 = arg_1.a.zwy;
    return ~vec3<u32>(~arg_1.d.a.x, ~_wgslsmith_clamp_u32(53397u, arg_1.d.a.x, 30079u) << (firstTrailingBit(~0u) % 32u), 18094u);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = ~vec4<u32>(~(~abs(u_input.a.x)), 4294967295u, ~62325u, ~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(u_input.a.x, 97871u)));
    var var_1 = Struct_2(!select(vec4<bool>(true, select(false, true, false), false, true), vec4<bool>(true, u_input.b <= -2147483647i, false, true), false), ~select(abs(vec3<u32>(var_0.x, 60337u, u_input.c.x)) & func_3(false, Struct_2(vec4<bool>(true, false, true, false), u_input.c.zwx, 291f, Struct_1(u_input.c, -1000f, 1053f))), u_input.c.xyy, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-227f)) + _wgslsmith_div_f32(680f, 1280f)), Struct_1(vec4<u32>(~countOneBits(4294967295u), u_input.a.x, _wgslsmith_sub_u32(~0u, u_input.a.x), 4599u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1030f) * _wgslsmith_f_op_f32(sign(340f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f + 1746f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1222f, var_1.d.c, var_1.c), vec3<f32>(var_1.c, var_1.d.b, 321f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, var_1.c))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-223f)) + -490f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), var_1.d.b)));
    global0 = array<i32, 15>();
    var_1 = Struct_2(!var_1.a, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.yxy, vec3<u32>(69183u, u_input.c.x, 1u)), var_0.zzx), var_1.d.a.yxz ^ (u_input.c.yyz | vec3<u32>(1u, 1u, 4294967295u))) | ~_wgslsmith_mod_vec3_u32(u_input.c.xyz, ~var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1694f)) * -452f) - _wgslsmith_f_op_f32(step(var_2.x, 611f))) + _wgslsmith_f_op_f32(max(408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-275f)))))), Struct_1(select(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 21166u), vec3<u32>(u_input.a.x, 0u, 1u)), var_1.d.a.x, u_input.a.x), (var_1.d.a ^ vec4<u32>(u_input.c.x, u_input.a.x, 1u, u_input.c.x)) ^ vec4<u32>(var_0.x, var_1.d.a.x, 4294967295u, u_input.c.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -654f))) * _wgslsmith_f_op_f32(-var_2.x)), -441f));
    return var_1.a.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = arg_1.c;
    let var_2 = !vec2<bool>(!(_wgslsmith_f_op_f32(select(119f, 231f, true)) != var_0.b), !select(false, all(vec2<bool>(false, false)), func_2(vec3<i32>(-2147483647i, 2147483647i, u_input.b))));
    let var_3 = select(select(!vec4<bool>(all(var_2), all(vec3<bool>(false, var_2.x, false)), var_2.x, all(var_2)), vec4<bool>(!(true & var_2.x), false, true, true), select(vec4<bool>(var_2.x, false, !var_2.x, func_2(vec3<i32>(u_input.b, u_input.b, -2147483647i))), vec4<bool>(true, true, true, true), !(!vec4<bool>(var_2.x, var_2.x, var_2.x, false)))), !(!(!select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(true, false, true, true), vec4<bool>(true, false, var_2.x, false)))), !(!(!var_2.x)) && false);
    global0 = array<i32, 15>();
    return Struct_2(!vec4<bool>(!(false & var_3.x), var_3.x, any(!var_3.xw), false), var_0.a.yww, _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f))), Struct_1(countOneBits(_wgslsmith_div_vec4_u32(arg_2.a, vec4<u32>(arg_2.a.x, var_0.a.x, 1u, arg_2.a.x) >> (u_input.c % vec4<u32>(32u)))), -1540f, var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 55875u, u_input.a.x, u_input.c.x), vec4<u32>(u_input.c.x, 25645u, u_input.c.x, 1u), false), u_input.c)), 19692u);
    global0 = array<i32, 15>();
    let var_1 = func_1(-133f, Struct_1(firstTrailingBit(vec4<u32>(u_input.c.x, 1u | u_input.a.x, 1u, var_0 | 34149u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(887f)) - _wgslsmith_f_op_f32(2068f - 373f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -964f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-710f)))), Struct_1(vec4<u32>(~(var_0 & u_input.a.x), ~var_0 | 0u, ~(~0u), var_0), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1254f - _wgslsmith_f_op_f32(abs(156f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1183f)) - _wgslsmith_div_f32(1000f, -1474f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 838f, 1f));
    var var_2 = vec4<i32>(countOneBits(firstTrailingBit(1i)), -10254i, u_input.b | _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(5020i, u_input.b), -8214i, _wgslsmith_clamp_i32(4113i, global0[_wgslsmith_index_u32(55270u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)])), 0i), 1i);
    var_2 = vec4<i32>(countOneBits(i32(-1i) * -2147483647i), countOneBits(-2147483647i) << (u_input.a.x % 32u), _wgslsmith_add_i32(u_input.b, var_2.x), min(reverseBits(global0[_wgslsmith_index_u32(~u_input.a.x, 15u)]), _wgslsmith_div_i32(var_2.x, var_2.x) & 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-110f - var_1.d.c), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(ceil(var_1.c))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d.c, var_1.c, var_1.d.c))))), abs(1i), vec4<i32>(~40986i, var_2.x, u_input.b, -79339i));
}

