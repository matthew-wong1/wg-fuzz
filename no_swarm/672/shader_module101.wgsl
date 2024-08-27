struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec4<u32>(4294967295u, 59586u, 37439u, 90294u), vec4<bool>(false, true, true, false), vec2<f32>(1152f, -507f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> vec4<bool> {
    global1 = Struct_4(global1.a);
    let var_0 = global1.a.a.xwy;
    global1 = Struct_4(Struct_3(~(vec4<u32>(global1.a.a.x, var_0.x, var_0.x, global1.a.a.x) ^ _wgslsmith_add_vec4_u32(global1.a.a, vec4<u32>(4294967295u, var_0.x, u_input.c, var_0.x))), select(!vec4<bool>(false, global1.a.b.x, true, false), vec4<bool>(-1000f < arg_0.c.x, !arg_0.d.b, !global1.a.b.x, global1.a.b.x), any(vec3<bool>(global1.a.b.x, global1.a.b.x, true))), arg_1.zz));
    global0 = true && (_wgslsmith_add_u32(~(var_0.x >> (0u % 32u)), ~(~4294967295u)) >= _wgslsmith_mult_u32(~54466u, ~u_input.c >> (1u % 32u)));
    var var_1 = Struct_2(select(vec3<bool>(false, arg_0.e.x <= 456f, _wgslsmith_mult_u32(9924u, 1u) == (var_0.x ^ 4294967295u)), select(!(!arg_0.a), select(arg_0.a, arg_0.a, !global1.a.b.xwy), vec3<bool>(true, true, true & global1.a.b.x)), vec3<bool>(any(!global1.a.b), _wgslsmith_f_op_f32(abs(-1292f)) > _wgslsmith_f_op_f32(abs(global1.a.c.x)), global1.a.b.x)), arg_0.b, arg_0.e.xz, Struct_1(arg_0.a.x, any(select(!vec4<bool>(global1.a.b.x, global1.a.b.x, true, false), !vec4<bool>(arg_0.a.x, arg_0.d.b, false, true), true))), _wgslsmith_f_op_vec3_f32(-arg_0.e));
    return vec4<bool>(!arg_0.d.b, global1.a.b.x, true, true);
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(~(-1i), -1i, _wgslsmith_div_i32(abs(u_input.b), ~2147483647i), reverseBits(-u_input.b))), -10468i, 52128i, 2147483647i);
    global0 = ~(-19215i & _wgslsmith_div_i32(u_input.b, 2147483647i)) != -1i;
    var_0 = select((reverseBits(vec4<i32>(u_input.b, var_0.x, u_input.b, u_input.b)) ^ -vec4<i32>(u_input.b, 1i, u_input.b, u_input.b)) | (vec4<i32>(-5452i, -16965i, u_input.b, -14726i) & ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), vec4<i32>(i32(-1i) * -1i, 2147483647i, 36357i, _wgslsmith_mult_i32(min(var_0.x, var_0.x), u_input.b)), true) & reverseBits(~(~vec4<i32>(u_input.b, u_input.b, var_0.x, 2078i)) >> (vec4<u32>(arg_0.a.a.x, u_input.a | global1.a.a.x, 1u, ~1u) % vec4<u32>(32u)));
    var_0 = (select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 0i, 27117i), vec4<i32>(u_input.b, -2147483647i, var_0.x, -25274i)), abs(-vec4<i32>(var_0.x, u_input.b, -2147483647i, var_0.x)), func_3(Struct_2(arg_0.a.b.zzy, Struct_1(false, false), global1.a.c, Struct_1(false, false), vec3<f32>(global1.a.c.x, 516f, -746f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c.x, -787f, global1.a.c.x)), _wgslsmith_f_op_f32(abs(global1.a.c.x))).x) | -_wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, 46072i, var_0.x, 2147483647i)), vec4<i32>(16785i, -2147483647i, 0i, u_input.b) >> (arg_0.a.a % vec4<u32>(32u)))) & (vec4<i32>(-1i) * -(~vec4<i32>(var_0.x, 6866i, var_0.x, u_input.b)));
    global0 = global1.a.b.x;
    return select(false, !(abs(-var_0.x) >= u_input.b), false);
}

