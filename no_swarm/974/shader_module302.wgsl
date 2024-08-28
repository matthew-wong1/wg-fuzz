struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 26>;

var<private> global2: vec3<u32> = vec3<u32>(96790u, 78436u, 53972u);

var<private> global3: Struct_1;

var<private> global4: vec4<f32> = vec4<f32>(-1059f, -2291f, 2506f, -274f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = 1549f;
    global1 = array<u32, 26>();
    global2 = ~((u_input.a << (vec3<u32>(max(u_input.a.x, global2.x), 22109u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10302u, 26u)], 26u)], 26u)], u_input.a.x), 26u)]) % vec3<u32>(32u))) & u_input.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1077f))), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1573f)) - _wgslsmith_f_op_f32(round(global4.x))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(floor(-929f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, ~u_input.c.x), ~abs(~abs(vec3<i32>(u_input.c.x, 22405i, u_input.c.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = 0u;
    var var_1 = Struct_2(vec2<i32>(-_wgslsmith_div_i32(u_input.c.x, i32(-1i) * -1i), func_3()), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(1320f, global0.a.x)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, -531f), _wgslsmith_f_op_vec2_f32(-global3.a))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(global4.zz)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, global0.a.x), global4.zw))))), select(global2.x, abs(1u), true) | u_input.a.x, vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), false, any(vec4<bool>(true, true, all(vec2<bool>(false, false)), true))));
    var var_2 = ~(-max(~u_input.c, u_input.c));
    let var_3 = ~(~(~abs(18128u)));
    let var_4 = _wgslsmith_sub_i32(-1i, var_1.a.x);
    return Struct_2(~u_input.c.ww, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(351f, global0.a.x))))), var_1.b, _wgslsmith_add_u32(_wgslsmith_clamp_u32(99034u, global2.x, ~_wgslsmith_div_u32(0u, 1u)), ~(~var_1.d)), select(select(!vec3<bool>(true, var_1.e.x, var_1.e.x), select(select(var_1.e, var_1.e, vec3<bool>(false, true, false)), select(vec3<bool>(true, var_1.e.x, var_1.e.x), vec3<bool>(var_1.e.x, true, var_1.e.x), var_1.e.x), select(true, var_1.e.x, var_1.e.x)), !select(vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), var_1.e.x)), var_1.e, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = -arg_2.a.x >> (abs(0u) % 32u);
    global3 = arg_2.c;
    let var_1 = func_2().b;
    let var_2 = u_input.a;
    global0 = var_1;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global3 = func_4(Struct_2(max(select(reverseBits(vec2<i32>(20051i, arg_2.a.x)), u_input.c.xz, arg_0.e.xy), vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-2147483647i, -43134i))), func_2().b, Struct_1(_wgslsmith_f_op_vec2_f32(-global4.xz)), arg_2.d, func_2().e), _wgslsmith_f_op_vec3_f32(global4.yyy + _wgslsmith_f_op_vec3_f32(sign(global4.yxx))), arg_0).c;
    global4 = vec4<f32>(-1207f, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(-func_2().b.a.x), true)));
    var var_0 = arg_2;
    let var_1 = select(~((~vec4<u32>(global2.x, 0u, 1u, 73548u) << (select(vec4<u32>(126u, 3986u, global2.x, 11542u), vec4<u32>(var_0.d, 1067u, var_0.d, 4294967295u), vec4<bool>(true, false, true, true)) % vec4<u32>(32u))) << ((vec4<u32>(var_0.d, arg_0.d, arg_0.d, 66905u) ^ vec4<u32>(114800u, 108507u, 10402u, 51706u)) % vec4<u32>(32u))), select(vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_0.d, 26u)], 24332u), ~(~var_0.d), (1u << (arg_1.x % 32u)) & ~29717u), ~vec4<u32>(~0u, _wgslsmith_sub_u32(u_input.a.x, global2.x), 7669u, 63102u), !vec4<bool>(select(arg_0.e.x, var_0.e.x, true), !arg_0.e.x, !arg_2.e.x, true)), !select(select(!vec4<bool>(false, arg_2.e.x, false, false), vec4<bool>(true, var_0.e.x, arg_0.e.x, false), vec4<bool>(false, arg_2.e.x, arg_0.e.x, false)), select(vec4<bool>(false, arg_2.e.x, true, true), vec4<bool>(true, arg_0.e.x, true, var_0.e.x), true), !(!vec4<bool>(arg_0.e.x, arg_0.e.x, true, var_0.e.x))));
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(784f, 1000f, -143f, global3.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, arg_3.a.x, global3.a.x) * vec4<f32>(958f, 615f, -1321f, arg_2.c.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 604f, global3.a.x, global3.a.x) - vec4<f32>(global4.x, 1082f, 1832f, 167f)))), vec4<bool>(false, arg_0.e.x, -473f <= arg_3.a.x, !arg_2.e.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.x)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<u32, 26>();
    global4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), global4.x), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(func_5(func_4(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2610f, global0.a.x, global4.x) * global4.zyx)), func_2()), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(global2.x, 2322u))), Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-55530i, -41141i, arg_0.x, arg_0.x)), -92817i), func_2().c, func_2().c, ~(~1540u), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(global4.yw - global3.a)))), global3.a.x);
    let var_0 = !all(vec3<bool>(false, false, true));
    var var_1 = ~vec3<i32>(-42089i ^ (-arg_0.x | firstLeadingBit(-52001i)), firstLeadingBit(-11052i) | func_4(func_2(), _wgslsmith_f_op_vec3_f32(-global4.wwx), Struct_2(u_input.c.zx, Struct_1(vec2<f32>(global0.a.x, global4.x)), Struct_1(vec2<f32>(global0.a.x, global4.x)), global1[_wgslsmith_index_u32(27443u, 26u)], vec3<bool>(true, var_0, var_0))).a.x, ~u_input.c.x);
    global3 = Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(select(707f, -270f, all(select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, true, var_0, true), var_0))))));
    return func_4(func_4(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global4.yww)))), Struct_2(vec2<i32>(var_1.x, u_input.c.x), func_4(Struct_2(arg_0.xw, Struct_1(vec2<f32>(-581f, -1486f)), Struct_1(global3.a), 4294967295u, vec3<bool>(false, var_0, true)), _wgslsmith_div_vec3_f32(global4.xzw, vec3<f32>(global4.x, global4.x, 521f)), Struct_2(var_1.yy, Struct_1(vec2<f32>(-151f, global3.a.x)), Struct_1(global3.a), 22138u, vec3<bool>(var_0, false, false))).c, func_2().c, ~min(14170u, 1u), func_4(Struct_2(vec2<i32>(u_input.c.x, -2147483647i), Struct_1(global3.a), Struct_1(vec2<f32>(global3.a.x, -666f)), global2.x, vec3<bool>(false, var_0, var_0)), global4.xyy, func_2()).e)), vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-395f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(global4.x * global3.a.x)), func_4(Struct_2(var_1.yx, func_4(Struct_2(u_input.c.zz, Struct_1(vec2<f32>(-242f, 966f)), Struct_1(global4.yy), u_input.b, vec3<bool>(var_0, var_0, var_0)), vec3<f32>(global4.x, global4.x, 1495f), func_2()).b, func_2().c, 1u, select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0), true)), global4.yxz, Struct_2((var_1.zx | vec2<i32>(-1200i, -14764i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(39197i, 2147483647i), vec2<i32>(-10228i, arg_0.x)), func_4(func_4(Struct_2(u_input.c.xy, Struct_1(vec2<f32>(global3.a.x, global3.a.x)), Struct_1(global4.yx), 4294967295u, vec3<bool>(var_0, var_0, var_0)), vec3<f32>(365f, -185f, 639f), Struct_2(vec2<i32>(arg_0.x, u_input.c.x), Struct_1(global0.a), Struct_1(vec2<f32>(global4.x, 526f)), u_input.a.x, vec3<bool>(var_0, false, false))), vec3<f32>(-968f, global4.x, global3.a.x), Struct_2(u_input.c.xz, Struct_1(global4.xw), Struct_1(vec2<f32>(global3.a.x, 243f)), u_input.a.x, vec3<bool>(var_0, false, false))).c, Struct_1(global3.a), 40837u, vec3<bool>(true, true, select(var_0, var_0, var_0))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c);
    var var_1 = -110f;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_4(Struct_2(reverseBits(u_input.c.zy), func_2().b, Struct_1(global4.wy), 59699u, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.zyy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, 381f, global3.a.x))), Struct_2(vec2<i32>(-2147483647i, -5668i), Struct_1(global3.a), Struct_1(vec2<f32>(558f, global4.x)), 4294967295u << (0u % 32u), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -816f), -355f, _wgslsmith_f_op_f32(global4.x + var_0.a.x)) + global4.wwy), Struct_2(vec2<i32>(2147483647i, -38210i), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1000f), global3.a)), func_2().b, ~1u, func_2().e)).d, func_2().a, 1i);
}

