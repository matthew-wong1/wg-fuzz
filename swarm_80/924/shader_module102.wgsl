struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i);

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<bool>(true, true, true), 771f, true), Struct_1(vec3<bool>(true, true, true), -1000f, true), Struct_1(vec3<bool>(false, true, true), 677f, true), Struct_1(vec3<bool>(true, true, true), -1644f, true), Struct_1(vec3<bool>(true, true, true), 1063f, true), Struct_1(vec3<bool>(true, false, false), -1096f, true), Struct_1(vec3<bool>(true, false, false), -1000f, false), Struct_1(vec3<bool>(false, false, false), 887f, false), Struct_1(vec3<bool>(true, false, false), -1116f, true), Struct_1(vec3<bool>(false, false, true), 1815f, false), Struct_1(vec3<bool>(true, true, true), 1303f, false), Struct_1(vec3<bool>(true, false, true), 687f, true), Struct_1(vec3<bool>(false, true, true), -909f, true), Struct_1(vec3<bool>(false, true, true), -1072f, true), Struct_1(vec3<bool>(true, true, true), -186f, true), Struct_1(vec3<bool>(true, true, true), -684f, false), Struct_1(vec3<bool>(true, true, true), 1129f, true), Struct_1(vec3<bool>(false, false, false), 565f, false));

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_2(global0.a);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-730f, 915f, false)), _wgslsmith_f_op_f32(step(146f, -1167f)), -205f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, 435f, 1406f)))))), vec3<f32>(649f, _wgslsmith_f_op_f32(f32(-1f) * -2212f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -2578f)), _wgslsmith_f_op_f32(sign(-1376f))))));
    var var_3 = -704f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + 557f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(990f, 779f, false)) + -401f), all(vec4<bool>(false, false, true, true)) & true)));
    let var_4 = 4294967295u;
    return any(select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), var_4 > u_input.a.x), vec2<bool>(false, all(vec2<bool>(false, false))), vec2<bool>(true, true)), vec2<bool>(true, !(var_0.a > arg_0.a)), false && all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> bool {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_1 = global4[_wgslsmith_index_u32(13924u, 20u)];
    var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(43710u, select(_wgslsmith_div_u32(~0u, ~u_input.a.x), (4294967295u >> (0u % 32u)) | (arg_1.x & u_input.a.x), var_1.c)), 18u)];
    let var_2 = Struct_1(vec3<bool>(func_3(Struct_2(global3.a), Struct_2(global0.a), vec4<i32>(arg_0, global0.a, arg_0, -1i)) && true, false, var_0.a.x), _wgslsmith_f_op_f32(round(var_0.b)), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1469f, 603f) - vec2<f32>(var_0.b, var_2.b))), vec2<f32>(var_0.b, -2467f)))));
    return any(var_2.a);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global1 = _wgslsmith_add_u32(0u, _wgslsmith_div_u32(firstTrailingBit(u_input.a.x) & (_wgslsmith_mult_u32(u_input.a.x, 96375u) ^ ~14328u), 4294967295u));
    let var_0 = -1i;
    let var_1 = Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !all(vec3<bool>(true, true, true))), -634f, func_2(reverseBits(arg_0.x), u_input.a.xx));
    return Struct_2(~_wgslsmith_dot_vec2_i32(-arg_0 ^ arg_0, (vec2<i32>(11508i, 269i) << (u_input.a.xy % vec2<u32>(32u))) | arg_0));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(-global3.a);
    var var_1 = vec3<f32>(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-183f, -1391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(890f, -1275f, false)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -1000f)))));
    var var_2 = Struct_1(vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), true, !select(all(vec4<bool>(false, false, true, true)), true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), (_wgslsmith_dot_vec4_i32(vec4<i32>(70778i, arg_1.a, 2147483647i, -12408i), vec4<i32>(-29984i, -57351i, 4162i, global0.a)) > _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 1i, 2147483647i, -20217i) & vec4<i32>(var_0.a, 1i, arg_0, var_0.a), max(vec4<i32>(arg_1.a, global3.a, global0.a, global3.a), vec4<i32>(global3.a, -17771i, -2147483647i, arg_1.a)))) != false);
    var_0 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), -133f), vec2<f32>(1642f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -149f)))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(all(vec4<bool>(true, true, true, true)), 1i < global0.a, select(2147483647i, -17501i, false) != global0.a));
    let var_1 = func_4(global3.a, func_1(-countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 6917i), vec2<i32>(global0.a, -1i)))));
    global0 = var_1;
    global4 = array<Struct_1, 20>();
    global4 = array<Struct_1, 20>();
    global1 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(u_input.a.x, u_input.a.x, 48687u))), ~_wgslsmith_add_vec3_u32(u_input.a.xxx, vec3<u32>(37151u, u_input.a.x, 1u)))) | (34562u >> (1u % 32u));
    var var_2 = Struct_1(!vec3<bool>(func_2(0i, vec2<u32>(u_input.a.x, 4294967295u)), false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-969f - 134f))), -277f, var_0))), !(41786u >= ~abs(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_1.a, 0i, 770i, global3.a), vec4<i32>(-1678i, -2147483647i, 66749i, -48099i), vec4<bool>(true, false, false, var_2.c)), vec4<i32>(2147483647i, -2147483647i, -23581i, -62404i) ^ vec4<i32>(global0.a, global3.a, global0.a, 1742i))), 1064u, ~1u, func_4(38986i, var_1).a);
}

