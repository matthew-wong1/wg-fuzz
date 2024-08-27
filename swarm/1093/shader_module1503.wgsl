struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f))), !vec2<bool>(~438u < min(4294967295u, u_input.c), any(vec4<bool>(false, true, true, false))), -1571f, min(_wgslsmith_div_vec4_i32(vec4<i32>(abs(-2147483647i), u_input.a.x ^ -32560i, -u_input.b, 1i), -u_input.a), u_input.a));
    let var_1 = vec2<bool>(select(any(select(vec4<bool>(true, false, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, false, false), vec4<bool>(var_0.b.x, false, true, var_0.b.x))) || ((u_input.b >> (arg_0.x % 32u)) == var_0.d.x), true & !select(true, true, var_0.b.x), false), !all(!(!vec2<bool>(var_0.b.x, var_0.b.x))));
    global0 = var_1.x;
    var_0 = Struct_1(var_0.c, select(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(false, false, true))), true), !select(vec2<bool>(true, true), vec2<bool>(var_0.b.x, var_0.b.x), select(true, var_1.x, var_0.b.x)), !all(vec4<bool>(var_0.b.x, true, var_1.x, false))), _wgslsmith_f_op_f32(sign(623f)), ~vec4<i32>(0i, -1i, _wgslsmith_mod_i32(-2147483647i, u_input.b), -u_input.a.x));
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(select(-820f, _wgslsmith_f_op_f32(floor(var_0.c)), var_1.x))), select(select(var_0.b, vec2<bool>(var_0.c <= -1105f, -32040i > u_input.b), vec2<bool>(!var_1.x, !var_1.x)), var_1, !(!(u_input.a.x <= u_input.a.x))), var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -17987i << (_wgslsmith_clamp_u32(17028u, arg_0.x, 1u) % 32u), ~(-1i), _wgslsmith_add_i32(u_input.a.x, var_0.d.x ^ 2147483647i)), ~vec4<i32>(var_0.d.x, 4335i, u_input.b, var_0.d.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(-8887i, u_input.b, u_input.a.x, -69557i), vec4<i32>(u_input.b, var_0.d.x, u_input.b, var_0.d.x) | var_0.d)));
    return min(u_input.c, 135180u);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1788f, -1118f), vec2<f32>(-328f, -1570f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1406f, 2799f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-323f, -1437f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(528f, -625f)))))));
    let var_1 = -9887i;
    var var_2 = select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(u_input.c, 6951u), u_input.c, _wgslsmith_div_u32(92478u, 25617u), 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 86048u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c)), min(~4294967295u, func_3(vec2<u32>(1u, 0u), vec4<u32>(7062u, u_input.c, u_input.c, u_input.c))), ~_wgslsmith_mod_u32(u_input.c, 4294967295u), 1u), ~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) & vec4<u32>(~22865u, 4294967295u, ~u_input.c, u_input.c)), vec4<u32>(_wgslsmith_mod_u32(~u_input.c, abs(4294967295u | u_input.c)), 66018u, 1u, _wgslsmith_clamp_u32(u_input.c & 23055u, firstLeadingBit(u_input.c ^ u_input.c), u_input.c)), true);
    var_2 = ~(~_wgslsmith_mult_vec4_u32(reverseBits(reverseBits(vec4<u32>(var_2.x, var_2.x, var_2.x, 60797u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 29059u, var_2.x, u_input.c), max(vec4<u32>(17195u, 1u, 4294967295u, 1u), vec4<u32>(1u, 1u, u_input.c, 39410u)))));
    let var_3 = -var_1;
    return 32011i;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = false;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0.d, vec4<i32>(abs(17025i), func_2(), ~2147483647i, max(arg_0.d.x, arg_0.d.x))), -48714i) ^ ~1i;
    let var_2 = Struct_2(vec2<f32>(arg_0.a, arg_0.c));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), select(vec2<bool>(30426u == ~u_input.c, true), arg_0.b, select(arg_0.b, vec2<bool>(false, u_input.c > u_input.c), arg_0.b.x)), -1000f, u_input.a);
    return var_3;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global0 = arg_1.b.x;
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -449f, 688f, arg_1.c)), vec4<f32>(arg_2.x, 847f, -1475f, arg_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-911f)), _wgslsmith_f_op_f32(-arg_1.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) * _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-489f)))), _wgslsmith_div_f32(func_1(arg_1, arg_1.d.x).a, _wgslsmith_f_op_f32(exp2(func_1(Struct_1(-442f, arg_1.b, 389f, vec4<i32>(0i, 1i, 10764i, u_input.a.x)), -1i).a))), _wgslsmith_f_op_f32(-arg_2.x)));
    var var_1 = -arg_1.d.wy;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(-1745f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1.c)))), vec2<bool>(all(select(!vec4<bool>(true, false, arg_1.b.x, false), !vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true), vec4<bool>(arg_1.b.x, true, true, true), vec4<bool>(arg_1.b.x, false, false, true)))), func_1(func_1(func_1(arg_1, var_1.x), u_input.a.x), 65339i).b.x), -203f, abs(-(vec4<i32>(-1i) * -vec4<i32>(64159i, -1i, -2147483647i, -2147483647i))));
    var var_3 = var_2;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = arg_0.b.x;
    var var_0 = -135f;
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(arg_0.c * 159f), func_4(u_input.c, arg_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 997f)), vec2<f32>(arg_0.a, -349f)))).b, -1132f, reverseBits(vec4<i32>(1i, 1i, 1i & u_input.b, arg_0.d.x << (0u % 32u)))), func_4(u_input.c, func_1(Struct_1(arg_0.c, arg_0.b, _wgslsmith_f_op_f32(-1955f * -992f), firstLeadingBit(vec4<i32>(arg_1, u_input.b, arg_0.d.x, arg_0.d.x))), -22744i), _wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, _wgslsmith_f_op_f32(arg_0.a * -1416f)) - vec2<f32>(-195f, _wgslsmith_f_op_f32(ceil(arg_0.a))))).d.x);
    let var_2 = vec4<bool>(false && var_1.b.x, !(_wgslsmith_div_f32(589f, 1836f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-888f)) - 1000f)), any(vec3<bool>(false, true, var_1.b.x)), true);
    let var_3 = var_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(510f, _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(216f * -2708f))), -722f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = ~u_input.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_5(func_4(countOneBits(u_input.c), func_1(Struct_1(1059f, vec2<bool>(true, true), -989f, vec4<i32>(u_input.b, -1i, u_input.b, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1685f, -1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-910f, -1000f) + vec2<f32>(-575f, -915f)))), 0i)), func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1862f, -2823f, true))), vec2<bool>(true, true), _wgslsmith_f_op_f32(step(-186f, -914f)), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x) ^ -vec4<i32>(u_input.a.x, -39547i, u_input.b, u_input.b)), 0i).b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-934f - _wgslsmith_f_op_f32(abs(889f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3010f), _wgslsmith_f_op_f32(abs(-2293f))))))), vec4<i32>(u_input.a.x, 2147483647i, ~u_input.a.x, 53704i ^ ~u_input.a.x));
    let var_2 = vec2<u32>(~(~(~1u)), 0u);
    let var_3 = true;
    var var_4 = Struct_1(var_1.a, var_1.b, -487f, countOneBits(-(~vec4<i32>(u_input.a.x, 2147483647i, u_input.b, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a.zy | ~(~u_input.a.xx)) ^ vec2<i32>(_wgslsmith_clamp_i32(u_input.b, 14181i, -2147483647i) | u_input.a.x, func_2()), ~((vec3<u32>(0u, var_2.x, u_input.c) << (vec3<u32>(1u, u_input.c, 3360u) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, 4294967295u, u_input.c), vec3<u32>(var_2.x, var_2.x, u_input.c))) >> (~vec3<u32>(var_2.x, reverseBits(var_2.x), u_input.c >> (4294967295u % 32u)) % vec3<u32>(32u)));
}

