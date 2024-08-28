struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, 1967i, 30385i);

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(1442f, 2183f, false, false, Struct_1(vec2<i32>(-9801i, 2147483647i), vec3<f32>(837f, -1547f, 244f))), Struct_3(447f, -901f, true, true, Struct_1(vec2<i32>(2147483647i, -11691i), vec3<f32>(510f, -2658f, -1000f))), Struct_3(1536f, -842f, true, true, Struct_1(vec2<i32>(0i, -19215i), vec3<f32>(694f, -625f, -845f))), Struct_3(-1705f, 226f, true, true, Struct_1(vec2<i32>(39532i, -1i), vec3<f32>(-530f, 946f, 1412f))), Struct_3(-807f, 242f, false, true, Struct_1(vec2<i32>(13431i, 0i), vec3<f32>(-945f, -1000f, -864f))), Struct_3(-335f, 1567f, false, false, Struct_1(vec2<i32>(-80645i, 37850i), vec3<f32>(-1501f, -1847f, -1300f))), Struct_3(203f, -350f, true, true, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(-715f, 573f, -1000f))), Struct_3(1000f, 2555f, false, true, Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(-2326f, 458f, -1000f))), Struct_3(440f, -481f, false, true, Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(-934f, 1304f, -2078f))), Struct_3(1388f, -1067f, true, true, Struct_1(vec2<i32>(2147483647i, -6944i), vec3<f32>(445f, -481f, 974f))), Struct_3(280f, 2432f, true, false, Struct_1(vec2<i32>(i32(-2147483648), -5571i), vec3<f32>(654f, -652f, 719f))), Struct_3(-106f, 1000f, false, false, Struct_1(vec2<i32>(-1626i, 16794i), vec3<f32>(-1598f, -511f, 811f))), Struct_3(1713f, 153f, true, true, Struct_1(vec2<i32>(i32(-2147483648), -34943i), vec3<f32>(898f, -635f, -854f))), Struct_3(1594f, -1632f, true, false, Struct_1(vec2<i32>(1i, 2147483647i), vec3<f32>(-396f, -1000f, 666f))), Struct_3(-1269f, -2622f, false, true, Struct_1(vec2<i32>(1i, 0i), vec3<f32>(563f, -237f, -778f))), Struct_3(-414f, -459f, true, false, Struct_1(vec2<i32>(-1i, 16159i), vec3<f32>(1000f, 817f, 1672f))), Struct_3(-1000f, -1546f, false, true, Struct_1(vec2<i32>(-45880i, -32268i), vec3<f32>(168f, -1633f, 624f))), Struct_3(-110f, 765f, false, false, Struct_1(vec2<i32>(0i, 18548i), vec3<f32>(-1481f, -699f, -759f))), Struct_3(817f, -170f, false, false, Struct_1(vec2<i32>(i32(-2147483648), -50162i), vec3<f32>(157f, 1000f, 1623f))), Struct_3(2528f, 170f, false, false, Struct_1(vec2<i32>(29269i, 31613i), vec3<f32>(471f, -1267f, -1872f))), Struct_3(411f, 471f, false, true, Struct_1(vec2<i32>(1i, 22226i), vec3<f32>(-1295f, -148f, 1861f))), Struct_3(-115f, 483f, true, true, Struct_1(vec2<i32>(-15334i, -2360i), vec3<f32>(-1247f, -492f, -1296f))), Struct_3(874f, -1569f, true, true, Struct_1(vec2<i32>(63027i, 27364i), vec3<f32>(-447f, -1118f, -318f))), Struct_3(1000f, 384f, true, true, Struct_1(vec2<i32>(-8278i, -28495i), vec3<f32>(742f, 1555f, -305f))), Struct_3(-617f, 1804f, false, false, Struct_1(vec2<i32>(2147483647i, 0i), vec3<f32>(-100f, -1000f, 210f))), Struct_3(-1130f, -1406f, true, false, Struct_1(vec2<i32>(9085i, 84597i), vec3<f32>(-1000f, -637f, -443f))), Struct_3(108f, -1362f, true, true, Struct_1(vec2<i32>(-15277i, -40693i), vec3<f32>(-548f, 1130f, -1116f))), Struct_3(1562f, -1954f, false, false, Struct_1(vec2<i32>(-1i, 0i), vec3<f32>(549f, -501f, -1346f))));

