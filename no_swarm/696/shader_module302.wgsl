struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_add_u32(34774u, arg_0.a.x);
    var var_1 = global0[_wgslsmith_index_u32(32148u, 7u)];
    var var_2 = !vec4<bool>(false, !select(!var_1.d, var_1.d, true), true, true);
    var var_3 = arg_0;
    var var_4 = true;
    return var_1.c.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<i32>(-1i, func_3(Struct_1(max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy), vec2<u32>(u_input.a.x, 38076u))), abs(max(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 729u), ~59768u)), -(~(~u_input.b.x)), _wgslsmith_div_vec4_i32(~(-vec4<i32>(2147483647i, 1i, 24419i, arg_0)), vec4<i32>(-36968i & arg_0, _wgslsmith_mod_i32(u_input.b.x, arg_0), arg_0, arg_0))), -_wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -23745i), 1i) & (-45283i >> (~(~u_input.a.x) % 32u)), 10657i);
    global0 = array<Struct_3, 7>();
    let var_1 = any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), false), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), _wgslsmith_sub_i32(-2147483647i, u_input.b.x) < -1i)) || true;
    let var_2 = !(!select(select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, var_1, true), true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, var_1)), select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, true, false), vec3<bool>(true, var_1, false)), false), vec3<bool>(var_1 & true, true, false)));
    let var_3 = Struct_1(select(vec2<u32>(_wgslsmith_sub_u32(22153u, u_input.a.x), u_input.a.x) << (u_input.a.xx % vec2<u32>(32u)), vec2<u32>(4294967295u << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), ~u_input.a.x), vec2<bool>(any(!vec4<bool>(false, var_2.x, var_1, var_2.x)), !any(vec2<bool>(var_2.x, true)))));
    return Struct_1(countOneBits(var_3.a));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = select(vec2<u32>(u_input.a.x, abs(41607u)), u_input.a.xx, !arg_0.x);
    let var_1 = all(!arg_0.yy) | (-2256f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1141f)) + 133f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, 855f, -1680f, 427f)))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) * _wgslsmith_f_op_f32(f32(-1f) * -1576f)), _wgslsmith_f_op_f32(f32(-1f) * -2046f))), _wgslsmith_f_op_f32(sign(-1323f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(385f * _wgslsmith_f_op_f32(ceil(-271f))))), _wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)))));
    var var_3 = false;
    let var_4 = Struct_2(-max(u_input.b.x, u_input.b.x), countOneBits(arg_3.e), 9305i, arg_3.d, ~(~abs(vec3<u32>(0u, u_input.a.x, 1u) << (vec3<u32>(1u, u_input.a.x, var_0.x) % vec3<u32>(32u)))));
    return global0[_wgslsmith_index_u32(arg_3.e.x, 7u)];
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_3(Struct_1(vec2<u32>(func_2(-37680i).a.x & 1u, 13353u)), Struct_1(~_wgslsmith_add_vec2_u32(func_2(arg_0.c.a).a, vec2<u32>(32091u, 32651u))), Struct_2(-abs(_wgslsmith_sub_i32(-1i, arg_0.c.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), ~arg_0.c.e), arg_0.a.a.x, 1u), _wgslsmith_dot_vec4_i32(vec4<i32>(-3860i, ~u_input.b.x, _wgslsmith_div_i32(40102i, -1i), -68621i), -vec4<i32>(arg_0.c.c, -6622i, arg_0.c.c, u_input.b.x)), func_2(2147483647i), ~(vec3<u32>(arg_0.c.e.x, 43983u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))) << (abs(_wgslsmith_mult_vec3_u32(u_input.a, arg_0.c.e)) % vec3<u32>(32u))), arg_0.d);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1493f)), _wgslsmith_f_op_f32(min(403f, _wgslsmith_f_op_f32(trunc(1708f)))));
    var var_2 = var_0.c.c;
    let var_3 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(35441u, var_0.c.d.a.x), 0u), var_0.c.d.a.x);
    var var_4 = Struct_1(vec2<u32>(func_4(select(!vec3<bool>(arg_0.d, true, arg_0.d), !vec3<bool>(var_0.d, arg_0.d, true), all(vec4<bool>(true, true, arg_0.d, true))), all(vec4<bool>(false, arg_0.d, true, var_0.d)), var_0.b, Struct_2(_wgslsmith_mult_i32(arg_0.c.a, arg_0.c.c), vec3<u32>(79762u, var_0.a.a.x, var_0.a.a.x) | arg_0.c.e, arg_0.c.c, func_4(vec3<bool>(arg_0.d, false, var_0.d), true, var_0.b, Struct_2(53983i, vec3<u32>(arg_0.b.a.x, u_input.a.x, arg_0.b.a.x), -53266i, var_0.c.d, vec3<u32>(arg_0.a.a.x, 65132u, 4294967295u))).c.d, select(vec3<u32>(59057u, var_3.x, var_3.x), vec3<u32>(u_input.a.x, 41137u, 7646u), true))).c.e.x, 1u));
    return -41549i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, var_3.x)), var_0.c.e), min(~vec3<u32>(var_0.c.d.a.x, var_3.x, u_input.a.x), ~(var_0.c.b >> (vec3<u32>(var_0.c.d.a.x, 17880u, 29929u) % vec3<u32>(32u))))) % 32u);
}

