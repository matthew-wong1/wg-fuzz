struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 19606u;

var<private> global1: Struct_5 = Struct_5(Struct_2(false), Struct_3(Struct_2(false), 4867i, Struct_2(false), vec3<u32>(4294967295u, 1u, 1u), Struct_2(true)), Struct_2(false));

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    global1 = Struct_5(global1.c, global1.b, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, ~47878u), 8u)]);
    var var_0 = ~select(_wgslsmith_add_u32(~(~global1.b.d.x), abs(u_input.b | global1.b.d.x)), global1.b.d.x, any(select(select(vec4<bool>(true, true, global1.b.a.a, global1.a.a), vec4<bool>(true, false, global1.b.a.a, global1.b.c.a), vec4<bool>(false, global1.a.a, global1.b.a.a, global1.a.a)), select(vec4<bool>(true, true, global1.a.a, false), vec4<bool>(global1.a.a, global1.a.a, global1.b.c.a, false), vec4<bool>(global1.b.c.a, global1.b.a.a, global1.b.a.a, global1.c.a)), u_input.c <= -2147483647i)));
    var var_1 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~(~select(vec4<u32>(u_input.b, 1u, 0u, u_input.a), vec4<u32>(global1.b.d.x, global1.b.d.x, 4294967295u, 10768u), true))), vec4<u32>(u_input.b, global1.b.d.x, 4294967295u, ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, 84486u, u_input.b), global1.b.d), ~global1.b.d)));
    var_0 = reverseBits(abs(_wgslsmith_mod_u32(1u, 28195u))) | ~(~var_1.x);
    var var_2 = _wgslsmith_dot_vec2_u32(var_1.wy, var_1.yy);
    return -(~(-(~vec3<i32>(global1.b.b, global1.b.b, global1.b.b)))) ^ (~(-vec3<i32>(2147483647i, 9713i, -2147483647i) >> (vec3<u32>(global1.b.d.x, 31088u, global1.b.d.x) % vec3<u32>(32u))) ^ (vec3<i32>(-global1.b.b, -1i, u_input.c) | (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(u_input.c, -10116i, u_input.c)) ^ select(vec3<i32>(76883i, 30156i, -1i), vec3<i32>(global1.b.b, u_input.c, 33283i), vec3<bool>(global1.c.a, global1.b.c.a, true)))));
}

fn func_2() -> bool {
    global2 = array<Struct_2, 8>();
    var var_0 = (firstTrailingBit(func_3()) >> (~vec3<u32>(~u_input.a, max(0u, 0u), u_input.b) % vec3<u32>(32u))) << (vec3<u32>(u_input.b, 43936u, global1.b.d.x) % vec3<u32>(32u));
    global1 = Struct_5(Struct_2(all(!select(vec2<bool>(global1.b.e.a, false), vec2<bool>(false, false), vec2<bool>(false, false)))), global1.b, global1.a);
    global0 = 4294967295u;
    var var_1 = Struct_4(Struct_3(Struct_2(global1.b.a.a), -2147483647i, global1.b.a, ~(~global1.b.d), global2[_wgslsmith_index_u32(14505u, 8u)]), global1.b);
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(global1.c.a);
    global0 = u_input.a;
    let var_1 = global2[_wgslsmith_index_u32(u_input.b, 8u)];
    let var_2 = any(select(select(vec3<bool>(global1.b.a.a && var_0.a, var_1.a && true, false), vec3<bool>(true, func_2(), global1.b.a.a), vec3<bool>(true, true, true)), select(!vec3<bool>(true, var_1.a, global1.b.a.a), !(!vec3<bool>(var_0.a, global1.a.a, true)), true), !(!vec3<bool>(false, global1.c.a, true))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1129f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-232f, _wgslsmith_f_op_f32(-1506f + 1000f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(-599f, 508f), _wgslsmith_f_op_f32(ceil(-1000f))))));
    return global1.b;
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    global1 = arg_0;
    global1 = arg_0;
    let var_0 = Struct_2(false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-417f + -1033f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -614f) + _wgslsmith_f_op_f32(-437f * 1393f)), -776f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-538f - _wgslsmith_f_op_f32(step(751f, 362f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1863f) * 201f)), _wgslsmith_f_op_f32(f32(-1f) * -2459f)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1502f, 580f)), var_1.x, _wgslsmith_f_op_f32(-1774f * _wgslsmith_f_op_f32(floor(var_1.x)))), vec4<f32>(-1000f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.x + -657f)), 466f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))), vec4<bool>(true, true, !func_2(), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-650f, -2651f, var_1.x, 1657f)))))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f));
    var var_1 = vec2<bool>(!all(select(vec3<bool>(global1.b.a.a, true, global1.b.e.a), vec3<bool>(false, global1.a.a, global1.a.a), true)), global1.b.b > ~max(countOneBits(1i), max(1i, global1.b.b)));
    let var_2 = func_4(Struct_5(Struct_2(global1.a.a), func_1(), global1.c));
    let var_3 = Struct_4(func_4(var_2).b, global1.b);
    global1 = func_4(Struct_5(var_2.c, Struct_3(var_3.a.a, var_2.b.b, Struct_2(6624u >= var_2.b.d.x), countOneBits(vec3<u32>(var_3.b.d.x, global1.b.d.x, u_input.b)), Struct_2(any(vec3<bool>(var_1.x, var_2.a.a, global1.b.e.a)))), var_2.b.c));
    let var_4 = var_2;
    global0 = reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_4.b.d, ~var_2.b.d, func_4(var_2).b.d), vec3<u32>(var_3.b.d.x << (u_input.a % 32u), _wgslsmith_sub_u32(var_3.b.d.x, 4294967295u), global1.b.d.x))) >> (36303u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.d.x, 5809u), vec2<u32>(~0u, 8697u)) & ~(~24390u >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 784f, -1004f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, 2090f, 2157f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-575f, 1000f, -1097f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1296f, -934f, 1405f) + vec3<f32>(312f, 454f, -1000f)))))), _wgslsmith_add_i32(func_4(var_4).b.b, 25792i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(940f, -301f, _wgslsmith_f_op_f32(abs(570f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(426f, 459f, -1095f) - vec3<f32>(-1018f, 275f, 1431f)))));
}

