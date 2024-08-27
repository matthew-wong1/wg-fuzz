struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.a) + arg_3.a.a))));
    global0 = vec2<i32>(arg_2.a.b.b, 2147483647i >> (_wgslsmith_clamp_u32(arg_3.a.b.c.x, _wgslsmith_mod_u32(arg_3.b.b.c.x, 4294967295u), ~arg_3.b.b.c.x) % 32u));
    let var_1 = arg_0;
    let var_2 = -_wgslsmith_sub_vec3_i32(-(~global1.xzw) ^ (u_input.a.zwy & -global1.xyy), ~_wgslsmith_div_vec3_i32(global1.zyx, vec3<i32>(35695i, 1i, -23403i)) >> (abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_3.a.b.c.x, arg_2.c.c.x), vec3<u32>(arg_3.b.b.c.x, 4294967295u, 8079u))) % vec3<u32>(32u)));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -440f), arg_3.b.a.x)))) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), false, var_1);
    return _wgslsmith_f_op_vec3_f32(floor(arg_3.a.a));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    let var_0 = arg_2.b.b;
    var var_1 = _wgslsmith_add_i32(29250i >> (~arg_2.b.c.x % 32u), -42654i);
    let var_2 = !vec4<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), arg_1.x < ~88009u, any(vec4<bool>(all(vec2<bool>(false, true)), true, all(vec2<bool>(false, false)), 5351u >= arg_1.x)), false);
    global1 = ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 41048i), vec2<i32>(0i, arg_0.a.b.a.x)), 1i), arg_0.b.b.b, 18473i, var_0);
    global0 = vec2<i32>(3911i, _wgslsmith_div_i32(-13863i & firstLeadingBit(u_input.a.x), arg_0.a.b.a.x));
    return _wgslsmith_clamp_u32(arg_0.a.b.c.x, ~(~0u), 4294967295u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(func_4(arg_0, vec2<u32>(24163u, 1u), Struct_2(arg_1.b.a, Struct_1(vec2<i32>(arg_1.b.b.a.x, arg_0.b.b.b), global0.x, arg_0.b.b.c)), _wgslsmith_f_op_vec3_f32(func_3(false, arg_1.b, Struct_3(Struct_2(arg_0.b.a, Struct_1(vec2<i32>(arg_1.a.b.a.x, arg_0.b.b.a.x), -58005i, arg_1.b.b.c)), Struct_2(vec3<f32>(arg_1.a.a.x, 960f, arg_0.a.a.x), arg_0.b.b), arg_0.b.b), Struct_4(arg_0.b, arg_1.b)))), ~arg_1.a.b.c.x), arg_0.b.b.c.x, _wgslsmith_div_u32(~arg_0.a.b.c.x, abs(arg_0.a.b.c.x)));
    var var_1 = arg_1.b.b.c.x;
    var var_2 = ~(~vec2<i32>(-6732i, ~(arg_0.b.b.a.x | global1.x)));
    var_1 = arg_0.a.b.c.x;
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(global0.x, u_input.a.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -12969i), _wgslsmith_add_vec2_i32(vec2<i32>(-10653i, global0.x), vec2<i32>(u_input.b, arg_0.a.b.a.x))), ~vec2<i32>(arg_0.a.b.b, -1i))), 14445i);
    return firstLeadingBit(reverseBits(~abs(vec4<u32>(10063u, 4294967295u, 4294967295u, arg_1.a.b.c.x) ^ vec4<u32>(arg_1.b.b.c.x, 1u, 28771u, 4294967295u))));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(select(~func_2(Struct_4(Struct_2(vec3<f32>(480f, -103f, -1024f), Struct_1(vec2<i32>(2147483647i, -1i), 2147483647i, vec2<u32>(1u, 51817u))), Struct_2(vec3<f32>(1280f, 793f, -527f), Struct_1(u_input.a.wx, u_input.b, vec2<u32>(63429u, 38724u)))), Struct_4(Struct_2(vec3<f32>(186f, -496f, -1608f), Struct_1(global1.xw, global0.x, vec2<u32>(4611u, 33612u))), Struct_2(vec3<f32>(-701f, -1427f, -1000f), Struct_1(vec2<i32>(-2147483647i, u_input.a.x), -1i, vec2<u32>(21673u, 1u))))) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 84747u, 4294967295u, 17640u), vec4<u32>(1u, 36153u, 34697u, 48172u), vec4<u32>(4294967295u, 15483u, 1u, 64649u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(abs(1u), 21677u), ~22566u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18231u, 4294967295u, 10211u), vec3<u32>(1u, 4294967295u, 71614u)), _wgslsmith_div_u32(36857u, 9198u))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)))), min(~_wgslsmith_add_vec4_u32(func_2(Struct_4(Struct_2(vec3<f32>(1072f, -1000f, 714f), Struct_1(vec2<i32>(36594i, u_input.b), 2147483647i, vec2<u32>(1643u, 0u))), Struct_2(vec3<f32>(1672f, 1273f, 1222f), Struct_1(u_input.a.zy, 26457i, vec2<u32>(51689u, 1u)))), Struct_4(Struct_2(vec3<f32>(996f, -1040f, 1010f), Struct_1(u_input.a.xx, global1.x, vec2<u32>(0u, 4294967295u))), Struct_2(vec3<f32>(-446f, -274f, 1611f), Struct_1(vec2<i32>(0i, global1.x), -20131i, vec2<u32>(31301u, 1u))))), vec4<u32>(37137u, 13563u, 4294967295u, 625u)), ~abs(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = select(var_0.zz, _wgslsmith_mod_vec2_u32(~var_0.xw, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xz, var_0.ww), vec2<u32>(_wgslsmith_clamp_u32(1u, 0u, 20797u), max(var_0.x, var_0.x)))), vec2<bool>((~12690i > u_input.b) & true, any(vec3<bool>(true, true, true))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(1817f, -250f, false)), 1529f, _wgslsmith_f_op_f32(sign(-387f))), Struct_1(vec2<i32>(7074i, global0.x), u_input.a.x | global1.x, _wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_0.yy))), Struct_3(Struct_2(vec3<f32>(807f, 1000f, 144f), Struct_1(u_input.a.yw, -237i, vec2<u32>(var_0.x, var_1.x))), Struct_2(vec3<f32>(1f, 1f, 1f), Struct_1(u_input.a.yw, -17920i, var_0.ww)), Struct_1(vec2<i32>(0i, 1i), i32(-1i) * -54429i, _wgslsmith_mod_vec2_u32(var_0.zx, var_0.yx))), Struct_4(Struct_2(vec3<f32>(-2333f, -912f, 925f), Struct_1(vec2<i32>(-2147483647i, -1i), global0.x, vec2<u32>(var_0.x, var_1.x))), Struct_2(vec3<f32>(141f, -911f, -479f), Struct_1(vec2<i32>(2147483647i, -35724i), 1i, var_0.xy))))), Struct_1(vec2<i32>(global0.x, u_input.a.x), -u_input.a.x, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 79339u)) ^ var_0.x, abs(func_2(Struct_4(Struct_2(vec3<f32>(-393f, -1199f, -1024f), Struct_1(global1.xw, -1i, vec2<u32>(var_0.x, var_0.x))), Struct_2(vec3<f32>(1986f, 1357f, 370f), Struct_1(u_input.a.wx, u_input.b, vec2<u32>(var_1.x, 69523u)))), Struct_4(Struct_2(vec3<f32>(711f, 1102f, 124f), Struct_1(global1.wy, u_input.a.x, vec2<u32>(var_1.x, var_1.x))), Struct_2(vec3<f32>(348f, 1000f, -778f), Struct_1(u_input.a.zx, global0.x, var_0.zx)))).x))));
    let var_3 = Struct_1(abs(min(~_wgslsmith_sub_vec2_i32(var_2.b.a, vec2<i32>(9578i, global0.x)), var_2.b.a)), select(u_input.a.x ^ 2147483647i, ~global0.x, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true))), _wgslsmith_add_vec2_u32(var_2.b.c, ~vec2<u32>(_wgslsmith_sub_u32(var_1.x, 0u), var_0.x)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + -433f)))), _wgslsmith_f_op_f32(min(116f, 516f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f), var_2.a.x));
    return ~abs(max(vec2<u32>(4294967295u, var_1.x) ^ var_0.zw, var_0.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = ~_wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(-u_input.a.yx, select(u_input.a.zz, vec2<i32>(global0.x, u_input.a.x), true), ~vec2<i32>(global0.x, u_input.b)), select(_wgslsmith_mod_vec2_i32(global1.yw, global1.yw), global1.yz, vec2<bool>(true, true)) & (vec2<i32>(2147483647i, 28954i) | vec2<i32>(global0.x, -74885i)));
    var_0 = _wgslsmith_mod_vec2_u32(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 4294967295u), abs(vec2<u32>(var_0.x, 4294967295u))), ~(~vec2<u32>(var_0.x, var_0.x))), min(~abs(vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(var_0.x, var_0.x)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, var_0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 0u), ~vec2<u32>(0u, var_0.x)))));
    let var_1 = _wgslsmith_sub_vec3_i32(min(abs(vec3<i32>(-1i) * -vec3<i32>(2147483647i, global0.x, global1.x)), vec3<i32>(global0.x, firstLeadingBit(0i), min(~u_input.b, u_input.a.x | global0.x))), -vec3<i32>(max(32597i, global0.x) ^ 6259i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(27626i, u_input.a.x, 19794i, global1.x), vec4<i32>(0i, -2147483647i, u_input.a.x, 2147483647i)), -u_input.a), abs(select(-57698i, -32908i, false))));
    var var_2 = firstLeadingBit(40839u);
    var var_3 = max(reverseBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, var_0.x, 11827u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(39142u, var_0.x, 35650u) << (vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(0u, 40241u, var_0.x), vec3<u32>(1u, 1u, 1u)), countOneBits(select(vec3<u32>(4294967295u, 4294967295u, var_0.x), vec3<u32>(1283u, var_0.x, 4294967295u), false)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.x, firstLeadingBit(var_0.x)), var_0.x, var_0.x), max(_wgslsmith_sub_vec3_u32(vec3<u32>(18872u, 1u, 1u), vec3<u32>(64453u, var_0.x, 27750u)) >> (vec3<u32>(957u, var_0.x, 81434u) % vec3<u32>(32u)), ~(~vec3<u32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(120259u, var_0.x, var_0.x) & vec3<u32>(0u, var_0.x, var_0.x)), ~vec3<u32>(var_0.x, 0u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(_wgslsmith_add_u32(var_0.x, var_3.x) << (var_0.x % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41759u) ^ vec2<u32>(var_3.x, 49341u), ~vec2<u32>(43797u, 1u)));
}

