struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(-1293f), Struct_3(159f), Struct_3(1000f), Struct_3(567f), Struct_3(190f), Struct_3(1000f), Struct_3(800f), Struct_3(-230f), Struct_3(1698f), Struct_3(321f), Struct_3(-1739f), Struct_3(-1832f), Struct_3(1000f), Struct_3(-311f), Struct_3(-1433f), Struct_3(423f), Struct_3(350f), Struct_3(-786f), Struct_3(519f), Struct_3(-1287f), Struct_3(1000f), Struct_3(-732f), Struct_3(489f), Struct_3(1732f));

var<private> global2: f32 = 1725f;

var<private> global3: vec2<u32> = vec2<u32>(39172u, 17087u);

var<private> global4: array<Struct_4, 27>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = firstLeadingBit(global0.x);
    global4 = array<Struct_4, 27>();
    var var_1 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, global3.x)), vec2<u32>(83821u, max(global0.x, global0.x)))), abs(_wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(global3.x, 5260u, 57949u)), vec3<u32>(4294967295u, global0.x, 4294967295u)), ~vec3<u32>(global3.x, global0.x, 39384u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 26717u, 16110u, global0.x) | ~vec4<u32>(48061u, u_input.a, global0.x, 26943u), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, global0.x, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 103917u, 0u), vec4<u32>(4294967295u, 0u, global0.x, u_input.a)), firstTrailingBit(vec4<u32>(0u, 1u, global3.x, 0u)))), global0.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26151u, global0.x), vec2<u32>(24079u, 2112u)), firstLeadingBit(u_input.a))) >> (var_1.x % 32u);
    return vec2<u32>(min(~_wgslsmith_dot_vec2_u32(~vec2<u32>(19700u, 4294967295u), reverseBits(vec2<u32>(0u, var_1.x))), _wgslsmith_clamp_u32(global3.x, ~84119u, 65511u)), ~(~global0.x));
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global3 = func_3(_wgslsmith_mult_i32(0i, -16853i), ~vec2<i32>(1i, 1i));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1163f, -135f, -284f)) * vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-625f, -1599f, 1658f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-776f, 1163f)))), -569f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-503f - 1f)))));
    global1 = array<Struct_3, 24>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))), -946f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))))) + vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(704f, _wgslsmith_f_op_f32(369f - var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(var_0.x, var_0.x))) * -656f), -311f));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(623f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_1), any(vec2<bool>(false, true))))))) + _wgslsmith_div_vec2_f32(var_0.yz, var_0.yy));
}

