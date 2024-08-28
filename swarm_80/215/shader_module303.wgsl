struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(1u, false), Struct_1(722u, false), vec2<i32>(-25370i, 2147483647i), 30452u, Struct_1(43565u, true)), Struct_2(Struct_1(1u, true), Struct_1(121054u, true), vec2<i32>(7612i, 8138i), 32183u, Struct_1(1u, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = Struct_3(Struct_2(global0.b.a, Struct_1(1u ^ (global0.a.e.a | 23514u), global0.b.a.b), firstLeadingBit(-global0.b.c), firstTrailingBit(~global0.a.a.a) | global0.b.e.a, Struct_1(abs(countOneBits(0u)), true)), Struct_2(global0.a.a, global0.b.e, global0.a.c, 0u, Struct_1(global0.a.e.a, true)));
    global0 = Struct_3(Struct_2(global0.b.a, global0.a.e, global0.b.c, ~global0.b.e.a, global0.a.a), global0.a);
    let var_0 = -875f;
    var var_1 = 73535u;
    var_1 = u_input.a;
    return 1059f;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(988f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * 345f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-116f * arg_0), _wgslsmith_f_op_f32(abs(-1319f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1673f + -404f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(350f + arg_0)), _wgslsmith_f_op_f32(1492f - _wgslsmith_f_op_f32(767f * arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0)))))));
    let var_1 = global0.b.a.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -1119f, true))), _wgslsmith_f_op_f32(-var_0.x), -1042f, _wgslsmith_f_op_f32(func_3())));
    global0 = Struct_3(global0.a, Struct_2(Struct_1(abs(arg_1), false), global0.b.e, _wgslsmith_sub_vec2_i32(-(~global0.b.c), min(vec2<i32>(global0.b.c.x, 7224i), global0.a.c) ^ global0.b.c), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~31297u, arg_1, select(global0.a.e.a, u_input.a, true)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.b.b.a, u_input.a, 1u, u_input.a)), vec4<u32>(global0.b.b.a, arg_1, u_input.a, 4294967295u))), global0.a.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(f32(-1f) * -235f))));
    return Struct_3(global0.b, global0.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = func_2(-484f, arg_1.a.a);
    let var_0 = ~(~global0.b.c);
    global0 = Struct_3(arg_1, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2047f)), ~(~4294967295u)).b);
    var var_1 = arg_1;
    let var_2 = arg_2;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_1(Struct_1(u_input.a, all(vec3<bool>(global0.a.b.b, true, true)) && global0.a.e.b), global0.a, Struct_1(84399u, !(!global0.b.e.b))), global0.b);
    var var_0 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2237f + -830f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(183f * 976f), _wgslsmith_f_op_f32(min(1579f, 121f)), !global0.b.e.b)), -1420f)))), global0.a.b.a);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-182f, 847f) + vec2<f32>(-1134f, 1000f)) - vec2<f32>(-311f, -537f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -1155f, 416f) * vec4<f32>(402f, var_1.a.x, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.a.x, 667f, 738f) - vec4<f32>(var_1.a.x, var_1.a.x, -382f, -355f)), !vec4<bool>(true, global0.a.b.b, global0.a.a.b, false))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, -1244f, var_1.a.x, var_1.a.x))), vec4<f32>(469f, 2472f, -1140f, 1164f))))));
    var_0 = Struct_3(Struct_2(func_1(global0.b.e, func_2(_wgslsmith_f_op_f32(round(var_2.x)), ~41089u).a, func_2(_wgslsmith_f_op_f32(f32(-1f) * -317f), 1u).a.a).a, Struct_1(abs(firstTrailingBit(4294967295u)), !all(vec4<bool>(var_0.a.e.b, global0.b.b.b, var_0.b.e.b, true))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -global0.a.c.x), -select(var_0.a.c, vec2<i32>(13634i, var_0.b.c.x), vec2<bool>(var_0.a.e.b, var_0.b.b.b)), ~(-var_0.b.c)), 4294967295u | _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b.e.a, global0.b.b.a), u_input.a), global0.b.a), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x + var_2.x)))), ~_wgslsmith_add_u32(global0.b.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(67960u, global0.a.b.a, u_input.a, 54326u), vec4<u32>(4294967295u, var_0.b.a.a, 1u, 1u)))).a);
    let var_3 = vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2695i, func_2(-1000f, 4294967295u).b.c.x)), countOneBits(-firstLeadingBit(vec2<i32>(u_input.b, global0.b.c.x)))), (-_wgslsmith_dot_vec4_i32(vec4<i32>(31031i, u_input.b, u_input.b, global0.a.c.x), vec4<i32>(global0.b.c.x, -1778i, -2147483647i, var_0.a.c.x)) >> (min(u_input.a, ~54562u) % 32u)) >> (0u % 32u), u_input.b);
    var var_4 = Struct_1(4294967295u, !(all(vec2<bool>(true, var_0.b.e.b)) | !var_0.b.b.b));
    var var_5 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, -530f) - _wgslsmith_f_op_f32(var_1.a.x - -1000f))) - var_2.wz));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.x | _wgslsmith_mult_i32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(37124i, var_3.x, 1i, -35436i), vec4<i32>(1i, 1i, 1i, -25647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, u_input.b), vec2<i32>(2147483647i >> (var_0.b.d % 32u), reverseBits(-1i))), -9501i));
}

