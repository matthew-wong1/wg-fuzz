struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(285f, -161f, 1000f, 244f);

var<private> global1: f32 = 340f;

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<u32>) -> vec4<i32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(942f, _wgslsmith_f_op_f32(f32(-1f) * -799f))) * _wgslsmith_f_op_f32(step(global0.x, global0.x))));
    global1 = -1000f;
    let var_0 = _wgslsmith_div_u32(reverseBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.c, arg_0.b.c), u_input.a)), arg_0.b.c)), _wgslsmith_mult_u32(14382u, abs(_wgslsmith_mult_u32(1u, arg_3.x))));
    return firstLeadingBit(_wgslsmith_add_vec4_i32(arg_0.a, vec4<i32>(2147483647i, select(1i, i32(-1i) * -1i, !arg_0.c.x), min(i32(-1i) * -16327i, ~arg_1.x), min(arg_0.a.x, arg_0.a.x) >> (~arg_3.x % 32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_2(-(~(arg_1 << (~vec4<u32>(arg_0.x, 40188u, arg_0.x, u_input.a.x) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -118f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(-1152f))) * global0.x), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 31u)], max(_wgslsmith_sub_vec3_u32(vec3<u32>(3654u, 43696u, u_input.b), global2[_wgslsmith_index_u32(0u, 31u)]), vec3<u32>(u_input.a.x, 46427u, arg_0.x)))), !vec4<bool>(false, !any(vec2<bool>(true, false)), !any(vec3<bool>(false, true, false)), true));
    global2 = array<vec3<u32>, 31>();
    global3 = global0.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-108f, global0.x)) + _wgslsmith_f_op_f32(sign(var_0.b.a))), -3181f)) + global0.zx);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, -684f) * vec3<f32>(-1000f, global0.x, var_0.b.b))))), vec3<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.x, 755f)))))))));
    return var_2.x;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<i32> {
    global2 = array<vec3<u32>, 31>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(arg_2.b.b, -1999f))), arg_2.b.b);
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(~(~min(vec2<u32>(arg_0, 1u), u_input.a)), func_3(arg_2, _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, -845i, u_input.c, -21020i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, u_input.d, 2147483647i), vec4<i32>(u_input.d, 2147483647i, arg_2.a.x, u_input.d))), u_input.d | _wgslsmith_clamp_i32(u_input.d, -1i, arg_2.a.x), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 67454u), u_input.a), 25101u, ~13521u, ~arg_2.b.c)), vec2<i32>(-_wgslsmith_add_i32(1i, arg_2.a.x), ~(-1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    global2 = array<vec3<u32>, 31>();
    let var_1 = arg_2.b;
    return vec4<i32>(arg_2.a.x, 6473i, u_input.c, arg_2.a.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b - global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 2936f)))))));
    var var_1 = arg_1.c;
    global2 = array<vec3<u32>, 31>();
    var var_2 = Struct_2((_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, u_input.c, u_input.c), vec4<i32>(u_input.d, -16704i, 3225i, 0i)) ^ _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), func_2(u_input.b, vec3<bool>(false, false, true), Struct_2(vec4<i32>(u_input.c, -20302i, 2964i, u_input.d), Struct_1(1000f, -1413f, 4294967295u), vec4<bool>(false, true, true, false))))) << (vec4<u32>(u_input.a.x, arg_0, 23937u, _wgslsmith_div_u32(arg_1.c, arg_1.c) >> (0u % 32u)) % vec4<u32>(32u)), Struct_1(883f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), firstLeadingBit(arg_0 ^ u_input.a.x)), vec4<bool>(any(vec4<bool>(false, false, true, all(vec3<bool>(true, false, true)))), true, all(vec2<bool>(true, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f + arg_2) + _wgslsmith_f_op_f32(min(1941f, _wgslsmith_f_op_f32(exp2(var_0.x)))));
    return ~(~var_2.a | -vec4<i32>(var_2.a.x, ~(-23106i), select(-9147i, var_2.a.x, var_2.c.x), i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(sign(global0.xx)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yz - global0.yx))))));
    var var_1 = vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), 0u, abs(81447u | ~u_input.a.x)));
    let var_2 = 948f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -309f) * 584f));
    var var_3 = ~(_wgslsmith_add_i32(~u_input.d, _wgslsmith_sub_i32(9506i, _wgslsmith_mult_i32(u_input.d, u_input.d))) >> (4294967295u % 32u));
    let var_4 = var_0.x;
    var var_5 = firstTrailingBit(~(~var_1.x));
    var var_6 = _wgslsmith_f_op_f32(-var_4);
    let var_7 = Struct_2(func_1(~(~_wgslsmith_sub_u32(var_1.x, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-var_0.x), var_4, ~1u >> (var_1.x % 32u)), var_4), Struct_1(-119f, 1538f, ~var_1.x), !vec4<bool>(var_2, true, any(vec2<bool>(var_2, false)), all(vec3<bool>(var_2, true, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 0u, 0u << (1u % 32u)) >> (~(~vec4<u32>(var_7.b.c, 8894u, 22572u, 7905u)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_1.x, 0u, 39910u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 7710u, 4294967295u, var_1.x), vec4<u32>(4294967295u, var_1.x, 1u, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 94539u, 2647u, 12668u), vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b))), vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.x, 74573u, 1u, 1u), vec4<u32>(30968u, 1u, 4294967295u, 15281u), vec4<bool>(true, var_7.c.x, var_7.c.x, var_2)) ^ ~vec4<u32>(var_1.x, var_7.b.c, 102594u, var_7.b.c), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, var_1.x), vec4<u32>(var_1.x, u_input.b, var_7.b.c, var_7.b.c)))), _wgslsmith_mod_u32(51144u | var_7.b.c, ~var_1.x) << (u_input.b % 32u), var_7.b.c, var_7.b.c));
}

