struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> bool {
    global0 = Struct_1(0u, true, _wgslsmith_f_op_vec2_f32(arg_0.d.c * arg_0.d.c), true);
    global0 = arg_0.c;
    let var_0 = _wgslsmith_sub_vec2_i32(arg_0.a.xw, -abs(vec2<i32>(arg_2, arg_1.a)));
    let var_1 = !select(!(!vec2<bool>(true, arg_1.b.x)), !(!vec2<bool>(arg_0.c.b, arg_1.b.x)), -541f <= _wgslsmith_f_op_f32(max(arg_0.d.c.x, _wgslsmith_f_op_f32(max(global0.c.x, -135f)))));
    var var_2 = select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, ~min(arg_2, arg_2), -(arg_1.a | u_input.a), abs(~8488i)), vec4<i32>(~abs(arg_2), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-46722i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_0)), arg_2)), vec4<i32>(i32(-1i) * -1i, 0i, arg_2, arg_2), var_1.x);
    return arg_0.c.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(-(arg_1.a.x & -(0i ^ arg_1.a.x)), vec3<bool>(!(!arg_3.d), !arg_3.b != all(select(vec4<bool>(true, global0.b, false, true), vec4<bool>(arg_1.d.b, global0.d, true, false), vec4<bool>(arg_1.c.b, false, false, arg_3.d))), func_3(arg_1, Struct_2(1i, !vec3<bool>(global0.d, arg_1.c.d, arg_1.d.d)), ~_wgslsmith_add_i32(u_input.a, 0i))));
    let var_1 = Struct_3(arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1000f)), -1000f), arg_1.c, arg_3);
    let var_2 = min(arg_0, select(vec3<u32>(abs(_wgslsmith_clamp_u32(arg_1.d.a, var_1.c.a, 1u)), arg_2.x, global0.a), (vec3<u32>(arg_2.x, global0.a, 1u) >> (arg_0 % vec3<u32>(32u))) | ~arg_0, !(!vec3<bool>(false, arg_1.d.b, false))));
    var_0 = Struct_2(-2147483647i, vec3<bool>(true, arg_3.d, arg_3.b));
    var var_3 = ~(~arg_2);
    return min(reverseBits(~(~vec4<u32>(1u, 1u, 17489u, arg_2.x))), ~(~select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 60853u, 19607u, global0.a), vec4<u32>(1u, 0u, 18590u, 0u)), ~vec4<u32>(arg_0.x, global0.a, arg_1.c.a, 4294967295u), !vec4<bool>(global0.d, arg_3.b, false, var_0.b.x))));
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(arg_0, any(select(!select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.d, false, global0.d), vec3<bool>(true, false, global0.d)), vec3<bool>(all(vec4<bool>(global0.b, true, true, false)), true, any(vec4<bool>(false, global0.d, false, global0.b))), select(vec3<bool>(global0.b, global0.d, global0.d), select(vec3<bool>(true, false, true), vec3<bool>(global0.d, false, global0.b), false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.c.x)), -1493f))) * global0.c), !any(vec3<bool>(global0.b && global0.b, true, 24389u >= global0.a)));
    let var_1 = Struct_3(min(~(vec4<i32>(-1i) * -vec4<i32>(-22722i, 23001i, u_input.a, u_input.a)), vec4<i32>(~select(u_input.a, -1i, var_0.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -1i, 45092i), ~vec3<i32>(14088i, -8005i, 2147483647i)), abs(1i), ~(-u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-688f - _wgslsmith_f_op_f32(step(var_0.c.x, 840f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))))), global0.c.x), Struct_1(1u, global0.d && !(var_0.c.x > global0.c.x), global0.c, -2147483647i > _wgslsmith_div_i32(select(u_input.a, u_input.a, true), 1i)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, global0.a, 2388u, arg_0), vec4<u32>(global0.a, arg_0, 49446u, 4294967295u))), select(~vec2<u32>(global0.a, arg_0), vec2<u32>(0u, 47609u), global0.d & true)), all(!(!vec4<bool>(var_0.b, true, true, true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_f_op_vec2_f32(vec2<f32>(167f, -195f) + global0.c)))), all(select(vec3<bool>(false, global0.d, var_0.d), select(vec3<bool>(var_0.b, global0.b, false), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.d, false, true)), vec3<bool>(false, true, true)))));
    let var_2 = Struct_2(1i, !(!vec3<bool>(select(false, false, true), false, var_1.d.d)));
    var var_3 = var_2.a;
    var var_4 = -min(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -40804i), var_1.a.yyw), vec3<i32>(-85632i, -1i, var_2.a)), vec3<i32>(var_1.a.x, -2147483647i, 1i) >> (~vec3<u32>(32008u, 78937u, 4294967295u) % vec3<u32>(32u))), var_1.a.xwz);
    return var_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_clamp_u32(arg_3.c.a, ~(_wgslsmith_div_u32(32333u, 1u) ^ (21801u << (arg_1 % 32u))), ~(~arg_3.d.a | global0.a)), false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_3.b), _wgslsmith_f_op_vec2_f32(sign(global0.c))))))), global0.b);
    global0 = arg_3.c;
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) + arg_3.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -1096f) * -529f)), _wgslsmith_f_op_f32(f32(-1f) * -954f))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(25691u, _wgslsmith_add_u32(arg_3.c.a, _wgslsmith_add_u32(44999u, 0u))) >> (((vec2<u32>(arg_3.c.a, arg_1) << (max(vec2<u32>(1u, 16874u), vec2<u32>(arg_3.c.a, global0.a)) % vec2<u32>(32u))) >> ((abs(vec2<u32>(global0.a, 4294967295u)) >> (~vec2<u32>(3606u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~vec2<u32>(arg_1 << (global0.a % 32u), arg_3.c.a)));
    return arg_3.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_5(arg_0.yx, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), min(vec2<u32>(arg_1.x, global0.a), arg_1)), func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, 28975u, arg_1.x) >> (vec4<u32>(15886u, 0u, global0.a, global0.a) % vec4<u32>(32u)), func_2(vec3<u32>(20070u, global0.a, global0.a), Struct_3(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), arg_0.xy, Struct_1(global0.a, false, vec2<f32>(global0.c.x, global0.c.x), arg_2.x), Struct_1(1u, arg_2.x, vec2<f32>(-293f, arg_0.x), true)), arg_1, Struct_1(arg_3, false, vec2<f32>(arg_0.x, global0.c.x), false)))), Struct_3(vec4<i32>(u_input.a, ~u_input.a, select(u_input.a, u_input.a, arg_2.x), ~u_input.a), _wgslsmith_f_op_vec2_f32(round(arg_0.yz)), Struct_1(_wgslsmith_add_u32(arg_1.x, arg_3), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global0.c.x)), true), Struct_1(_wgslsmith_mult_u32(17949u, arg_1.x), true, _wgslsmith_f_op_vec2_f32(-arg_0.zy), arg_2.x || global0.d))))));
    var var_1 = global0.d;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(699f, global0.c.x) - vec2<f32>(arg_0.x, 671f)))) + _wgslsmith_f_op_vec2_f32(-arg_0.zx)));
    global0 = Struct_1(global0.a, global0.a <= _wgslsmith_sub_u32(30531u, arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(arg_0.zz, 38441u, Struct_2(-48777i, vec3<bool>(global0.d, false, false)), Struct_3(vec4<i32>(u_input.a, u_input.a, 33954i, -1i), vec2<f32>(-901f, var_0.x), Struct_1(arg_3, false, arg_0.yx, true), Struct_1(arg_1.x, arg_2.x, vec2<f32>(arg_0.x, global0.c.x), global0.b)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(max(330f, -475f)), _wgslsmith_f_op_f32(arg_0.x * -710f)))), global0.b);
    let var_2 = 77800u;
    return Struct_1(~_wgslsmith_div_u32(~var_2, max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 81990u), vec2<u32>(arg_1.x, arg_1.x)), _wgslsmith_mod_u32(117811u, global0.a))), true || all(!vec4<bool>(arg_2.x, false, true, false)), _wgslsmith_f_op_vec2_f32(arg_0.yz - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - var_0.x), 1000f) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(global0.c)))))), !all(func_4(18666u).b.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(723f, global0.c.x, -1235f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1587f, 680f, global0.c.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))))))), ~(~(~vec2<u32>(global0.a, global0.a)) | firstLeadingBit(vec2<u32>(87294u, global0.a) | vec2<u32>(global0.a, 63279u))), vec2<bool>(any(vec4<bool>(true, global0.d, true, true)), true), global0.a);
    let var_0 = func_4(1u);
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.x, global0.c.x, global0.c.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 879f, global0.c.x) + vec3<f32>(-214f, -159f, global0.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 629f, global0.c.x)))))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(global0.a, global0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.a), vec2<u32>(1u, 0u)))), vec2<u32>(global0.a, _wgslsmith_add_u32(func_1(vec3<f32>(global0.c.x, global0.c.x, global0.c.x), vec2<u32>(10597u, 4294967295u), vec2<bool>(true, true), 50685u).a, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 57568u), vec2<u32>(40501u, 15690u))))), !var_0.b.zx, firstTrailingBit(global0.a));
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, -1000f)) - vec3<f32>(var_1.c.x, global0.c.x, var_1.c.x)))), vec2<u32>(_wgslsmith_mod_u32(abs(var_1.a), global0.a & global0.a) >> (reverseBits(~4294967295u) % 32u), func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(602f, var_1.c.x, var_1.c.x), vec3<f32>(var_1.c.x, global0.c.x, var_1.c.x))))), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(global0.a, 0u)), vec2<u32>(50021u, 47558u)), !(!var_0.b.zx), global0.a).a), var_0.b.zz, ~firstTrailingBit(59722u));
    let x = u_input.a;
    s_output = StorageBuffer(max(25413u, func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.c.x, -957f, 103f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1042f, var_1.c.x, var_1.c.x)))), max(vec2<u32>(29735u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 33417u), vec2<u32>(1u, global0.a))), select(!vec2<bool>(true, global0.b), func_4(global0.a).b.zz, true), global0.a).a), func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(19425u, global0.a, var_1.a) | vec3<u32>(0u, var_1.a, var_1.a), max(vec3<u32>(1u, 1u, 73005u), vec3<u32>(0u, 4294967295u, global0.a))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, global0.a, var_1.a), vec3<u32>(global0.a, global0.a, var_1.a))), Struct_3(vec4<i32>(~u_input.a, min(25346i, -12351i), var_0.a, -u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-105f, global0.c.x) * global0.c)), func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.c.x, -368f, var_1.c.x))), min(vec2<u32>(var_1.a, global0.a), vec2<u32>(13723u, 38271u)), select(vec2<bool>(false, false), vec2<bool>(global0.d, false), true), global0.a), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1857f, var_1.c.x, 428f)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 6446u), vec2<u32>(global0.a, 30484u)), select(var_0.b.xx, var_0.b.yz, var_0.b.xy), 21652u)), ~(~vec2<u32>(6982u, global0.a)), func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.x, 967f, var_1.c.x), vec3<f32>(var_1.c.x, 147f, -1388f))), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 64474u), vec2<u32>(global0.a, 60030u)) | vec2<u32>(53623u, 1u), func_4(1u).b.yx, 0u)), -var_0.a);
}

