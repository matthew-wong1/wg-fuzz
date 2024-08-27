struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, 600f), Struct_1(true, -391f), Struct_1(false, -1041f), Struct_1(false, 1401f), Struct_1(false, 799f), Struct_1(true, -749f), Struct_1(true, -338f), Struct_1(false, 543f), Struct_1(false, 495f), Struct_1(false, 102f), Struct_1(false, -102f));

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, false, true, false, true, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<Struct_1, 11>();
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, ~u_input.a), 11u)];
    var var_1 = 35378u;
    var_1 = u_input.a;
    var_1 = 28679u;
    return var_0.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(!(global1[_wgslsmith_index_u32(~(~u_input.a), 8u)] || func_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 11u)], 21363i, false, vec2<f32>(-946f, arg_2.b), 0i))), -2079f);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(~(-53969i), _wgslsmith_sub_i32(arg_1, 0i)) | _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -1i, 45076i, -2147483647i), vec4<i32>(2147483647i, 1i, arg_1, -1i)), ~1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1, abs(u_input.b)), -2533i)) | max(~(vec3<i32>(arg_1, arg_1, -1i) << (reverseBits(vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))), vec3<i32>(-countOneBits(7798i), 26920i, -127281i));
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(max(740f, -1836f)));
    global0 = array<Struct_1, 11>();
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 11u)];
    return Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(10583i, 0i, -2147483647i)), -reverseBits(vec3<i32>(20510i, 15690i, u_input.b))) <= -2147483647i, _wgslsmith_f_op_f32(-arg_2.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    let var_0 = reverseBits(abs(select(vec3<u32>(~u_input.a, 4294967295u >> (u_input.a % 32u), 13873u), vec3<u32>(abs(u_input.a), 4294967295u, u_input.a), true)));
    let var_1 = var_0.x >> (~0u % 32u);
    global1 = array<bool, 8>();
    return Struct_1(false, arg_1.b);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    let var_0 = func_4(_wgslsmith_add_vec2_i32(min(~select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(70349i, 9400i), arg_3.x), vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b)), ~_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 21675i), vec2<i32>(2147483647i, u_input.b)))), global0[_wgslsmith_index_u32(44800u, 11u)], func_2(!vec4<bool>(false, true, true, !arg_3.x), 1i, global0[_wgslsmith_index_u32(u_input.a, 11u)]), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b ^ u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, -1386i, -54610i), vec4<i32>(u_input.b, 2147483647i, 49917i, u_input.b))), ~u_input.b));
    global0 = array<Struct_1, 11>();
    var var_1 = ~(-(~vec2<i32>(u_input.b, 1i)) << (vec2<u32>(490u >> (u_input.a % 32u), ~_wgslsmith_mult_u32(u_input.a, 72649u)) % vec2<u32>(32u)));
    var_1 = vec2<i32>(-1i, 1i);
    var_1 = vec2<i32>(1i, 2147483647i);
    return abs(-var_1.x);
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> bool {
    let var_0 = vec3<f32>(654f, 498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_f32(1814f - _wgslsmith_f_op_f32(max(1066f, func_2(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(116u, 8u)], true, arg_1), -28786i, global0[_wgslsmith_index_u32(u_input.a, 11u)]).b)))));
    global1 = array<bool, 8>();
    let var_1 = vec2<u32>(0u, abs(_wgslsmith_sub_u32(98910u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(35558u, u_input.a))))));
    let var_2 = global0[_wgslsmith_index_u32(1045u, 11u)];
    global1 = array<bool, 8>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-u_input.b);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), 11u)], u_input.b, func_5(select(false, func_1(-883f, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true)) >= firstTrailingBit(-44036i), all(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)]))), global1[_wgslsmith_index_u32(5817u, 8u)], _wgslsmith_sub_vec2_i32(-vec2<i32>(-41199i, -19245i), firstTrailingBit(vec2<i32>(var_0, var_0))) & (-vec2<i32>(2147483647i, u_input.b) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-398f, 616f) * vec2<f32>(-969f, 447f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1408f, 387f)))))))), _wgslsmith_div_i32(-2147483647i, func_1(_wgslsmith_div_f32(132f, -128f), Struct_1(true, 198f), func_4(vec2<i32>(u_input.b, -50637i), Struct_1(true, -499f), global0[_wgslsmith_index_u32(u_input.a, 11u)], -1i), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]))) >> (u_input.a % 32u));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 11u)];
    var var_3 = u_input.b;
    let var_4 = _wgslsmith_div_u32(u_input.a, abs(reverseBits(~15216u)) ^ u_input.a);
    var_1 = Struct_2(Struct_1(select(var_1.a.a, var_2.a, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f * 247f))), _wgslsmith_mod_i32(abs(var_0), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, 0i), var_0))), var_1.a.b >= _wgslsmith_f_op_f32(-1805f + _wgslsmith_f_op_f32(f32(-1f) * -1952f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f - _wgslsmith_f_op_f32(var_1.a.b + var_2.b)))), _wgslsmith_mod_i32(-(i32(-1i) * -u_input.b), ~var_0));
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), -1401f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, var_1.a.b, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, var_1.a.b, 459f, -287f) * vec4<f32>(var_1.a.b, 955f, -2100f, 1948f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-634f, var_1.d.x, -410f, var_2.b), vec4<f32>(-1000f, var_1.d.x, var_2.b, var_2.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1065f, 1000f, -367f, var_1.d.x) + vec4<f32>(var_2.b, 1164f, -1033f, -2059f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b, var_2.b, 1719f, var_2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -603f, var_2.b, -1500f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -835f, 884f, -240f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, var_2.b, var_1.a.b, var_1.d.x), vec4<f32>(403f, -798f, var_1.a.b, var_2.b), false)))))), min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_4, var_4, u_input.a), vec4<u32>(13561u, u_input.a, 30492u, var_4)), u_input.a, var_4 | u_input.a) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(var_4, 4294967295u, 28478u), ~vec3<u32>(98457u, var_4, var_4)) % vec3<u32>(32u)), ~vec3<u32>(~1u, var_4, reverseBits(u_input.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, var_2.b, -431f, var_1.d.x) - vec4<f32>(var_1.d.x, -620f, var_1.a.b, -1270f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d.x, var_2.b, -1000f, var_1.a.b))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.d.x, 2665f, 516f, var_1.d.x)))))))));
}

