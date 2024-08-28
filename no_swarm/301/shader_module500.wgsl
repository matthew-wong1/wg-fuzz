struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<vec2<f32>, 8>;

var<private> global2: Struct_3 = Struct_3(false, 1u, Struct_1(2147483647i), Struct_2(Struct_1(56945i), Struct_1(-9268i), Struct_1(2147483647i)));

var<private> global3: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = countOneBits(vec4<u32>(~40956u, u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(54192u, 4294967295u, 1u)), u_input.d.x), global3.c << (~0u % 32u)));
    global0 = array<vec3<i32>, 10>();
    var var_1 = !global2.a;
    var var_2 = i32(-1i) * -global3.a.x;
    global2 = Struct_3(true, global2.b, Struct_1(u_input.c.x), global2.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1322f))), -234f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_3(all(arg_3.ww), arg_1.b, Struct_1(2147483647i), Struct_2(Struct_1(i32(-1i) * -2147483647i), Struct_1(-2147483647i), Struct_1(-2750i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1821f, -1000f, -298f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, -539f, -493f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1405f, -1000f, 453f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2218f, 901f, 923f) + vec3<f32>(2162f, -472f, -651f))))))));
    global0 = array<vec3<i32>, 10>();
    var var_2 = arg_1.a;
    var var_3 = true;
    return arg_3.xwy;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f)))), 723f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), -1000f, _wgslsmith_f_op_f32(-arg_0.x)))))));
    global2 = Struct_3(all(!select(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, global2.a, false), vec3<bool>(global2.a, false, true)), !vec3<bool>(false, global2.a, global2.a), !vec3<bool>(false, global2.a, true))), ~4294967295u, global2.d.a, global2.d);
    var var_1 = -28531i << (u_input.b.x % 32u);
    var_1 = 2147483647i;
    let var_2 = vec2<bool>(true || any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(global2.a, true, global2.a, true))), any(!func_3(true, Struct_3(true, 0u, Struct_1(2147483647i), Struct_2(global2.d.b, Struct_1(u_input.c.x), global2.d.b)), global0[_wgslsmith_index_u32(global3.c, 10u)] & vec3<i32>(51612i, global2.c.a, global3.a.x), select(vec4<bool>(global2.a, false, false, true), vec4<bool>(global2.a, true, global2.a, true), vec4<bool>(false, false, false, true)))));
    return Struct_2(global2.c, global2.d.a, Struct_1(global3.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1907f));
    let var_1 = select(vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(global2.a, true), vec2<bool>(global2.a, true))), true, all(vec4<bool>(select(global2.a, global2.a, true), global2.a, true, global2.a)), !(!(!global2.a))), !vec4<bool>(global2.a, true, !(global2.a & global2.a), all(vec4<bool>(global2.a, true, false, false))), !select(!select(vec4<bool>(global2.a, global2.a, false, true), vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(global2.a, global2.a, global2.a, false)), !(!vec4<bool>(true, global2.a, true, global2.a)), global2.a));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)] - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.d.x, 8u)] * global1[_wgslsmith_index_u32(47415u, 8u)])), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -180f))))));
    global0 = array<vec3<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, -163f)), _wgslsmith_f_op_f32(min(1190f, _wgslsmith_f_op_f32(f32(-1f) * -1207f)))));
}

