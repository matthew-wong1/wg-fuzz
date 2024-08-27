struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(67853u, vec4<bool>(true, true, true, true), vec4<f32>(722f, 1000f, -230f, 1438f), false, vec3<bool>(false, true, false)), Struct_1(1u, vec4<bool>(true, false, false, false), vec4<f32>(623f, -363f, 213f, -716f), true, vec3<bool>(true, true, false)), Struct_1(41839u, vec4<bool>(false, false, false, false), vec4<f32>(514f, -302f, -1702f, 2117f), true, vec3<bool>(false, true, true)), Struct_1(1u, vec4<bool>(true, true, true, false), vec4<f32>(-1098f, 1000f, -1389f, 175f), true, vec3<bool>(false, false, false)), Struct_1(1u, vec4<bool>(false, false, false, true), vec4<f32>(1049f, 1000f, 430f, 891f), false, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec4<bool>(false, false, false, false), vec4<f32>(-1078f, -1130f, -886f, 1017f), true, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec4<bool>(true, true, false, false), vec4<f32>(268f, -480f, 299f, 1550f), false, vec3<bool>(false, false, false)), Struct_1(0u, vec4<bool>(true, true, false, false), vec4<f32>(1245f, 851f, 818f, 143f), true, vec3<bool>(false, true, false)));

var<private> global1: array<bool, 9> = array<bool, 9>(true, true, false, true, false, false, true, true, true);

var<private> global2: array<bool, 16>;

var<private> global3: array<bool, 16> = array<bool, 16>(false, true, false, false, true, false, true, true, false, true, false, false, true, false, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<f32> {
    global3 = array<bool, 16>();
    let var_0 = arg_1;
    global2 = array<bool, 16>();
    var var_1 = any(vec2<bool>(any(var_0.e), all(vec2<bool>(false, var_0.d))));
    let var_2 = false;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.c)) * vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(arg_3.x + -1220f), arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(549f + -1146f), 645f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * arg_3.x)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    global3 = array<bool, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_3.c, arg_3.c, vec4<bool>(arg_3.d, arg_3.d, true, true)))), _wgslsmith_f_op_vec4_f32(func_3(arg_3.a, Struct_1(4294967295u, vec4<bool>(true, false, true, true), arg_3.c, false, vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(27693u, 16u)])), global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(531f, 1075f) + vec2<f32>(1000f, -1031f))))), arg_3.c));
    return select(23576u, _wgslsmith_clamp_u32(~(arg_3.a & arg_3.a) << (u_input.c.x % 32u), _wgslsmith_mod_u32(max(arg_3.a, 1517u), 1u) ^ _wgslsmith_sub_u32(1u, u_input.c.x & 4294967295u), 39480u), false);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + arg_2.x) - -1132f));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_add_u32(func_2(!select(!vec2<bool>(global3[_wgslsmith_index_u32(6002u, 16u)], arg_3.e.x), vec2<bool>(false, false), arg_3.e.xy), -min(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(arg_0.x, u_input.b.x)) >> ((select(vec2<u32>(57962u, 4294967295u), u_input.c.zy, global2[_wgslsmith_index_u32(arg_1.a, 16u)]) << (vec2<u32>(arg_1.a, var_1.a) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3.e.yz, arg_3), u_input.c.x);
    let var_3 = arg_3;
    var var_4 = Struct_1(arg_1.a, var_3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.c.x, arg_3.c.x), _wgslsmith_f_op_f32(min(var_1.c.x, -1000f)))), _wgslsmith_f_op_f32(-1316f + 616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) - _wgslsmith_f_op_f32(var_0 + 881f)), -1204f)), ~arg_3.a <= ~abs(~arg_3.a), !(!select(select(var_3.b.yyz, vec3<bool>(global1[_wgslsmith_index_u32(10603u, 9u)], var_1.d, true), arg_3.b.x), arg_3.b.wzz, true)));
    return firstLeadingBit(_wgslsmith_div_u32(var_2, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~vec2<u32>(func_1(vec4<i32>(-15618i, 21495i, u_input.a.x, u_input.b.x), Struct_1(8114u, vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(28658u, 16u)]), vec4<f32>(-1524f, -562f, -393f, 819f), false, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)], false)), vec2<f32>(-629f, 672f), Struct_1(46790u, vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<f32>(-782f, -1064f, -662f, 1041f), true, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)]))), ~u_input.c.x)));
    global0 = array<Struct_1, 8>();
    global2 = array<bool, 16>();
    global2 = array<bool, 16>();
    let var_1 = max(22639i, _wgslsmith_mod_i32(-2147483647i, u_input.b.x)) & u_input.b.x;
    global3 = array<bool, 16>();
    global2 = array<bool, 16>();
    let var_2 = Struct_1(u_input.c.x, select(vec4<bool>(true, !select(global2[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], false), any(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 9u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 16u)], true)), true), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(30528u, 16u)], global3[_wgslsmith_index_u32(u_input.c.x, 16u)], true, global1[_wgslsmith_index_u32(1u, 9u)]))), !select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(11798u, 16u)], global3[_wgslsmith_index_u32(1268u, 16u)], global3[_wgslsmith_index_u32(var_0.x, 16u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 16u)], global3[_wgslsmith_index_u32(79026u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], false, global3[_wgslsmith_index_u32(1u, 16u)], true))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-606f)) * _wgslsmith_f_op_f32(-602f * -1061f)))), -224f, _wgslsmith_f_op_f32(trunc(-967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))), true, vec3<bool>(all(select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], true, global2[_wgslsmith_index_u32(6323u, 16u)], false), true)), select((u_input.c.x << (u_input.c.x % 32u)) <= func_1(vec4<i32>(-9i, 52114i, 1i, u_input.b.x), global0[_wgslsmith_index_u32(0u, 8u)], vec2<f32>(-552f, -1000f), Struct_1(var_0.x, vec4<bool>(global3[_wgslsmith_index_u32(5699u, 16u)], global2[_wgslsmith_index_u32(u_input.c.x, 16u)], true, false), vec4<f32>(1768f, -137f, -435f, 585f), true, vec3<bool>(global3[_wgslsmith_index_u32(23604u, 16u)], true, false))), true, false != !global2[_wgslsmith_index_u32(4294967295u, 16u)]), global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(var_0.x, 4294967295u)) ^ 1u, 9u)]));
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_2.a, ~u_input.c.x), 2147483647i);
}

