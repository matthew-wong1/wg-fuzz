struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(false, false), 0u, vec3<i32>(8620i, 2147483647i, 26647i), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1719f, -1161f), 767f, -1i, vec2<f32>(-769f, -505f)));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(false, true, true), vec2<f32>(-540f, 1000f), -171f, 1193i, vec2<f32>(-683f, 833f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1519f, 557f), 429f, 2147483647i, vec2<f32>(-188f, 282f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(1000f, 340f), 664f, 55446i, vec2<f32>(-1701f, -1427f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(1219f, -303f), 353f, 39651i, vec2<f32>(-164f, 1133f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1000f, 2059f), 1121f, 2147483647i, vec2<f32>(-165f, 387f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(613f, -1443f), -194f, -35014i, vec2<f32>(-587f, 726f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1403f, -1254f), -916f, 2147483647i, vec2<f32>(-615f, -369f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(483f, -215f), 174f, 2147483647i, vec2<f32>(842f, -745f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(934f, -668f), -999f, 2147483647i, vec2<f32>(264f, 584f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1000f, -1107f), -500f, -1i, vec2<f32>(1913f, -190f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1628f, 1298f), -948f, 25176i, vec2<f32>(-837f, 342f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-2561f, 498f), 1856f, 6466i, vec2<f32>(555f, -2075f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(961f, 523f), -1250f, 1i, vec2<f32>(1000f, 151f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(536f, 1578f), 289f, -10115i, vec2<f32>(2497f, 1017f)), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1000f, 1482f), 690f, 2147483647i, vec2<f32>(-385f, 242f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-779f, 1873f), 1021f, i32(-2147483648), vec2<f32>(-548f, 1491f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(248f, 145f), -924f, -24412i, vec2<f32>(-953f, 678f)));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec2<f32>(-373f, 1804f), 1540f, 1i, vec2<f32>(183f, -1061f));

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(796f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.c))))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)), 243f)), _wgslsmith_f_op_f32(trunc(global0.d.c))));
    let var_1 = global0.d;
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global2 = global1[_wgslsmith_index_u32(~global0.b, 17u)];
    return global1[_wgslsmith_index_u32(59459u, 17u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    global1 = array<Struct_1, 17>();
    global2 = arg_0;
    var var_0 = _wgslsmith_sub_i32(-u_input.a.x, 0i);
    global2 = arg_0;
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(2147483647i, global2.d), 49826i);
    return any(!select(!vec4<bool>(global2.a.x, true, global2.a.x, arg_0.a.x), select(select(vec4<bool>(true, global2.a.x, global2.a.x, true), vec4<bool>(false, global0.d.a.x, false, false), vec4<bool>(true, global2.a.x, arg_0.a.x, global0.d.a.x)), select(vec4<bool>(arg_0.a.x, true, global0.d.a.x, arg_0.a.x), vec4<bool>(true, false, arg_0.a.x, global0.d.a.x), global2.a.x), vec4<bool>(true, true, true, true)), select(!vec4<bool>(global2.a.x, false, arg_0.a.x, global0.a.x), select(vec4<bool>(arg_0.a.x, false, true, global2.a.x), vec4<bool>(true, global0.a.x, false, global2.a.x), global2.a.x), vec4<bool>(false, true, true, global0.d.a.x))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = vec3<u32>(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), vec3<u32>(0u, global0.b, u_input.c))) & global0.b, _wgslsmith_sub_u32(u_input.c, 4294967295u), 3535u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.b.x, 658f))) * _wgslsmith_f_op_vec2_f32(-global2.e)), global2.b)) * global0.d.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.e.x, -1013f, -312f)));
    var var_3 = select(select(select(vec4<bool>(false, true, !arg_0, true), !(!vec4<bool>(global0.a.x, arg_0, arg_0, global2.a.x)), global0.d.a.x), select(!vec4<bool>(false, global2.a.x, global2.a.x, false), select(vec4<bool>(false, global0.a.x, global2.a.x, global0.d.a.x), select(vec4<bool>(global2.a.x, global0.d.a.x, global0.d.a.x, arg_0), vec4<bool>(true, arg_0, global0.d.a.x, false), vec4<bool>(global2.a.x, true, global0.d.a.x, true)), !vec4<bool>(false, global2.a.x, false, arg_0)), true), !vec4<bool>(true, global2.a.x, false, select(true, global0.a.x, global0.d.a.x))), vec4<bool>(global2.d <= u_input.a.x, func_3(func_2(true && global2.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1534f, -892f) * var_2.yx)), !(!all(global0.d.a.xz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) - _wgslsmith_f_op_f32(-253f + -1000f)) < var_1.x), false);
    global3 = ~1u;
    return Struct_4(global0.a, ~46641u, countOneBits(vec3<i32>(abs(global0.c.x << (35345u % 32u)), countOneBits(-global2.d), func_2(true).d)), Struct_1(!global0.d.a, vec2<f32>(-457f, _wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1236f) - -1617f), -(~u_input.a.x), global2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false);
    global0 = func_1(any(select(vec4<bool>(false, global0.a.x, false, true), vec4<bool>(func_1(global0.a.x).a.x, global2.a.x, global0.a.x, 12166u != global0.b), global0.a.x)));
    global0 = Struct_4(!global0.a, ~_wgslsmith_sub_u32(global0.b, reverseBits(0u)) ^ ~27722u, vec3<i32>(-1i) * -(vec3<i32>(-1i) * -global0.c), Struct_1(!vec3<bool>(false, global2.a.x, true), global0.d.b, _wgslsmith_div_f32(-497f, 778f), u_input.b, vec2<f32>(173f, global0.d.c)));
    let var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global2.c)))))) != 1714f);
    let var_1 = Struct_2(Struct_1(!var_0.d.a, global0.d.b, -327f, global2.d, vec2<f32>(_wgslsmith_f_op_f32(1969f * _wgslsmith_div_f32(var_0.d.b.x, global0.d.b.x)), global2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~20348u, ~37581u, max(u_input.c, 53810u), 69839u) << ((~vec4<u32>(13711u, global0.b, 1u, 70041u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b, 70308u, var_0.b, 22244u), vec4<u32>(global0.b, 4294967295u, 21729u, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(global0.b, 33911u, 0u)), u_input.c, ~49134u) ^ vec4<u32>(~var_0.b, ~u_input.c, var_0.b, 1u)), -(~(-func_1(global0.d.a.x).c.x)), ~(~min(~1u, _wgslsmith_mult_u32(u_input.c, global0.b))));
}

