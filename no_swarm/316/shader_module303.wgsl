struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22>;

var<private> global1: bool = false;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<u32>(1u, 1u), Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(-475f, -848f, -145f, -235f), vec4<f32>(-667f, 1690f, 188f, 868f))), Struct_2(vec2<u32>(117459u, 37386u), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-2092f, -435f, 1691f, -750f), vec4<f32>(281f, -334f, 168f, 271f))), Struct_2(vec2<u32>(38272u, 1u), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(197f, -1108f, -443f, 1347f), vec4<f32>(126f, -592f, -842f, 1886f))), Struct_2(vec2<u32>(88901u, 78393u), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(401f, -514f, -887f, -221f), vec4<f32>(1656f, -747f, -241f, 2020f))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_0.x))))))));
    let var_1 = ~global2.a.x;
    var var_2 = Struct_2(global2.a, global2.b);
    global2 = Struct_2(~(vec2<u32>(23082u, max(global2.a.x, var_2.a.x)) ^ var_2.a), Struct_1(!vec4<bool>(arg_0.x == arg_2, any(vec4<bool>(global2.b.a.x, true, false, var_2.b.a.x)), any(global2.b.a.wzz), true), var_2.b.b, var_2.b.b));
    return arg_2;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(!select(!vec4<bool>(false, global2.b.a.x, true, global2.b.a.x), global2.b.a, global2.b.a), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec4<f32>(global2.b.b.x, 1000f, global2.b.c.x, 1867f), _wgslsmith_f_op_vec3_f32(-global2.b.c.xyz), _wgslsmith_f_op_f32(f32(-1f) * -1345f))), -1270f)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x + 1328f), -427f, any(global2.b.a))) - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -857f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(global2.b.b.x, global2.b.c.x, arg_1.x, global2.b.c.x)))) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(1000f * -572f), global2.b.b.x, _wgslsmith_f_op_f32(-global2.b.c.x)))));
    let var_1 = Struct_2(~(~(~(vec2<u32>(4294967295u, 20469u) ^ vec2<u32>(u_input.b, 4294967295u)))), var_0);
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_mod_vec3_i32(u_input.d, u_input.d) ^ -u_input.d;
    let var_4 = vec2<u32>(10437u, firstTrailingBit(abs(firstTrailingBit(1u))));
    return Struct_2(global2.a, Struct_1(select(!var_0.a, !vec4<bool>(global2.b.a.x, true, false, false), !(!global2.b.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1294f, var_0.b.x, var_0.c.x, var_1.b.c.x), global2.b.b, global2.b.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(min(var_0.b, global2.b.b)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.b.x))), 1329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(455f, var_0.c.x, true))), var_1.b.b.x)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_2(u_input.d.xz, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-283f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.b.x + -1102f))), -294f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.x)))), global2.b.b.x));
    global3 = array<Struct_1, 27>();
    let var_1 = !select(global2.b.a, vec4<bool>(true, select(true, false, !var_0.b.a.x), any(vec3<bool>(global2.b.a.x, var_0.b.a.x, var_0.b.a.x)), false), ~select(27978i, u_input.d.x, true) > firstTrailingBit(u_input.d.x));
    var_0 = global4[_wgslsmith_index_u32(global2.a.x, 4u)];
    global3 = array<Struct_1, 27>();
    return global4[_wgslsmith_index_u32(~var_0.a.x, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_0 = func_1(37468u);
    let var_1 = func_1(abs(global2.a.x)).b;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))), 2149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x * -115f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(0u).b.b.yzy)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(512f, var_2.x, 166f, -1069f), vec4<f32>(var_0.b.b.x, global2.b.c.x, var_0.b.c.x, var_0.b.c.x), vec4<bool>(true, global2.b.a.x, false, global2.b.a.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b)))), var_2.zy, vec2<i32>(u_input.c, u_input.c));
}

