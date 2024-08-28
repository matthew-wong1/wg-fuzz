struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global0 = array<vec2<u32>, 32>();
    var var_0 = ~max(1u, 20623u) & u_input.b;
    var_0 = u_input.b;
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(-636f))) - vec3<f32>(905f, _wgslsmith_f_op_f32(f32(-1f) * -606f), -768f)), arg_3)), arg_2.a, 1i, arg_3.zy);
    var var_2 = min(34326u & (u_input.b ^ _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(29987u, 32u)], ~global0[_wgslsmith_index_u32(u_input.b, 32u)])), u_input.b);
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(4294967295u);
    let var_1 = select(vec2<u32>(func_3(vec3<i32>(arg_1.d, u_input.a, 1i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(24736u, 77309u, 0u), vec3<u32>(4294967295u, u_input.b, 25023u)) % vec3<u32>(32u)), select(arg_1.a, all(vec4<bool>(true, false, false, false)), !arg_1.c), arg_1, arg_1.b), u_input.b), ~_wgslsmith_div_vec2_u32(min(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]), ~global0[_wgslsmith_index_u32(12561u, 32u)]) << (_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(~1u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]) % vec2<u32>(32u)), vec2<bool>((i32(-1i) * -u_input.a) > _wgslsmith_mod_i32(abs(arg_1.d), abs(arg_1.d)), !arg_1.c));
    var var_2 = 1u;
    var_2 = var_1.x;
    var var_3 = ~0u;
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = array<vec2<u32>, 32>();
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(func_3(vec3<i32>(_wgslsmith_mult_i32(arg_1.d, u_input.a), countOneBits(0i), u_input.a), !(u_input.a == arg_1.d), arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(1332f, -205f, arg_0) - _wgslsmith_f_op_vec3_f32(step(arg_1.b, arg_1.b)))), ~select(u_input.b, firstLeadingBit(u_input.b), arg_1.a && false), reverseBits(4294967295u), 63961u), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 34470u, 1u), ~vec4<u32>(u_input.b, u_input.b, 89066u, 1u)) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 69084u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, 40443u)), vec4<u32>(0u, 19299u, 5697u, u_input.b), vec4<bool>(true, arg_1.c, false, arg_1.a)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), arg_0)), arg_1.e));
    let var_2 = Struct_1(!(!all(!vec3<bool>(false, false, arg_1.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 824f, func_2(2194f, Struct_1(arg_1.a, vec3<f32>(-446f, -124f, -1354f), false, -3839i, vec2<f32>(915f, arg_1.b.x))).e.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, arg_0), vec3<f32>(arg_0, arg_1.b.x, var_1.x))))), arg_1.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, -1000f, 1014f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.b) + arg_1.b), false))), true, _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_mod_i32(-51635i, arg_1.d), arg_1.d), -firstLeadingBit(vec2<i32>(1i, 1i))), -(~min(vec2<i32>(arg_1.d, arg_1.d), vec2<i32>(2147483647i, -6156i)))), _wgslsmith_f_op_vec2_f32(arg_1.b.zy - var_1));
    let var_3 = arg_1;
    return 38725i & arg_1.d;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_clamp_i32(~firstLeadingBit(abs(2147483647i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(-vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, -14367i)), -(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, 38972i, u_input.a)))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -239f), func_2(_wgslsmith_f_op_f32(-arg_1.x), Struct_1(arg_0, arg_1, arg_0, -2147483647i, arg_1.xx))) << (~u_input.b % 32u));
    var_0 = ~(-(~_wgslsmith_sub_i32(1i, 34767i << (1u % 32u))));
    var_0 = max(u_input.a, abs(firstTrailingBit(u_input.a)) << (~(~(u_input.b ^ 1u)) % 32u));
    global0 = array<vec2<u32>, 32>();
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + 223f), -351f, -234f) - vec3<f32>(_wgslsmith_f_op_f32(floor(1586f)), _wgslsmith_f_op_f32(min(962f, 456f)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x)))), !all(!(!vec4<bool>(arg_0, false, false, false))), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx)));
    return (arg_0 | false) && (31847i < -var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f + -652f), _wgslsmith_f_op_f32(step(1231f, 1166f))), -1134f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-686f))), _wgslsmith_f_op_f32(trunc(1050f)), false))) < -1061f;
    let var_1 = vec2<bool>(!all(vec4<bool>(true, true, true, true)), func_1(true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -833f), -1048f, 169f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(984f, 1000f, 175f) - _wgslsmith_div_vec3_f32(vec3<f32>(392f, 986f, -690f), vec3<f32>(-205f, 942f, 578f)))))));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(func_3(abs(vec3<i32>(u_input.a, u_input.a, -23745i)), !var_1.x, func_2(222f, Struct_1(var_1.x, vec3<f32>(1113f, 1425f, -1068f), var_1.x, 2147483647i, vec2<f32>(-1144f, 1008f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1373f, -649f))), min(~u_input.b, firstLeadingBit(u_input.b))) & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 1u, u_input.b) | vec4<u32>(4294967295u, 1u, 38848u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), ~u_input.b, u_input.b, u_input.b ^ 0u)), u_input.b, 4805u, abs(select(~(u_input.b ^ u_input.b), u_input.b & 9364u, true)));
    let var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f + 1838f))) + func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)), Struct_1(all(vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-414f, 1785f, 467f)), true, u_input.a << (16317u % 32u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(2443f, -401f))))).b.x), func_2(218f, Struct_1(any(select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1190f, -380f, -294f), vec3<f32>(1102f, -1369f, 1776f), vec3<bool>(false, false, false))) * vec3<f32>(-1000f, 1000f, 758f)), true, u_input.a, vec2<f32>(_wgslsmith_f_op_f32(step(335f, -811f)), 1500f))));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.e.x, var_4.b.x))) - vec2<f32>(958f, _wgslsmith_f_op_f32(round(var_3.e.x))))), 3147i, u_input.b, var_2.x);
}

