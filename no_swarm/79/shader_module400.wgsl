struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(21810u, 23316u, 11671u, 4294967295u), vec4<u32>(37405u, 35428u, 0u, 1u), vec4<u32>(0u, 86176u, 47565u, 4294967295u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 50736u, 73254u, 23187u), vec4<u32>(1u, 12708u, 7842u, 4294967295u), vec4<u32>(5491u, 43493u, 1u, 59746u), vec4<u32>(1u, 1u, 26768u, 21017u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(4087u, 1u, 81778u, 4294967295u), vec4<u32>(4294967295u, 1u, 32234u, 4294967295u));

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(450f, -121f, -851f, 206f), vec4<f32>(-1779f, -796f, 1068f, -632f), vec4<f32>(604f, -455f, -115f, 128f), vec4<f32>(1391f, 1179f, -980f, 475f), vec4<f32>(265f, 153f, 247f, -136f), vec4<f32>(463f, -752f, 182f, -1643f), vec4<f32>(343f, -868f, -1102f, -1221f), vec4<f32>(-557f, -1068f, 1248f, -577f), vec4<f32>(-276f, 653f, -908f, -1000f), vec4<f32>(-1492f, -698f, -1680f, -561f), vec4<f32>(-604f, -149f, -1870f, 1043f), vec4<f32>(354f, -1000f, -988f, -416f), vec4<f32>(1147f, 277f, -1030f, 1207f), vec4<f32>(-812f, 607f, 1430f, -141f));

