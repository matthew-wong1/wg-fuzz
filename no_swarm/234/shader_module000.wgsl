struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 3386i, -23249i);

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false)));

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false)));

var<private> global4: array<i32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    let var_0 = 21013u;
    var var_1 = Struct_1(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)) | false);
    let var_2 = firstTrailingBit(-1i);
    global2 = array<Struct_2, 25>();
    global4 = array<i32, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f * 1f));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(-(~_wgslsmith_mult_i32(global0.x, 26665i)) == (firstTrailingBit(global4[_wgslsmith_index_u32(max(104432u, 4294967295u), 12u)]) ^ u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = Struct_1(!(!var_0.a));
    var var_3 = global1[_wgslsmith_index_u32(~1u, 17u)];
    var var_4 = global3[_wgslsmith_index_u32(1u, 8u)];
    return var_4.b;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = abs(abs(~abs(~vec4<i32>(u_input.a.x, 17574i, global4[_wgslsmith_index_u32(55549u, 12u)], -1i))));
    let var_1 = func_1(true);
    global0 = vec3<i32>(abs(u_input.a.x), u_input.a.x, reverseBits(-(-34352i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18388u, 1002u, 36752u), vec4<u32>(1u, 19995u, 4294967295u, 27334u)) % 32u))));
    var var_2 = -(vec4<i32>(-u_input.a.x, 18597i, _wgslsmith_div_i32(global4[_wgslsmith_index_u32(36352u << (0u % 32u), 12u)], var_0.x), var_0.x) << (vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(13232u, 23322u), firstLeadingBit(vec2<u32>(1u, 1u))), ~_wgslsmith_clamp_u32(0u, 1u, 80875u), _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 64207u), 1u)) % vec4<u32>(32u)));
    global0 = min(-var_2.yyy, vec3<i32>(max(global0.x, 55453i), -_wgslsmith_dot_vec2_i32(-u_input.a, reverseBits(var_2.xy)), _wgslsmith_add_i32(9223i, 22288i)));
    return Struct_1(func_1(true).a | true);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = 495f;
    global3 = array<Struct_2, 8>();
    global0 = abs(vec3<i32>(-1i) * -(~(vec3<i32>(-1i, global0.x, 1i) << (vec3<u32>(arg_1.x, 4294967295u, 85717u) % vec3<u32>(32u)))));
    let var_1 = ~arg_1.x;
    let var_2 = global1[_wgslsmith_index_u32(arg_1.x, 17u)];
    return func_3(Struct_1(any(select(select(vec3<bool>(arg_2.a, var_2.d.a, true), vec3<bool>(var_2.b.a, true, false), vec3<bool>(arg_2.a, var_2.b.a, var_2.b.a)), vec3<bool>(false, true, var_2.c.a), !vec3<bool>(false, arg_2.a, arg_2.a)))), true || all(vec2<bool>(!var_2.c.a, true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(~min(~select(32432u, 0u, arg_1.a), max(38052u, abs(min(0u, 15630u)))), 25u)];
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(70883u, 1u), 25u)];
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(2620u), 17u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1959f, -1000f))) + _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f))))) * -851f);
    let var_3 = Struct_1(arg_1.a);
    return Struct_2(func_3(func_3(Struct_1(!var_3.a), !all(vec2<bool>(var_0.c.a, arg_1.a))), select(!func_1(false).a, all(vec3<bool>(false, var_0.a.a, false)), all(select(vec2<bool>(false, var_1.d.a), vec2<bool>(true, var_3.a), vec2<bool>(arg_1.a, var_3.a))))), arg_0, Struct_1(any(!(!vec4<bool>(false, arg_0.a, arg_0.a, true)))), func_4(-781f, min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), Struct_1(!(var_1.c.a && true)), -917f));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = arg_1.x;
    global3 = array<Struct_2, 8>();
    var var_1 = arg_1.x;
    var var_2 = Struct_1(!(!(1i <= u_input.a.x) && select(arg_0.a.a, !arg_0.b.a, -31417i > u_input.a.x)));
    let var_3 = 781f;
    return StorageBuffer(1020f, vec4<f32>(448f, var_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - var_0) + -181f))), -682f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(192f))), ~(~vec3<u32>(16063u, 0u, 83879u)), func_3(func_1(false), true), _wgslsmith_f_op_f32(step(2021f, 1228f))), Struct_1(true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-578f, 225f, 519f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(621f, 841f, -421f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(590f, 1462f, false)), 3073f, -1116f)))));
}

