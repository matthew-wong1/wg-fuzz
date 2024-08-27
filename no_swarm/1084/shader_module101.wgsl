struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = !vec4<bool>(true, true, all(vec3<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, true, true)), true)), arg_2.x >= arg_2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1259f, -1045f, arg_0.x), vec3<f32>(-403f, -159f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(arg_1.www + arg_1.zxw)))))));
    var var_2 = select(var_0.zyx, select(var_0.yyy, select(select(vec3<bool>(true, true, true), var_0.zzx, vec3<bool>(var_0.x, false, false)), select(vec3<bool>(var_0.x, true, true), !var_0.zww, select(vec3<bool>(true, true, var_0.x), var_0.xxw, var_0.x)), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true)), !select(select(var_0.zyw, var_0.yyw, var_0.yxx), var_0.ywy, vec3<bool>(true, false, false))), true);
    var_2 = var_0.zxy;
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(abs(vec4<u32>(1u, u_input.a, arg_2.x, arg_2.x)) >> (firstTrailingBit(vec4<u32>(0u, 4294967295u, 8727u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, u_input.a, 0u, arg_2.x) ^ vec4<u32>(4294967295u, 0u, 1u, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 969u, arg_2.x, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, arg_2.x)), vec4<u32>(arg_2.x, u_input.a, _wgslsmith_mult_u32(arg_2.x, 7065u), min(1u, arg_2.x)))), abs(vec4<u32>(_wgslsmith_sub_u32(arg_2.x, arg_2.x) << (~arg_2.x % 32u), 0u, 101417u, 4294967295u)));
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~abs(4294967295u), ~0u, abs(arg_2.x << (u_input.a % 32u)), 1u), vec4<u32>(countOneBits(u_input.a << (38911u % 32u)), ~arg_2.x, (u_input.a >> (38497u % 32u)) | (u_input.a << (var_3.x % 32u)), ~(var_3.x & var_3.x)), vec4<u32>(58630u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, var_3.x, 33312u, 24084u), vec4<u32>(u_input.a, 87979u, 9709u, arg_2.x), vec4<bool>(var_0.x, var_2.x, var_2.x, var_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 13948u, 26993u, 0u), vec4<u32>(var_3.x, arg_2.x, var_3.x, u_input.a))), select(~19717u, _wgslsmith_mult_u32(arg_2.x, 31864u), var_2.x), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.x, arg_2.x), abs(19586u))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(max(u_input.a, 6653u), ~firstTrailingBit(~u_input.a));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2034f);
    let var_2 = Struct_1(select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x), arg_0.x), !(!vec4<bool>(true, false, arg_0.x, true)), any(vec2<bool>(true, arg_0.x))), !(!(!vec4<bool>(false, false, arg_0.x, true))), select(vec4<bool>(!arg_0.x, true, true, true), select(!vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, false, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, arg_0.x, false)), true)), ~(~var_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, -14648i, 30257i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-47312i, 10222i, -22228i, -77467i), vec4<i32>(-14102i, -8194i, 49480i, 2147483647i), false)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 0i, -1i, 13237i)), min(vec4<i32>(-6245i, -1i, 1i, 1i), vec4<i32>(-2147483647i, -16294i, -29092i, -1i)), vec4<i32>(-2231i, -2147483647i, -24782i, -13135i))), select(reverseBits(vec4<i32>(-2147483647i, -2147483647i, -22791i, -6948i)), vec4<i32>(1i, 1i, 1i, 1i), any(vec3<bool>(arg_0.x, false, true))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, var_0.x, 14672u), vec4<u32>(0u, var_0.x, 1u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(u_input.a, u_input.a)) << (_wgslsmith_sub_u32(u_input.a, ~32256u) % 32u)), ~(~(vec4<u32>(var_0.x, var_0.x, 21445u, 4294967295u) & vec4<u32>(var_0.x, 4294967295u, 1u, 977u))) >> (select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 25958u), vec2<u32>(30378u, u_input.a)), var_0.x & 1u, ~10551u, ~var_0.x), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(651f, var_1, -1896f, var_1) - vec4<f32>(var_1, var_1, -432f, 138f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 134f, var_1) - vec4<f32>(var_1, 741f, var_1, -983f)), select(vec3<u32>(0u, 34140u, var_0.x), vec3<u32>(1u, var_0.x, 21037u), arg_0.x)), arg_0.x) % vec4<u32>(32u)));
    return var_2;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2(select(select(vec2<bool>(true, true), vec2<bool>(select(false, false, false), true), !select(false, false, false)), vec2<bool>(false, true), true));
    let var_1 = var_0.a;
    let var_2 = Struct_2(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1834f * -1000f)))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1444f + _wgslsmith_f_op_f32(493f - -736f)))));
    var var_3 = !var_1.x;
    var_3 = false;
    return vec2<bool>(true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), all(vec2<bool>(false, true))), func_1(), false), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), func_2(vec2<bool>(false, select(true, false, true))).a.x);
    let var_1 = Struct_2(-(~min(1i, abs(70375i))), true);
    let var_2 = !vec4<bool>(false, !(!any(vec2<bool>(var_1.b, true))), !func_1().x, any(vec3<bool>(true, true, var_0.x)));
    let var_3 = func_2(vec2<bool>(func_2(vec2<bool>(true, true)).a.x & false, false)).a.x;
    var var_4 = var_3 && (-var_1.a < var_1.a);
    var_4 = any(!var_2.wx);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a >> (8366u % 32u), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(select(var_1.a, -1i, false), ~2147483647i), -vec2<i32>(-1i, 1i)), ~reverseBits(reverseBits(vec2<i32>(1i, var_1.a)))), -vec4<i32>(0i, firstLeadingBit(select(-2147483647i, 0i, var_2.x)), i32(-1i) * -31094i, ~var_1.a), 25846u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-627f, 508f, 1000f, -1628f) + vec4<f32>(-129f, 675f, 1000f, 813f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, 456f, 693f, -123f)) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1093f, -1000f, 1104f, 813f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, -1236f, 434f, 1106f) - vec4<f32>(224f, -894f, 1676f, 891f))))))));
}

