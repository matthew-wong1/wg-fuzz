struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1u, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = ~abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.a, 1u) >> (vec2<u32>(0u, 59533u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(21890u, 4294967295u), vec2<u32>(7466u, global0.a))), 1u));
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1344f))));
    let var_3 = Struct_2(1u, Struct_1(~global0.a, any(vec2<bool>(select(false, true, global0.d.b), global0.b.b || false))), global1[_wgslsmith_index_u32(var_0.x, 1u)], Struct_1(abs(15233u), false));
    return global0.b.b != true;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~firstLeadingBit(reverseBits(vec4<u32>(47676u, 0u, 1u, arg_0))), vec4<u32>(arg_0, _wgslsmith_add_u32(~arg_2.d.a, 0u), ~(~6908u), _wgslsmith_div_u32(global0.c.a, arg_2.a))), func_3());
    global0 = Struct_2(arg_0, arg_2.d, global0.b, global0.d);
    var_0 = arg_2.b;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(abs(-882f)))));
    return _wgslsmith_f_op_f32(max(178f, 697f));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_1, 1>();
    let var_0 = Struct_1(~_wgslsmith_div_u32(~reverseBits(arg_2.a), global0.d.a), !(!all(vec2<bool>(true, true))));
    global1 = array<Struct_1, 1>();
    var var_1 = global0.d;
    var_1 = Struct_1(var_0.a, ~1u >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, var_0.a, arg_0.x), ~vec4<u32>(1u, arg_2.a, arg_0.x, global0.d.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, 388f)), _wgslsmith_f_op_f32(func_2(arg_0.x, vec3<bool>(false, true, var_1.b), Struct_2(arg_2.a, Struct_1(arg_0.x, true), Struct_1(var_0.a, global0.c.b), Struct_1(arg_0.x, var_1.b)))))) + 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(func_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, 1u, 24528u), vec3<u32>(1u, global0.b.a, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -160f), Struct_1(~global0.a, global0.d.b))) <= -540f, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(217f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(f32(-1f) * -1372f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(65777u, 4294967295u), vec2<u32>(global0.b.a, 89538u) >> (vec2<u32>(22798u, 35063u) % vec2<u32>(32u))), select(vec3<bool>(global0.c.b, false, var_0.x), vec3<bool>(true, var_0.x, global0.c.b), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(global0.d.b, global0.d.b, var_0.x), vec3<bool>(var_0.x, false, true))), Struct_2(max(107010u, 4294967295u), global1[_wgslsmith_index_u32(106774u, 1u)], Struct_1(global0.a, true), global1[_wgslsmith_index_u32(26914u, 1u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-662f, 970f, 419f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, 2455f, -1458f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1316f, 720f, -649f), vec3<f32>(445f, -1432f, 1223f))))));
    var_0 = select(select(select(!vec2<bool>(true, var_0.x), vec2<bool>(global0.d.b, !var_0.x), !select(vec2<bool>(true, false), vec2<bool>(global0.b.b, true), var_0.x)), vec2<bool>(any(vec2<bool>(var_0.x, true)) & all(vec3<bool>(global0.d.b, var_0.x, var_0.x)), any(!vec4<bool>(false, false, global0.c.b, false))), true), select(vec2<bool>(17612u != global0.a, any(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(global0.b.b, global0.c.b)))), vec2<bool>(all(vec4<bool>(true, true, false, global0.d.b)) && (1u != global0.a), true), global0.b.b), vec2<bool>(false, true));
    var var_2 = Struct_2(abs(_wgslsmith_mult_u32(~0u, ~global0.c.a) ^ 0u), Struct_1(~_wgslsmith_clamp_u32(~global0.c.a, ~global0.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.d.a, 16708u), vec3<u32>(global0.a, 67080u, 15290u))), true), global1[_wgslsmith_index_u32(global0.a, 1u)], global1[_wgslsmith_index_u32(global0.a, 1u)]);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(552f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<u32>(var_2.d.a, 4294967295u, global0.a), -833f, Struct_1(4294967295u, global0.d.b))))))));
    var_0 = select(select(vec2<bool>(global0.d.b, 1i >= u_input.d), !select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, true), select(vec2<bool>(true, false), vec2<bool>(var_2.b.b, var_2.d.b), false)), !(!vec2<bool>(var_0.x, true))), vec2<bool>(var_0.x, any(select(select(vec3<bool>(global0.b.b, false, var_0.x), vec3<bool>(var_2.c.b, var_2.b.b, false), vec3<bool>(var_2.d.b, false, var_2.b.b)), vec3<bool>(var_2.d.b, false, global0.b.b), vec3<bool>(true, var_0.x, var_0.x)))), vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_3)))) >= var_1.x, any(vec4<bool>(true, true, !var_2.d.b, global0.d.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-746f, var_1.x)))), u_input.a.x, var_2.d.a & 0u, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), var_1.x)), var_1.x, _wgslsmith_f_op_f32(round(var_3)) == _wgslsmith_f_op_f32(func_1(vec3<u32>(66306u, global0.b.a, global0.d.a), var_1.x, Struct_1(21984u, true))))), _wgslsmith_f_op_f32(func_1(firstLeadingBit(max(vec3<u32>(var_2.a, global0.b.a, 45317u), vec3<u32>(48428u, var_2.a, 37659u))), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(f32(-1f) * -1394f)), var_2.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + -2340f) - 1900f))), var_3));
}

