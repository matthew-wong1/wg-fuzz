struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(43660i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(12642i, -5805i), vec2<i32>(2147483647i, 3694i), vec2<i32>(40001i, -43574i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(15576i, i32(-2147483648)), vec2<i32>(60074i, -12333i), vec2<i32>(-12280i, 59035i), vec2<i32>(2147483647i, -18571i), vec2<i32>(52232i, 0i), vec2<i32>(2147483647i, 877i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1324i, 0i), vec2<i32>(31336i, -1i), vec2<i32>(0i, 73940i), vec2<i32>(i32(-2147483648), 14801i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -7846i), vec2<i32>(-11435i, 25921i), vec2<i32>(25483i, 9463i), vec2<i32>(18247i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-21260i, -15076i), vec2<i32>(-35534i, 2147483647i), vec2<i32>(-15406i, 22778i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = false;
    global0 = array<vec2<i32>, 28>();
    var var_1 = Struct_2(960f);
    var var_2 = _wgslsmith_f_op_f32(select(1f, 866f, select(false, false, any(!select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, false, true, var_0))))));
    return -1i;
}

fn func_2(arg_0: u32) -> StorageBuffer {
    var var_0 = vec2<i32>(~_wgslsmith_add_i32(-func_3(), -2147483647i), max(u_input.a, 1i));
    let var_1 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), vec3<bool>(true, false, false), select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)));
    global0 = array<vec2<i32>, 28>();
    var var_2 = select(select(select(!(!vec4<bool>(false, var_1.x, var_1.x, true)), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(true, !var_1.x, var_1.x, var_1.x), select(vec4<bool>(all(var_1), var_1.x, var_1.x, true), !(!vec4<bool>(var_1.x, var_1.x, true, false)), vec4<bool>(!var_1.x, false, !var_1.x, true))), !vec4<bool>(var_1.x, any(select(var_1, var_1, var_1)), false, !var_1.x), select(select(select(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, false, true), var_1.x), !vec4<bool>(false, var_1.x, true, var_1.x), select(false, var_1.x, false)), select(select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false)), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), true), select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, true, false, false), var_1.x)), select(vec4<bool>(var_1.x, false, false, true), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<bool>(var_1.x, any(select(var_1.yx, var_1.xz, false)), false, (true | var_1.x) | var_1.x), !var_1.x));
    global0 = array<vec2<i32>, 28>();
    return StorageBuffer(select(u_input.b.zz, ~_wgslsmith_add_vec2_u32(u_input.d.yx, firstTrailingBit(vec2<u32>(80992u, u_input.b.x))), !(!vec2<bool>(var_2.x, false))), _wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.a, 38052i, var_0.x, u_input.a))), vec4<i32>(-9642i, firstTrailingBit(u_input.a), 52316i, (u_input.a >> (arg_0 % 32u)) ^ var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(561f - -178f))) - _wgslsmith_f_op_f32(min(398f, 1000f))), arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -835f), -169f, _wgslsmith_f_op_f32(min(399f, _wgslsmith_f_op_f32(f32(-1f) * -730f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -126f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)), _wgslsmith_f_op_f32(-1f), 2200f, 1092f)));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~(~reverseBits(countOneBits(vec3<u32>(12414u, u_input.c, u_input.c))));
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    var var_1 = vec2<bool>(min(i32(-1i) * -u_input.a, _wgslsmith_clamp_i32(u_input.a, 1i, 1i)) != u_input.a, all(vec2<bool>(true, true)));
    var var_2 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), -43601i), global0[_wgslsmith_index_u32(min(select(_wgslsmith_mod_u32(u_input.b.x, u_input.c), ~var_0.x, true), var_0.x), 28u)], false), ~global0[_wgslsmith_index_u32(u_input.c, 28u)]);
    return func_2(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 28>();
    var var_0 = -vec3<i32>(1i, u_input.a, -u_input.a);
    var_0 = vec3<i32>(-(2147483647i ^ var_0.x) | 0i, ~2147483647i, firstTrailingBit(7104i & var_0.x)) & firstLeadingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_0.x, var_0.x, 37533i) << (u_input.b.wzw % vec3<u32>(32u))), ~vec3<i32>(-44289i, -56650i, var_0.x), vec3<i32>(5710i, min(-78029i, u_input.a), 0i)));
    global0 = array<vec2<i32>, 28>();
    var_0 = vec3<i32>(1i, u_input.a, -(var_0.x ^ -2147483647i));
    var var_1 = ~u_input.b.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-742f, -288f) + _wgslsmith_f_op_f32(select(-890f, -675f, false))))));
    let x = u_input.a;
    s_output = func_1();
}

