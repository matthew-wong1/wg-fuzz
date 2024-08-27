struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(43636u), -159f, 281f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.b, arg_3.b, -1000f), vec3<f32>(-2075f, arg_3.c, arg_3.c))))));
    let var_1 = Struct_4(arg_3);
    global0 = arg_3;
    var var_2 = 1000f;
    let var_3 = -549f;
    return var_0.x;
}

fn func_2() -> vec4<f32> {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(~vec4<i32>(2147483647i, u_input.a.x, 82213i, 14088i)), all(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(1026f * 1886f), _wgslsmith_div_f32(-1000f, global0.b)), Struct_2(Struct_1(global0.a.a), 916f, _wgslsmith_f_op_f32(f32(-1f) * -533f)))) + 636f), _wgslsmith_f_op_f32(abs(global0.b)));
    var var_0 = global0.b;
    return vec4<f32>(global0.b, global0.c, 847f, -772f);
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_u32(global0.a.a, u_input.b.x) ^ global0.a.a), global0.c, -1024f));
    global0 = var_0.a;
    var var_1 = 4294967295u;
    global0 = Struct_2(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1510f, global0.c))), _wgslsmith_f_op_f32(global0.b * -861f))));
    var var_2 = Struct_4(Struct_2(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)))), _wgslsmith_f_op_f32(-arg_0.x)));
    return Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(841f)) * 2712f), -1224f);
}

fn func_1(arg_0: Struct_5) -> Struct_5 {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(func_2()));
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x >> (countOneBits(0u) % 32u), 40261i);
    let var_1 = global0.c;
    global0 = arg_0.a;
    let var_2 = -(~var_0.x);
    return Struct_5(func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.b, arg_0.a.c, global0.b, arg_0.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, arg_0.a.b, arg_0.a.b, 397f))), vec4<f32>(-1090f, arg_0.a.b, _wgslsmith_div_f32(1428f, -869f), 1558f)))), Struct_3(arg_0.a, 1000f));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5) -> vec3<u32> {
    global0 = Struct_2(Struct_1(_wgslsmith_add_u32(global0.a.a, ~(u_input.b.x | global0.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2015f)) + _wgslsmith_f_op_f32(global0.b + global0.c)))) + arg_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()).x))));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2084f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2297f, global0.b))), _wgslsmith_f_op_f32(abs(405f))), vec4<f32>(_wgslsmith_f_op_f32(round(-975f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1255f)) + 680f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - arg_1.a.c), _wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_f_op_f32(func_3(u_input.a, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a.b, arg_1.b.a.b) * vec2<f32>(400f, arg_1.b.b)), arg_1.a))), !(!all(vec2<bool>(false, true))))));
    var var_0 = Struct_5(arg_1.b.a, Struct_3(arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-366f + global0.c), arg_0.a.c))));
    let var_1 = ~global0.a.a;
    let var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-global0.c), -138f, _wgslsmith_f_op_f32(-arg_1.b.b), -941f));
    return firstLeadingBit(~(~select(~vec3<u32>(43875u, 45947u, arg_0.a.a.a), vec3<u32>(arg_0.a.a.a, 19556u, arg_1.a.a.a) | vec3<u32>(1u, 0u, var_1), select(true, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(select(reverseBits(vec3<u32>(4294967295u, 1u, 1u)), func_5(func_1(Struct_5(Struct_2(Struct_1(global0.a.a), global0.b, 703f), Struct_3(Struct_2(global0.a, -430f, -1559f), -683f))), Struct_5(Struct_2(global0.a, global0.b, -626f), Struct_3(Struct_2(Struct_1(43242u), -1038f, -1000f), 473f))), all(vec2<bool>(true, true))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(8591u, global0.a.a, global0.a.a), vec3<u32>(16037u, 0u, global0.a.a)), vec3<u32>(4294967295u, 1u, u_input.d.x)));
    global0 = Struct_2(global0.a, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c, -696f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), global0.c))));
    let var_1 = u_input.e.x;
    global0 = func_1(func_1(func_1(func_1(func_1(Struct_5(Struct_2(global0.a, global0.b, global0.c), Struct_3(Struct_2(Struct_1(global0.a.a), 1000f, 369f), global0.c))))))).a;
    global0 = func_1(func_1(func_1(Struct_5(Struct_2(global0.a, global0.b, global0.b), func_1(Struct_5(Struct_2(global0.a, global0.b, -1000f), Struct_3(Struct_2(Struct_1(global0.a.a), 959f, -427f), global0.c))).b)))).a;
    let var_2 = 0i ^ ~reverseBits(u_input.a.x);
    var var_3 = Struct_5(Struct_2(global0.a, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), Struct_3(Struct_2(global0.a, 650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) + global0.c)), _wgslsmith_f_op_f32(trunc(1f))));
    var_3 = Struct_5(func_1(Struct_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1162f, -584f, -447f, -489f))), func_1(Struct_5(Struct_2(Struct_1(var_0.x), -108f, var_3.b.b), Struct_3(Struct_2(Struct_1(var_0.x), global0.b, 1000f), -1000f))).b)).b.a, func_1(Struct_5(var_3.a, func_1(func_1(Struct_5(Struct_2(Struct_1(var_3.b.a.a.a), -309f, -213f), Struct_3(var_3.b.a, global0.b)))).b)).b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a & select(vec4<i32>(-1i) * -vec4<i32>(26341i, -18461i, 32375i, 1i), select(vec4<i32>(26738i, var_1, 277i, 137i), -vec4<i32>(var_1, -33688i, -24170i, 1i), all(vec4<bool>(false, false, true, true))), select(all(vec2<bool>(true, false)), true, global0.c > 369f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1234f, 623f, -210f, -1180f), vec4<f32>(746f, var_3.a.b, -1490f, -784f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.a.c, var_3.b.b, var_3.b.b, global0.c) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1532f, -429f, global0.b))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) * var_3.a.c));
}

