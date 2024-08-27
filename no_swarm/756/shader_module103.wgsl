struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(24531u, 57325u, vec4<f32>(178f, -1000f, -142f, 524f)), Struct_2(1u, 4294967295u, vec4<f32>(1013f, 179f, 398f, 108f)));

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: array<vec3<bool>, 24>;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(10418u, 0u, vec4<f32>(259f, 1008f, -778f, -715f)), Struct_2(0u, 4294967295u, vec4<f32>(-670f, 888f, -837f, 2900f)), Struct_2(63567u, 62976u, vec4<f32>(-698f, 826f, 290f, -1582f)), Struct_2(0u, 1u, vec4<f32>(-934f, 1748f, -1000f, -1034f)), Struct_2(1u, 47560u, vec4<f32>(1104f, 508f, 1412f, 1059f)), Struct_2(4294967295u, 1u, vec4<f32>(-1000f, 528f, 331f, -1237f)), Struct_2(4294967295u, 1u, vec4<f32>(-1000f, -1148f, 340f, 490f)), Struct_2(0u, 4294967295u, vec4<f32>(-1003f, -1318f, 1597f, 1159f)), Struct_2(0u, 1u, vec4<f32>(-600f, -332f, 1382f, 109f)), Struct_2(1u, 25007u, vec4<f32>(1094f, 549f, 148f, -742f)), Struct_2(17086u, 15030u, vec4<f32>(332f, -2187f, 1256f, -1000f)), Struct_2(4294967295u, 1u, vec4<f32>(1304f, 788f, -1000f, 749f)), Struct_2(14238u, 4294967295u, vec4<f32>(-700f, 1000f, 539f, 1000f)), Struct_2(0u, 4294967295u, vec4<f32>(651f, 1827f, -1000f, -1000f)), Struct_2(1u, 0u, vec4<f32>(633f, 1640f, 410f, 2724f)), Struct_2(70880u, 0u, vec4<f32>(2165f, 698f, 576f, -352f)), Struct_2(0u, 4294967295u, vec4<f32>(-300f, 388f, -1251f, 772f)));

var<private> global4: vec2<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, 923f, -1251f)))) + vec3<f32>(_wgslsmith_f_op_f32(round(-138f)), _wgslsmith_f_op_f32(-145f * -511f), _wgslsmith_f_op_f32(f32(-1f) * -1481f)))))));
    global3 = array<Struct_2, 17>();
    let var_1 = u_input.a;
    global0 = array<Struct_2, 2>();
    global1 = array<vec3<u32>, 7>();
    return ~(u_input.a.x << (21123u % 32u)) > ~firstLeadingBit(abs(~1u));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = vec3<u32>(global4.x, ~1u, _wgslsmith_div_u32(22797u, firstTrailingBit(abs(_wgslsmith_add_u32(global4.x, 1u)))));
    let var_1 = u_input.a;
    global3 = array<Struct_2, 17>();
    let var_2 = global0[_wgslsmith_index_u32(arg_3.a, 2u)];
    global0 = array<Struct_2, 2>();
    return ~(~_wgslsmith_add_i32(1i, u_input.b));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = vec2<i32>(47114i ^ (u_input.b | _wgslsmith_add_i32(firstLeadingBit(-26183i), u_input.b)), -func_3(any(vec4<bool>(arg_0, arg_0, true, arg_0)) || arg_0, global4.x, _wgslsmith_sub_i32(~(-38680i), -28105i), global0[_wgslsmith_index_u32(4294967295u << (max(u_input.a.x, 58404u) % 32u), 2u)]));
    global4 = vec2<u32>(~(4294967295u ^ (51947u | global4.x)), 12369u);
    return -723f;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~(~global4.x), 17u)];
    global2 = array<vec3<bool>, 24>();
    global3 = array<Struct_2, 17>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(func_3(true, u_input.a.x, arg_1.x, global0[_wgslsmith_index_u32(global4.x, 2u)])), Struct_1(vec2<f32>(1000f, 384f), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a), 1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + 180f)), 450f))), vec4<u32>(~var_0.a, firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(u_input.a.zw ^ reverseBits(vec2<u32>(1u, var_0.a)), ~(~vec2<u32>(26212u, u_input.a.x))), ~var_0.a), _wgslsmith_div_u32(~(~0u), 28610u));
    let var_2 = vec4<bool>(arg_0, all(!(!(!vec4<bool>(false, arg_0, true, true)))), all(vec3<bool>(false, u_input.b >= -12719i, all(!vec2<bool>(arg_0, arg_0)))), any(select(vec2<bool>(any(vec2<bool>(false, arg_0)), select(arg_0, true, false)), vec2<bool>(true, var_0.a == 19618u), vec2<bool>(arg_0, !arg_0))));
    return Struct_1(var_1.a, _wgslsmith_mod_vec4_u32(vec4<u32>(~select(0u, global4.x, var_2.x), min(var_0.a << (8798u % 32u), ~66926u), 4294967295u, reverseBits(0u)), firstLeadingBit(vec4<u32>(0u, var_0.b, ~4294967295u, _wgslsmith_mod_u32(u_input.a.x, global4.x)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(min(5613u, ~global4.x), global4.x), ~reverseBits(firstTrailingBit(global4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    let var_0 = _wgslsmith_add_vec2_u32(u_input.a.zy, ~(select(u_input.a.wx, u_input.a.xx, true) & min(select(u_input.a.wz, u_input.a.ww, vec2<bool>(false, true)), _wgslsmith_clamp_vec2_u32(u_input.a.yy, u_input.a.yx, vec2<u32>(global4.x, u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1653f * 482f), _wgslsmith_f_op_f32(ceil(142f))))))));
    global2 = array<vec3<bool>, 24>();
    var var_2 = vec2<bool>(false, func_1(452i));
    let var_3 = var_2.x;
    var var_4 = func_2(!(true && var_2.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b ^ 0i, u_input.b | 18531i), -select(vec2<i32>(7228i, 11031i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, var_2.x))) | firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-48375i, 7538i)))));
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(327f, func_2(var_2.x, min(vec2<i32>(15314i, u_input.b) | vec2<i32>(0i, 2147483647i), ~vec2<i32>(30804i, u_input.b))).a.x, var_4.a.x) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-432f, var_4.a.x, var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 687f, 990f)))))));
    var var_6 = Struct_2(~(countOneBits(reverseBits(global4.x)) & 1u), var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2130f, var_4.a.x, 1175f, 367f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, 480f, var_4.a.x, -518f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1532f, -625f) + _wgslsmith_f_op_f32(sign(-892f))))), vec2<i32>(u_input.b, -9722i | u_input.b), (~vec4<i32>(0i, u_input.b, 24402i, -14559i) & vec4<i32>(u_input.b, u_input.b, abs(39450i), ~u_input.b)) | ~(firstTrailingBit(vec4<i32>(1i, u_input.b, -1i, u_input.b)) << (vec4<u32>(var_6.a, u_input.a.x, global4.x, global4.x) % vec4<u32>(32u))));
}