fn func_1() -> Struct_3 {
    var var_0 = -27534i;
    var_0 = func_5(func_4(vec3<bool>(true, -u_input.b.x < -62828i, any(vec3<bool>(true, true, true))), true, func_2(-reverseBits(11989i)), Struct_2(2147483647i | _wgslsmith_clamp_i32(2147483647i, 12081i, -2147483647i), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a.x, 41862u), vec3<u32>(u_input.a.x, 4294967295u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(30735u, u_input.a.x, u_input.a.x), vec3<u32>(1813u, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)) >> (~0u % 32u), func_2(u_input.b.x), vec3<u32>(u_input.a.x, select(26483u, u_input.a.x, true), countOneBits(1u)))));
    let var_1 = -19690i;
    let var_2 = vec4<bool>(false, any(vec3<bool>(u_input.a.x < 57051u, true, any(vec3<bool>(true, true, true)))) & all(vec4<bool>(true, true, true, true)), !(!func_4(vec3<bool>(true, false, true), true, Struct_1(vec2<u32>(u_input.a.x, u_input.a.x)), func_4(vec3<bool>(false, false, true), true, Struct_1(vec2<u32>(0u, u_input.a.x)), Struct_2(u_input.b.x, u_input.a, var_1, Struct_1(u_input.a.yy), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))).c).d), true);
    var var_3 = 2147483647i;
    return Struct_3(Struct_1(u_input.a.xy), Struct_1(vec2<u32>(u_input.a.x >> (~u_input.a.x % 32u), u_input.a.x)), Struct_2(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1, var_1, -2147483647i), vec3<i32>(8442i, var_1, 0i), true), -vec3<i32>(u_input.b.x, var_1, 11169i)), select(u_input.a, ~(~u_input.a), !select(true, true, var_2.x)), var_1 << (u_input.a.x % 32u), func_2(-_wgslsmith_add_i32(u_input.b.x, 1i)), ~min(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 36504u, u_input.a.x)), _wgslsmith_add_vec3_u32(u_input.a, u_input.a))), 1f >= _wgslsmith_f_op_f32(ceil(1f)));
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = select(!vec3<bool>(arg_0.d, arg_0.d, any(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, false), false))), vec3<bool>(true, func_4(vec3<bool>(false, arg_0.d, arg_0.d), true, func_1().a, arg_0.c).d & arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1936f)) + -206f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f - -877f) - _wgslsmith_f_op_f32(-1269f * 1000f))), !arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1371f, _wgslsmith_f_op_f32(sign(-982f)))));
    let var_2 = !vec3<bool>(var_0.x, !var_0.x, any(!vec2<bool>(var_0.x, false)));
    var var_3 = func_1().c;
    var_3 = func_4(select(var_2, select(!vec3<bool>(arg_0.d, false, var_2.x), !var_2, var_2), !(!var_2.x & true)), false, var_3.d, Struct_2(arg_0.c.a, ~var_3.b, 1i, Struct_1(abs(arg_0.c.b.xz)), countOneBits(~var_3.e))).c;
    return Struct_3(arg_0.c.d, func_4(!(!var_0), var_0.x, var_3.d, arg_0.c).b, func_1().c, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    let var_0 = Struct_4(u_input.b.x, func_6(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1729f - 702f) * _wgslsmith_f_op_f32(abs(866f))), _wgslsmith_f_op_f32(-1f)))), Struct_2(_wgslsmith_sub_i32(1i, u_input.b.x), u_input.a, -1i, Struct_1(~reverseBits(u_input.a.zz)), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 66826u, u_input.a.x), select(u_input.a, u_input.a, vec3<bool>(false, false, true))))));
    var var_1 = Struct_3(var_0.b.c.d, func_1().b, var_0.d, var_0.b.d);
    let var_2 = var_0.d.d.a.x;
    global0 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 35355i, u_input.b.x, -2147483647i) & vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(36119i, u_input.b.x, 55415i, u_input.b.x), -vec4<i32>(var_0.b.c.c, -38335i, var_0.a, u_input.b.x)), ~(vec4<i32>(1i, 68515i, -1i, 7982i) & vec4<i32>(u_input.b.x, var_1.c.a, u_input.b.x, var_0.a)), any(vec2<bool>(var_0.b.d, var_1.d))), vec4<i32>(-_wgslsmith_add_i32(1i, u_input.b.x), var_0.d.a, _wgslsmith_mult_i32(-var_0.a, firstTrailingBit(14662i)), var_1.c.a)), _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.b.c.c ^ var_0.d.a, var_1.c.a, var_0.b.c.c | 54377i), abs(vec3<i32>(var_0.a, var_0.b.c.a, 34397i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.a, -2147483647i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 20620i, -36896i), vec3<i32>(-43057i, var_1.c.c, var_0.a)))));
}

