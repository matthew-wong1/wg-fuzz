struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, true, true, true, true, true, false, false, true, false, false, true, false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: bool, arg_3: bool) -> u32 {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_0 = Struct_3(~(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_0.x), vec3<i32>(-41999i, 39697i, arg_0.x)))), Struct_1(4294967295u, -23621i), ~_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, u_input.a, u_input.a | 18199u, 1u), ~vec4<u32>(23688u, u_input.a, 0u, u_input.b.x)));
    global0 = array<bool, 15>();
    let var_1 = Struct_4(Struct_2(u_input.a, Struct_1(u_input.a, firstLeadingBit(_wgslsmith_div_i32(1i, -2147483647i))), var_0.b), true, var_0.b, var_0);
    return _wgslsmith_mod_u32(0u, 1962u);
}

fn func_2() -> f32 {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_0 = Struct_4(Struct_2(89063u, Struct_1(_wgslsmith_clamp_u32(func_3(vec2<i32>(0i, -2147483647i), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 15u)], true), true, false), _wgslsmith_dot_vec4_u32(vec4<u32>(70159u, 61978u, 1u, u_input.b.x), vec4<u32>(0u, 9079u, 15521u, u_input.b.x)), u_input.b.x), _wgslsmith_clamp_i32(i32(-1i) * -1i, -2147483647i, ~(-2147483647i))), Struct_1(0u, reverseBits(1i))), !global0[_wgslsmith_index_u32(u_input.b.x, 15u)], Struct_1(42588u, _wgslsmith_add_i32(_wgslsmith_mult_i32(-22092i, 24069i << (u_input.b.x % 32u)), 0i)), Struct_3(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i), Struct_1(0u, abs(2147483647i) | (-1806i >> (u_input.a % 32u))), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4704u, u_input.b.x, u_input.a), vec4<u32>(0u, u_input.a, 0u, u_input.b.x)))));
    var var_1 = 1i;
    global0 = array<bool, 15>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-567f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -874f))))))));
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -2512f)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1637f, _wgslsmith_f_op_f32(-456f - 275f)), _wgslsmith_f_op_f32(floor(-589f)), !(global0[_wgslsmith_index_u32(u_input.b.x, 15u)] && global0[_wgslsmith_index_u32(arg_0.a.b.a, 15u)]) & (-200f != _wgslsmith_f_op_f32(select(751f, 875f, arg_0.b))))));
    global0 = array<bool, 15>();
    var var_1 = vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, arg_0.d.b.b), arg_0.d.a.x, arg_0.a.c.b), countOneBits(1i) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(74671u, _wgslsmith_sub_u32(0u, u_input.b.x)), arg_0.d.b.a) % 32u));
    var_1 = vec2<i32>(-14781i, countOneBits(-2147483647i));
    let var_2 = Struct_2(reverseBits(max(29214u, ~28177u)), arg_0.d.b, Struct_1(u_input.b.x, _wgslsmith_dot_vec3_i32(arg_0.d.a, _wgslsmith_mult_vec3_i32(arg_0.d.a, vec3<i32>(40423i, 2147483647i, arg_0.d.b.b)) & arg_0.d.a)));
    return _wgslsmith_f_op_f32(trunc(611f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    var var_0 = Struct_1(86284u, _wgslsmith_sub_i32(-1i, 1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(536f, _wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(u_input.b.x, Struct_1(4294967295u, -2147483647i), Struct_1(1u, var_0.b)), global0[_wgslsmith_index_u32(var_0.a, 15u)], Struct_1(u_input.a, var_0.b), Struct_3(vec3<i32>(var_0.b, var_0.b, var_0.b), Struct_1(var_0.a, var_0.b), vec4<u32>(u_input.a, 1u, 29088u, var_0.a)))))))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2024f)) * 658f), -1164f));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1126f + var_1.x), _wgslsmith_f_op_f32(-var_1.x), -439f) * _wgslsmith_f_op_vec3_f32(var_1 - var_1)))));
    var var_3 = Struct_1(u_input.b.x, _wgslsmith_sub_i32(2147483647i, var_0.b) & ~var_0.b);
    var_2 = var_1;
    var var_4 = abs(_wgslsmith_div_u32(~(~u_input.a) >> (abs(~var_3.a) % 32u), var_3.a));
    let var_5 = var_0.a;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1289f, -913f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_2.x)))));
}

