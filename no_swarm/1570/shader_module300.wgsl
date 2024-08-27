struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32 = 510f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<f32> {
    let var_0 = 12297u;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x * -369f)))), -783f)));
    let var_3 = any(vec2<bool>(false, true));
    let var_4 = Struct_1(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.x, 2075f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), -677f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-838f, var_2.x, 1000f, -1609f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, global0.x, var_2.x, 411f)) - vec4<f32>(-1026f, -881f, global0.x, -1000f)), vec4<bool>(true, var_3, true, any(vec4<bool>(false, var_3, true, var_3))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-794f, 538f, global0.x, -681f) + vec4<f32>(global0.x, 1539f, -861f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -589f, global0.x, var_2.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-659f, 483f, var_2.x, var_2.x), vec4<f32>(global0.x, global0.x, -1499f, 1814f))))), true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.b + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(1549f, var_4.b.x, var_2.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x)) - var_2.x), _wgslsmith_f_op_f32(-global0.x), var_2.x));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(firstTrailingBit(u_input.c), -u_input.c) << (u_input.d.x % 32u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(global0.wzw)), global0.wzw)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(612f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), global0.x, global0.x), all(vec2<bool>(true, all(vec4<bool>(true, true, true, false))))), vec3<u32>(u_input.b.x, select(~(u_input.d.x ^ u_input.a.x), ~firstLeadingBit(1u), true && (global0.x >= global0.x)), ~_wgslsmith_mod_u32(u_input.a.x, 1u)), _wgslsmith_f_op_vec3_f32(func_3()), Struct_1(select(0i, u_input.c, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-654f, -1137f, -416f) - vec3<f32>(global0.x, -694f, 1254f)) + _wgslsmith_f_op_vec3_f32(exp2(global0.ywz)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2278f, -1033f, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 955f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, 212f))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))));
    let var_1 = -firstLeadingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.c) << (vec2<u32>(var_0.b.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(-3533i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.a, -6398i), vec2<i32>(u_input.c, u_input.c))));
    global1 = _wgslsmith_f_op_f32(-650f + global0.x);
    global1 = 1f;
    var var_2 = var_1.x;
    return Struct_3(vec4<f32>(-1424f, var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1413f), -1000f), global0.x, 69377u <= (u_input.d.x & ~_wgslsmith_mult_u32(1u, u_input.b.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1895f * _wgslsmith_f_op_f32(step(-1632f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -334f)))))), _wgslsmith_div_f32(1281f, _wgslsmith_div_f32(140f, _wgslsmith_f_op_f32(abs(global0.x)))));
    let var_2 = 23133i;
    global0 = vec4<f32>(1f, _wgslsmith_f_op_f32(min(global0.x, arg_1.a.c.x)), global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.d.c.x)))))));
    var var_3 = select(!select(select(select(vec2<bool>(false, false), vec2<bool>(var_0.c, false), var_0.c), !vec2<bool>(arg_1.d.d, var_0.c), vec2<bool>(true, true)), !vec2<bool>(arg_1.d.d, false), all(!vec2<bool>(var_0.c, true))), select(vec2<bool>(!var_0.c, arg_1.a.d && true), select(select(select(vec2<bool>(var_0.c, false), vec2<bool>(true, true), arg_1.a.d), vec2<bool>(false, var_0.c), true), select(!vec2<bool>(arg_1.a.d, arg_1.a.d), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, var_0.c)), select(!(!vec2<bool>(arg_1.a.d, true)), vec2<bool>(all(vec3<bool>(var_0.c, false, true)), false != arg_1.a.d), !var_0.c)), var_0.c);
    return Struct_1(reverseBits(44093i), global0.zyy, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(arg_1.a.c)), arg_1.a.c, var_0.c)))), false);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = arg_2.d.a | ~(~firstLeadingBit(-arg_2.d.a));
    global0 = _wgslsmith_f_op_vec4_f32(arg_2.a.c * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-465f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x) + _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(-arg_2.d.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1904f, -338f, -767f, arg_2.d.b.x))))));
    global1 = -486f;
    return -select(reverseBits(~vec4<i32>(-1i, u_input.c, u_input.c, arg_2.d.a) ^ vec4<i32>(-1i, 1i, arg_2.d.a, -3057i)), _wgslsmith_div_vec4_i32(vec4<i32>(-arg_2.d.a, u_input.c, min(-2253i, arg_2.a.a), _wgslsmith_mod_i32(arg_2.d.a, 11890i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, 2810i, u_input.c, u_input.c), ~vec4<i32>(-1i, arg_2.a.a, 1i, 2147483647i))), all(select(vec4<bool>(arg_1, true, arg_1, true), !vec4<bool>(false, arg_1, true, arg_2.d.d), vec4<bool>(true, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -2147483647i, u_input.c), vec4<i32>(-1i, 45251i, u_input.c, u_input.c)) | ~1i, select(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.c), 19169i), abs(-1i), true), firstTrailingBit(select(u_input.c, u_input.c, false) & ~u_input.c), abs(30511i));
    let var_1 = Struct_1(~_wgslsmith_sub_i32(abs(u_input.c), ~var_0.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1143f))))))), vec4<f32>(-183f, _wgslsmith_f_op_f32(round(214f)), -349f, global0.x), all(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))));
    global1 = -783f;
    global1 = _wgslsmith_f_op_f32(-var_1.c.x);
    var var_2 = _wgslsmith_mod_vec4_i32(select(func_4(global0.yw, select(!var_1.d, var_1.d, 1u == u_input.b.x), Struct_2(var_1, countOneBits(u_input.a), vec3<f32>(global0.x, -384f, 1297f), func_1(u_input.b, Struct_2(var_1, vec3<u32>(4294967295u, u_input.d.x, u_input.b.x), vec3<f32>(1915f, -2777f, var_1.c.x), Struct_1(8946i, vec3<f32>(162f, var_1.c.x, var_1.b.x), vec4<f32>(global0.x, -563f, 524f, global0.x), var_1.d)), u_input.a.x, vec3<u32>(u_input.b.x, u_input.b.x, u_input.d.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, func_1(vec2<u32>(1u, u_input.a.x), Struct_2(var_1, u_input.a, var_1.c.xzx, var_1), u_input.d.x, vec3<u32>(4294967295u, 4294967295u, u_input.a.x)).a, -var_0.x, -1i), _wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a, -29649i, var_0.x, var_1.a), ~vec4<i32>(var_1.a, u_input.c, -60849i, u_input.c))), select(!(!vec4<bool>(var_1.d, false, true, var_1.d)), vec4<bool>(var_1.d, var_1.d, var_1.d, true), !vec4<bool>(var_1.d, true, var_1.d, false))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_clamp_i32(var_1.a, ~u_input.c, var_1.a), var_0.x >> (1421u % 32u)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-253i, 50447i)), firstTrailingBit(~vec2<i32>(-1i, 1i))), any(select(select(vec4<bool>(true, var_1.d, var_1.d, var_1.d), vec4<bool>(var_1.d, false, false, false), vec4<bool>(false, var_1.d, true, false)), select(vec4<bool>(var_1.d, var_1.d, var_1.d, false), vec4<bool>(var_1.d, false, false, false), var_1.d), vec4<bool>(var_1.d, var_1.d, true, true)))), abs(46021u), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2().a.xyz)));
}

