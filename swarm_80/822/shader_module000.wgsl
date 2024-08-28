struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<f32>(-1711f, 178f)), Struct_1(vec2<f32>(-949f, 167f)), Struct_1(vec2<f32>(1001f, 1776f)), Struct_1(vec2<f32>(1194f, -605f)), Struct_1(vec2<f32>(1002f, 232f)), Struct_1(vec2<f32>(-624f, 676f)), Struct_1(vec2<f32>(610f, -294f)), Struct_1(vec2<f32>(-504f, -1141f)), Struct_1(vec2<f32>(846f, -580f)), Struct_1(vec2<f32>(233f, 952f)), Struct_1(vec2<f32>(-634f, 1027f)), Struct_1(vec2<f32>(155f, 966f)), Struct_1(vec2<f32>(1126f, -319f)), Struct_1(vec2<f32>(-212f, 1000f)), Struct_1(vec2<f32>(-2440f, 893f)), Struct_1(vec2<f32>(-1476f, 1118f)), Struct_1(vec2<f32>(494f, -1891f)), Struct_1(vec2<f32>(884f, 1000f)), Struct_1(vec2<f32>(-532f, 501f)), Struct_1(vec2<f32>(623f, -172f)), Struct_1(vec2<f32>(-269f, 1636f)), Struct_1(vec2<f32>(-1171f, 108f)), Struct_1(vec2<f32>(729f, 630f)));

var<private> global1: array<u32, 19>;

var<private> global2: array<i32, 16> = array<i32, 16>(-25424i, 5827i, 2147483647i, -24406i, 1i, -22426i, 1i, 2147483647i, -40856i, 2147483647i, -1i, 0i, 1i, -13763i, 25289i, i32(-2147483648));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-686f, 761f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 23>();
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))) + _wgslsmith_f_op_vec2_f32(arg_2.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1469f, 116f), vec2<f32>(global3.a.x, -1912f))) * _wgslsmith_f_op_vec2_f32(global3.a + arg_2.a)))));
    var var_0 = Struct_1(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(993f, arg_1.a.x, false)))))));
    var_0 = Struct_1(vec2<f32>(-2326f, 1f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) + _wgslsmith_f_op_f32(var_0.a.x + global3.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), _wgslsmith_f_op_f32(var_0.a.x - global3.a.x))))));
    return ~20323u;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = 0u;
    global1 = array<u32, 19>();
    global0 = array<Struct_1, 23>();
    let var_1 = vec2<i32>(global2[_wgslsmith_index_u32(1u, 16u)], u_input.a);
    global3 = arg_2;
    return ~(vec2<u32>(~(~arg_0), 59735u) << (~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, var_0), vec2<u32>(global1[_wgslsmith_index_u32(arg_0, 19u)], 2064u))) % vec2<u32>(32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = select(max(countOneBits(func_4(func_3(4294967295u, Struct_1(vec2<f32>(-1000f, global3.a.x)), Struct_1(global3.a)), _wgslsmith_f_op_f32(global3.a.x + global3.a.x), Struct_1(vec2<f32>(global3.a.x, -639f)), vec4<bool>(true, true, true, true))), vec2<u32>(~(global1[_wgslsmith_index_u32(0u, 19u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), _wgslsmith_mod_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75435u, 19u)], 19u)], 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)]))), max(~vec2<u32>(~4294967295u, _wgslsmith_add_u32(1u, 49081u)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)], 0u)), abs(vec2<u32>(130898u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8247u, 19u)], 19u)]) & vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)])))), vec2<bool>(false, false));
    global2 = array<i32, 16>();
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a + global3.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a + global3.a))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-416f * global3.a.x), 705f);
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~abs(var_0.x)) << (var_0.x % 32u), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14348u, 19u)] & ~global1[_wgslsmith_index_u32(var_0.x, 19u)], 19u)], ~1u)), 23u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = ~min(arg_3.xx, vec2<u32>(0u, 0u));
    return select(select(~_wgslsmith_div_vec2_i32(arg_1.zz, arg_1.xy), arg_1.yy, !(global3.a.x > 1553f)) >> (arg_3.yx % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(arg_1.zy, -(vec2<i32>(-1i) * -arg_1.xy)), !(_wgslsmith_mod_u32(1u, 3893u ^ arg_3.x) != var_0.x));
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = func_2();
    let var_1 = false;
    let var_2 = vec2<f32>(-517f, _wgslsmith_f_op_f32(f32(-1f) * -182f));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * vec2<f32>(816f, -1550f)) + _wgslsmith_f_op_vec2_f32(-var_2)))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - 113f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2().a.x))))), _wgslsmith_div_f32(arg_2.a.x, 1673f));
    return vec4<f32>(947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1151f, -761f)), 103f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(-933f, 948f, arg_0)))))), -2288f);
}

