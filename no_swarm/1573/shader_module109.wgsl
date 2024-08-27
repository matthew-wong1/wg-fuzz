struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 300f;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(50288i, 2147483647i), vec2<i32>(17783i, 1i), vec2<i32>(33229i, 0i), vec2<i32>(-29741i, 91332i), vec2<i32>(-1i, 0i), vec2<i32>(48668i, -17217i), vec2<i32>(-36668i, -1i), vec2<i32>(-8997i, -39621i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(1i, -45048i), vec2<i32>(561i, 2452i), vec2<i32>(-39968i, 2147483647i), vec2<i32>(-30449i, 17331i), vec2<i32>(0i, 18636i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 30205i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 9972i), vec2<i32>(-75243i, 1i), vec2<i32>(4012i, 0i), vec2<i32>(-43603i, i32(-2147483648)), vec2<i32>(-1i, -59225i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -44642i), vec2<i32>(2147483647i, 38597i), vec2<i32>(-8308i, 19789i));

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    let var_0 = global2.a;
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(-global2.a.b)), _wgslsmith_f_op_f32(select(global2.a.d.x, _wgslsmith_f_op_f32(global2.a.b * 1f), false)))));
    global1 = array<vec2<i32>, 28>();
    var_1 = u_input.c;
    return min(~countOneBits(var_1.x) << ((abs(0u) >> (~(~u_input.b) % 32u)) % 32u), _wgslsmith_mult_u32(u_input.b, firstTrailingBit(var_1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> Struct_5 {
    var var_0 = 4294967295u;
    var var_1 = 2143f;
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b << (13573u % 32u), func_3(arg_3.x, vec4<bool>(false, false, arg_3.x, true))), ~countOneBits(abs(vec2<u32>(u_input.b, u_input.a)))), 42768u, u_input.b);
    let var_2 = Struct_4(Struct_3(arg_0.a, u_input.c.zy));
    var var_3 = Struct_2(Struct_1(u_input.d.x, -415f, _wgslsmith_f_op_f32(ceil(228f)), vec3<f32>(var_2.a.a.d.x, -1915f, var_2.a.a.d.x)));
    return Struct_5(Struct_3(arg_0.a, _wgslsmith_mod_vec2_u32(~max(vec2<u32>(var_2.a.b.x, u_input.b), u_input.c.zx), var_2.a.b)), 44830i, _wgslsmith_f_op_f32(arg_0.a.d.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 773f), _wgslsmith_f_op_f32(-var_2.a.a.c)) + _wgslsmith_f_op_f32(-var_3.a.d.x))), firstTrailingBit(abs(vec4<i32>(global2.a.a, 1i, global2.a.a | 25592i, var_3.a.a))), u_input.d.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>) -> Struct_4 {
    global1 = array<vec2<i32>, 28>();
    var var_0 = arg_1;
    let var_1 = vec4<bool>(any(!vec4<bool>(1u < arg_0.a.b.x, false, any(vec2<bool>(false, true)), false)), any(vec2<bool>(-6997i >= (u_input.d.x | 2147483647i), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))), (u_input.d.x & (i32(-1i) * -1i)) > reverseBits(~var_0.x), true);
    let var_2 = _wgslsmith_f_op_f32(global2.a.b * arg_0.a.a.b);
    let var_3 = ~arg_0.a.b.x >= (u_input.b ^ 18721u);
    return Struct_4(arg_0.a);
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(-2147483647i, -774f, _wgslsmith_f_op_f32(global2.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.d), _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.a.d)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b, 2122f, arg_0.a.a.b)))))), ~vec2<u32>(41496u, arg_0.a.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_4(Struct_5(var_0, u_input.d.x, var_0.a.c, vec4<i32>(arg_0.a.a.a, 0i, global2.a.a, 2147483647i), var_0.a.a), vec4<i32>(-11725i, global2.a.a, global2.a.a, -6391i)).a.a.b, arg_0.a.a.d.x, var_0.a.c), _wgslsmith_f_op_vec3_f32(global2.a.d + _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.b, arg_0.a.a.b, arg_0.a.a.d.x), _wgslsmith_div_vec3_f32(var_0.a.d, vec3<f32>(-1491f, global2.a.b, 1243f)))), !(!any(vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(floor(global2.a.d)), true && (any(vec3<bool>(true, false, false)) & select(any(vec2<bool>(false, false)), false, all(vec2<bool>(false, false))))));
    let var_2 = _wgslsmith_mult_u32(51192u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~var_0.b.x, ~u_input.b, 1u, 1u), ~vec4<u32>(117351u, arg_0.a.b.x, arg_0.a.b.x, var_0.b.x)), vec4<u32>(_wgslsmith_add_u32(~4294967295u, func_4(Struct_5(Struct_3(global2.a, u_input.c.xx), var_0.a.a, arg_0.a.a.d.x, vec4<i32>(var_0.a.a, 9703i, 1i, u_input.d.x), -1i), vec4<i32>(arg_0.a.a.a, u_input.d.x, 0i, 0i)).a.b.x), 4294967295u, 1u, _wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(arg_0.a.b.x, 1u)))));
    var var_3 = 18390i;
    let var_4 = var_0.a.b;
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = func_5(func_4(func_2(Struct_2(Struct_1(global2.a.a, -945f, global2.a.b, vec3<f32>(-688f, global2.a.b, global2.a.b))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1047f, -1040f, true)) + -1278f), vec2<bool>(true, true)), max(min(-vec4<i32>(-2147483647i, u_input.d.x, 24467i, 1i), vec4<i32>(global2.a.a, 0i, global2.a.a, -158i)), vec4<i32>(global2.a.a, global2.a.a, u_input.d.x, -1i) & abs(vec4<i32>(0i, global2.a.a, u_input.d.x, 2147483647i)))));
    let var_1 = ~u_input.c;
    var var_2 = Struct_2(global2.a);
    var var_3 = var_1.x;
    var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.c.x >> (var_0.a.b.x % 32u)), abs(min(countOneBits(u_input.c.x), 19044u)), 1u), u_input.c);
    return _wgslsmith_f_op_f32(var_2.a.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.d.x - _wgslsmith_f_op_f32(-var_0.a.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.b * _wgslsmith_f_op_f32(-global2.a.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(-global2.a.b))))))));
    let var_0 = firstTrailingBit(abs(-(i32(-1i) * -1i)));
    let var_1 = Struct_5(Struct_3(global2.a, vec2<u32>(_wgslsmith_mult_u32(26499u, ~u_input.a), 36146u)), countOneBits(max(1i, -2067i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.a.b)), 419f)), vec4<i32>(5456i, -select(u_input.d.x, u_input.d.x >> (53318u % 32u), any(vec3<bool>(true, true, true))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-15580i, 2147483647i, 2147483647i, u_input.d.x), vec4<i32>(10447i, var_0, var_0, var_0)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-31246i, 1i, 57542i, u_input.d.x), vec4<i32>(67453i, -2147483647i, global2.a.a, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_0, 11814i), vec4<i32>(-1i, var_0, u_input.d.x, -2147483647i)))), -7937i), 2147483647i);
    var var_2 = var_1.d.xz;
    let var_3 = vec4<bool>(true, true, true, true);
    global2 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(-var_1.d, vec4<i32>(-34589i, -14130i, -1i, 1i))), 2019f, var_1.a.a.d.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.b)), var_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a.b - -979f))))));
    let var_4 = ~abs(firstLeadingBit(~min(vec4<u32>(u_input.a, var_1.a.b.x, var_1.a.b.x, 0u), vec4<u32>(var_1.a.b.x, 10645u, u_input.a, var_1.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_1.b, 4968i), u_input.a, abs(~vec2<u32>(var_4.x, u_input.c.x)), var_1.a.a.b);
}

