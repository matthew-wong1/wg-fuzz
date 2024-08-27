struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = reverseBits(-u_input.b);
    var var_1 = _wgslsmith_div_u32(abs(~_wgslsmith_div_u32(u_input.d, ~1u)), ~u_input.a);
    var_1 = max(arg_0.x, arg_0.x);
    var var_2 = min(vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 28716u, arg_0.x, 96752u), vec4<u32>(1u, arg_0.x, 52296u, u_input.a)), 4294967295u, ~min(arg_0.x, arg_0.x)), abs(vec4<u32>(arg_0.x, 1u, ~1u, 6360u)));
    var var_3 = ~(~1u);
    return 1u;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = 1825f;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2.b)))), Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.b, arg_2.b)), arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-2199f))))));
    let var_2 = Struct_4(var_1.a, ~_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(32799u, 1u)), reverseBits(vec2<u32>(19436u, 0u) & vec2<u32>(u_input.a, 8031u))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + 1154f), _wgslsmith_f_op_f32(var_1.b.b.x + var_1.b.b.x)) + _wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(exp2(var_1.b.b)), arg_2.b.x > 769f))), var_1.b, _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(318f, -434f, true)), _wgslsmith_f_op_f32(-arg_2.b.x), -23822i > u_input.b)))), max(~4294967295u, arg_2.a));
    let var_3 = vec3<u32>(reverseBits(arg_2.a), _wgslsmith_mult_u32(arg_2.a, var_2.d), _wgslsmith_mod_u32(var_1.b.a, _wgslsmith_mod_u32(func_3(vec2<u32>(4294967295u, 79890u)), 1u))) | vec3<u32>(u_input.d, countOneBits(55693u), firstTrailingBit(107707u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(round(var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-612f))))))));
    return 36972u;
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    let var_0 = _wgslsmith_mult_u32(u_input.d, 4294967295u) << (_wgslsmith_sub_u32(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(f32(-1f) * -667f)), vec2<bool>(true, all(vec2<bool>(false, false))), Struct_1(func_3(vec2<u32>(u_input.d, 40290u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, 967f) + vec2<f32>(1716f, -1389f)))), u_input.a) % 32u);
    let var_1 = Struct_2(vec2<f32>(-1864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(936f + 920f) - _wgslsmith_f_op_f32(ceil(259f))))), Struct_1(abs((u_input.d & var_0) & ~u_input.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1454f * -516f) - -376f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-497f + -1134f), -1280f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1261f)))))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 502f)) + var_1.b.b) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-421f, var_1.a.x) - vec2<f32>(-697f, -1000f)), vec2<f32>(1000f, var_1.b.b.x))), vec2<f32>(1011f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1078f, -721f))), vec2<bool>((var_1.a.x < 604f) & true, false))), ~(~(~vec2<u32>(var_1.b.a, 32600u)) ^ vec2<u32>(76060u, abs(1u))), Struct_2(_wgslsmith_f_op_vec2_f32(abs(var_1.a)), Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(489f, -2246f) + var_1.b.b))), _wgslsmith_f_op_f32(abs(-905f))), _wgslsmith_div_u32(~var_1.b.a, min(var_0, ~1u)));
}

fn func_5(arg_0: Struct_4) -> bool {
    var var_0 = arg_0.c.c;
    let var_1 = func_2().c.b;
    let var_2 = Struct_5(arg_0.c, _wgslsmith_mod_u32(firstTrailingBit(~_wgslsmith_div_u32(4294967295u, var_1.a)), ~52316u));
    let var_3 = 0i;
    global0 = array<vec3<i32>, 6>();
    return all(vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), func_4(vec2<f32>(var_2.a.b.b.x, arg_0.a.x), vec2<bool>(true, true), func_2().c.b) < 15937u));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = select(vec3<bool>(true, true, func_5(func_2())), !vec3<bool>(select(func_5(Struct_4(vec2<f32>(189f, -2078f), vec2<u32>(62189u, arg_0), Struct_2(vec2<f32>(-466f, 1000f), Struct_1(122069u, vec2<f32>(-594f, 1004f)), -571f), arg_0)), false, false), any(vec4<bool>(true, true, true, true)), true), !vec3<bool>(false, all(vec4<bool>(true, false, false, false)), ~u_input.c.x <= _wgslsmith_mult_i32(u_input.c.x, -1i)));
    let var_1 = func_2().c;
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.c * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -433f)) + var_1.a), var_1.b, -468f);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, -1537f)), 1000f, _wgslsmith_f_op_f32(sign(556f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c, arg_0.b.b.x, -223f), vec3<f32>(arg_0.c, 589f, arg_0.a.x), vec3<bool>(false, false, arg_1))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-962f, arg_0.a.x, arg_0.b.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.b.x, arg_0.c, arg_0.c) - vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.b.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(679f, -760f, 1255f)))))));
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = u_input.c.x;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -887f, arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 559f, arg_0.b.b.x), vec3<f32>(var_0.x, 1000f, -171f))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1740f))), -1171f, var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * arg_0.a.x), _wgslsmith_f_op_f32(sign(var_0.x)))) * arg_0.b.b.x), func_1(~max(55269u, u_input.d), firstTrailingBit(_wgslsmith_mod_u32(arg_0.b.a, 4294967295u))).b.b.x, _wgslsmith_f_op_f32(-arg_0.a.x)));
    return abs(vec2<u32>(func_2().b.x | u_input.a, 0u));
}

