struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, -11731i), Struct_2(true, 6442i));

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_2 = Struct_2(true, -56171i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(!global3.a, min(_wgslsmith_add_i32(17877i, global3.b), ~(-26877i)));
    var var_1 = _wgslsmith_mod_i32(1i, -622i);
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_2 = abs(~vec2<u32>(1u | u_input.b.x, u_input.a));
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_2.x << (var_2.x % 32u), ~(~reverseBits(74032u))), 2u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec2<u32> {
    global0 = array<Struct_2, 2>();
    let var_0 = func_2();
    var var_1 = select(select(vec3<bool>(any(vec4<bool>(false, false, global3.a, false)), !(global3.a == true), select(true, true, arg_1.x == arg_1.x)), !(!vec3<bool>(false, global2.x, true)), any(!vec2<bool>(var_0.a, global2.x))), select(select(!vec3<bool>(true, true, var_0.a), vec3<bool>(true, !var_0.a, 474f > arg_0.x), false), vec3<bool>(!(!global3.a), var_0.a, true), all(vec2<bool>(true, global2.x))), true);
    global1 = array<Struct_1, 30>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1343f)) * _wgslsmith_f_op_f32(-arg_0.x)), Struct_2(!all(!vec4<bool>(var_1.x, false, global2.x, var_1.x)), 2147483647i), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, 4294967295u)), firstTrailingBit(max(52969u, 48576u >> (u_input.b.x % 32u)))), all(!(!vec4<bool>(false, var_0.a, false, true))));
    return var_2.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1228f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))) + arg_2.x);
    global0 = array<Struct_2, 2>();
    var var_3 = !(!(!arg_0.a));
    return func_3(_wgslsmith_f_op_vec2_f32(abs(arg_2.yx)), -(~(-vec4<i32>(38950i, arg_0.b, global3.b, arg_1.b) & (vec4<i32>(arg_1.b, var_0.b, var_0.b, var_1.b) ^ vec4<i32>(arg_0.b, arg_0.b, -37520i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_2(u_input.a > abs(1u), ~global3.b), global0[_wgslsmith_index_u32(abs(u_input.b.x), 2u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1390f, 1122f, -194f), vec3<f32>(1930f, 1000f, -1257f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(254f, 1258f, -212f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1552f, 1521f, 2142f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(228f, -859f, -1000f) - vec3<f32>(1485f, -202f, -724f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, 132f, 189f) * vec3<f32>(221f, 993f, -386f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-700f, -457f, 749f) - vec3<f32>(203f, -1000f, 427f))), vec3<f32>(_wgslsmith_f_op_f32(select(197f, -414f, false)), _wgslsmith_f_op_f32(550f * -752f), 1822f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1227f, -302f, -1000f), vec3<f32>(-1188f, 1535f, -1000f), vec3<bool>(global3.a, global2.x, true)))))))), u_input.a, u_input.a);
}

