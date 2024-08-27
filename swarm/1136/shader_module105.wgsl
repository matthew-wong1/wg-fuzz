struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: Struct_3;

var<private> global2: vec2<bool>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<u32>, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global4 = array<vec3<u32>, 17>();
    let var_0 = any(select(!(!vec2<bool>(global2.x, true)), !(!vec2<bool>(global2.x, global2.x)), true)) && !(!select(true, true, false));
    let var_1 = Struct_3(vec4<f32>(799f, _wgslsmith_f_op_f32(max(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * global3.d)))), 1542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) * 1378f)), _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(global3.b.x, -20216i, global3.b.x, global3.b.x))), -vec4<i32>(_wgslsmith_div_i32(global3.b.x, global1.b), -2147483647i, global3.b.x, global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c)))));
    global2 = vec2<bool>(true, global2.x);
    var var_2 = any(!select(vec4<bool>(global2.x, true, !var_0, var_0), vec4<bool>(global2.x, all(vec4<bool>(global2.x, var_0, var_0, global2.x)), true, true), var_0));
    return !vec4<bool>(false, select(any(select(vec4<bool>(global2.x, false, true, true), vec4<bool>(global2.x, var_0, false, global2.x), vec4<bool>(false, true, var_0, false))), var_1.b >= global3.b.x, !var_0), var_0, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<bool> {
    global0 = array<vec2<u32>, 25>();
    let var_0 = ~vec2<u32>(global3.c, 40974u);
    let var_1 = Struct_1(global3.a.a);
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.a), global1.a, select(func_3(), !arg_1, true))), ~global3.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-3679f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d)), all(select(arg_1, arg_1, arg_1)))))));
    global1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(892f)))) + var_1.a), arg_0.a, -886f, arg_0.a), reverseBits(1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + global1.a.x));
    return !(!select(vec4<bool>(true, arg_1.x, true, any(vec3<bool>(false, arg_1.x, global2.x))), select(!arg_1, arg_1, !vec4<bool>(true, false, true, global2.x)), true));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = arg_3.a.a;
    let var_1 = arg_3.a;
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -441f, 2081f, -2231f))) * global1.a)), _wgslsmith_clamp_i32(arg_1.x, -(global1.b << (_wgslsmith_clamp_u32(8741u, 1u, u_input.a) % 32u)), reverseBits(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + -1000f));
    return Struct_3(global1.a, countOneBits(-2147483647i), _wgslsmith_f_op_f32(-571f - -960f));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = 1f;
    global2 = vec2<bool>(true, true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(618f * 578f))))));
    var var_1 = func_4(min(~vec3<i32>(_wgslsmith_dot_vec3_i32(global3.b, global3.b), abs(-2147483647i), 22646i), vec3<i32>(global1.b, global3.b.x, _wgslsmith_add_i32(~(-2147483647i), -1853i))), global3.b.yx, select(select(select(select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(true, false, true, false), vec4<bool>(false, false, global2.x, global2.x)), func_2(global3.a, vec4<bool>(true, false, false, global2.x)), func_2(arg_0, vec4<bool>(global2.x, global2.x, true, true)).x), select(!vec4<bool>(true, false, global2.x, global2.x), !vec4<bool>(false, false, global2.x, true), true), all(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))), vec4<bool>(global3.b.x <= _wgslsmith_clamp_i32(global3.b.x, global1.b, global1.b), true, all(!vec3<bool>(false, true, global2.x)), !(u_input.a == 67172u)), global2.x & true), Struct_4(global3.a, !vec3<bool>(!global2.x, all(vec4<bool>(global2.x, false, global2.x, global2.x)), arg_0.a >= 714f)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(380f, var_1.a.x, _wgslsmith_f_op_f32(round(var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - func_4(global3.b, vec2<i32>(-1i, -16490i), vec4<bool>(global2.x, global2.x, false, true), Struct_4(global3.a, vec3<bool>(global2.x, global2.x, true))).a.x)))), -78567i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-551f, _wgslsmith_f_op_f32(sign(global3.a.a))))) + _wgslsmith_f_op_f32(f32(-1f) * -1117f)));
    return _wgslsmith_f_op_f32(-global3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c;
    let var_1 = global3.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(sign(global3.d)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(global3.a)))))));
    let var_3 = vec4<f32>(var_1.a, 1731f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.a, global1.c) * -610f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, var_1.a)))));
    var_0 = 66109u;
    var var_4 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.a, -1223f) - 724f)), vec3<bool>(!global2.x, global2.x != ((global2.x && true) | false), all(!(!vec3<bool>(global2.x, true, global2.x)))));
    let var_5 = global3.b.yy;
    var var_6 = func_4(vec3<i32>(-18474i, global3.b.x, global3.b.x), max(-select(vec2<i32>(-2147483647i, var_5.x), global3.b.xz, vec2<bool>(true, false)), firstLeadingBit(vec2<i32>(global3.b.x, global3.b.x)) ^ min(vec2<i32>(-2147483647i, global1.b), global3.b.zx)), vec4<bool>(all(!var_4.b), true, true, !(!global2.x) | all(!vec4<bool>(global2.x, global2.x, var_4.b.x, var_4.b.x))), Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.a, 777f) - 1f)), select(select(vec3<bool>(global2.x, var_4.b.x, false), !var_4.b, select(var_4.b, vec3<bool>(false, global2.x, false), true)), var_4.b, vec3<bool>(any(var_4.b.zx), false, var_4.b.x))));
    var var_7 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(var_3)))))), 1i, var_6.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c, firstLeadingBit(26137u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global3.c, 0u), max(vec2<u32>(global3.c, 4294967295u), vec2<u32>(4294967295u, global3.c)))) >> (~u_input.b % 32u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))), min(countOneBits(-2147483647i), var_7.b));
}

