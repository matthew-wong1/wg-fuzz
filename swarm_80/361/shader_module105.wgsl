struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-1i, -1i, 13540i, -1i, 17611i, 15077i, 47235i, 1i, 32560i, i32(-2147483648), i32(-2147483648), 41266i, -44806i, 1i, -1i, -3430i, 2147483647i, i32(-2147483648));

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 76410u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 17827u), vec2<u32>(60851u, 117128u), vec2<u32>(1u, 40910u), vec2<u32>(44485u, 25318u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(1374u, 1u), vec2<u32>(1u, 21175u), vec2<u32>(1047u, 1u), vec2<u32>(1u, 0u), vec2<u32>(2160u, 9985u), vec2<u32>(19328u, 0u), vec2<u32>(9951u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 22052u), vec2<u32>(0u, 4294967295u), vec2<u32>(17290u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4667u, 39132u), vec2<u32>(33223u, 32190u), vec2<u32>(87063u, 14412u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 29479u), vec2<u32>(1u, 40986u), vec2<u32>(1u, 5075u), vec2<u32>(30590u, 90839u));

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<bool>, 12>;

var<private> global4: array<vec2<u32>, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = vec4<bool>(!any(global3[_wgslsmith_index_u32(1u, 12u)]), !any(arg_2.b.a.xz), !any(!select(arg_0.a.xyx, vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_2.b.a.yxw)), !arg_2.b.a.x);
    global1 = array<vec2<u32>, 31>();
    global2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(933f, -756f) - global2.x))), _wgslsmith_f_op_f32(trunc(arg_2.b.d.x)), _wgslsmith_f_op_f32(select(arg_0.d.x, _wgslsmith_f_op_f32(-global2.x), true)));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~(select(4294967295u, 0u, true) & firstTrailingBit(81776u)), min(~_wgslsmith_div_u32(arg_2.b.c, u_input.c), firstTrailingBit(1u)), arg_0.c), select(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(73400u, 4294967295u), u_input.c, ~1u), u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(37809u, 4294967295u), global4[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(arg_0.c, 31u)]), firstLeadingBit(vec2<u32>(0u, 0u)))), ~(min(vec3<u32>(arg_0.c, arg_2.b.c, 8909u), vec3<u32>(1u, 16203u, 60934u)) << (~vec3<u32>(arg_2.b.c, arg_2.b.c, 0u) % vec3<u32>(32u))), vec3<bool>(!any(vec2<bool>(true, arg_2.b.a.x)), ~u_input.c != ~u_input.c, true)));
}

fn func_2() -> vec4<bool> {
    global1 = array<vec2<u32>, 31>();
    var var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~u_input.c, ~min(4294967295u, u_input.c), 56240u), min(vec3<u32>(~49191u, 5761u, ~u_input.c) >> (func_3(Struct_1(global3[_wgslsmith_index_u32(51818u, 12u)], global2.yx, u_input.c, vec3<f32>(global2.x, -947f, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 2188f)), Struct_2(vec3<f32>(-1437f, 471f, -878f), Struct_1(global3[_wgslsmith_index_u32(u_input.c, 12u)], global2.xz, 0u, vec3<f32>(1150f, global2.x, -1354f)))) % vec3<u32>(32u)), firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)))));
    var var_1 = var_0.x;
    let var_2 = Struct_1(!vec4<bool>(true, true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec2_f32(-global2.yz), ~u_input.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1673f, 1405f) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 1474f, -462f), vec3<f32>(151f, global2.x, -562f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 773f, 783f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(216f, global2.x, -446f)))))))));
    let var_3 = !(!var_2.a);
    return vec4<bool>(var_3.x, (-53840i ^ u_input.a) < select(min(global0[_wgslsmith_index_u32(4294967295u, 18u)] >> (24986u % 32u), ~u_input.d.x), global0[_wgslsmith_index_u32(firstTrailingBit(88393u), 18u)], true), var_3.x, select(!(false & all(var_3.yzw)), true, !any(select(var_3, var_3, true))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(!select(global3[_wgslsmith_index_u32(countOneBits(13513u & u_input.c), 12u)], func_2(), global3[_wgslsmith_index_u32(19397u, 12u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xy) * _wgslsmith_f_op_vec2_f32(-global2.xx)), 1u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2443f, global2.x, global2.x) - vec3<f32>(global2.x, global2.x, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 575f, global2.x) - vec3<f32>(-1201f, global2.x, -1975f))))), any(!vec2<bool>(true, arg_1)))));
    global0 = array<i32, 18>();
    let var_1 = Struct_2(var_0.d, var_0);
    var var_2 = Struct_1(!vec4<bool>(true, true, true, var_1.b.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xy) * var_0.d.zx))), ~arg_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))) * vec3<f32>(199f, 1466f, var_0.d.x)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(-373f, 1679f, -531f)))))), Struct_1(global3[_wgslsmith_index_u32(firstTrailingBit(~4294967295u | _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(4294967295u, 4294967295u, var_1.b.c))), 12u)], vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-3206f, var_0.b.x), -116f)), 342f), 4294967295u, _wgslsmith_f_op_vec3_f32(-var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 18u)] >= 0i, select(all(vec2<bool>(true, false)), true | all(vec3<bool>(true, true, false)), false), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(991f, -533f), -712f))), global2.x), u_input.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-430f, -1209f, -217f)))))))));
    let var_1 = ~var_0.c;
    var var_2 = _wgslsmith_f_op_f32(-413f + var_0.b.x);
    let var_3 = func_1(5245i, (~4294967295u > ~(~var_1)) == any(vec3<bool>(!var_0.a.x, any(vec4<bool>(true, true, true, var_0.a.x)), var_0.a.x)), abs(vec3<u32>(20103u, countOneBits(_wgslsmith_sub_u32(var_0.c, 1u)), firstTrailingBit(max(4294967295u, var_0.c)))));
    global1 = array<vec2<u32>, 31>();
    var var_4 = func_1(-24861i, !(!var_3.b.a.x) && true, vec3<u32>(21690u, 1u, ~(~4294967295u >> (func_3(Struct_1(vec4<bool>(false, var_0.a.x, true, false), global2.xz, 55193u, vec3<f32>(887f, 1450f, 799f)), var_3.a, var_3).x % 32u))));
    let var_5 = func_1(1i, (any(vec4<bool>(true, var_4.b.a.x, true, true)) || any(vec3<bool>(var_0.a.x, false, false))) | !var_3.b.a.x, vec3<u32>(select(1u, ~37905u, var_0.a.x), ~41312u, _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(43725u, 10101u, 0u), 7u)], vec2<u32>(4294967295u, ~2880u)))).b;
    global2 = var_4.a;
    var var_6 = func_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(min(abs(45273i), 0i), ~(~u_input.b.x)), u_input.a), all(vec4<bool>(var_0.a.x, true, func_1(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(var_0.c, 18u)]), false && var_0.a.x, vec3<u32>(1u, var_1, 69775u)).b.a.x, true)), (_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 62699u, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(59010u, 1u, 22995u), vec3<u32>(24258u, 54179u, 2587u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_0.c, var_5.c), ~vec3<u32>(39890u, var_0.c, 4294967295u)) % vec3<u32>(32u))) >> (~abs(vec3<u32>(u_input.c, 55370u, 0u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 23071u >> (var_6.b.c % 32u)), 18u)]), 25687i), vec3<i32>(i32(-1i) * -20009i, global0[_wgslsmith_index_u32(22725u, 18u)], ~_wgslsmith_mod_i32(2147483647i, reverseBits(u_input.b.x))), ~(var_0.c ^ ~(~var_4.b.c)));
}

