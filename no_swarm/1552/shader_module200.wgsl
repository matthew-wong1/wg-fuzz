struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = select(vec2<u32>(1u, 1u) ^ vec2<u32>(~48803u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 15349u, 77174u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(11818u << (0u % 32u)), 75048u), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), false), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), any(vec2<bool>(false, true)))), vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    global0 = u_input.a;
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(min(countOneBits(vec3<u32>(var_0.x, var_0.x, var_0.x)), ~(~vec3<u32>(1u, 4294967295u, 15089u))), min(abs(vec3<u32>(var_0.x, 4294967295u, var_0.x)), vec3<u32>(16015u, 24992u, var_0.x)) ^ (vec3<u32>(var_0.x, var_0.x, 56986u) ^ abs(vec3<u32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.x, 18762u, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 28499u, 4294967295u), vec3<u32>(var_0.x, 27898u, 1u)), true), vec3<u32>(var_0.x, var_0.x, _wgslsmith_mult_u32(var_0.x, 8374u)))));
    let var_2 = u_input.a ^ ~u_input.a;
    var_0 = vec2<u32>(~(~var_1.x ^ ~var_0.x), 987u) | (~var_1.yx >> (var_1.yx % vec2<u32>(32u)));
    return firstTrailingBit(var_0.x);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(5223u, _wgslsmith_clamp_u32(0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(77951u, 4294967295u), vec2<u32>(18444u, 17432u))), ~_wgslsmith_clamp_u32(30786u, 33144u, 18118u))), firstTrailingBit(_wgslsmith_mod_u32(func_3(), 0u)), 9888u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(~29550u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16999u, 0u, 0u), vec4<u32>(15099u, 4294967295u, 4294967295u, 4294967295u)), 4294967295u), firstTrailingBit(~vec3<u32>(1u, 4294967295u, 1u)), vec3<bool>(arg_0, all(vec3<bool>(arg_0, false, arg_0)), arg_0)), vec3<u32>(1u, 59221u, countOneBits(1u))));
    global0 = abs(vec2<i32>(_wgslsmith_add_i32(19978i, ~(-1i)), firstLeadingBit(20386i)) >> ((var_0.xw | vec2<u32>(var_0.x, firstTrailingBit(var_0.x))) % vec2<u32>(32u)));
    global0 = -(u_input.a ^ _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(5096i, -30563i), vec2<i32>(18808i, -1i)) | ~vec2<i32>(u_input.a.x, global0.x), vec2<i32>(global0.x, 8952i) ^ min(vec2<i32>(global0.x, u_input.a.x), u_input.a)));
    var var_1 = Struct_1(28889i, max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, var_0.x) & vec4<u32>(113172u, var_0.x, var_0.x, 4294967295u), select(var_0, vec4<u32>(var_0.x, var_0.x, 4294967295u, 1u), false)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.x, 2841u, 45730u), var_0)) << (select(vec4<u32>(var_0.x, 4294967295u, 0u, 1u) | firstLeadingBit(vec4<u32>(var_0.x, var_0.x, 1u, 1u)), ~var_0, true) % vec4<u32>(32u)), -17064i, var_0.x);
    let var_2 = reverseBits(select(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_1.c, 0i, -1i), vec4<i32>(var_1.a, u_input.a.x, -1i, var_1.c)), max(vec4<i32>(global0.x, ~global0.x, -1i >> (var_0.x % 32u), u_input.a.x), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, var_1.a, global0.x, 1i), -vec4<i32>(-27585i, -25655i, -8068i, 27482i), select(vec4<i32>(2147483647i, -4239i, global0.x, 2147483647i), vec4<i32>(-1617i, global0.x, u_input.a.x, 2147483647i), vec4<bool>(true, false, arg_0, false)))), select(vec4<bool>(true, true & arg_0, false, !arg_0), select(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, false, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, arg_0, true, arg_0)), !vec4<bool>(arg_0, true, arg_0, false)), true)));
    return vec2<bool>(all(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, false), vec2<bool>(false, true), vec2<bool>(false, arg_0))), true)), any(select(!select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), true), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), false), arg_0), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_3 {
    var var_0 = 1u;
    global0 = ~u_input.a;
    var_0 = _wgslsmith_mult_u32(reverseBits(1u | func_3()), 4294967295u);
    var_0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(func_3(), 0u), max(~1u, abs(39563u)))) << (0u % 32u);
    var_0 = ~(_wgslsmith_mod_u32(21905u, 1u) & (1u << (firstTrailingBit(4294967295u) % 32u)));
    return Struct_3(0i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    return ~57120u;
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = vec3<u32>(4294967295u, func_5(func_4(func_2(true), !all(vec4<bool>(false, true, false, false))), Struct_2(global0.x & ~global0.x, global1.x), ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(10579u, 7585u)), vec2<u32>(52589u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 24351u), vec2<u32>(1u, 4294967295u)))), func_3());
    var var_1 = Struct_2(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, ~global0.x), func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec4<bool>(false, false, true, false))).a), global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(global1.x * var_1.b))), vec2<f32>(global1.x, _wgslsmith_div_f32(-655f, 195f)))));
    let var_2 = var_0.zy;
    let var_3 = _wgslsmith_f_op_f32(max(664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1063f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1328f + _wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(func_1(Struct_3(36786i)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)))) - -818f));
    var var_1 = ~(~vec4<i32>(0i, _wgslsmith_div_i32(~2147483647i, firstTrailingBit(1586i)), reverseBits(_wgslsmith_add_i32(u_input.a.x, -2147483647i)), u_input.a.x));
    var var_2 = Struct_1(u_input.a.x, vec4<u32>(abs(3407u), 1u, 0u, ((0u >> (1u % 32u)) >> (firstTrailingBit(98185u) % 32u)) << (_wgslsmith_sub_u32(25090u, 1u) % 32u)), -6837i & max(-1i, min(1i, max(var_1.x, -10389i))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 42373u, 1u), abs(vec3<u32>(35206u, 45382u, 54410u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var_1 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_add_i32(1i, global0.x), -(var_1.x >> (var_2.b.x % 32u)), 0i, ~(~0i));
    var var_3 = Struct_3(u_input.a.x);
    var_1 = vec4<i32>(global0.x, 42973i, global0.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 48564i), var_1.yz), _wgslsmith_dot_vec2_i32(vec2<i32>(-33539i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -39164i), var_1.wx)), var_1.wy), 5064i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(47336i, global0.x), -vec2<i32>(var_3.a, var_1.x)), -2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_0)))), 1912f)), select(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_2.c, u_input.a.x) & u_input.a, ~vec2<i32>(-1i, 16240i) << (vec2<u32>(var_2.b.x, var_2.b.x) % vec2<u32>(32u))), vec2<i32>(countOneBits(2147483647i), global0.x), any(vec4<bool>(true, true, true, true)) || true), global1.x, vec4<f32>(global1.x, -863f, 169f, _wgslsmith_f_op_f32(abs(-942f))));
}

