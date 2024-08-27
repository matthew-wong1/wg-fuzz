struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<f32> = vec2<f32>(-959f, -1201f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = global0.a;
    let var_1 = vec2<u32>(~35907u, global0.a.x ^ 1u);
    let var_2 = global0.b.x;
    var_0 = vec2<u32>(~(~var_1.x), 26199u);
    global0 = Struct_4(_wgslsmith_add_vec2_u32(var_1, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, var_0.x), vec2<u32>(global0.a.x, 49151u))), vec3<i32>(~_wgslsmith_add_i32(-17149i, -13401i), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, global0.b.x, u_input.a), vec3<i32>(0i, -65971i, global0.b.x)), ~_wgslsmith_div_i32(~u_input.a, -7776i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - -2178f))));
    return _wgslsmith_sub_u32(67322u, countOneBits(~((var_1.x << (0u % 32u)) << (var_1.x % 32u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(Struct_1(global0.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, global0.c, 219f))))), Struct_1(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -788f) + vec3<f32>(global0.c, global0.c, global0.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, 587f)))), Struct_1(~(~70085u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1533f, -1301f) * vec3<f32>(1725f, -445f, global0.c)) * vec3<f32>(1872f, -314f, global1.x))), Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global1.x, global1.x)))), Struct_1(~_wgslsmith_mult_u32(0u, 43176u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(706f, global1.x, -638f)))), Struct_2(Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1076f, 1289f, global0.c) - vec3<f32>(global1.x, global0.c, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(455f, global1.x, global1.x))))), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2053f, global1.x, -399f) * vec3<f32>(global1.x, global1.x, global1.x))))), Struct_1(global0.a.x, vec3<f32>(_wgslsmith_f_op_f32(global1.x - global0.c), _wgslsmith_div_f32(772f, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -902f))), Struct_1(~10464u, vec3<f32>(652f, _wgslsmith_f_op_f32(-global1.x), -2087f)), Struct_1(~(7312u & global0.a.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_div_f32(-1000f, global1.x), _wgslsmith_f_op_f32(round(global1.x))))), false, Struct_2(Struct_1(~arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(1710f, global0.c, 1074f) - vec3<f32>(1000f, global1.x, global1.x))), Struct_1(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2418f, global1.x, global1.x))), Struct_1(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-981f, global1.x, global0.c))), Struct_1(arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c, -1387f, -2733f))))), Struct_1(_wgslsmith_mod_u32(global0.a.x, ~global0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 240f, global1.x), vec3<f32>(global0.c, 1000f, 1428f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(340f, global0.c, -1074f)))))));
    let var_1 = Struct_4(firstTrailingBit(firstLeadingBit(vec2<u32>(~arg_2, 0u))), -select(max(firstTrailingBit(vec3<i32>(u_input.a, arg_0.x, u_input.a)), select(vec3<i32>(u_input.a, arg_0.x, -20606i), global0.b, var_0.c)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, -1i), vec2<i32>(global0.b.x, arg_0.x)), 2147483647i >> (arg_2 % 32u), -arg_0.x), select(any(vec4<bool>(var_0.c, var_0.c, false, var_0.c)), var_0.c, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + var_0.d.e.b.x)), -781f, all(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))));
    let var_2 = 1u;
    let var_3 = Struct_3(Struct_2(Struct_1(30075u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.d.b))), Struct_1(15241u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-177f, 607f, 477f)), vec3<f32>(1379f, global0.c, 979f)))), Struct_1(0u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-598f, var_1.c, 1854f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, var_1.c, -625f), vec3<f32>(439f, global1.x, -1344f), var_0.c))))), var_0.d.c, var_0.a.d), var_0.a, true, Struct_2(Struct_1(~(~39258u), _wgslsmith_f_op_vec3_f32(-var_0.a.a.b)), var_0.a.a, Struct_1(arg_1.x, _wgslsmith_f_op_vec3_f32(round(var_0.d.c.b))), var_0.d.b, Struct_1(var_0.b.d.a, vec3<f32>(_wgslsmith_f_op_f32(select(var_1.c, global1.x, var_0.c)), global1.x, -652f))));
    let var_4 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(66103u, 1u, 1u), vec3<u32>(var_0.a.d.a, var_2, global0.a.x) >> (vec3<u32>(var_1.a.x, 4294967295u, var_3.d.c.a) % vec3<u32>(32u)), vec3<u32>(arg_1.x, var_2, 72131u)) << ((~vec3<u32>(var_1.a.x, global0.a.x, 25063u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, arg_1.x, 0u), vec3<u32>(91374u, 0u, var_2), vec3<u32>(60944u, var_0.d.e.a, 69243u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(74956u, ~func_3(), 15228u)) ^ ~vec3<u32>(~var_3.a.d.a >> (_wgslsmith_mult_u32(109228u, global0.a.x) % 32u), 0u, ~(~arg_1.x));
    return !(!vec4<bool>(any(!vec3<bool>(true, var_0.c, true)), abs(arg_0.x) <= (-1i >> (arg_2 % 32u)), var_3.c, !(global0.b.x == 2147483647i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    global1 = _wgslsmith_div_vec2_f32(arg_1.b.xx, arg_1.b.yx);
    let var_0 = select(func_2(~vec2<i32>(arg_0, -39543i), global0.a, _wgslsmith_clamp_u32(~global0.a.x, reverseBits(global0.a.x) ^ arg_1.a, _wgslsmith_div_u32(~global0.a.x, ~arg_1.a))), select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, _wgslsmith_f_op_f32(ceil(-1029f)) < _wgslsmith_f_op_f32(216f - arg_1.b.x)), select(!func_2(global0.b.zy, vec2<u32>(global0.a.x, 12962u), 92331u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true)), true), all(vec2<bool>(func_2(vec2<i32>(-19596i, arg_2), vec2<u32>(arg_1.a, arg_1.a), global0.a.x).x, true)) || any(vec2<bool>(true, false)));
    let var_1 = u_input.a;
    let var_2 = true;
    global1 = _wgslsmith_f_op_vec2_f32(-arg_1.b.xx);
    return vec4<f32>(_wgslsmith_div_f32(753f, _wgslsmith_f_op_f32(step(717f, global1.x))), arg_1.b.x, 1436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(-arg_3.ww);
    var var_0 = Struct_5(max(firstTrailingBit(-(1i | u_input.a)), -_wgslsmith_add_i32(arg_1.x, arg_1.x)), Struct_1(1u, _wgslsmith_f_op_vec3_f32(arg_3.xzx + _wgslsmith_f_op_vec3_f32(-arg_3.www))), Struct_4(global0.a, ~vec3<i32>(i32(-1i) * -33415i, arg_2, -3447i), _wgslsmith_f_op_f32(f32(-1f) * -553f)));
    let var_1 = Struct_5(_wgslsmith_clamp_i32(~var_0.c.b.x, countOneBits(arg_2), u_input.a), Struct_1(global0.a.x, var_0.b.b), var_0.c);
    var var_2 = _wgslsmith_div_u32(0u, 1u);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c.c + global1.x), var_1.c.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(942f)))))), global1.x);
    return Struct_2(var_1.b, var_1.b, Struct_1(4294967295u << (~(var_0.c.a.x ^ var_1.c.a.x) % 32u), var_0.b.b), var_1.b, Struct_1(_wgslsmith_clamp_u32(1u, var_0.b.a ^ global0.a.x, var_0.b.a), vec3<f32>(global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_3.x)))), global0.c)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_mod_i32(-6605i, min(11694i, global0.b.x)), Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u)), firstTrailingBit(vec2<u32>(global0.a.x, 1u)) << (~vec2<u32>(0u, 84483u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(floor(arg_0.a.b))), Struct_4(global0.a & firstLeadingBit(vec2<u32>(arg_0.d.a, global0.a.x)), ~(~vec3<i32>(global0.b.x, 1i, global0.b.x)), -835f));
    global0 = Struct_4(var_0.c.a, -var_0.c.b, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(570f + _wgslsmith_f_op_f32(round(588f))), 1432f)));
    var var_1 = vec4<i32>(global0.b.x, ~u_input.a, 2147483647i, ~(~0i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0.b.b.x, 287f, arg_0.b.b.x) * vec4<f32>(global1.x, 262f, var_0.b.b.x, 426f)))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(1726f + _wgslsmith_f_op_f32(310f - 422f)), -2126f)));
    var var_3 = arg_0.e.b.x;
    return func_4(vec2<i32>(_wgslsmith_mod_i32(~var_1.x << (arg_0.b.a % 32u), u_input.a), -12437i), ~var_1.xy, -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_2, var_2)))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec2<i32>(6970i, global0.b.x), vec2<i32>(global0.b.x, min(global0.b.x, global0.b.x)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a, global0.b.x | u_input.a), global0.b.x, u_input.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(0i, Struct_1(global0.a.x, vec3<f32>(global1.x, global0.c, global1.x)), 20224i)) + vec4<f32>(global0.c, global1.x, -1615f, -741f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, 1314f, global0.c, global0.c) + vec4<f32>(265f, global1.x, -612f, global1.x)) + vec4<f32>(global1.x, -705f, global1.x, 1425f)), !(global0.a.x != global0.a.x)))));
    var var_1 = func_4(-global0.b.zx, global0.b.zz << (global0.a % vec2<u32>(32u)), ~(-global0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2059f, _wgslsmith_f_op_f32(ceil(-1394f)), 463f, global1.x)));
    let var_2 = Struct_4(~(~vec2<u32>(global0.a.x, ~58980u)), abs(-max(vec3<i32>(1i, -23152i, 5933i), vec3<i32>(-1i, 41866i, u_input.a))) ^ (global0.b >> (~reverseBits(vec3<u32>(25846u, 0u, var_0.a)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    var var_3 = min(vec4<i32>(max(-11699i, firstLeadingBit(19097i)) ^ _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(u_input.a, 6334i)), 955i, -1i, var_2.b.x), vec4<i32>(_wgslsmith_mod_i32(max(var_2.b.x, var_2.b.x), u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(global0.b.x, u_input.a, u_input.a, var_2.b.x)), vec4<i32>(u_input.a, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, global0.b.x, global0.b.x, u_input.a)), min(vec4<i32>(0i, -8096i, global0.b.x, var_2.b.x) & vec4<i32>(1i, global0.b.x, 5215i, -6044i), vec4<i32>(var_2.b.x, var_2.b.x, u_input.a, 1i))), -1i, -6337i));
    var var_4 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1028f, 322f, global1.x))))) - var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(abs(select(abs(global0.b.zy), select(vec2<i32>(44542i, global0.b.x), var_3.xz, false), true)), var_3.xx, -38800i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.b.x, 585f, 1646f, 1885f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-760f, global1.x, 398f, var_0.b.x) - vec4<f32>(var_1.e.b.x, var_4.b.x, -1008f, -2017f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-902f, 508f, var_0.b.x, 1343f))) + vec4<f32>(1000f, global1.x, var_0.b.x, global1.x)))).e.b, func_5(Struct_2(func_5(func_4(vec2<i32>(var_3.x, -1i), vec2<i32>(1i, 63604i), var_3.x, vec4<f32>(global0.c, global1.x, var_1.a.b.x, 916f))), Struct_1(_wgslsmith_add_u32(var_1.e.a, var_1.d.a), vec3<f32>(global0.c, 101f, var_4.b.x)), Struct_1(var_2.a.x, vec3<f32>(var_1.e.b.x, var_2.c, var_1.a.b.x)), func_5(Struct_2(Struct_1(34813u, vec3<f32>(var_4.b.x, var_2.c, var_4.b.x)), Struct_1(43564u, vec3<f32>(var_0.b.x, -2903f, global0.c)), var_1.d, var_1.d, var_1.c)), Struct_1(var_4.a, var_4.b))).b, ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-10786i, -1i, -2147483647i), vec3<i32>(41668i, 28845i, 32896i)), ~var_2.b.x) | -firstLeadingBit(firstLeadingBit(var_3.xw)), _wgslsmith_clamp_vec2_u32(~global0.a, vec2<u32>(~79718u, (0u & global0.a.x) << (43171u % 32u)), vec2<u32>(_wgslsmith_mult_u32(global0.a.x, var_2.a.x), 20864u)), ~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, 1i, u_input.a), vec4<i32>(var_2.b.x, var_3.x, var_3.x, 376i) & vec4<i32>(36518i, var_3.x, 1i, -2147483647i)), i32(-1i) * -4731i, _wgslsmith_mult_i32(global0.b.x, 2147483647i) ^ (i32(-1i) * -24429i)));
}

