struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-46140i, 0i, -44099i, -14843i), vec4<i32>(2147483647i, -9967i, -1i, 0i), vec4<i32>(9426i, 2147483647i, -5491i, 0i), vec4<i32>(-33076i, 38887i, -59992i, i32(-2147483648)), vec4<i32>(-38928i, -4544i, 10880i, 0i), vec4<i32>(-11732i, -19814i, 46019i, -42951i), vec4<i32>(2147483647i, -23847i, 1i, 41067i), vec4<i32>(57846i, -1i, -36431i, 5816i), vec4<i32>(i32(-2147483648), -15657i, 40944i, 1i), vec4<i32>(1i, 26485i, 2147483647i, 2147483647i), vec4<i32>(-2697i, i32(-2147483648), -19148i, 1i), vec4<i32>(-15026i, -1i, 2147483647i, 30218i), vec4<i32>(2147483647i, 40973i, -41548i, 0i), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 31439i), vec4<i32>(-12053i, -1i, -63467i, 2147483647i), vec4<i32>(20915i, 39357i, 1i, -30988i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(973f, _wgslsmith_f_op_f32(min(-990f, 1576f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1775f) + _wgslsmith_f_op_f32(abs(295f))), -1000f)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 100f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(453f * var_0.x)))))));
    var var_2 = vec2<i32>(-15523i, u_input.a.x);
    var var_3 = countOneBits(global1[_wgslsmith_index_u32(0u, 17u)]);
    let var_4 = _wgslsmith_f_op_f32(max(var_0.x, 1018f));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~7814u), vec2<u32>(4294967295u, 1393u));
}

