struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_5;

var<private> global2: vec2<f32> = vec2<f32>(756f, -766f);

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> i32 {
    var var_0 = firstLeadingBit(~(~vec2<i32>(global1.b.x, global1.a)));
    global3 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(~1u, 70961u), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(6297u, 1u), vec2<u32>(41325u, 64874u))), 57217u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(689f, 838f))))))));
    global3 = 1u;
    let var_1 = _wgslsmith_f_op_f32(global2.x + global2.x);
    return -2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: bool) -> vec3<bool> {
    var var_0 = arg_0.b;
    var var_1 = ~(~_wgslsmith_clamp_vec4_i32(firstLeadingBit(global1.b) >> ((vec4<u32>(42779u, arg_2.x, arg_2.x, 4294967295u) >> (vec4<u32>(arg_2.x, 0u, 1u, arg_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-21189i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -26116i), -arg_0.b, max(2147483647i, -20753i)), vec4<i32>(arg_1.x, arg_0.b, 1i, -2147483647i) | u_input.a));
    let var_2 = Struct_5(arg_0.a.a, -(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 2147483647i), vec2<i32>(arg_1.x, arg_1.x)), 48720i, -50538i, global1.b.x) << (~_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_2.x, 37771u, 30267u), vec4<u32>(4294967295u, 0u, 59186u, arg_2.x)) % vec4<u32>(32u))));
    let var_3 = arg_2.x;
    var_0 = abs(~(i32(-1i) * -1257i));
    return !(!(!vec3<bool>(!arg_3, arg_0.a.a < arg_1.x, arg_3)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(10801u, 28u)];
    let var_1 = arg_2;
    var var_2 = Struct_4(_wgslsmith_mult_u32(var_1.a, _wgslsmith_add_u32(abs(~arg_2.a), var_1.a & arg_2.a)), arg_2.d.zx, true, vec3<i32>(0i << (1u % 32u), var_1.e.a, var_0.a) & abs(vec3<i32>(var_0.a << (arg_2.a % 32u), var_1.d.x, -u_input.a.x)), global0[_wgslsmith_index_u32(2041u, 28u)]);
    let var_3 = Struct_3(all(!select(vec4<bool>(true, arg_2.c, var_1.c, true), vec4<bool>(arg_2.c, var_2.c, true, var_2.c), select(vec4<bool>(var_2.c, var_1.c, false, var_2.c), vec4<bool>(var_2.c, true, arg_1.x, arg_1.x), arg_2.c))), var_1.d, firstTrailingBit(vec4<u32>(15774u, ~1u, 1u, 1283u)), _wgslsmith_f_op_f32(146f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), global2.x, true)))), !(!func_3(Struct_2(Struct_1(u_input.a.x), 31578i, vec2<bool>(arg_1.x, true)), vec4<i32>(var_2.e.a, u_input.a.x, 24547i, arg_2.d.x), vec3<u32>(0u, var_1.a, 0u), true).x));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(var_3.d - arg_0.x), !arg_1.x))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-220f, 1000f)) - _wgslsmith_f_op_f32(floor(global2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -107f)));
    return vec2<bool>(arg_2.c, true);
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.x)), global2.x))));
    let var_1 = select(select(vec2<bool>(true, all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(532f, global2.x, var_0, 167f) - vec4<f32>(var_0, 760f, -1000f, -424f)) + vec4<f32>(global2.x, -373f, 1000f, 2354f)), func_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 28u)], global1.b.x, vec2<bool>(true, true)), -global1.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(15326u, 7989u, 0u), vec3<u32>(0u, 1u, 23570u), vec3<u32>(1u, 32350u, 30283u)), all(vec4<bool>(true, false, false, false))), Struct_4(3932u, min(u_input.a.yy, u_input.a.xw), 1i <= global1.a, firstLeadingBit(vec3<i32>(-2870i, 1i, global1.b.x)), Struct_1(u_input.a.x)))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_4(~firstLeadingBit(4294967295u), vec2<i32>(global1.b.x, ~(-(~global1.a))), true, u_input.a.xzw, Struct_1(global1.b.x));
    var_2 = Struct_4(var_2.a, u_input.a.xw, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1332f, global2.x, global2.x)), vec3<bool>(_wgslsmith_f_op_f32(var_0 * var_0) <= 129f, func_3(Struct_2(Struct_1(global1.a), 35864i, var_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global1.b.x, 0i, var_2.d.x), vec4<i32>(global1.b.x, var_2.e.a, -2147483647i, -48702i), global1.b), ~vec3<u32>(0u, var_2.a, var_2.a), false).x, select(any(var_1), true, all(var_1))), Struct_4(18995u, abs(~global1.b.wx), select(select(var_2.c, true, var_1.x), any(vec3<bool>(false, var_2.c, var_1.x)), true), vec3<i32>(1i >> (1u % 32u), u_input.a.x, func_1()), var_2.e)).x, vec3<i32>(func_1(), _wgslsmith_add_i32(-65294i, -(global1.a | -38819i)), u_input.a.x), var_2.e);
    global1 = Struct_5(u_input.a.x, vec4<i32>(_wgslsmith_div_i32(-u_input.a.x | min(var_2.e.a, 21062i), abs(var_2.d.x)), var_2.b.x, 1i, _wgslsmith_mult_i32(u_input.a.x, reverseBits(_wgslsmith_mod_i32(var_2.d.x, u_input.a.x)))));
    return !vec2<bool>(!var_1.x, all(var_1));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    var var_0 = Struct_4(_wgslsmith_div_u32(1u, 4294967295u), ~((_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, global1.a), global1.b.ww) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) & global1.b.yx), !arg_2.c.x, _wgslsmith_div_vec3_i32(abs(u_input.a.zyz), vec3<i32>(abs(global1.b.x), -39903i, u_input.a.x)), Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0, 0i, -4757i), vec3<i32>(~arg_0, arg_2.a.a, i32(-1i) * -2147483647i))));
    var var_1 = arg_2.a.a >= var_0.b.x;
    global0 = array<Struct_1, 28>();
    global3 = var_0.a;
    let var_2 = Struct_4(var_0.a & (var_0.a >> (firstLeadingBit(1u) % 32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~firstTrailingBit(global1.b), _wgslsmith_sub_vec4_i32(vec4<i32>(39921i, 1i, global1.b.x, -2147483647i), vec4<i32>(-96341i, 55868i, -1i, global1.a))), -var_0.e.a), true, vec3<i32>(-2147483647i, -global1.b.x, 1i), Struct_1(func_1()));
    return Struct_5(var_2.d.x, ~(-_wgslsmith_div_vec4_i32(vec4<i32>(-84221i, -1i, -27029i, 43148i), u_input.a) ^ -(~vec4<i32>(var_0.b.x, -32173i, -24049i, 16034i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + _wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_f32(select(-613f, global2.x, _wgslsmith_f_op_f32(-global2.x) > _wgslsmith_f_op_f32(576f * global2.x)))), _wgslsmith_f_op_f32(global2.x * -2237f));
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, abs(abs(1u))), min(0u, 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20559u, 4294967295u, 104696u), vec4<u32>(67505u, 2522u, 31486u, 52507u))));
    var_0 = min(vec2<u32>(var_0.x << (1u % 32u), 4104u), vec2<u32>(var_0.x, firstLeadingBit(_wgslsmith_clamp_u32(var_0.x, 49980u, 4294967295u))));
    global1 = func_5(_wgslsmith_add_i32(abs(15145i), func_1()), 1000f, Struct_2(Struct_1(_wgslsmith_mult_i32(-1i, -2147483647i)), global1.b.x, !(!func_2())));
    var var_1 = vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, var_0.x), 4294967295u) ^ var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(31810u, 1u), _wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(1u, var_0.x)), ~(vec2<u32>(1u, 16338u) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(33025u, 0u), vec2<u32>(46500u, var_0.x)))), ~var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec2<i32>(~firstLeadingBit(2147483647i) << ((1u << ((var_1.x & var_0.x) % 32u)) % 32u), _wgslsmith_sub_i32((i32(-1i) * -4072i) ^ global1.b.x, reverseBits(global1.b.x))), u_input.a.x);
}

