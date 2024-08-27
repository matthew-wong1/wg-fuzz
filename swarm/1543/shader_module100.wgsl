struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(0i, 2147483647i, max(~select(2147483647i, 78942i, true), -2147483647i) >= 0i);
    let var_1 = Struct_2(~1u, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, -451f, -1053f, -126f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1169f, 1662f, 923f, -354f) * vec4<f32>(188f, 2363f, 641f, 2324f)), vec4<bool>(true, true, false, false))))), vec4<i32>(abs(-30610i), -2147483647i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 18031i), vec3<i32>(-2117i, -2147483647i, 48194i))), 1i)));
    var var_2 = select(vec2<u32>(~var_1.a, 1u | (min(32724u, u_input.a) ^ _wgslsmith_mod_u32(1u, u_input.a))), vec2<u32>(~(~4538u) | u_input.a, 0u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), var_1.b.a.x >= var_1.b.a.x), true)));
    var_2 = vec2<u32>(min(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_2.x), vec2<u32>(24557u, var_1.a) ^ vec2<u32>(1u, 0u)), _wgslsmith_div_u32(1u, ~var_2.x >> (var_1.a % 32u))), ~(~(~48702u)) & var_2.x);
    let var_3 = var_1.b;
    return !(!vec4<bool>(true, false, true, !all(vec4<bool>(false, false, true, true))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f - _wgslsmith_f_op_f32(152f - -1277f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-457f))), _wgslsmith_f_op_f32(-1010f - _wgslsmith_f_op_f32(floor(-651f)))) - 1147f));
    let var_2 = select(select(!func_3(), vec4<bool>(28811u >= ~u_input.a, ~(-21344i) < _wgslsmith_mod_i32(-45903i, arg_0.x), any(vec2<bool>(true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, true, false), false, true), vec4<bool>(false, false, true, func_3().x))), !(!select(vec4<bool>(true, true, true, true), func_3(), vec4<bool>(true, false, false, true))), true);
    let var_3 = var_2.zxx;
    return Struct_2(~4294967295u, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1077f) + -1826f), -1455f, -688f), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 6828i), global0[_wgslsmith_index_u32(u_input.a, 12u)]))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.a.x), 1000f, _wgslsmith_f_op_f32(sign(arg_1.b.a.x)), -507f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.b.a)))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = arg_0 << (~_wgslsmith_mod_u32(u_input.a, ~1u) % 32u);
    var var_3 = arg_1;
    let var_4 = arg_2;
    return Struct_2(1u ^ abs(select(var_3.a >> (48798u % 32u), ~52839u, all(vec4<bool>(true, false, false, false)))), func_2(arg_1.b.b.xxw).b);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global0 = array<vec4<i32>, 12>();
    let var_0 = func_4(~(~_wgslsmith_div_u32(u_input.a, 4294967295u)), func_2(firstLeadingBit(vec3<i32>(arg_0.x, arg_0.x, 2147483647i) | ~vec3<i32>(arg_0.x, -31667i, -1i))), 0i ^ -(1i & ~arg_0.x));
    let var_1 = countOneBits(vec4<i32>(var_0.b.b.x, -56801i, var_0.b.b.x, ~1i >> (u_input.a % 32u)));
    let var_2 = var_0.b;
    let var_3 = var_0;
    return -var_3.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 12>();
    let var_0 = -18228i;
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 389f) * -213f), 919f))), _wgslsmith_div_vec3_i32(vec3<i32>(~var_0, func_1(max(vec2<i32>(11979i, 31337i), vec2<i32>(var_0, var_0))), 1i), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, 45303i), firstTrailingBit(vec2<i32>(var_0, 21468i))), 1i, var_0)), vec4<u32>(70329u, 1u, _wgslsmith_add_u32(u_input.a ^ u_input.a, countOneBits(u_input.a)) | 0u, 0u), countOneBits(abs(var_0)), -9618i);
}

