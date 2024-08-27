struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 21> = array<f32, 21>(182f, -548f, 1267f, 296f, -456f, -1824f, -1188f, -1000f, -1020f, 107f, -623f, 1185f, 1586f, 807f, 1000f, 2214f, -1000f, 1266f, -1777f, 858f, -2567f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = array<f32, 21>();
    let var_0 = -(vec4<i32>(-1i, -1995i, _wgslsmith_sub_i32(arg_1, arg_1) & 13162i, 11628i) >> (vec4<u32>(~max(arg_3, 30171u), 1u, ~min(arg_2.a.x, 1u), arg_0) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(step(arg_2.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, -493f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f * 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.e, arg_2.e)) * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_2.a.x, 21u)], 1473f))))))));
    var var_2 = ~arg_2.a.x;
    let var_3 = vec2<i32>(arg_1, -var_0.x);
    return !arg_2.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    global1 = array<f32, 21>();
    var var_0 = true;
    var var_1 = Struct_1(~vec2<u32>(1u, 1u), vec3<bool>(func_3(~(~u_input.a), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-52077i, 0i, 0i, -1i), vec4<i32>(-1i, -2147483647i, -5712i, 1i))), Struct_1(~vec2<u32>(74177u, 0u), vec3<bool>(arg_0.a, arg_0.a, false), vec3<f32>(-385f, global1[_wgslsmith_index_u32(arg_1, 21u)], global1[_wgslsmith_index_u32(arg_3.x, 21u)]), abs(3315i), _wgslsmith_f_op_f32(f32(-1f) * -898f)), ~0u), arg_2, !(arg_2 || (u_input.a > arg_1))), vec3<f32>(-1635f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_3.x, 21u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3.x, 21u)]))), global1[_wgslsmith_index_u32(~(~arg_1), 21u)]), abs(select(1i << (_wgslsmith_mod_u32(0u, arg_1) % 32u), ~(i32(-1i) * -3197i), arg_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -728f))));
    global0 = u_input.a;
    var var_2 = Struct_1(min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_1), arg_3.yx) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(72980u, 52283u), vec2<u32>(arg_1, 1u)), firstTrailingBit(max(arg_3.yx, vec2<u32>(1u, arg_1)))) ^ _wgslsmith_mod_vec2_u32(arg_3.wy, ~(~arg_3.wz)), vec3<bool>(true, !arg_0.a, arg_2 | (_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(15548u, 21u)]) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_vec3_f32(floor(var_1.c)), -1i, var_1.c.x);
    return select(~vec2<u32>(~0u, 55006u), select(vec2<u32>(1u, ~15766u), abs(~var_1.a), true), vec2<bool>(false, var_2.b.x));
}

