struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 0u, 0u, 34272u, 0u, 8650u, 0u, 1u);

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, false, true, true, true, true, true, false, false, true, false, true, true, false, true, true, false, false, true, false, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-863f, -880f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_f_op_f32(-809f * _wgslsmith_f_op_f32(select(593f, 1221f, global1[_wgslsmith_index_u32(u_input.b, 24u)]))), _wgslsmith_f_op_f32(floor(-151f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, -906f, -1203f, -141f))), vec4<f32>(_wgslsmith_f_op_f32(step(1191f, -441f)), _wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_div_f32(-752f, 833f), _wgslsmith_f_op_f32(214f - -221f))), true)), u_input.b, select(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)], false), vec3<bool>(global1[_wgslsmith_index_u32(15295u, 24u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 24u)], false), false)), !select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false, false), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(44248u, 24u)], true, true)), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52660u, 8u)], 8u)], 24u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), global1[_wgslsmith_index_u32(38536u, 24u)])), u_input.b != ~4294967295u), !global1[_wgslsmith_index_u32(max(abs(23427u), abs(4294967295u)), 24u)] || (global1[_wgslsmith_index_u32(u_input.b | ~106621u, 24u)] && true));
    let var_1 = var_0;
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a, 2147483647i), u_input.a & u_input.a), countOneBits(abs(vec3<i32>(u_input.a, -2147483647i, u_input.a)))) | abs(~(~vec3<i32>(2147483647i, u_input.a, u_input.a))), ~abs(vec3<i32>(u_input.a << (u_input.c.x % 32u), u_input.a, _wgslsmith_div_i32(u_input.a, -11567i))));
    global0 = array<u32, 8>();
    return any(!(!vec3<bool>(true, any(var_0.c.yy), !var_1.d)));
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, _wgslsmith_div_f32(-351f, 261f), _wgslsmith_f_op_f32(f32(-1f) * -1880f), _wgslsmith_f_op_f32(ceil(747f)))))), u_input.c.x, vec3<bool>(func_3(), any(select(select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 24u)], false, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(29960u, 24u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)], 24u)], true)), vec4<bool>(true, false, arg_0.x, global1[_wgslsmith_index_u32(24183u, 24u)]), arg_0.x)), true & arg_0.x), -1i == u_input.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, abs(~vec4<u32>(16213u, 54736u, u_input.c.x, 69911u)), select(vec4<u32>(var_0.b, var_0.b, 4294967295u, 30487u), u_input.c, false) << ((u_input.c ^ u_input.c) % vec4<u32>(32u))), vec4<u32>(33142u, ~4294967295u, u_input.b ^ reverseBits(1u), _wgslsmith_add_u32(abs(0u), var_0.b & 1u))), select(arg_0, var_0.c, arg_0), !var_0.d);
    var var_1 = select(abs(~_wgslsmith_div_u32(var_0.b, firstLeadingBit(var_0.b))), 1u, all(select(!select(vec4<bool>(arg_0.x, true, global1[_wgslsmith_index_u32(0u, 24u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], false, global1[_wgslsmith_index_u32(var_0.b, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(false, true, var_0.d, arg_0.x)), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.xyw, vec3<u32>(u_input.b, 20980u, var_0.b)), 24u)], true, false, any(vec2<bool>(true, false))), global1[_wgslsmith_index_u32(min(1u, ~var_0.b), 24u)])));
    var var_2 = ~(~(~(~u_input.c.xy)));
    var var_3 = Struct_1(var_0.a, _wgslsmith_div_u32(4294967295u, u_input.b), select(vec3<bool>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(-var_0.a.x) > 979f), vec3<bool>(true, any(var_0.c), true), true), var_0.d);
    return !vec3<bool>(true, false, var_0.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(20643u, 16054u), 24u)];
    let var_1 = vec2<bool>(func_2(select(arg_2.c, func_2(func_4(1323i, Struct_1(vec4<f32>(arg_1.x, arg_1.x, -1158f, arg_1.x), 0u, arg_2.c, global1[_wgslsmith_index_u32(arg_0, 24u)])).c), false)).x, true);
    global0 = array<u32, 8>();
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(73901u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, arg_0), _wgslsmith_add_u32(8308u, arg_2.b)), 8u)]), arg_2.b, 0u, ~abs(func_4(u_input.a, Struct_1(vec4<f32>(arg_2.a.x, 682f, -1125f, arg_2.a.x), global0[_wgslsmith_index_u32(54513u, 8u)], vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], true, true), arg_2.d)).b)), vec4<u32>(_wgslsmith_div_u32(7510u, ~_wgslsmith_mod_u32(u_input.b, arg_0)), _wgslsmith_sub_u32(4294967295u, 1u), 0u, firstTrailingBit(func_4(u_input.a, Struct_1(vec4<f32>(621f, arg_1.x, arg_2.a.x, 1300f), u_input.b, arg_2.c, false)).b) | arg_0));
    var_2 = ~vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.b, var_2.x, var_2.x)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 0u), u_input.c.xwx), ~var_2.wxy)), 8u)], _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(max(4294967295u, 0u), select(25023u, 9411u, global1[_wgslsmith_index_u32(arg_0, 24u)]))), 1u, _wgslsmith_div_u32(u_input.c.x, ~global0[_wgslsmith_index_u32(45561u, 8u)]) << ((firstTrailingBit(u_input.c.x) | global0[_wgslsmith_index_u32(43297u, 8u)]) % 32u));
    return func_4(-1i, func_4(u_input.a, func_4(-(~u_input.a), func_4(~u_input.a, Struct_1(vec4<f32>(539f, 586f, arg_1.x, arg_2.a.x), arg_2.b, vec3<bool>(true, false, true), arg_2.c.x)))));
}

