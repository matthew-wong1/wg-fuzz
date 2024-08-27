struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(1000f, -306f), vec2<f32>(-1000f, -775f), vec2<f32>(1427f, 1115f), vec2<f32>(895f, 419f), vec2<f32>(-1301f, 1118f), vec2<f32>(-1186f, -683f), vec2<f32>(1529f, -167f), vec2<f32>(-155f, 1205f), vec2<f32>(-1000f, -110f), vec2<f32>(177f, -402f), vec2<f32>(1478f, 1000f), vec2<f32>(384f, 367f), vec2<f32>(1183f, 2998f), vec2<f32>(749f, 477f), vec2<f32>(1000f, 1833f), vec2<f32>(-483f, 709f), vec2<f32>(283f, -906f));

var<private> global1: Struct_1 = Struct_1(-28485i);

var<private> global2: array<u32, 7> = array<u32, 7>(0u, 14282u, 3003u, 73452u, 6974u, 102741u, 55088u);

var<private> global3: array<vec4<u32>, 18>;

var<private> global4: array<i32, 29>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    global3 = array<vec4<u32>, 18>();
    var var_0 = Struct_1(7081i);
    var var_1 = true;
    let var_2 = true;
    var_0 = Struct_1(u_input.a.x);
    return Struct_2(firstLeadingBit(vec4<i32>(-_wgslsmith_mod_i32(0i, var_0.a), -1i, var_0.a, _wgslsmith_clamp_i32(1i, abs(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 29u)]), ~2147483647i))), true, u_input.c.yx);
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = Struct_1(-35574i);
    var var_2 = Struct_1(-2147483647i);
    let var_3 = reverseBits(4294967295u);
    var var_4 = var_1;
    return var_1;
}

fn func_1() -> i32 {
    let var_0 = func_3(func_2());
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-2556f, -228f, 167f, 1303f), vec4<f32>(-2248f, 1530f, 326f, -793f)), _wgslsmith_div_vec4_f32(vec4<f32>(-757f, -1024f, 893f, 1754f), vec4<f32>(-626f, 283f, -379f, 567f)), all(vec2<bool>(true, true))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(496f, 1285f)), _wgslsmith_f_op_f32(min(984f, 349f)), 588f, -849f) * vec4<f32>(_wgslsmith_f_op_f32(select(649f, 656f, true)), _wgslsmith_f_op_f32(trunc(482f)), _wgslsmith_f_op_f32(select(-188f, 466f, true)), _wgslsmith_f_op_f32(1998f * -426f))))), select(!vec4<bool>(true, func_2().b, true, var_0.a != var_0.a), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(true, all(vec2<bool>(true, true)), true, true))));
    global2 = array<u32, 7>();
    let var_2 = 1i;
    var var_3 = func_2();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global4 = array<i32, 29>();
    global1 = Struct_1(_wgslsmith_mult_i32(32693i, func_1() & -8390i));
    var var_1 = func_3(func_2());
    global2 = array<u32, 7>();
    global1 = Struct_1(_wgslsmith_mod_i32(var_0, var_0));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(917f, _wgslsmith_f_op_f32(538f - _wgslsmith_f_op_f32(min(-202f, _wgslsmith_f_op_f32(sign(-564f)))))), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~abs(47177u), 7u)], 17u)]));
    let var_3 = vec2<f32>(-1515f, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 20126u >> (global2[_wgslsmith_index_u32(firstTrailingBit(max(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)])), 7u)] % 32u), ~global2[_wgslsmith_index_u32(~(~55555u), 7u)]), vec3<i32>(i32(-1i) * -29344i, func_1(), abs(-12249i)), firstTrailingBit(_wgslsmith_sub_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], 4294967295u, 68220u, 68294u), vec4<u32>(68861u, 1u, u_input.c.x, global2[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_clamp_vec4_u32(u_input.b, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62274u, 7u)], 18u)], u_input.b), all(vec3<bool>(false, true, true))), select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 7u)], 61236u, 28605u), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31990u, 7u)], 7u)], 18u)]), u_input.b, true))), vec3<f32>(798f, var_2.x, -915f));
}

