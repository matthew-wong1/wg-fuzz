struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = 4294967295u;
    let var_1 = ~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(38883u, abs(u_input.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 0u, 918u), vec3<u32>(1u, u_input.c, 78611u)), vec3<u32>(u_input.c, var_0, 25245u) ^ vec3<u32>(u_input.c, u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-390f, 1000f, arg_0.a), vec3<f32>(-245f, 471f, arg_2.a)))))))));
    let var_3 = arg_2;
    let var_4 = Struct_1(-498f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1000f, var_4.a), -1310f, _wgslsmith_f_op_f32(step(var_4.a, arg_0.a)), -398f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(380f, var_3.a, -965f, 1414f) + vec4<f32>(-173f, var_3.a, -282f, var_4.a)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-319f, -1471f, var_4.a, 136f)))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(32779u, u_input.c), ~(~vec2<u32>(u_input.c, u_input.c))), 2142u, firstLeadingBit(u_input.c), _wgslsmith_mult_u32(10970u, u_input.a));
    var var_1 = Struct_1(_wgslsmith_div_f32(-511f, _wgslsmith_f_op_f32(floor(223f))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 340f, var_1.a, -1191f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, var_1.a, 1143f, var_1.a))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_1.a), vec3<i32>(1i, u_input.b.x, u_input.b.x), Struct_1(-1000f)))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(382f)) * _wgslsmith_div_f32(990f, _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -416f)), _wgslsmith_f_op_f32(var_1.a * var_1.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.x));
    let var_4 = select(vec4<bool>(false, false, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)), (i32(-1i) * -u_input.b.x) <= u_input.b.x), select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), true), vec4<bool>(true, var_0.x >= var_0.x, true, true), true), true);
    return Struct_1(-1321f);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = vec2<bool>(arg_0 | true, true);
    let var_2 = vec2<u32>(30865u, _wgslsmith_div_u32(arg_1.x, ~(firstTrailingBit(14345u) << (abs(4077u) % 32u))));
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(ceil(-289f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1067f - var_3.a), var_0.a)), var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * func_2().a) - _wgslsmith_f_op_f32(164f + 1f))));
    return select(vec2<bool>(false, false), var_1, var_1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<bool>) -> vec2<u32> {
    let var_0 = abs(_wgslsmith_mod_vec4_i32(arg_0, arg_0 >> (~(vec4<u32>(30482u, 4294967295u, u_input.a, u_input.c) << (vec4<u32>(31232u, u_input.a, 26138u, arg_1) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = 1u;
    let var_2 = 1u;
    let var_3 = ~min(vec4<u32>(~(~u_input.a), _wgslsmith_sub_u32(6487u, 1u) << (arg_1 % 32u), 25853u, arg_1), vec4<u32>(41840u, 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2, arg_1, u_input.a), vec4<u32>(arg_1, arg_1, 1u, 4294967295u)), u_input.a));
    var_1 = 4294967295u;
    return vec2<u32>(~select(u_input.a >> (~arg_1 % 32u), ~u_input.c, true), firstTrailingBit(~_wgslsmith_mod_u32(var_2, var_3.x ^ 54688u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(vec4<i32>(-1595i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(12601i, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 1i)), countOneBits(abs(8470i)), max(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x & u_input.b.x), -2147483647i), 1u, !func_1(true, ~vec3<u32>(43703u, 1774u, u_input.c)));
    var var_1 = u_input.b.x;
    let var_2 = true;
    let var_3 = Struct_1(865f);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-494f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a))), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.b.x, -1i, u_input.b.x), max(-reverseBits(-vec2<i32>(u_input.b.x, 2147483647i)), select(select(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(true, var_2)), min(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b | vec2<i32>(u_input.b.x, -41581i)), select(vec2<bool>(false, false), vec2<bool>(true, var_2), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + -348f))), 186f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - var_3.a), _wgslsmith_f_op_f32(-var_4.x)));
}

