struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 72805u, 1u, 47882u, 23781u);

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec3<f32>(-1220f, 390f, 398f), 6446i), Struct_4(vec3<f32>(-1445f, -1219f, -309f), 51203i), Struct_4(vec3<f32>(509f, 1012f, 301f), -23593i), Struct_4(vec3<f32>(1000f, -1086f, -735f), 15569i), Struct_4(vec3<f32>(-2863f, 1000f, 287f), 60321i), Struct_4(vec3<f32>(-1664f, -158f, -310f), 38912i), Struct_4(vec3<f32>(255f, -1669f, 832f), 5782i), Struct_4(vec3<f32>(-1000f, -929f, 829f), 36169i), Struct_4(vec3<f32>(1194f, -231f, -1854f), i32(-2147483648)), Struct_4(vec3<f32>(865f, 756f, 891f), -60376i), Struct_4(vec3<f32>(650f, -108f, 834f), 25663i), Struct_4(vec3<f32>(126f, -1539f, -1834f), 2147483647i), Struct_4(vec3<f32>(1042f, 1376f, 967f), -1i), Struct_4(vec3<f32>(115f, 361f, 115f), -31795i), Struct_4(vec3<f32>(346f, 1377f, -440f), -42073i), Struct_4(vec3<f32>(1249f, 1627f, -1847f), -22821i), Struct_4(vec3<f32>(-1408f, -737f, 544f), i32(-2147483648)));

var<private> global2: Struct_4 = Struct_4(vec3<f32>(-1701f, -478f, 1395f), 2147483647i);

var<private> global3: vec4<f32>;

var<private> global4: array<u32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = u_input.a;
    var var_1 = Struct_1(!(global4[_wgslsmith_index_u32(51629u, 16u)] < u_input.d), !vec4<bool>(true, all(vec4<bool>(false, true, true, true)), false, _wgslsmith_div_u32(u_input.c.x, 0u) >= global4[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1317f, global2.a.x, 596f, global2.a.x) - vec4<f32>(global2.a.x, global2.a.x, global3.x, global3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1308f, 351f, 888f, -751f) + vec4<f32>(global2.a.x, global3.x, global3.x, 1340f))))), vec4<bool>(true, true, true, true));
    global4 = array<u32, 16>();
    let var_2 = -1i;
    global2 = global1[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(~(reverseBits(u_input.d << (19328u % 32u)) & 28830u), 5u)]), 17u)];
    return var_1.b.xy;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    return func_2(u_input.b.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.x, global3.x, global2.a.x), global3.yzw, arg_2.x))))), Struct_1(min(min(1u, 0u), _wgslsmith_mult_u32(852u, 0u)) == ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(3045u, global4[_wgslsmith_index_u32(u_input.c.x, 16u)]), 5u)], arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.x - 719f), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(683f * 1024f), _wgslsmith_f_op_f32(round(-854f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, global3.x, global3.x, global3.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-780f, 1000f, global3.x, global3.x), vec4<f32>(-104f, global2.a.x, global2.a.x, global2.a.x)))), arg_0), _wgslsmith_f_op_f32(global3.x + global2.a.x));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * -1822f);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(min(989f, var_2)), var_0.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -303f), 471f);
    let var_3 = _wgslsmith_div_f32(-1987f, var_2);
    return !any(vec3<bool>(any(!var_0.b.b.yzw), false, !arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -682f;
    var var_1 = select(vec4<bool>(true, false, (any(vec2<bool>(true, false)) == true) && all(func_1(Struct_1(true, vec4<bool>(false, true, false, false), vec4<f32>(-510f, -156f, global3.x, -1185f), vec4<bool>(true, false, true, true)), vec4<f32>(global2.a.x, 648f, 424f, 1174f), true)), !func_3(vec4<bool>(true, false, false, true), 0i, vec3<bool>(false, true, true)) & (~13527u > _wgslsmith_mult_u32(3318u, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 5u)]))), select(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), 220f > global3.x), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(true, true, select(false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(false, true)), true, func_1(Struct_1(false, vec4<bool>(false, false, true, true), vec4<f32>(-1578f, global3.x, global3.x, -1212f), vec4<bool>(true, true, false, true)), vec4<f32>(global3.x, 626f, global3.x, -145f), false).x))), (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global2.b, global2.b) & u_input.a.zwz, -vec3<i32>(1i, global2.b, 0i)) | -global2.b) <= u_input.a.x);
    global4 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(1u, firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, global4[_wgslsmith_index_u32(69164u, 16u)], global4[_wgslsmith_index_u32(53682u, 16u)])), u_input.d, global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(96770u, 16u)], 16u)]), vec4<u32>(global0[_wgslsmith_index_u32(reverseBits(0u), 5u)], 27616u, 26946u, 55779u)), abs(vec3<i32>(~global2.b, -8502i, global2.b) ^ vec3<i32>(-global2.b, _wgslsmith_div_i32(1i, 25551i), global2.b)));
}

