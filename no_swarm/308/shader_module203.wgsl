struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(8436u, 1u, 1u, 0u), vec4<u32>(19815u, 0u, 4294967295u, 1u), vec4<u32>(3465u, 1u, 7258u, 54578u), vec4<u32>(79218u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(55360u, 15678u, 43795u, 4294967295u), vec4<u32>(4294967295u, 45807u, 72161u, 15061u), vec4<u32>(0u, 8535u, 0u, 11083u), vec4<u32>(1u, 1u, 36804u, 1u), vec4<u32>(4294967295u, 26419u, 0u, 1u), vec4<u32>(1u, 66946u, 1u, 15043u), vec4<u32>(46105u, 27126u, 4294967295u, 44335u), vec4<u32>(11793u, 4294967295u, 4294967295u, 36091u), vec4<u32>(0u, 23571u, 4294967295u, 39030u), vec4<u32>(28742u, 87883u, 29038u, 1u), vec4<u32>(14710u, 28891u, 116981u, 1u), vec4<u32>(4294967295u, 0u, 30908u, 36531u), vec4<u32>(24118u, 4294967295u, 1u, 21649u), vec4<u32>(1028u, 6227u, 31850u, 4294967295u), vec4<u32>(41710u, 38197u, 0u, 68542u));

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<f32>(-203f, 808f, 209f), vec4<u32>(46058u, 1u, 4294967295u, 0u), -1201f, Struct_2(340f), vec3<i32>(-1i, 1i, 30231i)));

var<private> global3: Struct_2 = Struct_2(-1000f);

var<private> global4: Struct_1 = Struct_1(30833u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global3.a)), _wgslsmith_f_op_f32(global3.a * -675f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -766f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))));
    let var_1 = any(select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)), all(vec3<bool>(false, false, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false))), select(any(vec4<bool>(true, true, true, true)), false, global4.a != ~15356u)));
    global2 = array<Struct_3, 1>();
    var_0 = global3.a;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.a, 1303f), 647f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)))));
    return ~vec2<i32>(~_wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(u_input.d.x, 46342i, u_input.b.x)), abs(~u_input.c.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    let var_0 = ~u_input.c.x;
    let var_1 = abs(~(~_wgslsmith_add_vec2_i32(max(u_input.b, vec2<i32>(var_0, -54679i)), func_3())));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-arg_1.x)))), vec4<u32>(u_input.e.x ^ global4.a, global4.a, 0u, 83700u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1205f), _wgslsmith_f_op_f32(f32(-1f) * -461f)), Struct_2(641f), u_input.c);
    let var_3 = var_2.b.yzx;
    var var_4 = Struct_2(arg_0.x);
    return 21703i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> vec2<i32> {
    global2 = array<Struct_3, 1>();
    return select(~_wgslsmith_clamp_vec2_i32(max(u_input.b, u_input.c.zy), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0, 4076i), u_input.d.wz), -u_input.b), countOneBits(~vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.b.x), func_2(vec3<f32>(-568f, 892f, global3.a), vec3<f32>(548f, global3.a, global3.a), global3.a))), true);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global4 = arg_1;
    var var_0 = true;
    let var_1 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-arg_0 ^ vec2<i32>(1i, u_input.c.x), firstLeadingBit(u_input.b)), 1i));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.a)), global3.a), _wgslsmith_f_op_f32(-827f + -468f)));
    global0 = array<Struct_3, 26>();
    return Struct_1(99149u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.e.x, 26u)];
    global4 = func_5(func_4(-func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1000f, -1776f), vec3<f32>(1152f, var_0.a.x, var_0.c)), vec3<f32>(-547f, global3.a, var_0.a.x), -713f), all(vec4<bool>(true, true, true, any(vec2<bool>(false, true)))), (-1i ^ arg_0) ^ _wgslsmith_clamp_i32(16232i, -arg_0, max(var_0.e.x, -5417i))), Struct_1(_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(reverseBits(global1[_wgslsmith_index_u32(global4.a, 20u)]), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(20112u, 20u)], vec4<u32>(global4.a, var_0.b.x, global4.a, global4.a))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.a, _wgslsmith_f_op_f32(step(2293f, global3.a)), _wgslsmith_f_op_f32(f32(-1f) * -1276f), _wgslsmith_f_op_f32(ceil(var_0.c))), vec4<f32>(1000f, var_0.d.a, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(step(1343f, global3.a))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -204f, -1436f, global3.a) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-475f, -262f, 1554f, -2148f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, -1000f, 381f, 1219f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, var_0.c, 1000f, global3.a) + vec4<f32>(661f, -900f, 679f, -711f))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, true, false), any(vec2<bool>(true, false))))))), Struct_1(~(_wgslsmith_add_u32(u_input.e.x, 12128u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 7798u), var_0.b.yz))));
    var var_1 = Struct_1(abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_0.b.x, 20u)] >> (u_input.e % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 18147u, u_input.e.x, u_input.e.x), var_0.b)))));
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    return Struct_1(u_input.e.x);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_sub_i32(~31442i, _wgslsmith_dot_vec3_i32(u_input.a.wwz, u_input.a.xyz)));
    var var_1 = global2[_wgslsmith_index_u32(arg_3, 1u)];
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, -1050f, global3.a))))))), ~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(var_0.a, 4294967295u, 1u, var_1.b.x), ~vec4<u32>(1u, global4.a, 1u, 1u), vec4<bool>(false, false, true, false)), global1[_wgslsmith_index_u32(~2855u, 20u)], var_1.b), _wgslsmith_f_op_f32(step(-608f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-958f)), 2888f)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1509f), global3.a)) * _wgslsmith_f_op_f32(var_1.a.x * -911f))), ~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x, u_input.d.x, arg_2), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_1.e.x, u_input.a.x, -1i)), firstTrailingBit(var_1.e))));
    global4 = Struct_1(_wgslsmith_mod_u32(var_2.b.x, 45232u ^ arg_0));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 20>();
    global4 = func_6(u_input.e.x, func_1(12470i), ~(-21202i >> (firstLeadingBit(u_input.e.x) % 32u)), firstTrailingBit(global4.a));
    let var_0 = ~u_input.a & abs(vec4<i32>(u_input.d.x, func_4(-1i, any(vec3<bool>(false, true, true)), _wgslsmith_mult_i32(1i, 11906i)).x, u_input.a.x, ~(-u_input.a.x)));
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.e.x << ((global4.a >> (31938u % 32u)) % 32u)));
}

