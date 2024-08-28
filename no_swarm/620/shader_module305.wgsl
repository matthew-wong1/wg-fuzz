struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20905i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> u32 {
    global0 = u_input.a;
    global0 = -2147483647i;
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global0 = u_input.a;
    let var_0 = select(select(select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x != arg_1.x, false), !vec2<bool>(true, arg_1.x)), !vec2<bool>(arg_1.x, arg_1.x), true), !vec2<bool>(arg_1.x, arg_1.x && (u_input.a > -22701i)), all(vec2<bool>(!(arg_1.x & arg_1.x), !(71521u <= arg_0))));
    let var_1 = arg_3;
    global0 = u_input.a;
    let var_2 = vec3<u32>((~(~1u) & ~firstTrailingBit(43613u)) & _wgslsmith_mult_u32(arg_0, ~(arg_0 | arg_2)), 0u, abs(arg_2));
    return select(!select(!select(arg_1.wzx, arg_1.ywx, arg_1.xyz), !vec3<bool>(arg_1.x, var_0.x, true), vec3<bool>(true, arg_1.x, false)), arg_1.ywz, false);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = max(u_input.a, 1i);
    var var_0 = vec3<bool>(all(func_4(func_3(countOneBits(vec2<u32>(4294967295u, 1u)), vec2<bool>(true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), all(vec3<bool>(true, true, false))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 20817u, 1u, 10043u)), countOneBits(0u)), Struct_1(_wgslsmith_f_op_f32(170f - 946f), -1830f, _wgslsmith_f_op_f32(-261f + -1059f)))), true, true);
    let var_1 = _wgslsmith_sub_vec3_i32(select(firstTrailingBit(~(~vec3<i32>(1i, -2147483647i, 0i))), vec3<i32>(u_input.a, -15439i, ~1i), !(!(!var_0.x))), (~min(vec3<i32>(-2147483647i, arg_0.x, -3946i), vec3<i32>(7083i, u_input.a, arg_0.x)) << (~countOneBits(vec3<u32>(42573u, 28421u, 0u)) % vec3<u32>(32u))) << (vec3<u32>(0u, min(_wgslsmith_mult_u32(37393u, 1u), abs(77119u)), _wgslsmith_sub_u32(1u, 0u)) % vec3<u32>(32u)));
    var var_2 = var_0.x && !any(vec3<bool>(any(vec3<bool>(true, false, true)), var_0.x | true, any(vec4<bool>(var_0.x, true, false, false))));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1356f)))))), 316f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(641f, 1000f))))), _wgslsmith_f_op_f32(select(768f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(160f - 107f), _wgslsmith_f_op_f32(f32(-1f) * -290f)), false))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_sub_u32(func_3(vec2<u32>(1u, 4294967295u), vec2<bool>(true, true)), 55705u), ~(~func_3(vec2<u32>(3978u, 4294967295u), vec2<bool>(false, false)))));
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(989f)) - -607f)), arg_0.c);
    global0 = -9780i << (1u % 32u);
    let var_2 = ~min(reverseBits(-78123i) >> ((_wgslsmith_sub_u32(var_0.x, var_0.x) & ~16281u) % 32u), u_input.a);
    var var_3 = func_2(vec2<i32>(var_2, 1i));
    return var_3.b;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = false;
    var_0 = !all(vec3<bool>(true, true, func_4(45988u, vec4<bool>(false, false, true, false), arg_3.x, arg_0).x));
    let var_1 = _wgslsmith_mod_i32(arg_2.x, u_input.a);
    var_0 = select(false, select(~_wgslsmith_clamp_i32(17222i, u_input.a, 0i) < 0i, true, all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, false))))), !(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)) | func_4(countOneBits(arg_3.x), vec4<bool>(true, true, true, true), 1u, Struct_1(arg_0.c, arg_0.b, 1951f)).x));
    global0 = u_input.a;
    return ~1u;
}

fn func_1() -> vec2<i32> {
    global0 = _wgslsmith_clamp_i32(13630i, (u_input.a & min(_wgslsmith_mult_i32(-20504i, 1175i), u_input.a)) ^ _wgslsmith_sub_i32(~(-5478i), u_input.a), _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(u_input.a, -22721i)), u_input.a) >> (_wgslsmith_div_u32(~1u, 1u) % 32u));
    let var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(func_5(func_2(-vec2<i32>(u_input.a, 38131i)))), _wgslsmith_f_op_f32(round(-1105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(332f))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 42197u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 0u), _wgslsmith_add_vec3_u32(select(vec3<u32>(59691u, 47947u, 1u), vec3<u32>(4294967295u, 4294967295u, 38860u), vec3<bool>(true, false, false)), vec3<u32>(1u, 1u, 1u)))), firstLeadingBit(~abs(~vec2<i32>(-74621i, -5992i))), (_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(93282u, 60934u)), firstTrailingBit(vec2<u32>(37225u, 4294967295u))) & vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(38545u, 42108u), vec2<u32>(33831u, 4294967295u)), ~0u)) ^ min(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(48986u, 0u), vec2<u32>(17860u, 31197u))));
    return ~vec2<i32>(abs(_wgslsmith_sub_i32(u_input.a, u_input.a) << (~27996u % 32u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((_wgslsmith_mod_vec2_i32(func_1(), vec2<i32>(8644i, 3847i)) & vec2<i32>(-16982i, u_input.a)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(2147483647i), ~(-1i)), vec2<i32>(-2147483647i, u_input.a)));
    global0 = ~var_0.x;
    var var_1 = func_2(vec2<i32>(~(var_0.x ^ var_0.x), -66444i) & vec2<i32>(var_0.x, 1i));
    let var_2 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, (true != (1i > u_input.a)) && func_4(~3192u, vec4<bool>(true, true, false, true), reverseBits(4294967295u), Struct_1(-720f, -503f, -712f)).x, func_4(_wgslsmith_add_u32(~4294967295u, 1u), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), 15069u, Struct_1(_wgslsmith_f_op_f32(step(-373f, var_1.a)), -1380f, _wgslsmith_f_op_f32(-654f + 1000f))).x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-274f))))), 367f, _wgslsmith_f_op_f32(min(-242f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f), -1609f)))));
    var var_3 = func_2(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-var_0.x, _wgslsmith_sub_i32(var_0.x, u_input.a)), firstTrailingBit(vec2<i32>(32596i, u_input.a))), ~var_0, var_2.x));
    var var_4 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, 4294967295u))), ~countOneBits(~vec2<u32>(12875u, 50310u))), ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), ~vec2<u32>(0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, min(-20058i, 2147483647i), var_0.x << (var_4.x % 32u)), ~4596i, select(_wgslsmith_add_i32(-22609i, 38980i), var_0.x, all(var_2.zx))) ^ reverseBits(reverseBits(-vec3<i32>(1i, u_input.a, var_0.x))));
}

