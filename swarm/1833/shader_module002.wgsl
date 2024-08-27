struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = 186f;
    global1 = array<Struct_1, 2>();
    var var_1 = global1[_wgslsmith_index_u32(~16681u, 2u)];
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.x, arg_2.x, arg_0.c.x), vec4<u32>(1u, arg_0.c.x, u_input.b.x, var_1.c.x)), vec4<u32>(0u, ~37796u, ~4478u, ~1u)) & arg_0.c.x, min(u_input.b.x, 1u), 12834u);
    let var_3 = -(~vec4<i32>(firstLeadingBit(0i), -(~arg_0.e.x), ~abs(var_1.e.x), 2147483647i));
    return arg_0.c << (arg_0.c % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~31083u, 2u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.d.x), -_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.x, var_0.e.x, var_0.e.x), var_0.e.x) == arg_0.x, vec4<u32>(firstTrailingBit(firstTrailingBit(~var_0.c.x)), ~_wgslsmith_sub_u32(4294967295u, var_0.c.x), ((u_input.b.x & u_input.b.x) >> (u_input.b.x % 32u)) >> (~u_input.b.x % 32u), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.d), var_0.d))) - var_0.d), ~var_0.e);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-var_1.d.x), false, func_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.a)))), any(!vec3<bool>(var_1.b, var_0.b, var_0.b)), ~vec4<u32>(var_1.c.x, u_input.b.x, 4294967295u, var_1.c.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, u_input.b.x, var_0.c.x), var_0.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(abs(var_0.d))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(22893i, 0i)), u_input.a.x >> (0u % 32u), var_0.e.x)), vec4<bool>(var_0.b, var_0.b, true, any(!vec2<bool>(var_0.b, var_1.b))), abs(~var_1.c.wx) & min(vec2<u32>(0u, u_input.b.x), vec2<u32>(var_1.c.x, 33206u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d), _wgslsmith_f_op_vec4_f32(-var_1.d)), var_0.e);
    var var_2 = _wgslsmith_sub_u32(var_1.c.x, var_1.c.x);
    global2 = firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.e.x, -36810i), countOneBits(u_input.a.x ^ var_1.e.x))) >> (var_1.c.x % 32u);
    return 2147483647i >> ((u_input.b.x >> (_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(var_0.c.yw, ~vec2<u32>(u_input.b.x, var_1.c.x))) % 32u)) % 32u);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    global2 = min(-_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(9749i, 0i, arg_1)), vec3<i32>(u_input.a.x, func_2(vec4<i32>(84373i, 2147483647i, 5255i, arg_0)), arg_1)), u_input.a.x);
    let var_0 = Struct_2(Struct_1(-1508f, all(vec2<bool>(true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~u_input.b.x, ~u_input.b.x, ~17342u), global0[_wgslsmith_index_u32(~(~arg_2.x), 29u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-485f, 120f, -1117f, -821f)) + vec4<f32>(_wgslsmith_f_op_f32(-714f * -743f), _wgslsmith_f_op_f32(f32(-1f) * -417f), 1230f, 2481f)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i << (1u % 32u), -arg_1, 11154i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(23942i, arg_1, arg_1)), -vec3<i32>(arg_1, arg_0, -15804i)))), true, 24633u, select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(!all(vec2<bool>(true, false)), -arg_0 > min(-52262i, arg_1), all(vec3<bool>(true, true, true)))));
    var var_1 = u_input.a.x | _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, 1i), 1i), ~_wgslsmith_dot_vec3_i32(var_0.a.e, var_0.a.e), var_0.a.e.x);
    var_1 = 13546i << (~(~var_0.a.c.x) % 32u);
    var var_2 = true;
    return global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(~countOneBits(arg_3.x), 2u)], select(vec4<bool>(true, _wgslsmith_add_u32(arg_2.x, u_input.b.x) > 76800u, true | (804f != var_0.a.a), !(!var_0.d.x)), !select(vec4<bool>(true, false, true, var_0.a.b), select(vec4<bool>(false, var_0.a.b, var_0.d.x, var_0.a.b), vec4<bool>(false, true, true, false), var_0.d.x), true), !var_0.a.b), ~vec2<u32>(abs(var_0.c) >> (~var_0.c % 32u), 1u << (_wgslsmith_clamp_u32(44489u, arg_2.x, 43469u) % 32u))).x, 2u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_2(func_4(_wgslsmith_div_i32(abs(firstTrailingBit(u_input.a.x)), func_2(vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, arg_0.x))), u_input.a.x, vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) >> (_wgslsmith_mult_u32(u_input.b.x, 26476u) % 32u), 1u), vec3<u32>(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~(67088u | arg_1.x), 0u | arg_1.x)), func_4(abs(-24658i), _wgslsmith_dot_vec2_i32(~u_input.a << (min(vec2<u32>(2203u, u_input.b.x), arg_1) % vec2<u32>(32u)), max(arg_0.zz, vec2<i32>(arg_0.x, arg_0.x)) | u_input.a), max(u_input.b, max(vec2<u32>(11561u, arg_1.x), ~vec2<u32>(arg_1.x, 45620u))), _wgslsmith_mult_vec3_u32(~func_4(0i, -17251i, u_input.b, vec3<u32>(0u, 60221u, 1u)).c.wyw, func_4(~u_input.a.x, u_input.a.x, vec2<u32>(u_input.b.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, arg_1.x, 1u), vec3<u32>(u_input.b.x, 4294967295u, arg_1.x))).c.yxz)).b, _wgslsmith_mod_u32(u_input.b.x, arg_1.x), vec3<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), !(_wgslsmith_f_op_f32(ceil(619f)) <= 208f), true));
    let var_1 = true;
    global1 = array<Struct_1, 2>();
    global2 = i32(-1i) * -1i;
    global0 = array<vec4<u32>, 29>();
    return _wgslsmith_f_op_f32(abs(var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(523f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f + -302f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1303f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(0i, -9527i, -55512i), u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -897f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1553f)) * _wgslsmith_f_op_f32(round(730f)))), -2737f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-689f - -610f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)))));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(min(-716f, 1347f));
    var_2 = _wgslsmith_f_op_f32(var_0.x * -866f);
    global2 = ~(_wgslsmith_div_i32(u_input.a.x, var_1.x << (1u % 32u)) ^ ~(var_1.x >> (u_input.b.x % 32u))) >> (27405u % 32u);
    global2 = u_input.a.x;
    var var_3 = vec4<bool>(any(vec4<bool>(true, all(vec2<bool>(true, false)), true, false)), true, !all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), any(vec2<bool>(true, !(var_0.x != var_0.x))));
    let var_4 = Struct_1(var_0.x, var_3.x, ~global0[_wgslsmith_index_u32(select(reverseBits(~u_input.b.x), countOneBits(u_input.b.x), var_3.x), 29u)], _wgslsmith_f_op_vec4_f32(trunc(var_0)), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(32959i, 0i, u_input.a.x)), min(vec3<i32>(0i, -53339i, 42118i), vec3<i32>(var_1.x, var_1.x, 0i))));
    global1 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, var_4.d.x, _wgslsmith_mod_u32(u_input.b.x >> (func_3(Struct_1(-232f, var_3.x, vec4<u32>(579u, 51209u, var_4.c.x, 11613u), var_4.d, vec3<i32>(-2147483647i, u_input.a.x, var_4.e.x)), select(vec4<bool>(false, var_3.x, var_3.x, true), vec4<bool>(true, var_3.x, var_4.b, var_4.b), vec4<bool>(var_3.x, var_4.b, false, true)), _wgslsmith_clamp_vec2_u32(var_4.c.yz, vec2<u32>(u_input.b.x, var_4.c.x), vec2<u32>(u_input.b.x, var_4.c.x))).x % 32u), firstLeadingBit(~0u)));
}

