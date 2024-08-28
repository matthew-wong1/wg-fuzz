struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = select(!select(vec2<bool>(arg_0.a.a, !arg_0.a.a), select(vec2<bool>(arg_0.a.a, arg_0.a.a), vec2<bool>(arg_0.a.a, arg_0.a.a), vec2<bool>(true, true)), any(!vec3<bool>(arg_0.a.a, true, true))), vec2<bool>(true, false), vec2<bool>(!any(!vec3<bool>(true, false, arg_0.a.a)), -select(16461i, 5966i, true) != min(abs(2147483647i), firstLeadingBit(49262i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-537f)) - _wgslsmith_f_op_f32(exp2(arg_0.c.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - 953f)) * arg_0.c.x);
    var var_2 = !select(!(!(!vec3<bool>(true, false, arg_0.a.a))), vec3<bool>(arg_0.a.a, arg_0.a.a, all(vec3<bool>(true, true, true))), vec3<bool>(true, all(!vec4<bool>(arg_0.a.a, false, false, false)), var_0.x));
    var var_3 = Struct_1(true, reverseBits(1u), countOneBits(select(u_input.a.zz, _wgslsmith_mult_vec2_u32(arg_0.a.c, vec2<u32>(1u, 34595u) ^ arg_0.a.c), !(!vec2<bool>(var_0.x, false)))));
    var var_4 = Struct_4(Struct_1(_wgslsmith_sub_i32(21680i, _wgslsmith_dot_vec2_i32(vec2<i32>(6612i, 50209i), vec2<i32>(40250i, -1i))) > -55498i, 22832u, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.b, var_3.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_3.b) << (var_3.c % vec2<u32>(32u)), max(vec2<u32>(1u, arg_0.a.c.x), vec2<u32>(arg_0.b, 1u))), var_3.c)), countOneBits(_wgslsmith_sub_u32(var_3.c.x, arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c.x, arg_0.c.x, _wgslsmith_f_op_f32(round(arg_0.c.x))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c * arg_0.c), _wgslsmith_f_op_vec3_f32(abs(arg_0.c))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, -492f, 398f), _wgslsmith_f_op_vec3_f32(trunc(arg_0.c)), select(vec3<bool>(var_3.a, var_0.x, false), vec3<bool>(true, var_0.x, false), true))), !(arg_0.a.a | arg_0.a.a)))));
    return vec3<i32>(-(~abs(~42848i)), _wgslsmith_clamp_i32(~(-11066i >> (u_input.a.x % 32u)), reverseBits(abs(-32280i)), reverseBits(reverseBits(18439i))) >> (~var_3.c.x % 32u), -2147483647i);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    let var_0 = select(vec3<bool>(u_input.a.x < 1u, !(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(6475u, u_input.a.x, u_input.a.x, u_input.a.x)) >= min(27291u, u_input.a.x)), true), select(select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), all(vec4<bool>(false, true, false, true))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec3<bool>(!all(vec3<bool>(false, false, false)), true, !all(vec4<bool>(false, true, true, true))), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
    var var_1 = (abs(4294967295u) ^ u_input.a.x) | (52147u | u_input.a.x);
    var var_2 = ~(firstLeadingBit(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 7033u, u_input.a.x)))) << (~(u_input.a.x & u_input.a.x) % 32u));
    var var_3 = Struct_4(Struct_1(false, u_input.a.x, ~u_input.a.zx), 29971u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.wyz)))))));
    return arg_1.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    let var_0 = ~u_input.a.x;
    var var_1 = true;
    let var_2 = Struct_1(false, ~(~_wgslsmith_dot_vec3_u32(arg_0, arg_0 ^ arg_0)), select((select(arg_0.yz, vec2<u32>(43892u, 899u), vec2<bool>(false, false)) ^ ~arg_0.xx) >> (abs(firstTrailingBit(vec2<u32>(var_0, arg_0.x))) % vec2<u32>(32u)), abs(_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, var_0))), vec2<bool>(all(vec2<bool>(false, true)), true)));
    var_1 = var_2.c.x != 0u;
    var_1 = arg_1 >= func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-100f, 565f)), _wgslsmith_f_op_f32(927f * 467f), _wgslsmith_f_op_f32(round(1000f)), -1000f), vec4<f32>(-917f, _wgslsmith_f_op_f32(ceil(1515f)), _wgslsmith_f_op_f32(201f * -1405f), 690f)), Struct_2(reverseBits(func_3(Struct_4(Struct_1(false, 1u, vec2<u32>(u_input.a.x, 14479u)), 85910u, vec3<f32>(-134f, 464f, -927f))))), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 65700i), vec2<i32>(1i, -4873i), vec2<i32>(0i, 0i)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(countOneBits(var_2.c.x) & 1u, 76175u | (var_0 | 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(u_input.a.yz, vec2<u32>(var_0, var_2.c.x), var_2.a), abs(vec2<u32>(4294967295u, 30330u))), _wgslsmith_div_vec2_u32(vec2<u32>(46284u, var_2.c.x), vec2<u32>(arg_0.x, 51732u))), u_input.a.x), vec3<u32>(_wgslsmith_clamp_u32(min(arg_0.x, 1u), _wgslsmith_sub_u32(var_0, var_2.b), arg_0.x), var_2.b, ~firstLeadingBit(var_0)) << (abs(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, 37987u), vec3<u32>(29152u, var_0, u_input.a.x))) % vec3<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_1(arg_1.a.x != -5296i, ~(33051u | u_input.a.x), abs(_wgslsmith_div_vec2_u32(u_input.a.zx << (vec2<u32>(1u, 34065u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(49276u, u_input.a.x), vec2<u32>(u_input.a.x, 15297u))) << (u_input.a.xx % vec2<u32>(32u))));
    var var_1 = Struct_1(!(!(!var_0.a)), _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a | vec3<u32>(18073u, 4294967295u, var_0.b)), ~_wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) << (u_input.a.x % 32u), vec2<u32>(abs(~0u), abs(~32994u)));
    let var_2 = ~func_2(_wgslsmith_clamp_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, var_1.b, 64347u) >> (u_input.a % vec3<u32>(32u)), vec3<u32>(var_0.b, 143738u, var_1.b)) << (u_input.a % vec3<u32>(32u)), i32(-1i) * -2147483647i);
    var_1 = Struct_1(true, firstLeadingBit(var_1.b), select(var_1.c, vec2<u32>(var_0.b, 39770u), true));
    let var_3 = var_1.c;
    return StorageBuffer(vec2<u32>(var_1.c.x, firstLeadingBit(~u_input.a.x)), ~vec2<u32>(~abs(var_0.b), ~85220u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32((vec4<i32>(0i, arg_1.a.x, arg_0, arg_1.a.x) << (vec4<u32>(4294967295u, var_3.x, var_1.b, var_2) % vec4<u32>(32u))) ^ abs(vec4<i32>(arg_1.a.x, arg_0, arg_1.a.x, arg_1.a.x)), vec4<i32>(24470i, 2147483647i, ~arg_0, countOneBits(arg_1.a.x))), vec4<i32>(-1i, 1i, 1i | ~arg_1.a.x, arg_1.a.x)), ~vec3<u32>(~67476u >> (var_0.b % 32u), 74075u ^ _wgslsmith_clamp_u32(var_1.c.x, 66072u, var_2), ~var_2 | ~4294967295u), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(_wgslsmith_f_op_f32(step(-690f, -1267f)) >= _wgslsmith_f_op_f32(round(-1298f))) && !all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = func_1(2147483647i, Struct_2(vec3<i32>(-2147483647i, min(-2147483647i, max(-26529i, 28051i)), 1i)));
}

