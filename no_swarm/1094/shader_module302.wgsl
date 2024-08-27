struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    global0 = any(vec3<bool>(all(vec3<bool>(false, true, !arg_0.x)), !all(select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, false, true), false)), any(!(!vec3<bool>(arg_0.x, true, true)))));
    let var_0 = arg_0.x;
    return _wgslsmith_add_vec4_i32(select(~min(vec4<i32>(0i, -25188i, -2147483647i, 31504i), vec4<i32>(-1i, -2147483647i, -3959i, 20591i)), firstTrailingBit(-vec4<i32>(0i, -7785i, 20898i, -19280i)), !(!arg_0.x)) >> (~(~min(vec4<u32>(17659u, 2140u, 7623u, 59896u), vec4<u32>(0u, u_input.b, 0u, 1u))) % vec4<u32>(32u)), -vec4<i32>(reverseBits(-1i), firstLeadingBit(firstTrailingBit(-17291i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-40391i, -21147i, -2147483647i, 0i), vec4<i32>(-29900i, 2032i, -1i, 12301i)), _wgslsmith_div_i32(2147483647i, 2147483647i) << (~u_input.b % 32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(-_wgslsmith_sub_vec4_i32(reverseBits(abs(vec4<i32>(1i, 0i, -1i, -35269i))), -func_3(vec2<bool>(false, arg_1))), Struct_1(-1071f, max(vec3<i32>(firstTrailingBit(-67423i), func_3(vec2<bool>(false, arg_2)).x, -2147483647i), _wgslsmith_add_vec3_i32(-vec3<i32>(-16756i, 29021i, 1i), select(vec3<i32>(0i, 2147483647i, 39400i), vec3<i32>(1i, -1i, 26046i), vec3<bool>(arg_1, false, false))))), countOneBits(vec4<i32>(i32(-1i) * -1i, reverseBits(-1i), 0i, ~0i) << (~(~vec4<u32>(u_input.a, 71481u, u_input.b, 9991u)) % vec4<u32>(32u))));
    var_0 = Struct_2(~(-var_0.c), var_0.b, -abs(_wgslsmith_mod_vec4_i32(var_0.a, var_0.c)));
    global0 = false;
    var_0 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.c, ~var_0.a), vec4<i32>(var_0.a.x << ((1u << (u_input.b % 32u)) % 32u), -var_0.c.x | -1i, var_0.a.x, select(var_0.a.x, reverseBits(var_0.c.x), all(vec3<bool>(arg_2, arg_2, true))))), var_0.b, func_3(select(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_2, arg_1), vec2<bool>(false, false)), vec2<bool>(true, arg_2), var_0.c.x <= reverseBits(0i))));
    global0 = all(select(!select(vec2<bool>(false, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_1, false), true), arg_1 | false), !vec2<bool>(true, arg_1 && true), !select(vec2<bool>(true, true), !vec2<bool>(arg_2, true), false)));
    return Struct_2(max(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.c.x, 2147483647i), var_0.b.b.x), var_0.b.b.x | _wgslsmith_add_i32(2147483647i, var_0.c.x), var_0.b.b.x, ~(i32(-1i) * -29035i)), _wgslsmith_mod_vec4_i32(countOneBits(var_0.a), _wgslsmith_mult_vec4_i32(var_0.c >> (vec4<u32>(u_input.b, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), -var_0.c))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * _wgslsmith_f_op_f32(select(1000f, 1135f, arg_1))), var_0.b.b | var_0.c.zyy), vec4<i32>(var_0.c.x, 1i, ~var_0.a.x & _wgslsmith_dot_vec4_i32(var_0.c | var_0.a, _wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(var_0.a.x, -11286i, -26533i, var_0.a.x), var_0.a)), 2147483647i));
}

fn func_1() -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(664f, 375f) * _wgslsmith_f_op_f32(select(-1001f, 2662f, false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-722f, -1050f) + _wgslsmith_div_f32(1292f, 1612f)))), true, all(vec2<bool>(!any(vec4<bool>(false, true, true, false)), true)));
    let var_1 = var_0.b.a;
    var var_2 = max(-1i, var_0.c.x);
    var_2 = var_0.a.x;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(485f, -400f, _wgslsmith_f_op_f32(max(-271f, -943f)), _wgslsmith_f_op_f32(step(var_0.b.a, var_1))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.a, var_0.b.a, var_1, 1997f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, var_0.b.a, 1015f), vec4<f32>(-1000f, 1223f, -2796f, 493f), false)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-var_0.b.a)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b.a, 714f))))))), ~u_input.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-281f - -1353f)) * vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), var_0.b.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.a, -255f), vec2<f32>(var_0.b.a, var_1)))))));
    return 9883u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_u32(~15366u, abs(func_1())));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1538f * -174f), 1000f), _wgslsmith_f_op_f32(max(-1421f, -581f))))), select(!any(vec2<bool>(false, false)) | true, true, all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)))), all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, false))), all(vec2<bool>(false, false)))));
    let var_2 = firstLeadingBit(func_1() ^ ~u_input.a) < _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30354u, u_input.b, u_input.a, u_input.b), ~vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)) | ~1u, u_input.a);
    global0 = all(select(!(!vec4<bool>(var_2, var_2, true, false)), select(vec4<bool>(false, true, var_2, false), !vec4<bool>(false, var_2, true, true), !var_2), select(select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, false, false, var_2), vec4<bool>(true, true, var_2, false)), select(vec4<bool>(true, var_2, false, var_2), vec4<bool>(var_2, false, var_2, false), vec4<bool>(var_2, var_2, true, true)), true))) || var_2;
    let var_3 = var_1.b;
    var_0 = min(u_input.a, 1u);
    var var_4 = func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.a, _wgslsmith_f_op_f32(-var_1.b.a)))), u_input.b < ~(~u_input.a & u_input.a), -2169i < func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1562f, var_3.a), vec2<f32>(var_3.a, -1000f)))), select(var_2, true, any(vec4<bool>(false, var_2, var_2, true))), true).c.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a), 712f, var_3.a) + vec3<f32>(-1041f, var_4.b.a, var_1.b.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.b.a, 219f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-106f + -994f), _wgslsmith_f_op_f32(f32(-1f) * -436f), select(var_2, var_2, var_2))), 1005f), var_2)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.b.a, var_1.b.a)), -805f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.b.a)) + -335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.a)))));
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(221f, _wgslsmith_f_op_f32(-135f - _wgslsmith_f_op_f32(exp2(var_1.b.a)))) * -618f), var_1.a.x, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_3.b, var_3.b), -select(var_3.b, firstTrailingBit(var_4.c.zxx), select(vec3<bool>(false, true, var_2), vec3<bool>(false, false, false), var_2)), vec3<i32>(select(select(0i, var_1.a.x, var_2), i32(-1i) * -9234i, var_4.b.a >= -1000f), ~(-49858i), ~_wgslsmith_dot_vec3_i32(var_1.a.yyy, var_3.b))), var_3.a, ~firstLeadingBit(var_3.b.x));
}

