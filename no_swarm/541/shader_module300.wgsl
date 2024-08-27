struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1094f;

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, vec2<i32>(1i, -1i)));

var<private> global2: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(681f, 498f), vec2<f32>(-1016f, 1116f), vec2<f32>(277f, 473f), vec2<f32>(-317f, 1000f), vec2<f32>(1271f, -612f), vec2<f32>(-769f, 828f), vec2<f32>(1535f, 1554f), vec2<f32>(-1023f, -401f), vec2<f32>(278f, 1445f), vec2<f32>(-1003f, 908f), vec2<f32>(1223f, 771f), vec2<f32>(1458f, -1000f), vec2<f32>(-295f, 1230f), vec2<f32>(886f, -746f), vec2<f32>(-913f, -818f), vec2<f32>(319f, -485f), vec2<f32>(-930f, 2348f), vec2<f32>(-185f, 1767f), vec2<f32>(886f, -994f), vec2<f32>(-1992f, -244f), vec2<f32>(1632f, -1374f), vec2<f32>(2522f, -1253f), vec2<f32>(1044f, 232f), vec2<f32>(-288f, -149f), vec2<f32>(-275f, 2379f), vec2<f32>(-107f, 1741f), vec2<f32>(-1454f, 1000f), vec2<f32>(1483f, -1928f), vec2<f32>(-1515f, -410f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<vec2<f32>, 29>();
    let var_0 = firstLeadingBit(countOneBits(vec4<i32>(-1i) * -(~vec4<i32>(global1.a.b.x, 1i, global1.a.b.x, u_input.a.x))));
    let var_1 = _wgslsmith_sub_vec3_u32(~(~firstTrailingBit(~vec3<u32>(16752u, 4294967295u, global1.a.a))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, global1.a.a & 12531u, ~11858u), ~(~vec3<u32>(u_input.c, 0u, u_input.c))));
    var var_2 = arg_0;
    global0 = -288f;
    return abs(1u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_5 {
    var var_0 = Struct_5(Struct_2(Struct_1(firstLeadingBit(arg_2.x), _wgslsmith_mult_vec2_i32(-u_input.a.zy, u_input.a.xy))), -29605i, vec4<u32>(59923u, ~(func_3(arg_3.a) ^ ~12870u), select(select(u_input.c, u_input.c, arg_3.a), global1.a.a, any(vec3<bool>(arg_3.a, true, arg_3.a))) | 44329u, u_input.c));
    var var_1 = !(!(!(!select(vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, true, true), true))));
    var var_2 = arg_3;
    let var_3 = vec2<u32>(11143u, arg_2.x);
    var var_4 = Struct_4(var_0.a);
    return Struct_5(var_0.a, _wgslsmith_sub_i32(15826i, i32(-1i) * -26947i), _wgslsmith_div_vec4_u32(countOneBits(~var_0.c), var_0.c) & abs(vec4<u32>(var_4.a.a.a, ~0u, _wgslsmith_clamp_u32(66912u, 0u, 1u), 0u)));
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    global0 = 1000f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -796f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) - _wgslsmith_f_op_f32(f32(-1f) * -2107f)) - _wgslsmith_div_f32(-1917f, 809f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2237f, -1175f))))))));
    global1 = Struct_2(arg_0.a.a);
    var var_0 = global2[_wgslsmith_index_u32(arg_0.a.a.a, 29u)];
    return arg_0.a.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1383f - _wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(arg_3 + arg_3)))), _wgslsmith_f_op_f32(floor(arg_3)), arg_3);
    return Struct_1(u_input.c, reverseBits(vec2<i32>(2147483647i, _wgslsmith_mult_i32(arg_1.a.b.x, u_input.a.x)) >> (reverseBits(~vec2<u32>(arg_1.a.a, global1.a.a)) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(func_5(global1.a, Struct_2(func_4(func_2(vec4<i32>(-10510i, -26616i, -1i, 0i), vec3<i32>(u_input.d, -23484i, 2147483647i), vec2<u32>(11347u, global1.a.a), Struct_3(arg_3)))), true, -742f));
    let var_1 = -909f;
    global1 = func_2(abs(_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0.x, 0i, var_0.a.b.x, arg_0.x), vec4<i32>(0i, arg_0.x, -39315i, arg_0.x), vec4<bool>(arg_3, true, false, false)), vec4<i32>(0i, 1i, 21389i, 2147483647i))) ^ select(select(-vec4<i32>(arg_0.x, -60822i, var_0.a.b.x, 15241i), countOneBits(vec4<i32>(global1.a.b.x, 22126i, 2147483647i, global1.a.b.x)), !vec4<bool>(arg_3, arg_3, arg_3, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 32265i, 2147483647i, -7661i), vec4<i32>(-13715i, 92286i, var_0.a.b.x, 2147483647i)) ^ vec4<i32>(var_0.a.b.x, u_input.a.x, var_0.a.b.x, global1.a.b.x), select(vec4<bool>(arg_3, arg_3, true, true), vec4<bool>(true, false, arg_3, arg_3), true)), select(_wgslsmith_add_vec3_i32(-u_input.a, u_input.a), ~firstTrailingBit(~arg_0), select(true, any(!vec2<bool>(arg_3, arg_3)), !(global1.a.a > 11508u))), firstTrailingBit(abs(min(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_1.x, u_input.c))) >> (vec2<u32>(_wgslsmith_mod_u32(arg_1.x, 0u), global1.a.a) % vec2<u32>(32u))), Struct_3(arg_3)).a;
    global2 = array<vec2<f32>, 29>();
    var var_2 = arg_0;
    return func_2(vec4<i32>(~global1.a.b.x, select(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 8326i), var_2.zy), abs(-32274i)), arg_0.x, !any(vec4<bool>(arg_3, true, arg_3, true))), -2147483647i, u_input.a.x), vec3<i32>(1i << (~4294967295u % 32u), -2147483647i, -1i) | -arg_0, ~(reverseBits(vec2<u32>(global1.a.a, 45081u) ^ arg_1) >> (vec2<u32>(global1.a.a | 0u, max(var_0.a.a, 1u)) % vec2<u32>(32u))), Struct_3(false)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(~26901u, vec2<i32>(-2147483647i, 1i) ^ ~firstTrailingBit(vec2<i32>(global1.a.b.x, -1i))));
    let var_0 = func_1(-(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -1i, global1.a.b.x), vec3<i32>(u_input.d, global1.a.b.x, u_input.b)), u_input.a) << (~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, 10991u), vec3<u32>(global1.a.a, u_input.c, 24109u)) % vec3<u32>(32u))), abs(~countOneBits(vec2<u32>(25129u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) - 128f), true);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -555f);
    var var_1 = -firstTrailingBit(-(_wgslsmith_div_vec4_i32(vec4<i32>(-8119i, 2147483647i, -2147483647i, 0i), vec4<i32>(u_input.a.x, -67598i, u_input.b, var_0.a.b.x)) & abs(vec4<i32>(global1.a.b.x, u_input.d, 0i, -2147483647i))));
    global1 = func_1(firstLeadingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(global1.a.b.x, u_input.b, 40387i), abs(firstTrailingBit(var_1.zzw)))), select(min(~(~vec2<u32>(51520u, 0u)), ~(vec2<u32>(u_input.c, 57189u) ^ vec2<u32>(1u, 38420u))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(2996u, global1.a.a), vec2<u32>(0u, u_input.c)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(586f, 815f)) - 516f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(151f, -928f)))), all(vec4<bool>(any(vec2<bool>(true, true)), true, true, ~global1.a.a != select(51562u, var_0.a.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1875f - -449f), -1000f, _wgslsmith_f_op_f32(ceil(893f)), -308f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, 539f, -256f, -380f) + vec4<f32>(-1236f, -901f, 1214f, 212f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, 674f, 1742f, -107f)))))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.a.b.x, 2147483647i), countOneBits(var_0.a.b.x)), global1.a.b.x) << (global1.a.a % 32u), 26294i, _wgslsmith_f_op_f32(-1808f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1210f - -796f), _wgslsmith_f_op_f32(min(1563f, -493f)))) + _wgslsmith_f_op_f32(sign(-506f)))));
}

