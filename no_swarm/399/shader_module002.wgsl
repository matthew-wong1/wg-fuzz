struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 77214u;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(vec2<f32>(998f, 1000f), Struct_1(6946u)), Struct_5(vec2<f32>(1057f, 524f), Struct_1(4294967295u)), Struct_5(vec2<f32>(1168f, 610f), Struct_1(125970u)), Struct_5(vec2<f32>(-1845f, -1000f), Struct_1(1u)), Struct_5(vec2<f32>(-1000f, -1007f), Struct_1(0u)), Struct_5(vec2<f32>(-246f, 2401f), Struct_1(1u)), Struct_5(vec2<f32>(-1042f, -401f), Struct_1(20807u)), Struct_5(vec2<f32>(-662f, 532f), Struct_1(81721u)), Struct_5(vec2<f32>(-1870f, -473f), Struct_1(1u)), Struct_5(vec2<f32>(-1234f, 521f), Struct_1(43315u)), Struct_5(vec2<f32>(-658f, 2032f), Struct_1(4294967295u)), Struct_5(vec2<f32>(1320f, -925f), Struct_1(4294967295u)), Struct_5(vec2<f32>(-152f, 1985f), Struct_1(60196u)), Struct_5(vec2<f32>(280f, -525f), Struct_1(21884u)), Struct_5(vec2<f32>(1691f, -137f), Struct_1(18295u)), Struct_5(vec2<f32>(183f, 134f), Struct_1(0u)), Struct_5(vec2<f32>(150f, 849f), Struct_1(115614u)), Struct_5(vec2<f32>(1157f, 1000f), Struct_1(4294967295u)), Struct_5(vec2<f32>(1000f, -2240f), Struct_1(19275u)), Struct_5(vec2<f32>(1123f, -183f), Struct_1(4294967295u)), Struct_5(vec2<f32>(-2078f, -1454f), Struct_1(4294967295u)), Struct_5(vec2<f32>(-761f, 1751f), Struct_1(1u)), Struct_5(vec2<f32>(-435f, 1617f), Struct_1(1u)), Struct_5(vec2<f32>(-669f, 992f), Struct_1(7070u)), Struct_5(vec2<f32>(1830f, 1678f), Struct_1(4294967295u)), Struct_5(vec2<f32>(-1448f, 681f), Struct_1(17701u)), Struct_5(vec2<f32>(178f, 519f), Struct_1(62630u)), Struct_5(vec2<f32>(170f, 201f), Struct_1(4294967295u)), Struct_5(vec2<f32>(-2286f, 433f), Struct_1(8066u)), Struct_5(vec2<f32>(1000f, 1000f), Struct_1(1u)), Struct_5(vec2<f32>(-2479f, -1428f), Struct_1(1u)), Struct_5(vec2<f32>(770f, -1180f), Struct_1(1u)));

