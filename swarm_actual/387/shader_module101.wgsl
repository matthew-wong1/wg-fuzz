struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(53415i, -9176i, i32(-2147483648), 75317i, i32(-2147483648), -37967i, 24285i, 0i, 19317i, -43329i, 2147483647i, 5751i, 0i, 23646i, 1i, -9018i, -41575i, 6161i, 0i, -1i, 26348i, -1i, -32456i, 24556i, -1i, 45604i, 2147483647i, -61505i, 2147483647i, -32206i, -36371i);

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 24416u), vec2<u32>(36001u, 0u), vec2<u32>(54109u, 72694u), vec2<u32>(40303u, 0u), vec2<u32>(1u, 9749u), vec2<u32>(0u, 60725u), vec2<u32>(0u, 11238u), vec2<u32>(20545u, 9665u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(9202u, 88271u), vec2<u32>(1u, 35623u), vec2<u32>(32692u, 1171u), vec2<u32>(31897u, 70581u), vec2<u32>(63343u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 53290u), vec2<u32>(74127u, 20788u), vec2<u32>(30306u, 4294967295u), vec2<u32>(16668u, 43918u), vec2<u32>(42519u, 201u), vec2<u32>(4294967295u, 69365u), vec2<u32>(33422u, 1u), vec2<u32>(26939u, 44762u), vec2<u32>(4294967295u, 134247u), vec2<u32>(4294967295u, 15138u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    return ~arg_1.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_5(81461u, vec4<u32>(~func_3(vec3<bool>(false, arg_1, true), vec2<u32>(u_input.d, 1u), arg_1, vec4<f32>(188f, arg_2.x, 1209f, arg_2.x)), reverseBits(u_input.d), abs(_wgslsmith_sub_u32(u_input.d, u_input.d)), _wgslsmith_div_u32(u_input.d, ~42726u)) << (min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 20634u, u_input.d, 1u), vec4<u32>(70846u, 0u, 4294967295u, 10694u)), ~vec4<u32>(4294967295u, u_input.d, u_input.d, 49021u), vec4<u32>(90754u, 35903u, u_input.d, u_input.d)), ~select(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<bool>(true, true, true, arg_1))) % vec4<u32>(32u)));
    var var_1 = ~(-_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, u_input.c, u_input.a, -1i) | vec4<i32>(u_input.c, 12483i, 50830i, 40870i)), vec4<i32>(global0[_wgslsmith_index_u32(~var_0.b.x, 31u)], -17578i & u_input.b.x, 1i, _wgslsmith_div_i32(0i, -46542i))));
    var_1 = abs(vec4<i32>(-2147483647i, arg_0, u_input.a, 1i));
    var var_2 = var_0.a;
    let var_3 = Struct_5(u_input.d, firstTrailingBit(max(select(firstTrailingBit(vec4<u32>(4294967295u, u_input.d, 53754u, var_0.a)), var_0.b, vec4<bool>(arg_1, arg_1, arg_1, false)), firstLeadingBit(~var_0.b))));
    return arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    global0 = array<i32, 31>();
    global1 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1367f, _wgslsmith_f_op_f32(arg_3 * 394f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) * vec2<f32>(686f, -611f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 1137f)), select(arg_1.yy, arg_1.zz, arg_1.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-40246i, true, vec2<f32>(arg_3, 1208f)))))));
    var var_1 = firstLeadingBit(vec3<u32>(firstTrailingBit(u_input.d), ~arg_2.a, ~4294967295u));
    let var_2 = all(select(!select(arg_1.zx, vec2<bool>(false, arg_1.x), arg_1.x || arg_1.x), arg_1.xz, arg_1.x));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: f32) -> bool {
    global0 = array<i32, 31>();
    let var_0 = firstLeadingBit(arg_1.b.zwx & arg_1.b.yww);
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(758f, arg_2) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1110f))))) - vec2<f32>(900f, _wgslsmith_f_op_f32(-arg_2))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 28>();
    var var_0 = vec2<i32>(firstLeadingBit(~_wgslsmith_sub_i32(0i, u_input.c)), 1i);
    global1 = array<vec2<u32>, 28>();
    var_0 = u_input.b;
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(13816u, 1u), countOneBits(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 53524u), 76310u), _wgslsmith_mod_u32(u_input.d, 39163u) ^ _wgslsmith_sub_u32(1u, u_input.d))), global1[_wgslsmith_index_u32(28268u, 28u)]);
    let var_2 = Struct_5(0u, ~abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.d, u_input.d, 0u), ~vec4<u32>(18974u, var_1.x, 32259u, var_1.x))));
    global1 = array<vec2<u32>, 28>();
    let var_3 = select(select(vec4<bool>(func_4(func_1(Struct_2(Struct_1(false, global0[_wgslsmith_index_u32(var_1.x, 31u)]), vec4<u32>(u_input.d, 1u, var_1.x, var_2.b.x), vec3<u32>(11352u, 38985u, u_input.d)), vec4<bool>(false, true, true, false), Struct_5(1u, vec4<u32>(var_1.x, 1u, var_2.a, 4294967295u)), 2212f), var_2, 542f), true, true, any(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), true)), true), vec4<bool>(false, all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), true, true), select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, select(true, true, false))), true));
    var var_4 = func_1(func_1(Struct_2(func_1(Struct_2(Struct_1(false, var_0.x), vec4<u32>(var_1.x, var_1.x, var_1.x, var_2.b.x), vec3<u32>(11653u, 0u, var_1.x)), var_3, var_2, _wgslsmith_f_op_f32(-870f - 1000f)).a, _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, var_2.a, 18349u), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u), vec4<u32>(0u, var_1.x, 46750u, var_1.x)), abs(~vec3<u32>(var_2.a, 12581u, var_1.x))), vec4<bool>(false, _wgslsmith_f_op_f32(ceil(1240f)) <= _wgslsmith_f_op_f32(-1000f * -486f), all(!vec2<bool>(var_3.x, var_3.x)), true | !var_3.x), Struct_5(~(~0u), var_2.b), -1155f), !vec4<bool>(!var_3.x, select(var_3.x, var_3.x, var_3.x) || true, false, !(var_3.x & var_3.x)), Struct_5(0u, var_2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mod_i32(-1i, u_input.a), false & var_3.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1298f) + vec2<f32>(1734f, -278f)))).x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_4.c, var_4.c) ^ ~var_2.b.xwz, _wgslsmith_mult_u32(~(~max(var_1.x, var_2.b.x)), countOneBits(4294967295u)), _wgslsmith_div_u32(func_3(var_3.wwx, vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.d, u_input.d), ~u_input.d), var_3.x, vec4<f32>(232f, _wgslsmith_f_op_f32(-1188f - 1860f), _wgslsmith_f_op_f32(-197f + 1899f), _wgslsmith_div_f32(-566f, 835f))), firstTrailingBit(var_4.b.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(u_input.a, !var_4.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-3859f, 116f) - vec2<f32>(104f, 678f)))).x, _wgslsmith_f_op_vec2_f32(func_2(44120i, true, _wgslsmith_div_vec2_f32(vec2<f32>(-1517f, 484f), vec2<f32>(-290f, 515f)))).x))), abs(vec4<i32>(_wgslsmith_sub_i32(~26875i, _wgslsmith_div_i32(-38445i, 2147483647i)), var_0.x, -38466i, abs(-u_input.a))));
}

