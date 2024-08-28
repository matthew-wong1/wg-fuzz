struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: vec2<i32>;

var<private> global4: array<bool, 7>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = -max(-vec2<i32>(global3.x, 25764i), vec2<i32>(-1i, global3.x)) << (arg_0.zy % vec2<u32>(32u));
    global3 = countOneBits(-vec2<i32>(2147483647i, ~(~(-19805i))));
    global1 = global4[_wgslsmith_index_u32(arg_0.x, 7u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1349f, -2301f, 484f) * vec3<f32>(1043f, -790f, 1181f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-562f, -242f, 552f), vec3<f32>(-1036f, -1732f, 2444f), vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(arg_0.x, 7u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -220f, 1165f)), select(vec3<bool>(true, global4[_wgslsmith_index_u32(arg_0.x, 7u)], true), vec3<bool>(false, true, global4[_wgslsmith_index_u32(arg_0.x, 7u)]), global4[_wgslsmith_index_u32(17698u, 7u)])))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1249f, -447f, 1010f) - vec3<f32>(-1147f, 436f, 423f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 266f, 168f) * vec3<f32>(-258f, -222f, -917f)), !global4[_wgslsmith_index_u32(arg_0.x, 7u)])))), firstLeadingBit(vec4<u32>(~arg_0.x, 44039u, ~_wgslsmith_sub_u32(arg_0.x, arg_0.x), arg_0.x)));
    var var_2 = var_1;
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_2.a.x) * _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(359f + -2482f) + _wgslsmith_f_op_f32(max(var_1.a.x, -484f)))), var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x)))) * _wgslsmith_f_op_f32(trunc(-1818f))), var_1.a.x);
}