fn func_2() -> Struct_3 {
    global0 = func_4(Struct_4(Struct_3(~(~global1.a.a), func_3(Struct_2(global1.a.b.yzy, Struct_1(false, global1.a.b.x), vec2<f32>(global1.a.c.x, global1.a.c.x), Struct_1(false, global1.a.b.x), vec3<f32>(global1.a.c.x, -588f, global1.a.c.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.c.x, global1.a.c.x, 744f), vec3<f32>(global1.a.c.x, 338f, 859f), global1.a.b.x)), _wgslsmith_f_op_f32(floor(-1373f))), global1.a.c)));
    var var_0 = Struct_4(Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.a.x ^ 1u, _wgslsmith_mult_u32(global1.a.a.x, u_input.d.x), ~u_input.c, ~1u), global1.a.a), select(vec4<bool>(func_4(Struct_4(Struct_3(vec4<u32>(28824u, u_input.d.x, u_input.d.x, global1.a.a.x), vec4<bool>(global1.a.b.x, global1.a.b.x, false, global1.a.b.x), vec2<f32>(global1.a.c.x, global1.a.c.x)))), global1.a.c.x >= global1.a.c.x, global1.a.b.x, any(vec2<bool>(false, global1.a.b.x))), select(func_3(Struct_2(global1.a.b.wwx, Struct_1(true, global1.a.b.x), vec2<f32>(-666f, global1.a.c.x), Struct_1(false, global1.a.b.x), vec3<f32>(global1.a.c.x, -462f, global1.a.c.x)), vec3<f32>(-952f, global1.a.c.x, 1445f), 676f), func_3(Struct_2(global1.a.b.wxz, Struct_1(global1.a.b.x, global1.a.b.x), vec2<f32>(global1.a.c.x, global1.a.c.x), Struct_1(global1.a.b.x, global1.a.b.x), vec3<f32>(global1.a.c.x, 412f, 1479f)), vec3<f32>(-437f, global1.a.c.x, -1299f), global1.a.c.x), select(global1.a.b, global1.a.b, global1.a.b.x)), select(vec4<bool>(global1.a.b.x, true, false, false), vec4<bool>(false, global1.a.b.x, global1.a.b.x, global1.a.b.x), vec4<bool>(global1.a.b.x, true, true, global1.a.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.a.c.x)), _wgslsmith_f_op_f32(-global1.a.c.x)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(605f, global1.a.c.x) + global1.a.c), _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.c.x, global1.a.c.x), vec2<f32>(696f, global1.a.c.x)), func_3(Struct_2(vec3<bool>(global1.a.b.x, false, global1.a.b.x), Struct_1(global1.a.b.x, true), vec2<f32>(239f, global1.a.c.x), Struct_1(false, global1.a.b.x), vec3<f32>(global1.a.c.x, -527f, -1760f)), vec3<f32>(global1.a.c.x, 157f, global1.a.c.x), global1.a.c.x).zy)))));
    let var_1 = global1.a;
    var var_2 = 1u;
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b ^ u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), -vec4<i32>(u_input.b, u_input.b, u_input.b, 46666i)), 14558i), vec4<i32>(1i, i32(-1i) * -(u_input.b ^ -31352i), firstTrailingBit(-66549i), 1065i));
    return Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, u_input.c, _wgslsmith_dot_vec4_u32(~var_1.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, 4294967295u, 17174u), global1.a.a, vec4<u32>(1u, u_input.c, u_input.d.x, u_input.a))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(122416u, 7153u)), countOneBits(vec2<u32>(4294967295u, var_0.a.a.x)))), vec4<u32>(global1.a.a.x, _wgslsmith_clamp_u32(100367u, firstLeadingBit(1u), _wgslsmith_div_u32(36687u, 20927u)), ~4294967295u, max(32255u, ~10119u))), select(vec4<bool>(var_1.b.x, !(false & var_1.b.x), -437f <= var_0.a.c.x, var_1.b.x), vec4<bool>(false, true, 0u < ~u_input.d.x, !var_0.a.b.x), var_0.a.b.x), var_0.a.c);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = global1.a;
    global1 = Struct_4(func_2());
    global0 = var_0.b.x;
    let var_1 = var_0.b;
    let var_2 = Struct_1(global1.a.c.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.x + var_0.c.x))), !(countOneBits(71u) > _wgslsmith_mult_u32(var_0.a.x, 55215u)) == select((360f <= global1.a.c.x) || (var_0.a.x > 1u), false, true));
    return var_2;
}

fn func_5(arg_0: Struct_1) -> i32 {
    global0 = !(arg_0.a & true);
    let var_0 = global1.a;
    global0 = false;
    global0 = false;
    let var_1 = var_0.a ^ func_2().a;
    return -(~0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~func_5(func_1(select(global1.a.b.wy, vec2<bool>(true, global1.a.b.x), false))));
    var var_1 = abs(19650i);
    global0 = false;
    var var_2 = Struct_4(Struct_3(abs(~(~global1.a.a)), !(!func_3(Struct_2(global1.a.b.zyx, Struct_1(true, global1.a.b.x), global1.a.c, Struct_1(global1.a.b.x, true), vec3<f32>(1345f, global1.a.c.x, global1.a.c.x)), vec3<f32>(194f, global1.a.c.x, -1117f), global1.a.c.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c.x, 495f) - vec2<f32>(global1.a.c.x, global1.a.c.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.a.c, vec2<f32>(-1220f, 281f)), vec2<f32>(global1.a.c.x, global1.a.c.x))))));
    let var_3 = !(!(!any(!vec3<bool>(global1.a.b.x, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.a.c.x, var_2.a.c.x), global1.a.c.x, -5465i, select(_wgslsmith_add_vec4_i32(min(-vec4<i32>(2147483647i, 13188i, -1i, 0i), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(10054i, 0i, u_input.b)), -1i, -u_input.b)), vec4<i32>(abs(-u_input.b), -2147483647i, _wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(-2147483647i, -8494i)), func_5(Struct_1(true, var_2.a.b.x))), vec4<bool>(!func_1(global1.a.b.zy).a, var_2.a.b.x & true, var_2.a.b.x, global1.a.b.x)));
}

