struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-1186f, -563f, -665f, -561f), vec4<f32>(1009f, 1000f, 846f, 2153f), vec4<f32>(-938f, -2060f, -1400f, 430f), vec4<f32>(763f, 556f, 1425f, -801f), vec4<f32>(-618f, -122f, -660f, 285f), vec4<f32>(-833f, 203f, 459f, 1000f), vec4<f32>(-743f, 276f, 1301f, -850f), vec4<f32>(1000f, 350f, -1000f, 140f), vec4<f32>(2062f, 367f, 603f, -1556f), vec4<f32>(-457f, -295f, -411f, -668f), vec4<f32>(-1135f, 1980f, -480f, -1000f), vec4<f32>(1094f, 1792f, 419f, 269f), vec4<f32>(-1305f, -681f, -173f, -857f), vec4<f32>(-273f, 2110f, -459f, 616f), vec4<f32>(3386f, 1041f, -666f, -624f), vec4<f32>(3159f, 1784f, -1080f, -849f), vec4<f32>(-1000f, -1000f, -477f, -841f), vec4<f32>(-351f, 1000f, 246f, 345f), vec4<f32>(833f, -442f, -1000f, -1638f), vec4<f32>(-562f, 396f, 672f, 1000f), vec4<f32>(-1464f, -116f, 2194f, -1090f), vec4<f32>(808f, -1118f, 312f, 1000f), vec4<f32>(-190f, -1414f, 153f, 809f), vec4<f32>(1232f, -756f, -1694f, -1797f), vec4<f32>(-1505f, -1755f, 227f, 1223f), vec4<f32>(238f, 194f, -632f, 1874f), vec4<f32>(565f, 1351f, -338f, 1728f), vec4<f32>(-2626f, 431f, 428f, 431f));

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global2 = Struct_2(select(global2.a, vec3<bool>(!any(vec4<bool>(arg_0.x, true, global2.a.x, arg_0.x)), all(global2.b), !arg_0.x), select(arg_0, !(!vec3<bool>(global2.b.x, arg_0.x, true)), true)), arg_0.yy);
    global3 = array<Struct_3, 31>();
    var var_0 = firstTrailingBit(vec3<u32>(abs(4335u), global0.x, ~max(3909u, _wgslsmith_clamp_u32(global0.x, global0.x, global0.x))));
    var var_1 = 60252u;
    let var_2 = true;
    return abs(_wgslsmith_div_u32(65002u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, 30886u), 1u ^ var_0.x)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 17594u, arg_2), ~(~vec3<u32>(24129u, u_input.b.x, u_input.b.x))), (arg_2 << (select(global0.x, 1813u, true) % 32u)) & global0.x, true) | u_input.b.x;
    let var_1 = Struct_2(arg_1.c.yxw, select(!(!global2.a.xy), select(!vec2<bool>(arg_1.c.x, true), !select(arg_1.c.yw, arg_1.c.xy, vec2<bool>(true, false)), vec2<bool>(global2.b.x, arg_1.c.x)), arg_1.b));
    var var_2 = arg_1;
    var var_3 = 1u;
    let var_4 = global0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1689f, -175f)), 328f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> vec4<u32> {
    global1 = array<vec4<f32>, 28>();
    let var_0 = ~(~(~(~vec4<u32>(global0.x, global0.x, 1u, arg_0.x))));
    global0 = vec3<u32>(func_2(select(select(vec3<bool>(true, true, true), select(global2.a, vec3<bool>(global2.b.x, arg_2, arg_2), vec3<bool>(arg_1.b.x, global2.b.x, false)), true), vec3<bool>(true, 2147483647i >= u_input.a, arg_2), true)), 0u, arg_3.x);
    var var_1 = ~(~firstTrailingBit(~var_0.x)) != _wgslsmith_clamp_u32(28195u, arg_0.x, arg_0.x);
    let var_2 = _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(select(11264u, 13571u, arg_1.b.x), 28u)], vec4<f32>(_wgslsmith_f_op_f32(-153f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, -2147483647i, 23507i, 50284i), Struct_4(43773i, true, vec4<bool>(global2.b.x, global2.a.x, arg_2, false)), arg_0.x, u_input.a)) * _wgslsmith_f_op_f32(1000f * -1023f))), -958f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1466f, 1008f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f + -1490f)) + 615f)));
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    global3 = array<Struct_3, 31>();
    var var_1 = _wgslsmith_dot_vec4_u32(func_1(countOneBits(~vec3<u32>(global0.x, global0.x, 4294967295u)), Struct_2(global2.a, global2.b), true, ~vec3<u32>(u_input.b.x, u_input.b.x, global0.x)), ~vec4<u32>(global0.x, 0u, 6714u, 0u) ^ ~(~vec4<u32>(global0.x, 0u, u_input.b.x, u_input.b.x))) >> (max(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.x, global0.x), ~4294967295u), ~u_input.b.x), _wgslsmith_sub_u32(min(u_input.b.x, 33624u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(73104u, u_input.b.x, 91158u, 7276u), vec4<u32>(global0.x, 33074u, 10295u, global0.x)) % 32u), countOneBits(_wgslsmith_sub_u32(global0.x, 16658u)))) % 32u);
    global3 = array<Struct_3, 31>();
    var var_2 = true;
    let var_3 = (u_input.b.x | u_input.b.x) | 35401u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(80978u), abs(u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1705f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1529f, 1262f) * vec2<f32>(-901f, -1166f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(739f, 803f)), vec2<f32>(588f, 746f))), var_0.x)))), -546f);
}

