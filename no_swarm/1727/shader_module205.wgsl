struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(2147483647i, -1i), vec3<u32>(82282u, 4294967295u, 1u), vec3<f32>(-752f, -2498f, 1089f), vec2<f32>(871f, 735f), vec2<u32>(15838u, 1u)), Struct_1(vec2<i32>(-5075i, -1i), vec3<u32>(32463u, 1740u, 0u), vec3<f32>(-1335f, 303f, 228f), vec2<f32>(711f, 185f), vec2<u32>(47920u, 4294967295u)), Struct_1(vec2<i32>(-50911i, -34700i), vec3<u32>(3823u, 0u, 0u), vec3<f32>(369f, -193f, 1481f), vec2<f32>(-1458f, 207f), vec2<u32>(1u, 0u)), Struct_1(vec2<i32>(-65041i, 0i), vec3<u32>(19534u, 4294967295u, 23932u), vec3<f32>(-454f, 171f, 511f), vec2<f32>(100f, 1518f), vec2<u32>(24241u, 31416u)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<u32>(45751u, 1u, 0u), vec3<f32>(316f, -1048f, 980f), vec2<f32>(1500f, -1275f), vec2<u32>(32081u, 129777u)));

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global4: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<f32> {
    global4 = Struct_3(Struct_2(countOneBits(global4.b.a)), Struct_2(arg_1.x & (i32(-1i) * -u_input.c.x)));
    var var_0 = global4.a;
    let var_1 = global4.b;
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = global0[_wgslsmith_index_u32((9311u | _wgslsmith_dot_vec4_u32(u_input.e, ~(vec4<u32>(arg_0, 63153u, 1u, 4294967295u) << (u_input.e % vec4<u32>(32u))))) | ((arg_2.b.x << (~77050u % 32u)) | 1u), 26u)];
    return vec4<f32>(-2504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_3.d.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(trunc(-1784f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_2.d.x))))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.xyz, vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1677f))), -886f), false)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.yww, vec3<f32>(2484f, arg_1.x, -1125f), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1652f, arg_1.x) * arg_1.wzy)))) * arg_1.yww));
    global0 = array<Struct_1, 26>();
    global2 = all(vec4<bool>(!any(vec3<bool>(true, false, false)), true || all(vec4<bool>(false, true, false, true)), true, true));
    global3 = array<vec3<bool>, 20>();
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    return arg_2.b;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(-global4.a.a), func_3(u_input.e.x, _wgslsmith_f_op_vec4_f32(func_2(u_input.a.x, abs(vec3<i32>(global4.a.a, global4.a.a, u_input.c.x)), global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(u_input.e.x)), 26u)])), Struct_3(global4.a, Struct_2(1i))));
    var var_1 = reverseBits(-23475i);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-208f, 2169f)) + _wgslsmith_f_op_f32(abs(-239f)))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1423f) * _wgslsmith_f_op_f32(floor(-728f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1704f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2508f, -180f)))));
    var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(284f)));
    return global4.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global4.b.a;
    global0 = array<Struct_1, 26>();
    let var_1 = func_1(true);
    global3 = array<vec3<bool>, 20>();
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(u_input.e.wy, u_input.e.xw, u_input.e.wy)), u_input.e.zw), u_input.a), ~firstLeadingBit(~(~vec2<u32>(u_input.e.x, u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(~abs(9660u))));
}

