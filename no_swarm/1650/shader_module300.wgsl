struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(~(~(-1i)));
    let var_1 = _wgslsmith_div_u32(~arg_1, 28241u);
    let var_2 = vec3<u32>(~74176u, u_input.b, countOneBits(var_1));
    var var_3 = arg_2;
    var var_4 = countOneBits(countOneBits(-8597i | arg_0));
    return all(vec2<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(arg_0.a);
    return _wgslsmith_mod_vec2_i32(max(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_0.a, -55823i))), -vec2<i32>(var_0.a, 2489i)), vec2<i32>(firstLeadingBit(-arg_0.a), reverseBits(~arg_0.a))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(~arg_2, _wgslsmith_mult_u32(4294967295u, max(arg_2, 4294967295u))), ~vec2<u32>(1290u, ~arg_2)) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1551f, _wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) + _wgslsmith_f_op_f32(1163f - arg_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) + arg_2.x))))));
    var var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-51355i, 46931i)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(0i, 0i))), vec2<i32>(arg_0.a, (1i | arg_3.a) ^ 66402i));
    var_1 = ~min(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-6249i, arg_0.a), vec2<i32>(arg_3.a, var_1.x)), arg_0.a & 9846i), -max(vec2<i32>(arg_0.a, -1i), vec2<i32>(-2147483647i, -2147483647i))), vec2<i32>(26221i, -39888i));
    var_1 = _wgslsmith_mod_vec2_i32(func_4(Struct_1(abs(arg_3.a)), vec4<bool>(~(-22138i) == arg_0.a, !(var_0.x > -1156f), !func_3(arg_0.a, 19712u, Struct_1(-53318i), arg_0), !arg_1), ~(~1u)), vec2<i32>(-7842i, -(~(1i ^ arg_0.a))));
    var_1 = select(vec2<i32>(~(-arg_3.a), 1i) << (countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, u_input.b))) % vec2<u32>(32u)), -firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.a, arg_0.a), vec2<i32>(-2147483647i, 11721i)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 44544u), vec2<u32>(28445u, u_input.b), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), vec2<bool>(false, !arg_1));
    return abs(_wgslsmith_div_vec2_u32(max(vec2<u32>(1u, u_input.b), ~vec2<u32>(1u, u_input.a)) << (vec2<u32>(~14002u, 25324u) % vec2<u32>(32u)), firstLeadingBit(~vec2<u32>(u_input.b, u_input.b))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(38636u, u_input.a), func_2(Struct_1(-13281i), true, vec2<f32>(1333f, 1047f), Struct_1(-1i))), abs(vec2<u32>(u_input.a, 45828u))), max(vec2<u32>(abs(u_input.a), countOneBits(4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(31941u, 113399u))));
    let var_1 = Struct_1(-_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -1i, -50186i), vec4<i32>(-38375i, -1i, 1i, -17614i)), -16556i));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = -_wgslsmith_add_i32(countOneBits(i32(-1i) * -32973i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_1().a, firstLeadingBit(var_0.a)), -var_0.a));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1057f, _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(0u, u_input.b, u_input.b)) << (vec3<u32>(u_input.a, u_input.b, ~u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(27262u, u_input.a, 1u)), vec3<u32>(1u, ~u_input.b, max(4294967295u, 17047u)), ~select(vec3<u32>(1u, 36808u, u_input.b), vec3<u32>(u_input.a, 4294967295u, u_input.a), false))), 75037u);
}

