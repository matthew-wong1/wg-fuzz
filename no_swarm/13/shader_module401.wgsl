struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<bool, 10> = array<bool, 10>(true, true, false, true, false, false, true, true, false, false);

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(58418u, 4294967295u), vec3<f32>(731f, -460f, -1625f)), Struct_1(vec2<u32>(0u, 33318u), vec3<f32>(-345f, -1736f, -437f)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<f32>(-411f, -1000f, 764f)), Struct_1(vec2<u32>(0u, 0u), vec3<f32>(-1000f, -1047f, 1614f)), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(-1692f, -1458f, 1000f)), Struct_1(vec2<u32>(9352u, 28440u), vec3<f32>(156f, 761f, -2122f)), Struct_1(vec2<u32>(23228u, 4294967295u), vec3<f32>(1008f, -671f, -676f)), Struct_1(vec2<u32>(44107u, 16254u), vec3<f32>(-1177f, 642f, 357f)), Struct_1(vec2<u32>(59400u, 1u), vec3<f32>(659f, 890f, 435f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-129f, -398f, -994f)), Struct_1(vec2<u32>(73925u, 1u), vec3<f32>(639f, 474f, -1458f)), Struct_1(vec2<u32>(65961u, 1u), vec3<f32>(539f, 677f, 774f)), Struct_1(vec2<u32>(4294967295u, 110644u), vec3<f32>(216f, 224f, 397f)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-514f, -1257f, 368f)), Struct_1(vec2<u32>(10047u, 28770u), vec3<f32>(269f, 476f, 1828f)), Struct_1(vec2<u32>(53841u, 89231u), vec3<f32>(105f, 811f, 1168f)), Struct_1(vec2<u32>(54787u, 77894u), vec3<f32>(281f, 107f, 230f)));

var<private> global3: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(0u, 4294967295u, 4294967295u, 51430u), vec4<u32>(3249u, 4918u, 6808u, 4294967295u), vec4<u32>(12008u, 1u, 15602u, 4294967295u), vec4<u32>(0u, 1u, 6480u, 1u), vec4<u32>(49289u, 1u, 4531u, 0u), vec4<u32>(8760u, 4294967295u, 63151u, 55668u), vec4<u32>(1u, 6720u, 0u, 4294967295u), vec4<u32>(26221u, 68241u, 4294967295u, 4294967295u), vec4<u32>(80254u, 1u, 0u, 0u), vec4<u32>(36434u, 1u, 4294967295u, 0u), vec4<u32>(0u, 5400u, 52491u, 0u), vec4<u32>(8215u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 45508u), vec4<u32>(4294967295u, 107185u, 1u, 90234u), vec4<u32>(21343u, 1u, 48132u, 4294967295u), vec4<u32>(4294967295u, 80290u, 1u, 44785u), vec4<u32>(42296u, 66776u, 4294967295u, 1u), vec4<u32>(88404u, 32929u, 0u, 4294967295u), vec4<u32>(1u, 1u, 0u, 23780u), vec4<u32>(13432u, 18484u, 4294967295u, 35218u), vec4<u32>(0u, 0u, 4294967295u, 17020u), vec4<u32>(15024u, 1u, 0u, 1u), vec4<u32>(34487u, 27823u, 2049u, 0u), vec4<u32>(1u, 4294967295u, 16755u, 49175u), vec4<u32>(82426u, 68213u, 71934u, 33438u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> f32 {
    global3 = array<vec4<u32>, 25>();
    let var_0 = ~(~vec2<u32>(~u_input.b.x, ~(~u_input.b.x)));
    global2 = array<Struct_1, 17>();
    var var_1 = Struct_1(vec2<u32>(80104u, 44830u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-arg_0))))));
    global3 = array<vec4<u32>, 25>();
    return _wgslsmith_f_op_f32(-3351f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-494f, -470f)) - -232f))), _wgslsmith_f_op_f32(2199f - _wgslsmith_f_op_f32(1127f + var_1.b.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    global1 = array<bool, 10>();
    var var_0 = arg_0;
    var var_1 = var_0.b;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), -586f, -343f);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(744f, var_0.b.x, -1752f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1146f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - -1497f))))) * vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), arg_1.x))), _wgslsmith_div_f32(-1367f, _wgslsmith_div_f32(-877f, _wgslsmith_f_op_f32(-592f * var_2.x))), _wgslsmith_f_op_f32(exp2(var_0.b.x)), arg_1.x));
    return _wgslsmith_mult_i32(2147483647i, 0i);
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(-486f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f)), 254f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - -1653f);
    let var_2 = abs(u_input.a.wzw);
    global1 = array<bool, 10>();
    return global2[_wgslsmith_index_u32(reverseBits(firstTrailingBit(countOneBits(abs(u_input.b.x)))), 17u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = func_4(!(func_2(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], vec4<f32>(1707f, arg_0.b.x, arg_0.b.x, arg_1), firstLeadingBit(u_input.a.xy), -4876i > u_input.a.x) <= (4806i >> (~arg_0.a.x % 32u))));
    let var_1 = true;
    global3 = array<vec4<u32>, 25>();
    global2 = array<Struct_1, 17>();
    let var_2 = func_2(Struct_1(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(38041u, 26897u)), u_input.b.xw, vec2<u32>(var_0.a.x, abs(arg_0.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1151f, -1069f, arg_0.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(1390f, -1650f, arg_1)), vec3<f32>(arg_1, -2474f, 1409f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(524f, -1517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - -1215f), 428f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(true).b.x, var_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(1960f * 1395f)))), vec2<i32>(_wgslsmith_clamp_i32(~(~u_input.a.x), ~u_input.a.x & _wgslsmith_add_i32(26195i, 1i), countOneBits(-u_input.a.x)), firstLeadingBit(-29800i)), false);
    return firstLeadingBit(~min(~u_input.b.x ^ _wgslsmith_mult_u32(arg_0.a.x, u_input.b.x), arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_mod_vec3_u32(u_input.b.yzz, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~u_input.b.x) & ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, ~u_input.b.x, 4294967295u)));
    var var_1 = select(!(!select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.x, 10u)], false), vec4<bool>(true, true, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(21217u, 10u)], global1[_wgslsmith_index_u32(8553u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], false), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(11590u, 28u)]), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), select(!(!vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 10u)])), vec4<bool>(!all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0.x, 28u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0, ~vec3<u32>(u_input.b.x, u_input.b.x, 58308u)), 28u)], any(vec3<bool>(true, true, true)), ~0u < func_1(global2[_wgslsmith_index_u32(1u, 17u)], -2122f)), !(!select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(7895u, 28u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 28u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(40350u, 28u)], true)))), vec4<bool>(global0[_wgslsmith_index_u32(abs(~var_0.x), 28u)], !(!any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b.x, 10u)]))), true, true));
    var var_2 = (-_wgslsmith_mult_i32(abs(4415i), countOneBits(0i)) | _wgslsmith_div_i32(-abs(u_input.a.x), firstLeadingBit(17426i))) << (0u % 32u);
    var var_3 = func_4(false);
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 1u) | ~_wgslsmith_dot_vec4_u32(~firstTrailingBit(global3[_wgslsmith_index_u32(16727u, 25u)]), _wgslsmith_add_vec4_u32(vec4<u32>(61959u, var_0.x, 0u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(21u, 33311u, 4294967295u, 51954u), global3[_wgslsmith_index_u32(u_input.b.x, 25u)]))), 25u)];
    global1 = array<bool, 10>();
    var var_5 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

