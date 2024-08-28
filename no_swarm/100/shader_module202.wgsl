struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 16383i, 21695i));

var<private> global1: Struct_4;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = Struct_4(4294967295u, _wgslsmith_mult_vec4_u32(global1.b, global1.b), Struct_2(global1.c.a, abs((vec3<i32>(15560i, 49544i, arg_0.c.x) >> (global1.b.xxx % vec3<u32>(32u))) >> (vec3<u32>(1u, u_input.a, global1.b.x) % vec3<u32>(32u))), global1.c.c, 1008f, arg_0.e), ~global0.a.x);
    global1 = Struct_4(0u, min(_wgslsmith_clamp_vec4_u32(vec4<u32>(max(u_input.a, u_input.a), u_input.a, global1.a, reverseBits(u_input.a)), global1.b, global1.b), vec4<u32>(4294967295u, u_input.a, u_input.a, global1.a) ^ (global1.b ^ global1.b)), Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(sign(arg_0.a.a.x)), global1.c.c.x), global0.a, arg_0.c & vec4<i32>(countOneBits(u_input.b), 1i, abs(global0.a.x), abs(2147483647i)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-950f * global1.c.a.b), _wgslsmith_f_op_f32(1000f - arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1472f * global1.c.a.b) * arg_0.a.a.x)), ~(-arg_0.a.c) < -abs(arg_0.c.x)), 24347i | global0.a.x);
    global0 = Struct_3(-vec3<i32>(countOneBits(-u_input.b), min(~(-2147483647i), -40047i), u_input.c.x));
    global1 = Struct_4(~(~1u), reverseBits(vec4<u32>(_wgslsmith_add_u32(4294967295u, 40887u & global1.b.x), ~global1.b.x, _wgslsmith_sub_u32(global1.b.x, u_input.a), _wgslsmith_dot_vec2_u32(global1.b.zy, vec2<u32>(u_input.a, 4294967295u)) | global1.b.x)), Struct_2(arg_0.a, max(global1.c.b, select(global0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-3866i, 0i, global1.d), vec3<i32>(-2147483647i, global1.c.b.x, 30993i)), vec3<bool>(arg_0.e, arg_0.e, false))), ~arg_0.c, arg_0.d, global1.c.e), reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(arg_0.a.c, -20971i, 2147483647i, u_input.b)), ~(-12976i)) & 8355i));
    global1 = Struct_4(_wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 2191u, u_input.a, 0u), vec4<u32>(4294967295u, u_input.a, 13804u, 0u)), abs(countOneBits(global1.b)), !(!vec4<bool>(arg_0.e, arg_0.e, false, true))), countOneBits(select(vec4<u32>(30060u, global1.a, u_input.a, 5248u) & vec4<u32>(51705u, u_input.a, global1.b.x, global1.b.x), vec4<u32>(24720u, 0u, 38746u, 107437u), true))), vec4<u32>(reverseBits(abs(u_input.a << (11029u % 32u))), u_input.a, 54831u, countOneBits(_wgslsmith_div_u32(global1.a, _wgslsmith_sub_u32(global1.b.x, 28908u)))), Struct_2(Struct_1(vec4<f32>(-1877f, -477f, _wgslsmith_f_op_f32(select(-822f, 1179f, true)), _wgslsmith_f_op_f32(min(2208f, -1449f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.d), _wgslsmith_f_op_f32(global1.c.d * 1262f))), 1i), -(~(global0.a ^ arg_0.c.wxx)), -arg_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-277f * arg_0.d) + _wgslsmith_f_op_f32(round(-449f))))), all(select(select(vec3<bool>(arg_0.e, global1.c.e, global1.c.e), vec3<bool>(true, arg_0.e, false), vec3<bool>(arg_0.e, global1.c.e, true)), vec3<bool>(true, true, arg_0.e), vec3<bool>(global1.c.e, true, true)))), 0i);
    return global1.c.e;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(global1.c.a, vec3<i32>(2147483647i, select(min(-20869i & global1.c.b.x, 3454i), u_input.c.x, func_3(global1.c) && true), _wgslsmith_clamp_i32(~abs(global0.a.x), _wgslsmith_mod_i32(abs(global1.d), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-34886i, global1.c.c.x))), global0.a.x)), global1.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.a.x)) - _wgslsmith_f_op_f32(arg_1.x * global1.c.a.a.x)), false);
    let var_1 = true;
    var var_2 = var_0;
    global0 = Struct_3(_wgslsmith_mult_vec3_i32(var_2.b & vec3<i32>(1i, global0.a.x, ~2147483647i), ~_wgslsmith_sub_vec3_i32(~var_2.c.wyw, var_2.b)));
    global1 = Struct_4(abs(~global1.a), vec4<u32>(~_wgslsmith_sub_u32(~32635u, global1.b.x), global1.a, global1.a, global1.b.x << (u_input.a % 32u)), Struct_2(global1.c.a, var_0.b, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.d))), var_1), 37750i);
    return global1.c.a;
}

