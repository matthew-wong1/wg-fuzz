struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_2, 19>;

var<private> global3: Struct_2;

var<private> global4: vec2<u32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(4294967295u), firstLeadingBit(_wgslsmith_sub_u32(global3.a.x, global4.x))) << (~_wgslsmith_div_u32(~(~arg_3), arg_0.x | 43226u) % 32u), 12u)];
    var var_1 = Struct_1(_wgslsmith_div_i32((u_input.a ^ u_input.a) ^ (-65906i | u_input.a), min(-41061i, abs(arg_2.x))) ^ _wgslsmith_mult_i32(arg_2.x, arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1528f - 783f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1003f, -1000f), _wgslsmith_f_op_f32(236f + -787f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f), _wgslsmith_f_op_f32(-var_1.b)), 400f, global1[_wgslsmith_index_u32(39395u, 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(ceil(var_1.b))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, _wgslsmith_clamp_u32(global3.a.x, 28054u, arg_3)), arg_0), 12u)])));
    global2 = array<Struct_2, 19>();
    var_2 = -772f;
    return select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(global3.a.x, 12u)], global1[_wgslsmith_index_u32(36225u, 12u)], false), vec3<bool>(!global1[_wgslsmith_index_u32(1u, 12u)], false, any(vec3<bool>(global1[_wgslsmith_index_u32(arg_3, 12u)], true, global1[_wgslsmith_index_u32(arg_3, 12u)]))), vec3<bool>(var_1.a < var_1.a, global1[_wgslsmith_index_u32(1u, 12u)], u_input.a > -6757i)), select(!vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(arg_3, 12u)], false)), global1[_wgslsmith_index_u32(4294967295u, 12u)] | global1[_wgslsmith_index_u32(0u, 12u)], !global1[_wgslsmith_index_u32(38765u, 12u)]), vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_1.b) != var_1.b), vec3<bool>(true, !any(vec4<bool>(true, false, true, true)), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a.x, global4.x), 12u)])), !(var_1.b >= var_1.b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_2 {
    global3 = Struct_2(global3.a ^ vec4<u32>(~arg_3 & ~4294967295u, ~18361u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.x, 4294967295u, global4.x), global3.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(12407u, global4.x, 31320u), vec3<u32>(0u, arg_3, 46640u))));
    let var_0 = global1[_wgslsmith_index_u32(~(~(~arg_3)), 12u)];
    var var_1 = vec4<bool>(true, any(!select(func_3(vec3<u32>(39157u, arg_3, arg_3), global2[_wgslsmith_index_u32(1u, 19u)], vec2<i32>(arg_1.a, -24700i), global4.x), !vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 12u)], true, global1[_wgslsmith_index_u32(13130u, 12u)]), select(vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(global4.x, 12u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 12u)], global1[_wgslsmith_index_u32(33300u, 12u)], true)))), true, false);
    var var_2 = vec3<u32>(global3.a.x, _wgslsmith_mult_u32(38571u, max(~arg_3, global3.a.x)), 17283u);
    let var_3 = -1740f;
    return global2[_wgslsmith_index_u32(~var_2.x, 19u)];
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    global1 = array<bool, 12>();
    global3 = arg_1;
    global4 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(max(select(_wgslsmith_mult_vec2_u32(global3.a.yz, vec2<u32>(4294967295u, 20538u)), ~vec2<u32>(0u, arg_1.a.x), false), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 23780u, 63513u), 1u)), vec2<u32>(arg_1.a.x, 10097u)), vec2<u32>(~6935u, max(0u, ~arg_0)));
    var var_0 = -(~(~(~arg_3.a)));
    var var_1 = Struct_1(i32(-1i) * -(i32(-1i) * -40215i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1943f - _wgslsmith_f_op_f32(step(arg_3.b, 492f))) + -221f)));
    return Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.a, vec4<u32>(~global3.a.x, 4294967295u, arg_1.a.x | arg_0, ~arg_0), vec4<u32>(75613u, 1u, 18061u, global3.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(21829u, arg_1.a.x, 1u, 1u), vec4<u32>(0u, 12880u, 4294967295u, global3.a.x)) % vec4<u32>(32u))), abs(~vec4<u32>(4848u, global4.x, global3.a.x, global4.x)) & _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 0u, global3.a.x, 81156u), vec4<u32>(arg_1.a.x, global4.x, global3.a.x, arg_0)), arg_1.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1546f - -1612f)), -1163f), -314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -102f)))), 1039f));
    let var_1 = u_input.a & _wgslsmith_sub_i32(u_input.a, -u_input.a);
    global2 = array<Struct_2, 19>();
    let var_2 = firstTrailingBit(arg_0.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(ceil(-1406f)));
    return func_2(Struct_1(_wgslsmith_sub_i32(-3783i, ~(-1i)), var_0.x), Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 31633i, -53891i), reverseBits(vec3<i32>(u_input.a, var_1, 38535i))), vec3<i32>(-32971i << (var_2 % 32u), _wgslsmith_div_i32(-735i, var_1), 64671i)), -1189f), (var_1 & abs(~var_1)) | 0i, ~arg_0.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = reverseBits(global3.a.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(arg_2.b));
    var var_2 = Struct_2(~(~(arg_0 | _wgslsmith_div_vec4_u32(global3.a, arg_0))));
    var var_3 = func_5(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, var_2.a.x) << (vec2<u32>(1u, 46691u) % vec2<u32>(32u)), vec2<u32>(7703u, 1u) >> (global3.a.ww % vec2<u32>(32u))) | arg_0.x, func_2(Struct_1(firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(-1000f + 318f)), arg_2, -1i, _wgslsmith_add_u32(~4294967295u, 17287u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, arg_2.b, _wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)))), Struct_1(firstTrailingBit(_wgslsmith_mod_i32(-1i, arg_2.a)), 1000f)), !select(func_3(~vec3<u32>(global4.x, var_2.a.x, 69536u), func_2(arg_2, arg_2, arg_2.a, global4.x), abs(vec2<i32>(1i, u_input.a)), func_2(Struct_1(arg_2.a, arg_2.b), Struct_1(7696i, 299f), -2147483647i, 952u).a.x), func_3(vec3<u32>(arg_1.a.x, global3.a.x, 33435u) & var_2.a.wwy, func_2(arg_2, arg_2, arg_2.a, 7537u), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_2.a, u_input.a)), ~var_2.a.x), true));
    var var_4 = arg_3.x & (var_2.a.x > firstLeadingBit(_wgslsmith_sub_u32(var_3.a.x, select(global4.x, arg_1.a.x, arg_3.x))));
    return all(!(!select(vec2<bool>(true, arg_3.x), select(vec2<bool>(true, arg_3.x), vec2<bool>(global1[_wgslsmith_index_u32(var_2.a.x, 12u)], global1[_wgslsmith_index_u32(53796u, 12u)]), vec2<bool>(true, arg_3.x)), true)));
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> vec4<u32> {
    var var_0 = -1000f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1297f, -344f)), _wgslsmith_f_op_f32(min(-1207f, -3159f)))), -1547f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -112f) * -575f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-569f * 459f), -1177f)) + _wgslsmith_f_op_f32(173f + 1f))));
    global2 = array<Struct_2, 19>();
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a, -76081i) & abs(vec2<i32>(-2147483647i, -5197i))), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(7399i, 59072i)), max(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -44350i)), ~vec2<i32>(u_input.a, 53386i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1335f - _wgslsmith_div_f32(-428f, 996f)))), 1f));
    let var_2 = Struct_2(firstTrailingBit(~firstTrailingBit(vec4<u32>(15973u, arg_0.a.x, 29813u, 13645u))));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 25481u), global3.a.zw), vec2<u32>(global3.a.x, 118139u)), ~countOneBits(firstTrailingBit(1u)), 4294967295u, 1u), firstLeadingBit(vec4<u32>(~_wgslsmith_sub_u32(global3.a.x, 2518u), abs(1u << (var_2.a.x % 32u)), _wgslsmith_add_u32(~24009u, global3.a.x), 0u)));
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 845f)), _wgslsmith_div_f32(-415f, 1316f))))));
    var var_1 = arg_0;
    var var_2 = countOneBits(var_1.a.yxy) & _wgslsmith_add_vec3_u32((abs(vec3<u32>(arg_0.a.x, arg_0.a.x, global4.x)) | var_1.a.xxw) >> (var_1.a.wxy % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~(~arg_0.a.wxy), vec3<u32>(0u, min(4294967295u, 21705u), arg_0.a.x)));
    global3 = func_5(func_4(~(~38306u) & min(~global4.x, 104356u & arg_0.a.x), func_4(0u, func_4(_wgslsmith_clamp_u32(arg_0.a.x, 4294967295u, var_1.a.x), Struct_2(vec4<u32>(35771u, global4.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 374f, var_0.x), global1[_wgslsmith_index_u32(var_1.a.x, 12u)])), Struct_1(16690i, 373f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1347f, -1191f, -973f, 1080f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, 683f, var_0.x))), Struct_1(_wgslsmith_sub_i32(2147483647i, u_input.a), _wgslsmith_f_op_f32(var_0.x - 367f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 536f, -1025f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, var_0.x, var_0.x, -1761f)))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(ceil(-1518f)))), vec3<bool>(false, true, true));
    var_1 = Struct_2(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(var_2.x, 1u, 35210u, var_1.a.x)), _wgslsmith_add_u32(func_6(Struct_2(vec4<u32>(global4.x, global3.a.x, 0u, 0u)), true).x, _wgslsmith_div_u32(global4.x, 0u)), global4.x | 4294967295u, arg_0.a.x << (~4294967295u % 32u))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 798f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1115f)))), -978f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(310f - 977f), _wgslsmith_f_op_f32(step(1020f, -1113f))), _wgslsmith_f_op_f32(f32(-1f) * -481f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(trunc(-429f));
    global3 = Struct_2(~global3.a | global3.a);
    var var_0 = global1[_wgslsmith_index_u32(~(517u | global3.a.x), 12u)];
    let var_1 = _wgslsmith_mult_vec2_i32(abs(select(-vec2<i32>(u_input.a, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 45785i), -vec2<i32>(u_input.a, 0i)), true)), -vec2<i32>(u_input.a, -(u_input.a & 37856i)));
    global2 = array<Struct_2, 19>();
    global0 = _wgslsmith_f_op_f32(trunc(-1000f));
    var var_2 = global3.a.x;
    let x = u_input.a;
    s_output = func_7(Struct_2(func_6(Struct_2(~global3.a), func_1(vec4<u32>(global4.x, 11592u, 1u, 54628u), global2[_wgslsmith_index_u32(4294967295u & global4.x, 19u)], Struct_1(u_input.a, -1000f), vec2<bool>(global1[_wgslsmith_index_u32(global3.a.x, 12u)], global1[_wgslsmith_index_u32(global4.x, 12u)])))), false, (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1429f)), _wgslsmith_f_op_f32(ceil(425f)), global1[_wgslsmith_index_u32(~124176u, 12u)])) < _wgslsmith_f_op_f32(-807f * _wgslsmith_f_op_f32(min(1104f, 599f)))) || true);
}