fn func_1() -> Struct_1 {
    let var_0 = (50735u >> (_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.a, u_input.a, 1u)), select(vec3<u32>(global0.x, global0.x, u_input.a), vec3<u32>(23347u, 20647u, u_input.a), vec3<bool>(true, true, true))) % 32u)) >= ((_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(19503u, 7497u, 29122u)) & u_input.a) & 9506u);
    var var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(890f, 841f), vec2<f32>(-2458f, -1082f), var_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(1u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(731f, -292f), vec2<f32>(153f, -2497f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1960f, -1145f))), !var_0)))), false, Struct_1(!select(vec2<bool>(true, var_0), vec2<bool>(true, true), select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(var_0, true))), max(vec2<i32>(2147483647i, i32(-1i) * -70841i), vec2<i32>(-9343i, _wgslsmith_add_i32(-3550i, 1i))), _wgslsmith_div_u32(global0.x, _wgslsmith_add_u32(u_input.a, 4294967295u) | 1224u), vec4<u32>(abs(u_input.a), _wgslsmith_dot_vec4_u32(min(vec4<u32>(global3.x, 1u, 34443u, 4294967295u), vec4<u32>(global3.x, 63475u, global3.x, u_input.a)), ~vec4<u32>(9038u, 12401u, 74575u, u_input.a)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 1u), vec2<u32>(9962u, global0.x)), firstLeadingBit(global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.a), max(vec2<u32>(global0.x, global3.x), vec2<u32>(65315u, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f + -382f) - _wgslsmith_f_op_vec2_f32(func_2(global0.x)).x))), -36734i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39171u), vec2<u32>(global3.x, 41224u)), ~4354u), vec2<u32>(52772u, func_3(-19023i, vec2<i32>(1i, 1i)).x)), 24u)]);
    let var_2 = var_1.c;
    let var_3 = Struct_2(var_1.c.e, Struct_1(vec2<bool>(any(var_2.a), var_0), vec2<i32>(-22019i, -2147483647i), abs(_wgslsmith_sub_u32(1u, abs(0u))), abs(firstLeadingBit(vec4<u32>(12600u, var_1.c.c, 15667u, 0u))), -500f), vec2<bool>(select(!(var_2.a.x & true), any(vec3<bool>(true, true, true)), var_1.c.a.x), var_1.c.e == _wgslsmith_f_op_f32(-804f * _wgslsmith_f_op_f32(select(-1107f, var_1.c.e, true)))));
    var var_4 = select(any(select(vec3<bool>(var_1.c.a.x, all(vec2<bool>(var_0, var_1.b)), false), select(!vec3<bool>(true, var_3.c.x, false), select(vec3<bool>(false, var_3.b.a.x, false), vec3<bool>(false, true, var_3.c.x), false), !vec3<bool>(false, false, var_3.b.a.x)), vec3<bool>(var_1.c.a.x, false, all(vec2<bool>(false, true))))), all(!select(select(vec4<bool>(var_2.a.x, false, false, var_2.a.x), vec4<bool>(true, var_0, var_3.c.x, var_1.b), vec4<bool>(var_3.b.a.x, var_3.c.x, var_0, true)), !vec4<bool>(true, var_1.c.a.x, var_3.c.x, var_0), true && var_1.b)), var_1.b);
    return var_1.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    let var_0 = ~_wgslsmith_mod_u32(1u, ~1u);
    let var_1 = arg_1.b.d.zx;
    let var_2 = Struct_1(!arg_1.b.a, arg_0.yz, 4294967295u, vec4<u32>(_wgslsmith_mod_u32(1u, 0u ^ firstLeadingBit(u_input.a)), 20986u, u_input.a, reverseBits(arg_1.b.c)), 598f);
    global1 = array<Struct_3, 24>();
    let var_3 = arg_1.b.d;
    return _wgslsmith_f_op_f32(floor(var_2.e)) <= _wgslsmith_f_op_f32(-arg_1.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2005f, 313f)) + _wgslsmith_f_op_f32(-1130f * -640f)))), -2100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f + -150f)))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 24u)];
    global2 = var_1.a;
    let var_2 = vec4<bool>(true, !(!(var_0.x <= var_1.a)), select(true, func_4(~(~vec4<i32>(48293i, 29574i, 1i, -1i)), Struct_2(var_0.x, func_1(), vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -592f))) > _wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(sign(var_0.x)))), true);
    global2 = _wgslsmith_f_op_vec2_f32(func_2(10633u)).x;
    var var_3 = global1[_wgslsmith_index_u32(~1u, 24u)];
    global2 = var_0.x;
    var var_4 = !select(!var_2, vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-7261i, -10243i, 1i, 26866i), vec4<i32>(0i, 8251i, 1i, 2147483647i)) > -2147483647i, true, all(var_2.yxw), all(vec4<bool>(var_2.x, var_2.x, false, var_2.x))), var_2.x);
    let var_5 = ~39969u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1282f + var_0.x)))), _wgslsmith_f_op_f32(-var_3.a))), var_0.x, reverseBits(vec3<u32>(max(var_5, u_input.a), 28626u, _wgslsmith_dot_vec4_u32(vec4<u32>(24247u, global0.x, 0u, global3.x), vec4<u32>(global3.x, global0.x, 16188u, 4294967295u)))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, 1u), vec3<u32>(var_5, global3.x, global3.x))), ~(~vec3<u32>(global0.x, 11755u, 39462u))) % vec3<u32>(32u)), ~vec2<u32>(19285u >> (func_1().c % 32u), firstTrailingBit(global3.x)));
}

