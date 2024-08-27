struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(1u, 57585u), vec2<u32>(10711u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(31112u, 41960u), vec2<u32>(17757u, 26477u), vec2<u32>(75626u, 2779u), vec2<u32>(1u, 21366u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.e.x)) + -1571f) * arg_3.e.x))));
    let var_1 = arg_2.zz;
    global0 = array<vec2<u32>, 7>();
    global0 = array<vec2<u32>, 7>();
    let var_2 = arg_3;
    return i32(-1i) * -3546i;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    global0 = array<vec2<u32>, 7>();
    global0 = array<vec2<u32>, 7>();
    var var_0 = vec2<i32>(0i, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(reverseBits(-2549i), 1i), min(_wgslsmith_mult_i32(u_input.e.x, 2462i), 2147483647i))));
    var var_1 = Struct_1(~vec3<i32>(_wgslsmith_div_i32(0i, func_3(vec4<f32>(2197f, 2182f, -2000f, 1241f), -1000f, vec4<bool>(true, false, true, false), Struct_1(u_input.d.xxw, -457f, u_input.d.zxx, vec4<i32>(arg_2.a.x, -14987i, -42455i, 133i), vec3<f32>(1691f, 1194f, 1000f)))), var_0.x, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1199f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(701f))))) - -346f), _wgslsmith_clamp_vec3_i32(~u_input.d.wwy, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 35752i, var_0.x, -1i), vec4<i32>(813i, -18741i, var_0.x, 1i)), countOneBits(arg_0), u_input.d.x) >> (vec3<u32>(u_input.c.x | 56706u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 39960u, 0u), u_input.c), abs(52712u)) % vec3<u32>(32u)), ~firstLeadingBit(-u_input.d.zyx)), vec4<i32>(-27083i, _wgslsmith_clamp_i32(var_0.x, u_input.b, -10826i), var_0.x, -1i) & ~u_input.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1448f, -718f, 1000f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1825f, -672f, -334f) - vec3<f32>(1000f, -1819f, -241f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-803f, 2861f, 1810f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1610f, -529f, -443f)))), arg_1)));
    var_1 = Struct_1(select(select(abs(_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_2.a.x, var_0.x), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_0))), u_input.d.wwz, -1572f != _wgslsmith_f_op_f32(-var_1.b)), min(vec3<i32>(var_1.a.x | var_0.x, ~26830i, min(u_input.d.x, var_0.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-21012i, 46411i, var_0.x), ~vec3<i32>(17380i, 47092i, 1i))), all(vec2<bool>(false, !arg_1))), _wgslsmith_f_op_f32(max(-800f, -1502f)), select(u_input.d.xyz << (firstLeadingBit(vec3<u32>(0u, 1u, u_input.a) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)), var_1.d.zxy, false), vec4<i32>(var_1.a.x, countOneBits(arg_0), abs(-var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_2.a.x, var_1.d.x), vec2<i32>(i32(-1i) * -25232i, -11593i))), _wgslsmith_div_vec3_f32(vec3<f32>(-338f, -452f, 1f), var_1.e));
    return vec3<bool>(false, true, all(select(!select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, true, false), vec3<bool>(false, arg_1, true)), vec3<bool>(true, true, true), !vec3<bool>(true, arg_1, false))));
}

fn func_1() -> Struct_1 {
    let var_0 = !func_2(~firstTrailingBit(u_input.e.x & -2147483647i), !(_wgslsmith_f_op_f32(f32(-1f) * -659f) <= _wgslsmith_f_op_f32(floor(-891f))), Struct_2(~vec2<i32>(63998i, u_input.e.x)));
    global0 = array<vec2<u32>, 7>();
    var var_1 = select(!(!(!(!vec4<bool>(true, var_0.x, true, true)))), vec4<bool>(!all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true | !(var_0.x & false), var_0.x, var_0.x), !vec4<bool>(true, var_0.x, all(!vec4<bool>(var_0.x, true, false, var_0.x)), true));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) - _wgslsmith_f_op_f32(select(-140f, 1578f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-985f)) * _wgslsmith_f_op_f32(-473f * -1870f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1047f + 752f) * _wgslsmith_f_op_f32(f32(-1f) * -824f)))), -1399f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_div_f32(635f, -1659f), true)), _wgslsmith_f_op_f32(ceil(349f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(626f * 856f), _wgslsmith_f_op_f32(-860f + -194f), all(vec4<bool>(false, true, var_0.x, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1580f, 408f)))));
    var var_3 = Struct_2(vec2<i32>(u_input.d.x, select(u_input.b, reverseBits(~(-1i)), any(select(vec2<bool>(var_1.x, false), var_0.xy, var_1.yx)))));
    return Struct_1(~firstLeadingBit(abs(vec3<i32>(-1i, -12260i, var_3.a.x)) >> (countOneBits(u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1708f) * -800f) - 360f) * _wgslsmith_f_op_f32(exp2(var_2.x))), vec3<i32>(-1i) * -(~(-u_input.d.wyz)), _wgslsmith_mod_vec4_i32(vec4<i32>(select(36766i, reverseBits(-2147483647i), var_0.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(u_input.b, u_input.b))), max(var_3.a.x, u_input.d.x), abs(~72972i)), max(min(~vec4<i32>(2147483647i, u_input.b, u_input.e.x, 1i), -u_input.d), vec4<i32>(-2484i, i32(-1i) * -15493i, -1i << (u_input.a % 32u), ~49765i))), var_2.xxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-(-select(u_input.e, vec2<i32>(u_input.e.x, u_input.e.x), vec2<bool>(false, true)) >> (global0[_wgslsmith_index_u32(min(~1u, abs(13509u)), 7u)] % vec2<u32>(32u))));
    var var_1 = func_1();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), var_1.e.x, var_1.b);
    var var_3 = Struct_2(firstTrailingBit(-(vec2<i32>(-1i) * -vec2<i32>(19104i, var_1.a.x))));
    let var_4 = var_2.x < var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -769f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(409f)))), ~1i, u_input.d.yy);
}

