struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 19>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(~max(u_input.a.x, abs(~106271u)), select(global0.b, _wgslsmith_add_vec3_i32(-u_input.c, vec3<i32>(global0.b.x, 1i, 2147483647i)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))) ^ -vec3<i32>(arg_0.b.x, i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 19u)]));
    return arg_0.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(30414u, u_input.c);
    var var_1 = false;
    var var_2 = vec3<u32>(~var_0.a, arg_1.a, ~(~firstLeadingBit(global0.a)));
    global1 = array<i32, 19>();
    var_2 = abs(~(firstLeadingBit(~u_input.d) >> (firstLeadingBit(vec3<u32>(var_2.x, arg_1.a, var_0.a)) % vec3<u32>(32u))));
    return u_input.d << (countOneBits(abs(vec3<u32>(_wgslsmith_clamp_u32(global0.a, 1u, var_2.x), ~0u, 4294967295u << (var_0.a % 32u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))) - 853f), -276f);
    let var_1 = Struct_2(-331f, ~(~func_3(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), Struct_1(u_input.a.x, vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.b.x, 19u)], global1[_wgslsmith_index_u32(arg_0.b.x, 19u)])), _wgslsmith_f_op_f32(select(-130f, 770f, true)), Struct_1(0u, u_input.c))));
    let var_2 = Struct_2(-307f, ~vec3<u32>(~arg_0.b.x & ~arg_0.b.x, global0.a, _wgslsmith_div_u32(u_input.d.x, 41246u)));
    global1 = array<i32, 19>();
    let var_3 = Struct_1(var_1.b.x, u_input.c);
    return Struct_1(~(~max(global0.a, var_2.b.x)) << (~(~(~27249u)) % 32u), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(~reverseBits(~u_input.d.x)), select(vec3<i32>(u_input.b, -(~2147483647i), 18707i), _wgslsmith_add_vec3_i32(func_1(Struct_1(u_input.a.x, vec3<i32>(35919i, -35171i, u_input.c.x))), -u_input.c) ^ (~u_input.c & -u_input.c), _wgslsmith_div_i32(u_input.c.x, -global0.b.x) <= func_1(func_2(Struct_2(333f, vec3<u32>(global0.a, 1u, 21255u)), true, true)).x));
    let var_0 = vec2<bool>(true, !(!(!any(vec2<bool>(true, false)))));
    global0 = Struct_1(7437u, global0.b);
    global1 = array<i32, 19>();
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-377f)), 386f)), 1215f), 690f);
    global0 = Struct_1(4294967295u, min(~select(func_2(Struct_2(-765f, u_input.d), true, true).b, min(u_input.c, vec3<i32>(-10655i, 0i, global0.b.x)), vec3<bool>(true, var_0.x, var_0.x)), vec3<i32>(abs(26793i), 1i, 2147483647i) & ~global0.b));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1000f) + var_1.x) + _wgslsmith_f_op_f32(-271f - 1110f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    global0 = func_2(Struct_2(var_1.x, ~vec3<u32>(abs(global0.a), 53977u, ~5802u)), global0.a != 1u, true);
    let var_3 = vec3<u32>(~(_wgslsmith_add_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(30249u, 1u, u_input.d.x, u_input.d.x), vec4<u32>(global0.a, 75039u, u_input.a.x, 4294967295u))) & func_3(var_2, Struct_1(global0.a, vec3<i32>(1i, u_input.c.x, global1[_wgslsmith_index_u32(u_input.d.x, 19u)])), var_2, func_2(Struct_2(var_2, vec3<u32>(17244u, u_input.d.x, 36709u)), var_0.x, var_0.x)).x), _wgslsmith_dot_vec2_u32(~(~u_input.d.zx), ~vec2<u32>(1u, ~17630u)), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-50232i, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a.x, 0u, 1u, var_3.x) & vec4<u32>(var_3.x, u_input.a.x, 4294967295u, 1u), ~vec4<u32>(43991u, global0.a, 1u, 81357u), !vec4<bool>(var_0.x, var_0.x, false, false)), vec4<u32>(~func_3(1376f, Struct_1(4294967295u, vec3<i32>(u_input.b, 41242i, 14957i)), 476f, Struct_1(u_input.a.x, global0.b)).x, global0.a, 0u, firstLeadingBit(global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) + _wgslsmith_div_vec4_f32(vec4<f32>(304f, 1558f, var_2, var_1.x), vec4<f32>(2026f, 526f, 493f, 414f))) - vec4<f32>(-1025f, -333f, _wgslsmith_f_op_f32(-157f + var_1.x), 1000f))));
}

