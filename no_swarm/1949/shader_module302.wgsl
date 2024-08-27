struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec4<i32>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = ~_wgslsmith_mult_u32(abs(~arg_0), ~firstTrailingBit(_wgslsmith_mod_u32(arg_0, 1u)));
    var var_2 = var_1;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(arg_2.d, 109370u, 0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, arg_2.d), ~var_1, u_input.a.x))), 23u)];
    global2 = array<vec4<i32>, 6>();
    return arg_2.e.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    var var_0 = !select(select(select(vec3<bool>(global0.x, true, false), !arg_1.a.xzx, select(arg_1.a.yyw, arg_1.a.wwx, false)), vec3<bool>(true, arg_1.c.x, true), _wgslsmith_f_op_f32(func_3(arg_1.d, vec2<i32>(1i, arg_3), arg_1)) < -1000f), vec3<bool>(true, true, true), any(vec4<bool>(arg_1.a.x, global0.x, !global0.x, !arg_1.c.x)));
    var var_1 = min(vec4<i32>(select(~2147483647i, _wgslsmith_dot_vec3_i32(arg_0.wxw, ~vec3<i32>(arg_3, arg_1.b, u_input.d)), any(!arg_1.a.yzw)), u_input.d >> (min(_wgslsmith_clamp_u32(9458u, u_input.c.x, arg_1.d), max(u_input.a.x, 35613u)) % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-44785i, arg_1.b), 0i) | _wgslsmith_clamp_i32(~arg_3, arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_1.b, arg_1.b, arg_1.b, -2147483647i))), _wgslsmith_mult_i32(arg_0.x | _wgslsmith_add_i32(0i, u_input.e), max(2147483647i, -9771i))), global2[_wgslsmith_index_u32(min(54205u, select(u_input.c.x, u_input.c.x, true)), 6u)]);
    var_1 = -_wgslsmith_mod_vec4_i32(arg_0, firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_3, arg_3, arg_1.b, -31389i), vec4<i32>(arg_0.x, 42520i, arg_3, 91837i))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(39306u), 1u), 0u, _wgslsmith_dot_vec2_u32(u_input.c.zw, u_input.c.zw) ^ _wgslsmith_sub_u32(u_input.a.x ^ abs(1u), _wgslsmith_div_u32(81852u, ~u_input.c.x))), 23u)];
    var var_3 = select(select(select(vec4<bool>(arg_3 >= u_input.e, true, var_2.a.x, !global0.x), arg_1.a, arg_1.a), var_2.a, vec4<bool>(!var_2.c.x, var_2.a.x, true || !var_0.x, !all(var_2.a.wxz))), var_2.a, !arg_1.a);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(172f - _wgslsmith_f_op_f32(var_2.e.x * 539f)) - _wgslsmith_f_op_f32(trunc(162f))) - var_2.e.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = vec4<f32>(-1350f, -2143f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2223f - _wgslsmith_f_op_f32(1499f + arg_1.x))), arg_1.x, !any(vec2<bool>(arg_0, true)))), arg_1.x);
    var var_1 = max(vec4<i32>(-1i) * -abs(global2[_wgslsmith_index_u32(~35984u, 6u)]), select(global2[_wgslsmith_index_u32(~4294967295u | u_input.c.x, 6u)], -select(~vec4<i32>(u_input.d, -2147483647i, u_input.d, -14918i), countOneBits(vec4<i32>(u_input.d, u_input.b, -1i, 1i)), true), vec4<bool>(all(vec4<bool>(false, arg_0, global0.x, true)) | true, false, min(0i, u_input.d) < ~u_input.e, global0.x)));
    var var_2 = Struct_1(!vec4<bool>(true, global0.x | any(vec2<bool>(false, arg_0)), true, arg_0), countOneBits(~(-var_1.x)), global0.yz, u_input.c.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) + _wgslsmith_f_op_f32(func_2(vec4<i32>(var_1.x, 1i, var_1.x, u_input.e), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<f32>(arg_1.x, var_0.x, var_0.x, -1158f), var_1.x)))))));
    var var_3 = Struct_1(!vec4<bool>(all(vec2<bool>(true, true)), false, arg_0 && !var_2.c.x, true), ~select(var_2.b, ~(-66913i), true), !select(global0.zw, global0.wz, select(vec2<bool>(false, false), global0.xz, true)), 30883u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(min(vec4<i32>(2147483647i, var_2.b, 0i, -1833i), global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), Struct_1(var_2.a, var_1.x, var_2.a.zz, 1u, vec2<f32>(var_2.e.x, -647f)), _wgslsmith_f_op_vec4_f32(-arg_1), var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.d, var_1.zy, global1[_wgslsmith_index_u32(var_2.d, 23u)])))) * vec2<f32>(_wgslsmith_f_op_f32(func_3(1u, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b, -2147483647i), vec2<i32>(2147483647i, u_input.e), var_1.zw), global1[_wgslsmith_index_u32(~u_input.a.x, 23u)])), arg_1.x)));
    var var_4 = _wgslsmith_clamp_i32(-18459i, var_1.x, 1i);
    return var_2.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_1(!(!(!(!vec4<bool>(false, global0.x, false, global0.x)))), ~0i, select(select(!(!global0.zz), vec2<bool>(arg_0.x, global0.x), select(select(arg_0, arg_0, global0.x), select(vec2<bool>(arg_0.x, arg_0.x), global0.ww, vec2<bool>(arg_0.x, false)), true)), !select(global0.wx, select(vec2<bool>(global0.x, false), arg_0, false), true), u_input.c.x > 0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_1, 11473u), 4294967295u, ~868u), abs(vec3<u32>(3611u, arg_1, 67548u))), ~(~arg_1)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(315f, -852f) + vec2<f32>(-1526f, 3126f)))))));
    var var_1 = Struct_1(vec4<bool>(true, global0.x, true, arg_0.x), _wgslsmith_add_i32(1i, -15385i) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, var_0.d, 25451u) ^ vec4<u32>(var_0.d, 21247u, arg_1, 1u), u_input.c) % 32u), vec2<bool>(true, arg_0.x && (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e, 14628i, u_input.d), global2[_wgslsmith_index_u32(59097u, 6u)]) < ~6463i)), u_input.c.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.x), -1383f))), vec2<f32>(359f, _wgslsmith_f_op_f32(-var_0.e.x)))));
    global1 = array<Struct_1, 23>();
    let var_2 = ~56723u;
    let var_3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.a), var_0.d << (67492u % 32u), ~var_1.d, ~44625u) >> ((u_input.c >> (~u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), max(~u_input.c >> (max(vec4<u32>(arg_1, 74026u, u_input.c.x, 23109u), u_input.c) % vec4<u32>(32u)), u_input.c))), 23u)];
    return select(select(var_1.a, var_0.a, select(vec4<bool>(true, true, !var_0.c.x, true), select(select(var_0.a, vec4<bool>(var_3.a.x, var_3.c.x, var_3.a.x, arg_0.x), vec4<bool>(var_0.c.x, var_1.a.x, false, arg_0.x)), var_1.a, var_3.a.x), select(var_3.a, var_1.a, vec4<bool>(var_1.c.x, false, true, var_3.c.x)))), select(!select(!vec4<bool>(true, var_0.c.x, false, true), !var_1.a, all(var_1.c)), select(vec4<bool>(u_input.b != var_0.b, global0.x, global0.x, all(var_1.a.zy)), !vec4<bool>(global0.x, false, true, var_1.c.x), var_3.a.x), all(!var_3.a)), var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    global0 = select(select(func_4(vec2<bool>(func_1(false, vec4<f32>(-1000f, -689f, 432f, -635f)), all(global0.xw)), ~u_input.c.x), vec4<bool>(true, global0.x, any(!vec3<bool>(true, true, global0.x)), any(vec4<bool>(global0.x, false, global0.x, false)) & global0.x), all(select(global0.wz, vec2<bool>(false, true), !vec2<bool>(global0.x, global0.x)))), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x);
    let var_0 = !global0.yz;
    global1 = array<Struct_1, 23>();
    let var_1 = -firstTrailingBit(reverseBits(firstTrailingBit(~vec2<i32>(u_input.e, 2147483647i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1633f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1164f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1000f - 1000f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(684f, 346f, 1081f, -800f)))))), func_4(var_0, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, 0u), 1u))))));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_u32(abs(abs(u_input.c.wyy)), min(~vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.c.x, u_input.a.x, 1u))), _wgslsmith_sub_vec3_u32(~abs(u_input.c.xzw), u_input.c.zzy), !(!global0.x)), ~(reverseBits(~u_input.c.wzz) >> (vec3<u32>(abs(65204u), 14580u, firstLeadingBit(u_input.c.x)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(abs(u_input.c.yxx), ~reverseBits(~vec3<u32>(25542u, u_input.a.x, 1u))), var_2.wx);
}

