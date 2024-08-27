struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_0.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1052f), false);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) * _wgslsmith_f_op_f32(-arg_0.x)), 638f, true);
    let var_3 = u_input.d.x;
    var var_4 = var_2;
    return !(!(!(!vec3<bool>(true, var_4.c, false))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.d.x;
    global0 = all(select(vec3<bool>(true, (4294967295u << (u_input.d.x % 32u)) < ~23808u, false), select(vec3<bool>(any(vec2<bool>(true, true)), true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), func_2(vec3<f32>(-220f, -487f, 726f))), true));
    let var_1 = u_input.c.x;
    var var_2 = -_wgslsmith_div_vec2_i32(min(vec2<i32>(var_1, u_input.c.x), u_input.a.zz & vec2<i32>(var_1, 2147483647i)) << ((min(vec2<u32>(35234u, 1u), vec2<u32>(0u, u_input.d.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), u_input.d)) % vec2<u32>(32u)), u_input.a.xy);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-419f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(750f)), _wgslsmith_f_op_f32(-121f + 3276f), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1186f))), !all(vec3<bool>(true, true, true)));
    return Struct_1(_wgslsmith_f_op_f32(floor(-122f)), _wgslsmith_f_op_f32(var_3.b + var_3.b), var_2.x > var_2.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~(~4294967295u), u_input.d.x | 1u), vec2<u32>(65670u, 1u));
    let var_1 = ~(_wgslsmith_add_vec3_u32(abs(vec3<u32>(var_0.x, var_0.x, 4294967295u)), max(~vec3<u32>(var_0.x, 56878u, 3637u), vec3<u32>(var_0.x, u_input.d.x, u_input.d.x))) & _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 1u, u_input.d.x), vec3<u32>(~31184u, ~u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, var_0.x))));
    let var_2 = any(func_2(vec3<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(min(1346f, arg_1.b)))).zx);
    return Struct_1(arg_0.a, arg_0.a, arg_1.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<vec2<bool>, 10>();
    var var_0 = func_3(arg_2, arg_2);
    let var_1 = abs(vec4<u32>(~(~u_input.d.x), 1u, u_input.d.x, reverseBits(61322u)) | ~vec4<u32>(~56539u, ~0u, 10406u, 4294967295u));
    let var_2 = _wgslsmith_div_u32(max(10159u, var_1.x), firstTrailingBit(2571u));
    var var_3 = countOneBits(u_input.c.zz);
    return global1[_wgslsmith_index_u32(9496u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(func_4(select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.d.x < u_input.d.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(334f, -724f, -373f, -111f) * vec4<f32>(-1211f, -387f, 1000f, -906f)), vec4<f32>(498f, 1326f, 2264f, 1624f))), func_3(func_1(), func_1())));
    global0 = select(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(23216u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), true), firstLeadingBit(vec3<u32>(4294967295u, 34165u, 55822u))), u_input.d.x, !((u_input.d.x < u_input.d.x) | func_3(Struct_1(237f, -312f, false), Struct_1(1465f, -967f, false)).c)) > countOneBits(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().a + -671f) * 1f), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), u_input.a.zz), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(-492f)), _wgslsmith_div_f32(-330f, 1048f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(889f, 989f))))))));
}

