struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = (true & any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))) || select(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec3<bool>(false, true, true)))), true, all(vec2<bool>(all(vec3<bool>(false, true, true)), false)));
    let var_1 = Struct_3(~(u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a)), Struct_2(reverseBits(-(i32(-1i) * -2147483647i)), false, 46690u, countOneBits(vec4<i32>(u_input.b, 1i, 4553i, i32(-1i) * -4150i))));
    let var_2 = -var_1.b.a;
    var_0 = var_1.b.b;
    let var_3 = var_1.b;
    return _wgslsmith_mod_i32(~_wgslsmith_sub_i32(~var_1.b.d.x, 4541i) | -(~var_1.b.d.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.a, 1u, var_3.c), vec4<u32>(var_1.b.c, var_3.c, 5947u, var_1.a)) % 32u)), ~var_3.d.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> f32 {
    global0 = arg_0.a;
    let var_0 = arg_3.b;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, 716f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.x, global0.x, -1550f))))))) + _wgslsmith_f_op_vec3_f32(step(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.x, -441f)) - _wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a))))));
    let var_1 = any(!(!vec2<bool>(any(vec4<bool>(true, true, var_0.b, false)), !arg_3.b.b)));
    let var_2 = arg_0.b;
    return -546f;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = u_input.a.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_0, 4294967295u, firstTrailingBit(arg_0.b.a.x) == func_3(), Struct_3(firstLeadingBit(~4294967295u), Struct_2(_wgslsmith_dot_vec2_i32(arg_0.b.a.xz, vec2<i32>(arg_0.b.a.x, u_input.c)), true, min(1u, arg_0.d.b.c), vec4<i32>(2147483647i, u_input.b, 0i, u_input.b))))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_f_op_vec3_f32(select(arg_0.a, vec3<f32>(794f, arg_0.a.x, global0.x), arg_0.c)), arg_0.b, true, arg_0.d), arg_0.d.a, arg_0.b.b, Struct_3(u_input.a.x, arg_0.d.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1487f - 612f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x + arg_0.a.x), -2248f, arg_0.c)))));
    var var_1 = arg_0.b;
    let var_2 = ~abs(0i);
    let var_3 = arg_0.d.b;
    return arg_2 >> (_wgslsmith_mult_vec2_u32(u_input.a.xz, ~arg_2) % vec2<u32>(32u));
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = false;
    let var_1 = 1i;
    var_0 = ~(-arg_0.a) >= arg_0.d.x;
    var var_2 = countOneBits(abs(~func_2(Struct_4(vec3<f32>(-1484f, -473f, 1070f), Struct_1(arg_0.d, false), true, Struct_3(arg_0.c, arg_0)), global0.yz, u_input.a.zx) & vec2<u32>(countOneBits(arg_0.c), 1u)));
    let var_3 = _wgslsmith_f_op_f32(-global0.x);
    return ~_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(arg_0.d, _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, 1i, 0i, 2147483647i), arg_0.d), -arg_0.d), arg_0.d);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1418f, 276f, global0.x) * vec3<f32>(729f, 1000f, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 648f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, 2539f, arg_3.b)), global0.x, _wgslsmith_f_op_f32(global0.x - -1693f))))), vec3<bool>(true, arg_3.b, false)));
    var var_0 = vec4<u32>(_wgslsmith_add_u32(arg_1.x, 30096u), 50771u, ~(_wgslsmith_sub_u32(arg_1.x, 23897u) << (firstLeadingBit(4864u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~49175u, ~32595u, arg_2.x << (0u % 32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(96909u, 1u, arg_3.c, 1u), vec4<u32>(arg_1.x, arg_2.x, arg_2.x, 0u)), countOneBits(vec4<u32>(arg_2.x, arg_3.c, 4294967295u, u_input.a.x))))) >> ((~vec4<u32>(u_input.a.x, abs(90576u), ~arg_1.x, arg_3.c << (1u % 32u)) << (firstTrailingBit(~vec4<u32>(1u, u_input.a.x, 4294967295u, arg_2.x) & abs(vec4<u32>(1u, arg_3.c, arg_2.x, 1u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = vec2<i32>(arg_0, ~_wgslsmith_dot_vec3_i32(func_1(Struct_2(1i, false, arg_3.c, arg_3.d)).wyy, vec3<i32>(arg_3.d.x, -6426i, u_input.c) << (u_input.a % vec3<u32>(32u)))) & arg_3.d.wx;
    var_0 = abs(max(firstLeadingBit(vec4<u32>(57357u, u_input.a.x, countOneBits(0u), arg_2.x)), vec4<u32>(firstTrailingBit(50622u) >> (~0u % 32u), arg_2.x, ~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(4294967295u, var_0.x)), _wgslsmith_sub_u32(abs(27458u), var_0.x >> (arg_3.c % 32u)))));
    return arg_3.b;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 1000f) + _wgslsmith_f_op_f32(round(global0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-645f, -700f))))), Struct_1((vec4<i32>(-1i) * -vec4<i32>(1i, arg_0, -2147483647i, -41393i)) ^ vec4<i32>(14094i | arg_0, _wgslsmith_mod_i32(arg_2, 2147483647i), -arg_2, countOneBits(-3485i)), any(select(select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, arg_1, false, arg_1)), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), true), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, arg_1, true, false))))), true, Struct_3(~max(u_input.a.x, ~u_input.a.x), Struct_2(firstLeadingBit(-28298i), arg_1, _wgslsmith_div_u32(max(u_input.a.x, 0u), 33535u), vec4<i32>(arg_2, 91392i, ~(-1976i), u_input.c))));
    global0 = var_0.a;
    let var_1 = firstLeadingBit(35126u);
    var var_2 = var_0.b;
    var_2 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), var_0.a)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-287f, -311f)) * _wgslsmith_f_op_f32(min(global0.x, var_0.a.x))), _wgslsmith_div_f32(var_0.a.x, -779f), -1398f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), _wgslsmith_f_op_vec3_f32(abs(var_0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_6(u_input.b, func_5(0i, ~vec2<u32>(56352u, u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, u_input.a.x)) & ~select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(4294967295u, u_input.a.x), true), Struct_2(_wgslsmith_mult_i32(-u_input.b, u_input.c), true, _wgslsmith_sub_u32(26560u, 6080u >> (u_input.a.x % 32u)), firstTrailingBit(func_1(Struct_2(71502i, true, u_input.a.x, vec4<i32>(u_input.b, -63557i, -2147483647i, u_input.b)))))), -_wgslsmith_mult_i32(1i, 1i) | ~_wgslsmith_add_i32(u_input.c | -6620i, func_3())));
    var var_3 = vec4<u32>(u_input.a.x, u_input.a.x, ~(u_input.a.x >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 72585u, u_input.a.x)), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(select(25785u, 18299u, true), 0u >> (u_input.a.x % 32u), u_input.a.x), _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 80034u, 43544u) & u_input.a)), vec3<u32>(15154u, 1u, u_input.a.x)));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * -174f), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(min(global0.x, 396f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-736f, 896f, var_2.x))) - vec3<f32>(global0.x, var_2.x, -242f)))), Struct_1((_wgslsmith_add_vec4_i32(vec4<i32>(-22445i, u_input.b, 1i, u_input.c), vec4<i32>(u_input.b, -61574i, u_input.c, -32348i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 51278i, 8341i), vec4<i32>(-30790i, -2147483647i, -9335i, u_input.b))) >> (~(vec4<u32>(var_3.x, var_3.x, 22639u, 0u) ^ vec4<u32>(4294967295u, var_3.x, 2140u, 79799u)) % vec4<u32>(32u)), min(~u_input.a.x, var_3.x << (u_input.a.x % 32u)) >= u_input.a.x), _wgslsmith_f_op_f32(-global0.x) != global0.x, Struct_3(~_wgslsmith_dot_vec3_u32(u_input.a, select(u_input.a, var_3.xxz, true)), Struct_2(_wgslsmith_mult_i32(u_input.b, u_input.c << (var_3.x % 32u)), 0u != var_3.x, min(70572u, 90742u) & u_input.a.x, -vec4<i32>(u_input.b, u_input.c, 1i, u_input.b))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(max(28092i, 9344i), var_4.c, var_4.d.b.d.x >> (_wgslsmith_clamp_u32(func_2(Struct_4(var_4.a, Struct_1(vec4<i32>(u_input.b, u_input.b, 13851i, u_input.c), var_4.b.b), var_4.b.b, var_4.d), global0.yy, var_3.zy).x, ~var_4.d.a, var_4.d.a) % 32u))));
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_5 * var_5), _wgslsmith_div_f32(-164f, var_5), all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) - -667f))), _wgslsmith_f_op_f32(func_4(Struct_4(var_4.a, Struct_1(vec4<i32>(u_input.c, -1i, var_4.b.a.x, var_4.d.b.d.x), true), true, Struct_3(var_3.x, Struct_2(-1i, true, 1u, var_4.b.a))), 38161u, var_4.b.b, Struct_3(_wgslsmith_div_u32(121603u, var_4.d.a), var_4.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) - _wgslsmith_f_op_f32(f32(-1f) * -151f))), reverseBits(~_wgslsmith_mod_i32(abs(-58060i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 5226i), var_4.d.b.d.zy))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + var_5))))));
}

