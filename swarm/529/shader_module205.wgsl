struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(~vec2<u32>(~19641u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(85891u, 48373u), vec2<u32>(1u, 13725u)), vec2<u32>(167342u, 0u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(firstLeadingBit(1i), _wgslsmith_mod_i32(u_input.a.x, 2147483647i)), abs(max(1i, 1i))) >> (~(~(~3446u)) % 32u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -826f);
    let var_1 = abs(~select(vec3<u32>(var_0.a.x, 1u, ~11377u), ~(vec3<u32>(1u, var_0.a.x, 62942u) << (vec3<u32>(4294967295u, var_0.a.x, var_0.a.x) % vec3<u32>(32u))), vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2089f - -639f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(-471f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1587f, -1449f, true))), vec3<f32>(_wgslsmith_f_op_f32(2075f * -357f), _wgslsmith_f_op_f32(715f * 294f), -1029f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(452f, 1000f, -716f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-667f, 313f, -1901f), vec3<f32>(197f, 1365f, 142f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, -718f, 762f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1962f, 1000f, 976f))))))))));
    return !select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), !(!all(vec4<bool>(true, true, false, false))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    let var_0 = !(true || (any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)) | true));
    let var_1 = all(vec3<bool>(false, all(select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, var_0))) | false, all(func_3())));
    let var_2 = arg_0.c;
    var var_3 = vec4<i32>(var_2.b, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(min(u_input.a, u_input.a), u_input.a)), arg_0.c.b), -25189i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.a.zx, u_input.a.yy));
    var var_4 = ~(~firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, var_2.a.x, 8968u, 11366u), vec4<u32>(var_2.a.x, 1u, 0u, arg_1))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(487f, arg_0.b.x)))) * arg_0.b) - vec2<f32>(488f, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.b, arg_0.b))))))));
}

fn func_1() -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_vec2_i32(u_input.a.xz, u_input.a.zx);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f) * _wgslsmith_f_op_f32(2080f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-158f)), _wgslsmith_f_op_f32(2191f - 1000f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(327f, -1021f) + vec2<f32>(1197f, 245f)), vec2<f32>(-1717f, -616f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(463f, 1101f)), _wgslsmith_f_op_f32(abs(-204f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1076f, 1744f) + vec2<f32>(-1120f, 696f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1046f, -1661f), vec2<f32>(-548f, -1558f))) * _wgslsmith_f_op_vec2_f32(func_2(Struct_3(var_0.x, vec2<f32>(1490f, -1990f), Struct_1(vec2<u32>(91306u, 1u), 15326i)), 1401u)))));
    let var_3 = _wgslsmith_mod_vec3_u32(select(abs(min(select(vec3<u32>(1083u, 37074u, 0u), vec3<u32>(76150u, 1u, 43818u), vec3<bool>(false, false, true)), max(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 9775u, 0u)))), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), true), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 56303u, 10457u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 20466u, 17289u, 37712u), vec4<u32>(1063u, 50407u, 13790u, 0u))), select(~149710u, ~59774u, any(vec2<bool>(true, true))), 1u)));
    let var_4 = (vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(var_3, var_3)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.x, var_3.x), var_3.x & 43775u, 41047u), min(~var_3.x, var_3.x), var_3.x | select(var_3.x, 1u, true)) ^ vec4<u32>(~(~60693u), var_3.x, ~(~var_3.x), ~var_3.x)) & _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(abs(var_3.x), 8454u, _wgslsmith_add_u32(1u, 1u), _wgslsmith_sub_u32(0u, var_3.x)), firstTrailingBit(~vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x))), max(vec4<u32>(~var_3.x, ~var_3.x, 13575u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_3.x, 28734u), vec4<u32>(9778u, var_3.x, 90333u, 1u))), vec4<u32>(20561u, _wgslsmith_mod_u32(1u, var_3.x), var_3.x >> (4294967295u % 32u), 1u)));
    return select(select(select(vec3<bool>(true, true, select(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), 68684u > var_3.x)), select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1060f) > var_2.x, all(vec4<bool>(true, true, true, true)), true), !vec3<bool>(true, true, all(vec2<bool>(true, false))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 30866u, 4294967295u), vec3<u32>(var_4.x, 930u, var_3.x)), ~4294967295u) == abs(abs(0u))), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = select(select(!(!vec4<bool>(arg_1, false, false, arg_2.x)), select(vec4<bool>(all(arg_2), arg_2.x, any(arg_2.yy), !arg_1), !(!vec4<bool>(false, arg_2.x, arg_1, false)), arg_1), vec4<bool>(func_3().x, all(arg_2), true, arg_1)), vec4<bool>(!arg_2.x, false, any(select(func_1(), arg_2, select(arg_2, arg_2, vec3<bool>(true, true, arg_2.x)))), false), arg_2.x);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(514f, -159f, -1041f, 716f), vec4<f32>(600f, 1000f, 1531f, -102f), arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, 2921f, -867f, 864f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(506f, 1916f, 272f, -714f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1329f, 1345f, 174f, 1764f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1192f, 819f, -1265f, 1380f)))), !(!vec4<bool>(arg_1, arg_1, false, true)))));
    global0 = -892f;
    var var_2 = vec3<u32>(0u, arg_3.d ^ ~arg_3.d, arg_3.b);
    let var_3 = Struct_1(vec2<u32>(0u, ~4294967295u), abs(-24133i));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-584f, -164f, -398f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(882f, 1407f, 1940f))), vec3<f32>(-107f, 347f, 2084f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(374f, 113f, -243f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -588f), -375f, _wgslsmith_f_op_f32(f32(-1f) * -1111f))));
    let var_1 = Struct_1(func_4(-u_input.a.yy, true, !func_1(), Struct_2(vec2<u32>(32756u, 0u), ~4294967295u, Struct_1(vec2<u32>(10720u, 1u), u_input.a.x), ~4294967295u)) >> (vec2<u32>(_wgslsmith_sub_u32(55523u, 1u), ~1u) % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i >> (0u % 32u), 1i & (u_input.a.x | u_input.a.x), 1i, firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, 1i))), u_input.a));
    let var_2 = Struct_2(~vec2<u32>(~var_1.a.x, 49314u), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, var_1.a.x, var_1.a.x)), ~vec3<u32>(var_1.a.x, 529u, 18257u)), ~(~54406u), _wgslsmith_dot_vec3_u32(vec3<u32>(25954u, 67139u, 27164u), vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x)) ^ _wgslsmith_sub_u32(var_1.a.x, 4294967295u)), var_1, ~4658u);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(-874f))))), _wgslsmith_f_op_f32(ceil(-836f)));
    global0 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_vec2_f32(func_2(Struct_3(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_2.c.b, u_input.a.x, 2147483647i), u_input.a), 1i), vec2<f32>(var_0.x, -932f), Struct_1(vec2<u32>(0u, var_2.b), ~var_1.b)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.a.x, 23479u, var_2.b), abs(vec3<u32>(var_1.a.x, var_2.b, var_2.c.a.x)), vec3<bool>(false, false, true)), _wgslsmith_div_vec3_u32(~vec3<u32>(var_2.a.x, var_1.a.x, var_2.c.a.x), abs(vec3<u32>(var_2.c.a.x, 30830u, var_1.a.x)))))).x);
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f * var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(var_0)), firstTrailingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(5440u, 4294967295u), var_2.a, true), var_2.c.a) ^ 4294967295u), u_input.a);
}