var<private> global2: array<u32, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(13187i | global0.x, _wgslsmith_mod_i32(-1i, -12600i), arg_0.e.a.x, ~(-28826i)), vec4<i32>(global0.x, u_input.a.x, -2147483647i, -1i) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global0.x, -1i), vec4<i32>(-6747i, u_input.b, u_input.b, 14486i))), vec4<i32>(-15681i, _wgslsmith_dot_vec4_i32(vec4<i32>(-379i, -57577i, u_input.a.x, arg_0.e.a.x) | vec4<i32>(16566i, arg_0.e.a.x, 1i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-18596i, global0.x, global0.x, 4964i), vec4<i32>(global0.x, -17107i, u_input.b, 2147483647i), vec4<i32>(arg_0.e.a.x, global0.x, arg_0.e.a.x, -1i))), global0.x, 1i)), vec4<i32>(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.x), global0.zw))), 1i, reverseBits(_wgslsmith_div_i32(arg_0.e.a.x, global0.x) | _wgslsmith_dot_vec3_i32(global0.wyw, vec3<i32>(7194i, 0i, -14886i))), min(global0.x, -19774i)));
    var var_0 = !arg_0.d;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(821f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1091f)))), arg_0.e.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.b) + 229f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 943f, -1093f, arg_0.e.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.a, arg_0.a, 774f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.b, arg_0.a, 1042f) + vec4<f32>(arg_0.a, arg_0.a, 658f, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * arg_0.b)), -643f) * vec2<f32>(arg_0.e.b.x, _wgslsmith_f_op_f32(select(-397f, _wgslsmith_f_op_f32(floor(724f)), arg_0.c)))), Struct_1(vec2<i32>(~(-1i) >> (~4294967295u % 32u), _wgslsmith_add_i32(abs(-19421i), arg_0.e.a.x << (0u % 32u))), arg_0.e.b), vec4<i32>(_wgslsmith_dot_vec2_i32(max(global0.wy, ~arg_0.e.a), u_input.a), -45602i, -1905i, ~_wgslsmith_div_i32(~12465i, -arg_0.e.a.x)), vec2<u32>(firstLeadingBit(1u), ~(38131u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34672u ^ global2[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)] % 32u))));
    let var_2 = Struct_3(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1675f)) + _wgslsmith_f_op_f32(-var_1.b.x)), any(vec3<bool>(arg_0.d, true, !(arg_0.d & arg_0.d))), arg_0.c, arg_0.e);
    let var_3 = var_2.c;
    return -2147483647i << (global2[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.e.x, global2[_wgslsmith_index_u32(45741u, 14u)]), 14u)]), 14u)] % 32u);
}

fn func_2() -> u32 {
    var var_0 = -firstLeadingBit(~(-func_3(Struct_3(2185f, -1000f, true, true, Struct_1(global0.zz, vec3<f32>(-840f, -324f, -811f))))));
    var_0 = global0.x;
    var var_1 = global1[_wgslsmith_index_u32(abs(0u), 28u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, var_1.e.b.x)), _wgslsmith_f_op_f32(ceil(var_1.b)), var_1.a, var_1.a) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, 156f, var_1.a, var_1.e.b.x))), vec4<f32>(-741f, var_1.a, 367f, var_1.e.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(880f, _wgslsmith_f_op_f32(-var_1.a), -1842f, _wgslsmith_f_op_f32(840f + -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1830f, var_1.b, -1156f, var_1.e.b.x)))))), vec2<f32>(352f, var_1.b), Struct_1(max(select(u_input.a, global0.yx, select(vec2<bool>(false, false), vec2<bool>(true, var_1.c), vec2<bool>(false, var_1.d))), -vec2<i32>(-2147483647i, -94525i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.e.b, vec3<f32>(var_1.b, var_1.e.b.x, 743f)) + _wgslsmith_f_op_vec3_f32(var_1.e.b - vec3<f32>(-604f, 1665f, var_1.e.b.x))))), countOneBits(vec4<i32>(-2147483647i, 1i, min(var_1.e.a.x, firstTrailingBit(global0.x)), 0i)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(25717u, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(38887u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)]) << (vec2<u32>(71366u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(879u, 14u)], 14u)]) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(88684u, 14u)], 0u)) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, 632f, -1177f));
    return var_2.e.x;
}

