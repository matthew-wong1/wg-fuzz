struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(282f, -2637f, -889f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec4<bool>(!all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)), true, any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(any(vec2<bool>(false, true)), true, true))), all(vec4<bool>(any(vec3<bool>(true, true, true)), true, select(true, true, false) & all(vec4<bool>(true, true, true, false)), !any(vec2<bool>(true, false)))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 666f) - _wgslsmith_div_f32(695f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 1593f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1634f, 537f, global0.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 330f, 511f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-984f, global0.x, -292f), vec3<f32>(global0.x, 372f, global0.x)))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 729f, 780f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, global0.x, global0.x))))), vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -393f), 1762f)), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) + _wgslsmith_f_op_f32(global0.x + 912f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)))))));
    return select(var_0, !vec4<bool>(var_0.x, false, any(!var_0.xy), false), select(select(vec4<bool>(global0.x == global0.x, false, all(vec2<bool>(var_0.x, false)), any(var_0.zw)), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0, var_0), var_0), vec4<bool>(var_0.x, any(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, var_0.x, true, var_0.x), var_0)), !all(vec4<bool>(false, false, var_0.x, true)), var_0.x), select(~4294967295u, ~arg_0.c.x, var_0.x) >= _wgslsmith_mod_u32(1u, u_input.c.x ^ 0u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_div_i32(-34237i, -2147483647i), u_input.c.x, Struct_1(_wgslsmith_sub_i32(-31639i, 0i), max(_wgslsmith_mod_vec4_i32(arg_0.b, ~arg_0.b), arg_0.b), ~(~u_input.a.xy >> (u_input.a.wy % vec2<u32>(32u)))), arg_0, vec3<bool>(_wgslsmith_mod_i32(2147483647i, 6418i) == -(arg_0.a ^ -2147483647i), !all(func_3(Struct_1(arg_0.a, vec4<i32>(48309i, 36875i, u_input.b, -280i), vec2<u32>(u_input.c.x, 4294967295u)))), select(true, all(vec4<bool>(true, true, true, true)), false)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 1f))), 1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))));
    let var_1 = min(104479u | u_input.c.x, 0u);
    let var_2 = Struct_1(-u_input.d, vec4<i32>(u_input.d, ~u_input.d, u_input.b, ~(~var_0.d.a)) >> (vec4<u32>(var_0.d.c.x, _wgslsmith_sub_u32(u_input.c.x ^ u_input.a.x, ~44403u), var_0.d.c.x, ~abs(var_1)) % vec4<u32>(32u)), _wgslsmith_mod_vec2_u32(~var_0.c.c >> (vec2<u32>(1u, 74441u >> (u_input.c.x % 32u)) % vec2<u32>(32u)), arg_0.c));
    let var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0.c.b, vec4<i32>(-arg_0.b.x, reverseBits(var_2.b.x), select(-35235i, arg_0.b.x, var_0.e.x), _wgslsmith_mult_i32(2147483647i, u_input.b))), _wgslsmith_div_i32(-2147483647i, -2147483647i | -var_0.a)), max(var_0.c.b.x & ~arg_0.a, u_input.b) << (85970u % 32u));
    return -_wgslsmith_mod_i32(arg_0.a, var_0.c.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    let var_0 = 33056u;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec3_i32(-(vec3<i32>(var_1.c.b.x & 9914i, arg_0.x, func_2(Struct_1(1i, vec4<i32>(var_1.d.b.x, 1i, -1i, arg_1.c.b.x), u_input.c))) << (~u_input.a.xwz % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(1i, 2147483647i, 24101i)), vec3<i32>(u_input.b, ~u_input.d, -arg_1.a)) | vec3<i32>(-var_1.a, firstLeadingBit(-var_1.c.a), 2147483647i));
    let var_3 = arg_1;
    let var_4 = var_3.c;
    return reverseBits(0i);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(1i, ~vec4<i32>(-1i, arg_0, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 2412i), vec3<i32>(u_input.d, u_input.d, arg_1.x))), vec2<u32>(u_input.a.x, ((1u ^ u_input.c.x) | ~1u) & ~(~34548u)));
    let var_1 = -2147483647i;
    var var_2 = true;
    let var_3 = max(~arg_2.xx | u_input.c, firstLeadingBit(min(vec2<u32>(4294967295u, 30641u), vec2<u32>(12299u, 0u) ^ var_0.c)) & _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 1u), var_0.c), firstLeadingBit(arg_2.yy), vec2<u32>(1484u, u_input.c.x)), ~(u_input.a.wz ^ u_input.c)));
    var var_4 = Struct_1(-max(-arg_0 >> (_wgslsmith_mod_u32(var_0.c.x, 73733u) % 32u), -(var_1 >> (4294967295u % 32u))), arg_1, _wgslsmith_sub_vec2_u32(~(~abs(vec2<u32>(4294967295u, u_input.a.x))), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, var_0.c.x), arg_2.zz) >> (~firstTrailingBit(var_3) % vec2<u32>(32u))));
    return Struct_2(var_0.a, _wgslsmith_dot_vec4_u32(max(~(~u_input.a), vec4<u32>(select(arg_2.x, var_3.x, true), arg_2.x, _wgslsmith_add_u32(var_4.c.x, u_input.c.x), 98044u)), reverseBits(~vec4<u32>(1052u, 78475u, var_3.x, 0u))), Struct_1(func_1(~(vec4<i32>(u_input.d, u_input.d, var_1, arg_1.x) >> (vec4<u32>(var_4.c.x, var_3.x, 2390u, 4294967295u) % vec4<u32>(32u))), Struct_2(~var_1, var_4.c.x, Struct_1(var_4.a, arg_1, var_0.c), Struct_1(-24457i, var_4.b, vec2<u32>(arg_2.x, 27090u)), vec3<bool>(true, true, true)), var_3.x != (arg_2.x << (4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 1203f, -1462f))))), vec4<i32>(-27514i >> (1u % 32u), arg_1.x, -10872i, 13304i), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 0u), 52024u, arg_2.x), 40263u)), Struct_1(-func_2(Struct_1(-43929i, arg_1, var_3)) ^ 2147483647i, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.b, 0i), arg_0, 1i, ~arg_0), vec4<i32>(-var_0.a, var_1, -arg_1.x, arg_0)), firstTrailingBit(_wgslsmith_mult_vec2_u32(var_0.c | var_3, var_0.c))), select(vec3<bool>(!all(vec2<bool>(true, true)), !any(vec3<bool>(false, true, false)), select(true, all(vec3<bool>(false, true, true)), true)), !vec3<bool>(true, 382f != global0.x, true), u_input.c.x != var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mult_i32(-(i32(-1i) * -15397i), -30424i), ~vec4<i32>(func_1(vec4<i32>(2147483647i, -2147483647i, u_input.d, u_input.d) >> (u_input.a % vec4<u32>(32u)), Struct_2(-2147483647i, 1u, Struct_1(u_input.d, vec4<i32>(1i, 1i, u_input.b, u_input.d), vec2<u32>(27451u, u_input.c.x)), Struct_1(0i, vec4<i32>(-33999i, 13920i, u_input.b, -2147483647i), u_input.c), vec3<bool>(true, false, true)), u_input.b != 28506i, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 829f, global0.x) + vec3<f32>(global0.x, 330f, 979f))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.d, u_input.b), vec3<i32>(u_input.d, u_input.d, u_input.b)), u_input.b, select(u_input.d & u_input.b, -u_input.d, false)), vec4<u32>(u_input.c.x, ~(~firstTrailingBit(4294967295u)), ~4294967295u, 50130u));
    var_0 = func_4(_wgslsmith_div_i32(u_input.b, 2147483647i), abs(var_0.d.b), ~reverseBits(vec4<u32>(4294967295u ^ var_0.c.c.x, 1u, ~var_0.b, _wgslsmith_mult_u32(65045u, 17503u))));
    let var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-245f, global0.x, -717f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1352f, global0.x, global0.x)))))))));
    let var_2 = Struct_1(2147483647i, vec4<i32>(_wgslsmith_add_i32(var_0.d.b.x, u_input.d), u_input.b, -func_2(Struct_1(var_0.c.a, vec4<i32>(var_0.d.b.x, 1i, u_input.d, 63578i), vec2<u32>(4294967295u, 24141u))), abs(-22372i)), u_input.c);
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -496f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1186f, 734f, global0.x) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(837f, -286f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, 1119f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, 267f, 1825f) - vec3<f32>(global0.x, global0.x, global0.x)), select(vec3<bool>(var_0.e.x, true, true), vec3<bool>(var_0.e.x, true, var_0.e.x), var_0.e)))), var_0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.zzw, 1791f, 1i);
}

