struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1143f, 2013f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1781f, -274f)), _wgslsmith_f_op_f32(f32(-1f) * -1243f), true))), _wgslsmith_f_op_f32(max(1f, 735f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1004f, 1111f, false)), -1093f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-327f + 1000f) - -1614f))));
    var var_1 = Struct_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14802u, 1u, 19629u), vec4<u32>(0u, 35716u, 39097u, u_input.b.x) >> (vec4<u32>(14599u, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u))) & 10440u);
    let var_2 = countOneBits(~abs(~vec4<u32>(var_1.a, u_input.b.x, u_input.a, 7029u) << ((vec4<u32>(0u, var_1.a, var_1.a, 40270u) << (vec4<u32>(var_1.a, 4294967295u, u_input.a, var_1.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = Struct_4(~(~(~26320u) & _wgslsmith_clamp_u32(u_input.b.x, var_2.x, 42330u << (1u % 32u))));
    return Struct_4(~u_input.b.x);
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-525f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-878f, _wgslsmith_f_op_f32(step(707f, -1123f))) - 360f)) * _wgslsmith_f_op_f32(floor(1772f)));
    let var_1 = -880f;
    let var_2 = i32(-1i) * -1i;
    let var_3 = !(!select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, all(vec4<bool>(false, false, false, false))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))));
    var var_4 = var_0;
    return ~firstLeadingBit(countOneBits(select(select(vec2<i32>(var_2, var_2), vec2<i32>(-80313i, var_2), var_3.x), abs(vec2<i32>(2147483647i, 2147483647i)), all(var_3.xy))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> i32 {
    let var_0 = arg_2;
    let var_1 = true;
    var var_2 = Struct_2(414f, max(58700u, ~u_input.a) != _wgslsmith_add_u32(_wgslsmith_sub_u32(select(32295u, 49961u, var_1), abs(arg_1.a)), arg_1.a));
    let var_3 = var_2.a;
    var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1337f), var_1);
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = firstTrailingBit(u_input.b);
    var_0 = _wgslsmith_add_vec2_u32(~(u_input.b >> ((u_input.b >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u))), ~vec2<u32>(_wgslsmith_add_u32(u_input.b.x << (var_0.x % 32u), ~var_0.x), ~u_input.a));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, 30969i), _wgslsmith_div_i32(36713i, -1i), -1i), max(vec3<i32>(9430i, 0i, -1i), select(vec3<i32>(45283i, 2983i, -1i), vec3<i32>(43693i, 5126i, 2147483647i), vec3<bool>(true, false, true)))), 0i), 42851i, 4132i);
    var_1 = -_wgslsmith_mult_i32(-(i32(-1i) * -56509i), ~func_4(Struct_4(1u), func_2(vec3<i32>(2147483647i, 33093i, 270i), 54388i), func_3()));
    var var_2 = !(!vec3<bool>(false, all(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)), arg_1.b));
    return Struct_3(vec2<u32>(23755u, select(var_0.x, u_input.b.x, _wgslsmith_mod_u32(var_0.x, var_0.x) == 4294967295u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -1008f, -755f, 1000f)))))), Struct_2(-1130f, false));
    let var_1 = false;
    let var_2 = func_2(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 1i, 1i), 0i >> (1u % 32u)), -3454i, _wgslsmith_add_i32(firstLeadingBit(66644i), abs(-7212i))) >> (arg_1.zyx % vec3<u32>(32u)), 28328i);
    let var_3 = -(0i | ~firstTrailingBit(-39919i));
    var var_4 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, 1169f, -628f, 860f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-699f, -1280f, -1000f, 475f)))), vec4<f32>(_wgslsmith_f_op_f32(min(430f, 876f)), _wgslsmith_f_op_f32(select(-1000f, 293f, var_1)), -1000f, _wgslsmith_f_op_f32(min(-1455f, -1284f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-805f, -1228f, -137f, -223f), vec4<f32>(948f, 3236f, 1048f, -1824f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1632f, -1727f, -900f, 708f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2795f, 1225f, -853f, -1030f))), _wgslsmith_div_vec4_f32(vec4<f32>(799f, 696f, -1000f, -196f), vec4<f32>(1690f, -653f, -1304f, 690f)))))), Struct_2(154f, var_1));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(-1i, _wgslsmith_mult_i32(22274i, select(-41258i, 0i, true)) | -1i, ~func_5(func_1(vec4<f32>(-850f, -866f, -153f, 356f), Struct_2(1000f, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x), vec4<u32>(81244u, 4294967295u, u_input.a, 63848u)), select(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.b.x), vec4<bool>(false, true, false, false))), _wgslsmith_sub_i32(-9358i, -_wgslsmith_mod_i32(0i, -2147483647i))), vec4<i32>(~reverseBits(50164i), _wgslsmith_dot_vec3_i32(~vec3<i32>(673i, 0i, -37344i), abs(vec3<i32>(2147483647i, 0i, 27838i))), select(~9537i, _wgslsmith_dot_vec2_i32(vec2<i32>(10645i, 2147483647i), vec2<i32>(28676i, -53171i)), true), reverseBits(-2147483647i) >> (countOneBits(u_input.a) % 32u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), 0u, u_input.b.x, abs(1u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.a, 14129u, 4294967295u))) % vec4<u32>(32u)), true);
    var_0 = ~reverseBits(~_wgslsmith_mod_vec4_i32(max(vec4<i32>(-7134i, -2147483647i, 0i, -13652i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<i32>(-32975i, var_0.x, 0i, var_0.x)));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, 1975f, -2136f, -1288f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-342f, -1000f, 1619f, -2063f), vec4<f32>(1000f, 249f, -185f, -557f), true))))), Struct_2(-585f, 1i != var_0.x));
    let var_2 = false;
    var_0 = vec4<i32>(max(~(~var_0.x) << (4294967295u % 32u), -var_0.x), 1i, _wgslsmith_clamp_i32(-1i, 0i, 48583i), func_5(Struct_3(u_input.b), vec4<u32>(~_wgslsmith_clamp_u32(22045u, u_input.b.x, var_1.a.x), ~u_input.a, abs(71505u), var_1.a.x), countOneBits(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, u_input.a, u_input.a, var_1.a.x), vec4<u32>(var_1.a.x, u_input.b.x, 8487u, u_input.a))))));
    var var_3 = vec3<i32>(~select(~(-var_0.x), i32(-1i) * -1i, !(!var_2)), -5794i, max(~_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x) << (~4294967295u % 32u), _wgslsmith_mod_i32(-1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2013f, 667f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-265f, -876f)))))));
}

