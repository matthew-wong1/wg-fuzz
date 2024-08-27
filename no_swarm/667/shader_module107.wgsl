struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: i32;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(!(!vec3<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false)), true)));
    global1 = array<vec3<f32>, 32>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-111f - _wgslsmith_f_op_f32(min(-176f, 1069f)))), global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-657f + 1212f))), _wgslsmith_f_op_f32(f32(-1f) * -456f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) * vec4<f32>(443f, global3.x, global3.x, 307f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(115f, 2092f, global3.x, -1050f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1735f, global3.x, -954f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(643f, 608f, global3.x, global3.x) - vec4<f32>(112f, 1000f, global3.x, -1067f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-797f, global3.x, global3.x, 1406f), vec4<f32>(223f, -434f, global3.x, -1713f))))) - vec4<f32>(_wgslsmith_f_op_f32(global3.x - 1000f), global3.x, global3.x, global3.x))));
    var var_2 = Struct_3(Struct_2(select(var_0.a, vec3<bool>(all(var_0.a), true, !var_0.a.x), !var_0.a)), 2147483647i, var_1.x);
    var_0 = Struct_2(select(var_2.a.a, !(!(!vec3<bool>(var_0.a.x, false, var_0.a.x))), var_2.a.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_4(Struct_3(Struct_2(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), reverseBits(-1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 0u) << (abs(u_input.a) % 32u), all(vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), false)), Struct_2(select(vec3<bool>(-745f > arg_0.x, true, select(true, true, false)), vec3<bool>(any(vec2<bool>(false, false)), true, all(vec3<bool>(false, true, false))), true)), arg_1.x);
    global1 = array<vec3<f32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(178f, _wgslsmith_f_op_f32(max(1043f, 779f))))), -928f));
    var var_2 = select(vec4<bool>(true, true, var_0.c || true, true), !(!select(select(vec4<bool>(var_0.c, false, true, true), vec4<bool>(true, false, var_0.a.a.a.x, false), vec4<bool>(var_0.d.a.x, var_0.d.a.x, true, var_0.d.a.x)), vec4<bool>(false, false, var_0.a.a.a.x, false), select(vec4<bool>(false, var_0.d.a.x, var_0.c, true), vec4<bool>(var_0.d.a.x, true, var_0.d.a.x, false), true))), true);
    global3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(107f)), _wgslsmith_f_op_f32(exp2(arg_0.x))))), 484f), arg_0.xy, select(vec2<bool>(!var_0.c && false, false), !vec2<bool>(any(var_0.d.a.zz), true), !var_2.xw)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1004f, _wgslsmith_f_op_f32(ceil(-1276f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_0.a.c)), global3.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + -540f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec3<f32>(624f, arg_0.c.x, global3.x), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-604f * 602f)))))));
    var var_1 = Struct_5(arg_0, _wgslsmith_f_op_f32(139f - global3.x), Struct_3(arg_1.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f))), arg_1.a);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -481f);
    var var_3 = true;
    global2 = 1i;
    return vec4<bool>(any(vec2<bool>(!arg_2, !arg_0.b || all(vec4<bool>(true, var_1.a.b, arg_1.a.a.x, arg_2)))), false & (any(!vec4<bool>(true, arg_2, arg_0.b, arg_2)) | arg_1.a.a.x), false, !arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(-769f, global3.x), _wgslsmith_f_op_f32(-223f * 1000f), _wgslsmith_f_op_f32(ceil(global3.x)))))), vec4<f32>(_wgslsmith_f_op_f32(sign(-651f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - global3.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x))), global3.x), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), func_1(Struct_1(vec2<i32>(u_input.b.x, 34646i), false, vec2<f32>(862f, global3.x), 1i), Struct_3(Struct_2(vec3<bool>(true, false, true)), 10718i, global3.x), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true)))));
    global0 = _wgslsmith_sub_u32(~u_input.a >> (~4294967295u % 32u), u_input.a);
    var var_1 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(false, true)), select(true, true, true), true), !(!any(vec3<bool>(true, true, true))));
    var var_2 = u_input.d;
    let var_3 = !vec3<bool>(func_1(Struct_1(~u_input.b, select(var_1.x, false, false), _wgslsmith_div_vec2_f32(vec2<f32>(-274f, global3.x), vec2<f32>(var_0.x, -768f)), u_input.b.x), Struct_3(Struct_2(vec3<bool>(var_1.x, true, true)), -1i, _wgslsmith_f_op_f32(f32(-1f) * -727f)), !var_1.x).x, var_1.x != any(select(vec2<bool>(true, var_1.x), vec2<bool>(true, false), true)), var_1.x);
    var var_4 = abs(~(~u_input.c));
    var_4 = firstTrailingBit(vec2<i32>(-1i, -38078i));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(var_4.x, u_input.d)), vec2<i32>(u_input.b.x, var_4.x), -vec2<i32>(u_input.b.x, u_input.d))), _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(30002u, u_input.a, 0u), vec3<u32>(0u, u_input.a, 34861u)), u_input.a, u_input.a), ~(~select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(5390u, u_input.a, u_input.a), false))), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, 25415u, u_input.a), vec4<u32>(u_input.a, u_input.a, 20543u, u_input.a) ^ vec4<u32>(0u, 0u, u_input.a, 24079u))), countOneBits(vec4<i32>(u_input.b.x ^ ~831i, _wgslsmith_div_i32(2147483647i, 1i) << (~u_input.a % 32u), _wgslsmith_div_i32(0i ^ var_4.x, -2147483647i), min(0i, min(var_4.x, -2147483647i)))));
}