fn func_2() -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(74271u, 7u)];
    global4 = array<bool, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1764f)), -1590f, 1391f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-894f, -1375f, -424f))) + _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, 1u, 55165u)))), select(select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(36807u, 7u)], global4[_wgslsmith_index_u32(26220u, 7u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(3146u, 7u)], false), true), !vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 7u)], true, global4[_wgslsmith_index_u32(8513u, 7u)]), true)))), vec4<u32>(1u, min(_wgslsmith_mult_u32(4294967295u, 0u), 56455u), ~5108u, 1u) ^ select(~(~vec4<u32>(0u, 121109u, 72182u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), false));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(-777f * -1000f), _wgslsmith_div_f32(-711f, var_1.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1995f, var_1.a.x, -3075f) + vec3<f32>(var_1.a.x, 753f, var_1.a.x)), true)), vec3<bool>(true, false, false)))), abs(var_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    global2 = array<vec2<bool>, 15>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1403f, -1734f, !(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 30490u, 1u, arg_0.x), vec4<u32>(55368u, arg_0.x, arg_0.x, 0u)) == arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(554f, -1452f) + _wgslsmith_f_op_f32(min(-933f, -842f))))));
    global4 = array<bool, 7>();
    var var_1 = vec4<u32>(max(~select(~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 18907u, 3474u), arg_0), true), 4294967295u & _wgslsmith_div_u32(41672u << (1u % 32u), arg_0.x)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.x, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), min(arg_0.zx, vec2<u32>(arg_0.x, arg_0.x)), arg_0.xy << (vec2<u32>(52278u, 37204u) % vec2<u32>(32u)))), arg_0.x & (24244u & max(arg_0.x, 0u)), 4294967295u);
    global1 = ~1u <= arg_0.x;
    return select(!select(vec3<bool>(!global4[_wgslsmith_index_u32(12162u, 7u)], !global4[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 32104u), 7u)]), select(select(vec3<bool>(global4[_wgslsmith_index_u32(var_1.x, 7u)], false, false), vec3<bool>(global4[_wgslsmith_index_u32(63629u, 7u)], global4[_wgslsmith_index_u32(1u, 7u)], true), false), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 7u)], global4[_wgslsmith_index_u32(2489u, 7u)], global4[_wgslsmith_index_u32(50446u, 7u)]), vec3<bool>(global4[_wgslsmith_index_u32(13332u, 7u)], true, true), false), true), select(global4[_wgslsmith_index_u32(1537u, 7u)], false, global4[_wgslsmith_index_u32(25692u, 7u)]) || true), !vec3<bool>(false, !global4[_wgslsmith_index_u32(38552u << (0u % 32u), 7u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 44820u) | vec2<u32>(102104u, arg_0.x), max(var_1.yx, vec2<u32>(var_1.x, arg_0.x))), 7u)]), select(!vec3<bool>(!global4[_wgslsmith_index_u32(46038u, 7u)], true, true), vec3<bool>(!global4[_wgslsmith_index_u32(arg_0.x, 7u)], abs(var_1.x) > select(var_1.x, 0u, global4[_wgslsmith_index_u32(arg_0.x, 7u)]), global4[_wgslsmith_index_u32(max(~arg_0.x, arg_0.x), 7u)]), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = arg_1.c.b;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.c.a.x);
    let var_2 = global3.x << (abs(_wgslsmith_clamp_u32(~1u, var_0.x, 1u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.x * 460f) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(floor(arg_1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f + -167f) * _wgslsmith_f_op_f32(-650f - 810f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-499f, arg_1.c.a.x)) + _wgslsmith_div_f32(arg_1.e.x, arg_1.e.x))))));
    return ~(~(~select(vec4<u32>(arg_1.c.b.x, 25632u, var_0.x, 29128u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1u, var_0.x), vec4<u32>(var_0.x, arg_1.c.b.x, 15292u, var_0.x)), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = -34815i;
    let var_1 = global4[_wgslsmith_index_u32(~arg_0.b.x, 7u)];
    global1 = true;
    global4 = array<bool, 7>();
    let var_2 = arg_3.c.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f - _wgslsmith_f_op_f32(sign(1630f)))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.c.a.x)))) + _wgslsmith_f_op_f32(abs(arg_2.a.x))), _wgslsmith_f_op_f32(-arg_0.a.x), -570f, -321f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(504f, 424f, 1195f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, -1000f, 714f)))), vec4<u32>(116527u << (~4294967295u % 32u), 35656u, 102791u, ~1u)), -1i, Struct_1(vec3<f32>(-499f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-989f)), -515f), _wgslsmith_f_op_f32(-192f * -106f)), ~func_4(func_1(vec3<u32>(1u, 3965u, 1u)), Struct_2(vec2<bool>(true, true), global4[_wgslsmith_index_u32(0u, 7u)], Struct_1(vec3<f32>(451f, -1000f, 216f), vec4<u32>(1u, 9215u, 72004u, 34185u)), vec3<bool>(false, false, global4[_wgslsmith_index_u32(13344u, 7u)]), vec3<f32>(572f, -1053f, 418f)))), Struct_2(global2[_wgslsmith_index_u32(1u, 15u)], func_1(func_4(vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 7u)], true), Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(61018u, 7u)], false), true, Struct_1(vec3<f32>(-1000f, 126f, -1005f), vec4<u32>(0u, 28631u, 22610u, 71658u)), vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 7u)]), vec3<f32>(324f, -476f, 2800f))).xwx & _wgslsmith_clamp_vec3_u32(vec3<u32>(43307u, 107165u, 24855u), vec3<u32>(0u, 79844u, 73859u), vec3<u32>(15281u, 4595u, 103250u))).x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1075f, -1412f, -465f)))), vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(!global4[_wgslsmith_index_u32(~50499u, 7u)], select(!global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 7u)], false), !global4[_wgslsmith_index_u32(1u, 7u)] | true), vec3<f32>(_wgslsmith_f_op_f32(abs(-109f)), _wgslsmith_f_op_f32(min(-799f, _wgslsmith_f_op_f32(f32(-1f) * -372f))), 1139f))));
    global3 = (firstTrailingBit(~vec2<i32>(81461i, 1i)) << (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 43514u), max(vec2<u32>(23909u, 435u), vec2<u32>(53358u, 21159u)))) % vec2<u32>(32u))) >> (select(vec2<u32>(1u, 4294967295u), vec2<u32>(_wgslsmith_add_u32(~4294967295u, func_4(vec3<bool>(global4[_wgslsmith_index_u32(1u, 7u)], false, false), Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(50757u, 7u)], false), true, Struct_1(vec3<f32>(var_0.x, -2792f, var_0.x), vec4<u32>(28984u, 1773u, 4294967295u, 4294967295u)), vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 7u)], false), vec3<f32>(957f, var_0.x, 326f))).x), firstTrailingBit(1u)), 19716i <= u_input.a) % vec2<u32>(32u));
    var var_1 = global4[_wgslsmith_index_u32(~(~44586u), 7u)];
    global3 = -abs(_wgslsmith_add_vec2_i32(~vec2<i32>(global3.x, -1i), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, -47224i), vec2<i32>(global3.x, global3.x), vec2<i32>(-21984i, u_input.a)), vec2<i32>(12119i, -2147483647i))));
    let var_2 = global4[_wgslsmith_index_u32(1u, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(15036u, 55237u, 0u, 16419u), firstLeadingBit(vec4<u32>(83089u, 1u, 4294967295u, 22768u))), _wgslsmith_mult_u32(abs(0u), 1u)) << (13847u % 32u), firstLeadingBit(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(9826u, 31351u)), select(vec2<u32>(6430u, 4294967295u), vec2<u32>(0u, 23698u), vec2<bool>(global4[_wgslsmith_index_u32(1890u, 7u)], global4[_wgslsmith_index_u32(44224u, 7u)])))) << (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.x)))), -501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(943f, var_0.x)) - var_0.x) * var_0.x)));
}

