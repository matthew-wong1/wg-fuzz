struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec4<i32>, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_2, 29>();
    var var_0 = ~vec4<i32>(u_input.a, 1i, 2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, ~u_input.b.x), select(u_input.b.x, u_input.b.x, false) << (u_input.c.x % 32u)));
    var var_1 = _wgslsmith_add_vec4_u32(~(~select(abs(vec4<u32>(14565u, u_input.c.x, 4294967295u, 47088u)), vec4<u32>(1u, u_input.c.x, u_input.c.x, 79634u) & vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false))), ~(~vec4<u32>(0u >> (1u % 32u), 2447u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~u_input.c.x)));
    var var_2 = Struct_4(Struct_3(Struct_1(vec4<bool>(var_1.x != 34190u, all(vec2<bool>(true, false)), true, true), true), vec3<i32>(u_input.b.x, var_0.x, -_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.zz)), Struct_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), true), true), Struct_1(vec4<bool>(true, true, true, true), false && select(true, false, false)), var_0.yzy), Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), vec3<i32>(min(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), -2147483647i), u_input.b.x, var_0.x), Struct_1(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), true), Struct_1(vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), select(vec3<i32>(-1i) * -var_0.wwx, vec3<i32>(u_input.b.x, u_input.b.x, firstTrailingBit(var_0.x)), true)), ~(-(-43938i & u_input.b.x)), Struct_3(Struct_1(vec4<bool>(true, true, true, true), true), var_0.xzx, Struct_1(vec4<bool>(true, true, true, true), true), Struct_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true))), -vec3<i32>(19863i, 11676i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 60404i, var_0.x), vec3<i32>(1i, -33258i, var_0.x)))), Struct_1(!vec4<bool>(true, false, all(vec4<bool>(true, false, false, false)), false), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(false, true, true)))));
    let var_3 = var_1.x;
    return var_2.d.d.a;
}

fn func_2() -> bool {
    var var_0 = Struct_1(func_3(), false);
    let var_1 = Struct_1(vec4<bool>(any(select(func_3(), var_0.a, var_0.a)), false, func_3().x, true), select(all(var_0.a.yww), 1i < u_input.a, var_0.b));
    let var_2 = Struct_4(Struct_3(Struct_1(vec4<bool>(var_1.a.x & var_0.a.x, true, true, false), false), select(abs(u_input.b), vec3<i32>(u_input.a, u_input.a, min(u_input.a, 2147483647i)), var_1.a.yyw), Struct_1(var_1.a, all(vec4<bool>(var_1.a.x, var_1.b, var_0.a.x, true))), var_1, u_input.b), Struct_3(Struct_1(select(select(vec4<bool>(var_1.b, var_0.b, false, var_1.a.x), vec4<bool>(false, var_0.a.x, var_0.b, true), var_0.a), !vec4<bool>(var_0.b, var_0.a.x, true, true), var_1.b), reverseBits(u_input.a) >= -2147483647i), vec3<i32>(reverseBits(u_input.a ^ 1i), _wgslsmith_add_i32(1i, u_input.b.x), 12114i), var_1, var_1, abs(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -57518i, -26783i)))), 0i, Struct_3(var_1, (-u_input.b ^ u_input.b) << (~(vec3<u32>(9167u, u_input.c.x, 32902u) ^ u_input.c) % vec3<u32>(32u)), var_1, var_1, reverseBits(~u_input.b)), Struct_1(var_0.a, false));
    let var_3 = var_2;
    global1 = array<vec4<i32>, 9>();
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    global0 = array<Struct_2, 29>();
    var var_0 = u_input.c;
    let var_1 = select(!vec2<bool>(func_2(), false), vec2<bool>(func_2(), true), any(vec3<bool>(true, true, true)));
    let var_2 = 6881i;
    var_0 = vec3<u32>(arg_1, select(_wgslsmith_clamp_u32(var_0.x, 4294967295u, countOneBits(4294967295u)), u_input.c.x, true), _wgslsmith_dot_vec2_u32(var_0.yz, ~firstTrailingBit(_wgslsmith_div_vec2_u32(var_0.xy, vec2<u32>(arg_1, 9747u)))));
    return ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(21315u, 14691u), vec2<u32>(u_input.c.x, arg_1)) >> ((~u_input.c.x & ~38716u) % 32u)));
}

