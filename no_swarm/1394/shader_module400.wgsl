struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(2541f, -174f, -1222f, 852f), vec3<i32>(2147483647i, 43169i, 2147483647i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<u32>) -> bool {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(global0.a)), -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -28631i, global0.b.x), -global0.b)));
    var var_0 = false;
    var var_1 = global0.a.x;
    var_1 = arg_1.a.x;
    var_0 = arg_3.x < ~43693u;
    return false;
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_1(func_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -37415i, -2823i, -52484i), vec4<i32>(0i, u_input.a, -5922i, -14425i)), Struct_2(global0.a, global0.b >> (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u))), vec3<bool>(true, true, true), vec4<u32>(~66943u, arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(77283u, arg_0.x), vec2<u32>(u_input.c.x, u_input.c.x)), ~68770u)) | true, ~(-vec4<i32>(u_input.d, -2147483647i, u_input.a, global0.b.x)) & (_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, global0.b.x, 20736i, 1i), vec4<i32>(2147483647i, global0.b.x, 34442i, u_input.d)) >> ((max(vec4<u32>(1u, arg_0.x, 33193u, arg_0.x), vec4<u32>(1u, u_input.b.x, 72378u, 4294967295u)) | abs(vec4<u32>(1u, 1u, 0u, 0u))) % vec4<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(~3706u), ~_wgslsmith_mod_u32(arg_0.x, 68661u)), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c << (u_input.c % vec3<u32>(32u))) >> ((38711u ^ ~arg_0.x) % 32u)), 0i);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * vec4<f32>(-929f, 1132f, global0.a.x, 1362f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-334f, 692f, 738f, 578f)))) + global0.a), select(min(vec3<i32>(~global0.b.x, _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(-2147483647i, var_0.d, global0.b.x, -23051i)), firstTrailingBit(-24714i)), -(~vec3<i32>(global0.b.x, -2147483647i, 26779i))), abs(vec3<i32>(i32(-1i) * -2147483647i, abs(global0.b.x), abs(u_input.d))), !var_0.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, 2642f, global0.a.x) - vec4<f32>(226f, -910f, global0.a.x, 486f))) * _wgslsmith_f_op_vec4_f32(abs(global0.a))))), global0.a, select(!select(select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false), var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, false), var_0.a), true), !vec4<bool>(!var_0.a, true, true, u_input.d <= global0.b.x), !(!(var_0.a | true)))));
    var_1 = global0.a;
    let var_2 = ~select(var_0.b.zy, global0.b.yy, vec2<bool>(false, var_0.a)) >> (u_input.b % vec2<u32>(32u));
    return Struct_4(vec3<i32>(abs(var_2.x), _wgslsmith_add_i32(var_2.x, -1013i), abs(countOneBits(1i))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = false;
    var var_1 = arg_0;
    let var_2 = Struct_1(arg_0.a.x >= u_input.a, ~countOneBits(-(vec4<i32>(global0.b.x, 32119i, 1i, 0i) & vec4<i32>(u_input.d, u_input.a, global0.b.x, 2147483647i))), reverseBits(abs(_wgslsmith_add_u32(37742u, u_input.b.x) >> (abs(8929u) % 32u))), 2147483647i);
    let var_3 = Struct_1(any(vec3<bool>(any(vec4<bool>(true, var_2.a, var_2.a, var_0)), true, var_0)), _wgslsmith_mod_vec4_i32(var_2.b, -(~vec4<i32>(global0.b.x, var_1.a.x, u_input.a, var_1.a.x))), u_input.b.x, abs(var_2.b.x));
    var var_4 = -1i;
    return Struct_2(global0.a, vec3<i32>(arg_0.a.x, u_input.d, -60128i));
}

fn func_1() -> Struct_2 {
    global0 = func_4(func_2(vec2<u32>(1u, 1u)));
    global0 = func_4(Struct_4(_wgslsmith_div_vec3_i32(select(~global0.b, global0.b, -898f >= global0.a.x), select(vec3<i32>(global0.b.x, 73729i, u_input.a) ^ vec3<i32>(u_input.a, global0.b.x, global0.b.x), ~global0.b, vec3<bool>(true, true, true)))));
    var var_0 = Struct_1(func_3(1i, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(-1041f * -765f)), global0.b), vec3<bool>(all(vec2<bool>(false, true)), true, true), _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, u_input.b.x, u_input.c.x, _wgslsmith_clamp_u32(35030u, 53501u, 4294967295u)), ~(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 53291u)))), ~select(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global0.b.x, global0.b.x, 0i, global0.b.x)), vec4<i32>(68574i, global0.b.x, 11631i, -2147483647i) << (vec4<u32>(1u, u_input.b.x, 26144u, 37048u) % vec4<u32>(32u))), vec4<i32>(~2147483647i, global0.b.x, u_input.d & 0i, func_2(vec2<u32>(1u, u_input.c.x)).a.x), vec4<bool>(false, select(true, true, false), any(vec3<bool>(true, false, true)), u_input.c.x > 4294967295u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 69133u, 4294967295u, 45196u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), firstLeadingBit(vec4<u32>(3353u, 74132u, 6349u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.b.x, 122766u, 18375u) >> (vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1459u) % vec4<u32>(32u)))), 31337i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + 1032f), global0.a.x))));
    let var_2 = -11472i;
    return Struct_2(global0.a, _wgslsmith_add_vec3_i32(vec3<i32>(func_4(Struct_4(vec3<i32>(var_2, var_2, var_0.b.x))).b.x | -2147483647i, -29987i, var_2), ~(~var_0.b.xzy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(929f, global0.a.x, -464f, global0.a.x), vec4<f32>(487f, global0.a.x, 338f, global0.a.x), false)), _wgslsmith_f_op_vec4_f32(-global0.a), true)))), reverseBits(abs(global0.b)));
    let var_0 = Struct_4(-vec3<i32>(u_input.a, ~(-48916i >> (u_input.b.x % 32u)), global0.b.x));
    global0 = func_1();
    global0 = func_4(func_2(u_input.c.zz));
    global0 = Struct_2(vec4<f32>(-573f, global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-348f, -1607f)) - 357f)))), _wgslsmith_div_vec3_i32(~(-global0.b), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, -1i, -7112i), _wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, var_0.a.x, var_0.a.x), -vec3<i32>(-18765i, global0.b.x, u_input.d)))));
    var var_1 = !(true | (true | all(vec3<bool>(true, true, true))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~u_input.b.x), ~(u_input.c.x ^ ~5507u)));
}

