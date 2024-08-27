struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<f32>(949f, 1088f), vec4<bool>(false, true, true, true), 1i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<f32>(-516f, -157f), vec4<bool>(false, false, true, true), i32(-2147483648), vec2<i32>(-1i, -27555i)), Struct_1(vec2<f32>(-319f, 807f), vec4<bool>(true, true, true, false), i32(-2147483648), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<f32>(-1097f, 871f), vec4<bool>(true, true, false, true), -17546i, vec2<i32>(1i, 0i)), Struct_1(vec2<f32>(-445f, -1565f), vec4<bool>(false, false, true, true), i32(-2147483648), vec2<i32>(13937i, -1i)), Struct_1(vec2<f32>(1000f, -609f), vec4<bool>(false, true, false, true), -4458i, vec2<i32>(42039i, 54406i)), Struct_1(vec2<f32>(115f, -104f), vec4<bool>(true, true, false, false), 2147483647i, vec2<i32>(-42845i, 0i)), Struct_1(vec2<f32>(1541f, 657f), vec4<bool>(false, false, false, true), 29013i, vec2<i32>(77700i, 1i)), Struct_1(vec2<f32>(-358f, 1727f), vec4<bool>(false, false, false, false), 11268i, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<f32>(1268f, -141f), vec4<bool>(false, true, true, false), -1i, vec2<i32>(-37749i, 12478i)), Struct_1(vec2<f32>(-217f, -1303f), vec4<bool>(false, false, false, true), -1i, vec2<i32>(48538i, i32(-2147483648))), Struct_1(vec2<f32>(1033f, 319f), vec4<bool>(false, false, false, true), -41548i, vec2<i32>(18265i, -26781i)), Struct_1(vec2<f32>(1727f, 148f), vec4<bool>(false, false, true, false), 24022i, vec2<i32>(5680i, 33072i)), Struct_1(vec2<f32>(-894f, 382f), vec4<bool>(false, false, true, true), -59074i, vec2<i32>(79793i, -30991i)), Struct_1(vec2<f32>(1770f, 1854f), vec4<bool>(false, false, false, false), 2147483647i, vec2<i32>(8538i, i32(-2147483648))), Struct_1(vec2<f32>(-277f, -558f), vec4<bool>(false, true, false, true), 0i, vec2<i32>(2147483647i, 1i)), Struct_1(vec2<f32>(460f, 644f), vec4<bool>(true, false, false, true), -56756i, vec2<i32>(22408i, -21838i)), Struct_1(vec2<f32>(-1000f, -364f), vec4<bool>(false, false, false, true), i32(-2147483648), vec2<i32>(2147483647i, -72982i)), Struct_1(vec2<f32>(-1481f, -1150f), vec4<bool>(true, true, true, true), -1i, vec2<i32>(34466i, 1i)));

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(0i, 1i, -22489i), vec3<i32>(i32(-2147483648), -23622i, 18035i), vec3<i32>(-18056i, 0i, 0i), vec3<i32>(2147483647i, 1i, -30387i), vec3<i32>(i32(-2147483648), -11046i, -18459i), vec3<i32>(-6506i, 0i, 17572i), vec3<i32>(i32(-2147483648), 49278i, 2147483647i), vec3<i32>(62744i, -40678i, -1i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(31019i, 86493i, 0i));

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1000f, -272f, -1000f), vec3<f32>(1000f, -1124f, 777f), vec3<f32>(-454f, -479f, 1136f), vec3<f32>(-3595f, 716f, 407f), vec3<f32>(642f, 710f, 601f), vec3<f32>(-507f, -1424f, -857f), vec3<f32>(1001f, -1460f, 537f), vec3<f32>(-112f, 136f, -676f), vec3<f32>(1000f, 1277f, 1548f), vec3<f32>(-1075f, -403f, -966f), vec3<f32>(-1013f, -1278f, 1000f), vec3<f32>(-1401f, 395f, 414f), vec3<f32>(-1333f, 512f, 927f), vec3<f32>(1502f, 1021f, -584f), vec3<f32>(513f, -956f, -1531f), vec3<f32>(-2123f, -314f, 644f), vec3<f32>(1207f, 319f, 677f), vec3<f32>(-1000f, 388f, 1000f), vec3<f32>(1000f, -1730f, 1095f), vec3<f32>(745f, 1165f, -337f), vec3<f32>(275f, -1114f, -1000f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global1 = array<vec3<i32>, 10>();
    return select(vec4<bool>(!(any(vec4<bool>(false, true, false, true)) | true), all(vec2<bool>(true, false)), false, true), vec4<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !(!any(vec2<bool>(false, false))), true), select(select(vec4<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, true)), true, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), true), vec4<bool>((u_input.a.x << (u_input.b % 32u)) == u_input.a.x, true, select(true, all(vec3<bool>(true, false, true)), true), false), vec4<bool>(select(u_input.a.x, u_input.d, true) >= _wgslsmith_div_i32(u_input.e.x, -30305i), true, !any(vec4<bool>(false, true, false, false)), true)));
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -477f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x))), true)), !select(vec4<bool>(true, true, true, true), !func_3(), func_3().x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, -(~u_input.d)), abs(max(u_input.e, u_input.e))), select(vec2<i32>(-max(-2147483647i, -8207i), -1i), vec2<i32>(-1i, -27847i), vec2<bool>(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)))));
    global0 = array<Struct_1, 19>();
    var var_1 = global0[_wgslsmith_index_u32(~(~u_input.b), 19u)];
    var var_2 = global0[_wgslsmith_index_u32(19209u, 19u)];
    let var_3 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 894f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1805f, -250f), var_1.a, vec2<bool>(true, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(262f, 663f)), _wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(var_0.a.x, 224f)))), vec2<bool>(var_3.x < 21235u, false)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_3.a, _wgslsmith_f_op_vec2_f32(func_2(arg_1.a)), vec2<bool>(false, arg_3.b.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-272f)), arg_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(500f)))))));
    let var_1 = arg_3;
    global0 = array<Struct_1, 19>();
    let var_2 = (true & any(var_1.b)) || func_3().x;
    var var_3 = u_input.e.x;
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a * arg_1.a) * var_1.a)), var_1.a), func_3(), u_input.a.x, -vec2<i32>(arg_3.c, -3685i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(~29458i, u_input.e.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e.x, u_input.d), u_input.a)), global0[_wgslsmith_index_u32(~4294967295u, 19u)], _wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.d, u_input.e.x, u_input.a.x, u_input.e.x) | vec4<i32>(u_input.d, 0i, u_input.a.x, 14692i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 1i, u_input.d), ~vec4<i32>(u_input.e.x, 2147483647i, -16742i, u_input.e.x)), u_input.a.x, max(-1i, u_input.e.x) << (21604u % 32u), abs(reverseBits(0i)))), Struct_1(vec2<f32>(1f, 1f), vec4<bool>(true, !any(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, true, true, true))), select(_wgslsmith_mult_i32(0i, 1i), _wgslsmith_div_i32(-52241i | u_input.e.x, abs(u_input.a.x)), (u_input.c.x <= 65501u) && true), vec2<i32>(-11045i, -abs(u_input.e.x))));
    var var_1 = var_0.c;
    global1 = array<vec3<i32>, 10>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(reverseBits(u_input.b), 0u), 58392u, 54465u, ~u_input.b >> (u_input.c.x % 32u)), abs(vec4<u32>(u_input.b, u_input.b, u_input.b, countOneBits(u_input.b))), u_input.c), vec4<u32>(_wgslsmith_add_u32(0u, u_input.b), 40196u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(43658u, u_input.b), u_input.b), u_input.b)), 19u)];
    let var_2 = !func_3().yyy;
    let var_3 = vec2<u32>(~(1u << (u_input.b % 32u)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-u_input.d, u_input.a.x | 18705i), ~vec2<i32>(var_0.c, -8789i), !select(var_0.b.xz, var_0.b.wy, false)), ~(~u_input.e.zz | (u_input.a << (vec2<u32>(var_3.x, u_input.c.x) % vec2<u32>(32u))))), vec4<i32>(var_0.d.x, u_input.d, abs(u_input.d >> (1u % 32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2301i, var_0.c), vec3<i32>(u_input.a.x, var_0.d.x, -2147483647i)) & ~firstLeadingBit(9100i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, 838f, _wgslsmith_f_op_f32(abs(var_0.a.x)))))));
}

