struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), u_input.a ^ vec3<u32>(32335u, 21855u, 8996u)) >> (~u_input.a % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.c.x, 1u, arg_2.c.x), vec3<u32>(abs(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, arg_2.c.x), arg_2.c.x | u_input.a.x)) >> (u_input.a % vec3<u32>(32u)));
    let var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1, -1608f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(-239f, arg_0), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2908f))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = !vec2<bool>(any(vec2<bool>(true, true)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(496f, -232f) * vec2<f32>(-1133f, 1000f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(124f * 752f), vec3<i32>(0i, 0i, 28445i), Struct_1(var_0, vec4<i32>(2147483647i, 0i, 2147483647i, 27544i), vec2<u32>(u_input.a.x, 47626u), vec3<i32>(-2147483647i, 2147483647i, 20214i)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-120f, 1051f)))))));
    let var_2 = Struct_2(Struct_1(!var_0, -abs(vec4<i32>(1i, 1i, 1i, 1i)), vec2<u32>(firstLeadingBit(1u), 1u) | ~_wgslsmith_add_vec2_u32(u_input.a.zz, u_input.a.xz), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, 22387i), ~vec3<i32>(-22939i, -2147483647i, 0i))), Struct_1(select(select(vec2<bool>(var_0.x, false), var_0, !vec2<bool>(false, var_0.x)), vec2<bool>(true, false), false), ~firstLeadingBit(firstLeadingBit(vec4<i32>(-17726i, 49552i, 42232i, -15086i))), select(~vec2<u32>(2868u, u_input.a.x), ~vec2<u32>(6817u, u_input.a.x) >> (~vec2<u32>(17543u, 11542u) % vec2<u32>(32u)), select(select(vec2<bool>(true, var_0.x), var_0, var_0.x), vec2<bool>(var_0.x, true), true)), -_wgslsmith_add_vec3_i32(select(vec3<i32>(0i, 8687i, 16900i), vec3<i32>(0i, 0i, -1i), true), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 21397i, 3827i), vec3<i32>(-1i, -21911i, 63136i)))), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), 262f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-940f - var_1.x), _wgslsmith_f_op_f32(abs(-225f)))))))), ~(_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), u_input.a.x) | u_input.a.x));
    let var_3 = var_2.a.b;
    let var_4 = -605f;
    return !var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, -31108i, 5313i, 27084i), max(vec4<i32>(2147483647i, arg_0.d.x, arg_1.b.d.x, arg_1.a.b.x), arg_0.b)), arg_0.b, _wgslsmith_mult_vec4_i32(~arg_0.b, vec4<i32>(12530i, 38942i, 2147483647i, arg_1.b.d.x) | vec4<i32>(arg_1.b.b.x, -49735i, -129756i, -45973i))), arg_1.a.b, abs(~arg_0.b));
    let var_1 = vec3<bool>(!(!arg_0.a.x), all(vec2<bool>(true, _wgslsmith_sub_u32(u_input.a.x, 4294967295u) > 28263u)), true);
    var var_2 = firstTrailingBit(_wgslsmith_add_i32(-_wgslsmith_add_i32(arg_0.d.x, arg_1.b.d.x), arg_1.a.d.x) & abs(_wgslsmith_div_i32(12i, arg_1.b.b.x | 1885i)));
    let var_3 = Struct_2(arg_1.a, Struct_1(!vec2<bool>(true, all(vec3<bool>(false, arg_1.a.a.x, true))), arg_0.b | -(~vec4<i32>(arg_0.d.x, -1i, var_0.x, arg_0.d.x)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.c.x, arg_1.d), vec2<u32>(0u, abs(u_input.a.x))), vec3<i32>(arg_1.b.d.x, -2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(10967i, arg_0.b.x), var_0.x))), -1068f, _wgslsmith_mod_u32(countOneBits(firstLeadingBit(u_input.a.x & 40723u)), reverseBits(~34366u)));
    let var_4 = arg_0.b.x;
    return any(vec2<bool>(-153i > -reverseBits(var_3.a.d.x), any(select(var_1.yz, !var_1.xx, true))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> bool {
    let var_0 = -firstTrailingBit(vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(0i, 0i, -2147483647i)), 1i));
    var var_1 = var_0;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(460f + 2079f), -116f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1413f - 944f) + _wgslsmith_div_f32(764f, 1065f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(-447f)), arg_3))), func_4(Struct_1(func_2(), vec4<i32>(32512i, 1i, var_0.x, var_0.x) & (vec4<i32>(var_0.x, var_0.x, 1i, var_0.x) ^ vec4<i32>(var_1.x, var_1.x, var_0.x, var_1.x)), arg_0.yz, vec3<i32>(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(var_1.x, var_1.x)), -var_0.x, -5346i)), Struct_2(Struct_1(vec2<bool>(arg_3, false), vec4<i32>(var_1.x, var_0.x, var_1.x, var_0.x) | vec4<i32>(var_1.x, 0i, 0i, var_0.x), vec2<u32>(arg_2.x, 18331u), -vec3<i32>(21687i, 13755i, -2147483647i)), Struct_1(!vec2<bool>(arg_3, arg_3), ~vec4<i32>(53i, var_1.x, var_1.x, 0i), vec2<u32>(u_input.a.x, arg_0.x), ~vec3<i32>(-1004i, var_0.x, -13909i)), _wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_mod_u32(countOneBits(arg_0.x), ~10815u))), all(vec3<bool>(arg_3, true, true)));
    let var_3 = arg_3;
    let var_4 = 2186u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), vec3<bool>(true, true, true), vec3<bool>(u_input.a.x >= u_input.a.x, true, false)));
    var_0 = select(vec3<bool>(true, true, true), vec3<bool>(all(!vec3<bool>(true, var_0.x, true)), var_0.x, !func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a, ~u_input.a.x, u_input.a, select(var_0.x, true, var_0.x))), !vec3<bool>(true, true, func_2().x));
    var_0 = !(!vec3<bool>(func_1(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~55240u, reverseBits(vec3<u32>(4294967295u, 7404u, u_input.a.x)), true), all(vec2<bool>(var_0.x, true)), false));
    var var_1 = ~(((vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 37906u, u_input.a.x, 1u)) & vec4<u32>(0u, 10580u, u_input.a.x, 76803u)) & _wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 29489u)), vec4<u32>(4294967295u, 50353u, u_input.a.x, u_input.a.x))) | ~(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 31410u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 64536u))) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(30679u, u_input.a.x, u_input.a.x, 52510u), vec4<u32>(88854u, 1u, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, 9430u, u_input.a.x, 0u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1061f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(499f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, 1607f))))), vec2<u32>(40260u, ~_wgslsmith_add_u32(~1u, u_input.a.x)), vec2<i32>(1i, 1i));
}

