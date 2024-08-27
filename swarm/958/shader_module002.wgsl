struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(31560i, 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    global0 = vec2<i32>(-18584i, ~(~_wgslsmith_clamp_i32(1i, -1i, u_input.a)));
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(29100i, global0.x), firstTrailingBit(-42037i))), vec2<i32>(u_input.a, -(u_input.a << (12524u % 32u)))), max(vec2<i32>(-1i) * -(vec2<i32>(1181i, 2147483647i) & vec2<i32>(0i, u_input.a)), firstLeadingBit(-vec2<i32>(u_input.a, 19151i) ^ -vec2<i32>(global0.x, 0i))));
    var var_0 = -abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, -19394i), vec2<i32>(-17745i, u_input.a)) | ~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, 4971i)));
    global0 = ~reverseBits(-(-vec2<i32>(48169i, global0.x) << (vec2<u32>(8855u, 36451u) % vec2<u32>(32u))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2669f, _wgslsmith_f_op_f32(300f - -285f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(987f + 863f))))));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> vec2<i32> {
    let var_0 = func_3();
    let var_1 = abs(abs(min(countOneBits(vec4<i32>(-16268i, 16575i, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, u_input.a, global0.x, global0.x), vec4<i32>(global0.x, u_input.a, global0.x, global0.x))) & vec4<i32>(1i, -20267i, _wgslsmith_add_i32(global0.x, 5073i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 11207i, global0.x, global0.x), vec4<i32>(u_input.a, global0.x, 16890i, global0.x)))));
    let var_2 = vec3<u32>(~0u, 10002u, ~reverseBits(select(firstTrailingBit(0u), countOneBits(1u), true)));
    let var_3 = Struct_1(arg_0.xwx);
    global0 = ~(-var_1.zz);
    return vec2<i32>(select(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, global0.x) & -1i, var_1.x), -1i, false), -1i | _wgslsmith_dot_vec3_i32(var_1.wyz, max(vec3<i32>(global0.x, 0i, 1i) | var_1.xyx, var_1.yxw & vec3<i32>(-2147483647i, -11275i, 39183i))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1766f)), 611f, arg_0.c.a.x, -792f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, arg_0.c.a.x, arg_0.c.a.x, -246f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2026f, -502f, arg_0.a.x, 622f), vec4<f32>(-447f, 143f, 303f, -1000f)), all(vec2<bool>(true, true)))) * vec4<f32>(arg_0.a.x, arg_0.c.a.x, _wgslsmith_f_op_f32(max(arg_0.c.a.x, arg_0.a.x)), arg_0.c.a.x))), true && arg_1);
    global0 = vec2<i32>(global0.x, min(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(41356i, u_input.a) & vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(global0.x, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -9214i) & vec2<i32>(1i, global0.x), ~vec2<i32>(-2147483647i, global0.x))), _wgslsmith_sub_i32(~1i, abs(-1i))));
    global0 = ~_wgslsmith_clamp_vec2_i32(min(vec2<i32>(-1662i, 11129i) ^ ~vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)) & _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 82846i), vec2<i32>(18363i, u_input.a)), vec2<i32>(4922i, -1414i) | vec2<i32>(-1066i, global0.x)), -vec2<i32>(firstTrailingBit(u_input.a), -1i));
    var var_0 = arg_0;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.c.a.x)), -1471f, -1024f))), ~arg_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1188f, var_0.a.x, arg_0.c.a.x), vec3<f32>(arg_0.a.x, -1000f, arg_0.a.x)), vec3<f32>(var_0.a.x, var_0.c.a.x, var_0.c.a.x)))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), 4294967295u, arg_0.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<bool> {
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(~u_input.a, -u_input.a, ~global0.x), _wgslsmith_mod_i32(global0.x, -1i) | u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), ~vec2<i32>(u_input.a, -7394i)) << (vec2<u32>(~39727u, 29755u) % vec2<u32>(32u))) >> (vec2<u32>(~4294967295u, arg_0.x) % vec2<u32>(32u));
    var var_0 = func_1(arg_2, true).c;
    var var_1 = arg_2.c;
    var var_2 = u_input.a >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(arg_1, arg_1), vec4<u32>(u_input.b.x, 79378u, arg_1.x, 1u)), vec4<u32>(_wgslsmith_mult_u32(0u, 6654u), arg_2.b, min(4294967295u, arg_2.b), 58569u))) % 32u);
    global0 = vec2<i32>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-10987i, -2147483647i), vec2<i32>(50201i, global0.x))), firstTrailingBit(global0.x)) >> (select(abs(select(vec2<u32>(u_input.b.x, 9204u), u_input.b.zx, all(vec3<bool>(false, false, true)))), arg_1.xy, select(vec2<bool>(true, var_1.a.x != -228f), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true))) % vec2<u32>(32u));
    return select(!vec3<bool>(true, (arg_0.x < u_input.b.x) & true, true), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!func_4(vec3<u32>(u_input.b.x, 37413u, 13496u), u_input.b, func_1(Struct_2(vec3<f32>(704f, 1130f, 369f), 0u, Struct_1(vec3<f32>(-1918f, 560f, 150f))), true))));
    let var_1 = !(!vec3<bool>(!any(vec2<bool>(var_0, true)), all(!vec4<bool>(var_0, var_0, var_0, false)), !all(vec2<bool>(var_0, false))));
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(~(~vec4<i32>(2147483647i, u_input.a, u_input.a, 0i))), -select(~(~vec4<i32>(global0.x, 128i, 2147483647i, 40046i)), countOneBits(~vec4<i32>(u_input.a, global0.x, -1i, -1i)), func_4(u_input.b.xxy, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), func_1(Struct_2(vec3<f32>(-884f, -279f, -1693f), 23064u, Struct_1(vec3<f32>(338f, -1160f, -1656f))), false)).x));
    var var_3 = select(u_input.b, u_input.b, (all(!var_1) && (var_0 && var_1.x)) && (var_2.x > ~1i));
    let var_4 = ~43911i;
    var var_5 = func_1(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(591f, -1000f), _wgslsmith_f_op_f32(-2364f + 1103f), func_1(Struct_2(vec3<f32>(-1000f, 441f, -1551f), 4294967295u, Struct_1(vec3<f32>(546f, -1598f, -243f))), false).c.a.x) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1407f, 161f, 636f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1716f, -663f, 288f) - vec3<f32>(110f, -1265f, -1000f))))), 4294967295u, func_1(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-115f, 1000f, -230f))), 1u, Struct_1(vec3<f32>(1039f, 1777f, 1059f))), !(!var_0)).c), all(!vec4<bool>(var_0, var_1.x, false, var_1.x == var_1.x))).c;
    var_3 = ~(vec4<u32>(98849u, ~select(4294967295u, 4605u, var_0), _wgslsmith_mod_u32(u_input.b.x, 100942u), 31818u) << (min(u_input.b, vec4<u32>(45111u, 90819u, _wgslsmith_div_u32(4294967295u, u_input.b.x), u_input.b.x)) % vec4<u32>(32u)));
    var var_6 = !select(!select(select(vec4<bool>(var_0, false, var_0, var_1.x), vec4<bool>(var_1.x, false, true, var_0), vec4<bool>(var_0, var_0, false, true)), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, true, false, true), vec4<bool>(var_0, true, true, false)), select(var_1.x, true, var_1.x)), !vec4<bool>(true, any(var_1), select(true, false, var_1.x), var_0), select(!vec4<bool>(true, false, true, var_0), vec4<bool>(true, false, false & var_0, false), true));
    var var_7 = _wgslsmith_sub_u32(~36792u, firstLeadingBit(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(select(~(u_input.b.yy >> (u_input.b.yy % vec2<u32>(32u))), select(vec2<u32>(u_input.b.x, var_3.x), _wgslsmith_mult_vec2_u32(var_3.yy, u_input.b.zw), var_1.xy), !var_1.x), min(vec2<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 1u), ~9732u), ~firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)))), -(func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_5.a.x, 2352f, 917f, -902f))), var_6.x & var_1.x).x & global0.x), _wgslsmith_mult_u32(~var_3.x, reverseBits(func_1(func_1(Struct_2(vec3<f32>(113f, -511f, 1040f), u_input.b.x, Struct_1(vec3<f32>(var_5.a.x, 1603f, 371f))), true), all(vec4<bool>(false, var_0, var_0, var_6.x))).b)), -min(vec3<i32>(var_4, _wgslsmith_add_i32(4717i, 0i), reverseBits(-18825i)), var_2.wxw), var_5.a.xz);
}

