struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(30222u, false, vec2<i32>(-16i, 45903i))), Struct_2(Struct_1(1u, false, vec2<i32>(1i, 1i))), Struct_2(Struct_1(49315u, true, vec2<i32>(7587i, 68711i))), Struct_2(Struct_1(78016u, true, vec2<i32>(-65324i, 1i))), Struct_2(Struct_1(24389u, true, vec2<i32>(-34261i, 2147483647i))), Struct_2(Struct_1(0u, true, vec2<i32>(-1i, 2147483647i))), Struct_2(Struct_1(1u, false, vec2<i32>(1i, 1i))), Struct_2(Struct_1(57307u, true, vec2<i32>(1i, -7509i))), Struct_2(Struct_1(1u, false, vec2<i32>(-582i, 1i))), Struct_2(Struct_1(73980u, true, vec2<i32>(-11435i, i32(-2147483648)))), Struct_2(Struct_1(4294967295u, false, vec2<i32>(-29687i, -10131i))), Struct_2(Struct_1(0u, true, vec2<i32>(-1i, -1i))), Struct_2(Struct_1(1u, true, vec2<i32>(2147483647i, 1i))), Struct_2(Struct_1(84657u, false, vec2<i32>(0i, -35305i))), Struct_2(Struct_1(4294967295u, true, vec2<i32>(-27031i, 0i))), Struct_2(Struct_1(12293u, false, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(0u, false, vec2<i32>(2147483647i, 25791i))));

var<private> global2: array<vec3<u32>, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    return global0.a.a.a;
}

fn func_2(arg_0: f32) -> Struct_3 {
    global2 = array<vec3<u32>, 17>();
    global1 = array<Struct_2, 17>();
    let var_0 = select(vec2<i32>(firstLeadingBit(1i), -u_input.a), global0.a.a.c, global0.c.yy);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(4964u, 1u), global0.b), global0.c.x, reverseBits(-global0.a.a.c))), ~global0.a.a.a, global0.c, var_0.x);
    var_1 = Struct_3(var_1.a, ~func_3(), vec4<bool>(select(var_1.a.a.b, global0.a.a.b, !global0.a.a.b), true, true, true), min(-u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1294i, -6951i, var_0.x)), firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, var_1.a.a.c.x))), u_input.a)));
    return Struct_3(Struct_2(var_1.a.a), 11806u << (min(global0.b, ~abs(0u)) % 32u), select(var_1.c, select(global0.c, vec4<bool>(false || global0.c.x, global0.b >= 4294967295u, var_1.c.x == global0.a.a.b, all(vec2<bool>(var_1.c.x, var_1.a.a.b))), select(select(vec4<bool>(var_1.c.x, false, true, false), vec4<bool>(var_1.c.x, var_1.c.x, false, global0.c.x), global0.a.a.b), !vec4<bool>(var_1.c.x, false, global0.a.a.b, global0.c.x), global0.c)), !select(vec4<bool>(false, global0.a.a.b, true, global0.c.x), vec4<bool>(false, global0.c.x, true, global0.a.a.b), global0.c)), -(~select(global0.a.a.c.x, i32(-1i) * -619i, !global0.c.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = true;
    var var_1 = func_2(1491f);
    var var_2 = reverseBits(global0.d);
    var var_3 = Struct_1(69762u, !any(vec2<bool>(any(var_1.c.yx), true)), vec2<i32>(select(arg_0.a.c.x, ~func_2(156f).a.a.c.x, any(global0.c)), _wgslsmith_clamp_i32(countOneBits(7616i >> (arg_0.a.a % 32u)), firstLeadingBit(u_input.a), _wgslsmith_mult_i32(27740i | global0.d, 0i))));
    let var_4 = vec4<i32>(~(-func_2(-1000f).d), _wgslsmith_add_i32(arg_0.a.c.x, ~(~global0.d | abs(global0.d))), var_3.c.x, -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 2147483647i, global0.a.a.c.x), ~vec3<i32>(var_1.d, 1i, var_3.c.x)), _wgslsmith_dot_vec2_i32(~var_1.a.a.c, vec2<i32>(1i, 1i))));
    return Struct_3(var_1.a, 1u | (var_3.a ^ 79884u), vec4<bool>(!(!(var_0 | global0.a.a.b)), global0.a.a.b, !any(select(vec3<bool>(arg_0.a.b, var_0, var_3.b), global0.c.yzw, var_1.c.xzz)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-941f)), _wgslsmith_f_op_f32(round(-1011f)))).c.x), _wgslsmith_clamp_i32(var_4.x, u_input.a, func_2(1350f).a.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 17>();
    global0 = Struct_3(Struct_2(global0.a.a), 90567u, vec4<bool>(false, !(any(global0.c) != (true == global0.c.x)), global0.c.x, !global0.c.x), -8047i << (_wgslsmith_div_u32(countOneBits(global0.b), 8413u) % 32u));
    global2 = array<vec3<u32>, 17>();
    global1 = array<Struct_2, 17>();
    global0 = func_1(Struct_2(global0.a.a));
    global2 = array<vec3<u32>, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(614f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_div_i32(~global0.d, u_input.a & u_input.a), -countOneBits(min(-10181i, 0i)), _wgslsmith_sub_i32(select(u_input.a, func_2(-489f).a.a.c.x, true), -firstTrailingBit(-8798i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, 12668i, 17632i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(-18682i, u_input.a, -17381i, 2147483647i))), 1u);
}