var<private> global3: array<Struct_4, 2>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(92574u, arg_1.a));
    global3 = array<Struct_4, 2>();
    global3 = array<Struct_4, 2>();
    global3 = array<Struct_4, 2>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-627f)) + -570f));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(arg_1.a, ~1u, arg_1.a >> (0u % 32u)), ~(~4294967295u), _wgslsmith_sub_u32(global4.a, countOneBits(var_0.a))), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(global4.a, global4.a, 1u)), ~(vec3<u32>(var_0.a, global4.a, arg_2) & vec3<u32>(4294967295u, 6604u, u_input.c))));
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_sub_u32(~(0u ^ global4.a), 0u);
    let var_1 = !select(vec4<bool>(all(vec3<bool>(global1.x, false, global1.x)), global1.x, global1.x, !(global1.x || true)), vec4<bool>(var_0 >= 101620u, any(vec3<bool>(global1.x, false, global1.x)), all(vec4<bool>(false, false, false, global1.x)), !all(vec3<bool>(global1.x, global1.x, global1.x))), vec4<bool>(!global1.x & (u_input.c < 113123u), false, true, true));
    global2 = array<Struct_5, 32>();
    let var_2 = ~(~(~func_3(-698f, Struct_2(u_input.c, u_input.b.zy), 1u)));
    global0 = global4.a;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1046f + 1000f) * 1000f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -946f) + -377f), 471f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(434f - -1624f) + -279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1462f * 690f) + _wgslsmith_f_op_f32(-228f - 1427f)), global1.x)))));
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_2())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1146f, 2217f, 111f, 2117f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, _wgslsmith_f_op_f32(-2303f + _wgslsmith_f_op_f32(round(-2000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f - -1964f) + -1000f), -528f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-856f, 463f, -1861f, -655f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1402f, -814f, 867f, -774f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, 1359f, -1000f, -1163f))))))));
    var var_1 = !(!(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, false, false, false), u_input.d.x != u_input.d.x)));
    var var_2 = all(select(select(vec3<bool>(true, var_1.x, false == global1.x), !var_1.yyy, !var_1.x), var_1.wxw, false));
    var var_3 = Struct_1(~(~(~24006u >> (abs(u_input.c) % 32u))));
    var var_4 = _wgslsmith_dot_vec2_u32(~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-850f))), Struct_2(_wgslsmith_div_u32(global4.a, 17639u), u_input.b.zx << (vec2<u32>(var_3.a, 0u) % vec2<u32>(32u))), 21163u).yy, countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(60458u, u_input.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global4.a, u_input.c), vec2<u32>(var_3.a, 47267u), vec2<u32>(u_input.c, var_3.a)) >> (func_3(-1000f, Struct_2(85188u, vec2<i32>(u_input.d.x, 2147483647i)), 4294967295u).zz % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(32300u, var_3.a)), ~vec2<u32>(u_input.c, var_3.a)))));
    return Struct_5(var_0.yz, Struct_1(_wgslsmith_add_u32(u_input.c, 0u)));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1105f - _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-643f, -589f))), _wgslsmith_f_op_f32(round(549f)), func_1().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(361f, 973f)) - arg_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x))))));
    global1 = !vec3<bool>(any(global1.xx) | global1.x, true, select(any(vec2<bool>(true, true)), global1.x, global1.x));
    var var_1 = ~u_input.b;
    global4 = func_1().b;
    let var_2 = arg_0.b;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f + -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~u_input.c, (_wgslsmith_sub_u32(~34821u, 0u) << ((max(25391u, global4.a) << ((0u << (0u % 32u)) % 32u)) % 32u)) ^ 4294967295u, 101743u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), -17962i)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(global4.a, 32u)], -2147483647i))))) * 837f);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 + -193f), _wgslsmith_f_op_f32(var_1 * -1828f), var_1))))));
    let var_3 = Struct_2(global4.a, vec2<i32>(u_input.b.x, firstLeadingBit(u_input.d.x)));
    var var_4 = true;
    global1 = select(vec3<bool>(false, any(select(!vec4<bool>(true, global1.x, global1.x, false), select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, global1.x, true, global1.x), true), !global1.x)), false), select(vec3<bool>(false, false, select(false, global1.x, true)), vec3<bool>(true, true, true), ~(~var_0.x) >= 1u), !select(vec3<bool>(all(vec3<bool>(false, true, false)), !global1.x, all(vec4<bool>(global1.x, global1.x, global1.x, false))), vec3<bool>(any(vec4<bool>(true, global1.x, true, true)), global1.x, any(global1.xx)), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b.x, ~(~(u_input.c << (4294967295u % 32u)) & ~(~var_0.x)), _wgslsmith_f_op_vec4_f32(func_2()).yz, -((reverseBits(vec2<i32>(49049i, 23995i)) | (var_3.b & vec2<i32>(0i, -2147483647i))) | select(vec2<i32>(var_3.b.x, -2147483647i), _wgslsmith_mod_vec2_i32(var_3.b, vec2<i32>(var_3.b.x, var_3.b.x)), true)), vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.a, 40176u, var_3.a), vec3<u32>(u_input.c, 30961u, 4915u)), 42146u)), (~u_input.c & (var_3.a & 4294967295u)) ^ 0u, max(~_wgslsmith_sub_u32(global4.a, 41358u), 1u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 85335u, var_3.a), firstLeadingBit(vec3<u32>(16299u, 79623u, var_3.a)))));
}

