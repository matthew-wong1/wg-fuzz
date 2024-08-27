struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(25045i, 30190i, -1i, 0i);

var<private> global1: vec4<f32> = vec4<f32>(-595f, -614f, -329f, 1000f);

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-1460f, -1037f, 194f), vec3<f32>(2026f, 345f, -614f), vec3<f32>(687f, -103f, 717f), vec3<f32>(1000f, -534f, 588f), vec3<f32>(2089f, 313f, -1139f), vec3<f32>(-1112f, -1114f, 1381f), vec3<f32>(-1017f, 1070f, -639f), vec3<f32>(-114f, 1032f, -184f), vec3<f32>(568f, -1000f, 505f), vec3<f32>(487f, 521f, -623f), vec3<f32>(-274f, -893f, 1027f), vec3<f32>(-1000f, -167f, 2259f), vec3<f32>(-557f, 692f, 1276f), vec3<f32>(266f, 365f, 584f), vec3<f32>(-2745f, 1000f, 754f), vec3<f32>(323f, 527f, 1000f), vec3<f32>(1212f, -544f, 1000f), vec3<f32>(1743f, -581f, -497f), vec3<f32>(1000f, -2776f, -866f), vec3<f32>(-1332f, 1349f, -490f), vec3<f32>(801f, 332f, -1167f), vec3<f32>(-300f, 1000f, -1712f), vec3<f32>(-662f, -614f, -561f), vec3<f32>(-1041f, 656f, -1000f), vec3<f32>(-982f, -1000f, -913f), vec3<f32>(-273f, 1750f, -1000f), vec3<f32>(363f, -764f, -105f), vec3<f32>(2327f, -104f, -1757f), vec3<f32>(-207f, 1851f, -634f), vec3<f32>(-1553f, -802f, 983f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = true;
    let var_1 = Struct_1(-2147483647i);
    let var_2 = var_1;
    var var_3 = Struct_2(_wgslsmith_div_f32(-127f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1505f)), global1.x, true)))), _wgslsmith_f_op_vec4_f32(floor(arg_2.b)));
    let var_4 = var_2;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    global0 = -(vec4<i32>(-1i) * -min(vec4<i32>(arg_2.x, 1i, 16502i, 1i), arg_2));
    let var_0 = global0.zww;
    global0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(~1i, ~arg_0.a, arg_2.x & 0i, var_0.x) | arg_2, select(arg_2, -_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, 0i, arg_2.x, arg_2.x), arg_2), true));
    global2 = array<vec3<f32>, 30>();
    global2 = array<vec3<f32>, 30>();
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * -102f)) + global1.x), _wgslsmith_f_op_f32(floor(697f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(546f, -420f, global1.x, 264f) - vec4<f32>(200f, -681f, -1216f, global1.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 217f, global1.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(859f)), 605f, -252f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~(~u_input.a), u_input.a), firstTrailingBit(u_input.a & (max(u_input.a, u_input.a) & ~41949u)));
    global1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x - arg_1.a))), _wgslsmith_f_op_f32(-arg_3.a), -500f), arg_0.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.b.wzz);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(643f)), _wgslsmith_f_op_vec4_f32(-arg_1.b));
    var_2 = func_3(func_2((-global0.x & -global0.x) | 1i, (1871u >> (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u)) & (~25379u << (0u % 32u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(585f, -762f, global1.x, var_1.x)))), arg_3), _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, 58401u) | 9638u)), vec4<i32>(global0.x << (u_input.a % 32u), 31739i, _wgslsmith_clamp_i32(~global0.x, global0.x, 13158i), ~global0.x), ~_wgslsmith_mod_u32(u_input.a, 4294967295u));
    return vec3<u32>(_wgslsmith_dot_vec3_u32(abs(~firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, 18815u, u_input.a)), countOneBits(min(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, 4294967295u, 0u))))), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(1u, ~u_input.a), 4294967295u), ~countOneBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(~(~vec3<u32>(60443u, u_input.a, 0u))), firstLeadingBit(func_1(Struct_2(global1.x, vec4<f32>(1535f, global1.x, global1.x, 384f)), Struct_2(289f, vec4<f32>(148f, -551f, -452f, global1.x)), -1645f, Struct_2(global1.x, vec4<f32>(global1.x, global1.x, global1.x, -358f))) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(0u, 0u, 42196u)) % vec3<u32>(32u))) | func_1(Struct_2(_wgslsmith_f_op_f32(trunc(-2279f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, 116f, 1462f))), Struct_2(global1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, global1.x, -1205f, global1.x))), -243f, func_3(func_2(-13818i, u_input.a, Struct_2(356f, vec4<f32>(global1.x, 251f, global1.x, global1.x)), Struct_2(-598f, vec4<f32>(global1.x, -1535f, 474f, global1.x))), _wgslsmith_div_u32(4294967295u, u_input.a), vec4<i32>(global0.x, -17021i, 1i, -1i), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-797f * global1.x) - _wgslsmith_f_op_f32(global1.x + -590f)) * global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -1000f)))), -1879f, _wgslsmith_f_op_f32(-2242f - 373f)), func_2(-abs(-16016i), reverseBits(var_0.x), func_3(Struct_1(global0.x & -1i), var_0.x, vec4<i32>(firstTrailingBit(-2147483647i), max(38867i, global0.x), ~6463i, -35079i), reverseBits(0u)), func_3(Struct_1(_wgslsmith_clamp_i32(-2147483647i, global0.x, global0.x)), var_0.x, vec4<i32>(-1i) * -vec4<i32>(-11556i, global0.x, global0.x, 1i), 15909u)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.ywy, global2[_wgslsmith_index_u32(0u, 30u)], false)) + vec3<f32>(global1.x, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(var_0.x, 30u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(-2372f, 753f)), _wgslsmith_f_op_f32(round(global1.x)), 499f, _wgslsmith_f_op_f32(min(global1.x, -413f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-1058f - global1.x), 1728f, _wgslsmith_f_op_f32(ceil(global1.x))))));
}