fn func_7(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -887f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-617f + arg_1.x), arg_1.x)) * _wgslsmith_f_op_f32(global3.a.x + -1350f)))) + global3.a.x);
    return arg_2.x;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = true;
    let var_1 = func_7(false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_6(false, var_0 == arg_0.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(37450u, 1u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(56997u, 2367u), 19u)], 19u)], ~22701u), 19u)], 19u)], 23u)], func_5(func_2(), vec3<i32>(0i, 2147483647i, 14772i), Struct_1(vec2<f32>(global3.a.x, global3.a.x)), abs(vec3<u32>(global1[_wgslsmith_index_u32(71933u, 19u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51042u, 19u)], 19u)]))))))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -44498i, global2[_wgslsmith_index_u32(0u, 16u)], 67375i), -vec4<i32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(0u, 16u)], 1i), vec4<i32>(u_input.a, u_input.a, -64842i, -2147483647i)) >> (_wgslsmith_mod_vec4_u32(~(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 3943u, 1u, 4294967295u) & vec4<u32>(31346u, global1[_wgslsmith_index_u32(17121u, 19u)], global1[_wgslsmith_index_u32(48838u, 19u)], 1u)), firstTrailingBit(firstTrailingBit(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 30388u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)])))) % vec4<u32>(32u)));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1615f)) - _wgslsmith_f_op_f32(floor(global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_6(var_0, true, Struct_1(vec2<f32>(global3.a.x, -455f)), vec2<i32>(2147483647i, var_1))).xy), vec2<f32>(_wgslsmith_f_op_f32(select(646f, global3.a.x, var_0)), -869f), !(var_0 | false))))));
    let var_2 = vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global3.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(257f, global3.a.x), global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.a.x)))))));
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    return ~abs(global1[_wgslsmith_index_u32(~0u, 19u)]);
}

fn func_8(arg_0: u32, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(abs(~(~_wgslsmith_clamp_u32(~34567u, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(select(3989u, 15308u, false), 19u)]))), 23u)];
    let var_1 = max(_wgslsmith_dot_vec4_i32(select(vec4<i32>(abs(u_input.a), u_input.a & 20622i, global2[_wgslsmith_index_u32(47176u, 16u)] | -1i, global2[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(arg_0, 19u)], arg_0), 16u)]), -firstTrailingBit(vec4<i32>(1i, global2[_wgslsmith_index_u32(arg_0, 16u)], global2[_wgslsmith_index_u32(12102u, 16u)], -2147483647i)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true))), reverseBits(vec4<i32>(-7185i, ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3758u, 19u)], 16u)], -9733i, global2[_wgslsmith_index_u32(func_4(4294967295u, 988f, Struct_1(arg_1.yz), vec4<bool>(true, true, false, true)).x, 16u)]))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, global1[_wgslsmith_index_u32(106783u, 19u)]), vec2<u32>(global1[_wgslsmith_index_u32(0u, 19u)], 0u)) & ~vec2<u32>(30626u, arg_0), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(51989u, 19u)], 1u), vec2<u32>(4294967295u, 45606u))), 16u)]);
    let var_2 = vec3<bool>(!(!(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_0, 19u)], 19u)], 16u)] < u_input.a)), true, _wgslsmith_f_op_f32(685f + -185f) != _wgslsmith_f_op_vec4_f32(func_6(true, all(vec2<bool>(true, true)), Struct_1(vec2<f32>(1000f, -1000f)), _wgslsmith_div_vec2_i32(func_5(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x)), vec3<i32>(global2[_wgslsmith_index_u32(50557u, 16u)], 0i, global2[_wgslsmith_index_u32(52663u, 16u)]), global0[_wgslsmith_index_u32(arg_0, 23u)], vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 0u, global1[_wgslsmith_index_u32(0u, 19u)])), -vec2<i32>(-1i, -2147483647i)))).x);
    var var_3 = vec4<u32>(~(~_wgslsmith_div_u32(arg_0 >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(124u, 19u)], 19u)] % 32u), arg_0)), arg_0, func_3(min(45024u, ~1u), func_2(), global0[_wgslsmith_index_u32(func_3(max(55615u, global1[_wgslsmith_index_u32(arg_0, 19u)]), global0[_wgslsmith_index_u32(65488u, 23u)], func_2()), 23u)]) >> (countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72716u, 19u)], 19u)] >> (4294967295u % 32u), 19u)], 19u)], 19u)] ^ ~21583u, 19u)]) % 32u), ~reverseBits(abs(arg_0)));
    var var_4 = ~_wgslsmith_sub_vec3_u32(~abs(~var_3.wxx), var_3.zyx);
    return StorageBuffer(-846f, ~vec4<u32>(var_4.x, var_3.x, _wgslsmith_mod_u32(firstTrailingBit(0u), 1u), var_4.x), -604f, abs(vec3<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 19u)], 19u)], 19u)], global1[_wgslsmith_index_u32(var_4.x, 19u)], global1[_wgslsmith_index_u32(var_3.x, 19u)], 67446u), vec4<u32>(var_3.x, arg_0, var_4.x, var_3.x)), ~max(4294967295u, 27902u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = func_8(~func_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, -1064f, 444f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a.x, global3.a.x, global3.a.x))))) * vec3<f32>(550f, 646f, -1144f)));
}

