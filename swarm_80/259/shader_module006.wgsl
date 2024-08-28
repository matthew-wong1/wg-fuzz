struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec4<i32>(-3017i, 2147483647i, -16826i, -65113i)), Struct_1(vec4<i32>(1i, -1i, -1i, -51831i)), Struct_1(vec4<i32>(38021i, i32(-2147483648), -33333i, i32(-2147483648)))), Struct_2(Struct_1(vec4<i32>(18601i, 0i, 8073i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), 40962i, 27466i, 1i)), Struct_1(vec4<i32>(42749i, 0i, -964i, 1i))));

var<private> global3: u32;

var<private> global4: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec4<u32> {
    global0 = Struct_1(vec4<i32>(-27329i, 17679i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.b.a.x, 2147483647i), 0i) >> (u_input.c % 32u), _wgslsmith_clamp_i32(~_wgslsmith_add_i32(-24729i, 0i), ~_wgslsmith_mult_i32(0i, -2147483647i), -64099i)));
    var var_0 = Struct_1(global0.a);
    var var_1 = select(select(select(!arg_2.yww, vec3<bool>(all(vec3<bool>(arg_2.x, global4[_wgslsmith_index_u32(global1.x, 1u)], arg_2.x)), u_input.c >= 4294967295u, !arg_2.x), true), !arg_2.xzy, vec3<bool>(any(vec3<bool>(true, false, true)) & false, global4[_wgslsmith_index_u32(min(0u, u_input.d.x), 1u)], all(vec2<bool>(arg_2.x, arg_2.x)))), !(!arg_2.wwx), true);
    global4 = array<bool, 1>();
    let var_2 = 42285u;
    return ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2, global1.x, max(4294967295u, 40290u), ~u_input.d.x), vec4<u32>(global1.x, _wgslsmith_mult_u32(30926u, 9590u ^ u_input.d.x), 40329u, u_input.c));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-599f, arg_1), _wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(round(arg_1))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f * 1080f)), _wgslsmith_f_op_f32(1000f * 1257f), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 615f, arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 619f, arg_1)))))), vec4<bool>(!(!all(vec4<bool>(global4[_wgslsmith_index_u32(131739u, 1u)], true, global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(u_input.c, 1u)]))), true, !global4[_wgslsmith_index_u32(3019u, 1u)], global4[_wgslsmith_index_u32(global1.x, 1u)])));
    let var_1 = all(vec3<bool>(all(vec3<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(global1.x, 1u)], false)), !global4[_wgslsmith_index_u32(arg_0.x, 1u)], global4[_wgslsmith_index_u32(global1.x, 1u)] | global4[_wgslsmith_index_u32(arg_0.x, 1u)])), global4[_wgslsmith_index_u32(0u, 1u)], true));
    var var_2 = !global4[_wgslsmith_index_u32(~0u, 1u)];
    var var_3 = 1i;
    let var_4 = arg_3.a;
    return abs(_wgslsmith_div_vec4_u32(max(~vec4<u32>(arg_0.x, 57910u, 1u, 26929u), ~(~vec4<u32>(91170u, 0u, global1.x, 13941u))), vec4<u32>(global1.x, firstTrailingBit(42767u), u_input.d.x, ~(~global1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: f32) -> vec4<f32> {
    global3 = ~(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(global1.wx, u_input.d)), ~abs(vec2<u32>(u_input.c, 111988u))) ^ ~reverseBits(_wgslsmith_mult_u32(62732u, global1.x)));
    let var_0 = 9638u;
    global1 = ~(select(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global1.x, 16610u, 0u, 49141u)), func_2(arg_0, Struct_2(Struct_1(vec4<i32>(-2517i, u_input.b.x, 0i, u_input.a)), Struct_1(vec4<i32>(0i, 40363i, u_input.b.x, -2147483647i)), Struct_1(vec4<i32>(global0.a.x, -22990i, u_input.b.x, u_input.a))), vec4<bool>(arg_2, true, arg_2, arg_2), vec3<i32>(u_input.b.x, -62102i, global0.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, var_0, 7884u, var_0) << (vec4<u32>(global1.x, u_input.d.x, var_0, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, var_0, 1u), vec4<u32>(var_0, 24767u, 31230u, 1u))), vec4<bool>(true, true, true, true)) ^ ~vec4<u32>(1u, abs(global1.x), ~global1.x, max(global1.x, 87779u)));
    global1 = _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 83204u, var_0, 11660u), min(~vec4<u32>(4294967295u, global1.x, u_input.d.x, 0u), func_2(vec3<f32>(-637f, -1000f, -1763f), Struct_2(Struct_1(global0.a), Struct_1(vec4<i32>(1i, -2147483647i, 1i, u_input.b.x)), Struct_1(vec4<i32>(u_input.a, -1i, u_input.a, 1i))), vec4<bool>(true, arg_2, arg_2, true), global0.a.yxx))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, u_input.d.x, 14183u, var_0), reverseBits(vec4<u32>(58655u, var_0, 0u, var_0))) | (func_3(global1.wz, -1213f, Struct_1(global0.a), Struct_2(Struct_1(vec4<i32>(-44179i, u_input.a, u_input.b.x, global0.a.x)), Struct_1(global0.a), Struct_1(vec4<i32>(global0.a.x, global0.a.x, -1i, global0.a.x)))) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(global1.x, var_0, var_0, u_input.d.x))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(81435u, 28447u, 13410u, u_input.c), vec4<u32>(65964u, 85487u, 1u, var_0)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, 47690u, global1.x, var_0)), vec4<u32>(var_0, u_input.d.x, u_input.c, global1.x)))));
    let var_1 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1224f, arg_0.x, -1000f))), vec4<f32>(-214f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(trunc(arg_1)))))));
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global2 = array<Struct_2, 2>();
    let var_0 = select(!vec3<bool>(true, all(select(vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 1u)], true), vec3<bool>(global4[_wgslsmith_index_u32(54170u, 1u)], global4[_wgslsmith_index_u32(u_input.c, 1u)], global4[_wgslsmith_index_u32(18825u, 1u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], false, true))), global4[_wgslsmith_index_u32(global1.x, 1u)]), select(select(!select(vec3<bool>(global4[_wgslsmith_index_u32(30515u, 1u)], global4[_wgslsmith_index_u32(u_input.d.x, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<bool>(global4[_wgslsmith_index_u32(11782u, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)], false), true), select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(71801u, 1u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(17121u, 1u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(82025u, 1u)], true)), vec3<bool>(true, global4[_wgslsmith_index_u32(48866u, 1u)], true), any(vec4<bool>(global4[_wgslsmith_index_u32(global1.x, 1u)], global4[_wgslsmith_index_u32(49627u, 1u)], true, false))), !global4[_wgslsmith_index_u32(63790u, 1u)]), select(vec3<bool>(!global4[_wgslsmith_index_u32(4294967295u, 1u)], any(vec3<bool>(global4[_wgslsmith_index_u32(global1.x, 1u)], true, false)), global4[_wgslsmith_index_u32(0u, 1u)] || true), !vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(0u, 1u)]), true), !(global4[_wgslsmith_index_u32(global1.x, 1u)] && true)), vec3<bool>(true, all(!(!vec3<bool>(global4[_wgslsmith_index_u32(global1.x, 1u)], true, global4[_wgslsmith_index_u32(u_input.d.x, 1u)]))), false));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(global0.a, global0.a | _wgslsmith_add_vec4_i32(global0.a, -vec4<i32>(global0.a.x, global0.a.x, 1i, u_input.a))));
    global4 = array<bool, 1>();
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, -1i, 38307i)) ^ firstLeadingBit(vec4<i32>(reverseBits(18934i), abs(global0.a.x), -10583i, ~0i)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(2019f, -139f, 563f), -1853f, 4294967295u == global1.x, _wgslsmith_f_op_f32(803f + 635f))))), 0u, firstLeadingBit(0u), reverseBits(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 154f, 1000f) - vec3<f32>(992f, 512f, 891f))), global2[_wgslsmith_index_u32(~u_input.c, 2u)], select(!vec4<bool>(true, false, global4[_wgslsmith_index_u32(84069u, 1u)], true), !vec4<bool>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(u_input.d.x, 1u)], true), global4[_wgslsmith_index_u32(global1.x, 1u)]), vec3<i32>(u_input.b.x, 1i, ~(-26120i))).x));
    let var_0 = ~vec4<u32>(global1.x, countOneBits(select(18897u, 50703u, true)) & countOneBits(u_input.d.x), ~global1.x, u_input.d.x);
    var var_1 = !select(select(vec4<bool>(!global4[_wgslsmith_index_u32(27002u, 1u)], select(false, global4[_wgslsmith_index_u32(1u, 1u)], true), true, !global4[_wgslsmith_index_u32(6848u, 1u)]), vec4<bool>(u_input.a != 2147483647i, global4[_wgslsmith_index_u32(u_input.c, 1u)], global4[_wgslsmith_index_u32(~global1.x, 1u)], global1.x >= 1545u), global4[_wgslsmith_index_u32(0u, 1u)]), select(!select(vec4<bool>(true, global4[_wgslsmith_index_u32(global1.x, 1u)], global4[_wgslsmith_index_u32(1265u, 1u)], false), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 1u)], global4[_wgslsmith_index_u32(13836u, 1u)], false), vec4<bool>(global4[_wgslsmith_index_u32(13478u, 1u)], false, global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(var_0.x, 1u)])), select(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], false, true), select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(var_0.x, 1u)], true), vec4<bool>(global4[_wgslsmith_index_u32(30778u, 1u)], true, global4[_wgslsmith_index_u32(4294967295u, 1u)], true), global4[_wgslsmith_index_u32(var_0.x, 1u)]), vec4<bool>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(u_input.d.x, 1u)], false, false)), vec4<bool>(global4[_wgslsmith_index_u32(~17193u, 1u)], true, global4[_wgslsmith_index_u32(4294967295u, 1u)] || false, true)), select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 1u)], true, any(vec2<bool>(global4[_wgslsmith_index_u32(3726u, 1u)], global4[_wgslsmith_index_u32(40896u, 1u)])), true), vec4<bool>(!global4[_wgslsmith_index_u32(var_0.x, 1u)], !global4[_wgslsmith_index_u32(u_input.d.x, 1u)], !global4[_wgslsmith_index_u32(global1.x, 1u)], true), any(vec2<bool>(false, true))));
    var var_2 = u_input.a;
    let var_3 = Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(global0.a, _wgslsmith_add_vec4_i32(global0.a, select(vec4<i32>(8731i, global0.a.x, global0.a.x, u_input.b.x), global0.a, vec4<bool>(var_1.x, true, var_1.x, false))))));
    global2 = array<Struct_2, 2>();
    var var_4 = _wgslsmith_clamp_vec3_i32(min(select(_wgslsmith_mult_vec3_i32(var_3.a.wxy, var_3.a.xww), min(abs(vec3<i32>(66401i, var_3.a.x, -2435i)), -vec3<i32>(2590i, 1i, var_3.a.x)), vec3<bool>(global4[_wgslsmith_index_u32(1u, 1u)], false, true)), ~(vec3<i32>(u_input.a, 51156i, 1i) ^ u_input.b)), _wgslsmith_mult_vec3_i32(u_input.b, select(vec3<i32>(reverseBits(39510i), -var_3.a.x, 0i), global0.a.ywz, true)), vec3<i32>(u_input.a, var_3.a.x, i32(-1i) * -countOneBits(-42646i)));
    var var_5 = 1970f;
    let var_6 = Struct_2(var_3, var_3, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~var_0);
}

