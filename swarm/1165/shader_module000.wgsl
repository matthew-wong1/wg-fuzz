struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(vec4<u32>(~(1u << (1u % 32u)), ~(~(~4294967295u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(39263u, countOneBits(4294967295u)), abs(min(1u, 4294967295u))), ~(~max(10865u, 0u))));
    let var_1 = vec2<f32>(704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(402f)))))));
    let var_2 = var_0.xzx;
    let var_3 = Struct_1(vec4<i32>(-abs(-2147483647i), 29856i, countOneBits(2861i), abs(u_input.a)), var_0);
    var var_4 = _wgslsmith_mod_vec3_i32(vec3<i32>(~max(-arg_0.x, -23874i), arg_0.x, u_input.a), _wgslsmith_mod_vec3_i32(firstLeadingBit(var_3.a.xyz), reverseBits(abs(arg_0.wzw | arg_0.wyy))));
    return !select(vec3<bool>(any(vec3<bool>(true, true, false)) | true, -961f >= _wgslsmith_f_op_f32(var_1.x - 299f), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), true), vec3<bool>(!select(true, false, true), 30280u < _wgslsmith_sub_u32(var_0.x, 21915u), all(vec3<bool>(false, false, false))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    let var_0 = func_3(vec4<i32>(~55379i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, arg_0.x) << (~arg_1 % 32u), -1i), _wgslsmith_div_i32(abs(1i), arg_0.x), 2147483647i));
    let var_1 = Struct_1(~vec4<i32>(firstLeadingBit(~arg_0.x), 5449i, -(25119i << (1u % 32u)), 58843i), vec4<u32>(1u, abs(~4294967295u) & ~_wgslsmith_div_u32(arg_1, 1u), select(firstTrailingBit(arg_1) | arg_1, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, arg_1, arg_1, 1u), max(vec4<u32>(arg_1, 1u, 57617u, arg_1), vec4<u32>(43200u, arg_1, arg_1, 18291u))), true), arg_1));
    var var_2 = _wgslsmith_mod_i32(-8102i, u_input.a);
    let var_3 = -438f;
    var var_4 = vec3<u32>(_wgslsmith_sub_u32(abs(var_1.b.x), arg_1), 0u, reverseBits(countOneBits(~1u)));
    return !func_3(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, u_input.a, arg_0.x), var_1.a >> (vec4<u32>(0u, arg_1, 1u, 16113u) % vec4<u32>(32u))) >> (var_1.b % vec4<u32>(32u))).yx;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = Struct_1(vec4<i32>(u_input.a, -34799i, u_input.a, u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(max(0u, 4294967295u), ~90794u, 1u, firstLeadingBit(4294967295u)), ~min(vec4<u32>(52475u, 4294967295u, 0u, 0u), vec4<u32>(1u, 27975u, 39538u, 0u))));
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), select(func_2(vec2<i32>(var_0.a.x, var_0.a.x), var_0.b.x), func_2(var_0.a.wx, 73395u), vec2<bool>(false, true)), true)), func_2(firstLeadingBit(min(~var_0.a.yw, vec2<i32>(3983i, var_0.a.x) | var_0.a.wy)), ~(~var_0.b.x)), true | func_3(vec4<i32>(-29914i, 1i, -u_input.a, u_input.a | var_0.a.x)).x);
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    let var_3 = _wgslsmith_div_f32(arg_0, arg_0);
    let var_4 = var_0;
    return _wgslsmith_add_u32(8575u, ~var_4.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(reverseBits(~(-vec4<i32>(11687i, u_input.a, 12495i, 2147483647i))) | -vec4<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_i32(2147483647i, -8543i, 2147483647i), _wgslsmith_add_i32(0i, u_input.a)), abs(vec4<i32>(_wgslsmith_add_i32(select(15706i, -43608i, false), u_input.a), -u_input.a ^ u_input.a, 0i, u_input.a)));
    let var_1 = ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_i32(var_0, -23265i)) & -23945i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(-2147483647i, 0i)), 2147483647i));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(849f)), _wgslsmith_f_op_f32(max(-137f, 1083f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1438f, -1668f) + vec2<f32>(-375f, 1189f)) + vec2<f32>(1268f, 627f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-940f, 291f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1050f, -625f), vec2<f32>(266f, 458f))))));
    let var_3 = 0u;
    var var_4 = ~(~vec3<u32>(7408u, func_1(_wgslsmith_f_op_f32(-var_2.x)), var_3));
    var var_5 = var_4.x;
    var_5 = _wgslsmith_clamp_u32(var_4.x, ~var_3, 4294967295u) >> (var_4.x % 32u);
    let var_6 = (countOneBits(~var_4.x) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(var_4.x, var_3), 4294967295u) % 32u)) > var_4.x;
    var_5 = ~(~var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -708f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, 176f, 319f)))))), -1421f);
}

