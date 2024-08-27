struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, firstTrailingBit(~u_input.b))), ~(~select(vec2<i32>(-23854i, -16295i), firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), true)));
    var var_1 = min(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(6533u, arg_0.b.x), vec2<u32>(29596u, arg_0.b.x)), ~(~75521u)), ~arg_3.d.b.x));
    var var_2 = arg_3.a;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.c) - _wgslsmith_f_op_f32(max(-1752f, 177f))) - -208f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_2.x, global0.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f * -796f)))), 213f);
    var_2 = arg_3.a;
    return global0.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = arg_0.d;
    let var_0 = any(select(!select(select(vec2<bool>(arg_0.d.a, arg_0.d.a), vec2<bool>(false, false), vec2<bool>(true, arg_0.d.a)), !vec2<bool>(false, arg_0.d.a), !vec2<bool>(arg_0.d.a, false)), vec2<bool>(false, !all(vec4<bool>(true, arg_0.d.a, true, false))), false));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-359f, -817f))))), vec4<u32>(~(~u_input.a), 1u, _wgslsmith_sub_u32(4294967295u, u_input.a), arg_0.d.b.x), u_input.a, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.c)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2047f)), ~func_3(Struct_2(arg_0.a, vec4<u32>(u_input.a, 0u, 0u, global0.b.x), global0.b.x, Struct_1(false, vec4<u32>(0u, global0.b.x, arg_0.c, 1u), -460f), global0.b.wwz), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 5811u, 0u), vec3<u32>(26214u, 9183u, global0.b.x)), u_input.a, arg_0), 1232f), ~(firstLeadingBit(global0.b.xww) | ~global0.b.xwz) & abs(_wgslsmith_mod_vec3_u32(global0.b.wxy, arg_0.b.wwx) >> ((global0.b.yxx | arg_0.b.xxx) % vec3<u32>(32u))));
    var var_2 = var_1;
    global0 = Struct_1(select(true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -30228i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(16492i, u_input.b, 4218i))) == select(max(u_input.b, u_input.b), _wgslsmith_add_i32(-1i, u_input.b), true), arg_0.d.a), arg_0.d.b, _wgslsmith_f_op_f32(f32(-1f) * -2124f));
    return var_2.d;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_2(Struct_2(vec2<f32>(_wgslsmith_div_f32(global0.c, -1114f), _wgslsmith_div_f32(global0.c, _wgslsmith_div_f32(global0.c, -1673f))), global0.b, ~firstTrailingBit(~1u), Struct_1((-923f > global0.c) | global0.a, vec4<u32>(~1u, u_input.a, abs(4507u), min(4294967295u, 62556u)), -1185f), select(global0.b.xzz, ~vec3<u32>(1u, arg_0, arg_0), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, global0.a, global0.a))) ^ select(vec3<u32>(15235u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 6534u, u_input.a), global0.b.zyy << (global0.b.zww % vec3<u32>(32u)), select(true, true, true))));
    global0 = Struct_1(select(true, true, !global0.a != (global0.a & true)), global0.b, _wgslsmith_div_f32(-137f, _wgslsmith_f_op_f32(f32(-1f) * -1298f)));
    global0 = Struct_1(global0.a, abs(_wgslsmith_add_vec4_u32(max(_wgslsmith_add_vec4_u32(global0.b, vec4<u32>(u_input.a, global0.b.x, u_input.a, arg_0)), global0.b), min(~vec4<u32>(4294967295u, 1u, 0u, 71413u), _wgslsmith_mod_vec4_u32(global0.b, global0.b)))), _wgslsmith_f_op_f32(abs(global0.c)));
    global0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c, -263f))))), vec4<u32>(~global0.b.x, u_input.a, _wgslsmith_div_u32(countOneBits(1u), max(u_input.a, 0u)), 1u), 0u, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.c)), global0.b & global0.b, 8415u, Struct_1(global0.a, global0.b, 1268f), vec3<u32>(u_input.a, u_input.a, u_input.a))), abs(global0.b.zzz) | ~(~vec3<u32>(4294967295u, arg_0, 19463u))));
    global0 = Struct_1(!(!(!all(vec3<bool>(false, global0.a, global0.a)))), global0.b >> (global0.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))) + global0.c))));
    return func_2(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c)) + -548f), -1863f), ~_wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(1601u, 42185u, global0.b.x, 53010u)), u_input.a ^ arg_0, Struct_1(any(vec2<bool>(false, true)) & !global0.a, global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_f_op_f32(floor(596f)), global0.a))), global0.b.xzx));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(vec2<f32>(arg_0.c, global0.c), vec4<u32>(69375u, arg_0.b.x, global0.b.x, 0u), max(global0.b.x, u_input.a), func_1(_wgslsmith_div_u32(countOneBits(~u_input.a), func_3(Struct_2(vec2<f32>(arg_0.c, arg_0.c), vec4<u32>(global0.b.x, arg_0.b.x, global0.b.x, 0u), 33804u, arg_0, global0.b.zyy), vec3<u32>(0u, 40105u, 412u), 4106u, Struct_2(vec2<f32>(arg_0.c, -581f), vec4<u32>(u_input.a, global0.b.x, arg_0.b.x, 0u), 4294967295u, arg_0, arg_0.b.yyw)).x & u_input.a)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(2073u, 4294967295u, 0u), arg_0.b.zwy));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(var_0.a)))), global0.b, _wgslsmith_mod_u32(~_wgslsmith_div_u32(var_0.c, ~global0.b.x), ~var_0.e.x), Struct_1(any(vec4<bool>(arg_0.a, all(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, global0.a)), 25323u == arg_0.b.x, any(vec4<bool>(global0.a, false, true, global0.a)))), _wgslsmith_clamp_vec4_u32(global0.b >> (vec4<u32>(16741u, global0.b.x, u_input.a, 4294967295u) % vec4<u32>(32u)), global0.b, _wgslsmith_div_vec4_u32(~arg_0.b, ~arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -572f)), select(~select(select(arg_0.b.ywy, var_0.d.b.xzz, true), vec3<u32>(9169u, 28122u, 10620u) << (global0.b.yyz % vec3<u32>(32u)), !var_0.d.a), arg_0.b.yzy, select(arg_0.a, (u_input.b << (4294967295u % 32u)) >= _wgslsmith_sub_i32(-3578i, u_input.b), !arg_0.a)));
    let var_1 = !arg_0.a;
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.c, -1418f), _wgslsmith_f_op_f32(var_0.d.c + var_0.d.c)))), _wgslsmith_f_op_f32(select(arg_0.c, global0.c, true))), countOneBits(~vec4<u32>(4294967295u, arg_0.b.x ^ 4294967295u, var_0.b.x, 1u)), ~func_3(Struct_2(vec2<f32>(584f, global0.c), firstTrailingBit(vec4<u32>(1u, 105070u, global0.b.x, 4294967295u)), _wgslsmith_sub_u32(var_0.d.b.x, 36979u), func_2(Struct_2(var_0.a, vec4<u32>(arg_0.b.x, 70422u, global0.b.x, 4294967295u), 11766u, arg_0, vec3<u32>(4294967295u, 0u, arg_0.b.x))), func_3(Struct_2(var_0.a, var_0.b, u_input.a, Struct_1(var_1, global0.b, global0.c), vec3<u32>(var_0.c, global0.b.x, 18777u)), vec3<u32>(1u, u_input.a, u_input.a), arg_0.b.x, Struct_2(vec2<f32>(global0.c, global0.c), var_0.b, 4294967295u, var_0.d, vec3<u32>(0u, 1u, 1u))).wwy), ~(~vec3<u32>(global0.b.x, 4294967295u, 77288u)), _wgslsmith_div_u32(6100u, _wgslsmith_dot_vec2_u32(var_0.e.zy, arg_0.b.xy)), Struct_2(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_0.a.x, var_0.a.x)), ~vec4<u32>(var_0.d.b.x, var_0.e.x, 31710u, 10201u), global0.b.x, func_2(Struct_2(vec2<f32>(-793f, -488f), var_0.d.b, 54870u, arg_0, var_0.e)), vec3<u32>(global0.b.x, 22424u, u_input.a))).x, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, 696f) * var_0.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-404f, global0.c))), global0.b, _wgslsmith_div_u32(func_2(Struct_2(var_0.a, vec4<u32>(u_input.a, global0.b.x, u_input.a, 0u), global0.b.x, Struct_1(true, var_0.b, var_0.a.x), vec3<u32>(10772u, var_0.b.x, 78567u))).b.x, arg_0.b.x), Struct_1(true | arg_0.a, vec4<u32>(4294967295u, var_0.d.b.x, u_input.a, 0u), global0.c), arg_0.b.zwx)), vec3<u32>(29242u, 23687u, var_0.e.x));
    var var_3 = vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(f32(-1f) * -1063f));
    var var_1 = ~vec4<i32>(-9776i, -1i, -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, -74696i), vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, 1272i))) | vec4<i32>(28251i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, 34068i)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)))), 47979i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), func_4(func_1(abs(2871u))));
    global0 = Struct_1(global0.a, vec4<u32>(max(_wgslsmith_mult_u32(u_input.a, ~0u), 58563u), ~(~abs(48891u)), global0.b.x, 4294967295u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + 891f))))), -1000f, !(global0.b.x <= firstLeadingBit(u_input.a)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global0.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(110f - global0.c)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.c) + vec2<f32>(global0.c, -776f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b.x, 4294967295u), ~global0.b.xz), ~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0.b, global0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 0u), global0.b))), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -1214f))), ~vec4<u32>(global0.b.x, global0.b.x, u_input.a, global0.b.x), 28508u, func_2(Struct_2(vec2<f32>(1217f, -1871f), global0.b, 26448u, Struct_1(global0.a, vec4<u32>(13278u, global0.b.x, global0.b.x, u_input.a), var_0), global0.b.xxz)), ~vec3<u32>(61111u, global0.b.x, 1u)), ~global0.b.zxz, ~(~global0.b.x), Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c, -397f))), ~vec4<u32>(global0.b.x, 34424u, 17539u, u_input.a), _wgslsmith_sub_u32(50924u, 19984u), func_1(global0.b.x), global0.b.xxw << (vec3<u32>(u_input.a, 30692u, 0u) % vec3<u32>(32u))))), _wgslsmith_clamp_u32(0u, ~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(global0.b.x, 0u), global0.b.x), ~48086u), Struct_1(false, _wgslsmith_mult_vec4_u32(global0.b, _wgslsmith_div_vec4_u32(global0.b, min(vec4<u32>(12752u, u_input.a, 27246u, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, 19446u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(func_1(u_input.a).c, 219f, global0.b.x == u_input.a)), var_0))), vec3<u32>(~global0.b.x, ~_wgslsmith_mod_u32(u_input.a, global0.b.x), ~func_1(57217u).b.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0)))) * vec2<f32>(-489f, global0.c)), global0.b, ~_wgslsmith_mult_u32(abs(var_2.e.x), 12639u & (global0.b.x >> (u_input.a % 32u))), func_1(17210u), var_2.b.zxx | reverseBits(~(global0.b.yyy | global0.b.ywy)));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, min(var_2.e.zy, vec2<u32>(func_1(u_input.a).b.x & 4294967295u, u_input.a << (min(4294967295u, var_3.e.x) % 32u))), abs(var_1.wy), vec2<i32>(-1i) * -abs(var_1.xz), _wgslsmith_sub_u32(1u, var_2.d.b.x));
}

