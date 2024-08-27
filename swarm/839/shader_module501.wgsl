struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, true, false));

var<private> global2: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = !global1[_wgslsmith_index_u32(u_input.d, 1u)];
    return _wgslsmith_div_u32(firstLeadingBit(~arg_2 & ~_wgslsmith_add_u32(u_input.d, 1u)), 0u);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_4(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(func_3(Struct_1(vec2<u32>(21805u, u_input.d), -463f, -169f), Struct_1(vec2<u32>(u_input.d, u_input.d), 1638f, global0.x), 0u, 0u), ~u_input.d), firstLeadingBit(abs(vec2<u32>(1u, 0u)))), global0.x, -939f), Struct_1(countOneBits(~vec2<u32>(u_input.d, u_input.d) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(784f))), global0.x), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x))), Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(4943u, u_input.d)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, global0.x, -1639f, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1329f, 697f, 1150f, global0.x) + vec4<f32>(-301f, 231f, global0.x, global0.x)))), global0.x));
    var_0 = Struct_4(Struct_1(var_0.e.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * global0.x)), var_0.e.b.x), Struct_1(vec2<u32>(53217u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.b.a, var_0.a.a, var_0.a.a), _wgslsmith_clamp_vec2_u32(var_0.a.a, var_0.a.a, vec2<u32>(3095u, 16060u)))), global0.x, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(select(500f, _wgslsmith_f_op_f32(-505f * var_0.b.c), var_0.c))))), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.d)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.x, var_0.b.b), var_0.e.b.zx, false)) + var_0.d)))), Struct_2(Struct_1(firstTrailingBit(~var_0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(784f * _wgslsmith_f_op_f32(f32(-1f) * -979f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x, u_input.b >= u_input.b)), var_0.b.c, global0.x), global0.x));
    global1 = array<vec3<bool>, 1>();
    let var_1 = Struct_3(_wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(-24880i, 2147483647i, u_input.a.x, -16383i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, 2147483647i, u_input.a.x), vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.b)))), select(~vec4<i32>(u_input.b, 46689i, u_input.c.x, u_input.a.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, u_input.a.x), vec4<i32>(0i, -1i, -2147483647i, u_input.c.x)), firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), !select(vec4<bool>(false, var_0.c, true, true), vec4<bool>(true, var_0.c, var_0.c, false), vec4<bool>(true, var_0.c, false, true))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, u_input.a.x), firstTrailingBit(u_input.a.x)), -u_input.a.x, i32(-1i) * -u_input.b, -61699i)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, firstTrailingBit(u_input.c.x)), vec2<i32>(u_input.b, u_input.a.x >> (var_0.e.a.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f * 980f))));
    var var_2 = vec4<bool>(var_0.c, !select(true, all(select(vec2<bool>(true, true), vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c))), var_0.c), any(vec2<bool>(false, !var_0.c)) | false, var_0.c != true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-647f))), _wgslsmith_f_op_f32(f32(-1f) * -251f))), var_0.d.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_div_vec4_f32(vec4<f32>(-829f, global0.x, 899f, -563f), vec4<f32>(500f, global0.x, -416f, -1040f))))), vec4<f32>(-1921f, 418f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(-120f, _wgslsmith_f_op_f32(ceil(global0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, _wgslsmith_f_op_f32(-var_0.x), 1000f, var_0.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(268f, -499f), var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)))));
    global1 = array<vec3<bool>, 1>();
    var var_1 = vec2<bool>(any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, true)))) & true, (select(true, true, true) & !(global0.x == var_0.x)) || true);
    var var_2 = var_0.zxx;
    return (vec4<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, arg_1.x, u_input.c.x), vec4<i32>(arg_1.x, -1i, arg_1.x, -3548i)), abs(_wgslsmith_sub_i32(arg_1.x, 62240i)), arg_1.x ^ reverseBits(-2147483647i)) | vec4<i32>(u_input.a.x & -2147483647i, abs(-16244i) | (arg_1.x ^ u_input.b), i32(-1i) * -1i, firstLeadingBit(~u_input.b))) >> (vec4<u32>(~abs(u_input.d), ~0u, ~firstTrailingBit(abs(6757u)), abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(24178u, arg_0.x), 5673u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(select(~vec2<u32>(1539u, u_input.d), ~(~vec2<u32>(u_input.d, u_input.d)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<i32>(abs(~u_input.a.x), min(-12608i, abs(1i)))), u_input.a, 3098f);
    var var_1 = Struct_4(Struct_1((~vec2<u32>(2046u, u_input.d) | _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 1u))) & (vec2<u32>(4294967295u, u_input.d) | max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-739f - _wgslsmith_f_op_f32(340f + -1000f)))), Struct_1(abs(vec2<u32>(u_input.d, _wgslsmith_sub_u32(32121u, 0u))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c)))), select(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))), false, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -136f)) * vec2<f32>(533f, global0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 228f) + vec2<f32>(-1909f, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.c))))), Struct_2(Struct_1(~vec2<u32>(28750u, u_input.d) | select(vec2<u32>(11123u, 9837u), vec2<u32>(12148u, u_input.d), vec2<bool>(false, false)), -1622f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), 1108f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_0.c, -360f, 1337f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1589f, var_0.c, -1326f, 480f))), var_0.c));
    global2 = any(!select(global1[_wgslsmith_index_u32(u_input.d, 1u)], !(!global1[_wgslsmith_index_u32(u_input.d, 1u)]), !var_1.c));
    let var_2 = Struct_4(var_1.b, var_1.a, all(vec4<bool>(var_1.c, u_input.d >= 13577u, u_input.d >= 0u, var_1.c)) & true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.d, var_1.e.b.xy))), Struct_2(var_1.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, var_1.e.a.b, -803f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -2424f, 644f, 465f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - -464f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + -427f)))));
    var var_3 = 214u;
    let var_4 = _wgslsmith_clamp_i32(~u_input.b, max(-34312i, ~_wgslsmith_add_i32(-29156i, var_0.a.x)) ^ (i32(-1i) * -1i), -_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(-8285i, u_input.c.x), u_input.c.yz), ~(~vec2<i32>(-8067i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-788f, u_input.d);
}

