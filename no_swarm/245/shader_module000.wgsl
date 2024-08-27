struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 32> = array<f32, 32>(227f, -513f, 246f, 1660f, 1176f, 1317f, -969f, 228f, 987f, 187f, -879f, -1066f, 1644f, 456f, 307f, 265f, 1811f, 786f, 139f, 597f, -119f, 1696f, -316f, 424f, -689f, 888f, 869f, -1026f, 291f, 729f, 840f, -601f);

var<private> global3: bool = false;

var<private> global4: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(~(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global1.a, -2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, global1.c), vec2<i32>(2147483647i, -8552i))) ^ countOneBits(71677i ^ global1.a)), ~arg_0, 14414i, global1.d);
    let var_1 = select(true, !(_wgslsmith_f_op_f32(ceil(-1539f)) > 315f), !all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_2 = select(select(!(!select(vec2<bool>(false, true), vec2<bool>(global1.d, var_1), global1.d)), vec2<bool>(all(select(vec2<bool>(global1.d, true), vec2<bool>(false, false), vec2<bool>(global1.d, false))), all(vec4<bool>(true, false, global1.d, var_1)) | (global0.x <= u_input.b)), !var_1 & all(vec2<bool>(var_0.d, global1.d))), select(vec2<bool>(var_0.d, true), !vec2<bool>(true, var_0.d), var_0.d && true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), var_0.d)));
    return global1.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-941f, global4.x) + vec2<f32>(-816f, 718f))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(71911u, 32u)] - 1099f)), arg_1.d)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, -751f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(574f, global4.x), vec2<f32>(-1437f, global4.x))), !vec2<bool>(arg_0.d, arg_0.d)))))));
    global3 = arg_0.d;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))))), -(~(~vec4<i32>(u_input.e, 1i, arg_0.a, arg_3.x))) & vec4<i32>(u_input.d, _wgslsmith_add_i32(0i, -110i), ~func_3(arg_1.b), _wgslsmith_div_i32(global1.a & u_input.c, -1i | arg_3.x)));
    global3 = global1.d;
    let var_2 = arg_1;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    var var_0 = vec2<u32>(~max(max(4294967295u, _wgslsmith_mod_u32(45907u, u_input.b)), 67522u), arg_2.b.x);
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(global4.x, _wgslsmith_f_op_f32(628f + 465f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) - global4.x), _wgslsmith_f_op_f32(f32(-1f) * -2031f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 2031f, global2[_wgslsmith_index_u32(2620u, 32u)]) * vec3<f32>(global2[_wgslsmith_index_u32(48903u, 32u)], 1035f, global2[_wgslsmith_index_u32(global0.x, 32u)])) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(48101u, 32u)], -1000f, global4.x), vec3<f32>(global4.x, -290f, -1054f), arg_2.d)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, global2[_wgslsmith_index_u32(global0.x, 32u)], global2[_wgslsmith_index_u32(36721u, 32u)]))))))));
    var_0 = global1.b.wy;
    global3 = func_2(func_2(Struct_1(0i, ~vec4<u32>(arg_2.b.x, var_0.x, 1u, global1.b.x) ^ ~global1.b, func_2(Struct_1(u_input.d, arg_0.b, -1i, true), Struct_1(global1.a, vec4<u32>(0u, 1u, arg_0.b.x, u_input.a.x), 2147483647i, true), global4.x, vec3<i32>(arg_2.a, global1.a, u_input.e)).a >> (4294967295u % 32u), !arg_1), Struct_1(_wgslsmith_div_i32(u_input.e, -8844i) << (1u % 32u), firstTrailingBit(arg_2.b), 0i, arg_2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1059f + global4.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f + global2[_wgslsmith_index_u32(var_0.x, 32u)]))), vec3<i32>(min(i32(-1i) * -2147483647i, ~arg_0.a), u_input.d, ~(-46837i))), Struct_1(countOneBits(_wgslsmith_mult_i32(0i, 1i)), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(global1.b, arg_0.b, vec4<u32>(global1.b.x, 0u, arg_2.b.x, global0.x)), arg_2.b), -(-u_input.c | _wgslsmith_mod_i32(u_input.d, -6834i)), true), _wgslsmith_f_op_f32(-global4.x), -firstLeadingBit(firstTrailingBit(select(vec3<i32>(global1.a, arg_0.c, 0i), vec3<i32>(-2266i, arg_2.c, 81996i), arg_2.d)))).d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(34172u, 32u)]), -1000f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(global4.x, 1147f)))))));
    return Struct_3(Struct_2(254f, vec4<i32>(~arg_0.c, -1i, -20836i, ~(~(-13825i)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.zx, vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], 1913f)) - _wgslsmith_f_op_vec2_f32(trunc(var_1.xz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, global4.x) - var_1.xy)))))), firstLeadingBit(-19855i) | _wgslsmith_dot_vec4_i32(~(vec4<i32>(7709i, 40329i, -45071i, global1.c) >> (global1.b % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(arg_0.a, 1768i), arg_2.c | arg_0.c, 1i, countOneBits(-2147483647i))), ~(~(~arg_2.b.x)) ^ _wgslsmith_add_u32(abs(arg_0.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0.b.x), vec2<u32>(global0.x, arg_2.b.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(29589u), ~global1.b.x), vec2<u32>(global0.x, ~u_input.a.x)), 32u)], vec4<i32>(-25352i, ~(~global1.c), ~u_input.e, -14175i)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(1u, 32u)])))), global4.x)), global2[_wgslsmith_index_u32(global0.x, 32u)]), arg_1.c, 41185u);
    var var_1 = func_4(arg_1, !(select(arg_2.x, 0u, false) != global1.b.x) | (var_0.a.b.x < _wgslsmith_sub_i32(firstLeadingBit(-1421i), max(-1i, global1.c))), func_2(arg_1, arg_1, 1745f, -_wgslsmith_mod_vec3_i32(-var_0.a.b.wwy, reverseBits(arg_0))));
    global1 = func_2(func_2(Struct_1(reverseBits(_wgslsmith_clamp_i32(-1i, var_1.c, u_input.c)), _wgslsmith_mod_vec4_u32(global1.b | vec4<u32>(global0.x, arg_2.x, 0u, var_0.d), _wgslsmith_add_vec4_u32(arg_1.b, arg_1.b)), var_1.c, any(vec4<bool>(false, arg_1.d, false, true)) & (global0.x == global1.b.x)), func_2(func_2(Struct_1(1i, global1.b, arg_1.a, true), Struct_1(26866i, global1.b, 45785i, true), -2018f, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0.x, global1.c), vec3<i32>(var_0.a.b.x, arg_0.x, -1i))), Struct_1(~70642i, _wgslsmith_mod_vec4_u32(vec4<u32>(10802u, arg_1.b.x, 0u, 116338u), vec4<u32>(var_1.d, var_0.d, arg_2.x, var_1.d)), abs(390i), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.a))), select(-vec3<i32>(arg_0.x, -54868i, u_input.e), select(vec3<i32>(global1.c, var_0.c, var_1.c), vec3<i32>(-2147483647i, 32229i, var_0.c), global1.d), select(vec3<bool>(true, arg_1.d, arg_1.d), vec3<bool>(arg_1.d, false, arg_1.d), vec3<bool>(false, global1.d, global1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-389f - 886f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -var_0.a.b.ywy), func_2(arg_1, Struct_1(-(~global1.a), reverseBits(~global1.b), func_2(func_2(Struct_1(var_0.c, vec4<u32>(3993u, var_0.d, u_input.b, arg_2.x), 2147483647i, global1.d), arg_1, global4.x, vec3<i32>(4374i, arg_1.a, -65879i)), Struct_1(arg_1.c, arg_1.b, u_input.e, global1.d), 1306f, arg_0).c, arg_1.d), global2[_wgslsmith_index_u32(20933u, 32u)], vec3<i32>(-9144i, 1i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, -329f)))), ~(~countOneBits(var_0.a.b.xxw >> (arg_2 % vec3<u32>(32u)))));
    var_1 = func_4(func_2(arg_1, func_2(arg_1, Struct_1(-1i, abs(vec4<u32>(50999u, 1u, 0u, arg_1.b.x)), arg_1.a, true), var_1.a.a, firstTrailingBit(vec3<i32>(var_1.a.b.x, global1.c, var_1.c) & var_1.a.b.zyx)), -156f, var_0.a.b.xxy), global1.d, func_2(func_2(Struct_1(~global1.a, global1.b, reverseBits(var_1.a.b.x), arg_1.d), func_2(func_2(Struct_1(-1i, global1.b, 0i, false), arg_1, 980f, var_0.a.b.xyw), Struct_1(-2147483647i, vec4<u32>(14336u, 1134u, 1u, 48899u), 1i, true), global2[_wgslsmith_index_u32(14639u, 32u)], vec3<i32>(var_1.a.b.x, var_0.c, -39793i)), _wgslsmith_f_op_f32(420f - global2[_wgslsmith_index_u32(~var_1.d, 32u)]), vec3<i32>(7948i, 28783i, -global1.c)), arg_1, -1165f, -vec3<i32>(var_0.a.b.x, 2147483647i, arg_1.c) << (arg_2 % vec3<u32>(32u))));
    let var_2 = select(vec2<bool>(all(vec4<bool>(global1.d, true, true, arg_1.d)) | true, any(!select(vec2<bool>(false, true), vec2<bool>(arg_1.d, false), vec2<bool>(true, true)))), select(!select(vec2<bool>(global1.d, false), !vec2<bool>(global1.d, global1.d), global1.a <= 5951i), vec2<bool>(!(!global1.d), arg_1.d), vec2<bool>(any(!vec4<bool>(arg_1.d, true, arg_1.d, true)), any(vec3<bool>(arg_1.d, false, true)))), any(!(!(!vec2<bool>(global1.d, arg_1.d)))));
    return -1i;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_3 {
    global1 = Struct_1(-2147483647i, global1.b, ~_wgslsmith_sub_i32(26139i, arg_1.x), false);
    return func_4(Struct_1(firstTrailingBit(-1i), ~global1.b, ~(arg_1.x | ~u_input.c), func_4(func_2(Struct_1(45512i, vec4<u32>(4294967295u, global0.x, global1.b.x, global1.b.x), global1.a, arg_2), Struct_1(arg_0.b.x, vec4<u32>(4294967295u, u_input.a.x, 50230u, u_input.a.x), -26087i, global1.d), 546f, vec3<i32>(global1.c, global1.a, global1.a)), true, Struct_1(arg_0.b.x, vec4<u32>(4294967295u, u_input.a.x, 86407u, u_input.a.x), -7633i, arg_2)).d <= _wgslsmith_sub_u32(countOneBits(0u), _wgslsmith_clamp_u32(4294967295u, 20767u, 55202u))), any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_2, true, false), false), vec4<bool>(global1.d, false, true, true), vec4<bool>(arg_2, arg_2, true, false))), func_2(func_2(func_2(func_2(Struct_1(arg_1.x, global1.b, arg_1.x, true), Struct_1(2147483647i, vec4<u32>(global1.b.x, 4294967295u, u_input.b, 48162u), arg_1.x, true), arg_0.a, arg_1.xyz), func_2(Struct_1(1i, global1.b, u_input.c, arg_2), Struct_1(global1.c, global1.b, arg_1.x, true), 271f, vec3<i32>(13379i, -2147483647i, arg_0.b.x)), arg_0.a, arg_1.yxx), Struct_1(_wgslsmith_div_i32(arg_0.b.x, 31310i), func_2(Struct_1(0i, global1.b, -6841i, false), Struct_1(global1.a, global1.b, -7402i, false), arg_3.x, arg_0.b.wxz).b, ~(-1i), true), _wgslsmith_f_op_f32(-arg_0.a), arg_1.zxy), Struct_1(u_input.e, global1.b, reverseBits(_wgslsmith_mult_i32(u_input.c, 1i)), all(!vec4<bool>(true, global1.d, true, global1.d))), _wgslsmith_div_f32(1290f, global4.x), arg_1.zxy));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = reverseBits(abs(1i));
    let var_1 = 1u;
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_clamp_i32(43273i, 16641i, ~(-_wgslsmith_add_i32(arg_1.a.b.x, u_input.c))), _wgslsmith_add_vec4_u32(global1.b | ~(global1.b >> (global1.b % vec4<u32>(32u))), select(min(vec4<u32>(arg_1.d, u_input.a.x, 34098u, arg_0.x), vec4<u32>(global1.b.x, 0u, 1u, 22797u)), vec4<u32>(16803u, ~arg_0.x, ~4294967295u, arg_1.d & 0u), vec4<bool>(false, false, var_2, u_input.e >= arg_2))), u_input.d, true);
    let var_4 = arg_1;
    return func_2(Struct_1(abs(-(u_input.d << (27482u % 32u))), vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, var_4.d), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(31892u, var_4.d, 23519u, var_3.b.x)), global1.b), arg_0.x), abs(1i), var_2), Struct_1(~(var_0 & _wgslsmith_sub_i32(-1i, 0i)), ~(var_3.b << (~var_3.b % vec4<u32>(32u))), -20481i, false), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_3.b.x, 32u)], var_4.a.a), vec3<i32>(2147483647i, -1i, 0i) & arg_1.a.b.xwx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 32130u;
    var var_1 = _wgslsmith_div_f32(global4.x, 2347f);
    let var_2 = -(vec3<i32>(_wgslsmith_sub_i32(-26678i, -2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, global1.a, -24395i), vec3<i32>(u_input.c, 47375i, global1.a)), vec3<i32>(2147483647i, -24492i, u_input.d)), 0i) >> (global1.b.xwz % vec3<u32>(32u)));
    global3 = false;
    var var_3 = func_6(global1.b, func_5(Struct_2(-138f, -_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a, u_input.d, 10322i, -2147483647i), vec4<i32>(global1.c, var_2.x, 1i, global1.a))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.c, var_2.x), vec3<i32>(8574i, 45688i, -13376i)), ~9153i), func_1(var_2 | vec3<i32>(u_input.c, var_2.x, global1.c), Struct_1(global1.c, global1.b, 0i, global1.d), vec3<u32>(1u, u_input.a.x, 47983u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -44311i, global1.a, -2147483647i), vec4<i32>(-32527i, -17457i, u_input.d, -42033i), vec4<bool>(false, true, global1.d, global1.d)), firstLeadingBit(vec4<i32>(global1.a, u_input.d, 2147483647i, u_input.c))), -2147483647i & var_2.x), global1.d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, global4.x, global2[_wgslsmith_index_u32(24975u, 32u)]), vec3<f32>(1925f, global4.x, global2[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0, 32u)], 112f, -382f))))))), global1.a);
    global2 = array<f32, 32>();
    var var_4 = Struct_1(-func_4(Struct_1(0i, min(var_3.b, global1.b), 0i, var_3.d), var_3.d & true, Struct_1(0i, ~global1.b, _wgslsmith_add_i32(var_2.x, -2147483647i), global1.d || false)).c, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(~var_3.b), vec4<u32>(~4294967295u, u_input.b | 1u, ~6642u, _wgslsmith_clamp_u32(global1.b.x, 11884u, 4294967295u))), vec4<u32>(~func_4(Struct_1(var_3.a, var_3.b, u_input.c, global1.d), var_3.d, Struct_1(var_3.a, var_3.b, var_3.a, false)).d, func_2(Struct_1(var_3.c, vec4<u32>(u_input.b, 18112u, 60800u, global0.x), -20424i, true), func_6(vec4<u32>(22066u, global0.x, 483u, var_3.b.x), Struct_3(Struct_2(281f, vec4<i32>(47310i, 1i, -38812i, -2147483647i)), vec2<f32>(global4.x, -337f), 2147483647i, global1.b.x), -1i), _wgslsmith_f_op_f32(493f - global4.x), ~vec3<i32>(-80902i, u_input.d, u_input.e)).b.x, u_input.a.x, ~(~u_input.b))), abs(firstLeadingBit(u_input.e)), false);
    let var_5 = var_3.a;
    var var_6 = Struct_3(Struct_2(873f, -(~vec4<i32>(u_input.d, global1.a, 0i, -5132i)) << (~abs(vec4<u32>(43949u, u_input.b, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(0u, 32u)], -715f), vec2<f32>(global4.x, 821f))) - func_5(Struct_2(global4.x, vec4<i32>(-2147483647i, var_3.a, -2147483647i, var_3.c)), vec4<i32>(-1i, -8298i, var_2.x, 51703i), true, vec3<f32>(global4.x, -725f, 737f)).b) * _wgslsmith_f_op_vec2_f32(-func_5(Struct_2(832f, vec4<i32>(u_input.e, var_2.x, -1i, var_3.a)), vec4<i32>(-1i, 1i, 1i, 33541i), false, vec3<f32>(2301f, global2[_wgslsmith_index_u32(32758u, 32u)], global4.x)).b)))), 25708i, func_4(Struct_1(-2147483647i, firstTrailingBit(firstLeadingBit(global1.b)), i32(-1i) * -48823i, select(false, all(vec3<bool>(false, var_4.d, false)), true)), var_3.d, func_2(Struct_1(_wgslsmith_add_i32(-32522i, var_2.x), _wgslsmith_add_vec4_u32(var_3.b, vec4<u32>(var_4.b.x, 33175u, 4294967295u, u_input.a.x)), i32(-1i) * -30670i, true), func_6(var_3.b | vec4<u32>(global0.x, 4294967295u, var_0, 23486u), func_4(Struct_1(var_3.a, vec4<u32>(4294967295u, var_0, 16704u, 44083u), var_2.x, var_4.d), true, Struct_1(-1i, var_3.b, var_2.x, true)), ~var_3.c), -479f, var_2)).d);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, ~4294967295u, var_0), 32u)], var_6.a.b), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(var_6.a.b, var_6.a.b), ~countOneBits(var_6.a.b)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))).a.b.xw, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global1.a, 1i), func_5(Struct_2(-446f, var_6.a.b), var_6.a.b, false, vec3<f32>(global4.x, 681f, global4.x)).c), -(i32(-1i) * -67066i)), _wgslsmith_mod_i32(-firstLeadingBit(1310i), _wgslsmith_div_i32(26638i, ~global1.c))), var_4.b.zxz);
}

