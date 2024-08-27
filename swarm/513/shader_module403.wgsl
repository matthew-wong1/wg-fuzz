struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = ~u_input.a == 0u;
    var var_0 = Struct_1(_wgslsmith_mult_i32(abs(abs(-11980i)), 37755i), abs(-abs(_wgslsmith_clamp_i32(2147483647i, -16566i, 0i))), select(u_input.a, 1u, abs(~1u) < _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a))));
    var var_1 = Struct_2(Struct_1(-2147483647i, ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b, 34330i, var_0.a)), vec3<i32>(58260i, var_0.a, var_0.a)), select(var_0.c & 61240u, var_0.c, true) | var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-128f * -1000f)))), Struct_1(_wgslsmith_clamp_i32(-5798i, reverseBits(_wgslsmith_sub_i32(var_0.b, var_0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 0i), min(vec2<i32>(0i, 4879i), vec2<i32>(var_0.a, 0i)))), var_0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10075u, 18088u, 4294967295u, 1u) >> (vec4<u32>(4294967295u, var_0.c, var_0.c, var_0.c) % vec4<u32>(32u)), max(vec4<u32>(var_0.c, var_0.c, var_0.c, u_input.a), vec4<u32>(var_0.c, 0u, 1u, 1u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 64449u), vec4<u32>(var_0.c, 4294967295u, u_input.a, 31608u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(25667u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 85239u, var_0.c, 0u)))), vec4<i32>(-var_0.b, -_wgslsmith_div_i32(abs(var_0.a), 4945i >> (var_0.c % 32u)), firstTrailingBit(_wgslsmith_sub_i32(var_0.a, -2147483647i)), firstTrailingBit(-29869i)));
    var_0 = var_1.a;
    var_1 = Struct_2(Struct_1(var_1.c.b, 0i, u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.b, 1357f)), var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), true)))), var_1.a, var_1.d);
    return any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)));
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = !vec4<bool>(select(all(vec4<bool>(false, arg_0.x, arg_0.x, false)), true, func_3()), arg_0.x, select(~u_input.a <= ~0u, true, true), !select(true, any(arg_0), arg_0.x));
    global0 = true;
    let var_1 = u_input.a;
    global0 = all(vec4<bool>(false, true, var_0.x, !any(select(arg_0.wx, vec2<bool>(false, true), arg_0.x))));
    let var_2 = Struct_2(Struct_1(firstLeadingBit(~0i), firstLeadingBit(0i), _wgslsmith_add_u32(var_1, 0u) << (_wgslsmith_clamp_u32(select(var_1, 1u, var_0.x), ~u_input.a, ~u_input.a) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f * -390f) * _wgslsmith_div_f32(-157f, -972f))))), Struct_1(max(1i >> (var_1 % 32u), -4482i) | 0i, _wgslsmith_mod_i32(abs(i32(-1i) * -1i), ~abs(0i)), ~var_1), -(~firstLeadingBit(vec4<i32>(1i, 14786i, 20716i, -78101i))));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global0 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), func_2(vec4<bool>(true, true, true, true))));
    let var_0 = _wgslsmith_div_u32(u_input.a, firstTrailingBit(arg_0.c)) << (_wgslsmith_clamp_u32(u_input.a, abs(0u), _wgslsmith_clamp_u32(max(~4294967295u, u_input.a), 4294967295u, min(~18187u, u_input.a))) % 32u);
    global0 = all(func_2(vec4<bool>(true, true, false, true)).zz);
    global0 = select(true, all(vec2<bool>(any(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, false, true, true)))), select(any(vec4<bool>(true, false, false, true)), true, true)) | false;
    let var_1 = arg_0;
    return (-select(vec3<i32>(6916i, -2147483647i, 76279i) << (vec3<u32>(var_1.c, 18369u, 26253u) % vec3<u32>(32u)), min(vec3<i32>(var_1.b, var_1.a, 8095i), vec3<i32>(2147483647i, var_1.a, 2147483647i)), vec3<bool>(true, true, true)) >> (~(~vec3<u32>(var_0, 46127u, 1u)) % vec3<u32>(32u))) | (_wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, var_1.a, var_1.a), vec3<i32>(-9442i, -1i, arg_0.b)), -32288i), ~(vec3<i32>(var_1.b, -1i, -8546i) << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(select(var_0, 16267u, false), var_1.c, ~38594u), vec3<u32>(~var_1.c, ~u_input.a, 1u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = -(vec3<i32>(-1i) * -firstTrailingBit(func_1(Struct_1(2147483647i, 27511i, u_input.a))));
    let var_1 = select(vec2<bool>(all(vec4<bool>(false, true, false, select(false, false, true))), u_input.a > abs(_wgslsmith_add_u32(u_input.a, 56728u))), !vec2<bool>(any(func_2(vec4<bool>(true, false, true, false)).ww), func_3() | true), var_0.x <= -1913i);
    var_0 = vec3<i32>(var_0.x, _wgslsmith_div_i32(firstTrailingBit(abs(reverseBits(var_0.x))), ~(var_0.x & _wgslsmith_sub_i32(var_0.x, var_0.x))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, var_0.x) | vec3<i32>(var_0.x, var_0.x, 1712i), ~vec3<i32>(0i, 0i, 30645i), vec3<bool>(true, true, true)), -vec3<i32>(9265i, var_0.x, var_0.x)), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-27937i, -1i)), var_0.zy)));
    let var_2 = vec3<u32>(98996u | (_wgslsmith_div_u32(min(1u, 43205u), 67991u) << (firstTrailingBit(1u) % 32u)), u_input.a, ~1u);
    var var_3 = Struct_2(Struct_1(abs(~func_1(Struct_1(var_0.x, var_0.x, var_2.x)).x), func_1(Struct_1(~(-48816i), var_0.x, min(u_input.a, u_input.a))).x, reverseBits(u_input.a)), 1363f, Struct_1(-6018i << (_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_add_u32(42065u, var_2.x), firstLeadingBit(var_2.x)) % 32u), abs(2147483647i), 1u), ~_wgslsmith_div_vec4_i32(vec4<i32>(11699i, func_1(Struct_1(43076i, 22637i, var_2.x)).x, var_0.x, -var_0.x), -vec4<i32>(33092i, 1i, var_0.x, var_0.x)));
    var_0 = var_3.d.zwx;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.c, ~vec4<u32>(_wgslsmith_mult_u32(var_3.a.c, 26650u), ~1u, ~4294967295u, var_3.a.c & 1u) & vec4<u32>(1u, max(65031u, var_3.a.c) ^ u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 50851u), var_2.zx), 18404u), u_input.a >> (var_3.c.c % 32u)), (i32(-1i) * -9480i) >> (u_input.a % 32u));
}

