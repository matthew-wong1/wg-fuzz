struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, true, true));

var<private> global3: array<vec3<u32>, 2>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    global2 = Struct_1(select(select(global2.a, vec4<bool>(false, select(true, global2.a.x, true), all(arg_1.a.yw), true), select(global2.a, global2.a, select(vec4<bool>(true, false, false, arg_1.a.x), global2.a, arg_1.a))), select(global2.a, vec4<bool>(!global4.x, true, global4.x, true != global2.a.x), select(arg_1.a, !global2.a, select(vec4<bool>(false, true, global2.a.x, global2.a.x), vec4<bool>(false, global2.a.x, arg_1.a.x, false), global2.a))), select(!arg_1.a, arg_1.a, any(!arg_1.a.zwy))));
    global4 = !arg_1.a.xw;
    let var_0 = _wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_clamp_u32(~(~0u), ~56514u >> (u_input.a % 32u), u_input.a), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(~u_input.a ^ (u_input.a ^ 0u), 2u)], global3[_wgslsmith_index_u32(4294967295u & u_input.a, 2u)])));
    var var_1 = Struct_2(~_wgslsmith_add_i32(~(~26666i), -4581i), 5011u);
    var var_2 = arg_0.x;
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 1i), 1i >> ((~u_input.a >> (var_0 % 32u)) % 32u)) ^ 2147483647i;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-221f * _wgslsmith_div_f32(1146f, _wgslsmith_f_op_f32(603f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f + -246f)))));
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.b, abs(-vec3<i32>(1i, 1i, u_input.c))), ~70806u ^ u_input.a);
    global0 = 532f;
    global1 = array<Struct_1, 21>();
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(-(~func_3(vec2<f32>(-445f, 876f), global1[_wgslsmith_index_u32(var_0.b, 21u)])), _wgslsmith_mod_i32(var_0.a, u_input.b.x)), 2147483647i, abs(u_input.c), abs(-1i));
    return Struct_1(vec4<bool>(true, var_0.b == 22493u, arg_1, false));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(-((u_input.b.x | u_input.b.x) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(58454u, 34869u), u_input.a) % 32u)), _wgslsmith_div_u32(~(u_input.a | u_input.a), u_input.a));
    var var_1 = Struct_2(_wgslsmith_mod_i32(18015i, firstTrailingBit(min(u_input.b.x ^ arg_0.x, select(var_0.a, 1i, global2.a.x)))), ~(~_wgslsmith_mult_u32(max(u_input.a, u_input.a), 36702u)));
    let var_2 = var_1.b << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_1.b, 83039u) | (vec4<u32>(5157u, 4294967295u, 4294967295u, var_0.b) ^ vec4<u32>(u_input.a, var_0.b, 0u, u_input.a)), ~(~vec4<u32>(var_0.b, 1u, 53275u, var_0.b)), ~(~vec4<u32>(u_input.a, var_1.b, var_1.b, u_input.a))), vec4<u32>(54275u, 0u, ~16024u, ~4294967295u)) % 32u);
    let var_3 = vec2<bool>(any(select(global2.a, global2.a, global2.a.x)), true);
    global1 = array<Struct_1, 21>();
    return var_0;
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !global4.x;
    global1 = array<Struct_1, 21>();
    let var_1 = Struct_1(!global2.a);
    global2 = func_2(any(select(select(select(vec3<bool>(true, true, false), var_1.a.wwx, vec3<bool>(true, global4.x, var_0)), !global2.a.yyz, vec3<bool>(global2.a.x, global2.a.x, true)), vec3<bool>(true, !global2.a.x, false), var_0)), any(!select(vec2<bool>(true, false), !global2.a.wx, global2.a.xx)), !(all(var_1.a) || true));
    let var_2 = 11217i;
    return arg_2;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = array<Struct_1, 21>();
    var var_0 = func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f + _wgslsmith_div_f32(753f, -1203f))))), vec2<i32>(max(u_input.b.x, ~firstLeadingBit(u_input.b.x)), u_input.c), func_4(-min(countOneBits(vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c)), firstTrailingBit(vec4<i32>(1i, u_input.c, u_input.b.x, u_input.c))), func_2(!global2.a.x, !(!global4.x), true)));
    global1 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -488f);
    var var_2 = arg_0.x;
    return Struct_2(u_input.c, countOneBits(~(38775u ^ _wgslsmith_mod_u32(arg_0.x, 0u))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1082f + -366f) - _wgslsmith_f_op_f32(max(-868f, -312f))), _wgslsmith_f_op_f32(f32(-1f) * -1457f))))));
    let var_0 = min(u_input.c, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), ~abs(-14934i)), 1i));
    global3 = array<vec3<u32>, 2>();
    global2 = func_2(func_2((_wgslsmith_div_i32(1i, 2147483647i) <= countOneBits(arg_0.a)) | (any(global2.a.zzw) | select(global2.a.x, false, global4.x)), ~(~var_0) < -(~0i), select(!global2.a.x, true, all(func_2(true, true, global4.x).a.wz))).a.x, _wgslsmith_mod_i32(arg_0.a, 0i >> (u_input.a % 32u)) > _wgslsmith_mod_i32(6625i, arg_0.a), select(func_2(true, global4.x, global2.a.x).a.x, !all(global2.a.yw), u_input.a <= 37713u));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-986f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(380f, -655f) - -1028f) + _wgslsmith_f_op_f32(sign(-178f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-289f * -600f), _wgslsmith_f_op_f32(select(207f, -134f, true)))))));
    return Struct_2(arg_0.a, u_input.a);
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(376f, -1000f, -281f, -1635f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, 296f, 1677f, 244f)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-393f)) - -652f) - _wgslsmith_f_op_f32(f32(-1f) * -1547f)), -421f, 116f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1811f, _wgslsmith_f_op_f32(min(158f, -761f)), arg_3.a.x && global2.a.x))))));
    var var_1 = Struct_2(_wgslsmith_mod_i32(~(-52065i), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, arg_1.a) & vec2<i32>(0i, arg_1.a), ~min(vec2<i32>(43913i, -1i), vec2<i32>(arg_1.a, -1i)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_0, 35996u), arg_1.b));
    var var_2 = var_0.x;
    var var_3 = func_2(~u_input.a != var_1.b, func_2(true, true, true).a.x, select(false, any(vec2<bool>(-41313i != var_1.a, true)), func_2(arg_2.a.x, global4.x | (3220i <= var_1.a), arg_3.a.x).a.x));
    global4 = arg_2.a.xx;
    return Struct_1(!vec4<bool>(any(vec4<bool>(arg_3.a.x, true, arg_2.a.x, global4.x)) || var_3.a.x, arg_3.a.x, any(vec4<bool>(global4.x, global2.a.x, false, arg_3.a.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 2>();
    global0 = 1174f;
    var var_0 = u_input.b.yz;
    var var_1 = 1f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-835f + _wgslsmith_f_op_f32(-617f - 210f))))));
    var_0 = vec2<i32>(abs(_wgslsmith_add_i32(-1i, 2147483647i)), abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(35767i, 1i, u_input.c, var_0.x), vec4<i32>(var_0.x, 7514i, u_input.c, 1i), vec4<bool>(false, false, global2.a.x, global2.a.x)), -vec4<i32>(var_0.x, u_input.b.x, -15855i, var_0.x))) << (1u % 32u));
    global2 = func_7(0u, func_6(func_1(reverseBits(~vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(-u_input.b.xz), vec2<i32>(max(u_input.c, 1i), 1i), max(-vec2<i32>(u_input.b.x, 0i), ~u_input.b.xx))), Struct_1(func_2(all(!vec3<bool>(false, global2.a.x, true)), global2.a.x, global4.x).a), Struct_1(select(vec4<bool>(-1i > u_input.b.x, select(global2.a.x, false, global2.a.x), true, global2.a.x), vec4<bool>(any(vec3<bool>(global2.a.x, global4.x, global2.a.x)), var_0.x != 52244i, global4.x, !global2.a.x), !(!global2.a))));
    var var_2 = func_7(~_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 89762u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 18611u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 2u)], select(select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), global2.a.x), vec3<u32>(0u, u_input.a, u_input.a), !global4.x)), func_5(-723f, -reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(5881i, var_0.x), u_input.b.zy, vec2<i32>(-1748i, u_input.b.x))), func_4(vec4<i32>(7247i, 26321i >> (u_input.a % 32u), max(var_0.x, -16212i), _wgslsmith_mult_i32(var_0.x, 13733i)), global1[_wgslsmith_index_u32(u_input.a, 21u)])), func_7(25062u, Struct_2(var_0.x, ~(~70404u)), func_2(false, global2.a.x, any(vec3<bool>(false, global4.x, false))), func_7(4294967295u, func_1(~global3[_wgslsmith_index_u32(4294967295u, 2u)]), func_2(true, false, global4.x), Struct_1(!vec4<bool>(true, global2.a.x, true, true)))), global1[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(27379u, u_input.a, 4294967295u, u_input.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 48790u, u_input.a, 11669u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 24215u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(61377u, u_input.a, 44147u, u_input.a)))), vec4<u32>(~93816u, u_input.a, _wgslsmith_mod_u32(max(u_input.a, u_input.a), 4294967295u), u_input.a)));
}

