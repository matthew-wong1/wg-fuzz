struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1 = Struct_1(-822f, 4294967295u, vec3<f32>(-446f, -1590f, -1033f));

var<private> global2: u32 = 4294967295u;

var<private> global3: vec3<u32> = vec3<u32>(25952u, 0u, 1u);

var<private> global4: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(963f, ~(global1.b >> (1u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -376f), global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1514f, _wgslsmith_f_op_f32(f32(-1f) * -1225f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a))) - _wgslsmith_f_op_f32(-global1.a))));
    return _wgslsmith_add_u32(~global4.x, var_0.b);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    global0 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global1.a))))), arg_1.x);
    var var_1 = countOneBits(~vec4<u32>(_wgslsmith_div_u32(1u, func_3()), 0u, global4.x, _wgslsmith_sub_u32(countOneBits(global1.b), global1.b)));
    let var_2 = ~(~(~24346u));
    global4 = countOneBits(vec4<u32>(~_wgslsmith_div_u32(var_2, var_2), 7697u, 71257u, reverseBits(0u)));
    return 1049f;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_2, 4>();
    global1 = arg_0;
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, 371f) * vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(func_2(firstLeadingBit(-38983i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 991f, 1728f, 482f), vec4<f32>(global1.c.x, -401f, global1.c.x, -512f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - -345f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_div_f32(-1449f, arg_0.c.x)))));
    let var_1 = select(!(!vec3<bool>(true, true, global4.x >= 38975u)), !select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, false), all(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, false)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !vec3<bool>(true, global1.b >= global4.x, false), vec3<bool>(true, true, true)));
    let var_2 = Struct_2(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x, 12633i, -1i), abs(~vec4<i32>(0i, u_input.d, -1i, u_input.a.x))), u_input.a, all(!var_1.xz), arg_0);
    return Struct_1(arg_1, 15666u, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~u_input.e, firstLeadingBit(vec3<i32>(reverseBits(1i), 1i, abs(-46263i))), false, func_1(Struct_1(global1.c.x, reverseBits(global4.x << (global1.b % 32u)), global1.c), 655f));
    var var_1 = var_0.c;
    var_0 = global0[_wgslsmith_index_u32(abs(8981u), 4u)];
    var var_2 = Struct_1(-244f, 37677u, global1.c);
    let var_3 = 1094f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(~4294967295u, ~4294967295u, ~4294967295u, _wgslsmith_mult_u32(global3.x, global3.x)), ~vec4<u32>(global1.b, _wgslsmith_dot_vec3_u32(global4.xyy, vec3<u32>(global3.x, var_2.b, 45953u)), global1.b, abs(var_2.b))), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(949f, var_2.c.x, var_3, var_0.d.a))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3, global1.c.x, 630f, var_0.d.a))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a + -805f) - _wgslsmith_div_f32(var_0.d.a, var_3)), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1298f))))));
}

