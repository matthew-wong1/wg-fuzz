struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, true), true, true, Struct_1(vec2<u32>(19211u, 44162u)));

var<private> global2: Struct_4 = Struct_4(true, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(1f + 1000f);
}

fn func_2() -> f32 {
    return _wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<f32> {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 712f))), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = global0[_wgslsmith_index_u32(~global1.d.a.x, 22u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1680f + 503f)))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_2()));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -691f, var_1.x) + vec3<f32>(var_1.x, var_1.x, 1272f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(var_1.x, var_1.x, var_1.x), Struct_5(global1.a, vec2<bool>(false, false), Struct_3(13694u, 2191i, 59362u, global0[_wgslsmith_index_u32(global2.b, 22u)], global0[_wgslsmith_index_u32(4904u, 22u)]), Struct_4(var_0, global1.d.a.x), global1.d), Struct_3(12178u, -1i, 4294967295u, Struct_2(vec3<bool>(global2.a, global1.c, true), true, global1.b, Struct_1(vec2<u32>(global2.b, global1.d.a.x))), global0[_wgslsmith_index_u32(19745u, 22u)]), vec3<f32>(-147f, var_1.x, -217f))), vec3<f32>(1000f, 322f, var_1.x)), 11082i >= u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1553f), -2928f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1065f)) * var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2157f, 444f, 603f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 109f, var_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -129f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1250f, var_1.x, -618f))))))));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global2.b | min(firstTrailingBit(0u), ~4294967295u), 4294967295u), 7032i, vec4<f32>(var_2.x, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1104f, -321f) - var_2), Struct_5(!global1.a, global1.a.xz, Struct_3(global1.d.a.x, 51912i, global1.d.a.x, Struct_2(vec3<bool>(global1.b, var_0, false), global2.a, global2.a, Struct_1(vec2<u32>(23230u, u_input.b))), global0[_wgslsmith_index_u32(u_input.b, 22u)]), Struct_4(var_0, global1.d.a.x), Struct_1(u_input.e.yy)), Struct_3(global1.d.a.x & global2.b, -u_input.d, _wgslsmith_mod_u32(4294967295u, global1.d.a.x), global0[_wgslsmith_index_u32(~12029u, 22u)], Struct_2(vec3<bool>(global2.a, true, global2.a), global1.c, false, Struct_1(u_input.e.zz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 307f, var_2.x), vec3<f32>(-1441f, var_3, 1000f)))))).x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-587f - var_2.x), _wgslsmith_div_f32(var_1.x, 410f)), _wgslsmith_f_op_f32(-1503f * 1185f)), _wgslsmith_f_op_f32(f32(-1f) * -1053f)));
}

