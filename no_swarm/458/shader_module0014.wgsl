struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14607i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_5(arg_2.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(749f)))))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.a, 0u, 0u, var_0.a.a), arg_1)), vec4<u32>(~arg_1.x, _wgslsmith_mod_u32(1u, 94616u), 0u, u_input.b.x)), _wgslsmith_mod_i32(var_0.a.b, u_input.c.x), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.xxx, arg_2.a.c, vec3<i32>(0i, u_input.c.x, var_0.a.c.x)), abs(u_input.c.zyy)), ~var_0.a.c.x, select(u_input.c.x, _wgslsmith_sub_i32(var_0.a.c.x, 2147483647i), u_input.b.x < 1u)), vec3<bool>((4294967295u >> (var_0.a.a % 32u)) < (var_0.a.a | u_input.a.x), !(!arg_2.a.d.x), true)));
    let var_3 = Struct_5(var_2.a);
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1))));
    return 60966i;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(430f, 1f) + -1544f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-349f + -1919f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-721f, 336f) - _wgslsmith_f_op_f32(f32(-1f) * -1050f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1208f * -2834f), _wgslsmith_f_op_f32(500f - _wgslsmith_f_op_f32(958f - -1526f)))));
    let var_1 = vec2<bool>(true, !all(vec2<bool>(true, true)));
    var var_2 = Struct_2(!(!var_1.x), _wgslsmith_f_op_f32(-var_0), abs(~(~(~4294967295u))));
    let var_3 = select(!vec3<bool>(select(true, var_1.x, var_1.x), var_2.a, all(vec4<bool>(var_1.x, false, false, true)) || (-9678i >= u_input.c.x)), vec3<bool>(var_2.a, !(598f >= var_0), false), !(!vec3<bool>(!var_1.x, any(vec3<bool>(true, true, var_2.a)), any(vec3<bool>(var_1.x, false, var_2.a)))));
    global0 = max(_wgslsmith_div_i32(u_input.c.x, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * 1410f), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.a.x, var_2.c), select(vec4<u32>(var_2.c, u_input.a.x, var_2.c, u_input.a.x), vec4<u32>(0u, var_2.c, var_2.c, 51078u), vec4<bool>(true, var_3.x, var_3.x, var_1.x))), Struct_3(Struct_1(1u, -1i, u_input.c.xzy, var_3)))), min(abs(~u_input.d), abs(u_input.c.x)));
    return Struct_2(u_input.c.x <= ~2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-105f, 2654f, var_1.x))))), -859f, var_1.x)), 4294967295u);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<bool> {
    global0 = ~select(-11478i, u_input.d, any(vec3<bool>(false, arg_1.a, false))) >> (firstLeadingBit(~arg_1.c) % 32u);
    let var_0 = 27082u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1403f, 1942f)), arg_1.b))), arg_1.b, 826f));
    var var_2 = any(arg_0.xwy);
    let var_3 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 1u), u_input.a.xz), -2147483647i, abs(u_input.c.wyy), arg_0.zyy);
    return vec3<bool>(!func_2().a && !all(vec4<bool>(arg_0.x, arg_1.a, false, false)), false, 0u == firstTrailingBit(~_wgslsmith_div_u32(10644u, var_3.a)));
}

fn func_5(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1322f)) + func_2().b))));
    var var_1 = Struct_1(arg_1, u_input.d, u_input.c.zzy, select(vec3<bool>(arg_0, var_0 == _wgslsmith_f_op_f32(-var_0), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-472f, -2839f, arg_0))) < _wgslsmith_f_op_f32(-var_0)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(-1392f, var_0)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0)), 257f))));
    let var_3 = Struct_2(all(select(vec2<bool>(true && arg_0, func_2().a), var_1.d.zz, !vec2<bool>(false, var_1.d.x))), var_0, _wgslsmith_clamp_u32((min(arg_1, 6055u) & ~1u) | 76331u, ~_wgslsmith_mod_u32(reverseBits(arg_1), u_input.a.x), 4294967295u));
    var var_4 = all(var_1.d.zx);
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var_0 = false;
    var_0 = true;
    var_0 = func_5(all(select(func_4(vec4<bool>(true, true, true, true), func_2()), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, true, false))), vec3<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, true)), true))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 0u), 4294967295u), ~min(vec2<u32>(12888u, 48839u), u_input.a.xy)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), u_input.a.zz), u_input.b.yz) << (vec2<u32>(115002u, countOneBits(63862u)) % vec2<u32>(32u))));
    global0 = firstTrailingBit(1i);
    return Struct_2(all(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), 170f, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, 1674f, _wgslsmith_sub_u32(~(~45725u), ~u_input.b.x) | 62752u);
    let var_1 = func_1();
    var var_2 = Struct_4(var_0.c, select(vec2<bool>(true, true), vec2<bool>(true, var_0.a), var_0.a), !vec4<bool>(var_0.a, !(var_1.a & false), func_5(false, ~var_1.c), var_1.a));
    global0 = u_input.c.x;
    var var_3 = !(!var_0.a);
    let var_4 = -u_input.c.x >> (var_2.a % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(115951u, var_1.c, u_input.a.x, var_2.a) >> ((vec4<u32>(var_2.a, 0u, var_0.c, 91046u) << (vec4<u32>(21880u, var_2.a, u_input.b.x, 4633u) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(firstTrailingBit(vec4<u32>(var_0.c, 9776u, 47245u, var_0.c))), var_1.a));
}

