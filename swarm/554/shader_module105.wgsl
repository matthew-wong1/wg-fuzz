struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 14>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, false, vec4<f32>(-2077f, -250f, 965f, 1414f), vec4<bool>(false, true, true, true)), Struct_1(true, true, vec4<f32>(-369f, -112f, 1698f, -891f), vec4<bool>(false, false, false, false)), Struct_1(false, false, vec4<f32>(1758f, 101f, -744f, 332f), vec4<bool>(false, true, false, false)), Struct_1(true, false, vec4<f32>(410f, 640f, 699f, 766f), vec4<bool>(false, true, true, true)), Struct_1(true, true, vec4<f32>(773f, -272f, 825f, -2679f), vec4<bool>(false, true, false, false)));

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, true, vec4<f32>(1000f, -606f, 646f, 564f), vec4<bool>(true, true, true, false)), Struct_1(false, false, vec4<f32>(1000f, -1483f, 349f, -1358f), vec4<bool>(false, false, false, false)), Struct_1(true, true, vec4<f32>(-1680f, 1000f, -1118f, 2115f), vec4<bool>(false, false, true, false)), Struct_1(false, true, vec4<f32>(-133f, 417f, 943f, -1165f), vec4<bool>(true, true, true, true)), Struct_1(false, true, vec4<f32>(-854f, 572f, 593f, -278f), vec4<bool>(true, false, true, true)), Struct_1(true, true, vec4<f32>(232f, 976f, 1780f, -1888f), vec4<bool>(false, true, false, false)), Struct_1(true, true, vec4<f32>(-733f, 1000f, 729f, -102f), vec4<bool>(false, false, true, true)), Struct_1(false, false, vec4<f32>(2382f, 904f, -896f, 390f), vec4<bool>(false, false, false, false)));

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, false, vec4<f32>(181f, -1286f, -1556f, -288f), vec4<bool>(false, true, true, true)), Struct_1(true, true, vec4<f32>(-1209f, 506f, 1961f, -634f), vec4<bool>(true, true, true, true)), Struct_1(true, true, vec4<f32>(205f, -1126f, 148f, 2554f), vec4<bool>(true, true, true, false)), Struct_1(false, false, vec4<f32>(737f, -331f, -114f, 525f), vec4<bool>(false, true, false, false)), Struct_1(false, false, vec4<f32>(-333f, -1000f, -1000f, 1135f), vec4<bool>(false, true, false, false)), Struct_1(true, false, vec4<f32>(1000f, 1200f, 136f, -1250f), vec4<bool>(false, true, true, false)), Struct_1(false, true, vec4<f32>(1763f, 132f, -737f, -1130f), vec4<bool>(true, false, true, true)), Struct_1(false, true, vec4<f32>(-873f, 769f, 1596f, -615f), vec4<bool>(true, false, true, true)), Struct_1(false, true, vec4<f32>(-1930f, 216f, -797f, -665f), vec4<bool>(true, false, false, false)), Struct_1(false, true, vec4<f32>(1137f, 455f, -297f, 791f), vec4<bool>(false, false, true, false)), Struct_1(true, false, vec4<f32>(415f, 1363f, 424f, -249f), vec4<bool>(true, false, false, true)), Struct_1(false, false, vec4<f32>(1000f, -114f, -1049f, -431f), vec4<bool>(false, false, true, false)), Struct_1(true, true, vec4<f32>(-683f, 363f, -906f, 1632f), vec4<bool>(false, true, false, true)), Struct_1(true, true, vec4<f32>(499f, 1954f, -2020f, 535f), vec4<bool>(true, false, false, false)), Struct_1(false, false, vec4<f32>(615f, -1326f, -417f, -384f), vec4<bool>(true, false, false, true)), Struct_1(false, true, vec4<f32>(-1000f, 626f, -971f, 1203f), vec4<bool>(true, true, true, true)), Struct_1(true, false, vec4<f32>(2809f, -164f, 1601f, 1000f), vec4<bool>(true, true, false, false)), Struct_1(false, true, vec4<f32>(1517f, 1645f, 391f, -263f), vec4<bool>(true, false, true, true)), Struct_1(false, false, vec4<f32>(-1694f, 164f, -1388f, -567f), vec4<bool>(true, true, true, false)), Struct_1(false, true, vec4<f32>(-1000f, 1756f, -653f, 512f), vec4<bool>(true, false, false, true)), Struct_1(true, false, vec4<f32>(-187f, -1000f, -346f, 531f), vec4<bool>(false, true, true, false)), Struct_1(true, true, vec4<f32>(-1277f, 1000f, 932f, -411f), vec4<bool>(true, true, true, false)), Struct_1(false, false, vec4<f32>(-1000f, -798f, -240f, 482f), vec4<bool>(true, true, false, true)), Struct_1(true, false, vec4<f32>(-172f, -1337f, 1000f, -107f), vec4<bool>(true, true, true, true)), Struct_1(true, true, vec4<f32>(-693f, 542f, -503f, 1557f), vec4<bool>(false, false, false, true)), Struct_1(true, false, vec4<f32>(677f, -315f, 1402f, 991f), vec4<bool>(true, true, true, true)), Struct_1(false, false, vec4<f32>(858f, -708f, -1000f, 492f), vec4<bool>(false, false, true, true)), Struct_1(false, true, vec4<f32>(-1033f, -1000f, 524f, 216f), vec4<bool>(false, false, false, false)), Struct_1(true, true, vec4<f32>(-1066f, -1649f, -466f, -1346f), vec4<bool>(false, true, true, true)), Struct_1(false, false, vec4<f32>(633f, -1000f, -954f, 1508f), vec4<bool>(true, false, true, false)), Struct_1(true, true, vec4<f32>(-593f, 1061f, 687f, 1037f), vec4<bool>(true, false, true, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = any(arg_0.d);
    var var_1 = Struct_1(all(select(vec2<bool>(false, false), select(select(vec2<bool>(arg_1.a, arg_1.d.x), vec2<bool>(arg_1.d.x, false), vec2<bool>(arg_0.b, arg_0.b)), arg_1.d.zz, vec2<bool>(true, true)), true)), select(arg_0.b, !(arg_3 <= 641f), any(!arg_1.d.wy)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(652f)))), _wgslsmith_f_op_f32(step(1718f, -229f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1010f))), 575f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_1.c.x, 209f, arg_0.c.x))))), vec4<bool>(arg_0.d.x, any(!select(vec3<bool>(arg_1.b, true, arg_0.b), vec3<bool>(true, arg_1.a, false), arg_0.d.x)), arg_0.d.x, true));
    let var_2 = vec3<bool>(28173u >= reverseBits(min(~78933u, arg_2.x | u_input.b)), select(any(vec2<bool>(true, var_1.b)), any(arg_1.d.yw), arg_0.a), true);
    let var_3 = max(u_input.a, 36479u);
    global0 = true;
    return ~_wgslsmith_mult_u32(29725u | ~var_3, min(~54349u, min(arg_2.x, ~21100u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !arg_1.xw;
    var var_1 = !arg_3.d.zy;
    var var_2 = abs(vec4<i32>((i32(-1i) * -arg_0.x) >> (((u_input.c.x ^ 1u) | func_3(Struct_1(var_1.x, arg_3.d.x, arg_3.c, vec4<bool>(var_1.x, arg_3.a, arg_3.b, arg_1.x)), arg_3, vec3<u32>(u_input.a, 0u, u_input.b), global1[_wgslsmith_index_u32(6552u, 14u)])) % 32u), arg_0.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0.x, 20198i, arg_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -13257i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, 4940i, 1i)), select(arg_1.zyz, vec3<bool>(true, false, var_1.x), arg_3.a)), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, 46964i), vec3<i32>(2147483647i, arg_0.x, arg_0.x)))), 1893i & _wgslsmith_sub_i32(1i, countOneBits(arg_0.x))));
    var var_3 = 0i;
    let var_4 = Struct_1(true, !arg_1.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, arg_2, _wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_div_f32(arg_3.c.x, -624f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_2 + -496f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.c - arg_3.c) + _wgslsmith_f_op_vec4_f32(abs(arg_3.c)))))), !(!(!arg_3.d)));
    return var_4;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global4 = array<Struct_1, 31>();
    global1 = array<f32, 14>();
    var var_0 = arg_0.d.x;
    let var_1 = _wgslsmith_dot_vec2_u32(abs(u_input.c), u_input.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.c.x, 1720f))))));
    return 39485i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = 1i ^ reverseBits(-func_4(func_2(vec2<i32>(38651i, 1i), vec4<bool>(arg_1.b, false, arg_0.d.x, true), arg_1.c.x, Struct_1(true, true, arg_0.c, vec4<bool>(false, true, false, arg_1.d.x))), vec2<f32>(arg_0.c.x, -649f)));
    let var_1 = arg_0.d.zwy;
    global2 = array<Struct_1, 5>();
    let var_2 = arg_1.d;
    global2 = array<Struct_1, 5>();
    return firstLeadingBit(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    var var_0 = func_1(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.c.x, u_input.a, 3154u)), vec3<u32>(u_input.a, u_input.a, 1u)))), 31u)], global3[_wgslsmith_index_u32(u_input.a & 4294967295u, 8u)], u_input.c.x, 25122u);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, i32(-1i) * -41729i, abs(31997i)), -_wgslsmith_mod_i32(16045i, 2147483647i), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(0i, 24993i)), max(41573i, 2147483647i)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(-4221i, 37320i, 2147483647i, -1i))) >> (~(~abs(66500u) << (select(~1u, ~u_input.b, true) % 32u)) % 32u);
    var var_2 = func_2(select(select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-3210i, 64090i), vec2<i32>(-11055i, 1i)), -vec2<i32>(var_1, -35840i)), vec2<i32>(var_1 & 0i, reverseBits(0i)), false), -(~(~vec2<i32>(var_1, var_1))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 14u)] - -788f) > global1[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b, 14u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.c.x, 14u)] * 517f), any(vec3<bool>(false, true, false)))), 1000f)), func_2(~(-vec2<i32>(-2147483647i, var_1) << (u_input.c % vec2<u32>(32u))), vec4<bool>(false, true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), !select(false, false, true)), -243f, Struct_1(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), global1[_wgslsmith_index_u32(u_input.b, 14u)] > _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(37970u, 14u)] - 673f), vec4<f32>(-604f, 929f, 734f, 269f), vec4<bool>(false, any(vec2<bool>(true, true)), select(false, true, false), true))));
    var var_3 = ~select(~((u_input.c | u_input.c) & firstLeadingBit(vec2<u32>(u_input.b, 0u))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(40776u, u_input.c.x), vec2<u32>(u_input.c.x, 4294967295u)) & vec2<u32>(1u, u_input.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(969f, abs(abs(~vec3<u32>(var_3.x, 39595u, 0u)) ^ (vec3<u32>(0u, u_input.c.x, u_input.a) & vec3<u32>(var_3.x, 29567u, 4294967295u))), vec4<u32>(1u, var_3.x & ~1u, ~min(u_input.a, var_3.x) | _wgslsmith_mod_u32(~u_input.b, ~0u), func_3(global4[_wgslsmith_index_u32(0u, 31u)], Struct_1(var_2.b, var_2.d.x, _wgslsmith_f_op_vec4_f32(select(var_2.c, vec4<f32>(global1[_wgslsmith_index_u32(var_3.x, 14u)], var_2.c.x, -948f, 221f), var_2.d)), var_2.d), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(5601u, 27222u)), 1u, ~41785u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.c.x, var_2.c.x)), 1f))), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, 0u, var_3.x, u_input.c.x) >> (vec4<u32>(var_3.x, var_3.x, u_input.c.x, 40589u) % vec4<u32>(32u)))), abs(abs(vec4<u32>(28602u, u_input.a, 63450u, 13784u) | vec4<u32>(1u, 1u, 4294967295u, 2733u)))));
}