fn func_4(arg_0: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_5(~(~vec3<u32>(~arg_0.x, abs(arg_0.x), ~u_input.a)), Struct_1(func_2(Struct_2(true), abs(~4294967295u), ~u_input.a != ~0u, ~min(vec4<u32>(4294967295u, arg_0.x, u_input.a, 4294967295u), vec4<u32>(2493u, 1u, arg_0.x, u_input.a))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(12449u, 21u)], 895f, global1[_wgslsmith_index_u32(1u, 21u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, 1912f, global1[_wgslsmith_index_u32(arg_0.x, 21u)]))), vec3<f32>(-568f, global1[_wgslsmith_index_u32(~arg_0.x, 21u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 21u)], -859f))))), 1i >> (u_input.a % 32u), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(22394u << (countOneBits(u_input.a) % 32u), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_0.x, 21u)])))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(max(~0u, _wgslsmith_mod_u32(21952u, arg_0.x)), ~u_input.a), 21u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(4294967295u, 58865u), 21u)])));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_clamp_vec2_u32(arg_0, min(vec2<u32>(4294967295u, 4285u), vec2<u32>(23698u, var_0.a.x)), abs(vec2<u32>(11971u, arg_0.x))), select(var_0.b.b, vec3<bool>(var_0.b.b.x && true, var_0.b.b.x, all(vec2<bool>(var_0.b.b.x, false))), var_0.b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.e, -670f, global1[_wgslsmith_index_u32(arg_0.x, 21u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1266f, var_0.b.e, global1[_wgslsmith_index_u32(1u, 21u)]) * vec3<f32>(var_0.c, -386f, -136f)))), var_0.b.d, var_0.c), _wgslsmith_sub_i32(-min(-63210i >> (u_input.a % 32u), ~var_0.b.d), var_0.b.d), !vec4<bool>(var_0.b.b.x, !var_0.b.b.x, -var_0.b.d == ~var_0.b.d, func_2(Struct_2(true), var_0.a.x, var_0.b.b.x, vec4<u32>(74310u, u_input.a, 62573u, u_input.a)).x <= arg_0.x));
    let var_2 = Struct_4(~(-vec2<i32>(-1i, -var_1.b)), _wgslsmith_f_op_f32(var_1.a.e + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.e)), 267f)), Struct_3(Struct_1(func_2(Struct_2(false), arg_0.x, true, ~vec4<u32>(var_1.a.a.x, u_input.a, 0u, var_0.b.a.x)), var_1.a.b, _wgslsmith_f_op_vec3_f32(var_0.b.c * _wgslsmith_f_op_vec3_f32(exp2(var_1.a.c))), _wgslsmith_dot_vec4_i32(vec4<i32>(6399i, var_0.b.d, 14345i, 0i), vec4<i32>(var_1.a.d, 2147483647i, 1i, var_1.a.d)) << (27181u % 32u), 2431f), -(~1i) & firstTrailingBit(firstLeadingBit(40204i)), select(!select(var_1.c, var_1.c, vec4<bool>(var_1.c.x, false, true, var_1.a.b.x)), select(!var_1.c, var_1.c, !vec4<bool>(true, false, true, var_0.b.b.x)), true)), max(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(countOneBits(-5943i), countOneBits(var_1.b)), min(var_1.a.d | var_1.b, 21200i), ~9113i), var_0.b.d), Struct_3(var_1.a, -1i, select(var_1.c, var_1.c, true)));
    var var_3 = Struct_2(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c.a.e, -406f)) + var_0.b.c.x) <= _wgslsmith_f_op_f32(-537f + 672f), (_wgslsmith_f_op_f32(trunc(-523f)) >= _wgslsmith_f_op_f32(var_0.b.c.x + -1408f)) & var_0.b.b.x, var_1.c.x));
    var var_4 = Struct_3(Struct_1(vec2<u32>(var_0.a.x, ~(var_0.a.x & arg_0.x)), select(vec3<bool>(any(vec3<bool>(var_0.b.b.x, true, true)), any(var_0.b.b), any(var_0.b.b.zx)), select(var_0.b.b, vec3<bool>(true, var_2.e.a.b.x, false), vec3<bool>(var_1.a.b.x, true, false)), !select(var_2.c.c.zyz, vec3<bool>(false, false, var_2.e.c.x), var_1.a.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(911u, 21u)], 1363f, 248f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -601f), -213f, -1286f)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-42625i, 61104i, 0i, var_2.e.b), vec4<i32>(abs(var_1.a.d), var_2.e.a.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.d, 1i, 5711i), vec3<i32>(var_1.b, -31498i, var_2.c.b)), var_0.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9401u, 21u)]))), var_2.a.x, var_2.c.c);
    return -(~var_2.a ^ ~(~(-vec2<i32>(var_4.a.d, -73864i))));
}

fn func_1() -> i32 {
    global1 = array<f32, 21>();
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(func_4(select(~vec2<u32>(u_input.a, 60484u), func_2(Struct_2(true), 1u, true, vec4<u32>(u_input.a, 7356u, 31264u, u_input.a)), any(vec3<bool>(true, false, true)))), vec2<i32>(-2147483647i, abs(-43313i))), firstTrailingBit(-30145i), ~53730i);
    let var_1 = reverseBits(-2147483647i);
    var var_2 = ~(i32(-1i) * -46231i);
    let var_3 = ~abs(select(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -25174i, var_1), vec3<i32>(var_0, -29509i, 3537i)), vec3<i32>(var_0, _wgslsmith_add_i32(var_0, var_0), var_1 >> (50141u % 32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))));
    return -28662i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(select(1i, 30339i, true), 1i), max(2147483647i, -6263i), -2147483647i) & vec3<i32>(~(i32(-1i) * -9348i), abs(i32(-1i) * -2147483647i), func_1() << ((u_input.a | 4294967295u) % 32u)), max(vec3<i32>(1i, _wgslsmith_clamp_i32(1i, firstLeadingBit(-2147483647i), select(-1i, 1i, false)), abs(0i)), -(~abs(vec3<i32>(1i, 1i, 31341i)))));
    var var_1 = firstLeadingBit(vec3<u32>(u_input.a, 3625u, 45328u));
    global1 = array<f32, 21>();
    var_1 = _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_1.x, ~4294967295u ^ u_input.a, 1u)), vec3<u32>(var_1.x, 5335u, 4294967295u));
    let var_2 = -2147483647i;
    var var_3 = Struct_3(Struct_1(vec2<u32>(~var_1.x, _wgslsmith_clamp_u32(0u, u_input.a, var_1.x)), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(580f, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]))), vec3<f32>(global1[_wgslsmith_index_u32(3593u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(var_1.x, 21u)]), vec3<bool>(false, false, false))), vec3<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 21u)]), _wgslsmith_f_op_f32(step(-940f, -665f))))), var_0.x, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(min(1u, 0u), 21u)], global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_1.x, u_input.a), 21u)]))), -var_2, !vec4<bool>(!any(vec2<bool>(true, false)), true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~firstTrailingBit(-reverseBits(-21146i)), ~abs(var_2));
}