fn func_1() -> f32 {
    var var_0 = ~firstTrailingBit(vec3<u32>(4294967295u, ~1u, global2[_wgslsmith_index_u32(func_2(), 14u)]));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_i32(35388i, global0.x);
    let var_3 = vec4<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, true, 31090u >= _wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_0.x, 1u), var_0.xz, true), ~(~vec2<u32>(4294967295u, 45290u))));
    global2 = array<u32, 14>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-371f - 113f))), _wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(min(325f, 1708f))), all(var_3))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1578f, 1000f)) + _wgslsmith_div_f32(-1000f, 1036f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-409f, -1000f))))));
    var var_1 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)))), vec2<bool>(false, all(vec3<bool>(true, true, true))), all(vec2<bool>(true, true)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(var_0.x - -2929f), -1373f, any(!(!(!vec2<bool>(true, var_1.x)))), false, Struct_1(-vec2<i32>(42565i, -global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, _wgslsmith_f_op_f32(step(1000f, var_0.x))))));
    var_1 = !select(!select(!vec2<bool>(true, var_2.c), !vec2<bool>(var_1.x, true), true), select(select(vec2<bool>(var_1.x, true), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), false), select(var_1.x, var_1.x, var_1.x)), vec2<bool>(var_2.c, 1u > global2[_wgslsmith_index_u32(42388u, 14u)]), select(vec2<bool>(false, var_1.x), !vec2<bool>(var_2.d, false), vec2<bool>(var_1.x, true))), var_2.d);
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-673f, -355f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(284f, -1565f)) * 828f), 909f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1272f, 1000f)), _wgslsmith_f_op_f32(-var_2.a))), 758f, (var_0.x > 1062f) & select(var_1.x, true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zy) - var_0.xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.b.x, -267f) + _wgslsmith_f_op_vec2_f32(min(var_2.e.b.xx, vec2<f32>(-491f, -1000f)))))), var_2.e, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_2.e.a.x, -60910i, 0i, 0i) & vec4<i32>(20203i, -14629i, u_input.a.x, -1i)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, global0.x, var_2.e.a.x), vec4<i32>(global0.x, 22819i, u_input.b, u_input.b))), -abs(vec4<i32>(-2147483647i, u_input.a.x, 20194i, var_2.e.a.x))), abs(~vec4<i32>(19067i, -1i, u_input.a.x, var_2.e.a.x) >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 46848u, 4294967295u, 795u) % vec4<u32>(32u)))), _wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)], 1u)), ~abs(vec2<u32>(global2[_wgslsmith_index_u32(0u, 14u)], 1u))) ^ vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(85843u & global2[_wgslsmith_index_u32(260u, 14u)], 14u)] << (62939u % 32u), 14u)], 14u)], global2[_wgslsmith_index_u32(firstTrailingBit(~0u), 14u)]));
    let var_4 = Struct_1(~min(vec2<i32>(var_2.e.a.x, 105i), vec2<i32>(-var_3.d.x, -2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.b.x), _wgslsmith_f_op_f32(var_2.b - var_0.x)) - -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.a.x)), 395f)), -1000f));
    let var_5 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.a, var_3.a) * var_3.a), vec2<f32>(424f, _wgslsmith_f_op_f32(round(var_4.b.x))), var_3.c, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_3.c.a.x, countOneBits(1i), -var_4.a.x, ~var_3.c.a.x)), vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), abs(_wgslsmith_mult_i32(-2147483647i, 0i)), ~_wgslsmith_clamp_i32(11597i, 2147483647i, var_3.c.a.x))), var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_5.a)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-709f, var_3.c.b.x, -444f, 705f) * var_3.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-693f)))))), vec2<f32>(_wgslsmith_f_op_f32(322f - _wgslsmith_f_op_f32(round(-1053f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b.x, var_4.b.x))), -abs(-_wgslsmith_sub_i32(var_4.a.x, 59846i)));
}

