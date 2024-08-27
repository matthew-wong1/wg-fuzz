struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<i32, 14> = array<i32, 14>(0i, -930i, 34064i, 59096i, 43844i, i32(-2147483648), -21686i, -38678i, -84125i, 1i, -1i, -9521i, -3826i, 22317i);

var<private> global3: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = Struct_1(1u, global1.b);
    var_0 = Struct_1(reverseBits(~(~(~var_0.b.x))), var_0.b);
    let var_1 = true;
    global3 = var_0.a;
    let var_2 = Struct_1(_wgslsmith_mod_u32(4294967295u, 54849u), _wgslsmith_mult_vec3_u32(global1.b, global1.b));
    return global1.a & u_input.b;
}

fn func_3() -> u32 {
    let var_0 = ~66136u;
    let var_1 = all(vec4<bool>(false, !any(vec2<bool>(true, false)), !all(vec2<bool>(false, false)), (83470u != global1.b.x) | true)) & !all(vec4<bool>(true, true, true, true));
    let var_2 = ~abs(global1.b.xz);
    let var_3 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 0u, global1.a, var_2.x), max(vec4<u32>(global1.b.x, 1u, 0u, global1.b.x), vec4<u32>(40200u, global1.a, 49967u, global1.a)), vec4<u32>(global1.b.x, u_input.b, global1.a, u_input.b) & vec4<u32>(0u, var_0, 1u, global1.a)), vec4<u32>(~4294967295u, select(u_input.b, 1u, false), global1.a, ~1u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, u_input.b, global1.a), vec4<u32>(var_0, var_2.x, 0u, var_0) >> (vec4<u32>(var_0, 1u, global1.a, var_2.x) % vec4<u32>(32u)))));
    global0 = 0u;
    return 93947u;
}

fn func_1() -> vec3<u32> {
    var var_0 = vec2<u32>(global1.a, ~(~_wgslsmith_add_u32(u_input.b, u_input.b)));
    let var_1 = select(vec2<bool>(all(vec4<bool>(true, all(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, false)), global1.b.x >= global1.b.x)), true), !vec2<bool>(true, any(vec2<bool>(true, true))), !any(vec2<bool>(true, 4294967295u <= u_input.b)));
    global0 = 20349u;
    var var_2 = Struct_2(~func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-331f)) * 1f), var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), 1054f, -1049f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-407f, -639f, -127f) * vec3<f32>(-377f, -532f, 487f)))))), Struct_1(_wgslsmith_dot_vec2_u32(~(~global1.b.zz), _wgslsmith_mult_vec2_u32(global1.b.yz, global1.b.zy)), select(vec3<u32>(1u, ~32608u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 28539u, var_0.x), vec3<u32>(global1.b.x, global1.b.x, 1296u)), true)));
    let var_3 = _wgslsmith_mult_u32(~func_3() ^ global1.a, func_2(var_2.b.x, !(!all(vec4<bool>(true, true, true, false)))));
    return vec3<u32>(26284u, min(max(~global1.b.x, 7578u), _wgslsmith_mult_u32(1u, ~(~0u))), ~(~(~137u)) | _wgslsmith_clamp_u32(18068u, ~var_3, 1u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = ~arg_2.b.x;
    global1 = arg_2;
    var var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1394f, -1570f, -150f), vec3<f32>(-1000f, 1570f, 1323f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, -386f, 142f) + vec3<f32>(1130f, 1009f, -298f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -575f, 554f) - vec3<f32>(-323f, 1391f, -642f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1742f))), -1534f, _wgslsmith_f_op_f32(floor(-1199f))))));
    let var_2 = countOneBits(reverseBits(-_wgslsmith_add_vec2_i32(-u_input.a, u_input.a)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(any(vec4<bool>(select(true, true, false), false, true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)))), Struct_1(~(~1u), global1.b), Struct_1(~(~4294967295u), _wgslsmith_div_vec3_u32(func_1(), ~vec3<u32>(u_input.b, u_input.b, 0u))));
    var_0 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(273f, -1414f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(239f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(149f, -764f), 1664f, false))), Struct_1(var_0.a, vec3<u32>(0u, ~(u_input.b | global1.b.x), _wgslsmith_add_u32(global1.a, u_input.b))), func_4(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), func_4(true, func_4(true, func_4(true, Struct_1(91471u, var_0.b), Struct_1(114427u, var_0.b)), func_4(true, Struct_1(2845u, var_0.b), Struct_1(92636u, vec3<u32>(global1.b.x, global1.b.x, 27858u)))), Struct_1(_wgslsmith_sub_u32(0u, var_0.b.x), ~global1.b)), func_4(false, Struct_1(~1u, vec3<u32>(u_input.b, 19773u, global1.b.x)), Struct_1(var_0.b.x << (33131u % 32u), _wgslsmith_add_vec3_u32(vec3<u32>(53892u, 8480u, var_0.b.x), var_0.b)))));
    var var_1 = firstTrailingBit(_wgslsmith_div_u32(func_3(), ~(~u_input.b))) < 4294967295u;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 979f, 178f), vec3<f32>(1000f, 126f, 194f), true)) * vec3<f32>(1171f, -402f, -593f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))))) + vec3<f32>(1246f, -517f, -1304f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-848f, 1007f, -1070f), vec3<f32>(-807f, 2895f, 1393f), vec3<bool>(false, true, true))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1180f, 1490f, -1252f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, 1233f, -1853f))))))));
    let var_3 = Struct_2(u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1656f, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-492f * -229f)), var_2.x)), func_4(true, Struct_1(~(0u & global1.a), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, var_0.a, u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, 0u), global1.b))), func_4(!(var_2.x < var_2.x), Struct_1(~4294967295u, vec3<u32>(var_0.b.x, 23449u, 4294967295u)), func_4(true, Struct_1(var_0.a, vec3<u32>(var_0.a, 1u, global1.a)), func_4(true, Struct_1(u_input.b, var_0.b), Struct_1(u_input.b, global1.b))))));
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-891f, -786f, var_2.x, 272f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-523f, 1096f, var_2.x, var_2.x))), !(u_input.a.x <= 1i))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.b.x, var_2.x, -972f, 779f))) - vec4<f32>(var_3.b.x, -368f, -148f, 814f)))), 731f, -_wgslsmith_add_i32(u_input.a.x, -_wgslsmith_sub_i32(u_input.a.x, global2[_wgslsmith_index_u32(var_4.a, 14u)])));
}

