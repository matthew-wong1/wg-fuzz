struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(18119i, -2183i), vec2<i32>(-48919i, 2147483647i), vec2<i32>(-1i, -33159i), vec2<i32>(3923i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(1i, 0i), vec2<i32>(-18203i, -1i), vec2<i32>(1i, 63100i), vec2<i32>(-48177i, 41488i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(19185i, 4167i), vec2<i32>(-41431i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(-1520i, 16788i), vec2<i32>(12358i, -1i), vec2<i32>(41260i, -1153i), vec2<i32>(-1i, 2147483647i), vec2<i32>(30796i, i32(-2147483648)), vec2<i32>(0i, -37444i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(-41151i, 2147483647i), vec2<i32>(-8090i, -17165i), vec2<i32>(13554i, 1i), vec2<i32>(11402i, 1i), vec2<i32>(-20226i, 20680i), vec2<i32>(-40782i, 1i), vec2<i32>(37663i, -28110i));

var<private> global2: bool;

var<private> global3: vec2<u32>;

var<private> global4: array<f32, 3> = array<f32, 3>(916f, 360f, 1881f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> vec3<i32> {
    return u_input.b.yxy;
}

fn func_3() -> vec4<u32> {
    var var_0 = !any(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, true, true), global4[_wgslsmith_index_u32(4294967295u, 3u)] <= -1704f));
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 92503u, 14772u), ~vec3<u32>(66756u, 1u, 3298u)), ~global3.x), 4294967295u), 3u)] < global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 1u))), 3u)];
    global4 = array<f32, 3>();
    global0 = array<Struct_3, 27>();
    let var_1 = vec3<bool>(any(vec3<bool>(true, true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), 1000f > global4[_wgslsmith_index_u32(u_input.a.x, 3u)])) & false, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, select(false, false, false)), (4294967295u >= global3.x) != any(vec2<bool>(false, false)))));
    return _wgslsmith_mod_vec4_u32(~min(vec4<u32>(~0u, 4294967295u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, global3.x), vec4<u32>(global3.x, 48096u, u_input.a.x, 28146u))), ~(~vec4<u32>(0u, 4294967295u, 1u, global3.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, ~u_input.a.x, countOneBits(37493u), abs(u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 0u, 8540u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, global3.x, 23200u)), _wgslsmith_sub_u32(4647u, 1u), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global3.x), vec3<u32>(u_input.a.x, 39279u, 0u))), reverseBits(vec4<u32>(0u, 101330u, u_input.a.x, 54828u)))));
}

fn func_2() -> vec4<f32> {
    var var_0 = all(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !all(vec4<bool>(true, false, true, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(717f * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(min(global3.x, u_input.a.x), 3u)] - _wgslsmith_f_op_f32(f32(-1f) * -144f))), 526f)), u_input.b);
    let var_2 = Struct_4(Struct_1(_wgslsmith_mod_u32(global3.x, abs(u_input.a.x)) | (~u_input.a.x >> (_wgslsmith_add_u32(25270u, 25713u) % 32u)), -u_input.b.x, max(var_1.b.wwz, u_input.b.yyz)));
    let var_3 = countOneBits(~(~func_3()));
    let var_4 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(true, false, false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), vec3<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true)), true, true), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false)), true))));
    return vec4<f32>(273f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, 1000f)), -648f, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_2.a.a, var_2.a.a)), 4294967295u), 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, u_input.a.x, global3.x)), vec3<u32>(35761u, u_input.a.x, global3.x) >> ((vec3<u32>(34701u, 27346u, u_input.a.x) << (vec3<u32>(41711u, u_input.a.x, 29293u) % vec3<u32>(32u))) % vec3<u32>(32u)))), (((vec3<u32>(global3.x, 3422u, 10520u) << (vec3<u32>(global3.x, 16604u, u_input.a.x) % vec3<u32>(32u))) ^ ~vec3<u32>(4943u, 1u, 1u)) >> (~vec3<u32>(u_input.a.x, 1u, 4294967295u) % vec3<u32>(32u))) << (vec3<u32>(12153u, ~2223u, (global3.x ^ 53715u) << (~u_input.a.x % 32u)) % vec3<u32>(32u)));
    global1 = array<vec2<i32>, 28>();
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(), reverseBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -7789i, u_input.b.x), u_input.b.wyy))), vec3<i32>(~select(u_input.b.x, i32(-1i) * -36987i, all(vec2<bool>(false, true))), ~(~1i), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().yy, -var_2.x | 1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], global4[_wgslsmith_index_u32(49355u, 3u)], -1000f, -397f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global3.x, 3u)], global4[_wgslsmith_index_u32(global3.x, 3u)], 1247f, global4[_wgslsmith_index_u32(global3.x, 3u)]), vec4<f32>(global4[_wgslsmith_index_u32(17275u, 3u)], 2020f, global4[_wgslsmith_index_u32(u_input.a.x, 3u)], global4[_wgslsmith_index_u32(81855u, 3u)])), vec4<f32>(global4[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(4294967295u, 3u)], 161f, 1990f)))), _wgslsmith_f_op_vec4_f32(func_2())), vec2<f32>(-500f, global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(global3.x, 1u), 1u), 3u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(357f, 420f))))))));
}

