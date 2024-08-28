struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = ~(vec4<i32>(abs(-13225i), _wgslsmith_clamp_i32(u_input.b, u_input.b, 15226i << (u_input.a % 32u)), (u_input.c | 1i) >> (reverseBits(u_input.a) % 32u), -9426i) ^ ~(-(vec4<i32>(u_input.c, u_input.c, -42661i, u_input.b) ^ vec4<i32>(1i, -19907i, u_input.c, 40700i))));
    var_0 = vec4<i32>(~(firstTrailingBit(var_0.x) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 26626u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 94239u, 13200u)), _wgslsmith_add_u32(u_input.a, u_input.a)) % 32u)), -2147483647i, ~(~(~(-1i))) << (u_input.a % 32u), firstTrailingBit(33674i));
    var_0 = select(~vec4<i32>(var_0.x, -firstTrailingBit(var_0.x), -1i, -8055i), vec4<i32>(u_input.c, 50654i << (u_input.a % 32u), var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i) | var_0.yw, vec2<i32>(_wgslsmith_sub_i32(u_input.c, var_0.x), 2952i))), -1i == var_0.x);
    var_0 = ~(vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, firstLeadingBit(u_input.b)), ~(~59375i), u_input.b, firstLeadingBit(0i)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_0.x, 7395i, var_0.x), select(vec4<i32>(0i, 0i, var_0.x, u_input.c), vec4<i32>(u_input.b, u_input.c, var_0.x, 1i), false)) | ~(-vec4<i32>(var_0.x, var_0.x, 37183i, -66696i))));
    var_0 = select(vec4<i32>(var_0.x, -abs(-2147483647i), _wgslsmith_add_i32(u_input.b & 1i, _wgslsmith_add_i32(2147483647i, -1i)), ~u_input.c) ^ ~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 9333i, 1i, var_0.x), vec4<i32>(u_input.b, u_input.c, var_0.x, var_0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(max(_wgslsmith_mod_i32(var_0.x, -2147483647i), 6472i), u_input.b, -43120i, u_input.c), -(abs(vec4<i32>(1i, 0i, 1531i, u_input.b)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(26531u, u_input.a, 74915u, 4713u)) % vec4<u32>(32u)))), select(vec4<bool>(false, u_input.a <= _wgslsmith_add_u32(u_input.a, 0u), all(vec3<bool>(true, true, true)), true), vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), !all(vec2<bool>(true, true)), true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false))));
    return 657u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    var var_0 = func_3();
    var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, abs(arg_0.c.x), firstLeadingBit(10919u)), arg_0.c);
    let var_1 = vec2<bool>(!(!any(arg_0.b.yyz)), true);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)) + arg_3.x)));
    var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_mod_i32(min(u_input.c, firstTrailingBit(_wgslsmith_sub_i32(u_input.c, u_input.c)) >> (func_2(Struct_1(vec2<f32>(-1242f, 169f), vec4<bool>(false, false, var_0, var_0), vec3<u32>(u_input.a, 1948u, u_input.a)), Struct_2(vec3<f32>(-1048f, 1000f, -325f), Struct_1(vec2<f32>(502f, 1000f), vec4<bool>(var_0, true, false, var_0), vec3<u32>(45535u, u_input.a, 53246u)), Struct_1(vec2<f32>(274f, 505f), vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, 69589u, 45444u)), Struct_1(vec2<f32>(-287f, 1266f), vec4<bool>(var_0, true, false, var_0), vec3<u32>(u_input.a, u_input.a, 39806u)), 1i), -2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1530f, 380f))) % 32u)), _wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(-80964i, u_input.c >> (~u_input.a % 32u))));
    var_1 = ~(-47024i >> (_wgslsmith_div_u32(~u_input.a, 14293u) % 32u)) & _wgslsmith_dot_vec4_i32(-min(firstLeadingBit(vec4<i32>(u_input.b, 5847i, u_input.c, 46304i)), vec4<i32>(29043i, u_input.b, u_input.c, -1i)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 26207i, u_input.b, 18332i), vec4<i32>(u_input.b, u_input.c, u_input.b, 1i)), vec4<i32>(-21868i, 1i, u_input.b, 1i), -vec4<i32>(u_input.c, -38102i, 1i, u_input.c)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(308f, -267f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, 1072f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-394f, -175f)), vec2<bool>(var_0, false)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1779f, _wgslsmith_f_op_f32(abs(536f))))), select(select(vec4<bool>(true, !var_0, any(vec3<bool>(var_0, true, true)), select(true, false, var_0)), vec4<bool>(!var_0, true, var_0, u_input.c < -56110i), false), vec4<bool>(false, any(vec4<bool>(true, var_0, true, var_0)), any(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, true))), true), vec4<bool>(false, var_0, var_0, true)), select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 55931u, 32561u), vec3<u32>(0u, u_input.a, u_input.a)) & abs(vec3<u32>(41286u, u_input.a, 1u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(_wgslsmith_sub_u32(30820u, u_input.a), min(u_input.a, u_input.a), 1656u)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 6855u, u_input.a), vec3<u32>(16130u, 4294967295u, u_input.a)) & vec3<u32>(44282u, 62162u, 1u)), var_0 && any(select(vec4<bool>(var_0, false, true, true), vec4<bool>(true, var_0, var_0, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~(~u_input.a), func_1());
    var_0 = Struct_5(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(select(var_0.b.c.zy, var_0.b.c.yy, false), vec2<u32>(var_0.a, 0u)), _wgslsmith_add_u32(func_1().c.x, u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.b.a + vec2<f32>(var_0.b.a.x, var_0.b.a.x)))))), !vec4<bool>(true, all(vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, false)), false, true), var_0.b.c & countOneBits(~var_0.b.c)));
    var var_1 = ~abs(~var_0.b.c.x);
    var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(~1u), 39277u), var_0.b.c.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, 204f, var_0.b.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x) * vec3<f32>(var_0.b.a.x, -1263f, 682f))) - vec3<f32>(1f, _wgslsmith_f_op_f32(287f - var_0.b.a.x), var_0.b.a.x)))), func_1(), var_0.b, var_0.b, i32(-1i) * -6671i);
    var_1 = u_input.a;
    var_1 = 13184u & var_0.b.c.x;
    let var_3 = u_input.c << (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.c.c.x, _wgslsmith_f_op_f32(var_2.b.a.x * -1000f), var_2.e, -(~select(-vec2<i32>(-11225i, var_3), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(var_2.e, 1i)), !var_0.b.b.x)));
}

