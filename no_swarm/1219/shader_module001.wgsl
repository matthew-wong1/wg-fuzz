struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), -701f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<f32> {
    let var_0 = !any(vec3<bool>(true, !all(vec3<bool>(global0.a.x, true, true)), true));
    let var_1 = Struct_1(select(vec2<bool>(global0.a.x, true), global0.a, all(vec4<bool>(any(vec2<bool>(var_0, global0.a.x)), !var_0, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f), -1000f));
    var var_2 = 125712u;
    var var_3 = var_1;
    let var_4 = true;
    return vec3<f32>(var_3.b, _wgslsmith_f_op_f32(-global0.b), var_3.b);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 556f, global0.b)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b, 1341f, -1405f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b, 573f, -778f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, global0.b) - vec3<f32>(551f, global0.b, 455f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -1558f, global0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, global0.b, global0.b), vec3<f32>(761f, 1244f, 1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global0.b, global0.b), vec3<f32>(global0.b, global0.b, -1355f), global0.a.x))))));
    global0 = Struct_1(!(!global0.a), global0.b);
    let var_1 = select(!global0.a, select(select(global0.a, select(!global0.a, global0.a, vec2<bool>(true, true)), global0.a.x), !select(!global0.a, select(vec2<bool>(true, global0.a.x), global0.a, vec2<bool>(false, true)), global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) >= global0.b), select(select(vec2<bool>(any(vec4<bool>(global0.a.x, true, true, global0.a.x)), global0.a.x), vec2<bool>(!global0.a.x, !global0.a.x), vec2<bool>(true, !global0.a.x)), vec2<bool>(false, _wgslsmith_f_op_f32(min(global0.b, var_0.x)) <= _wgslsmith_div_f32(-192f, 315f)), true));
    global0 = Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-372f, var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)))))));
    var var_2 = global0.b;
    return Struct_1(vec2<bool>(!(!(var_0.x > global0.b)), true), global0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = !select(select(select(vec4<bool>(false, false, global0.a.x, true), select(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), vec4<bool>(false, false, true, global0.a.x), true), global0.a.x), !select(vec4<bool>(true, false, true, global0.a.x), vec4<bool>(false, global0.a.x, true, global0.a.x), false), !vec4<bool>(true, true, global0.a.x, global0.a.x)), select(select(vec4<bool>(false, true, global0.a.x, global0.a.x), select(vec4<bool>(true, global0.a.x, true, global0.a.x), vec4<bool>(false, global0.a.x, false, global0.a.x), true), vec4<bool>(global0.a.x, false, global0.a.x, true)), !vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), vec4<bool>(true, !global0.a.x, true == global0.a.x, any(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)))), vec4<bool>(false, false, false, all(!vec2<bool>(global0.a.x, true))));
    var var_1 = u_input.b;
    let var_2 = func_2();
    let var_3 = -1i;
    var var_4 = Struct_1(global0.a, -319f);
    return Struct_1(select(!select(!var_0.xz, func_2().a, !vec2<bool>(global0.a.x, var_4.a.x)), var_2.a, true), _wgslsmith_f_op_f32(-var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * -688f));
    global0 = Struct_1(!global0.a, -432f);
    global0 = func_1();
    let var_0 = _wgslsmith_f_op_f32(global0.b + global0.b);
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.a.xww, u_input.a.wwy), ~firstTrailingBit(vec3<u32>(849u, u_input.a.x, u_input.b))) >> (u_input.a.zyz % vec3<u32>(32u)), min(vec4<i32>(1i, -2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<i32>(0i, 2147483647i, 1i)), (i32(-1i) * -39620i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(27332i, 2233i, -7689i, 44970i), vec4<i32>(2147483647i, 3521i, -1i, 1i))), -firstTrailingBit(select(vec4<i32>(-1i, 30276i, -2874i, 54581i), vec4<i32>(3613i, 30495i, 33615i, 2938i), vec4<bool>(false, false, true, global0.a.x)))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2042f * global0.b))))));
}

