struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(819f, 799f, 1182f, 499f);

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: Struct_3;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_4(vec3<bool>(any(!vec4<bool>(global3.b.a, global3.b.a, global3.b.a, true)), global3.b.a, true), _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.x, 0u, 4294967295u), ~vec3<u32>(4294967295u, arg_1.a.x, 12375u), vec3<u32>(global3.a.a.x, 40876u, global3.a.a.x) << (vec3<u32>(4294967295u, 4763u, 1u) % vec3<u32>(32u))), ~vec3<u32>(48427u, arg_1.a.x, global3.a.a.x), global3.b.a), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0, 17631u, 32771u), abs(arg_1.a.yww), vec3<u32>(1u, 41456u, arg_0)) ^ abs(abs(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_0)))), Struct_1(false, 1i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.x, global0.x, 1137f) * vec3<f32>(860f, 1267f, global3.b.d.x)) * _wgslsmith_f_op_vec3_f32(global3.b.c * global4.c)), vec3<f32>(global3.b.c.x, _wgslsmith_f_op_f32(floor(-473f)), global4.d.x))), _wgslsmith_f_op_vec4_f32(select(global3.b.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global3.b.d, vec4<f32>(global4.d.x, 309f, 380f, global0.x))) - global3.b.d), true))), _wgslsmith_f_op_f32(abs(global4.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = var_0.c;
    var var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, -1i), u_input.a.xz);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, global0.x, -1932f, _wgslsmith_f_op_f32(global0.x * 249f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(334f - 177f), _wgslsmith_f_op_f32(f32(-1f) * -1932f), _wgslsmith_f_op_f32(min(1249f, global0.x)), -870f)))));
    global3 = Struct_3(Struct_2(global3.a.a), Struct_1(false, _wgslsmith_div_i32(i32(-1i) * -9881i, ~(-global3.b.b)), _wgslsmith_f_op_vec3_f32(-global0.xxx), var_1.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f * _wgslsmith_f_op_f32(trunc(1594f))));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(global4.d + global3.b.d);
    var var_0 = Struct_3(global3.a, global3.b);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global3.b.d.x)), 140f)));
    var var_1 = Struct_4(!select(vec3<bool>(true, any(vec2<bool>(false, false)), true), select(!vec3<bool>(global3.b.a, false, global3.b.a), select(vec3<bool>(global4.a, false, global4.a), vec3<bool>(global4.a, global3.b.a, false), vec3<bool>(true, false, var_0.b.a)), true || global4.a), select(!vec3<bool>(false, var_0.b.a, var_0.b.a), !vec3<bool>(false, true, global4.a), !vec3<bool>(false, true, var_0.b.a))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(67543u, var_0.a.a.x)), 51546u), var_0.b, 1621f, var_0.b.c.x);
    var var_2 = Struct_4(var_1.a, ~abs(var_1.b), Struct_1(global3.b.a, var_1.c.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global4.c.x)), _wgslsmith_f_op_f32(min(var_0.b.d.x, var_0.b.d.x)), var_1.d) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), var_1.c.c.x, 1f)), vec4<f32>(_wgslsmith_f_op_f32(abs(138f)), _wgslsmith_f_op_f32(global3.b.c.x - -1000f), -172f, var_1.d)), _wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + _wgslsmith_f_op_f32(ceil(-2075f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(abs(62515u), Struct_2(vec4<u32>(0u, global3.a.a.x, 0u, global3.a.a.x)))), _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(trunc(global4.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d.x * var_1.d)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + var_0.b.c.x), -485f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global3.b.c.x, 774f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    var var_0 = Struct_3(global3.a, Struct_1(!global3.b.a, ~(-41164i), _wgslsmith_f_op_vec3_f32(global0.ywy * global4.d.zzx), vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(global3.b.d.x * 815f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-787f - 1647f), arg_0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-801f, 351f)), _wgslsmith_f_op_f32(func_3(10274u, var_0.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.b.d.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1946f), 138f)), -1372f)), arg_0.x));
    let var_1 = var_0.b;
    global1 = 987f;
    return !(!select(vec2<bool>(10380u < global3.a.a.x, false), vec2<bool>(global4.a, !var_1.a), !all(vec3<bool>(arg_2, global3.b.a, var_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    let var_1 = select(!(!vec2<bool>(1u > global3.a.a.x, false)), select(func_1(_wgslsmith_f_op_vec3_f32(-global4.d.xxz), vec3<f32>(-285f, global4.d.x, _wgslsmith_f_op_f32(-global0.x)), true), vec2<bool>(any(vec4<bool>(global3.b.a, global3.b.a, global4.a, false)), !global4.a), var_0.a), vec2<bool>(false, all(!(!vec4<bool>(false, global3.b.a, global3.b.a, true)))));
    var var_2 = Struct_3(global3.a, global3.b);
    global2 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_2.a.a.x, var_2.a.a.x), ~(~0u), global3.a.a.x);
    global0 = vec4<f32>(global3.b.c.x, _wgslsmith_f_op_f32(-1000f + var_0.d.x), 1321f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.b.c.x)), -192f));
    let var_3 = reverseBits(~(~(~(~1u))));
    global2 = ~(~var_2.a.a.x);
    let var_4 = select(select(vec3<bool>(false, false, all(var_1)), vec3<bool>(all(!var_1), global3.b.a, false), !vec3<bool>(true, false, var_2.b.d.x >= 1399f)), !(!(!vec3<bool>(global4.a, true, global4.a))), !(!vec3<bool>(var_0.a, true, global4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.b, 417f, -439f);
}