fn func_1() -> vec3<u32> {
    global1 = array<bool, 24>();
    global0 = array<u32, 8>();
    var var_0 = func_5(u_input.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, 607f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1833f, 1100f), vec2<f32>(-1000f, -1022f))))))), func_4(-_wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(-30397i, u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(608f, -117f, 838f, -1119f) * vec4<f32>(490f, 470f, 943f, 577f)))), ~(~0u), func_2(vec3<bool>(global1[_wgslsmith_index_u32(22226u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(34283u, 24u)])), all(select(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(14604u, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 24u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 24u)])))));
    let var_1 = false;
    let var_2 = !(!(!(!func_5(u_input.b, var_0.a.wz, Struct_1(vec4<f32>(var_0.a.x, 1542f, -1506f, var_0.a.x), u_input.c.x, vec3<bool>(var_1, var_0.d, true), global1[_wgslsmith_index_u32(70415u, 24u)])).c.xz)));
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 25801u >> (~4294967295u % 32u), u_input.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 1u, 1u), u_input.c.wxw) & vec3<u32>(var_0.b ^ 55733u, firstLeadingBit(43075u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(max(countOneBits(u_input.c.yxw), vec3<u32>(u_input.b, u_input.b, 1u)) & vec3<u32>(_wgslsmith_div_u32(u_input.c.x, select(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], true)), u_input.b, u_input.c.x), func_1());
    global0 = array<u32, 8>();
    let var_1 = func_4(abs(firstTrailingBit(firstLeadingBit(u_input.a))), func_5(~(~(~37693u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, _wgslsmith_f_op_f32(sign(-778f)))), func_4(u_input.a, func_5(~0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1205f, -821f) * vec2<f32>(-1000f, -1221f)), func_4(u_input.a, Struct_1(vec4<f32>(1000f, 332f, -1510f, 905f), 12846u, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], true), global1[_wgslsmith_index_u32(29854u, 24u)]))))));
    global0 = array<u32, 8>();
    let var_2 = ~min(reverseBits(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, 3113i)) >> (u_input.c.yy % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mult_u32(~(~u_input.b), ~65607u), 37318u), -(~_wgslsmith_mod_i32(0i, -25171i)) & var_2.x, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(round(func_5(global0[_wgslsmith_index_u32(min(67476u, 57597u), 8u)], vec2<f32>(2453f, var_1.a.x), func_4(var_2.x, var_1)).a.x))), 16610i << (reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, var_0, 34030u))) % 32u), _wgslsmith_f_op_vec4_f32(max(var_1.a, var_1.a)));
}

