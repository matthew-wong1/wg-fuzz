struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1i, 2147483647i, 434i), vec3<i32>(-13282i, 0i, -41561i), vec3<i32>(-1i, -9318i, 2147483647i), vec3<i32>(2147483647i, 42349i, 2147483647i), vec3<i32>(2147483647i, 1i, -14763i), vec3<i32>(0i, i32(-2147483648), -2168i), vec3<i32>(-49609i, 55000i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(22571i, -19586i, -30299i), vec3<i32>(2147483647i, i32(-2147483648), -26685i), vec3<i32>(11215i, -29740i, 42071i), vec3<i32>(-13689i, 7632i, 1i), vec3<i32>(-1i, 54393i, 37177i));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 16953u);

var<private> global3: f32 = 348f;

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = false;
    let var_1 = !vec3<bool>(!any(select(vec4<bool>(global4.d.a.x, global4.d.a.x, true, true), arg_0.b.b.a, arg_0.b.b.a.x)), all(select(select(arg_0.b.b.a.wz, global4.d.a.wy, vec2<bool>(true, true)), select(vec2<bool>(global4.d.a.x, arg_0.b.b.a.x), global4.d.a.wy, global4.d.a.x), any(vec3<bool>(true, false, arg_0.b.b.a.x)))), arg_0.b.b.a.x);
    let var_2 = vec2<u32>(0u >> (_wgslsmith_mult_u32(abs(1u), reverseBits(arg_0.b.e)) % 32u), select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.e, arg_0.a.x, u_input.b.x, 0u), arg_0.c), arg_0.c), arg_0.b.c, !(!arg_0.b.b.a.x)));
    let var_3 = Struct_1(global4.d.a);
    let var_4 = ~arg_0.b.e;
    return -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0.b.a, 5429i), -14291i, -2147483647i, _wgslsmith_clamp_i32(u_input.a.x, arg_0.b.a, 1i)), max(vec4<i32>(1i, u_input.a.x, 45594i, global4.c.x), select(global4.c, global4.c, vec4<bool>(false, true, true, arg_0.b.b.a.x)))), -2147483647i, min(-arg_0.b.a, 5950i) >> (var_4 % 32u), -1i);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    global1 = array<vec3<i32>, 13>();
    global3 = -494f;
    let var_0 = Struct_4(_wgslsmith_div_f32(-534f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, -878f), _wgslsmith_f_op_f32(f32(-1f) * -2171f))), global4.b, _wgslsmith_mod_vec4_i32(func_3(Struct_3(u_input.b.yz, Struct_2(1i, global4.d, 29084u, vec4<f32>(arg_1, arg_1, arg_1, 205f), 0u), abs(vec4<u32>(4294967295u, 7904u, 83309u, u_input.b.x)))), -((vec4<i32>(u_input.a.x, global4.c.x, global4.c.x, -818i) ^ global4.c) | -global4.c)), Struct_1(global4.d.a));
    global0 = (u_input.b.zy ^ vec2<u32>(1u, global0.x)) | global2.xx;
    let var_1 = Struct_3(global2.xx, Struct_2(~(-(u_input.d.x ^ -15640i)), Struct_1(!(!var_0.d.a)), 2520u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-571f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-222f + -617f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + var_0.b.x), -1526f))), ~62520u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(132611u, global2.x, 0u, 30065u)), vec4<u32>(global0.x, u_input.b.x, _wgslsmith_clamp_u32(6532u, u_input.c, 51817u), u_input.c), ~(vec4<u32>(4294967295u, 17978u, 0u, 4294967295u) | vec4<u32>(u_input.b.x, 1u, global0.x, global0.x))), ~vec4<u32>(u_input.b.x, u_input.b.x, abs(u_input.c), 4294967295u << (global2.x % 32u))));
    return var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    return (u_input.d.x << (~arg_0.c % 32u)) | _wgslsmith_clamp_i32(2147483647i, -1i, global4.c.x);
}

fn func_1() -> bool {
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a * global4.a)) - -899f)), _wgslsmith_f_op_vec2_f32(trunc(global4.b)), vec4<i32>(-global4.c.x >> (0u % 32u), func_4(func_2(global4.d.a.wxz, 154f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, global4.b.x, global4.b.x)), func_2(vec3<bool>(false, true, true), _wgslsmith_f_op_f32(global4.a * 503f)).b.a, global0.x), u_input.d.x, u_input.d.x), func_2(global4.d.a.yyy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, 545f)))).b);
    var var_0 = Struct_1(vec4<bool>(true, !((1000f >= global4.b.x) || true), global4.d.a.x, all(global4.d.a)));
    var_0 = func_2(global4.d.a.ywy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1047f)) - _wgslsmith_f_op_f32(round(587f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1330f)) * -247f)))).b;
    var var_1 = Struct_3(~global2.yz, func_2(vec3<bool>(true, global4.d.a.x, true), _wgslsmith_div_f32(1538f, global4.a)), vec4<u32>(global0.x, 17082u, 1u, u_input.b.x));
    let var_2 = 1i;
    return any(vec4<bool>((0u >= countOneBits(global2.x)) || !(!global4.d.a.x), !all(!var_1.b.b.a.wyy), true, !select(true, global4.b.x < global4.b.x, u_input.b.x <= global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 13>();
    var var_0 = !global4.d.a;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-global4.a), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1042f), -1791f, true)), _wgslsmith_div_f32(global4.a, global4.a)), global4.b.x), vec4<i32>(i32(-1i) * -25796i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global4.c.yw, global4.c.wy), ~global4.c.zy), global4.c.ww), -1i, -2147483647i), Struct_1(!vec4<bool>(var_0.x, any(vec3<bool>(true, global4.d.a.x, true)), false, true)));
    var var_2 = var_1.c;
    var var_3 = vec2<bool>(true, func_1());
    let var_4 = !all(!vec2<bool>(!global4.d.a.x, true));
    var var_5 = Struct_3(abs(reverseBits(~(~vec2<u32>(1u, 0u)))), Struct_2(_wgslsmith_dot_vec2_i32(-var_1.c.xz, vec2<i32>(1i, 1i)), func_2(select(!var_1.d.a.xxw, select(global4.d.a.xwz, vec3<bool>(global4.d.a.x, false, var_4), false), vec3<bool>(global4.d.a.x, var_1.d.a.x, false)), -585f).b, func_2(var_0.zwz, 443f).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, var_1.b.x, var_1.b.x, 264f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-463f, global4.a, var_1.a, 851f))))), func_2(global4.d.a.xyy, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global4.b.x, -1803f)))).c), ~(~(~vec4<u32>(global0.x, global0.x, u_input.c, 53984u))));
    let var_6 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(737f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_5.b.d.x * var_5.b.d.x), _wgslsmith_f_op_f32(-global4.b.x), any(vec2<bool>(var_0.x, var_3.x)))), 127f, _wgslsmith_div_f32(-792f, -710f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6, -815f, -16795i);
}

