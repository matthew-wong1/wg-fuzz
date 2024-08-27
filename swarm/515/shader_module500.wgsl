struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(232f, vec2<i32>(2147483647i, 4397i)), 75027i, Struct_1(1000f, vec2<i32>(-2918i, 0i)));

var<private> global1: Struct_3 = Struct_3(37013i);

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(true, Struct_1(-959f, vec2<i32>(-1i, 2147483647i)), 43877i, Struct_1(-818f, vec2<i32>(1i, -1i))), Struct_2(false, Struct_1(545f, vec2<i32>(0i, -23730i)), -1i, Struct_1(-731f, vec2<i32>(24324i, -57978i))), Struct_2(false, Struct_1(-355f, vec2<i32>(-6762i, -6898i)), 0i, Struct_1(935f, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(false, Struct_1(-678f, vec2<i32>(1i, 4236i)), 0i, Struct_1(954f, vec2<i32>(4732i, 1i))), Struct_2(false, Struct_1(-3015f, vec2<i32>(0i, 2147483647i)), i32(-2147483648), Struct_1(907f, vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_2(true, Struct_1(589f, vec2<i32>(-33577i, 2147483647i)), -1i, Struct_1(1701f, vec2<i32>(-20572i, -1i))), Struct_2(false, Struct_1(-2366f, vec2<i32>(29179i, 1i)), i32(-2147483648), Struct_1(607f, vec2<i32>(2147483647i, 18074i))), Struct_2(true, Struct_1(860f, vec2<i32>(-6922i, i32(-2147483648))), 21777i, Struct_1(-1093f, vec2<i32>(-1i, 2147483647i))), Struct_2(true, Struct_1(-911f, vec2<i32>(-2113i, -1i)), 2147483647i, Struct_1(1283f, vec2<i32>(i32(-2147483648), 40764i))), Struct_2(false, Struct_1(-3053f, vec2<i32>(2147483647i, i32(-2147483648))), 2147483647i, Struct_1(834f, vec2<i32>(35690i, 22818i))), Struct_2(false, Struct_1(-385f, vec2<i32>(1i, -11896i)), 4183i, Struct_1(416f, vec2<i32>(-1i, 2147483647i))), Struct_2(true, Struct_1(-340f, vec2<i32>(2147483647i, -70444i)), -32760i, Struct_1(1271f, vec2<i32>(i32(-2147483648), 0i))), Struct_2(true, Struct_1(629f, vec2<i32>(31431i, 24722i)), -14882i, Struct_1(-281f, vec2<i32>(39543i, 2147483647i))), Struct_2(false, Struct_1(-1564f, vec2<i32>(2147483647i, 67773i)), -1i, Struct_1(-1000f, vec2<i32>(-17342i, i32(-2147483648)))), Struct_2(false, Struct_1(-683f, vec2<i32>(-12975i, -1i)), i32(-2147483648), Struct_1(-788f, vec2<i32>(63660i, -20954i))), Struct_2(true, Struct_1(-558f, vec2<i32>(0i, i32(-2147483648))), i32(-2147483648), Struct_1(-1329f, vec2<i32>(0i, 0i))), Struct_2(false, Struct_1(645f, vec2<i32>(93227i, -1i)), 0i, Struct_1(-1180f, vec2<i32>(-46220i, -10886i))), Struct_2(false, Struct_1(1430f, vec2<i32>(-8400i, 22291i)), -1i, Struct_1(101f, vec2<i32>(0i, 32286i))), Struct_2(false, Struct_1(314f, vec2<i32>(20552i, 3482i)), 11555i, Struct_1(915f, vec2<i32>(-1i, 29463i))), Struct_2(false, Struct_1(-451f, vec2<i32>(29788i, 24878i)), 24402i, Struct_1(651f, vec2<i32>(4514i, 6926i))), Struct_2(false, Struct_1(855f, vec2<i32>(19302i, 2147483647i)), -26791i, Struct_1(1092f, vec2<i32>(-17694i, -1453i))), Struct_2(true, Struct_1(-170f, vec2<i32>(-1i, 0i)), -11081i, Struct_1(-656f, vec2<i32>(58191i, 2147483647i))), Struct_2(true, Struct_1(-507f, vec2<i32>(-19769i, 2147483647i)), -4023i, Struct_1(726f, vec2<i32>(-35022i, 0i))), Struct_2(false, Struct_1(-560f, vec2<i32>(0i, -26600i)), -14104i, Struct_1(213f, vec2<i32>(1i, -1i))));

var<private> global3: vec2<f32>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = vec2<bool>(global0.a, !all(vec2<bool>(global0.a, !global0.a)));
    let var_1 = !select(vec4<bool>(false, var_0.x, var_0.x, !(global0.b.b.x <= global0.c)), !(!(!vec4<bool>(var_0.x, false, true, var_0.x))), false);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, _wgslsmith_f_op_f32(f32(-1f) * -153f))))));
    var var_2 = Struct_3(22170i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(-1209f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_div_f32(global0.b.a, global0.b.a)), global0.b.a)))), -global0.b.b);
    return vec2<bool>(global0.a, true);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    global1 = Struct_3(2147483647i);
    var var_0 = arg_0;
    global2 = array<Struct_2, 24>();
    let var_1 = Struct_3(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(arg_0.a, 69935i, 49299i), u_input.a), vec3<i32>(-21230i ^ var_0.a, countOneBits(u_input.a.x), ~8990i))));
    let var_2 = !(!(arg_0.a > firstTrailingBit(-10102i)));
    return Struct_2(!select(all(func_3()), !(!var_2), true), global0.d, arg_1 & _wgslsmith_add_i32(firstTrailingBit(-17043i), var_1.a | (0i | var_0.a)), global0.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<f32> {
    global2 = array<Struct_2, 24>();
    let var_0 = -280f;
    global2 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, global0.d.a, -108f) - vec3<f32>(var_0, -649f, 895f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, arg_3.d.a, arg_3.b.a))))) + vec3<f32>(_wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(arg_1 * 554f)), -1429f, _wgslsmith_f_op_f32(-161f * _wgslsmith_f_op_f32(round(841f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.d.a, 741f, _wgslsmith_f_op_f32(arg_3.d.a - global0.b.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, arg_1, 736f) - vec3<f32>(-463f, -525f, 1320f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-733f, 402f, global3.x) * vec3<f32>(672f, var_0, arg_3.b.a))), select(vec3<bool>(true, false, true), select(vec3<bool>(arg_3.a, true, arg_3.a), vec3<bool>(true, arg_3.a, arg_3.a), vec3<bool>(true, global0.a, global0.a)), global0.a)))))));
    let var_2 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(abs(global0.b.a)));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.xx))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, 914f), var_1.yy)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f * 896f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.b.a))), global3.x, global0.a)))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    let var_0 = ~vec2<u32>(u_input.b.x, ~(u_input.b.x >> (u_input.b.x % 32u)));
    global3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(u_input.b.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x), min(~u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(global1.a, global0.c, 1i), vec3<i32>(arg_0, u_input.a.x, u_input.a.x))), func_2(Struct_3(arg_0), 1i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(646f - 870f) - _wgslsmith_f_op_f32(round(global0.b.a))), -2483f), arg_1.xy))));
    var var_1 = select(vec3<bool>(!global0.a, false, any(select(select(vec4<bool>(false, true, global0.a, true), vec4<bool>(global0.a, true, global0.a, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x)), select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(arg_1.x, arg_1.x, global0.a, true), true), select(vec4<bool>(global0.a, true, arg_1.x, arg_1.x), vec4<bool>(false, true, global0.a, global0.a), arg_1.x)))), !arg_1, select(!(!(!global0.a)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(26642i, arg_0), global0.b.b) != -26849i, arg_1.x));
    let var_2 = Struct_1(-2878f, firstTrailingBit(_wgslsmith_div_vec2_i32(global0.b.b ^ _wgslsmith_div_vec2_i32(vec2<i32>(global1.a, 1i), vec2<i32>(-41221i, 2147483647i)), countOneBits(vec2<i32>(2147483647i, -48444i)))));
    let var_3 = !(!arg_1);
    return _wgslsmith_clamp_u32(1u, firstLeadingBit(13825u), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(~vec3<u32>(u_input.b.x ^ 14864u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, func_1(i32(-1i) * -14125i, vec3<bool>(false, false, global0.a)), max(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))));
    let var_1 = global0.a;
    global2 = array<Struct_2, 24>();
    global2 = array<Struct_2, 24>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.a, -1000f), vec2<f32>(global0.d.a, global0.b.a)), vec2<f32>(1189f, global3.x), func_3().x)), vec2<f32>(_wgslsmith_f_op_f32(-921f * 203f), global0.b.a)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -1000f) * vec2<f32>(-588f, global3.x)) - vec2<f32>(284f, global3.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1005f, -1341f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(~vec2<u32>(u_input.b.x, 0u), -429f, vec3<i32>(20503i, global0.d.b.x, -13508i), global2[_wgslsmith_index_u32(select(var_0.x, var_0.x, global0.a), 24u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1482f, 664f) + vec2<f32>(global3.x, global0.b.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1209f))), select(select(vec2<bool>(global0.a, true), vec2<bool>(false, false), vec2<bool>(global0.a, global0.a)), vec2<bool>(true, true), global0.a))), true)));
    var var_2 = vec4<bool>(!all(!vec4<bool>(global0.a, true, global0.a, false)) & global0.a, u_input.c.x >= -_wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.c, u_input.c.x), global1.a, global1.a), global0.a, true);
    var var_3 = 1i;
    var var_4 = func_3();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 552f) - -582f) + -741f)), _wgslsmith_f_op_f32(-1282f * global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(select(abs(21793u), u_input.b.x << (var_0.x % 32u), true), _wgslsmith_mod_u32(~var_0.x, 8064u), min(select(4294967295u, 10758u, true), 0u), ~min(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a, global3.x, global0.d.a, global3.x)))), vec4<f32>(_wgslsmith_f_op_vec2_f32(func_4(var_0.zx, global3.x, u_input.a | vec3<i32>(global0.b.b.x, -1i, global1.a), Struct_2(false, global0.d, u_input.c.x, global0.d))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.a - global0.b.a)), global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.b.a))))))));
}

