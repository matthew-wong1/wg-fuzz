struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 5> = array<u32, 5>(4294967295u, 49177u, 12555u, 1u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = -1653f;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(279f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1916f), _wgslsmith_div_u32(~arg_0.c.b, ~firstTrailingBit(arg_0.c.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-552f, arg_0.b.a))), reverseBits(~(~u_input.c.xww)), vec4<bool>(false, any(arg_0.c.e), arg_0.b.e.x, true)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1171f))))), global0.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c * 867f)) - global0.c.c), arg_0.c.d, vec4<bool>(true && all(vec4<bool>(arg_0.b.e.x, global0.c.e.x, false, arg_0.c.e.x)), !all(arg_0.b.e), true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, arg_0.c.e.x, global0.c.e.x), arg_0.b.e.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(206f, _wgslsmith_f_op_f32(-global0.b.a))), var_1.c.d.x, global0.b.c, _wgslsmith_clamp_vec3_u32(global0.c.d, var_1.b.d << (min(abs(vec3<u32>(9283u, var_1.c.b, 0u)), arg_0.b.d) % vec3<u32>(32u)), u_input.c.wzz), !select(arg_0.b.e, select(select(arg_0.b.e, global0.c.e, vec4<bool>(global0.c.e.x, true, global0.b.e.x, false)), select(arg_0.b.e, vec4<bool>(true, true, var_1.c.e.x, arg_0.b.e.x), var_1.b.e), vec4<bool>(var_1.b.e.x, true, global0.c.e.x, arg_0.b.e.x)), global0.b.e.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1699f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.b.c, 579f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f - arg_0.a.x)));
    global0 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(469f, var_1.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1384f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(-1000f, arg_0.a), Struct_1(global0.a.x, 199u, arg_1.a, vec3<u32>(arg_3.c.d.x, global1[_wgslsmith_index_u32(arg_3.c.d.x, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), global0.b.e), arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -1040f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_3.a.x, arg_1.a))))));
    var var_1 = arg_0.e.x;
    global0 = Struct_2(vec2<f32>(-934f, -201f), Struct_1(arg_0.a, ~(~(~global0.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f))), ~_wgslsmith_clamp_vec3_u32(~arg_3.c.d, ~vec3<u32>(global0.b.d.x, u_input.a.x, 56328u), countOneBits(vec3<u32>(global0.b.b, 17457u, global0.c.b))), vec4<bool>(!arg_3.c.e.x, all(select(global0.c.e, vec4<bool>(arg_0.e.x, arg_0.e.x, global0.b.e.x, arg_3.b.e.x), arg_0.e)), true, all(vec3<bool>(arg_0.e.x, arg_3.b.e.x, arg_0.e.x)))), arg_3.b);
    var var_2 = arg_2;
    var var_3 = vec4<bool>(arg_0.e.x, true, false, arg_2 > ~42915i);
    return false;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = !global0.b.e.x == any(!select(select(global0.b.e, vec4<bool>(global0.c.e.x, global0.c.e.x, true, false), false), select(vec4<bool>(true, global0.c.e.x, global0.b.e.x, true), global0.c.e, global0.b.e.x), !vec4<bool>(true, true, global0.b.e.x, global0.b.e.x)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -597f))));
    let var_2 = 1i;
    let var_3 = 1i;
    var var_4 = abs(firstLeadingBit(vec3<u32>(~global1[_wgslsmith_index_u32(~14220u, 5u)], global0.c.b ^ ~61092u, select(_wgslsmith_sub_u32(4294967295u, arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, arg_1), vec3<u32>(global1[_wgslsmith_index_u32(global0.c.b, 5u)], global0.c.b, 3610u)), var_0))));
    return Struct_1(arg_0, ~_wgslsmith_dot_vec3_u32(~select(u_input.d.yyz, vec3<u32>(u_input.b.x, arg_1, 25633u), global0.b.e.yyw), u_input.a.xxy), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(26134u, 0u, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), global0.b.d), _wgslsmith_add_vec3_u32(global0.c.d, ~vec3<u32>(73486u, 42487u, arg_1))), ~_wgslsmith_clamp_vec3_u32(~u_input.d.xyz, ~vec3<u32>(global1[_wgslsmith_index_u32(1u, 5u)], 91945u, 1u), vec3<u32>(24968u, 49398u, global0.c.d.x))), select(select(select(!vec4<bool>(false, global0.b.e.x, true, var_0), vec4<bool>(var_0, global0.b.e.x, true, true), !vec4<bool>(global0.c.e.x, var_0, var_0, global0.c.e.x)), global0.c.e, !(!global0.c.e)), select(!(!global0.b.e), global0.b.e, select(select(vec4<bool>(true, var_0, false, global0.c.e.x), global0.c.e, var_0), select(vec4<bool>(global0.c.e.x, true, false, var_0), vec4<bool>(false, true, global0.c.e.x, var_0), global0.c.e), global1[_wgslsmith_index_u32(119796u, 5u)] < var_4.x)), vec4<bool>(!all(global0.b.e), global0.b.e.x & func_2(global0.c, Struct_3(arg_2, global1[_wgslsmith_index_u32(2672u, 5u)]), var_2, Struct_2(global0.a, global0.b, global0.c)), !func_2(Struct_1(-233f, 67510u, 199f, u_input.a.xyy, vec4<bool>(global0.c.e.x, var_0, global0.b.e.x, var_0)), Struct_3(457f, 4294967295u), 42178i, Struct_2(global0.a, global0.b, Struct_1(arg_0, global1[_wgslsmith_index_u32(1u, 5u)], global0.a.x, u_input.d.wyy, vec4<bool>(global0.b.e.x, false, var_0, global0.c.e.x)))), true && all(vec2<bool>(true, global0.b.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var_0 = true;
    global1 = array<u32, 5>();
    var var_1 = func_1(_wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a * -376f)))), _wgslsmith_sub_u32(1u, 7974u | ~u_input.b.x), global0.a.x);
    var var_2 = global0.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i);
}