var<private> global2: array<u32, 23> = array<u32, 23>(0u, 1u, 4294967295u, 0u, 1u, 1u, 1985u, 0u, 42678u, 4221u, 4359u, 4294967295u, 1u, 65330u, 4294967295u, 8456u, 77292u, 45879u, 4294967295u, 4294967295u, 0u, 0u, 55798u);

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> bool {
    return all(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = select(vec3<bool>(func_3(arg_0.a), true, arg_0.e), vec3<bool>(any(!(!vec4<bool>(true, true, arg_0.e, true))), arg_0.e, arg_0.e), !vec3<bool>(all(select(vec2<bool>(arg_0.e, false), vec2<bool>(false, false), arg_0.e)), true, true & arg_0.e));
    let var_1 = 2010u;
    let var_2 = arg_0;
    var var_3 = u_input.b << (vec2<u32>(~u_input.b.x, 1u >> (abs(1u) % 32u)) % vec2<u32>(32u));
    var var_4 = var_2.d;
    return Struct_1(var_2.c.wzw >> (~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(18503u, global2[_wgslsmith_index_u32(1u, 23u)], 4294967295u), vec3<u32>(var_3.x, var_3.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.a.x, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b.x, -937f, global3.b.x), var_2.b.b)) * vec3<f32>(var_2.b.b.x, var_4.b.x, var_4.b.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * 338f), 863f, _wgslsmith_f_op_f32(-var_4.b.x)), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec3<u32> {
    var var_0 = ~(~(~7585u));
    var var_1 = 709f;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(238f, -378f, _wgslsmith_f_op_f32(1198f * -342f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.b.b))) * _wgslsmith_f_op_vec3_f32(var_2.a.b + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(873f, -179f, var_2.a.b.x)))))));
    var var_4 = func_2(Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(func_2(arg_0).a, arg_2.b.a), vec3<f32>(1f, arg_1.d.b.x, _wgslsmith_div_f32(-1663f, arg_0.b.b.x))), Struct_1(_wgslsmith_mult_vec3_i32(firstTrailingBit(var_2.a.a), global3.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1243f, global3.b.x, global3.b.x) * _wgslsmith_f_op_vec3_f32(var_2.a.b + vec3<f32>(1418f, arg_2.b.b.x, var_2.b.b.x)))), select(arg_0.c, select(vec4<i32>(12415i, arg_2.a.a.x, 0i, 1917i), vec4<i32>(2147483647i, -2147483647i, -1i, 2147483647i), !arg_2.e), vec4<bool>(func_3(arg_0.b), 0i >= arg_2.d.a.x, var_2.e, true)), func_2(arg_2), arg_1.e));
    return _wgslsmith_mod_vec3_u32(select(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 1u))), reverseBits(vec3<u32>(52040u, 0u, 4294967295u) & ~vec3<u32>(37307u, global2[_wgslsmith_index_u32(0u, 23u)], 1u)), select(vec3<bool>(false != var_2.e, any(vec2<bool>(arg_0.e, arg_0.e)), var_2.e), select(select(vec3<bool>(false, false, arg_2.e), vec3<bool>(true, false, true), vec3<bool>(var_2.e, arg_2.e, true)), !vec3<bool>(arg_3, false, arg_1.e), true), select(select(vec3<bool>(arg_3, arg_1.e, var_2.e), vec3<bool>(true, arg_1.e, false), vec3<bool>(arg_1.e, arg_0.e, arg_2.e)), select(vec3<bool>(arg_0.e, arg_3, true), vec3<bool>(false, var_2.e, arg_3), arg_3), !vec3<bool>(false, arg_1.e, false)))), firstLeadingBit(~(select(vec3<u32>(123526u, 55260u, global2[_wgslsmith_index_u32(62322u, 23u)]), vec3<u32>(16842u, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 6770u), true) | (vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 30879u, u_input.a.x) >> (vec3<u32>(28285u, 1u, global2[_wgslsmith_index_u32(40214u, 23u)]) % vec3<u32>(32u))))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<u32>(0u, 59156u, 32799u)) << (vec3<u32>(115703u, 7933u, 27167u) % vec3<u32>(32u))), select(abs(vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(0u, 23u)]) << (vec3<u32>(6570u, 58606u, 88581u) % vec3<u32>(32u))), ~abs(vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 0u)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), ~func_4(Struct_2(func_2(Struct_2(Struct_1(vec3<i32>(global3.a.x, global3.a.x, -1i), arg_0.wyz), Struct_1(vec3<i32>(-17310i, global3.a.x, global3.a.x), vec3<f32>(global3.b.x, arg_0.x, arg_0.x)), vec4<i32>(global3.a.x, 20461i, global3.a.x, 2147483647i), Struct_1(vec3<i32>(-1i, -45388i, global3.a.x), arg_0.yxy), true)), func_2(Struct_2(Struct_1(vec3<i32>(global3.a.x, global3.a.x, global3.a.x), global3.b), Struct_1(vec3<i32>(2147483647i, 0i, -1i), vec3<f32>(-2770f, 807f, arg_0.x)), vec4<i32>(global3.a.x, global3.a.x, -22704i, -1i), Struct_1(vec3<i32>(global3.a.x, global3.a.x, global3.a.x), global3.b), false)), countOneBits(vec4<i32>(global3.a.x, global3.a.x, global3.a.x, 73130i)), func_2(Struct_2(Struct_1(vec3<i32>(global3.a.x, global3.a.x, global3.a.x), arg_0.wxz), Struct_1(vec3<i32>(global3.a.x, 26034i, -36997i), vec3<f32>(global3.b.x, -1000f, 1009f)), vec4<i32>(global3.a.x, global3.a.x, global3.a.x, 2147483647i), Struct_1(global3.a, arg_0.zyy), true)), true), Struct_2(Struct_1(vec3<i32>(-33845i, global3.a.x, global3.a.x), arg_0.xyw), func_2(Struct_2(Struct_1(vec3<i32>(-2147483647i, 2147483647i, -64786i), vec3<f32>(-1206f, -719f, 999f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, global3.a.x), vec3<f32>(global3.b.x, arg_0.x, -1000f)), vec4<i32>(global3.a.x, global3.a.x, global3.a.x, 13726i), Struct_1(vec3<i32>(global3.a.x, global3.a.x, global3.a.x), vec3<f32>(-570f, 791f, -1257f)), true)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global3.a.x, 68322i, global3.a.x), vec4<i32>(1i, -17584i, global3.a.x, 18995i)), Struct_1(global3.a, vec3<f32>(-1273f, global3.b.x, arg_0.x)), false), Struct_2(func_2(Struct_2(Struct_1(vec3<i32>(1i, global3.a.x, global3.a.x), global3.b), Struct_1(global3.a, vec3<f32>(global3.b.x, global3.b.x, 963f)), vec4<i32>(global3.a.x, global3.a.x, 2147483647i, global3.a.x), Struct_1(global3.a, vec3<f32>(-120f, -2297f, global3.b.x)), true)), Struct_1(vec3<i32>(0i, -75229i, global3.a.x), arg_0.wyx), vec4<i32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), func_2(Struct_2(Struct_1(vec3<i32>(28714i, -44532i, 1i), global3.b), Struct_1(global3.a, global3.b), vec4<i32>(-2147483647i, global3.a.x, 10693i, -34043i), Struct_1(global3.a, vec3<f32>(-144f, -1281f, 1875f)), false)), 17812u <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53928u, 23u)], 23u)]), false));
    let var_1 = abs(vec3<u32>(var_0.x, u_input.b.x, 4294967295u));
    let var_2 = 1u;
    var var_3 = select(vec4<bool>(((519u <= u_input.b.x) & (arg_0.x >= global3.b.x)) != any(vec2<bool>(false, true)), false, false, global2[_wgslsmith_index_u32(~countOneBits(var_0.x), 23u)] <= 101387u), !select(vec4<bool>(false, any(vec4<bool>(true, true, false, true)), true, any(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false);
    global2 = array<u32, 23>();
    return Struct_1(firstLeadingBit(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global3.a.x, global3.a.x), global3.a, vec3<i32>(global3.a.x, 40091i, -1i)) | (global3.a | global3.a))), vec3<f32>(_wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(trunc(global3.b.x))))), -613f, -772f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global2 = array<u32, 23>();
    global2 = array<u32, 23>();
    var var_1 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.b.x, -1385f, -1176f, global3.b.x)))))), Struct_1(global3.a, vec3<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.b.x), -1602f)), ~vec4<i32>(global3.a.x, _wgslsmith_mod_i32(global3.a.x | global3.a.x, global3.a.x), 0i, _wgslsmith_mult_i32(~global3.a.x, -global3.a.x)), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<i32>(-34787i, global3.a.x, -29804i), vec3<f32>(global3.b.x, global3.b.x, 935f)), Struct_1(global3.a, vec3<f32>(global3.b.x, global3.b.x, -1791f)), vec4<i32>(global3.a.x, 29313i, 505i, global3.a.x), Struct_1(vec3<i32>(-1i, 1i, -30383i), vec3<f32>(431f, -984f, global3.b.x)), true)), func_1(vec4<f32>(global3.b.x, -936f, -178f, -179f)), firstTrailingBit(vec4<i32>(global3.a.x, global3.a.x, -14590i, global3.a.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(global3.a.x, global3.a.x, global3.a.x, 2147483647i), vec4<i32>(-2212i, global3.a.x, -2147483647i, global3.a.x)), func_2(Struct_2(Struct_1(vec3<i32>(-2147483647i, global3.a.x, 6139i), vec3<f32>(global3.b.x, 412f, -536f)), Struct_1(vec3<i32>(global3.a.x, -2147483647i, 36021i), vec3<f32>(-1000f, global3.b.x, 2200f)), vec4<i32>(1i, global3.a.x, -1i, -2147483647i), Struct_1(vec3<i32>(global3.a.x, global3.a.x, -10821i), global3.b), false)), (1u ^ var_0) > 21194u)), !select(!(global3.a.x == global3.a.x), false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)))));
    var var_2 = _wgslsmith_add_vec3_i32(abs(global3.a), _wgslsmith_mod_vec3_i32(~min(_wgslsmith_div_vec3_i32(var_1.d.a, global3.a), global3.a), countOneBits(~global3.a)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.b.x + _wgslsmith_f_op_f32(sign(-431f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, global3.b.x))), global3.b.x)));
    global3 = var_1.b;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))) + global3.b.x));
    var var_5 = ~30659i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-329f, _wgslsmith_f_op_f32(step(var_3, 1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1069f, var_4)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.yz + _wgslsmith_f_op_vec2_f32(select(global3.b.zy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.b.x, var_4), vec2<f32>(-406f, global3.b.x), var_1.e)), !var_1.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(Struct_2(var_1.b, Struct_1(vec3<i32>(var_1.b.a.x, 52619i, 0i), global3.b), var_1.c, Struct_1(vec3<i32>(global3.a.x, var_1.c.x, 0i), vec3<f32>(197f, var_4, -497f)), var_1.e)).b.yy) * global3.b.zx), ~_wgslsmith_mod_vec4_u32(~global0[_wgslsmith_index_u32(46847u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), i32(-1i) * -1i);
}

