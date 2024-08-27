struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> bool {
    return true;
}

fn func_2() -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_div_u32(u_input.b, 1u));
    var_0 = firstLeadingBit(u_input.b);
    var var_1 = func_3(min(reverseBits(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, i32(-1i) * -6660i, u_input.d.x, ~u_input.d.x), countOneBits(u_input.d) & -vec4<i32>(1i, u_input.d.x, 3174i, u_input.d.x))));
    var_0 = _wgslsmith_mult_u32(21480u, reverseBits(0u));
    var_0 = _wgslsmith_add_u32(~44011u, ~select(~u_input.a & 4294967295u, firstLeadingBit(firstTrailingBit(64269u)), false));
    return u_input.b & 1u;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = arg_2;
    var var_1 = 4294967295u;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_div_u32(~func_2(), firstLeadingBit(func_2()));
    var var_4 = _wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-193f, 128f, arg_2.a.x, 783f), arg_2.a, arg_1))))));
    return any(vec3<bool>(arg_1, all(select(!vec4<bool>(arg_1, arg_1, arg_1, true), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1), false)), arg_1));
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(641f)))) + 747f));
    let var_1 = Struct_2(Struct_1(vec4<f32>(1723f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f + -147f)), -1000f), 1u), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.a)) << (abs(select(vec2<u32>(19683u, u_input.b), vec2<u32>(u_input.a, u_input.b), vec2<bool>(arg_0, arg_0))) % vec2<u32>(32u))), var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(508f, var_0.x, _wgslsmith_f_op_f32(min(-2356f, -1530f)), _wgslsmith_f_op_f32(-2022f + 753f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 857f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 1000f, var_0.x, -1228f), vec4<f32>(var_0.x, -1211f, var_0.x, 534f))))), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.b, u_input.b, 67931u), vec3<u32>(u_input.a, 4294967295u, u_input.b), vec3<bool>(arg_0, arg_0, false)), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(17698u, 78201u, 112260u)), select(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 5189u), vec3<bool>(true, true, false))))));
    var var_2 = var_1.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_1.a.a)), var_2.b), _wgslsmith_clamp_vec2_u32(~(~(var_1.b << (var_1.b % vec2<u32>(32u)))), firstTrailingBit(var_1.b), ~var_1.b), var_0.x, var_1.a);
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_4(!(!(!func_1(u_input.c, true, Struct_1(vec4<f32>(1214f, -1159f, -581f, -1287f), 44183u), u_input.d.x))));
    var var_2 = Struct_2(func_4(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))))), ~countOneBits(max(vec2<u32>(var_1.b, u_input.b) ^ vec2<u32>(34768u, var_0), ~vec2<u32>(0u, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -757f)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-410f, -450f, -938f, -612f), var_1.a)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(var_1.a)), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), ~reverseBits(1u)));
    var_2 = Struct_2(func_4(any(vec2<bool>(true, func_1(2872i, true, Struct_1(var_2.a.a, u_input.b), u_input.d.x)))), ~(~firstTrailingBit(~vec2<u32>(u_input.a, 1u))), _wgslsmith_f_op_f32(round(1094f)), func_4(any(vec2<bool>(true, true))));
    var var_3 = Struct_2(func_4(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), true))), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -621f))), func_4(min(0i, _wgslsmith_div_i32(-41557i, u_input.c)) >= u_input.c));
    var var_4 = Struct_2(func_4(var_3.a.a.x < _wgslsmith_f_op_f32(-var_3.c)), max(vec2<u32>(~21585u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 29367u), vec2<u32>(var_3.b.x, 0u))) & max(~var_2.b, ~var_2.b), _wgslsmith_div_vec2_u32(var_2.b, ~select(var_3.b, vec2<u32>(var_2.d.b, 1u), vec2<bool>(false, true)))), var_2.d.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_2.a.a)), ~_wgslsmith_mod_u32(u_input.a, var_1.b)));
    var_1 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

