struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(-1i, true, false, vec2<bool>(true, false)), Struct_4(21i, false, true, vec2<bool>(false, false)), Struct_4(-1i, false, true, vec2<bool>(true, true)), Struct_4(12922i, false, false, vec2<bool>(true, false)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_2(abs(abs(~vec3<i32>(-1i, -9347i, -31217i))) << (vec3<u32>(0u, ~54557u, ~arg_1 << (25014u % 32u)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(ceil(856f)), !vec3<bool>(false, all(vec3<bool>(global0.x, global0.x, true)), !global0.x), ~_wgslsmith_mod_u32(35633u, 1u) & (arg_1 & ~arg_1), -556f), Struct_1(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), -539f)), select(vec3<bool>(true, !global0.x, global0.x), vec3<bool>(!global0.x, true, !global0.x), select(global0.x, true, global0.x) && !global0.x), firstLeadingBit(firstTrailingBit(firstLeadingBit(4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2395f), 1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(sign(arg_2.x)))), false))));
    var_0 = global1[_wgslsmith_index_u32(arg_3.x, 5u)];
    let var_1 = _wgslsmith_clamp_u32(arg_1, select(~_wgslsmith_mod_u32(0u | arg_1, ~77301u), 31835u, var_0.c.b.x), min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_3.x, 174u), arg_3.x), var_0.c.c));
    var var_2 = !(!var_0.c.b);
    var_0 = global1[_wgslsmith_index_u32(~7563u, 5u)];
    return _wgslsmith_add_i32(~u_input.c << (0u % 32u), ~(u_input.c & -1i));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_5(~(~vec4<i32>(~u_input.c, u_input.c, ~u_input.a, -1i)), Struct_3(arg_0.c.a, vec3<i32>(func_3(1i, countOneBits(7845u), _wgslsmith_f_op_vec2_f32(vec2<f32>(157f, arg_0.b.a) - vec2<f32>(769f, -329f)), _wgslsmith_mod_vec3_u32(vec3<u32>(16763u, arg_0.c.c, 614u), vec3<u32>(0u, arg_0.c.c, arg_0.b.c))), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, arg_0.a.x), i32(-1i) * -22413i), u_input.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1725f, arg_0.c.a, 1014f, arg_0.b.d), vec4<f32>(arg_0.c.d, arg_0.b.a, arg_0.b.d, arg_0.b.d), true)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c.a, -621f, arg_0.b.a, -1644f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, arg_0.b.d, arg_0.b.a, -763f)))))), global1[_wgslsmith_index_u32(30305u, 5u)], arg_0.b), !select(select(!vec4<bool>(false, arg_0.c.b.x, arg_0.c.b.x, true), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, arg_0.b.b.x, true, true), vec4<bool>(global0.x, true, global0.x, true)), true), vec4<bool>(arg_0.b.b.x, arg_0.c.a <= -689f, !arg_0.b.b.x, select(false, global0.x, arg_0.b.b.x)), (-1078f <= arg_0.c.a) && true), arg_0.c.c);
    global0 = !vec2<bool>(all(!(!var_0.c)), global0.x);
    global1 = array<Struct_2, 5>();
    let var_1 = false;
    let var_2 = _wgslsmith_mod_u32(~31494u, select(_wgslsmith_sub_u32(17860u, 1u), 1u, (10862i >> (_wgslsmith_add_u32(var_0.d, var_0.b.e.c) % 32u)) < _wgslsmith_div_i32(firstTrailingBit(2147483647i), u_input.b)));
    return 4294967295u;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_5 {
    var var_0 = arg_1.a;
    global0 = select(arg_1.b.zz, arg_1.b.zz, true);
    var var_1 = -firstLeadingBit(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(arg_0 + -135f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0))))))) + -1910f);
    global2 = array<Struct_4, 4>();
    return Struct_5(abs(vec4<i32>(_wgslsmith_sub_i32(1i, -9643i), 2147483647i, -20344i, -u_input.c) & min(-vec4<i32>(u_input.b, u_input.a, u_input.a, -25771i), vec4<i32>(u_input.a, 1i, u_input.b, -1i))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - _wgslsmith_f_op_f32(round(-1528f))))), vec3<i32>(i32(-1i) * -2147483647i, reverseBits(-2147483647i ^ u_input.b), u_input.a), vec4<f32>(-1309f, var_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0, arg_1.a, global0.x)))), arg_0), Struct_2(vec3<i32>(u_input.a, u_input.c, 2147483647i) | (vec3<i32>(u_input.c, u_input.b, -13664i) << (vec3<u32>(4294967295u, 26924u, 39805u) % vec3<u32>(32u))), arg_1, Struct_1(_wgslsmith_f_op_f32(max(arg_1.d, -299f)), arg_1.b, arg_2, _wgslsmith_f_op_f32(f32(-1f) * -561f))), arg_1), !vec4<bool>(false, false, false, global0.x), reverseBits(~select(arg_2, arg_1.c, true)) ^ (firstLeadingBit(arg_2) & 4294967295u));
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f)), Struct_1(-1000f, !vec3<bool>(select(true, false, false), !global0.x, global0.x & true), ~func_2(Struct_2(vec3<i32>(u_input.b, u_input.c, 0i), Struct_1(-491f, vec3<bool>(global0.x, global0.x, false), 11057u, -1096f), Struct_1(-171f, vec3<bool>(global0.x, false, global0.x), 0u, 344f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(139f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-137f, -1000f) - _wgslsmith_f_op_f32(ceil(1410f))))), reverseBits(1u));
    var var_1 = Struct_1(var_0.b.a, vec3<bool>((-18603i | -u_input.a) == var_0.a.x, !(!global0.x), var_0.b.e.d <= -165f), 41246u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)));
    var var_2 = var_0.b.a;
    var_0 = func_4(_wgslsmith_f_op_f32(-var_0.b.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b.c.x, var_1.d)))), !vec3<bool>(global0.x, false, global0.x), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(-931f, 373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - _wgslsmith_div_f32(var_0.b.a, var_0.b.e.a)))), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_1.c, 46727u), ~vec2<u32>(var_0.d, 4294967295u), var_0.b.e.b.zx), vec2<u32>(~42490u, 1u | var_1.c)) << (var_0.b.e.c % 32u));
    var var_3 = ~(~1i) < min(countOneBits(firstTrailingBit(i32(-1i) * -50803i)), u_input.b);
    return var_0.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<Struct_2, 5>();
    var var_1 = min(0u, _wgslsmith_dot_vec4_u32((firstTrailingBit(vec4<u32>(23321u, 3020u, 4294967295u, 24023u)) | vec4<u32>(8410u, 75745u, 0u, 74027u)) & _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 42401u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u) & firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(85537u, 44111u, 39545u, 4294967295u), vec4<u32>(50186u, 1u, 4294967295u, 18788u)))));
    var var_2 = -1i;
    let var_3 = ~_wgslsmith_mult_u32(22928u, 57547u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(-826f, Struct_1(1171f, vec3<bool>(false, var_0, var_0), var_3, -676f), _wgslsmith_mod_u32(81961u, var_3)).b.c.xwy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, -539f, 2792f) - vec3<f32>(1567f, 570f, -638f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, 131f, 736f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1232f, 855f, -1621f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-517f, 566f, 229f))), vec3<f32>(-786f, -837f, -764f))))), 1f, -11088i, _wgslsmith_add_vec2_i32(func_4(_wgslsmith_f_op_f32(1117f - _wgslsmith_f_op_f32(floor(415f))), Struct_1(-1000f, vec3<bool>(global0.x, global0.x, true), func_2(global1[_wgslsmith_index_u32(var_3, 5u)]), _wgslsmith_f_op_f32(-123f + -103f)), var_3).b.d.a.yz, select(vec2<i32>(-1i) * -vec2<i32>(1i, 47201i), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.b, 2147483647i), vec2<i32>(2147483647i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.b, -12891i))), select(!vec2<bool>(var_0, true), !vec2<bool>(global0.x, false), true))));
}

