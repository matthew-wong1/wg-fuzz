struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-33435i, vec3<f32>(1369f, -770f, 1000f)), Struct_1(-1i, vec3<f32>(254f, -1000f, -386f)), Struct_1(-6475i, vec3<f32>(-242f, -2096f, 486f)), Struct_1(2147483647i, vec3<f32>(-935f, 116f, 550f)), Struct_1(52630i, vec3<f32>(-227f, -2089f, 902f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> i32 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = global0[_wgslsmith_index_u32(arg_3.x, 5u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_3, arg_2.xx), 5u)];
    return var_0.a;
}

fn func_2() -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(-9736i, max(i32(-1i) * -45073i, abs(func_3(vec3<bool>(false, false, true), Struct_1(-12993i, vec3<f32>(696f, -1045f, -161f)), vec3<u32>(u_input.a, 1u, u_input.a), vec2<u32>(u_input.a, u_input.a))))), _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(0i, 1i, 6923i)) << (vec3<u32>(abs(u_input.a), 32482u & u_input.a, firstTrailingBit(u_input.a)) % vec3<u32>(32u)), vec3<i32>(1i, _wgslsmith_mod_i32(1i, func_3(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(u_input.a, 5u)], vec3<u32>(4294967295u, u_input.a, u_input.a), vec2<u32>(0u, 4294967295u))), 14254i)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 5u)];
    let var_2 = global0[_wgslsmith_index_u32(~(~((1u >> (~u_input.a % 32u)) & abs(_wgslsmith_sub_u32(53313u, 1u)))), 5u)];
    var var_3 = firstLeadingBit(firstLeadingBit(~vec3<i32>(~var_0.x, 19716i << (u_input.a % 32u), firstLeadingBit(var_2.a))));
    let var_4 = vec4<i32>(~(~18407i), i32(-1i) * -max(1i, 1i), -1i, firstLeadingBit(((var_2.a | -19117i) & countOneBits(var_3.x)) >> (reverseBits(1u) % 32u)));
    return 1u;
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = 72170i;
    let var_1 = vec3<u32>(4294967295u, ~u_input.a << ((~(u_input.a << (u_input.a % 32u)) ^ _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u), _wgslsmith_sub_u32(~func_2(), (~u_input.a & ~u_input.a) | ~1u));
    var var_2 = firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, 75277u));
    let var_3 = global0[_wgslsmith_index_u32(~0u, 5u)];
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2756f, var_3.b.x, 889f, var_3.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, -1408f) - vec4<f32>(527f, var_3.b.x, -1000f, var_3.b.x))), any(vec2<bool>(true, false)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-440f + -1759f), var_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -691f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(trunc(var_3.b.x))), _wgslsmith_f_op_f32(round(387f)), -345f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60719u, u_input.a, 4294967295u, 4294967295u | u_input.a), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(70476u, 18792u, u_input.a, u_input.a), vec4<u32>(u_input.a, 84543u, 21430u, 27132u)) << ((~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) & ~vec4<u32>(0u, 6044u, u_input.a, u_input.a)) % vec4<u32>(32u)))), 5u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1731f, 395f, var_0.b.x, -1341f)) + _wgslsmith_f_op_vec4_f32(func_1(var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -316f, var_0.b.x, -1140f), vec4<f32>(127f, -1000f, var_0.b.x, 1292f), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -1430f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-762f, -1000f, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1203f, -357f, var_0.b.x, var_0.b.x) - vec4<f32>(-282f, 368f, var_0.b.x, var_0.b.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, var_0.b.x, var_0.b.x, var_0.b.x) + vec4<f32>(var_0.b.x, var_0.b.x, -474f, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -186f, var_0.b.x, var_0.b.x))))));
    let var_2 = ~1i;
    var var_3 = Struct_1(var_2, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1422f * _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-2068f + -1452f)), -1000f, -647f));
    let var_4 = Struct_1(-14812i & var_2, var_3.b);
    var var_5 = Struct_1(-_wgslsmith_add_i32(i32(-1i) * -47474i, countOneBits(~0i)), vec3<f32>(1299f, -864f, var_0.b.x));
    var var_6 = Struct_1(var_0.a, var_0.b);
    var_6 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(~109563u, ~(~u_input.a) & _wgslsmith_mult_u32(~0u, _wgslsmith_mod_u32(u_input.a, u_input.a)), 4294967295u)), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(4270i, 1i, -1i, -52514i) << (~vec4<u32>(1u, 0u, 87055u, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_5.a, 1i, -2147483647i, 4380i), vec4<i32>(var_0.a, 2147483647i, var_2, var_4.a), vec4<i32>(var_5.a, -26378i, -1i, 2147483647i))) | vec4<i32>(~var_3.a | -1i, -50426i, var_4.a, reverseBits(_wgslsmith_div_i32(728i, -2147483647i))));
}