fn func_1() -> vec3<i32> {
    global0 = Struct_3(global0.a);
    var var_0 = global1.b.x;
    var var_1 = func_2(global1.c.a.a.wz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global1.c.a.a.zyy, global1.c.a.a.yxz))))));
    var_0 = 4294967295u;
    var var_2 = select(select(!vec4<bool>(func_3(Struct_2(Struct_1(vec4<f32>(var_1.a.x, -1301f, var_1.a.x, global1.c.d), global1.c.a.b, u_input.b), vec3<i32>(-1i, 2147483647i, -9398i), global1.c.c, var_1.a.x, false)), false, global1.c.e && global1.c.e, any(vec2<bool>(true, global1.c.e))), vec4<bool>(any(vec4<bool>(true, true, true, true)), global1.c.e, true, select(func_3(Struct_2(global1.c.a, vec3<i32>(global0.a.x, -6295i, var_1.c), vec4<i32>(global0.a.x, u_input.b, var_1.c, var_1.c), 1064f, true)), true, !global1.c.e)), false && (1252f > global1.c.a.b)), !(!select(vec4<bool>(true, global1.c.e, true, global1.c.e), vec4<bool>(global1.c.e, global1.c.e, true, global1.c.e), var_1.a.x == global1.c.a.b)), global1.c.e);
    return countOneBits(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(-global0.a, abs(vec3<i32>(-1i) * -global0.a)) ^ (func_1() | _wgslsmith_mod_vec3_i32(vec3<i32>(1i, abs(1i), _wgslsmith_mod_i32(global1.c.a.c, 1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(23505i, 58211i, global0.a.x), global0.a), vec3<i32>(-11685i, global1.d, u_input.c.x), -global0.a)));
    var_0 = global0.a;
    global0 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(-43945i, -2147483647i, 1i)), global0.a.x), (i32(-1i) * -2147483647i) & var_0.x, ~_wgslsmith_clamp_i32(var_0.x, u_input.c.x, var_0.x)), -global0.a));
    global0 = Struct_3(vec3<i32>(max(-2147483647i, _wgslsmith_div_i32(51464i << (global1.a % 32u), i32(-1i) * -2147483647i)), -u_input.c.x | global0.a.x, 0i >> (~global1.b.x % 32u)));
    var var_1 = min(max(global0.a.x, -1i), var_0.x);
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(100137u, _wgslsmith_div_u32(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 0u, 62713u), vec4<u32>(global1.a, global1.a, 4294967295u, 85143u))), abs(_wgslsmith_mult_u32(u_input.a, u_input.a)), firstLeadingBit(4294967295u) << (0u % 32u)), ((global1.b ^ global1.b) & global1.b) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 23610u, global1.a, u_input.a) ^ global1.b, global1.b, ~vec4<u32>(1u, 67554u, u_input.a, global1.a)) % vec4<u32>(32u))), ~(~(4569u >> (u_input.a % 32u)) << (~1u % 32u)));
    var var_3 = global1.b.wy;
    let var_4 = !(global1.c.e != true);
    let x = u_input.a;
    s_output = StorageBuffer(-global0.a.x);
}

