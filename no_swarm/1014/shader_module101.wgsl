struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: Struct_2 = Struct_2(Struct_1(1322f, -870f, 74107i), true, 259f, Struct_1(-253f, -333f, -26235i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global0 = array<f32, 14>();
    var var_0 = i32(-1i) * -26877i;
    var var_1 = global1.a;
    var var_2 = -firstLeadingBit(u_input.c.x);
    global0 = array<f32, 14>();
    return ~(~(~(firstTrailingBit(vec4<i32>(u_input.b.x, var_1.c, u_input.a.x, u_input.a.x)) >> (abs(vec4<u32>(8455u, arg_0, arg_0, 4294967295u)) % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3;
    let var_1 = !(!global1.b);
    let var_2 = firstTrailingBit(~firstLeadingBit(117650u & arg_3.b) << (_wgslsmith_add_u32(18875u, abs(var_0.b)) % 32u));
    var_0 = arg_3;
    let var_3 = Struct_2(Struct_1(global1.c, -882f, global1.a.c), var_1, _wgslsmith_f_op_f32(ceil(-548f)), Struct_1(_wgslsmith_f_op_f32(-1951f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1155f)), 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 14u)])))), arg_3.a.x));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_3.b), ~arg_3.b, 1u), vec3<u32>(0u, ~4294967295u, arg_1.b & _wgslsmith_mod_u32(11773u, arg_1.b)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_3(u_input.b, func_4(~vec4<i32>(global1.a.c, 0i, u_input.b.x, global1.d.c), Struct_3(-vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), ~arg_0.x, -u_input.c, vec3<f32>(global1.c, -164f, global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, 1228f, global0[_wgslsmith_index_u32(arg_0.x, 14u)], -726f))), func_3(arg_0.x), Struct_3(min(vec3<i32>(-28807i, global1.d.c, global1.d.c), vec3<i32>(global1.a.c, global1.a.c, global1.a.c)), arg_0.x, firstTrailingBit(u_input.b), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], global0[_wgslsmith_index_u32(arg_0.x, 14u)], global0[_wgslsmith_index_u32(arg_0.x, 14u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-972f, global0[_wgslsmith_index_u32(arg_0.x, 14u)], global1.d.b, 340f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 14u)], -176f, -338f, 2354f)))) >> (arg_0.x % 32u), u_input.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-429f, 1955f, 636f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 14u)]), _wgslsmith_f_op_f32(min(global1.a.a, -1000f)), _wgslsmith_f_op_f32(step(global1.c, 175f)), _wgslsmith_f_op_f32(max(global1.d.a, -292f))))));
    return Struct_2(global1.d, var_0.e.x != var_0.e.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 1u, 51901u, 10735u), ~vec4<u32>(arg_0.x, arg_0.x, var_0.b, arg_0.x)), var_0.b), arg_0.x), 14u)], Struct_1(_wgslsmith_div_f32(-905f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f))))), 1000f, select(u_input.c.x, _wgslsmith_sub_i32(1i, 2147483647i), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, global1.b, true, global1.b), vec4<bool>(false, global1.b, false, global1.b))))));
}

fn func_1() -> f32 {
    let var_0 = 492f;
    var var_1 = func_2(reverseBits(vec3<u32>(~(32068u << (0u % 32u)), ~1u, _wgslsmith_div_u32(1u, 1u))));
    var_1 = func_2(~(~firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
    return var_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.b, ~countOneBits(1u), -u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-222f))), _wgslsmith_f_op_f32(abs(539f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.b, 369f), global1.d.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), global0[_wgslsmith_index_u32(1u, 14u)]), any(!vec3<bool>(global1.b, global1.b, false))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-174f + 571f))) - global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 10083u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_f_op_f32(441f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28691u, 14u)] * global0[_wgslsmith_index_u32(1u, 14u)]), func_2(vec3<u32>(0u, 115689u, 0u)).a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1459f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] + global1.d.b) + _wgslsmith_f_op_f32(-global1.a.a)))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-511f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1167f * -1070f), _wgslsmith_f_op_f32(step(var_0.d.x, 1000f)))), -391f, -40251i), var_0.a.x == 84009i, global0[_wgslsmith_index_u32(~var_0.b, 14u)], func_2(vec3<u32>(~var_0.b | (42658u | var_0.b), _wgslsmith_mult_u32(~var_0.b, ~0u), max(~1u, 48149u))).d);
    var var_1 = Struct_3(-_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(-1i) * -var_0.a), var_0.b, u_input.b, _wgslsmith_f_op_vec3_f32(var_0.e.wwy - _wgslsmith_f_op_vec3_f32(min(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(global1.c - global1.a.a), _wgslsmith_f_op_f32(-var_0.e.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a, 914f, -669f, 2033f) - var_0.e))))));
    let var_2 = func_2(~vec3<u32>(var_1.b, 56333u, var_1.b));
    var var_3 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 26992i, var_2.a.c), var_0.a, -(var_0.a >> (vec3<u32>(0u, 29581u, 0u) % vec3<u32>(32u)))), vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, -1i, 0i)), countOneBits(~var_1.a.x), var_2.d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1382f * global0[_wgslsmith_index_u32(55787u, 14u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e.x, -899f, -213f, var_1.e.x), _wgslsmith_f_op_vec4_f32(-var_0.e)))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - var_0.d.x), _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_1.b, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -719f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.d.b * 135f))), var_1.e.x)), vec4<i32>(u_input.a.x, var_0.c.x, global1.d.c, -(~global1.a.c & reverseBits(var_3.x))), reverseBits(reverseBits(vec4<u32>(0u, var_1.b, 23183u, var_1.b) ^ vec4<u32>(62377u, 0u, 38642u, var_1.b))) & vec4<u32>(var_1.b & var_1.b, 86024u, var_1.b, ~(~var_1.b)));
}

