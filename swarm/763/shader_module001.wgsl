struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(true, false), vec3<f32>(-1361f, -173f, -1669f), 1u, true, vec4<i32>(1i, -95945i, 0i, 1i)), Struct_1(vec2<bool>(true, false), vec3<f32>(-739f, 440f, 2668f), 44705u, false, vec4<i32>(18759i, -38071i, 124i, -1i)), Struct_1(vec2<bool>(true, true), vec3<f32>(-493f, -1852f, 170f), 1u, false, vec4<i32>(i32(-2147483648), i32(-2147483648), -26883i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec3<f32>(408f, 788f, 259f), 4294967295u, false, vec4<i32>(5198i, -31576i, -1i, 51472i)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1874f, 1000f, -710f), 56719u, true, vec4<i32>(43554i, 2147483647i, -1i, 8776i)), Struct_1(vec2<bool>(false, true), vec3<f32>(-624f, -1226f, -470f), 42557u, true, vec4<i32>(25345i, 86064i, 1i, 38642i)), Struct_1(vec2<bool>(true, false), vec3<f32>(241f, -892f, -208f), 4294967295u, true, vec4<i32>(-1i, -35344i, 2147483647i, 1i)), Struct_1(vec2<bool>(false, true), vec3<f32>(884f, 1007f, -1562f), 1u, false, vec4<i32>(10490i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec2<bool>(false, true), vec3<f32>(-335f, 1013f, -407f), 4294967295u, false, vec4<i32>(2147483647i, 1i, 5719i, 2147483647i)), Struct_1(vec2<bool>(false, false), vec3<f32>(-198f, 686f, -902f), 4294967295u, false, vec4<i32>(i32(-2147483648), 2147483647i, -18445i, -1i)), Struct_1(vec2<bool>(false, false), vec3<f32>(795f, 1016f, 1497f), 4294967295u, false, vec4<i32>(35225i, 0i, i32(-2147483648), 17607i)), Struct_1(vec2<bool>(false, false), vec3<f32>(-325f, -834f, 1156f), 87684u, true, vec4<i32>(-25810i, 3082i, i32(-2147483648), -1i)), Struct_1(vec2<bool>(true, false), vec3<f32>(663f, 255f, -1179f), 1u, false, vec4<i32>(32433i, 1i, -9878i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec3<f32>(-1000f, 127f, -1184f), 28861u, false, vec4<i32>(2147483647i, i32(-2147483648), -12815i, 36091i)), Struct_1(vec2<bool>(false, true), vec3<f32>(118f, -1000f, 891f), 31726u, false, vec4<i32>(7983i, -1i, 2147483647i, -1i)), Struct_1(vec2<bool>(false, false), vec3<f32>(-655f, -583f, 581f), 26337u, true, vec4<i32>(50920i, i32(-2147483648), -4513i, 60127i)), Struct_1(vec2<bool>(true, true), vec3<f32>(1043f, -467f, 495f), 0u, false, vec4<i32>(-1i, 2091i, -1i, -12497i)), Struct_1(vec2<bool>(false, false), vec3<f32>(379f, -587f, 189f), 4294967295u, true, vec4<i32>(2147483647i, -1i, 25369i, -1i)), Struct_1(vec2<bool>(false, true), vec3<f32>(1062f, -1886f, 705f), 4294967295u, false, vec4<i32>(15869i, 35135i, 2147483647i, -1i)), Struct_1(vec2<bool>(false, true), vec3<f32>(1094f, -1883f, 521f), 4294967295u, true, vec4<i32>(2147483647i, 2147483647i, -67280i, 0i)), Struct_1(vec2<bool>(true, false), vec3<f32>(-910f, 1338f, -939f), 1u, true, vec4<i32>(-1i, 6497i, i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, false), vec3<f32>(770f, -1000f, -2333f), 104121u, true, vec4<i32>(1i, -15897i, 2147483647i, -10547i)), Struct_1(vec2<bool>(false, true), vec3<f32>(-843f, -731f, 2735f), 32942u, false, vec4<i32>(-6365i, 30070i, 2147483647i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec3<f32>(-2202f, -542f, 1167f), 1u, false, vec4<i32>(i32(-2147483648), -22520i, -2419i, -54633i)));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<bool>(false, true), vec3<f32>(392f, 374f, -1110f), 0u, false, vec4<i32>(-53916i, 11115i, -11971i, 564i)), Struct_1(vec2<bool>(true, true), vec3<f32>(-602f, -1724f, -852f), 36080u, true, vec4<i32>(-36766i, -16844i, 1i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec3<f32>(-222f, 476f, 1466f), 9987u, false, vec4<i32>(i32(-2147483648), 40319i, -1i, -14076i)), Struct_1(vec2<bool>(false, false), vec3<f32>(259f, -1886f, -1220f), 38888u, false, vec4<i32>(14831i, 1i, -63985i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec3<f32>(-501f, -295f, 1301f), 14986u, true, vec4<i32>(0i, 27122i, -1i, 10652i)), Struct_1(vec2<bool>(true, true), vec3<f32>(-221f, 2005f, -1143f), 1u, true, vec4<i32>(-15383i, i32(-2147483648), 10992i, -1i)), Struct_1(vec2<bool>(true, true), vec3<f32>(548f, 894f, -1066f), 4294967295u, false, vec4<i32>(1i, -35900i, 1i, -32009i)), Struct_1(vec2<bool>(true, false), vec3<f32>(1168f, -429f, -1000f), 44178u, true, vec4<i32>(2147483647i, 2147483647i, 1i, -29325i)), Struct_1(vec2<bool>(true, true), vec3<f32>(-1318f, 1980f, 558f), 1u, false, vec4<i32>(-1i, 11847i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec3<f32>(-210f, 358f, 706f), 1u, true, vec4<i32>(27007i, -18061i, 106409i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec3<f32>(952f, -1357f, -1051f), 4294967295u, false, vec4<i32>(-30341i, -1i, i32(-2147483648), -1i)));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), vec3<f32>(-113f, -1161f, -196f), 4294967295u, true, vec4<i32>(-1i, i32(-2147483648), -881i, 2787i));

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = global1[_wgslsmith_index_u32(global2.c, 11u)];
    var var_0 = -103512i;
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(756f * 469f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1837f, -155f, -647f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1359f, 1528f, global2.b.x) - vec3<f32>(-257f, arg_0.b.x, -1924f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, -1077f)), !select(vec3<bool>(false, false, global2.d), vec3<bool>(false, false, true), vec3<bool>(arg_0.d, arg_0.a.x, true)))), 4294967295u, all(vec3<bool>(any(global2.a) && any(vec3<bool>(false, false, false)), global2.a.x, false)), vec4<i32>(reverseBits(firstLeadingBit(global2.e.x)), global2.e.x, _wgslsmith_add_i32(_wgslsmith_div_i32(global2.e.x, -7039i >> (1u % 32u)), (27169i >> (arg_0.c % 32u)) | -38111i), global2.e.x));
    let var_1 = any(!vec2<bool>(_wgslsmith_f_op_f32(-arg_0.b.x) <= arg_0.b.x, !global3.x || all(arg_0.a)));
    var var_2 = global0[_wgslsmith_index_u32(0u >> (0u % 32u), 24u)];
    return ~select(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 79743u), ~vec2<u32>(arg_0.c, u_input.e)), firstTrailingBit(_wgslsmith_mod_u32(global2.c, 1u)), any(var_2.a));
}

