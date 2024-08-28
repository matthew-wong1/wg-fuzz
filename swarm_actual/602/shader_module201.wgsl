struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    return any(vec2<bool>(true, true));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    let var_0 = Struct_2(Struct_1(func_3(Struct_1(true))), arg_2.x);
    let var_1 = var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-901f - -1031f), arg_3);
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_2.x, 1u, var_0.b), vec3<u32>(_wgslsmith_add_u32(arg_2.x, var_0.b), ~(arg_2.x >> (arg_2.x % 32u)), max(0u, arg_2.x)));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, var_2.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -552f);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1733f) * _wgslsmith_f_op_f32(step(897f, -2584f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(161f, 1149f)), 1229f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec3<u32>(28371u, 0u, 1u), 404f)))) * _wgslsmith_f_op_f32(step(-158f, _wgslsmith_f_op_f32(f32(-1f) * -377f)))) - -1895f);
    var var_1 = select(~vec3<u32>(1027u, select(38735u, 31343u, var_0), 1u), abs(reverseBits(vec3<u32>(1u, 1u, 1u))), var_0 && (var_0 || any(vec3<bool>(var_0, var_0, var_0)))) | vec3<u32>(4294967295u, firstTrailingBit(min(select(33925u, 33960u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(5061u, 29527u, 1u, 0u), vec4<u32>(24297u, 24653u, 1725u, 4294967295u)))), ~4294967295u << (_wgslsmith_clamp_u32(4294967295u, countOneBits(4294967295u), 0u) % 32u));
    var_1 = abs(_wgslsmith_mod_vec3_u32(~select(~vec3<u32>(46032u, var_1.x, 4294967295u), vec3<u32>(var_1.x, 9701u, 38417u), vec3<bool>(var_0, true, true)), max(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 7899u), min(var_1.x, var_1.x), 9457u), ~vec3<u32>(1u, var_1.x, 1u))));
    var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.x, 0u, 23834u), vec4<u32>(1u, 4294967295u, 18227u, 4294967295u), vec4<u32>(4294967295u, 0u, 48837u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(4914u, 12107u, 3930u, 48094u))), var_1.x), vec3<u32>(1u, ~(~var_1.x), firstTrailingBit(1u))), vec3<u32>(abs(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(14911u, 10749u, 1u, var_1.x), vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<bool>(false, var_0, false, false)), vec4<u32>(var_1.x, var_1.x, 2728u, 39425u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(0u, 1u, var_1.x)), var_1.x, var_1.x)), firstLeadingBit(max(abs(var_1.x), 26357u))), vec3<u32>(~(~_wgslsmith_mult_u32(var_1.x, 1u)), 30052u, 16973u));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -776f))))));
    return Struct_2(Struct_1(~(~1u) > var_1.x), 51605u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = func_1();
    var var_2 = ~arg_3.zx;
    let var_3 = select(select(!select(select(vec4<bool>(arg_1.a, false, arg_0.a.a, false), vec4<bool>(true, false, var_1.a.a, arg_1.a), vec4<bool>(arg_0.a.a, true, true, arg_0.a.a)), vec4<bool>(arg_1.a, true, true, true), vec4<bool>(var_1.a.a, false, false, true)), !vec4<bool>(any(vec3<bool>(true, var_1.a.a, false)), arg_1.a, var_1.b < var_1.b, false), all(!select(vec2<bool>(true, arg_0.a.a), vec2<bool>(arg_0.a.a, false), arg_1.a))), vec4<bool>(!select(!arg_1.a, var_1.a.a, true), arg_1.a, true, !(~var_1.b != 1u)), vec4<bool>(true, !var_1.a.a, false, var_1.a.a));
    let var_4 = true;
    return Struct_2(func_1().a, _wgslsmith_sub_u32(~((arg_0.b ^ var_1.b) | ~var_1.b), firstTrailingBit(countOneBits(_wgslsmith_clamp_u32(9818u, 17442u, 10467u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_1(_wgslsmith_sub_i32(firstLeadingBit(-1i), -20761i) > _wgslsmith_dot_vec3_i32(min(vec3<i32>(44986i, 2147483647i, -28022i), vec3<i32>(u_input.a, -63461i, u_input.a)), -vec3<i32>(-1i, 2147483647i, 0i))), -firstLeadingBit(~vec2<i32>(u_input.a, u_input.a)) & select(select(select(vec2<i32>(u_input.a, 21175i), vec2<i32>(40722i, u_input.a), false), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i), vec2<bool>(false, false)), false), vec2<i32>(-1i, u_input.a), !select(vec2<bool>(true, false), vec2<bool>(false, true), true)), -min(firstTrailingBit(vec4<i32>(u_input.a, 6856i, u_input.a, u_input.a)), vec4<i32>(firstLeadingBit(u_input.a), countOneBits(u_input.a), ~(-24114i), -16389i)));
    var_0 = Struct_2(Struct_1(func_4(func_4(Struct_2(var_0.a, 1u), func_4(Struct_2(var_0.a, 1u), Struct_1(var_0.a.a), vec2<i32>(0i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)).a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i)), ~vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), func_1().a, ~vec2<i32>(-27159i, -1i) & select(vec2<i32>(u_input.a, 0i), vec2<i32>(16606i, 2147483647i), vec2<bool>(false, var_0.a.a)), reverseBits(vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a) | vec4<i32>(-8662i, u_input.a, u_input.a, u_input.a))).a.a), select(31u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14301u, var_0.b, var_0.b), vec3<u32>(var_0.b, var_0.b, var_0.b)), ~var_0.b), var_0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(~reverseBits(vec2<u32>(var_0.b, var_0.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(66569u, 4294967295u), reverseBits(vec2<u32>(61429u, 36870u))))));
}

