struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = 1000f;
    let var_1 = Struct_4(arg_3, vec2<i32>(firstTrailingBit(arg_2.x), arg_2.x), arg_3.d, Struct_3(vec4<f32>(_wgslsmith_f_op_f32(1067f + -1632f), _wgslsmith_f_op_f32(max(-772f, 558f)), _wgslsmith_f_op_f32(1389f + 550f), _wgslsmith_f_op_f32(-global0.b.e.x)), _wgslsmith_div_vec4_i32(vec4<i32>(~(-2147483647i), -arg_2.x, -20380i, arg_1), arg_3.b), vec2<bool>(!select(arg_3.e, arg_3.c.x, arg_0.x), arg_3.e), arg_3.d, select(!arg_0.x, arg_3.e, arg_0.x & true)), !(!(!(!vec4<bool>(arg_3.e, false, arg_0.x, arg_3.e)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * arg_3.d.a.x)) * -407f);
    let var_2 = _wgslsmith_div_vec3_u32(u_input.d.wzw, ~_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 30241u, global0.b.a.x), vec3<u32>(9041u, 69009u, 4294967295u)), ~vec3<u32>(arg_3.d.c.b, 18080u, 1u) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.d.d.c.a.x, 55988u), vec3<u32>(var_1.a.d.c.b, 52924u, 0u))));
    var_0 = _wgslsmith_f_op_f32(ceil(var_1.d.d.c.e.x));
    return 4294967295u;
}

