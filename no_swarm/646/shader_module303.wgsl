struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(12428i, -1i))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-1i, i32(-2147483648)))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(0i, 1i))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(-24723i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), 29150i))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(33286i, 69751i))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), -287i))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 27625i))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<i32>(-9709i, -80533i))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<i32>(-26028i, 0i))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<i32>(37345i, i32(-2147483648)))));

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<i32>(-36723i, 4411i)), vec4<u32>(54767u, 70484u, 4425u, 0u)), Struct_3(Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 1i)), vec4<u32>(4294967295u, 1u, 40462u, 4294967295u)), Struct_3(Struct_1(vec3<bool>(true, false, false), vec2<i32>(-35329i, -30325i)), vec4<u32>(0u, 4294967295u, 4294967295u, 25784u)), Struct_3(Struct_1(vec3<bool>(false, true, true), vec2<i32>(-13869i, 862i)), vec4<u32>(63535u, 633u, 0u, 578u)), Struct_3(Struct_1(vec3<bool>(false, false, true), vec2<i32>(1i, 0i)), vec4<u32>(4294967295u, 36084u, 4294967295u, 6150u)), Struct_3(Struct_1(vec3<bool>(false, false, false), vec2<i32>(1i, 60959i)), vec4<u32>(4294967295u, 50597u, 32167u, 4294967295u)), Struct_3(Struct_1(vec3<bool>(true, false, true), vec2<i32>(2147483647i, 24487i)), vec4<u32>(0u, 13557u, 51283u, 4294967295u)));

var<private> global3: array<vec3<f32>, 12>;

var<private> global4: array<vec2<f32>, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    global4 = array<vec2<f32>, 20>();
    global1 = array<vec2<i32>, 20>();
    let var_0 = 1072f;
    var var_1 = Struct_1(select(vec3<bool>(any(vec4<bool>(true, false, false, true)), true, !(22358u > u_input.b.x)), select(vec3<bool>(true, any(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), any(vec2<bool>(true, false))), ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(1u, abs(6200u))), 20u)]);
    var var_2 = u_input.c;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-101f - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-830f, -462f) + -1001f)) + _wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1361f, -479f, true)) + -710f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1234f) + _wgslsmith_f_op_f32(max(456f, -2119f))))), _wgslsmith_div_f32(-1659f, -1206f));
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(u_input.a), 7u)];
    var var_2 = var_1.a.a.x;
    var var_3 = -1i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-769f - 382f)));
    return global0[_wgslsmith_index_u32(var_1.b.x, 13u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(min(82120u, ~u_input.b.x), 20u)]))) * vec2<f32>(1f, -1063f));
    let var_1 = reverseBits(~firstLeadingBit(~arg_0));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(21537u, 1u), 13u)];
    let var_3 = func_2();
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1, var_1, 0u), vec4<u32>(1u, var_1, 1u, arg_0)) & ~u_input.b, u_input.b & vec4<u32>(0u, arg_0, u_input.b.x, arg_0)), ~1u, true), 3944u), 20u)];
    return Struct_1(!(!(!(!var_3.a.a))), var_2.a.b);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = -((vec2<i32>(-1i) * -vec2<i32>(2777i, arg_0.a.b.x)) >> (countOneBits(vec2<u32>(36434u, 58751u)) % vec2<u32>(32u)));
    var var_1 = Struct_1(arg_0.a.a, arg_0.a.b);
    var var_2 = 480f;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1094f, 1000f, -505f, -1862f), vec4<f32>(-436f, -1256f, 278f, -358f))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(411f)), -1002f, _wgslsmith_f_op_f32(-875f - 1554f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1205f, _wgslsmith_f_op_f32(ceil(-328f)), _wgslsmith_f_op_f32(105f - -649f)))))));
    var var_4 = vec3<bool>(var_1.a.x, func_1(4294967295u).a.x, var_1.a.x);
    return Struct_2(Struct_1(!vec3<bool>(true, !var_4.x, arg_0.a.a.x), _wgslsmith_add_vec2_i32(~abs(global1[_wgslsmith_index_u32(37045u, 20u)]), vec2<i32>(-1i, 4217i))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(1u >> (_wgslsmith_clamp_u32(17864u, firstTrailingBit(1u), ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.b.x)) % 32u)), 13u)];
    var var_1 = 731f;
    let var_2 = abs(vec2<i32>(-30960i, arg_0.a.b.x | (u_input.c | ~var_0.a.b.x)));
    global1 = array<vec2<i32>, 20>();
    let var_3 = ~(-2147483647i);
    return Struct_1(func_1(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b.x, u_input.a), u_input.b.yy), ~u_input.b.yx)).a, global1[_wgslsmith_index_u32(select(~u_input.a, select(~u_input.a, u_input.b.x, !arg_0.a.a.x) >> (~u_input.a % 32u), false), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = u_input.c;
    global2 = array<Struct_3, 7>();
    global0 = array<Struct_2, 13>();
    var var_2 = firstLeadingBit(~(-u_input.c)) & abs(-8056i);
    let var_3 = func_5(func_4(Struct_3(func_1(4294967295u), ~u_input.b ^ vec4<u32>(30464u, u_input.a, 138080u, 85732u))));
    var var_4 = true;
    let var_5 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(-(~var_5.b)), func_4(Struct_3(var_3, vec4<u32>(u_input.b.x, 4294967295u, 1u, 22977u) << (u_input.b % vec4<u32>(32u)))).a.b), 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 34969u), 20u)])) + _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, reverseBits(u_input.a)), reverseBits(u_input.b.wz)), global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 12u)]);
}

