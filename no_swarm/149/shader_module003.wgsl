struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(3250f, 563f, 235f);

var<private> global1: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global2: array<f32, 25> = array<f32, 25>(-1846f, -1652f, -326f, -793f, -520f, 124f, -1000f, -365f, 436f, -590f, -260f, 712f, 646f, 685f, 1469f, 401f, 1449f, 1231f, -754f, -634f, -1683f, 509f, -1018f, 510f, 756f);

var<private> global3: Struct_4 = Struct_4(vec2<i32>(i32(-2147483648), 0i), 397f, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), vec4<f32>(-1375f, 2100f, -610f, -633f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_4(countOneBits(arg_3.c.a), _wgslsmith_f_op_f32(min(975f, 432f)), Struct_1(global3.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 25u)], 152f, global0.x, 1051f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 1768f, 1000f, 1282f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, global3.d.x, -1000f, arg_3.b.x), global3.d))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d));
    var var_2 = Struct_2(var_0.c, reverseBits(arg_2), Struct_1(vec2<i32>(global1.x, ~_wgslsmith_div_i32(arg_3.c.a.x, 13296i))));
    var var_3 = Struct_4(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(-var_0.c.a, firstLeadingBit(vec2<i32>(-2147483647i, var_2.b.x))), reverseBits(global3.c.a.x & -2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + -1838f))))), global3.c, _wgslsmith_f_op_vec4_f32(-global3.d));
    var_2 = Struct_2(var_2.a, _wgslsmith_clamp_vec4_i32(~arg_2, var_2.b, vec4<i32>(~_wgslsmith_sub_i32(2147483647i, 1i), 1i, global1.x, 1i)), Struct_1(vec2<i32>(_wgslsmith_mod_i32(80741i, -52241i | global1.x), i32(-1i) * -1i)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-4544i, _wgslsmith_div_i32(-1i, -1i) | -global3.a.x), -_wgslsmith_clamp_vec2_i32(var_3.c.a, min(_wgslsmith_div_vec2_i32(var_2.a.a, vec2<i32>(arg_1, arg_1)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.c.a.x, var_0.a.x), vec2<i32>(-24046i, -2147483647i))), _wgslsmith_div_vec2_i32(~vec2<i32>(-57151i, global1.x), vec2<i32>(-62107i, 47352i))));
}

fn func_2() -> i32 {
    var var_0 = abs(vec2<u32>(_wgslsmith_sub_u32(79586u, _wgslsmith_dot_vec4_u32(vec4<u32>(30371u, 0u, 1u, 26219u), vec4<u32>(4294967295u, 73627u, 1u, 34236u))), 4294967295u));
    global3 = Struct_4(~vec2<i32>(-2147483647i, -20611i << (var_0.x % 32u)) | _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(global1.x), 1i), _wgslsmith_add_vec2_i32(vec2<i32>(-811i, 1i), vec2<i32>(29697i, 19368i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1151f, 1130f) * -1548f))), global3.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18022u, 25u)]), 460f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - 296f), _wgslsmith_f_op_f32(trunc(-350f))))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-975f)))));
    var var_1 = Struct_2(global3.c, vec4<i32>(global3.c.a.x, -(~1i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, global1.x), global3.a), vec2<i32>(global1.x, u_input.a.x)) & u_input.a.x, 1i), Struct_1(vec2<i32>(min(func_3(vec4<u32>(var_0.x, 0u, var_0.x, 0u), 3627i, vec4<i32>(u_input.a.x, global3.a.x, 52928i, global3.a.x), Struct_3(vec3<u32>(13085u, var_0.x, var_0.x), vec2<f32>(1318f, global3.d.x), global3.c)), global1.x), -2147483647i)));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(var_1.b, var_1.b | -var_1.b)) == u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b + _wgslsmith_div_f32(387f, global2[_wgslsmith_index_u32(27062u, 25u)])) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(379f)), _wgslsmith_f_op_f32(-global3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(116f - -582f))))));
    return 1i;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = global3.d.www;
    var var_2 = global3.c;
    let var_3 = Struct_4(vec2<i32>(_wgslsmith_sub_i32(func_2() & global3.a.x, -36666i), _wgslsmith_mult_i32(-41730i >> (1u % 32u), arg_3.a.x)), _wgslsmith_div_f32(-2245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(1757f * -677f))))), Struct_1(-_wgslsmith_add_vec2_i32(u_input.a.zy, global3.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global3.d))))));
    global1 = global3.c.a;
    return 232f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.a.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~select(40093u, 1u, false), 25u)]) + _wgslsmith_f_op_f32(select(1293f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1290f - -1389f), 1000f, ~14849i, global3.c)), true))), Struct_1(abs(global3.c.a)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(181f, 825f), _wgslsmith_f_op_f32(ceil(700f))), global2[_wgslsmith_index_u32(~16820u, 25u)], select(true, true, false))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-428f)))));
    let var_1 = Struct_3(vec3<u32>(~min(1u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(37979u, 4294967295u), ~vec2<u32>(12235u, 1u)), ~1u) >> (min(_wgslsmith_mod_vec3_u32(vec3<u32>(18896u, 31667u, 4294967295u), vec3<u32>(15685u, 4294967295u, 34456u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<u32>(30848u, 72612u, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, -583f), vec2<f32>(global0.x, global2[_wgslsmith_index_u32(1u, 25u)])))) - global3.d.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, 121f) + vec2<f32>(global0.x, var_0.d.x)), global0.xx, true))), !select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec4<bool>(true, false, true, true))))), global3.c);
    var var_2 = var_0.d;
    let var_3 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(!(global2[_wgslsmith_index_u32(4294967295u, 25u)] <= -548f), true), vec2<bool>(any(vec3<bool>(false, false, true)), !any(vec2<bool>(false, false)))), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false))))), false || any(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true)));
    var_2 = global3.d;
    let var_4 = Struct_4(var_1.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.x)))), 539f), Struct_1(countOneBits(firstTrailingBit(max(u_input.a.xz, u_input.a.yy)))), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, global0.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1228f))))), global3.d.x));
    var var_5 = Struct_2(var_0.c, -firstLeadingBit(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-2147483647i, -27406i), 52082i, i32(-1i) * -2147483647i)), Struct_1(_wgslsmith_sub_vec2_i32(var_1.c.a, var_0.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_add_i32(abs(1i), _wgslsmith_mult_i32(global3.a.x, -1i)), -2147483647i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.d.xyx, var_2.xxw)) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, -905f, -1007f), vec3<f32>(603f, -796f, -818f)), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 25u)], global0.x, 168f), vec3<f32>(var_1.b.x, var_4.b, global2[_wgslsmith_index_u32(26877u, 25u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.d.wxy)))), select(_wgslsmith_add_vec4_i32(abs(firstTrailingBit(vec4<i32>(1i, var_1.c.a.x, -16154i, -28869i))), firstLeadingBit(vec4<i32>(var_4.c.a.x, global1.x, var_5.c.a.x, var_5.c.a.x)) >> (~vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, 30924u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(global3.a.x, var_4.c.a.x, -2147483647i, u_input.a.x)), var_5.b), vec4<bool>(var_3.x, false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(874f))), max(_wgslsmith_dot_vec3_i32(abs(var_5.b.yyx), var_5.b.wzx), -48533i) | 1i);
}

