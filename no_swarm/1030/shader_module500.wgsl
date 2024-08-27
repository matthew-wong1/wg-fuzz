struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f - 140f)) + -1079f))) + 584f);
    let var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.b.zz);
    var var_2 = !vec2<bool>(any(vec3<bool>(true, true, true)), true);
    global0 = array<Struct_1, 2>();
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-295f, 700f, _wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1312f, 1365f, -625f)), vec3<bool>(true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, true)), var_2.x))), vec3<f32>(1165f, 740f, _wgslsmith_f_op_f32(f32(-1f) * -1545f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(757f, 907f, 286f) - vec3<f32>(-284f, 129f, -1160f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -372f, 1421f)))), var_2.x)), vec3<bool>(false, arg_0, min(2123u, 59492u) != u_input.d.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_1, 2>();
    let var_0 = min(arg_2.x & firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, 2147483647i)), 1i) >= abs(arg_2.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x)), -747f)), !(!arg_0.b), vec4<bool>(!arg_3.x, var_0, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), arg_0.a.x) - arg_1.d));
    global0 = array<Struct_1, 2>();
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, arg_0.d.x, -541f), _wgslsmith_f_op_vec3_f32(-var_1.a))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-138f, arg_1.d.x, var_1.d.x)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(func_3(true)), var_1.c.x))))), vec2<bool>(arg_0.c.x, any(vec4<bool>(true, var_0 || var_1.c.x, var_0, true))), select(!arg_1.c, select(!(!vec4<bool>(arg_1.b.x, var_1.c.x, arg_3.x, arg_3.x)), !select(var_1.c, vec4<bool>(arg_3.x, false, var_0, false), true), true), select(arg_0.c, arg_0.c, true)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(1500f * var_1.d.x), arg_3.x)), _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.a.x)))), 1000f));
    return vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) != 1000f, true, true, var_0);
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(-519f)), 1264f))), !select(arg_0.yx, vec2<bool>(arg_0.x, arg_0.x), select(false, arg_0.x, all(vec2<bool>(arg_0.x, true)))), vec4<bool>(arg_0.x, true, any(vec4<bool>(arg_0.x, true & arg_0.x, arg_0.x, arg_0.x & arg_0.x)), false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-634f, -1980f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, -1000f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(958f - 962f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-353f * -167f), -442f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), vec2<bool>(true, true), func_2(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(604f, 1000f, var_0.a.x) + var_0.a), var_0.b, vec4<bool>(true, false, all(var_0.b), !arg_0.x), vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x + var_0.a.x))), firstLeadingBit(min(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, 13084i) & u_input.b.xz)), !arg_0.ywx), var_0.d);
    return Struct_1(var_1.a, func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 3528u, 73745u), ~vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.a.x)), 2u)], Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_1.a.x, -1000f, var_1.a.x))), !(!var_0.b), !vec4<bool>(false, false, arg_0.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-648f, var_1.a.x))))), vec2<i32>(56647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.b.x, 55301i), vec4<i32>(u_input.b.x, 9338i, u_input.c, u_input.b.x))), vec3<bool>(select(-9520i, -2147483647i, true) != u_input.c, true, true)).zx, select(vec4<bool>(var_0.b.x, arg_0.x, !any(vec3<bool>(arg_0.x, true, var_1.c.x)), (u_input.a.x != u_input.a.x) | select(var_0.c.x, true, false)), !var_0.c, all(vec2<bool>(all(var_1.c.zzz), false))), var_0.a.xx);
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return func_4(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), func_2(global0[_wgslsmith_index_u32(27875u, 2u)], Struct_1(vec3<f32>(-314f, 881f, 416f), vec2<bool>(true, true), vec4<bool>(true, false, true, true), vec2<f32>(819f, 1000f)), vec2<i32>(38377i, -2147483647i) ^ vec2<i32>(u_input.c, -19233i), vec3<bool>(false, false, false))));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = vec4<f32>(1384f, arg_0.a.x, arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), 1f) * 2145f));
    var var_1 = arg_0.c;
    return -66694i & u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = u_input.b.x;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1()), _wgslsmith_f_op_f32(1000f - -155f), vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(-1i, -18428i, -2147483647i, 1i)) | (vec4<i32>(u_input.c, u_input.b.x, -26254i, var_0) ^ vec4<i32>(var_0, 0i, var_0, 4098i))), 1i);
}