fn func_2() -> Struct_4 {
    let var_0 = -reverseBits((-u_input.c << (func_3(vec2<bool>(false, true), global0.c.c, vec4<i32>(global0.b.c, -1i, -48853i, global0.d.c), Struct_3(global0.c.e, vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec2<bool>(true, true), Struct_2(global0.b.e.wy, Struct_1(global0.b.a, 0u, -1i, global0.d.e.x, vec4<f32>(985f, global0.d.e.x, global0.c.e.x, 932f)), global0.d, global0.b), true)) % 32u)) << (~u_input.a % 32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-555f, 985f), global0.d.e.yy)), global0.b.e.xx)), global0.c, global0.c, global0.d);
    let var_2 = Struct_2(var_1.b.e.yz, global0.c, global0.b, Struct_1(~var_1.d.a, ~(~var_1.d.b), 0i | min(min(u_input.c, global0.d.c), var_0), -744f, _wgslsmith_f_op_vec4_f32(-global0.c.e)));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-921f - global0.b.e.x), -234f)) + var_1.a), Struct_1(~var_1.b.a, ~global0.d.b, var_0, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.d.d + _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, -1915f, -238f, var_1.b.d) - var_2.c.e)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.e) * _wgslsmith_f_op_vec4_f32(round(var_1.d.e))))), var_1.b, global0.c);
    let var_3 = global0.d;
    return Struct_4(Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(round(-237f)), _wgslsmith_f_op_f32(max(-1698f, global0.b.d))), vec4<f32>(_wgslsmith_f_op_f32(-223f + -1000f), _wgslsmith_f_op_f32(exp2(var_3.e.x)), -1196f, _wgslsmith_f_op_f32(sign(var_2.b.d)))), ~reverseBits(min(vec4<i32>(var_0, var_0, global0.c.c, var_2.d.c), vec4<i32>(var_0, u_input.c, global0.b.c, -1i))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(global0.d.e.x)), _wgslsmith_f_op_f32(-global0.b.e.x)), var_2.b, global0.b, global0.c), false), _wgslsmith_mod_vec2_i32(select(vec2<i32>(global0.b.c, 1i), _wgslsmith_add_vec2_i32(select(vec2<i32>(var_2.c.c, var_1.c.c), vec2<i32>(-6325i, -17719i), false), _wgslsmith_mod_vec2_i32(vec2<i32>(-8086i, 1i), vec2<i32>(var_2.c.c, u_input.c))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec2<i32>(u_input.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, -1i, var_1.b.c, var_2.c.c), ~vec4<i32>(var_0, -1i, var_3.c, global0.b.c)))), Struct_2(_wgslsmith_f_op_vec2_f32(var_1.c.e.yw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 388f))), global0.d, Struct_1(var_3.a, countOneBits(_wgslsmith_mult_u32(var_1.d.b, 45715u)), ~(var_0 | global0.c.c), _wgslsmith_f_op_f32(var_2.c.d * _wgslsmith_f_op_f32(max(global0.d.e.x, 378f))), _wgslsmith_div_vec4_f32(var_2.b.e, var_2.b.e)), Struct_1(~vec2<u32>(0u, 70057u), u_input.e, -23607i, _wgslsmith_f_op_f32(722f - 1489f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d.e)))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(floor(276f)), global0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_f_op_f32(-1395f + _wgslsmith_f_op_f32(step(300f, var_3.e.x)))), max(~reverseBits(vec4<i32>(var_2.d.c, var_0, var_1.c.c, var_1.b.c)), firstTrailingBit(-vec4<i32>(35155i, var_2.b.c, var_0, -36867i))), vec2<bool>(true, !all(vec2<bool>(false, false))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d, -347f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1511f, var_1.b.e.x)), true)), Struct_1(var_3.a, ~0u, i32(-1i) * -2147483647i, var_2.a.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-435f, 640f, var_1.b.d, 1738f)))), global0.d, Struct_1(_wgslsmith_add_vec2_u32(global0.d.a, vec2<u32>(global0.b.a.x, var_1.d.a.x)), _wgslsmith_add_u32(global0.b.a.x, 0u), var_0, _wgslsmith_f_op_f32(-var_1.b.e.x), _wgslsmith_f_op_vec4_f32(step(var_1.d.e, var_3.e)))), true), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, !(!all(vec4<bool>(true, true, true, false)))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = func_2().d;
    var var_1 = Struct_1(~reverseBits(u_input.b), func_2().c.d.a.x, ~(u_input.c ^ u_input.c), var_0.a.x, arg_0.a.a);
    let var_2 = 18606i;
    var var_3 = -21517i;
    var var_4 = var_1.e;
    return func_2().d.d.b;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = func_4(func_2());
    let var_1 = func_2().a;
    let var_2 = -205f;
    global0 = func_2().d.d;
    let var_3 = arg_2.e.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.b.e.xy)), vec2<f32>(var_1.a.x, arg_2.c.d.d)), vec2<f32>(var_1.d.c.e.x, var_0.d)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(556f, func_2().c.d.e.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.d.c.d, var_1.d.b.e.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.d.e.yy)) - var_1.d.a), var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(min(u_input.c, u_input.c), u_input.c, Struct_4(Struct_3(global0.b.e, vec4<i32>(1i, -14248i, 19076i, -42385i), vec2<bool>(false, true), Struct_2(global0.c.e.zw, global0.c, global0.b, global0.d), false), vec2<i32>(u_input.c, 1i), Struct_2(vec2<f32>(global0.a.x, 316f), Struct_1(vec2<u32>(u_input.b.x, 7355u), u_input.a, u_input.c, -751f, vec4<f32>(global0.b.e.x, -386f, global0.c.d, global0.d.e.x)), global0.c, Struct_1(u_input.d.xy, 4294967295u, -2147483647i, -100f, vec4<f32>(global0.b.e.x, global0.b.d, 215f, 294f))), Struct_3(global0.b.e, vec4<i32>(global0.c.c, 13566i, global0.d.c, u_input.c), vec2<bool>(true, true), Struct_2(vec2<f32>(global0.c.e.x, global0.a.x), global0.b, global0.b, global0.d), false), vec4<bool>(false, true, false, true)))))), Struct_1(_wgslsmith_add_vec2_u32(global0.b.a, vec2<u32>(global0.b.b, 1u)), func_2().c.b.a.x, ~(1i & u_input.c) >> (max(firstLeadingBit(global0.b.a.x), 1u) % 32u), _wgslsmith_f_op_f32(-global0.a.x), vec4<f32>(1311f, global0.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f * global0.a.x) * 1528f), global0.b.d)), Struct_1(vec2<u32>(_wgslsmith_sub_u32(global0.b.b, 55941u), u_input.d.x), select(~u_input.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, global0.c.b), 4294967295u), all(vec2<bool>(false, false))), u_input.c, global0.c.e.x, global0.c.e), func_2().d.d.d);
    global0 = func_2().a.d;
    let x = u_input.a;
    s_output = StorageBuffer(-471f, vec3<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 5824i, u_input.c), vec3<i32>(-1i, u_input.c, -2132i)), vec3<i32>(global0.b.c, 1i, global0.d.c)), countOneBits(-3534i), -(u_input.c | (global0.c.c << (u_input.b.x % 32u)))), u_input.d.wz << (select(u_input.b, ~global0.c.a, vec2<bool>(true, true)) % vec2<u32>(32u)));
}

