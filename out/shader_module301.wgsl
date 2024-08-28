struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -466f;

var<private> global1: array<i32, 17> = array<i32, 17>(-32178i, 1i, 0i, 11728i, -16599i, -1i, 0i, 3609i, 0i, 0i, 0i, 2147483647i, i32(-2147483648), -33092i, 2147483647i, -56491i, 47269i);

var<private> global2: f32 = -895f;

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, -596f)))))) - -1710f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1485f, -1763f, 1376f, 1212f) * vec4<f32>(374f, -829f, -921f, -1043f)))), reverseBits(u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -694f, 130f) * _wgslsmith_div_vec3_f32(vec3<f32>(-184f, 1737f, 1000f), vec3<f32>(301f, -689f, 236f)))), vec3<f32>(-1085f, _wgslsmith_f_op_f32(-1234f - -990f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1056f, 371f, false)) + _wgslsmith_f_op_f32(max(-286f, -784f))))), vec4<bool>(false, false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -959f))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -1461f), -676f)), select(all(vec3<bool>(false, true, true)), false, any(vec2<bool>(true, true)) || true)));
    var var_1 = vec3<f32>(146f, var_0.a, var_0.a);
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(368f, 1440f) - _wgslsmith_f_op_f32(f32(-1f) * -890f))) + var_1.x)));
    let var_4 = _wgslsmith_clamp_u32(1u, 1u, ~var_0.c);
    return global3[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(5996u, 1u), u_input.a), 30u)];
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> u32 {
    global2 = _wgslsmith_div_f32(arg_0.c.c.x, _wgslsmith_f_op_f32(-arg_0.c.c.x));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.c.x + -589f), 1847f)) + arg_0.c.c.x);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -492f);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, -2285f)) + arg_0.c.c.yx))), vec2<f32>(arg_0.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1403f)));
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1763f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1797f, 2374f), _wgslsmith_f_op_f32(arg_0.b.c.x + -1000f), true))), all(select(vec4<bool>(true, true, arg_0.c.c.x == arg_0.b.c.x, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), any(vec2<bool>(false, true))), vec4<bool>(var_0.x < arg_0.b.c.x, true, true, true))), (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-956f, 154f)))) >= var_0.x) == true, !(_wgslsmith_add_i32(0i << (1u % 32u), abs(u_input.e.x)) == (-arg_0.c.b.x ^ _wgslsmith_mult_i32(2147483647i, global1[_wgslsmith_index_u32(arg_0.a.x, 17u)]))));
    return _wgslsmith_sub_u32(~arg_0.b.a, max(u_input.a, 0u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(39913u, vec3<i32>(func_2(1u).d.x, arg_0.d.x, ~arg_0.d.x) << (vec3<u32>(arg_1.x, _wgslsmith_clamp_u32(82498u, arg_1.x, 4294967295u), min(70091u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x * -1711f), _wgslsmith_div_f32(-354f, arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + -1401f))), u_input.c, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(23911u, 33838u), vec2<u32>(1u, u_input.a)), select(arg_1.x, arg_0.a, true)), ~arg_0.e.x, (arg_0.a ^ 23785u) >> ((arg_1.x ^ u_input.a) % 32u))), (!select(true, false, true) && (any(vec3<bool>(false, true, true)) | any(vec4<bool>(true, true, true, false)))) || (any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))) && (true & (arg_0.d.x <= u_input.c.x))), func_2(reverseBits(arg_1.x)));
    var var_1 = var_0.b;
    global3 = array<Struct_1, 30>();
    let var_2 = Struct_3(!(!((var_0.c.e.x ^ u_input.a) <= _wgslsmith_add_u32(arg_0.a, arg_1.x))), Struct_1(_wgslsmith_add_u32(var_0.c.e.x, 0u), _wgslsmith_sub_vec3_i32(~(arg_0.d | arg_0.b), -(u_input.d >> (vec3<u32>(u_input.a, 72760u, u_input.a) % vec3<u32>(32u)))), vec3<f32>(var_0.a.c.x, -930f, -1185f), ~(~(~vec3<i32>(u_input.e.x, arg_0.b.x, 2147483647i))), ~min(vec3<u32>(arg_1.x, 36511u, arg_0.a), vec3<u32>(15347u, 11300u, var_0.c.a))), arg_0, func_2(~(~(~arg_1.x))));
    global0 = func_2(arg_1.x).c.x;
    return (countOneBits(-arg_0.d.x) << ((_wgslsmith_sub_u32(1u, var_0.a.e.x) ^ ~var_2.b.a) % 32u)) | (min(2147483647i, -firstLeadingBit(9942i)) << ((var_0.a.a << (_wgslsmith_add_u32(~var_2.c.e.x, ~71757u) % 32u)) % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = -_wgslsmith_sub_vec3_i32(-abs(max(vec3<i32>(u_input.e.x, 1i, 12718i), vec3<i32>(u_input.d.x, u_input.c.x, u_input.d.x))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 4095i, -1i), -u_input.e));
    var var_1 = Struct_2(func_2(34012u), true, func_2(min(~74389u, ~4294967295u)));
    var_0 = _wgslsmith_sub_vec3_i32(-(~u_input.d), abs(vec3<i32>(-7788i, -global1[_wgslsmith_index_u32(1u, 17u)], -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2, 0u), 17u)])));
    let var_2 = firstLeadingBit(func_4(Struct_1(func_2(func_3(Struct_4(vec4<u32>(8998u, 4294967295u, arg_2, 1u), Struct_1(u_input.a, u_input.e, var_1.c.c, var_1.a.b, vec3<u32>(var_1.c.e.x, var_1.a.a, 13828u)), var_1.a), -15980i)).a, ~(-vec3<i32>(var_1.a.d.x, var_1.c.d.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_1.x, -530f)), vec3<i32>(~global1[_wgslsmith_index_u32(4294967295u, 17u)], max(var_0.x, global1[_wgslsmith_index_u32(1u, 17u)]), u_input.c.x & var_1.a.b.x), vec3<u32>(88238u, 13441u << (0u % 32u), 18276u)), ~vec4<u32>(u_input.a ^ var_1.c.a, abs(18077u), 25159u, _wgslsmith_mod_u32(var_1.c.e.x, 124567u))));
    var_0 = vec3<i32>(11995i, _wgslsmith_add_i32(1i, ~var_1.c.d.x), ~(~_wgslsmith_mod_i32(8761i, var_2)) | _wgslsmith_add_i32(-1i, -global1[_wgslsmith_index_u32(4294967295u, 17u)]));
    return select(!select(!select(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, true, var_1.b, true), vec4<bool>(var_1.b, var_1.b, true, var_1.b)), vec4<bool>(select(var_1.b, false, true), true, true, var_1.b), all(select(vec3<bool>(false, true, var_1.b), vec3<bool>(true, true, false), vec3<bool>(var_1.b, true, false)))), vec4<bool>(!any(vec2<bool>(false, true)) || !all(vec4<bool>(var_1.b, var_1.b, var_1.b, false)), all(select(vec3<bool>(var_1.b, var_1.b, var_1.b), select(vec3<bool>(false, true, var_1.b), vec3<bool>(var_1.b, true, false), vec3<bool>(var_1.b, var_1.b, true)), !var_1.b)), select(false & select(false, var_1.b, false), !(var_0.x < var_0.x), select(!var_1.b, any(vec3<bool>(false, true, false)), 1406i <= var_1.a.b.x)), !(!all(vec4<bool>(var_1.b, true, var_1.b, false)))), !(!select(select(vec4<bool>(false, var_1.b, var_1.b, false), vec4<bool>(var_1.b, true, true, false), false), !vec4<bool>(false, var_1.b, false, true), true)));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 2047f, 1322f), vec3<f32>(arg_0, arg_0, arg_0), all(vec3<bool>(false, false, true))))))));
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(u_input.a, 30u)], false, global3[_wgslsmith_index_u32(u_input.a, 30u)]);
    global2 = arg_0;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x));
    var var_2 = 928f;
    return Struct_2(var_1.a, any(!vec3<bool>(func_1(var_1.a.c.yy, var_1.c.c, 0u).x, true, arg_2.x)), global3[_wgslsmith_index_u32(33091u, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(round(1f)), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))), !(!func_1(vec2<f32>(315f, 447f), vec3<f32>(184f, -960f, 563f), 0u)), true & select(u_input.a == u_input.a, true, true)), vec3<bool>(true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-472f))) < 790f));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_u32(var_0.c.a, u_input.a, var_0.a.a) << (abs(u_input.a) % 32u)).c.x * func_2(1u).c.x), _wgslsmith_f_op_f32(-var_0.a.c.x)));
    var var_1 = vec4<i32>(-(~func_5(-320f, vec4<bool>(var_0.b, var_0.b, false, true), vec3<bool>(false, var_0.b, false)).c.d.x << (u_input.a % 32u)), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(countOneBits(var_0.a.e.zy)), ~reverseBits(vec2<u32>(82811u, u_input.a))), 17u)], ~firstTrailingBit(global1[_wgslsmith_index_u32(25105u >> (var_0.c.e.x % 32u), 17u)])), func_5(var_0.a.c.x, select(select(func_1(var_0.c.c.zy, var_0.c.c, 17539u), !vec4<bool>(false, var_0.b, var_0.b, var_0.b), !vec4<bool>(true, true, true, var_0.b)), select(!vec4<bool>(false, true, var_0.b, true), vec4<bool>(var_0.b, false, false, var_0.b), !vec4<bool>(false, true, var_0.b, var_0.b)), vec4<bool>(var_0.b, var_0.b | var_0.b, any(vec4<bool>(var_0.b, true, var_0.b, true)), !var_0.b)), func_1(var_0.c.c.zx, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.c.c))), 1u).xyx).c.d.x, select(1i, -13173i, true));
    global1 = array<i32, 17>();
    var var_2 = var_0.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.x, func_2(0u).c.yz);
}

