struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(835f, 464f, 2593f), vec3<f32>(1802f, 325f, -654f), vec3<f32>(-701f, -1142f, -129f), vec3<f32>(307f, -1834f, -1217f), vec3<f32>(552f, 389f, 1042f), vec3<f32>(1027f, 1260f, 105f), vec3<f32>(171f, 1194f, -731f), vec3<f32>(-551f, 1098f, -857f), vec3<f32>(-1164f, -1000f, 2144f), vec3<f32>(1246f, 1344f, 957f), vec3<f32>(1000f, 1077f, 3552f), vec3<f32>(-1402f, 1273f, 1417f), vec3<f32>(-1000f, -351f, 352f), vec3<f32>(2016f, -489f, -1058f), vec3<f32>(155f, -1193f, 1459f), vec3<f32>(1685f, 1037f, -1058f), vec3<f32>(793f, -277f, -734f), vec3<f32>(-745f, -746f, 461f), vec3<f32>(1841f, -1240f, -1500f), vec3<f32>(-1000f, 2046f, 1000f), vec3<f32>(-101f, 564f, 422f), vec3<f32>(-1303f, -1756f, 1394f), vec3<f32>(-1488f, 2012f, 555f), vec3<f32>(-920f, 824f, 192f), vec3<f32>(-357f, -273f, -330f), vec3<f32>(-924f, 134f, -868f), vec3<f32>(136f, -845f, -853f), vec3<f32>(407f, -818f, 926f));

var<private> global1: Struct_1 = Struct_1(-1i, vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1880f))))) <= -1572f;
    var_0 = all(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, true, true), false), select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), false), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), true))));
    var var_1 = ~(~0u);
    global0 = array<vec3<f32>, 28>();
    var_1 = ~0u;
    return true;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = u_input.a.yyw;
    var var_1 = var_0.x;
    global1 = Struct_1(var_0.x, vec3<u32>(1u, 35664u, min(~u_input.c, ~0u) | reverseBits(u_input.b.x)));
    global0 = array<vec3<f32>, 28>();
    let var_2 = u_input.b.zz;
    return select(func_3(_wgslsmith_mod_u32(select(u_input.d, u_input.c, arg_0), abs(global1.b.x))), !arg_0, arg_0) && false;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<f32>, 28>();
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_3.x, 28u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] + vec3<f32>(arg_2, arg_2, arg_2)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, -584f, arg_2), vec3<f32>(-1743f, arg_2, arg_2), false)))))), Struct_2(abs(u_input.a), ~global1.b.x, any(select(select(vec2<bool>(true, arg_1), vec2<bool>(true, false), arg_1), vec2<bool>(true, true), vec2<bool>(arg_1, arg_1))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 11266i, 0i, -20520i), abs(vec4<i32>(-25644i, 1i, u_input.a.x, global1.a))), ~u_input.b.yz), Struct_2(vec4<i32>(~(-u_input.e.x), -2147483647i & arg_0.a, _wgslsmith_mult_i32(47876i, 3321i), _wgslsmith_mod_i32(1i, u_input.a.x)), _wgslsmith_div_u32(~global1.b.x, 18290u), true, ~(u_input.a & (u_input.a >> (vec4<u32>(arg_0.b.x, 4294967295u, arg_3.x, u_input.c) % vec4<u32>(32u)))), select(~u_input.b.yy >> (max(vec2<u32>(u_input.d, global1.b.x), u_input.b.zx) % vec2<u32>(32u)), vec2<u32>(arg_0.b.x, ~73974u), arg_1)));
    global1 = Struct_1(select(i32(-1i) * -58471i, _wgslsmith_mod_i32(1i, min(1i, -1i)), true) & -reverseBits(var_0.c.d.x), ~vec3<u32>(u_input.d, arg_0.b.x, countOneBits(firstTrailingBit(25501u))));
    var var_1 = _wgslsmith_f_op_f32(arg_2 + var_0.a.x);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, -(~var_0.b.d)), vec4<i32>(abs(abs(_wgslsmith_add_i32(68855i, u_input.a.x))), -1i, firstLeadingBit(2147483647i), -19532i));
    return Struct_1(7117i, min(~vec3<u32>(u_input.d | var_0.c.b, 0u, ~30111u), arg_3.xxz));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    global1 = Struct_1(-countOneBits(global1.a), _wgslsmith_add_vec3_u32(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, u_input.c, global1.b.x), global1.b)), u_input.b));
    global0 = array<vec3<f32>, 28>();
    global1 = Struct_1(min(_wgslsmith_mult_i32(global1.a, -1i), -21379i), u_input.b);
    global1 = func_4(Struct_1(u_input.e.x, ~(_wgslsmith_div_vec3_u32(global1.b, vec3<u32>(17278u, 4294967295u, global1.b.x)) >> (~vec3<u32>(4294967295u, arg_1, global1.b.x) % vec3<u32>(32u)))), !(false | arg_0) != !(!func_2(false, 69486i, -185f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_sub_vec4_u32(max(abs(vec4<u32>(1u, 4294967295u, global1.b.x, u_input.b.x)), abs(vec4<u32>(arg_1, 4294967295u, global1.b.x, global1.b.x))) & ~vec4<u32>(2437u, 1u, 10509u, global1.b.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4u, 21353u, global1.b.x, 66349u), ~vec4<u32>(global1.b.x, 1u, 4294967295u, arg_1))));
    var var_0 = Struct_2(u_input.a, min(_wgslsmith_mult_u32((10778u ^ arg_1) << (countOneBits(u_input.b.x) % 32u), ~(~1u)), 76316u), arg_0, u_input.a, (_wgslsmith_add_vec2_u32(global1.b.xx, vec2<u32>(arg_1, 0u)) << (u_input.b.zy % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32((vec2<u32>(4294967295u, arg_1) ^ u_input.b.xz) & ~vec2<u32>(0u, arg_1), select(vec2<u32>(global1.b.x, arg_1), vec2<u32>(37024u, arg_1), arg_0) << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u))));
    return Struct_1(~global1.a, select(vec3<u32>(~global1.b.x, ~52788u ^ reverseBits(u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, global1.b.x), ~arg_1, _wgslsmith_mod_u32(arg_1, 50995u))), countOneBits(vec3<u32>(u_input.b.x, 97920u, 0u)), u_input.d != 72151u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1462f, 353f)), _wgslsmith_div_f32(1681f, -947f), true)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f - 722f) * -255f)), _wgslsmith_sub_u32(~max(_wgslsmith_add_u32(u_input.b.x, global1.b.x), 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, 21802u, 1u), firstTrailingBit(vec4<u32>(global1.b.x, global1.b.x, 1068u, 20981u))) << (~(~64991u) % 32u)));
    global1 = Struct_1(_wgslsmith_mult_i32(u_input.e.x, 0i), firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-1776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(abs(219f))))), u_input.c);
}

