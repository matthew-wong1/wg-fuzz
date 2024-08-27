struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-19204i);

var<private> global1: Struct_5 = Struct_5(Struct_2(0i));

var<private> global2: array<i32, 23> = array<i32, 23>(i32(-2147483648), 2147483647i, 1i, 45939i, 2147483647i, 0i, 0i, 0i, -1i, -1i, 1i, 2147483647i, -1i, i32(-2147483648), 61051i, -845i, 0i, 1i, -1i, -2709i, -1i, 2147483647i, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(-366f, -447f), _wgslsmith_f_op_f32(1617f - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(481f)), _wgslsmith_f_op_f32(879f * _wgslsmith_f_op_f32(f32(-1f) * -1603f))), _wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1022f)))));
    var var_1 = vec2<bool>(all(!vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, true)), true);
    return _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1251f * _wgslsmith_f_op_f32(f32(-1f) * -658f))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(740f)) - 509f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1657f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(4294967295u, firstTrailingBit(u_input.a), -vec3<i32>(global2[_wgslsmith_index_u32(0u, 23u)], -41780i, 47794i), Struct_2(19667i))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-142f, 959f))))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * -751f)))));
    global2 = array<i32, 23>();
    var var_2 = vec2<u32>(~6024u, ~_wgslsmith_add_u32(~29917u, 0u));
    var var_3 = _wgslsmith_f_op_f32(-208f * -961f);
    return ~min(_wgslsmith_clamp_u32(var_2.x, 40801u, _wgslsmith_add_u32(28469u | var_2.x, ~4294967295u)), min(_wgslsmith_mod_u32(var_2.x, var_2.x) >> (abs(4294967295u) % 32u), ~(~var_2.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec4<i32> {
    global0 = Struct_2(_wgslsmith_mult_i32(-46008i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-13217i, global2[_wgslsmith_index_u32(arg_0.x, 23u)], global1.a.a, global2[_wgslsmith_index_u32(arg_0.x, 23u)])), min(vec4<i32>(2147483647i, 2147483647i, global0.a, global0.a), vec4<i32>(2147483647i, 0i, -1i, global2[_wgslsmith_index_u32(21597u, 23u)]))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.a, -4678i), u_input.a))));
    global2 = array<i32, 23>();
    global0 = Struct_2(u_input.a);
    let var_0 = 1000f;
    let var_1 = 74070u;
    return vec4<i32>(-48264i, -2147483647i >> (func_2() % 32u), -1i, -2147483647i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(global1.a.a);
    global1 = Struct_5(global1.a);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-965f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1483f - -1585f), 1f))) + _wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-527f, 213f))))))), true, _wgslsmith_f_op_f32(func_3(5933u, ~firstLeadingBit(2147483647i), _wgslsmith_div_vec3_i32(arg_0.wxw, arg_0.wyz), var_0)));
    global0 = global1.a;
    global0 = Struct_2(_wgslsmith_sub_i32(global1.a.a, global2[_wgslsmith_index_u32(43440u, 23u)]));
    return Struct_1(vec4<i32>(u_input.a, arg_0.x, -2147483647i >> (countOneBits(reverseBits(49892u)) % 32u), var_0.a >> ((abs(22517u) << (select(1u, 1u, false) % 32u)) % 32u)), arg_0.xxw);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> StorageBuffer {
    global2 = array<i32, 23>();
    let var_0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(82188u, countOneBits(35895u)), 25797u), _wgslsmith_mult_u32(func_2(), ~(1u >> (1u % 32u))));
    global1 = Struct_5(Struct_2(-(abs(global1.a.a) | 1i)));
    global1 = Struct_5(global1.a);
    let var_1 = var_0.x;
    return StorageBuffer(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(func_1(vec3<u32>(3361u, 35365u, 74617u), 1290f), vec4<i32>(11017i, 2147483647i, 21692i, global1.a.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 23u)], global0.a, 54243i), func_1(vec3<u32>(15045u, 35826u, 45211u), 539f)))), Struct_3(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), vec2<bool>(any(vec4<bool>(true, false, false, false)), true))));
}

