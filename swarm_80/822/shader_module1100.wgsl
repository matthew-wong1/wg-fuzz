struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<vec2<u32>, 15>();
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(929f * -268f), true))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1421f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, -1660f, -1000f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(650f, -1000f, 286f), vec3<f32>(568f, 1215f, -1000f))))))), vec3<bool>(!((global1.x > global1.x) == true), true, ~arg_0.x < arg_0.x));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(func_2(vec3<u32>(~(~57099u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 99297u, 63234u, 55071u), vec4<u32>(2513u, 0u, 36073u, 32326u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 38637u, 1u, 96825u), vec4<u32>(1u, 31140u, 27039u, 24376u))), reverseBits(88191u))), func_2(~vec3<u32>(1u, 1u, 1u)).c);
    var var_1 = ~(41349u << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(44669u, 15499u, 35305u), vec3<u32>(1u, 1u, 1u)), 26287u) % 32u));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1274f - var_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x * -225f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1338f * var_0.a.b.x), _wgslsmith_f_op_f32(max(var_0.a.b.x, -2072f)), _wgslsmith_f_op_f32(var_0.a.a.x + var_0.a.a.x), _wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.a.x, var_0.a.b.x, var_0.a.a.x, 210f), vec4<f32>(var_0.a.b.x, 1518f, 509f, var_0.a.a.x))) * vec4<f32>(-1009f, var_0.a.a.x, var_0.a.b.x, 696f))))));
    return vec4<bool>(var_0.b.x, var_0.a.c.x == true, 11022i >= ~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.a, global1.x, -1i), firstTrailingBit(vec4<i32>(global1.x, -3680i, -2866i, -2147483647i))), select(all(select(!vec3<bool>(var_0.a.c.x, var_0.b.x, var_0.b.x), !var_0.a.c, vec3<bool>(var_0.a.c.x, false, var_0.b.x))), var_0.a.c.x, true));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = func_2(vec3<u32>(1u, 3607u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(0u, 4294967295u))), 4294967295u)));
    global0 = array<vec2<u32>, 15>();
    let var_1 = select(!vec4<bool>(true, true, var_0.c.x, var_0.c.x), select(!select(select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x), vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, var_0.c.x, true), vec4<bool>(var_0.c.x, false, var_0.c.x, false), var_0.c.x)), func_3(), select(!vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), !select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.c.x, false, var_0.c.x)), vec4<bool>(true, var_0.c.x, false, true))), select(vec4<bool>(all(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)), !var_0.c.x, all(vec2<bool>(false, true)), false), select(select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, true, var_0.c.x, false), vec4<bool>(var_0.c.x, true, false, false), vec4<bool>(false, true, var_0.c.x, var_0.c.x))), select(select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec4<bool>(false, var_0.c.x, true, true)), !vec4<bool>(true, var_0.c.x, true, true), func_3()), vec4<bool>(var_0.c.x, true, all(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), var_0.c.x)), select(!(!vec4<bool>(var_0.c.x, var_0.c.x, true, false)), !(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)), var_0.c.x)));
    global0 = array<vec2<u32>, 15>();
    global1 = vec2<i32>(-35579i, arg_1.x | arg_1.x);
    return Struct_3(_wgslsmith_mult_i32(2147483647i, 0i), func_2(vec3<u32>(1u << (1u % 32u), 1u, 1u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = firstTrailingBit(~select(vec3<u32>(_wgslsmith_div_u32(76780u, 4294967295u), 1u, 75500u), ~vec3<u32>(53240u, 0u, 8030u), true));
    let var_1 = arg_3;
    var var_2 = -countOneBits(vec3<i32>(44155i, 1i, abs(abs(u_input.a))));
    return var_2.x;
}

fn func_5(arg_0: i32) -> bool {
    global1 = vec2<i32>(_wgslsmith_mult_i32(0i, global1.x), 1i);
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(select(38819u, 0u, true), _wgslsmith_div_u32(4294967295u, 41391u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(global0[_wgslsmith_index_u32(19826u, 15u)]), firstLeadingBit(vec2<u32>(15287u, 38343u))), select(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(33708u, 15u)], vec2<u32>(1u, 53061u)), global0[_wgslsmith_index_u32(81483u, 15u)] & global0[_wgslsmith_index_u32(0u, 15u)], any(vec2<bool>(true, false)))), 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(~4294967295u, _wgslsmith_mod_u32(26869u, 4417u), abs(89588u), _wgslsmith_div_u32(1u, 26745u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 31112u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(0u, _wgslsmith_div_u32(4294967295u, 45147u), _wgslsmith_sub_u32(50058u, 40357u), ~0u))));
    var var_1 = -48687i;
    var_1 = func_4(vec2<bool>(true, true), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, arg_0, 2147483647i), vec3<i32>(arg_0, arg_0, global1.x), vec3<i32>(global1.x, global1.x, global1.x))).b.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(401f)), _wgslsmith_f_op_f32(ceil(1930f)), true))), 563f), Struct_3(-2147483647i, Struct_2(vec2<f32>(-116f, _wgslsmith_f_op_f32(floor(-645f))), vec3<f32>(826f, _wgslsmith_f_op_f32(644f + 464f), func_2(var_0.xyx).a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), all(vec3<bool>(false, false, true))))));
    return !(!any(vec3<bool>(true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!func_5(func_4(vec2<bool>(true, true), global1.x, -1335f, func_1(375f, vec3<i32>(global1.x, global1.x, u_input.a)))), 2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(622f, 1000f, 987f, -411f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, 1000f, -1326f, 1000f) * vec4<f32>(-1000f, 1169f, 1900f, 161f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1182f, -127f, 1321f, 334f)) - vec4<f32>(-739f, 2004f, 1286f, 918f))), true)), func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(-1047f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.x)), var_0.c.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -918f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -845f)))), var_0.c, select(max(vec3<u32>(48137u, ~4294967295u, ~0u), vec3<u32>(_wgslsmith_mult_u32(1u, 56248u), 28627u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global0[_wgslsmith_index_u32(0u, 15u)]))), ~vec3<u32>(1u, 1u, 1u), !(select(48011u, 4294967295u, false) >= _wgslsmith_mult_u32(1u, 4294967295u))));
}

