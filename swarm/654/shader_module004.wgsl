struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 16372u, 56555u, 22502u, 31671u, 45352u, 1u, 109146u, 15037u, 70119u, 7847u);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(1u, 28416u, 7274u), vec4<f32>(245f, 2149f, -119f, -774f)), Struct_1(vec3<u32>(8964u, 32174u, 0u), vec4<f32>(-1993f, 1135f, -1456f, 373f)), Struct_1(vec3<u32>(8389u, 12905u, 4294967295u), vec4<f32>(1217f, 400f, -189f, -251f)), Struct_1(vec3<u32>(57380u, 1u, 0u), vec4<f32>(900f, 304f, 262f, -1942f)));

var<private> global3: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(531f, 357f));

var<private> global4: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1501f, -250f, -1000f), vec3<f32>(-977f, -895f, 1315f), vec3<f32>(1967f, 705f, 588f), vec3<f32>(641f, 1073f, 2908f), vec3<f32>(353f, -467f, -1435f), vec3<f32>(-1098f, 862f, -890f), vec3<f32>(-1371f, 1169f, -1269f), vec3<f32>(-762f, 554f, -1164f), vec3<f32>(163f, 412f, -142f), vec3<f32>(-287f, -2566f, 1708f), vec3<f32>(116f, -1000f, 217f), vec3<f32>(116f, 754f, 2220f), vec3<f32>(206f, 100f, -118f), vec3<f32>(-888f, 1890f, -1136f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = u_input.a;
    var var_1 = Struct_2(reverseBits(1u));
    global4 = array<vec3<f32>, 14>();
    let var_2 = !vec2<bool>(!(~global1[_wgslsmith_index_u32(70256u, 11u)] <= global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(16678u, 1u), 11u)]), false);
    var var_3 = Struct_3(Struct_2(4294967295u), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(1u, 7512u), global1[_wgslsmith_index_u32(u_input.b, 11u)]), 11u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(27444u, 58900u), vec2<u32>(20533u, u_input.b) ^ vec2<u32>(4294967295u, 0u)), 1u), vec4<f32>(_wgslsmith_f_op_f32(-888f - _wgslsmith_f_op_f32(min(-1130f, -254f))), _wgslsmith_f_op_f32(-1352f - _wgslsmith_f_op_f32(1417f - 1148f)), _wgslsmith_f_op_f32(sign(307f)), 929f)));
    return !(!var_2.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(reverseBits(vec4<u32>(29128u, global1[_wgslsmith_index_u32(arg_1.x, 11u)], 0u, 11853u)), ~vec4<u32>(4294967295u, 1u, 100762u, global1[_wgslsmith_index_u32(4294967295u, 11u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], 4294967295u, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 11u)]), vec4<u32>(0u, 0u, 44037u, arg_0.x))), 11u)], 4u)], vec4<bool>(all(vec4<bool>(u_input.a >= u_input.a, func_3(vec2<i32>(u_input.a, 2147483647i)), any(vec2<bool>(false, false)), true)), true, true, !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-945f, _wgslsmith_f_op_f32(min(-912f, -990f)))))));
    var var_1 = _wgslsmith_div_u32(var_0.a.a.x, _wgslsmith_clamp_u32(countOneBits(23025u), 1u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(arg_1.x, 1u), abs(~0u))));
    var_1 = arg_0.x;
    global1 = array<u32, 11>();
    global2 = array<Struct_1, 4>();
    return 1u;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = max(vec3<u32>(36346u, 71173u, 40616u), reverseBits(~vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 1u), func_2(vec2<u32>(u_input.b, 52262u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 4294967295u, 1773u)), ~29372u)));
    var var_1 = ~select(_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(global1[_wgslsmith_index_u32(2747u, 11u)], 4294967295u)), countOneBits(var_0.yx)), vec2<u32>(abs(_wgslsmith_add_u32(30761u, global1[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_dot_vec3_u32(max(vec3<u32>(28540u, 1u, u_input.b), vec3<u32>(56085u, var_0.x, u_input.b)), max(vec3<u32>(u_input.b, 13567u, u_input.b), vec3<u32>(35812u, 40263u, global1[_wgslsmith_index_u32(var_0.x, 11u)])))), vec2<bool>(true, true));
    global4 = array<vec3<f32>, 14>();
    global4 = array<vec3<f32>, 14>();
    let var_2 = Struct_2(4294967295u);
    return 474f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 14>();
    global2 = array<Struct_1, 4>();
    global1 = array<u32, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(1491f, 1000f, -238f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(62799u, 1u)]));
    let var_1 = Struct_2(0u);
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 0u, var_1.a, 1u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], var_1.a, global1[_wgslsmith_index_u32(20284u, 11u)], 24081u))), ~firstTrailingBit(~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 47126u, var_1.a, 0u))), ~(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 15095u, 4294967295u, u_input.b)), vec4<u32>(var_1.a, var_1.a, 117414u, 61904u))));
    let var_2 = Struct_3(var_1, global2[_wgslsmith_index_u32(var_1.a, 4u)]);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, var_0.x, -1798f)) - _wgslsmith_f_op_vec4_f32(var_2.b.b + vec4<f32>(var_0.x, -416f, var_0.x, var_0.x))) - var_2.b.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(988f - -1067f), -114f, -2102f, var_2.b.b.x)))), firstTrailingBit(vec4<i32>(-2147483647i, -firstTrailingBit(u_input.c.x), 1i >> (1u % 32u), max(u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(var_2.b.a.yy, abs(abs(~vec2<u32>(4294967295u, 17211u)))));
}

