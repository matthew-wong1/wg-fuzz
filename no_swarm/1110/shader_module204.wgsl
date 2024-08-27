struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2552i, -25674i, -20480i, 2147483647i, -947i, 32706i, -49303i, 2147483647i, 1i);

var<private> global1: f32;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec3<u32>(33248u, 6043u, 1u)), Struct_4(vec3<u32>(8490u, 1u, 41689u)), Struct_4(vec3<u32>(0u, 2484u, 0u)), Struct_4(vec3<u32>(17798u, 3691u, 11858u)), Struct_4(vec3<u32>(3886u, 18531u, 62022u)), Struct_4(vec3<u32>(4294967295u, 1u, 1u)), Struct_4(vec3<u32>(0u, 18546u, 18727u)), Struct_4(vec3<u32>(20520u, 32121u, 0u)), Struct_4(vec3<u32>(38552u, 15348u, 48315u)), Struct_4(vec3<u32>(21802u, 26770u, 13705u)), Struct_4(vec3<u32>(4294967295u, 0u, 1u)), Struct_4(vec3<u32>(1u, 109664u, 38378u)), Struct_4(vec3<u32>(0u, 0u, 6995u)), Struct_4(vec3<u32>(4294967295u, 52912u, 0u)), Struct_4(vec3<u32>(0u, 33468u, 2004u)), Struct_4(vec3<u32>(0u, 1u, 30209u)), Struct_4(vec3<u32>(0u, 1u, 1u)), Struct_4(vec3<u32>(1888u, 0u, 16368u)), Struct_4(vec3<u32>(42009u, 44436u, 10859u)), Struct_4(vec3<u32>(35908u, 53687u, 114955u)), Struct_4(vec3<u32>(0u, 2283u, 0u)), Struct_4(vec3<u32>(13059u, 1u, 39053u)), Struct_4(vec3<u32>(1u, 1u, 0u)), Struct_4(vec3<u32>(37387u, 38446u, 0u)), Struct_4(vec3<u32>(12462u, 1u, 1u)), Struct_4(vec3<u32>(4294967295u, 35120u, 46586u)), Struct_4(vec3<u32>(4294967295u, 9289u, 0u)));

var<private> global3: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-1808f, 411f, 939f, 265f), vec4<f32>(-1290f, -1519f, -1979f, -1082f), vec4<f32>(-971f, 315f, 331f, 194f), vec4<f32>(-307f, 1823f, 930f, 1560f), vec4<f32>(208f, 486f, -161f, -769f), vec4<f32>(1000f, -877f, 1046f, 206f), vec4<f32>(643f, -269f, -344f, -802f), vec4<f32>(1389f, -1126f, -543f, 1433f), vec4<f32>(-2326f, -148f, 1697f, 286f), vec4<f32>(777f, 1000f, 1066f, 942f), vec4<f32>(137f, -2135f, 1000f, 372f), vec4<f32>(461f, 1085f, 2507f, 1066f), vec4<f32>(-935f, -330f, 759f, -699f), vec4<f32>(-1940f, -1317f, 1434f, -1037f), vec4<f32>(-1451f, -543f, 211f, 1234f), vec4<f32>(-1292f, 1000f, 1070f, 1529f), vec4<f32>(-643f, 190f, -269f, 1718f), vec4<f32>(-328f, -475f, 296f, 1037f), vec4<f32>(1638f, 2404f, 166f, 409f), vec4<f32>(1061f, -124f, -1000f, -698f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = array<Struct_4, 27>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1483f, _wgslsmith_f_op_f32(-428f + 1591f)))), -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(9990i, -1042i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 9u)])), -vec2<i32>(2147483647i, -1i)), ~2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) - 922f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), var_0.a)) + _wgslsmith_f_op_f32(sign(179f)));
}

fn func_3() -> bool {
    return any(vec4<bool>(false, any(vec2<bool>(true, true)), true, true));
}

fn func_2() -> bool {
    return func_3() & !(!all(vec4<bool>(true, false, true, false)) && func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 20>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(2147483647i)))));
    let var_0 = any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), vec2<bool>(true, true))) || (any(vec4<bool>(func_2(), global0[_wgslsmith_index_u32(11621u, 9u)] <= global0[_wgslsmith_index_u32(u_input.a, 9u)], true, global0[_wgslsmith_index_u32(u_input.a, 9u)] >= global0[_wgslsmith_index_u32(4294967295u, 9u)])) & any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-949f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-640f)) + -1532f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-393f)) + 632f), !(var_0 & var_0))))));
    let var_2 = var_0;
    global0 = array<i32, 9>();
    let var_3 = reverseBits(~vec2<u32>(28663u | u_input.c.x, ~(0u ^ u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c));
}