fn func_7(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = !(!(!(!select(true, true, false))));
    let var_1 = min(u_input.b, arg_0);
    global0 = array<vec3<i32>, 6>();
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-arg_3), ~vec2<u32>(arg_1.x, select(~4294967295u, ~0u, true)), func_2().c, arg_2);
    var_0 = false;
    return func_1(func_1(var_2.b.x, arg_2 ^ ~(~23041u)).b.a, _wgslsmith_dot_vec2_u32(max(var_2.b, firstTrailingBit(~vec2<u32>(19403u, u_input.a))), var_2.b)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 6>();
    let var_0 = func_7(u_input.c.x << (u_input.d % 32u), _wgslsmith_mult_vec2_u32(func_6(func_1(u_input.a, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.d)), true), _wgslsmith_sub_vec2_u32(~(vec2<u32>(2008u, 4294967295u) | vec2<u32>(u_input.a, u_input.d)), func_2().b)), ~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(0u, 34908u)), 63957u)), vec2<f32>(-991f, -1807f));
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.b), Struct_1(_wgslsmith_div_u32(u_input.a, 0u) | 1u, var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-445f * var_0.b.x), -690f, false)) * _wgslsmith_f_op_f32(floor(-462f)))), select(~7222u, _wgslsmith_add_u32(~max(var_0.a, 4294967295u), var_0.a), true | (abs(u_input.b) <= firstLeadingBit(u_input.c.x))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) - vec2<f32>(-908f, -200f))))), abs(max(func_6(var_1.a, false), vec2<u32>(var_0.a, 1u)) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(30839u, 0u)) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(770f * 550f)))), func_7(u_input.b << (~var_0.a % 32u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.b.a, u_input.a), vec2<u32>(u_input.d, u_input.a), vec2<u32>(var_1.a.b.a, var_0.a))), func_6(Struct_2(var_0.b, var_1.a.b, var_1.a.a.x), false).x | _wgslsmith_add_u32(34211u, 53746u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b)))), _wgslsmith_f_op_f32(sign(1103f))), select(var_1.a.b.a, 0u, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))));
    var var_3 = _wgslsmith_f_op_f32(-1785f + -1000f);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a.b.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2().c.a.x, _wgslsmith_f_op_f32(635f - 1000f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(361f + -1412f)), var_0.b)));
    var var_5 = Struct_1(1u, func_7(~(-u_input.c.x), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a, 0u), countOneBits(~vec2<u32>(4294967295u, var_2.c.b.a))), var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.c, var_1.a.c), var_0.b) - var_4), _wgslsmith_div_vec2_f32(vec2<f32>(1483f, var_0.b.x), vec2<f32>(-814f, 1466f)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(968f + 1331f), _wgslsmith_f_op_f32(-var_0.b.x), func_1(1u, 4294967295u).b.b.x, _wgslsmith_f_op_f32(-var_2.c.b.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.b.x, var_4.x, -446f, var_1.a.c) * vec4<f32>(1000f, var_2.c.a.x, -465f, var_1.a.b.b.x)) - vec4<f32>(var_5.b.x, var_1.a.c, var_1.a.c, var_0.b.x))))), func_2().c.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), 386f, any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false)))))), vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-28442i, u_input.b, -30956i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 54641i), vec4<i32>(u_input.c.x, u_input.b, u_input.b, 1i))))), ~vec4<u32>(select(69369u, ~u_input.a, true), 4294967295u, 26026u, 4294967295u ^ var_2.b.x));
}

