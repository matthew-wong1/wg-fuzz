struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<i32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = abs((firstLeadingBit(~u_input.a) | _wgslsmith_clamp_u32(19858u, global1.x, arg_0.a.x)) >> (~(~global1.x << ((arg_0.a.x << (arg_0.a.x % 32u)) % 32u)) % 32u));
    let var_1 = vec3<bool>(true, !(all(vec2<bool>(true, true)) && true), true);
    var var_2 = arg_0;
    let var_3 = vec4<i32>(1i, -(~1i), -_wgslsmith_add_i32(-1i, -31476i), _wgslsmith_add_i32(-reverseBits(~(-1i)), _wgslsmith_clamp_i32(1i, 1i << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(1i, 1i))))));
    global2 = array<vec3<i32>, 32>();
    return select(vec3<u32>(max(min(arg_0.a.x, 4294967295u), 1u) & global1.x, var_2.a.x, var_2.a.x), ~(vec3<u32>(_wgslsmith_div_u32(var_2.a.x, 0u), var_2.a.x, u_input.a ^ u_input.a) << (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, arg_0.a.x, global1.x), vec3<u32>(48982u, u_input.a, 1u)) % vec3<u32>(32u))), !vec3<bool>(var_1.x, var_1.x, var_1.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = 1165f;
    global1 = ~((~vec3<u32>(global1.x, arg_0.a.x, u_input.a) & abs(vec3<u32>(global1.x, u_input.a, global1.x))) | (func_3(arg_0) & ~(vec3<u32>(arg_0.a.x, 68165u, arg_0.a.x) ^ vec3<u32>(u_input.a, arg_0.a.x, 31724u))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-432f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1324f));
    global1 = max(~vec3<u32>(reverseBits(global1.x), ~40594u, func_3(Struct_1(vec2<u32>(u_input.a, 7536u))).x), vec3<u32>(~29757u, arg_0.a.x, firstTrailingBit(0u)));
    let var_1 = 2147483647i;
    return Struct_1(vec2<u32>(u_input.a, ~(func_3(Struct_1(vec2<u32>(0u, arg_0.a.x))).x >> ((57946u << (arg_0.a.x % 32u)) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global2 = array<vec3<i32>, 32>();
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f - -1054f)))), 379f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(379f, _wgslsmith_f_op_f32(f32(-1f) * -2411f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(217f))), false)) * 282f);
    var var_2 = -464f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f - _wgslsmith_f_op_f32(ceil(-1965f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-344f, _wgslsmith_f_op_f32(928f - 194f), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1367f)), 425f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(823f))))));
    return func_2(func_2(arg_0));
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = vec3<bool>(all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), vec3<bool>(true, false, true))) && (arg_0.a.x > arg_0.a.x), true, !any(vec4<bool>(true, true, true, true)));
    var var_1 = !vec4<bool>(false, all(!vec2<bool>(true, var_0.x)), var_0.x, var_0.x);
    global2 = array<vec3<i32>, 32>();
    var_1 = !(!select(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, true, var_0.x, var_1.x)), vec4<bool>(!var_1.x, false, any(var_1.yxz), true), u_input.a >= (u_input.a >> (u_input.a % 32u))));
    global1 = max(reverseBits(firstLeadingBit(select(vec3<u32>(global1.x, 52076u, u_input.a), vec3<u32>(arg_0.a.x, 140703u, 35368u), vec3<bool>(false, var_0.x, false)))), func_3(func_2(func_2(Struct_1(global1.yx))))) << (vec3<u32>(0u, u_input.a, (1u >> (firstLeadingBit(global1.x) % 32u)) | max(36151u, u_input.a)) % vec3<u32>(32u));
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = func_5(func_4(arg_1, -2147483647i, func_2(Struct_1(vec2<u32>(67809u, 1u) & arg_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, ~6984u, firstLeadingBit(10207u), firstTrailingBit(arg_1.a.x)), vec4<u32>(47586u, 65879u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 74434u, 6818u), vec4<u32>(34408u, 28139u, 0u, arg_1.a.x)), ~u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0) > 587f;
    let var_2 = -429f;
    global2 = array<vec3<i32>, 32>();
    var var_3 = Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, arg_1.a.x), min(global1.zz << (vec2<u32>(35627u, u_input.a) % vec2<u32>(32u)), arg_1.a)));
    return _wgslsmith_mult_u32(13542u, ~arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(u_input.a, 27573u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1896f)))))), _wgslsmith_f_op_f32(-993f * -2260f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1615f))), -301f));
    global0 = _wgslsmith_f_op_f32(min(208f, -224f));
    let var_1 = vec2<bool>((20975u >> (_wgslsmith_mod_u32(~4294967295u, u_input.a) % 32u)) < (~func_1(-311f, var_0) | ~(~1u)), select(true | !any(vec2<bool>(false, false)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false));
    var var_2 = -abs(~(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-1i, -22559i)) << (firstLeadingBit(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 53507u, func_4(var_0, firstTrailingBit(-var_2.x), Struct_1(~vec2<u32>(var_0.a.x, 63929u)), select(~vec4<u32>(u_input.a, var_0.a.x, global1.x, 26343u), ~vec4<u32>(0u, 101268u, 0u, 97821u), vec4<bool>(false, var_1.x, var_1.x, true))).a.x, var_0.a.x), vec3<i32>(-var_2.x, countOneBits(firstLeadingBit(41455i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -28375i, 2147483647i, var_2.x), vec4<i32>(-1i, var_2.x, var_2.x, -4098i))), var_2.x), _wgslsmith_mult_i32(var_2.x, select(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-3726i, -1i)), var_2.x), firstTrailingBit(countOneBits(1i)), select(any(vec3<bool>(true, var_1.x, var_1.x)), !var_1.x, var_1.x))), global2[_wgslsmith_index_u32(func_2(func_4(Struct_1(vec2<u32>(4294967295u, 12255u)), 1i, var_0, vec4<u32>(0u, u_input.a, ~9675u, 1u))).a.x, 32u)]);
}

