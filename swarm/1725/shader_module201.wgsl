struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-1054f, 477f, 578f, 320f), vec4<f32>(-1663f, 1652f, 421f, 356f), vec4<f32>(193f, 385f, -553f, -935f), vec4<f32>(1155f, 270f, 453f, -1732f), vec4<f32>(-647f, -390f, -257f, -1464f), vec4<f32>(691f, -995f, -1000f, 1000f), vec4<f32>(203f, 235f, -738f, 192f), vec4<f32>(-1044f, 1158f, -358f, -1148f), vec4<f32>(-760f, 687f, 716f, 1398f));

var<private> global1: array<i32, 15> = array<i32, 15>(0i, -36240i, 2147483647i, i32(-2147483648), -1i, -58844i, i32(-2147483648), 0i, 27310i, 0i, 45516i, -61464i, 0i, 0i, -7077i);

var<private> global2: vec3<f32>;

var<private> global3: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    let var_0 = u_input.c;
    var var_1 = Struct_1(vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), ~22254u, arg_2, global1[_wgslsmith_index_u32(arg_1.b, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)]);
    let var_2 = arg_1.e;
    return arg_1.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = -(~(-52019i));
    var var_1 = Struct_1(select(func_3(1776f, Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), ~arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, -1000f, arg_2)), _wgslsmith_sub_i32(arg_3.x, 51159i), ~2147483647i), vec3<f32>(1106f, 1493f, _wgslsmith_f_op_f32(max(-1713f, arg_2)))), vec4<bool>((global2.x <= 753f) & true, true, arg_1 >= 0u, true), true), _wgslsmith_mod_u32(u_input.c.x, min(u_input.a, 82266u) | (47883u ^ _wgslsmith_mod_u32(u_input.c.x, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-319f, arg_0.x, 1081f), vec3<f32>(global2.x, -476f, arg_0.x), true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, arg_2, -1008f), vec3<f32>(arg_2, -694f, arg_0.x))))))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c)), 15u)], _wgslsmith_dot_vec4_i32(vec4<i32>(16711i, ~(-2147483647i), _wgslsmith_add_i32(0i, reverseBits(18219i)), abs(arg_3.x)), arg_3));
    var var_2 = Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, !select(var_1.a.x, var_1.a.x, var_1.a.x != true), true), 31679u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_2, global2.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.c, var_1.c), vec3<f32>(-830f, global2.x, 1349f), true)))), global1[_wgslsmith_index_u32(firstTrailingBit(arg_1), 15u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_1.d, -25092i, 1i, var_1.e) >> (vec4<u32>(1u, arg_1, arg_1, 58632u) % vec4<u32>(32u))), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(arg_1, 15u)] >> (107431u % 32u), reverseBits(-48964i), -global1[_wgslsmith_index_u32(90634u, 15u)]) ^ u_input.b));
    let var_3 = 12985u;
    var_2 = Struct_1(var_1.a, _wgslsmith_sub_u32(~1u, ~firstLeadingBit(var_3) ^ _wgslsmith_add_u32(0u, reverseBits(4294967295u))), _wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_mod_i32(reverseBits(-1i), ~firstLeadingBit(u_input.b.x)) >> ((var_2.b ^ 1u) % 32u), var_2.d);
    return Struct_1(var_1.a, 32233u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(-1000f, 539f), -910f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-281f, global2.x, global2.x))) * vec3<f32>(var_2.c.x, -136f, _wgslsmith_f_op_f32(237f * _wgslsmith_div_f32(var_2.c.x, -556f)))), ~(i32(-1i) * -8584i), ~_wgslsmith_add_i32(-46738i, 1i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    global3 = u_input.d.x;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(646f * arg_0.c.x), _wgslsmith_f_op_f32(-global2.x));
    var var_1 = Struct_1(arg_0.a, 1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(213f + -355f))), _wgslsmith_f_op_f32(trunc(955f))) * _wgslsmith_div_vec3_f32(arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(global2.x * arg_0.c.x), -2090f, _wgslsmith_div_f32(786f, 841f)))), -1i, i32(-1i) * -(2147483647i & global1[_wgslsmith_index_u32(arg_0.b | 15124u, 15u)]));
    var var_2 = Struct_1(arg_0.a, ~select(~abs(var_1.b), var_1.b, any(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)) + arg_0.c))), ~reverseBits(u_input.b.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-1i, 1i, 1i, arg_1.x))) ^ u_input.b.x, 1i));
    var var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-596f)), 1487f), _wgslsmith_sub_u32(arg_0.b, _wgslsmith_mult_u32(var_1.b, u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-arg_0.c.x)))), firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~u_input.b, ~u_input.b), min(u_input.b, vec4<i32>(58217i, 1i, -863i, 1i)) << ((vec4<u32>(1u, u_input.c.x, 65398u, arg_0.b) & vec4<u32>(arg_0.b, 0u, 4294967295u, 0u)) % vec4<u32>(32u)))));
    return -_wgslsmith_clamp_vec2_i32(select(arg_1, arg_1, vec2<bool>(true, var_2.a.x)) << (~(vec2<u32>(var_3.b, u_input.a) & vec2<u32>(u_input.a, var_1.b)) % vec2<u32>(32u)), firstLeadingBit(reverseBits(arg_1)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-7790i, arg_1.x), select(~vec2<i32>(var_3.d, var_2.e), vec2<i32>(-1i, var_2.d), vec2<bool>(var_2.a.x, false)), _wgslsmith_mult_vec2_i32(u_input.d.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(-16685i, -21276i), arg_1))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = Struct_1(select(vec4<bool>(!arg_1, true, true & !arg_1, !(true | arg_1)), !(!select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1)), select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), select(!vec4<bool>(true, arg_1, false, arg_1), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), arg_1), select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, false))), select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), false), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(true, false, arg_1, false), true), !arg_1))), 25908u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(612f, global2.x, _wgslsmith_f_op_f32(global2.x + -1090f)))), _wgslsmith_dot_vec2_i32(arg_2.yx & (arg_2.zz ^ u_input.b.yz), func_4(func_2(global2.zy, u_input.c.x, _wgslsmith_div_f32(-679f, 1905f), -arg_0), arg_2.xy)), 12040i);
    var var_2 = 432f;
    let var_3 = -87394i;
    let var_4 = Struct_1(!select(!func_3(var_1.c.x, Struct_1(vec4<bool>(false, true, arg_1, arg_1), u_input.a, var_1.c, arg_0.x, 7194i), var_1.c), !var_1.a, !(!var_1.a)), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-856f)) + _wgslsmith_f_op_f32(select(var_1.c.x, 102f, false))), _wgslsmith_div_f32(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-136f * var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x))), 977f), ~(-9694i), _wgslsmith_sub_i32(firstLeadingBit(34169i), 1i));
    return Struct_1(vec4<bool>(true, true, true, true), ~(~firstTrailingBit(0u)), vec3<f32>(var_1.c.x, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) + vec2<f32>(298f, -1057f)), 8502u, _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(step(-855f, var_1.c.x))), firstTrailingBit(~vec4<i32>(-81114i, 0i, 7681i, var_3))).c.x, -1000f), var_1.e, var_3);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = vec4<i32>(47340i, func_4(func_1(vec4<i32>(_wgslsmith_add_i32(1i, arg_3.d), ~arg_1.x, 20499i, global1[_wgslsmith_index_u32(1u, 15u)] << (u_input.a % 32u)), arg_2.a.x, -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.e, 1i, 1i), vec3<i32>(arg_2.d, -1i, arg_1.x), vec3<i32>(arg_0.d, -1i, 0i)), arg_2.e), arg_1.wx).x, min(arg_1.x, 55343i), arg_1.x);
    let var_1 = ~(-1i);
    global3 = _wgslsmith_div_i32(0i, -1355i | arg_2.e);
    var var_2 = ~0i;
    global0 = array<vec4<f32>, 9>();
    return _wgslsmith_mod_u32(~(~(u_input.c.x | 1u)), arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<vec4<f32>, 9>();
    var_0 = false;
    global2 = vec3<f32>(154f, global2.x, 1355f);
    var var_1 = Struct_1(vec4<bool>(!(any(vec2<bool>(true, true)) | true), true, !select(true, all(vec2<bool>(true, true)), true), true), _wgslsmith_div_u32(_wgslsmith_sub_u32(func_5(func_1(u_input.b, false, u_input.d, 0i), u_input.b, Struct_1(vec4<bool>(true, false, true, false), 22966u, vec3<f32>(646f, -334f, -2163f), -1i, u_input.b.x), Struct_1(vec4<bool>(true, true, false, true), 0u, vec3<f32>(-494f, -1696f, global2.x), global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), ~_wgslsmith_add_u32(113526u, 1u)), min(27402u, 4294967295u)), vec3<f32>(-317f, global2.x, global2.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(13971i, ~(-1i), u_input.b.x), _wgslsmith_clamp_vec3_i32(min(u_input.d, u_input.d), max(u_input.d, vec3<i32>(global1[_wgslsmith_index_u32(0u, 15u)], 1i, -4766i)), vec3<i32>(u_input.b.x, 82549i, global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), func_2(func_2(vec2<f32>(global2.x, global2.x), 1u, 1845f, u_input.b).c.xy, _wgslsmith_div_u32(60809u, 13743u), 1f, -u_input.b).a.x), _wgslsmith_div_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], -68118i, u_input.b.x), min(vec3<i32>(u_input.d.x, -2147483647i, 2147483647i), vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)) >> (~vec3<u32>(0u, u_input.c.x, 4294967295u) % vec3<u32>(32u)))), -6741i);
    let var_2 = firstLeadingBit(~(~func_1(vec4<i32>(0i, 7460i, 22135i, global1[_wgslsmith_index_u32(8385u, 15u)]), var_1.a.x != var_1.a.x, vec3<i32>(var_1.d, -33293i, -6226i), u_input.b.x).b));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_2, 15u)], _wgslsmith_f_op_f32(-var_1.c.x), countOneBits(~vec3<u32>(var_2, 0u, var_2)) >> (min(firstLeadingBit(abs(vec3<u32>(0u, var_1.b, 23518u))), select(vec3<u32>(4294967295u, var_1.b, var_2), vec3<u32>(4294967295u, 4294967295u, u_input.a), var_1.a.ywx)) % vec3<u32>(32u)));
}

