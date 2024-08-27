struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, false, true, false, true, true, false, false, true, true, false, false, true, true, false, true, true, false, true, true, false);

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<i32, 16> = array<i32, 16>(1752i, 2147483647i, -2894i, -36987i, 41577i, 12939i, 16628i, 0i, 2147483647i, i32(-2147483648), 1i, -1i, -1i, -2184i, 2147483647i, 22373i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-25628i, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)]) << (vec3<u32>(6715u, u_input.c, 4294967295u) % vec3<u32>(32u)), min(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(40744u, 16u)], -31138i), vec3<i32>(1i, 0i, 12726i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-24389i, global2[_wgslsmith_index_u32(22717u, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec3<i32>(43748i, 0i, 9285i), vec3<i32>(1i, global2[_wgslsmith_index_u32(55231u, 16u)], 6843i))), -2147483647i, countOneBits(-_wgslsmith_div_i32(global2[_wgslsmith_index_u32(26827u, 16u)], -22975i)), (i32(-1i) * -2147483647i) | ~global2[_wgslsmith_index_u32(1u, 16u)]);
    let var_1 = Struct_1(~max(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11940u, 4294967295u, u_input.a.x), vec3<u32>(20625u, u_input.b.x, 0u)), min(u_input.c, 33800u)), 12761u), all(global1.xy));
    var var_2 = var_1;
    let var_3 = var_1;
    let var_4 = vec4<i32>(countOneBits(abs(_wgslsmith_div_i32(-33178i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(var_1.a, 16u)], -13886i)))), _wgslsmith_dot_vec2_i32(abs(reverseBits(vec2<i32>(var_0.x, 1i))), vec2<i32>(-58404i, -1i)), -1i, 0i);
    return max(~1u, ~_wgslsmith_div_u32(~0u, var_3.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = array<bool, 22>();
    let var_0 = func_3();
    global2 = array<i32, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)))))) + -839f);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = -(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(10596u, 11885u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.a.x), 49525u ^ u_input.a.x)), 16u)] << (~5507u % 32u));
    global0 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2037f)) - arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(-45475i, global2[_wgslsmith_index_u32(u_input.c, 16u)]), u_input.c, Struct_1(49325u, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), Struct_1(u_input.a.x, global1.x))))))));
    global2 = array<i32, 16>();
    var var_2 = arg_2;
    return Struct_1(2077u, true);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    let var_0 = select(global2[_wgslsmith_index_u32(~(~4294967295u), 16u)], (0i ^ firstTrailingBit(83109i | global2[_wgslsmith_index_u32(arg_0.x, 16u)])) << (~_wgslsmith_mult_u32(arg_0.x, 4294967295u) % 32u), any(!arg_2.xy));
    var var_1 = arg_1;
    global1 = select(arg_2, select(arg_2, vec3<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], true, global0[_wgslsmith_index_u32(1u, 22u)])), select(func_1(1000f, vec4<f32>(708f, 607f, 662f, -574f), vec3<bool>(global0[_wgslsmith_index_u32(67251u, 22u)], true, arg_2.x)).b, false, global0[_wgslsmith_index_u32(~4294967295u, 22u)]), true), !vec3<bool>(all(vec2<bool>(var_1.b, global1.x)), arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(round(-1027f)) > 701f);
    let var_2 = func_1(-383f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-117f, -1042f, 395f, -653f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1740f, -239f, 1000f, 553f) * vec4<f32>(-1975f, 1000f, 1000f, 558f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, -1473f, 1596f, 1684f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-130f, 408f, 191f, -547f), vec4<f32>(-1245f, -135f, 538f, 738f))), vec4<f32>(-1000f, -479f, 1327f, -1230f)))), !(!select(arg_2, arg_2, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_2.x, var_1.b))));
    var var_3 = firstTrailingBit(vec2<i32>(1i, -(-34570i >> (max(arg_1.a, 0u) % 32u))));
    return 2874u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32((u_input.b & vec2<u32>(0u, u_input.b.x)) ^ u_input.b, u_input.a.wz) ^ ~_wgslsmith_div_u32(15786u, 7156u), _wgslsmith_mult_u32(func_4(vec3<u32>(36594u, abs(u_input.c), u_input.c), func_1(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-824f, -1265f, 1192f, 839f) * vec4<f32>(902f, -645f, -1079f, 856f)), vec3<bool>(false, false, global1.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(global1.x, false, true), global1.x), select(vec3<bool>(global1.x, global1.x, global0[_wgslsmith_index_u32(46194u, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(22573u, 22u)], false), vec3<bool>(global0[_wgslsmith_index_u32(52261u, 22u)], global1.x, global1.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzw, vec3<u32>(u_input.b.x, u_input.c, 61889u)), 22u)])), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(542f, -1321f, 1427f, -1685f) - vec4<f32>(1131f, 614f, -1973f, -371f)), vec4<f32>(-1365f, 963f, 1991f, 579f))), vec3<bool>(false, global0[_wgslsmith_index_u32(abs(u_input.c), 22u)], global1.x)).a));
    var var_1 = vec4<i32>(47075i, _wgslsmith_div_i32(_wgslsmith_div_i32(-2069i, global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), global2[_wgslsmith_index_u32(54701u, 16u)], 8119i);
    global1 = select(!vec3<bool>(global1.x && false, any(!vec2<bool>(global1.x, global1.x)), false), select(!vec3<bool>(global0[_wgslsmith_index_u32(~4294967295u, 22u)], -1i != global2[_wgslsmith_index_u32(u_input.b.x, 16u)], select(true, false, false)), vec3<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(19748u, 22u)], false, global0[_wgslsmith_index_u32(9731u, 22u)], false)), !global0[_wgslsmith_index_u32(~1u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), !vec3<bool>(61265u < u_input.a.x, true, global1.x)), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c, 22u)], false & global1.x, all(vec4<bool>(all(vec4<bool>(true, global1.x, true, global1.x)), true, global1.x, !global0[_wgslsmith_index_u32(1u, 22u)]))));
    let var_2 = func_1(2184f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, 1389f, 1695f, 554f)))))), !select(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(global0[_wgslsmith_index_u32(12487u, 22u)], true, false), vec3<bool>(global1.x, true, global1.x)), !vec3<bool>(true, global0[_wgslsmith_index_u32(86046u, 22u)], false), vec3<bool>(true, true, true && global1.x)));
    var var_3 = Struct_1(~20789u, false);
    global1 = vec3<bool>(all(global1.yz), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-768f, -178f)))) == _wgslsmith_div_f32(-223f, _wgslsmith_f_op_f32(round(-1154f))));
    var_1 = vec4<i32>(-(~global2[_wgslsmith_index_u32(~4294967295u, 16u)]), min(var_1.x, -2147483647i | _wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(var_2.a, 16u)], var_1.x, var_1.x, 2147483647i), min(vec4<i32>(var_1.x, global2[_wgslsmith_index_u32(var_3.a, 16u)], -57038i, 403i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 16u)], var_1.x, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 16u)])))), select(var_1.x >> (var_2.a % 32u), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.a, 4294967295u), 16u)], -7400i) | _wgslsmith_div_i32(1i, -global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(var_2.a, 16u)] > global2[_wgslsmith_index_u32(u_input.a.x, 16u)], any(vec3<bool>(false, true, false)), true))), ~var_1.x);
    var var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(min(13u, var_2.a)), ~u_input.c, _wgslsmith_clamp_u32(~(~var_3.a), 1u, firstLeadingBit(45273u)), var_2.a), vec4<u32>(4294967295u, ~15301u, (0u >> (_wgslsmith_mult_u32(5803u, var_3.a) % 32u)) ^ var_3.a, u_input.b.x ^ var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-183f)) + 1f), _wgslsmith_f_op_f32(max(-244f, 199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)), _wgslsmith_f_op_f32(476f + _wgslsmith_f_op_f32(1000f * 957f))))), vec4<i32>(-19684i, _wgslsmith_clamp_i32(countOneBits(global2[_wgslsmith_index_u32(~var_3.a, 16u)]), -4546i, -10855i), _wgslsmith_dot_vec2_i32(var_1.xz ^ ~var_1.zz, abs(vec2<i32>(2147483647i, 20469i))), var_1.x), u_input.a);
}

