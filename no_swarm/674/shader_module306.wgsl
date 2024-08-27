struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 21791i), vec2<i32>(0i, u_input.a))), u_input.a) >> (abs(vec2<u32>(~4294967295u, arg_0.b.b)) % vec2<u32>(32u));
    let var_1 = vec2<u32>(26231u << (firstTrailingBit(~(~52091u)) % 32u), reverseBits(arg_0.b.b));
    let var_2 = arg_0;
    var_0 = firstTrailingBit(firstLeadingBit(abs(vec2<i32>(u_input.a, 2147483647i)) & -vec2<i32>(1i, 2147483647i)));
    var_0 = vec2<i32>(~var_0.x, 28450i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1111f, 4294967295u), Struct_1(440f, arg_1.x), Struct_1(605f, 0u))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f * -484f)))), _wgslsmith_add_u32(firstLeadingBit(~(~arg_1.x)), select(arg_1.x, _wgslsmith_mult_u32(arg_1.x, 4294u) << (arg_1.x % 32u), false)));
    let var_1 = Struct_1(-275f, ~(~arg_1.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-897f, 1093f, var_1.a), vec3<f32>(922f, var_0.a, 584f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, var_1.a, -386f), vec3<f32>(-1000f, var_0.a, var_0.a))), vec3<f32>(-1000f, -160f, 793f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1222f, -273f, var_0.a)))))));
    let var_3 = var_1;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-1368f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-2140f, var_3.a, arg_2))))))), max(67045u, ~arg_1.x) | ~(~var_3.b));
    return -14279i;
}

fn func_1() -> Struct_1 {
    var var_0 = -func_2(vec4<i32>(-1i) * -(~vec4<i32>(-11149i, u_input.a, u_input.a, u_input.a)), ~(~(~vec4<u32>(4294967295u, 84005u, 1u, 4294967295u))), true);
    var_0 = ~(~(~1i));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f - 664f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(598f - -1000f)))), 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) * 2014f)), max(1u, 1u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -497f), 0u));
    var var_2 = Struct_1(-1313f, 41912u);
    let var_3 = vec2<bool>(true, true);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), func_1(), Struct_1(864f, 1u));
    var var_1 = vec3<u32>(25650u, ~0u, reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a.b, 1u, 43846u), vec4<u32>(var_0.b.b, 1u, 0u, 1u)) >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_0.c.b, var_0.a.b)), ~vec3<u32>(var_0.c.b, var_0.b.b, var_0.b.b)) % 32u)));
    var_1 = abs(~(abs(~vec3<u32>(var_0.a.b, 1u, var_1.x)) ^ select(~vec3<u32>(4294967295u, 56668u, 1u), vec3<u32>(var_0.c.b, var_0.b.b, 4294967295u), vec3<bool>(false, true, true))));
    var var_2 = var_0;
    var_2 = Struct_2(func_1(), var_0.b, func_1());
    var var_3 = var_1.x;
    let var_4 = func_1();
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1613f * var_5.a), -509f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c.a, -188f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1010f, var_0.b.a)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-699f, var_5.a) - vec2<f32>(var_5.a, -230f)), _wgslsmith_div_vec2_f32(vec2<f32>(-743f, -2295f), vec2<f32>(801f, var_4.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_2.c.a)) * vec2<f32>(-1270f, var_5.a)))), -364f, _wgslsmith_mod_vec2_i32(~(~vec2<i32>(u_input.a, u_input.a) & vec2<i32>(709i, 43623i)), vec2<i32>(-4614i, u_input.a)), abs(var_5.b));
}

