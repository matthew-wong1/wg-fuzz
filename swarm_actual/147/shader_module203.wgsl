struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true, false, vec4<f32>(1000f, -2099f, 1046f, 607f), -594f), Struct_1(false, false, vec4<f32>(-456f, -880f, 578f, -1430f), -1000f), Struct_1(true, false, vec4<f32>(-480f, -793f, -392f, -2153f), -2202f), Struct_1(false, false, vec4<f32>(-205f, -1143f, 255f, 866f), -951f), Struct_1(true, true, vec4<f32>(532f, 352f, 1616f, 674f), 499f), Struct_1(true, true, vec4<f32>(510f, 103f, 441f, -289f), -1075f), Struct_1(true, true, vec4<f32>(252f, 414f, -712f, 537f), 1292f), Struct_1(true, true, vec4<f32>(-662f, 136f, 1158f, 1849f), 1638f), Struct_1(false, true, vec4<f32>(-591f, 1653f, 1280f, -340f), 594f), Struct_1(false, true, vec4<f32>(116f, 273f, -2609f, 1818f), 804f), Struct_1(false, false, vec4<f32>(399f, -1511f, 1225f, -1000f), -720f), Struct_1(false, false, vec4<f32>(-1000f, 423f, 185f, 626f), 1396f), Struct_1(false, true, vec4<f32>(-1301f, 134f, -956f, 776f), 168f), Struct_1(false, false, vec4<f32>(-464f, 935f, 542f, -1376f), 344f), Struct_1(true, false, vec4<f32>(-185f, 1000f, -296f, 423f), 950f), Struct_1(true, false, vec4<f32>(716f, 1701f, 587f, -1741f), -166f), Struct_1(false, true, vec4<f32>(-132f, -519f, -852f, -1249f), -474f), Struct_1(true, true, vec4<f32>(1000f, -1154f, -756f, 1912f), 1117f), Struct_1(true, false, vec4<f32>(-1177f, 301f, -1853f, 330f), -1000f), Struct_1(true, false, vec4<f32>(-702f, -1000f, 424f, 1236f), -493f), Struct_1(false, false, vec4<f32>(-1155f, 347f, 141f, 492f), 789f));

var<private> global1: array<bool, 11>;

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(731f, 1464f, -532f, 346f), vec4<f32>(-2343f, -694f, 924f, -191f), vec4<f32>(-264f, -1315f, 552f, -2000f), vec4<f32>(-479f, -1042f, -1217f, 158f), vec4<f32>(-1267f, 711f, -1160f, 1351f), vec4<f32>(-1620f, 579f, -1316f, 468f), vec4<f32>(-917f, 1000f, -985f, -769f), vec4<f32>(1456f, 1827f, 141f, -885f), vec4<f32>(-165f, 737f, -102f, 973f), vec4<f32>(-100f, -905f, 529f, -349f), vec4<f32>(1000f, 1000f, -1791f, 125f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    global1 = array<bool, 11>();
    global2 = array<vec4<f32>, 11>();
    global2 = array<vec4<f32>, 11>();
    global1 = array<bool, 11>();
    global2 = array<vec4<f32>, 11>();
    return ~(~(~(~(~29893u))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(~u_input.a.x, 11u)], -2147483647i < (max(u_input.c, -18045i) | (_wgslsmith_sub_i32(u_input.d.x, 0i) >> (90904u % 32u))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, 1666f, _wgslsmith_f_op_f32(951f + 1377f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1074f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))))));
    global0 = array<Struct_1, 21>();
    global2 = array<vec4<f32>, 11>();
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))) - _wgslsmith_f_op_f32(round(arg_0)));
}

fn func_2() -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(14435u, ~(~_wgslsmith_add_u32(~u_input.a.x, 57438u))), 21u)];
    let var_1 = Struct_1(var_0.b, false, _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(88045u, 11u)], vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)), var_0.c.x), 1000f, _wgslsmith_f_op_f32(384f + -1233f), var_0.d), var_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x))), _wgslsmith_f_op_f32(func_3(1318f))))));
    global1 = array<bool, 11>();
    var var_2 = Struct_1(true, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_f32(exp2(var_1.d)));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    return StorageBuffer(-23852i, _wgslsmith_f_op_f32(func_3(1193f)), 1144f, 4294967295u, _wgslsmith_mult_vec4_u32(~vec4<u32>(42307u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(44582u, 699u, u_input.a.x, ~1u)) & (firstTrailingBit(vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x) << (u_input.a % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 14046u, 4294967295u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 11>();
    let var_0 = global0[_wgslsmith_index_u32(~16758u, 21u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, func_1()), 21u)];
    let var_2 = _wgslsmith_add_u32(~max(u_input.a.x, ~0u), 53761u) >> (~_wgslsmith_mod_u32(~(u_input.a.x & 110104u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 0u)), ~vec2<u32>(u_input.a.x, u_input.a.x))) % 32u);
    var var_3 = var_1.c.x;
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = func_2();
}

