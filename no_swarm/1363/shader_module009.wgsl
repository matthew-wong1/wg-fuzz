struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, false, false, false, true, true, true, true, false, true, false, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(arg_3.wxz));
    var_0 = arg_3.zyy;
    global0 = array<bool, 14>();
    let var_1 = vec3<f32>(-529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1571f) - _wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f)));
    var var_2 = arg_2.c;
    return arg_2.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<u32>) -> bool {
    global0 = array<bool, 14>();
    var var_0 = global0[_wgslsmith_index_u32(21844u, 14u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -244f) != arg_0.x;
}

fn func_2(arg_0: i32, arg_1: Struct_5, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(112023u, arg_2.a), ~33176u << (arg_2.a % 32u)) ^ ~arg_2.a, ~36172u, 32927u, reverseBits(13160u));
    let var_1 = -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.a, abs(u_input.a), -2618i) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(53645u, 5573u), var_0.ww) % 32u), -2147483647i, arg_0);
    let var_2 = vec4<bool>(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xx))), ~arg_0, vec4<u32>(~(~3789u), func_3(0i, var_0.yzx, Struct_1(0u, -122f, false, arg_1.a.x, vec2<f32>(-2246f, 382f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_3, arg_1.b.x, -2474f))), var_0.x, ~var_0.x)), !all(vec2<bool>(false, !global0[_wgslsmith_index_u32(var_0.x, 14u)])), global0[_wgslsmith_index_u32(arg_2.a, 14u)], !(!all(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false))));
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return Struct_2(abs(_wgslsmith_mult_i32(firstTrailingBit(arg_1.a.x) ^ arg_1.c, u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_4) -> u32 {
    global0 = array<bool, 14>();
    var var_0 = vec4<bool>(!arg_1, arg_2 == arg_2, arg_3.a < ~0u, any(!select(select(vec3<bool>(true, arg_1, false), vec3<bool>(true, false, true), vec3<bool>(false, false, arg_1)), !vec3<bool>(arg_1, false, true), !vec3<bool>(false, arg_1, arg_1))));
    let var_1 = Struct_5(select(-vec3<i32>(min(arg_0.a, -18059i), arg_0.a, arg_0.a), vec3<i32>(-11922i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -19617i, u_input.a), vec3<i32>(0i, -12051i, -2147483647i)), abs(arg_0.a)), 0i), vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(610f, 108f, 2085f), vec3<f32>(756f, 263f, 366f))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(695f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f - -344f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-441f, -1876f)))))), 0i);
    global0 = array<bool, 14>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.b)), _wgslsmith_f_op_vec3_f32(-var_1.b));
    return abs(55626u);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(5668i);
    let var_1 = ~min(_wgslsmith_clamp_u32(49518u, 1u, func_5(func_2(var_0.a, Struct_5(vec3<i32>(u_input.a, 0i, var_0.a), vec3<f32>(-218f, -758f, -1994f), 2147483647i), Struct_4(31704u), 2167f), global0[_wgslsmith_index_u32(~40701u, 14u)], _wgslsmith_mod_u32(21294u, 62025u), Struct_4(4294967295u))), 4294967295u);
    var var_2 = vec4<u32>(countOneBits(_wgslsmith_add_u32(1u, var_1)), 1u ^ func_5(func_2(u_input.a | 0i, Struct_5(vec3<i32>(u_input.a, u_input.a, -17164i), vec3<f32>(-341f, -1727f, -631f), var_0.a), Struct_4(var_1), _wgslsmith_f_op_f32(1744f + -1871f)), global0[_wgslsmith_index_u32(min(var_1, select(57216u, var_1, false)), 14u)], ~(~var_1), Struct_4(~var_1)), var_1, var_1);
    var_2 = vec4<u32>(1u, func_3(1i, _wgslsmith_mod_vec3_u32(var_2.wwz, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, var_2.x, 1u), var_2.zww))), Struct_1(~(~var_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1079f + -1372f))), true, i32(-1i) * -16295i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1723f, 436f) * vec2<f32>(1000f, -1004f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-400f, 1104f, -989f, 1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, 569f, -116f, 330f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1516f, -680f, 3111f, -384f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1977f, 320f, -756f, 1000f))))), 13839u, var_2.x);
    var_2 = (countOneBits(vec4<u32>(1u, 1u, ~4294967295u, 4294967295u)) >> (~(~abs(vec4<u32>(780u, var_2.x, var_1, var_2.x))) % vec4<u32>(32u))) << (vec4<u32>(~3769u, max(var_1 >> (var_2.x % 32u), var_2.x), var_2.x, _wgslsmith_mult_u32(69008u, reverseBits(var_1))) % vec4<u32>(32u));
    return StorageBuffer(~vec4<u32>(var_2.x, 46949u, _wgslsmith_mult_u32(~1u, max(var_1, var_2.x)), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, var_2.x))), _wgslsmith_mod_u32(1u, var_2.x), abs(2147483647i), ~(~select(~vec2<i32>(-1i, var_0.a), vec2<i32>(var_0.a, u_input.a), select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_1, 14u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_1, 14u)]), global0[_wgslsmith_index_u32(0u, 14u)]))), vec4<i32>(_wgslsmith_div_i32(~(i32(-1i) * -1i), ~var_0.a), i32(-1i) * -(u_input.a & u_input.a), 2147483647i, select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(var_2.x, 14u)] & false) & firstLeadingBit(_wgslsmith_div_i32(var_0.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

