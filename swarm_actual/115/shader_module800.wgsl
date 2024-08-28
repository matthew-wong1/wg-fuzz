struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, false, false, false, true, false, true, false, false, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = ~vec3<u32>(~1u & _wgslsmith_dot_vec2_u32(u_input.e.wx & var_0.b.zz, ~u_input.e.xx), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, firstLeadingBit(var_0.c.x)), 4294967295u), abs(1u));
    global0 = array<bool, 11>();
    var var_2 = select(vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.b.x, var_0.a.x), 11u)], false && (_wgslsmith_f_op_f32(exp2(arg_1.d.x)) != var_0.d.x), any(select(select(vec4<bool>(arg_1.e, global0[_wgslsmith_index_u32(arg_1.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0.e), vec4<bool>(true, false, false, var_0.e), true), vec4<bool>(arg_1.e, true, false, false), !vec4<bool>(var_0.e, true, false, true)))), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 11u)], arg_1.e, false, arg_1.e & global0[_wgslsmith_index_u32(~4294967295u, 11u)]), vec4<bool>((var_0.e || all(vec2<bool>(arg_1.e, false))) && arg_1.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-367f * 383f), _wgslsmith_f_op_f32(round(249f)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.x))), !(arg_0.x > ~u_input.d), true));
    global0 = array<bool, 11>();
    return vec4<bool>(all(!select(select(vec4<bool>(true, false, arg_1.e, global0[_wgslsmith_index_u32(64369u, 11u)]), vec4<bool>(true, false, true, false), arg_1.e), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 11u)], arg_1.e, var_2.x), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.x, 11u)], var_2.x))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.d.x, -421f)), _wgslsmith_f_op_f32(-arg_1.d.x)) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x - arg_1.d.x)))), arg_1.d.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(902f + var_0.d.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)), -1000f)), ~_wgslsmith_add_u32(u_input.c, 0u) != var_1.x);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, ~u_input.a.x, 1i, -2147483647i) << (vec4<u32>(u_input.b, 4294967295u << (arg_0.c.x % 32u), abs(4294967295u), u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x), vec4<i32>(-32506i, u_input.a.x, -2147483647i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(26692i, u_input.d, 77625i, -2147483647i), vec4<i32>(u_input.d, 2147483647i, u_input.d, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.d, 2213i), vec4<i32>(-1i, u_input.d, u_input.a.x, u_input.d), vec4<i32>(25102i, 25255i, u_input.d, u_input.d))), countOneBits(abs(vec4<i32>(56090i, u_input.a.x, 1i, -32418i))))), firstTrailingBit(min(select(-vec4<i32>(-49837i, u_input.a.x, u_input.d, 26153i), select(vec4<i32>(u_input.d, 2147483647i, u_input.a.x, 1028i), vec4<i32>(1i, u_input.d, u_input.a.x, u_input.a.x), vec4<bool>(arg_0.e, global0[_wgslsmith_index_u32(0u, 11u)], arg_0.e, false)), arg_0.e), vec4<i32>(firstLeadingBit(-1i), i32(-1i) * -30086i, u_input.a.x, u_input.a.x))), select(func_3(vec3<i32>(~u_input.d, u_input.d, u_input.a.x | u_input.a.x), Struct_1(select(vec2<u32>(arg_0.b.x, 1u), vec2<u32>(0u, u_input.e.x), true), ~vec4<u32>(75941u, u_input.b, 35120u, arg_0.c.x), vec4<u32>(0u, u_input.b, u_input.b, 1u), arg_0.d, true)), vec4<bool>(true, true && global0[_wgslsmith_index_u32(4294967295u, 11u)], true, !any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 11u)], true))), true));
    let var_1 = vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.d.x, arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x))) - arg_0.d.x));
    return vec3<i32>(countOneBits(var_0.x & firstLeadingBit(-5904i)), var_0.x, var_0.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_1 {
    return Struct_1(((u_input.e.xx & (u_input.e.zw ^ u_input.e.wy)) & vec2<u32>(21188u, ~u_input.b)) | (reverseBits(~vec2<u32>(u_input.c, 47305u)) >> (select(u_input.e.yw, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 41597u), u_input.e.zw), select(vec2<bool>(global0[_wgslsmith_index_u32(53221u, 11u)], global0[_wgslsmith_index_u32(81029u, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(33095u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 11u)], false))) % vec2<u32>(32u))), ~vec4<u32>(20352u, ~u_input.e.x, u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.e.zxy, vec3<u32>(1u, 0u, u_input.c) << (vec3<u32>(4294967295u, u_input.e.x, u_input.c) % vec3<u32>(32u)))), vec4<u32>(min(select(u_input.c, u_input.c, false) | 4294967295u, _wgslsmith_clamp_u32(0u, 16656u >> (u_input.e.x % 32u), ~u_input.e.x)), _wgslsmith_sub_u32(u_input.e.x, max(u_input.c, 0u) >> ((4294967295u | u_input.c) % 32u)), firstLeadingBit(u_input.b), ~(~(~u_input.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(_wgslsmith_f_op_f32(1261f - -308f), arg_0.x)))), !global0[_wgslsmith_index_u32(36997u, 11u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global0 = array<bool, 11>();
    var var_0 = Struct_2(func_4(vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(476f))))), firstLeadingBit(func_2(Struct_1(u_input.e.xz, vec4<u32>(18624u, arg_1.b.x, 23778u, u_input.b), u_input.e, vec2<f32>(arg_1.d.x, arg_1.d.x), true))) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_1.b.x, arg_1.c.x), u_input.e.yyx) % vec3<u32>(32u))), Struct_1(~vec2<u32>(arg_0.x, 53976u) | abs(vec2<u32>(arg_1.b.x, arg_1.a.x)), u_input.e, u_input.e & (~vec4<u32>(u_input.b, 26992u, 53852u, u_input.b) >> (~arg_0 % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d) * arg_1.d) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, arg_1.d.x)))), arg_1.b.x == arg_1.b.x), func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.d.x, arg_1.d.x))))), vec3<i32>(min(28688i, u_input.d), firstTrailingBit(2147483647i), u_input.a.x)));
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_1 = ~u_input.a.x ^ _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xz, _wgslsmith_div_vec2_i32(u_input.a.zy, u_input.a.yx) & u_input.a.xz), _wgslsmith_mult_vec2_i32(-u_input.a.yz, ~(-u_input.a.yz)));
    return _wgslsmith_mod_i32(func_2(Struct_1(var_0.c.a, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, 44302u, arg_0.x, 41329u), arg_0), max(vec4<u32>(1u, 0u, u_input.c, arg_1.c.x), arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-559f, arg_1.d.x) + var_0.a.d), any(vec3<bool>(false, arg_1.e, global0[_wgslsmith_index_u32(0u, 11u)])))).x ^ ~2147483647i, (15085i & select(func_2(Struct_1(u_input.e.xz, vec4<u32>(arg_1.c.x, var_0.c.b.x, arg_1.b.x, arg_0.x), u_input.e, var_0.c.d, var_0.b.e)).x, u_input.d, arg_1.e)) | -20179i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 38566i, 18380i, u_input.a.x), ~vec4<i32>(u_input.a.x, -43105i, u_input.d, u_input.a.x)), _wgslsmith_sub_i32(26887i, u_input.d), _wgslsmith_clamp_i32(-u_input.d, u_input.a.x, u_input.d) >> (u_input.e.x % 32u), firstLeadingBit(abs(-20625i))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 3969i, -1i, func_1(u_input.e & u_input.e, Struct_1(vec2<u32>(u_input.c, u_input.c), vec4<u32>(21124u, u_input.e.x, 4294967295u, 0u), u_input.e, vec2<f32>(1414f, 309f), global0[_wgslsmith_index_u32(u_input.b, 11u)]))), vec4<i32>(u_input.d, firstLeadingBit(u_input.d), _wgslsmith_mult_i32(~u_input.a.x, u_input.d), _wgslsmith_mod_i32(~(-1i), 21906i))));
    var var_1 = -1i;
    let var_2 = vec2<bool>(true, !(true && global0[_wgslsmith_index_u32(u_input.e.x, 11u)]));
    global0 = array<bool, 11>();
    var var_3 = Struct_2(Struct_1(reverseBits(u_input.e.zx), u_input.e, u_input.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1117f, 1547f))))), false), func_4(vec2<f32>(_wgslsmith_f_op_f32(681f + -249f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-337f, -434f))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, var_0), u_input.a), ~vec3<i32>(-1i, 67231i, -4089i))), Struct_1(~_wgslsmith_mult_vec2_u32(countOneBits(u_input.e.xx), countOneBits(u_input.e.zw)), ~vec4<u32>(_wgslsmith_add_u32(u_input.b, 3580u), u_input.e.x, u_input.c, _wgslsmith_dot_vec3_u32(u_input.e.zzw, u_input.e.xzz)), vec4<u32>(~(u_input.e.x ^ u_input.e.x), u_input.b, select(firstTrailingBit(14133u), u_input.b, global0[_wgslsmith_index_u32(1u, 11u)]), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1064f, -741f), vec2<f32>(940f, -197f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1486f, 1000f) - vec2<f32>(677f, -516f)))) + vec2<f32>(1f, 1f)), !global0[_wgslsmith_index_u32(reverseBits(0u), 11u)]));
    let var_4 = var_3.c.e;
    let var_5 = vec2<bool>(!(global0[_wgslsmith_index_u32(~u_input.c, 11u)] || any(!vec3<bool>(var_2.x, true, var_2.x))), false || var_2.x);
    let var_6 = vec3<u32>(abs((4294967295u & u_input.e.x) ^ 20443u) >> (2356u % 32u), _wgslsmith_div_u32(var_3.b.a.x & _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(var_3.b.b, u_input.e), ~u_input.b), u_input.e.x), ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(470f)), var_3.a.d.x) + _wgslsmith_f_op_f32(-var_3.c.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c.d.x, 139f))), var_3.b.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.d.x), _wgslsmith_div_f32(var_3.a.d.x, 1327f))))), -173f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1651f, _wgslsmith_f_op_f32(abs(740f)), _wgslsmith_f_op_f32(trunc(772f)), -1415f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.c.d.x, 113f, var_3.b.d.x, var_3.c.d.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a.d.x, var_3.b.d.x, -1229f, var_3.b.d.x))))))));
}