fn func_2() -> vec2<f32> {
    let var_0 = vec2<u32>(u_input.e, func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1979f, global2.b.x, global2.b.x), global2.b))), 4294967295u, global2.d, firstLeadingBit(u_input.c))));
    global0 = array<Struct_1, 24>();
    var var_1 = global0[_wgslsmith_index_u32(~countOneBits(global2.c), 24u)];
    global1 = array<Struct_1, 11>();
    var_1 = Struct_1(global2.a, global2.b, 17849u, true, (u_input.c ^ _wgslsmith_sub_vec4_i32(-vec4<i32>(global2.e.x, global2.e.x, global2.e.x, var_1.e.x), vec4<i32>(u_input.d.x, u_input.a.x, 21333i, 2147483647i))) ^ ~(-min(global2.e, vec4<i32>(u_input.c.x, -2147483647i, global2.e.x, global2.e.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.b.xz))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), 953f)) * vec2<f32>(-1029f, var_1.b.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    var var_0 = max(max(~countOneBits(arg_1.e), _wgslsmith_div_vec4_i32(u_input.c, arg_1.e) ^ u_input.c), arg_1.e) << (max(~_wgslsmith_mult_vec4_u32(vec4<u32>(2594u, arg_1.c, global2.c, arg_1.c), firstLeadingBit(vec4<u32>(0u, 24952u, 39456u, 45206u))), ~(~vec4<u32>(30498u, global2.c, global2.c, global2.c))) % vec4<u32>(32u));
    global0 = array<Struct_1, 24>();
    global3 = vec2<bool>(!all(select(vec4<bool>(arg_1.d, true, global2.a.x, global3.x), vec4<bool>(global3.x, global3.x, arg_1.d, arg_1.a.x), global2.d)) & (func_3(Struct_1(vec2<bool>(false, false), global2.b, u_input.e, true, u_input.d)) >= _wgslsmith_mod_u32(21663u << (0u % 32u), 62855u)), !(any(select(vec4<bool>(true, global2.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.d, global2.d, global3.x), vec4<bool>(global2.d, arg_1.d, false, false))) != (global2.d | false)));
    let var_1 = arg_1;
    return Struct_1(select(var_1.a, arg_1.a, arg_1.a), global2.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, ~vec2<u32>(29457u, 1u), u_input.b), _wgslsmith_add_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(u_input.b, u_input.b))) ^ abs(79798u), !(true & (true | all(vec2<bool>(global2.d, global2.d)))), vec4<i32>(_wgslsmith_clamp_i32(arg_1.e.x, -2147483647i, -73766i), 6233i, 1i, -2147483647i >> (~_wgslsmith_mult_u32(72440u, u_input.e) % 32u)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_1, 11>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(global2.b.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.xz * global2.b.yx)) - _wgslsmith_f_op_vec2_f32(func_2()))), global1[_wgslsmith_index_u32(u_input.e << (global2.c % 32u), 11u)]);
    var var_1 = 3073i;
    var var_2 = all(!(!select(!vec4<bool>(false, global2.d, global3.x, true), vec4<bool>(true, false, true, true), select(vec4<bool>(var_0.a.x, global3.x, global3.x, global3.x), vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(var_0.a.x, false, global3.x, global2.d)))));
    let var_3 = u_input.b;
    return func_4(vec2<f32>(_wgslsmith_f_op_f32(min(-1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x))), _wgslsmith_f_op_vec2_f32(func_2()).x), func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, 1326f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), func_4(vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), global2.b.x), func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.b.x, 1000f), var_0.b.xx)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.c, 4294967295u), 11u)]))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~u_input.c;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, var_1.c, arg_0.c, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 616u, var_1.c), vec3<u32>(17206u, 1u, u_input.b.x)), 1u) ^ _wgslsmith_clamp_u32(~var_1.c, ~0u, 0u)), select(min(~(vec4<u32>(global2.c, 56186u, 0u, var_1.c) >> (vec4<u32>(46299u, global2.c, u_input.b.x, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(22812u, 7775u, arg_0.c, 4294967295u))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(10644u, arg_0.c, 44820u, var_1.c), vec4<u32>(arg_0.c, var_1.c, u_input.b.x, 15962u))), vec4<bool>(any(vec4<bool>(true, false, arg_0.a.x, var_1.a.x)), false, select(global2.d, true, global2.a.x || true), true)));
    var var_3 = vec4<u32>(19343u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(global2.c), var_1.c & 0u, _wgslsmith_div_u32(60812u, u_input.b.x), u_input.b.x) >> (countOneBits(~vec4<u32>(u_input.e, var_2.x, global2.c, 58520u)) % vec4<u32>(32u)), ~vec4<u32>(func_4(vec2<f32>(920f, -1023f), global1[_wgslsmith_index_u32(882u, 11u)]).c, 0u, 4294967295u, arg_0.c)), countOneBits(7739u), 0u);
    var var_4 = vec2<i32>(arg_0.e.x & var_1.e.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(var_0, vec4<i32>(global2.e.x, 1i, 1i, var_1.e.x), func_4(arg_0.b.zx, global0[_wgslsmith_index_u32(16187u, 24u)]).e)), -abs(_wgslsmith_mult_vec4_i32(arg_0.e, var_1.e))));
    return global1[_wgslsmith_index_u32(func_1(u_input.d).c & ~26090u, 11u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !select(!(!vec3<bool>(false, arg_0.a.x, global2.a.x)), select(select(select(vec3<bool>(global3.x, arg_1.x, true), vec3<bool>(global3.x, global3.x, arg_3.d), vec3<bool>(global3.x, false, arg_0.a.x)), !vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_3.d, false, arg_0.a.x)), !select(vec3<bool>(global2.d, arg_3.d, global3.x), vec3<bool>(global3.x, arg_1.x, arg_0.d), true), select(vec3<bool>(arg_3.d, true, arg_0.d), vec3<bool>(false, false, arg_0.a.x), arg_3.c == 68820u)), func_5(func_5(Struct_1(arg_0.a, arg_3.b, global2.c, arg_0.a.x, vec4<i32>(18383i, arg_3.e.x, arg_2, -1i)))).a.x);
    let var_1 = Struct_1(func_1(-vec4<i32>(global2.e.x ^ -605i, arg_0.e.x, select(arg_2, -5308i, arg_0.a.x), ~arg_0.e.x)).a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(-455f, -484f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -761f)), arg_0.b.x))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, arg_0.c, 0u, 78546u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(20095u, arg_3.c, 64337u, global2.c), vec4<u32>(77375u, arg_0.c, arg_0.c, 9918u))), false, reverseBits(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(134f, arg_0.b.x) + vec2<f32>(374f, -517f))), arg_3).e));
    var var_2 = Struct_1(func_1(-u_input.c).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_f_op_vec3_f32(func_5(arg_3).b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -4090f, -1000f)))))), ~(~countOneBits(22908u)), all(!vec3<bool>(all(var_0), any(vec4<bool>(var_0.x, true, true, var_0.x)), false)), arg_0.e);
    let var_3 = 0u;
    global1 = array<Struct_1, 11>();
    return global0[_wgslsmith_index_u32(abs(arg_3.c), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c;
    var var_1 = max(vec3<i32>(reverseBits(2147483647i), -3800i, -min(~(-51856i), 0i)), min(u_input.c.xyx ^ ~(~u_input.c.wxx), -u_input.d.wxy));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(global2.b.x, -484f), _wgslsmith_f_op_f32(f32(-1f) * -263f), global2.b.x, _wgslsmith_div_f32(249f, 814f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, 1212f, 1236f, global2.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(global2.b.x)), _wgslsmith_f_op_f32(round(-470f)), -669f))));
    var var_3 = -449f;
    var var_4 = var_2.x;
    global0 = array<Struct_1, 24>();
    var var_5 = func_6(func_5(func_1(-vec4<i32>(u_input.d.x, 2147483647i, global2.e.x, var_1.x))), !vec2<bool>(global2.d, global3.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, func_5(global0[_wgslsmith_index_u32(u_input.b.x, 24u)]).e.x), var_1.x | 31342i), global0[_wgslsmith_index_u32(global2.c, 24u)]);
    let var_6 = func_1(u_input.d);
    global3 = !(!vec2<bool>(all(vec3<bool>(global3.x, var_5.d, var_5.d)), func_1(vec4<i32>(-14983i, 2147483647i, -1i, var_6.e.x) | vec4<i32>(global2.e.x, 1285i, var_6.e.x, -2147483647i)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_5.b.xz, vec2<f32>(func_5(global0[_wgslsmith_index_u32(3035u, 24u)]).b.x, 942f)), vec2<f32>(570f, global2.b.x)), ~var_5.e, _wgslsmith_sub_u32(_wgslsmith_mult_u32(func_6(var_6, vec2<bool>(var_5.d, global3.x), var_5.e.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]).c, 1u), _wgslsmith_add_u32(u_input.e, var_5.c) ^ select(var_6.c, 0u, false)) << (var_5.c % 32u), 1u);
}

