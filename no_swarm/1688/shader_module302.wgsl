struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(1u, 35685u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 69734u), vec2<u32>(4294967295u, 46439u), vec2<u32>(49682u, 4294967295u), vec2<u32>(9992u, 4294967295u), vec2<u32>(0u, 31974u));

var<private> global2: array<Struct_3, 18>;

var<private> global3: array<bool, 3>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 18u)];
    global1 = array<vec2<u32>, 7>();
    var var_1 = 2651i;
    var var_2 = 1u;
    var var_3 = var_0.b;
    return global2[_wgslsmith_index_u32(7175u, 18u)];
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-231f))) == arg_0));
    var var_1 = -(~u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1.x)))) * arg_1.x));
    var var_3 = func_2();
    var var_4 = func_2();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_1.x), 938f);
}

fn func_3() -> f32 {
    let var_0 = ~vec3<u32>(max(firstTrailingBit(~22741u), u_input.b), u_input.b, ~u_input.b);
    global2 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_f_op_f32(820f + 183f);
    var var_2 = global2[_wgslsmith_index_u32(countOneBits(0u), 18u)];
    var_2 = Struct_3(!all(select(select(vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(global3[_wgslsmith_index_u32(var_2.b.e.x, 3u)], global3[_wgslsmith_index_u32(11598u, 3u)], true), vec3<bool>(var_2.a, true, var_2.b.a.x)), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 3u)], var_2.b.a.x, false), true)), var_2.b, i32(-1i) * -1i);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 797f))), vec4<f32>(706f, -804f, _wgslsmith_f_op_f32(f32(-1f) * -265f), 809f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_div_f32(-1005f, _wgslsmith_div_f32(-2457f, 337f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global2 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1988f)) + _wgslsmith_f_op_f32(f32(-1f) * -582f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-488f * -422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1627f, -1000f))) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1785f * -3781f), vec4<f32>(1219f, -582f, 1204f, 327f), false))), _wgslsmith_f_op_f32(1324f * 2710f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(f32(-1f) * -722f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1173f, 388f)) + -132f)))));
    let var_2 = func_2().b;
    var var_3 = ~countOneBits(abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(17900i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, var_2.b), vec3<i32>(u_input.a.x, u_input.a.x, 33966i))));
    let var_4 = ~func_2().b.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -396f) - _wgslsmith_f_op_f32(max(var_1.x, -667f))))), min(var_2.b, -_wgslsmith_mod_i32(func_2().c, -2147483647i)));
}

