struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(840f, vec2<bool>(true, false), vec3<i32>(0i, 2147483647i, -1i), vec2<i32>(-42622i, i32(-2147483648)), vec3<f32>(760f, 682f, 1705f)), Struct_1(-178f, vec2<bool>(false, true), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec2<i32>(11570i, 1i), vec3<f32>(867f, 1368f, 304f)), Struct_1(504f, vec2<bool>(false, false), vec3<i32>(1i, -58052i, 1i), vec2<i32>(30429i, 39086i), vec3<f32>(806f, -891f, -1810f)), Struct_1(1064f, vec2<bool>(false, false), vec3<i32>(-12905i, 1i, 1i), vec2<i32>(-26306i, 0i), vec3<f32>(280f, 1000f, 323f)), Struct_1(1207f, vec2<bool>(true, false), vec3<i32>(0i, 2147483647i, 0i), vec2<i32>(1i, -23813i), vec3<f32>(-685f, 778f, 1920f)), Struct_1(-1018f, vec2<bool>(false, true), vec3<i32>(0i, i32(-2147483648), 21587i), vec2<i32>(0i, 55804i), vec3<f32>(1000f, 481f, -1339f)), Struct_1(115f, vec2<bool>(true, true), vec3<i32>(2147483647i, -48199i, 1i), vec2<i32>(4799i, -30433i), vec3<f32>(1925f, -1428f, -565f)), Struct_1(1000f, vec2<bool>(false, false), vec3<i32>(3615i, 3831i, 2147483647i), vec2<i32>(-1i, -12532i), vec3<f32>(-433f, 1115f, 1470f)), Struct_1(478f, vec2<bool>(true, true), vec3<i32>(-33069i, i32(-2147483648), 1i), vec2<i32>(0i, -11922i), vec3<f32>(762f, -685f, -256f)), Struct_1(918f, vec2<bool>(true, false), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec2<i32>(-45855i, 14263i), vec3<f32>(1226f, -659f, 1000f)), Struct_1(-616f, vec2<bool>(true, true), vec3<i32>(-1i, i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -26021i), vec3<f32>(-651f, 609f, 867f)));

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(9297i, 59635i, 2147483647i, 1i), vec4<i32>(13866i, -1i, 0i, -1594i), vec4<i32>(0i, -52940i, -46454i, -33044i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = select(!select(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, false), all(arg_1.xz)), select(select(vec4<bool>(true, arg_1.x, false, true), vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(true, true, arg_1.x, false)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), false), true), vec4<bool>(arg_1.x, arg_1.x, any(vec3<bool>(true, arg_1.x, true)), any(arg_1.zy))), vec4<bool>(true, true, true, true), any(select(!vec4<bool>(true, arg_1.x, true, false), vec4<bool>(true, true, arg_1.x, arg_1.x), true)) | arg_1.x);
    var var_1 = 1u;
    var var_2 = arg_2.x;
    var_1 = 42381u;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(1u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(52113u, 62386u, 1u, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(43925u, 4294967295u, 1u, 93648u), vec4<u32>(74833u, 35851u, 0u, 4294967295u), vec4<u32>(23325u, 69009u, 50915u, 64262u))))), 23u)];
    return 1u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    let var_0 = ~(~vec2<u32>(arg_0.x, func_3(arg_3.c, vec3<bool>(arg_3.b.x, arg_3.b.x, arg_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_3.c.x), vec2<i32>(-2147483647i, arg_1.x)))));
    let var_1 = Struct_1(arg_3.e.x, !select(arg_3.b, vec2<bool>(arg_2.x && arg_2.x, any(arg_3.b)), vec2<bool>(arg_2.x, true)), ~vec3<i32>(~_wgslsmith_add_i32(11982i, u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_3.d.x, 42921i), 9669i, ~1i), arg_1.x), vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(-arg_1.x, ~arg_1.x)), 1i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_3.a - arg_3.e.x), 178f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1286f)), arg_3.e.x))))));
    global2 = array<Struct_1, 11>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), vec2<bool>(!(!(arg_3.e.x < var_1.a)), any(vec4<bool>(var_1.b.x, all(vec3<bool>(arg_3.b.x, false, arg_3.b.x)), all(vec2<bool>(arg_2.x, arg_2.x)), !var_1.b.x))), ~arg_3.c ^ arg_3.c, -countOneBits(abs(~vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e + _wgslsmith_div_vec3_f32(vec3<f32>(-1175f, arg_3.e.x, arg_3.e.x), vec3<f32>(var_1.a, 2107f, 1665f))), _wgslsmith_div_vec3_f32(vec3<f32>(-522f, arg_3.a, -1755f), _wgslsmith_div_vec3_f32(var_1.e, arg_3.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.e - vec3<f32>(758f, arg_3.e.x, 408f))), true && any(select(arg_2, vec2<bool>(var_1.b.x, arg_3.b.x), var_1.b)))));
    global2 = array<Struct_1, 11>();
    return ~var_0.x <= (~arg_0.x & _wgslsmith_dot_vec3_u32(vec3<u32>(8608u, 4294967295u, var_0.x) << (vec3<u32>(var_0.x, var_0.x, 42081u) % vec3<u32>(32u)), firstLeadingBit(arg_0.zzz)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(~0u, 1u))), 23u)];
    global3 = array<vec4<i32>, 3>();
    let var_1 = vec3<f32>(-111f, -1082f, -682f);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(~1u), ~(~_wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(38597u, 26905u, 14517u, 51090u), vec4<u32>(22482u, 96756u, 69540u, 73955u))))), 11u)];
    let var_3 = ~(~24287u) < firstTrailingBit(_wgslsmith_clamp_u32(1u, ~0u, ~max(35u, 0u)));
    return StorageBuffer(vec3<i32>(select(-var_2.c.x, ~var_0.d.x | _wgslsmith_sub_i32(2147483647i, var_0.d.x), arg_1.b.x), max(arg_1.d.x, 1i), 2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(abs(arg_1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-165f, arg_1.a), _wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -781f, arg_1.e.x, var_1.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-892f, -1662f, 982f, arg_1.a)))))), select(select(!vec4<bool>(var_2.b.x, true, arg_0.x, var_0.b.x), select(vec4<bool>(arg_0.x, false, var_0.b.x, false), vec4<bool>(false, false, false, true), true), true), vec4<bool>(true, !var_2.b.x, arg_1.b.x, true), arg_1.b.x))), arg_1.d.x, _wgslsmith_f_op_vec2_f32(var_1.xy * vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.e.x, -176f)), 483f)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = 2147483647i;
    let var_1 = u_input.a;
    var var_2 = 1i;
    var var_3 = false;
    global0 = array<Struct_1, 23>();
    return func_4(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), func_2(vec4<u32>(23296u, 4294967295u, 1u, 4294967295u), vec2<i32>(58061i, u_input.a.x), vec2<bool>(false, true), Struct_1(arg_0, vec2<bool>(true, false), vec3<i32>(1i, 44156i, 6304i), var_1, vec3<f32>(980f, 383f, arg_0))))), Struct_1(arg_0, select(vec2<bool>(all(vec3<bool>(true, true, false)), arg_0 <= arg_0), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(true, true)), vec3<i32>(var_0, _wgslsmith_mod_i32(abs(var_1.x), abs(-2147483647i)), 7328i), vec2<i32>(_wgslsmith_mult_i32(var_1.x, -18607i), select(_wgslsmith_mod_i32(-1i, 19670i), firstLeadingBit(0i), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -276f) - vec3<f32>(404f, 707f, arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -774f, -1000f) + vec3<f32>(arg_0, arg_0, -1488f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 27>();
    global0 = array<Struct_1, 23>();
    global1 = array<vec2<u32>, 27>();
    let var_0 = -1122f;
    let var_1 = global2[_wgslsmith_index_u32(~abs(1u), 11u)];
    global1 = array<vec2<u32>, 27>();
    var var_2 = -u_input.a;
    var var_3 = select(-var_2.x, firstLeadingBit(~u_input.a.x), -231f != var_0);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(269f)))))))));
}