fn func_2(arg_0: bool) -> Struct_4 {
    global1 = array<vec4<i32>, 17>();
    var var_0 = u_input.a.x;
    global0 = array<bool, 6>();
    let var_1 = Struct_4(~(~1u));
    var var_2 = ~(~_wgslsmith_sub_u32(func_3(), var_1.a) & 1u);
    return Struct_4(abs(var_1.a));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(485f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(575f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(827f, -2267f, false)) - -2716f))), _wgslsmith_f_op_f32(f32(-1f) * -549f));
    var var_1 = Struct_4(_wgslsmith_div_u32(~arg_0.a, 1u));
    var var_2 = global0[_wgslsmith_index_u32(var_1.a, 6u)];
    var var_3 = Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, 531f) - vec3<f32>(-667f, -463f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(389f, 575f, -1650f) + vec3<f32>(560f, var_0.x, var_0.x)), !vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 6u)], true, true))), vec3<f32>(_wgslsmith_f_op_f32(min(348f, var_0.x)), var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(744f, -1000f, var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -138f), _wgslsmith_f_op_f32(1380f * -1183f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-881f, var_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1497f, var_0.x)), vec2<f32>(var_0.x, 1187f), !global0[_wgslsmith_index_u32(arg_0.a, 6u)])))), ~u_input.a.yx);
    var_0 = var_3.c;
    return Struct_4(4294967295u);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    var var_0 = arg_0;
    global0 = array<bool, 6>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1344f + var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-573f)) + var_0.a), 455f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f + 620f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))))), select(vec2<i32>(u_input.a.x, -2147483647i >> (arg_1.a % 32u)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.a), vec2<u32>(arg_1.a, arg_1.a)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17929i, u_input.a.x, 1i, 0i), vec4<i32>(2147483647i, 2147483647i, -745i, 1i)) & abs(-15229i), abs(u_input.a.x) | select(u_input.a.x, u_input.a.x, true)), select(vec2<bool>(true, true), vec2<bool>(!global0[_wgslsmith_index_u32(arg_1.a, 6u)], arg_0.a != var_0.a), global0[_wgslsmith_index_u32(71888u, 6u)])));
    var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -808f));
    let var_2 = firstLeadingBit(-54185i ^ var_1.d.x);
    return func_4(Struct_4(_wgslsmith_sub_u32(reverseBits(~10992u), ~1u >> (arg_1.a % 32u))));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    global1 = array<vec4<i32>, 17>();
    let var_0 = reverseBits(vec3<u32>(~(~16953u), ~arg_0.a, arg_0.a)) ^ vec3<u32>(abs(~(~1u)), ~(~_wgslsmith_mult_u32(1u, 4294967295u)), ~func_4(func_2(true)).a);
    global1 = array<vec4<i32>, 17>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1088f, arg_2.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(arg_2.x, -923f), _wgslsmith_f_op_f32(arg_2.x - -1494f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(arg_2.zxz)), vec3<f32>(939f, 249f, 2334f), all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], false))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-2069f + arg_2.x)), u_input.a.xz));
    global0 = array<bool, 6>();
    return _wgslsmith_f_op_f32(round(arg_2.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_4 {
    global1 = array<vec4<i32>, 17>();
    global0 = array<bool, 6>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(func_5(Struct_3(308f), func_4(func_2(global0[_wgslsmith_index_u32(0u, 6u)]))), ~(-5513i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.a, -987f, arg_2.a.b.x, 1000f), vec4<f32>(-864f, arg_0.a.a, -615f, 651f)))))))), arg_0.a.b.x);
    global0 = array<bool, 6>();
    var var_1 = func_4(Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32221u), _wgslsmith_mod_vec2_u32(vec2<u32>(63399u, 56360u), vec2<u32>(68269u, 4294967295u))), _wgslsmith_mod_u32(~4294967295u, ~1u))));
    return Struct_4(1u);
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: i32) -> u32 {
    let var_0 = -1560i;
    var var_1 = Struct_1(-923f, vec3<f32>(-643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f + -1000f)), 783f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, arg_1.a))))), select(reverseBits(u_input.a.yy | _wgslsmith_div_vec2_i32(u_input.a.yz, u_input.a.yy)), _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a.x, ~0i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3, 2147483647i), vec2<i32>(arg_3, var_0)))), select(vec2<bool>(any(vec2<bool>(false, true)), true), !arg_0.xy, !select(arg_0.xx, vec2<bool>(arg_0.x, true), global0[_wgslsmith_index_u32(79899u, 6u)]))));
    let var_2 = arg_0.zxx;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1369f)), vec3<f32>(arg_1.a, var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-214f * var_1.b.x), 1927f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, var_1.b.x)), _wgslsmith_f_op_f32(round(-377f))), firstTrailingBit(countOneBits(vec2<i32>(u_input.a.x, 1i))) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.a, arg_2.a), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a, 1u), vec2<u32>(22624u, 1u))) % vec2<u32>(32u))));
    global0 = array<bool, 6>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(select(firstTrailingBit(~0u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(51958u, 1u, 1u, 105265u), vec4<u32>(45360u, 82410u, 60438u, 9086u))) >> (40776u % 32u), max(36490u, ~4294967295u)), true), 6u)];
    global0 = array<bool, 6>();
    var var_1 = 1i;
    var var_2 = ~_wgslsmith_mult_u32(~(~countOneBits(35494u)), 16793u);
    let var_3 = firstTrailingBit(~(-select(vec4<i32>(-1795i, 0i, -33768i, -1i), vec4<i32>(17914i, u_input.a.x, u_input.a.x, -4083i), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 6u)]))) | select(abs(global1[_wgslsmith_index_u32(0u, 17u)]), -global1[_wgslsmith_index_u32(4294967295u, 17u)] << (~vec4<u32>(24934u, 180u, 4294967295u, 17176u) % vec4<u32>(32u)), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], false))));
    var_2 = _wgslsmith_mod_u32(max(_wgslsmith_clamp_u32(~11876u, 0u, 31000u), 4294967295u), ~reverseBits(func_7(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(35803u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), Struct_3(-1474f), func_1(Struct_2(Struct_1(-1250f, vec3<f32>(-1832f, 168f, -1208f), vec2<f32>(319f, -521f), u_input.a.yz)), global1[_wgslsmith_index_u32(1u, 17u)], Struct_2(Struct_1(595f, vec3<f32>(-861f, -150f, -1507f), vec2<f32>(811f, 492f), u_input.a.zx))), ~(-15848i))));
    let var_4 = vec4<bool>(false, !all(!vec2<bool>(global0[_wgslsmith_index_u32(39495u, 6u)], false)), any(vec4<bool>(global0[_wgslsmith_index_u32(max(~4294967295u, _wgslsmith_div_u32(66776u, 1u)), 6u)], true, true, global0[_wgslsmith_index_u32(1u, 6u)])), true);
    var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(679f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2212f, 179f)), _wgslsmith_f_op_f32(func_6(Struct_4(55178u), u_input.a.x, vec4<f32>(-1000f, -1161f, -1000f, -258f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-278f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f + 1372f))))), ~(~_wgslsmith_div_u32(1u, select(1u, 4294967295u, global0[_wgslsmith_index_u32(0u, 6u)]))));
}

