struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(43199i, 0i, 1i, 17127i, 1i, -6186i, -20038i, 1i, 58391i, -48098i, 1i, 3903i, -72409i, i32(-2147483648), 2147483647i, 2147483647i, 2147483647i, 48297i, 3340i, 0i, 58406i, 0i, -20962i, -45981i, -23491i, -1i, 2147483647i, -1i, -1i, -13305i, -1i, -1705i);

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(23387u, vec2<f32>(-2363f, 954f), Struct_1(1000f, vec3<f32>(-514f, 143f, 818f), vec3<i32>(36588i, 51721i, 2147483647i), vec2<bool>(false, false)), vec4<bool>(false, true, true, false)), Struct_2(34957u, vec2<f32>(461f, 1000f), Struct_1(-1969f, vec3<f32>(764f, -1387f, -1000f), vec3<i32>(-1i, -261i, 14854i), vec2<bool>(true, true)), vec4<bool>(false, false, true, true)), Struct_2(13638u, vec2<f32>(-1497f, -609f), Struct_1(-732f, vec3<f32>(-1493f, 581f, 1079f), vec3<i32>(14439i, -9291i, i32(-2147483648)), vec2<bool>(true, false)), vec4<bool>(false, true, false, true)), Struct_2(0u, vec2<f32>(-340f, -288f), Struct_1(1786f, vec3<f32>(-263f, 1000f, 1145f), vec3<i32>(-24895i, 1i, i32(-2147483648)), vec2<bool>(false, false)), vec4<bool>(true, false, true, true)), Struct_2(36399u, vec2<f32>(-673f, -1000f), Struct_1(867f, vec3<f32>(870f, -627f, -576f), vec3<i32>(20352i, -32793i, -40159i), vec2<bool>(true, true)), vec4<bool>(true, false, true, false)), Struct_2(136958u, vec2<f32>(-680f, -364f), Struct_1(372f, vec3<f32>(-254f, -575f, -1333f), vec3<i32>(2147483647i, -35013i, 10816i), vec2<bool>(false, false)), vec4<bool>(false, true, false, true)), Struct_2(0u, vec2<f32>(-373f, 283f), Struct_1(-544f, vec3<f32>(1712f, 749f, 1505f), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec2<bool>(false, true)), vec4<bool>(false, false, false, true)), Struct_2(4294967295u, vec2<f32>(247f, -149f), Struct_1(2005f, vec3<f32>(-309f, -1411f, -273f), vec3<i32>(-11322i, -28024i, -1i), vec2<bool>(false, false)), vec4<bool>(true, true, false, false)), Struct_2(25623u, vec2<f32>(-1600f, -217f), Struct_1(602f, vec3<f32>(1509f, 257f, -1168f), vec3<i32>(41318i, -39675i, -45960i), vec2<bool>(false, true)), vec4<bool>(true, false, true, false)), Struct_2(1u, vec2<f32>(-1113f, 1621f), Struct_1(-800f, vec3<f32>(-279f, -753f, 325f), vec3<i32>(2147483647i, -1i, 0i), vec2<bool>(true, true)), vec4<bool>(false, false, true, true)), Struct_2(119769u, vec2<f32>(-1000f, -536f), Struct_1(-491f, vec3<f32>(175f, -1000f, 239f), vec3<i32>(-13273i, 34884i, 0i), vec2<bool>(false, true)), vec4<bool>(true, false, true, false)), Struct_2(41593u, vec2<f32>(461f, 475f), Struct_1(-311f, vec3<f32>(-302f, 440f, -772f), vec3<i32>(0i, -44229i, -2067i), vec2<bool>(false, true)), vec4<bool>(true, false, false, true)), Struct_2(5002u, vec2<f32>(1498f, -1473f), Struct_1(-1007f, vec3<f32>(610f, -1238f, 500f), vec3<i32>(1i, -21223i, 12241i), vec2<bool>(false, true)), vec4<bool>(false, false, true, true)), Struct_2(1u, vec2<f32>(-772f, 1298f), Struct_1(460f, vec3<f32>(-317f, 139f, 1233f), vec3<i32>(-18859i, 1i, 71491i), vec2<bool>(false, false)), vec4<bool>(true, false, true, false)), Struct_2(32005u, vec2<f32>(844f, -1419f), Struct_1(516f, vec3<f32>(1035f, -1763f, 146f), vec3<i32>(35230i, 1i, 38285i), vec2<bool>(true, false)), vec4<bool>(true, false, false, true)), Struct_2(0u, vec2<f32>(830f, -2038f), Struct_1(1704f, vec3<f32>(-1188f, 510f, 173f), vec3<i32>(-46210i, -40842i, 1i), vec2<bool>(false, true)), vec4<bool>(true, false, true, true)), Struct_2(66884u, vec2<f32>(-762f, -1291f), Struct_1(1371f, vec3<f32>(1112f, -463f, 1534f), vec3<i32>(-25194i, -20449i, -19282i), vec2<bool>(false, true)), vec4<bool>(false, true, false, false)), Struct_2(0u, vec2<f32>(-389f, -592f), Struct_1(-1029f, vec3<f32>(454f, 197f, -503f), vec3<i32>(42408i, 44081i, -1i), vec2<bool>(false, true)), vec4<bool>(true, true, true, true)), Struct_2(0u, vec2<f32>(-1709f, -445f), Struct_1(1184f, vec3<f32>(956f, -1073f, 1088f), vec3<i32>(34278i, -17872i, 2147483647i), vec2<bool>(true, false)), vec4<bool>(true, false, true, true)));

