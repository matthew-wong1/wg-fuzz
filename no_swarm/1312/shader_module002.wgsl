struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = Struct_3(arg_0.x, ((_wgslsmith_mult_u32(4294967295u, 0u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u)) % 32u)) != ~(~4294967295u)) || false, _wgslsmith_clamp_vec4_u32(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(8100u, 1u, 1u, 25767u), vec4<u32>(56770u, 63296u, 5047u, 40165u), vec4<u32>(71722u, 4294967295u, 0u, 4294967295u)), vec4<u32>(11835u, 0u, 0u, 6689u)), vec4<u32>(~_wgslsmith_clamp_u32(0u, 0u, 51010u), reverseBits(_wgslsmith_sub_u32(4294967295u, 24421u)), 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(~vec4<i32>(u_input.a, u_input.a, u_input.a >> (1u % 32u), ~(-60202i))), true);
    let var_1 = 9734u;
    var var_2 = var_0.d.x;
    let var_3 = arg_0.x;
    var_2 = ~_wgslsmith_sub_i32(~(-1i), _wgslsmith_sub_i32(0i, u_input.a));
    return var_0.b;
}

fn func_2() -> vec2<bool> {
    let var_0 = ~(~0u);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f * -293f)))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1300f, 305f, -127f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(696f, 413f, 1037f) * vec3<f32>(-1076f, 683f, 973f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(714f, 1136f, 1005f)) * vec3<f32>(-1000f, -848f, 1522f)))), ~vec4<u32>(~(~1u), ~var_0, var_0, 4294967295u), min(countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-18940i, 0i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -20356i, u_input.a), reverseBits(vec4<i32>(27945i, 2147483647i, 0i, u_input.a)))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 27844i, -1345i, -1i)) >> (~vec4<u32>(var_0, var_0, 19107u, 1149u) % vec4<u32>(32u)), vec4<i32>(u_input.a, ~30713i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -21511i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)), _wgslsmith_div_i32(-25773i, u_input.a)))), all(vec4<bool>(true, select(true, true, false) | true, true, true || any(vec2<bool>(false, true)))));
    let var_2 = reverseBits(var_1.d.zz);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-792f + var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1147f), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_div_vec3_f32(vec3<f32>(167f, var_1.a, -1784f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-340f, -2030f, -600f)))))))));
    let var_4 = var_1;
    return !vec2<bool>(var_4.e, false);
}

fn func_1() -> bool {
    var var_0 = select(select(select(vec2<bool>(true, any(vec4<bool>(false, false, false, true))), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), false), vec2<bool>(true, true), func_2()), vec2<bool>(any(vec4<bool>(true, true, true, true)), true & select(true, any(vec2<bool>(true, true)), true)), vec2<bool>(true, true));
    let var_1 = false;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(212f, _wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(524f - -1132f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1564f, _wgslsmith_f_op_f32(1206f + -1755f), any(vec2<bool>(var_0.x, var_0.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f + _wgslsmith_f_op_f32(round(-339f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1211f + 1590f), _wgslsmith_f_op_f32(select(-854f, -171f, true)))), -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1782f - 1438f) + -736f) - _wgslsmith_f_op_f32(-667f - _wgslsmith_f_op_f32(round(1727f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-104f))))))));
    let var_3 = Struct_1(var_2.x, false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 348f), _wgslsmith_f_op_f32(-var_2.x))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1325f, 169f)))) - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)))));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a, _wgslsmith_f_op_f32(abs(var_2.x)))) * -756f))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -38498i;
    var var_1 = !select(vec2<bool>(true, func_1()), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(func_1() || all(vec4<bool>(true, true, false, false)), true));
    var var_2 = ~vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 84226u), ~vec3<u32>(0u, 4294967295u, 31510u)), _wgslsmith_add_u32(0u, ~reverseBits(1u)));
    var_1 = vec2<bool>(false, func_2().x);
    var var_3 = ((abs(vec3<i32>(var_0, -2147483647i, var_0) >> (vec3<u32>(var_2.x, var_2.x, var_2.x) % vec3<u32>(32u))) ^ -vec3<i32>(u_input.a, 20901i, 6103i)) ^ (min(vec3<i32>(u_input.a, u_input.a, -30899i) ^ vec3<i32>(-1i, var_0, var_0), vec3<i32>(u_input.a, var_0, 2147483647i) ^ vec3<i32>(44547i, var_0, 2147483647i)) >> (vec3<u32>(reverseBits(var_2.x), 4639u, var_2.x | 0u) % vec3<u32>(32u)))) | min(vec3<i32>(-37876i, var_0 ^ u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, -2147483647i))) ^ _wgslsmith_div_vec3_i32(select(vec3<i32>(-33563i, u_input.a, -11187i), vec3<i32>(u_input.a, 1i, -1i), var_1.x), countOneBits(vec3<i32>(-2147483647i, var_0, 16873i))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(var_0, 1i, var_0)), vec3<i32>(u_input.a, var_0 >> (var_2.x % 32u), min(var_0, 0i)), -vec3<i32>(var_0, 1i, -4739i)));
    var_2 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(var_2.xy), ~vec2<u32>(var_2.x, var_2.x)), ~abs(11528u), _wgslsmith_mod_u32(86910u, ~(~4294967295u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(424f, -143f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -229f) * vec2<f32>(-465f, -473f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1248f, 1020f))) - vec2<f32>(-675f, -1190f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(746f, -990f) - vec2<f32>(1797f, -1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1533f), vec2<f32>(1000f, -102f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(-385f)), -1255f), vec2<f32>(_wgslsmith_f_op_f32(-849f * 1570f), -597f))), vec2<bool>(false, var_1.x & any(vec3<bool>(true, var_1.x, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 689f, var_4.x, 893f))), firstLeadingBit(select(abs(vec4<i32>(-16853i, var_0, u_input.a, u_input.a)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(5050i, 16046i, var_0, 0i), vec4<i32>(u_input.a, var_3.x, u_input.a, var_0), vec4<i32>(var_0, 0i, 1i, 2147483647i)), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, false, true, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(false, var_1.x, var_1.x, true), false), true))), var_4.x);
}