fn func_4(arg_0: i32) -> Struct_4 {
    global1 = array<vec4<i32>, 9>();
    var var_0 = !select(!(!func_3().zz), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false)), !func_3().xz);
    global1 = array<vec4<i32>, 9>();
    var var_1 = vec3<bool>(var_0.x, true, func_2());
    var var_2 = Struct_1(vec4<bool>(_wgslsmith_add_u32(countOneBits(u_input.c.x), 1u) < abs(firstLeadingBit(1873u)), true, var_1.x, var_1.x), !(!(1u >= u_input.c.x)));
    return Struct_4(Struct_3(Struct_1(var_2.a, select(var_2.b, var_1.x, false)), reverseBits(vec3<i32>(arg_0 >> (28364u % 32u), -1i, firstTrailingBit(2147483647i))), Struct_1(vec4<bool>(any(var_2.a), true, select(var_0.x, true, true), var_1.x), any(var_2.a.xxx)), Struct_1(func_3(), !var_1.x), -firstLeadingBit(vec3<i32>(arg_0, 1i, -2147483647i))), Struct_3(Struct_1(!select(var_2.a, vec4<bool>(true, var_2.b, true, var_0.x), var_2.a), var_1.x), u_input.b << (vec3<u32>(u_input.c.x << (u_input.c.x % 32u), ~35948u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), Struct_1(vec4<bool>(true, any(vec3<bool>(false, var_2.a.x, var_2.a.x)), var_0.x || var_0.x, false), all(vec4<bool>(var_1.x, var_2.b, false, var_2.b)) && false), Struct_1(vec4<bool>(true, u_input.b.x > 2147483647i, true, any(vec2<bool>(true, var_2.a.x))), var_0.x), ~(u_input.b << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(u_input.c.x, 23534u, 3465u), vec3<u32>(2592u, 1u, u_input.c.x)) % vec3<u32>(32u)))), max(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, -40334i, 2147483647i), vec4<i32>(-21431i, arg_0, u_input.b.x, 0i)), vec4<i32>(2147483647i, arg_0, -2147483647i, 1i))), ~(~u_input.a)), Struct_3(Struct_1(func_3(), var_1.x), vec3<i32>(arg_0, 22395i, reverseBits(u_input.b.x)), Struct_1(var_2.a, var_1.x), Struct_1(select(func_3(), var_2.a, true), func_2()), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.a), 21561i, ~0i)), Struct_1(select(!(!var_2.a), !var_2.a, all(vec3<bool>(false, var_2.a.x, false)) & true), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(func_1(vec3<f32>(1f, 1f, 1f), var_0), 9u)], ~vec4<i32>(43630i << (1u % 32u), -25491i, _wgslsmith_sub_i32(-2147483647i, u_input.b.x), i32(-1i) * -41477i)));
    global1 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-518f, _wgslsmith_f_op_f32(f32(-1f) * -517f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-614f, -1807f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, -776f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-895f, -1000f)))) + vec2<f32>(523f, _wgslsmith_div_f32(711f, 103f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, -1115f))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), 719f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) - vec3<f32>(var_2.x, var_2.x, -257f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-664f, var_2.x, var_2.x) - vec3<f32>(373f, var_2.x, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-336f, 679f, 1452f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 619f, 236f), vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_1.d.d.b, true, false))) * vec3<f32>(var_2.x, var_2.x, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(227f, var_3.x, var_2.x, -555f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, var_2.x, -648f, -361f)))))), u_input.c.x, _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(var_0, var_0, 4294967295u, var_0)), ~vec4<u32>(var_0, 5146u, ~1u, 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.x), -1492f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1228f, var_2.x, var_3.x) + vec3<f32>(889f, -1318f, var_3.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1721f, -1217f, var_2.x))))), vec3<bool>(!var_1.d.d.b, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - 689f), -750f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-733f)), _wgslsmith_f_op_f32(-659f - 1247f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.x, 628f)), -2051f))));
}