var<private> global2: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -21199i), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(929f, -457f))))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), ~19618u);
    let var_2 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(select(-30216i, global0[_wgslsmith_index_u32(u_input.a, 32u)], true), reverseBits(17381i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 32u)], -2147483647i, -16586i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], -32874i, global0[_wgslsmith_index_u32(13197u, 32u)])), global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<i32>(34814i, -43155i, global0[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 32u)], ~40323i)), global0[_wgslsmith_index_u32(~u_input.a, 32u)]));
    return !(!vec4<bool>(any(vec2<bool>(true, true)), select(true, true, true), !all(vec2<bool>(false, false)), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = arg_2;
    let var_1 = ~(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.a), 4u)], vec2<i32>(~global0[_wgslsmith_index_u32(u_input.a, 32u)], 2147483647i)) & firstTrailingBit(arg_0.c.x));
    var var_2 = _wgslsmith_f_op_f32(ceil(213f));
    let var_3 = arg_0;
    var var_4 = all(func_3());
    return ~arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    global1 = array<Struct_2, 19>();
    return _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(func_2(Struct_1(2622f, arg_1.c.b, vec3<i32>(global0[_wgslsmith_index_u32(arg_1.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], 0i), vec2<bool>(true, arg_1.d.x)), u_input.a, 169f), 32u)], _wgslsmith_clamp_i32(1i, 2147483647i, arg_1.c.c.x), -2147483647i, arg_1.c.c.x), firstTrailingBit(firstLeadingBit(vec4<i32>(-1i, -74345i, arg_1.c.c.x, 1i))), firstTrailingBit(vec4<i32>(-12156i, 1i, arg_1.c.c.x, arg_1.c.c.x))) & -vec4<i32>(arg_1.c.c.x, abs(-2147483647i), global0[_wgslsmith_index_u32(33368u, 32u)], arg_1.c.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a, 32u)], arg_1.c.c.x, global0[_wgslsmith_index_u32(~55880u, 32u)]), -34537i, global0[_wgslsmith_index_u32(u_input.a, 32u)], _wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)])), vec4<i32>(arg_1.c.c.x, select(firstTrailingBit(global0[_wgslsmith_index_u32(arg_3.x, 32u)]), -global0[_wgslsmith_index_u32(arg_3.x, 32u)], true & arg_0.x), -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_3.x, 32u)], arg_1.c.c.x), ~_wgslsmith_div_i32(arg_1.c.c.x, global0[_wgslsmith_index_u32(1u, 32u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 19>();
    let var_0 = vec3<i32>(0i, func_1(vec3<bool>(true, true, true), Struct_2(~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-570f, 643f) * vec2<f32>(988f, -342f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1136f) * vec2<f32>(-1000f, 1000f)))), Struct_1(485f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-602f, 1039f, 183f), vec3<f32>(-756f, -112f, -196f))), _wgslsmith_sub_vec3_i32(vec3<i32>(-34734i, 81376i, -2147483647i), vec3<i32>(48456i, 49865i, global0[_wgslsmith_index_u32(4294967295u, 32u)])), vec2<bool>(false, false)), vec4<bool>(true, true, true, true)), true, ~(~vec4<u32>(u_input.a, 26549u, u_input.a, 0u) ^ abs(vec4<u32>(u_input.a, 51375u, u_input.a, 93974u)))), -max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 23330u) << (vec3<u32>(u_input.a, 3034u, 1u) % vec3<u32>(32u)), ~vec3<u32>(31885u, 44938u, 31326u)), 32u)], 1i));
    let var_1 = global2[_wgslsmith_index_u32(~21720u, 4u)];
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec2<u32>(firstTrailingBit(u_input.a), func_2(Struct_1(-1366f, vec3<f32>(-650f, -1275f, 2157f), var_0, vec2<bool>(false, true)), 0u, -984f))), vec2<u32>(max(~0u, _wgslsmith_sub_u32(~u_input.a, ~u_input.a)), ~u_input.a), _wgslsmith_f_op_f32(max(-1519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f * 1000f))))));
}

