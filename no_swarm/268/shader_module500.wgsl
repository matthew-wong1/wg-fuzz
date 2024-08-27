struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = any(vec2<bool>(true, true)) || !any(vec4<bool>(true, true, true, true));
    let var_1 = max(u_input.d.xy, vec2<u32>(select(_wgslsmith_sub_u32(4294967295u, 117686u) | firstTrailingBit(u_input.d.x), _wgslsmith_add_u32(u_input.d.x ^ u_input.d.x, ~u_input.d.x), false), u_input.d.x));
    let var_2 = Struct_3(Struct_2(vec4<i32>(-60879i & ~u_input.b, -1i, (u_input.b << (17462u % 32u)) | u_input.e, min(_wgslsmith_div_i32(-1i, 71302i), ~(-24342i)))), Struct_2(vec4<i32>(u_input.a.x, u_input.e, u_input.b, -firstTrailingBit(-17756i))), Struct_1(false, ~select(~var_1.x, var_1.x, false), any(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(892f, 407f)))), u_input.d.x));
    var_0 = var_2.c.c;
    let var_3 = Struct_5(~(~u_input.b | _wgslsmith_div_i32(-62348i, firstTrailingBit(-1i))), abs(~(~(~vec4<u32>(21211u, var_1.x, var_2.c.e, var_2.c.e)))), Struct_2(var_2.a.a));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1659f, 1624f) + var_2.c.d.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(~vec4<i32>(u_input.e >> (arg_0.e % 32u), ~u_input.a.x, -23836i, ~(-2147483647i))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(-1536f * arg_0.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) + -1305f)) - arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1187f - 1620f) * -375f)) - arg_0.d.x), arg_0.d.x);
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d.x, -1035f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xy) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-275f, var_1.x)))) + vec2<f32>(_wgslsmith_f_op_f32(var_1.x - -590f), _wgslsmith_div_f32(var_1.x, -686f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(887f, var_2, false)))))));
    let var_4 = firstTrailingBit(_wgslsmith_mod_u32(arg_0.b, ~(max(arg_1, 1u) ^ 4294967295u)));
    return Struct_4(var_0.a);
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = func_2(Struct_1(_wgslsmith_div_i32(reverseBits(-49474i), ~u_input.e) >= -2147483647i, 21185u, any(select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, false), vec3<bool>(true, arg_0, false)), vec3<bool>(arg_0, false, true), select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, true)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(795f, -1568f)))))), ~1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.d.x) >> (~vec4<u32>(u_input.d.x, 21802u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(u_input.d.x ^ u_input.d.x, 1u, u_input.d.x, firstTrailingBit(u_input.d.x))) & u_input.d.x);
    var_0 = Struct_4(var_0.a);
    var var_1 = Struct_1(any(!vec4<bool>(!arg_0, var_0.a.a.x <= u_input.a.x, true, false)), 34292u, arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-873f)), -1133f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1126f, -965f) * vec2<f32>(1000f, -188f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(max(398f, -1000f))))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d.x, ~(~25278u), ~(u_input.d.x >> (u_input.d.x % 32u))), firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, 1u))));
    var var_2 = _wgslsmith_mult_vec4_i32(func_2(Struct_1(true, u_input.d.x, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1489f, -1455f) - vec2<f32>(var_1.d.x, var_1.d.x)), min(_wgslsmith_clamp_u32(4294967295u, 35386u, 0u), _wgslsmith_mult_u32(u_input.d.x, 4294967295u))), var_1.b).a.a, -vec4<i32>(i32(-1i) * -var_0.a.a.x, min(var_0.a.a.x, 7945i << (var_1.b % 32u)), u_input.e, _wgslsmith_mult_i32(var_0.a.a.x & var_0.a.a.x, 3160i)));
    let var_3 = select(select(-22256i, -(~(u_input.c ^ 15100i)), all(vec3<bool>(false, var_1.a, arg_0 | arg_0))), 2147483647i, true);
    return func_2(Struct_1(select((var_1.a || false) | (var_1.d.x == var_1.d.x), var_1.c, all(!vec2<bool>(arg_0, arg_0))), 4294967295u, arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, 260f) * vec2<f32>(420f, -444f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(858f, 1000f) + var_1.d)))), ~(~abs(1u))), abs(_wgslsmith_add_u32(1u, var_1.b ^ (var_1.b << (u_input.d.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_mod_i32(-22476i, -53274i);
    let var_2 = func_1(true || ((-72486i > min(u_input.a.x, u_input.b)) & all(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_5(_wgslsmith_clamp_i32(var_2.a.a.x, _wgslsmith_mult_i32(~u_input.b, firstTrailingBit(-34615i)) ^ -2147483647i, _wgslsmith_div_i32(~(-15284i), 1i ^ var_2.a.a.x)), vec4<u32>(_wgslsmith_mod_u32(var_0, ~abs(u_input.d.x)), _wgslsmith_div_u32(0u, ~_wgslsmith_div_u32(var_0, 21962u)), ~var_0, var_0 ^ firstLeadingBit(~1u)), func_2(Struct_1(true, ~var_0, false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -892f))))), u_input.d.x), ~_wgslsmith_div_u32(~4294967295u, u_input.d.x)).a);
    let var_4 = var_2;
    let var_5 = vec3<i32>(countOneBits(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_3.c.a.wwy, vec3<i32>(72658i, 32305i, 27886i)), 49391i << (var_0 % 32u))), _wgslsmith_dot_vec2_i32(var_3.c.a.zx, ~vec2<i32>(var_2.a.a.x << (var_0 % 32u), i32(-1i) * -58694i)), var_4.a.a.x);
    var var_6 = vec2<i32>(u_input.c << (var_3.b.x % 32u), _wgslsmith_mod_i32(-1i, -2147483647i));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let x = u_input.a;
    s_output = StorageBuffer(21091u, u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_7)) * var_7) + _wgslsmith_f_op_f32(-1287f * var_7))), var_5.zz, vec3<u32>(4294967295u, 8283u, 51885u));
}

