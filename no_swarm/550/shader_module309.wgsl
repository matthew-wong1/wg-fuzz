struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(587f, 1660f), 1u, Struct_1(vec4<bool>(false, true, true, true), -1569f, 4294967295u, -336f, 4294967295u), 63192u), Struct_2(vec4<bool>(true, true, false, false), vec2<f32>(-484f, 1197f), 0u, Struct_1(vec4<bool>(false, false, true, true), -1039f, 37090u, -1833f, 47591u), 1u), Struct_2(vec4<bool>(true, true, true, false), vec2<f32>(353f, 543f), 1u, Struct_1(vec4<bool>(false, true, false, true), 1000f, 21562u, 1687f, 10232u), 0u), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(2052f, -2439f), 36872u, Struct_1(vec4<bool>(false, true, false, false), -986f, 33174u, -451f, 2249u), 1u), Struct_2(vec4<bool>(false, false, true, true), vec2<f32>(-904f, 906f), 84951u, Struct_1(vec4<bool>(true, false, false, false), -202f, 1u, -256f, 0u), 0u), Struct_2(vec4<bool>(false, false, false, false), vec2<f32>(227f, 355f), 1u, Struct_1(vec4<bool>(true, false, true, true), 129f, 1u, 1705f, 0u), 14670u), Struct_2(vec4<bool>(true, false, true, false), vec2<f32>(-335f, -484f), 0u, Struct_1(vec4<bool>(false, false, true, true), 307f, 12521u, 653f, 8358u), 2560u), Struct_2(vec4<bool>(true, false, true, false), vec2<f32>(812f, 856f), 1u, Struct_1(vec4<bool>(false, false, false, false), 350f, 0u, -402f, 26312u), 0u), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(1811f, -1182f), 85548u, Struct_1(vec4<bool>(true, true, false, false), -1153f, 13788u, 946f, 8009u), 44063u), Struct_2(vec4<bool>(true, true, true, true), vec2<f32>(-1351f, -999f), 53667u, Struct_1(vec4<bool>(true, false, true, true), -954f, 39770u, -210f, 1u), 4294967295u));

var<private> global2: array<vec4<f32>, 1>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = ~(-(~firstLeadingBit(u_input.c.x))) & _wgslsmith_div_i32(u_input.c.x, _wgslsmith_sub_i32(-26421i ^ ~u_input.c.x, 2147483647i));
    var var_1 = Struct_2(!select(vec4<bool>(true, any(global0.yx), global0.x, global0.x), vec4<bool>(!global0.x, !global0.x, u_input.a.x <= u_input.a.x, true), !vec4<bool>(global0.x, global0.x, false, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(320f + 491f))), -1459f)), ~(u_input.d.x >> (19593u % 32u)), Struct_1(!select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true)), !vec4<bool>(false, global0.x, global0.x, false), false | global0.x), _wgslsmith_f_op_f32(-593f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-612f)))), ~min(0u, u_input.d.x >> (23673u % 32u)), -490f, u_input.d.x), _wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(0u, u_input.d.x, u_input.d.x, 0u))), ~vec4<u32>(~u_input.b.x, ~1u, u_input.b.x, 1u)));
    global1 = array<Struct_2, 10>();
    var_0 = min(_wgslsmith_mod_i32(17264i, -2147483647i), u_input.c.x);
    let var_2 = Struct_1(select(select(!select(var_1.d.a, vec4<bool>(true, false, var_1.a.x, false), false), select(!vec4<bool>(true, false, false, var_1.d.a.x), select(var_1.d.a, vec4<bool>(false, true, true, true), var_1.a), var_1.a), true), select(vec4<bool>(var_1.d.a.x, true, all(var_1.a.wy), true), !vec4<bool>(false, var_1.a.x, var_1.a.x, false), any(vec3<bool>(true, var_1.d.a.x, true))), vec4<bool>(var_1.d.a.x, var_1.d.a.x, all(!var_1.a.zx), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) - 350f) * _wgslsmith_f_op_f32(f32(-1f) * -763f)), ~1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(864f * _wgslsmith_f_op_f32(-2069f * _wgslsmith_div_f32(var_1.b.x, var_1.b.x))))), _wgslsmith_sub_u32(~var_1.e, 1u) << (23573u % 32u));
    return select(true, var_2.a.x, false) == true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x | _wgslsmith_sub_i32(-2285i, 34113i), -(1i | arg_0.x), _wgslsmith_mod_i32(-28261i, -24282i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, -32014i), vec3<i32>(u_input.c.x, arg_0.x, arg_0.x)), vec3<i32>(-39958i, -1i, 2147483647i))), firstLeadingBit(arg_0)), arg_0);
    var var_1 = arg_0.zx;
    var var_2 = Struct_1(select(vec4<bool>(global0.x, !select(global0.x, global0.x, true), true, global0.x), vec4<bool>(func_3(), all(vec2<bool>(true, true)), func_3(), true), !(!(!vec4<bool>(true, true, global0.x, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(640f)), 2785f, !(global0.x && global0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f * _wgslsmith_f_op_f32(max(-1237f, 1079f))) - 529f)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-337f, -439f)) + _wgslsmith_f_op_f32(f32(-1f) * -729f)), _wgslsmith_f_op_f32(-786f + _wgslsmith_f_op_f32(-575f - 923f)), !(global0.x || false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-409f * 492f), _wgslsmith_f_op_f32(-1394f * 1526f))))), arg_2);
    let var_3 = any(!(!var_2.a.xzw));
    let var_4 = true;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.d)), _wgslsmith_f_op_f32(-200f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(exp2(var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - -770f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> vec2<f32> {
    var var_0 = arg_2;
    var var_1 = !vec4<bool>(all(vec4<bool>(var_0.d.c < arg_1.x, any(vec3<bool>(global0.x, arg_3, arg_2.a.x)), arg_3, true)), any(!select(vec3<bool>(false, true, var_0.a.x), arg_2.d.a.wxz, true)), var_0.d.a.x, any(!var_0.a.zw));
    let var_2 = -(_wgslsmith_add_vec3_i32(u_input.a, reverseBits(u_input.a)) ^ select(u_input.c.zzz, _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-13509i, u_input.a.x, 0i)), select(u_input.c.zwz, vec3<i32>(u_input.c.x, 0i, -1i), var_0.d.a.x)), vec3<bool>(true, func_3(), false)));
    var var_3 = vec4<f32>(-519f, 844f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1110f - var_0.d.b)))));
    let var_4 = arg_3;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(-1700f * var_3.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = vec3<bool>(!global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(952f + arg_3), arg_3) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) >= _wgslsmith_f_op_f32(floor(arg_3)), all(vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(vec3<bool>(global0.x, false, global0.x)), !global0.x)) & true);
    global0 = !select(select(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, false)), !vec3<bool>(global0.x, false, false), global0.x), vec3<bool>(global0.x, select(global0.x & global0.x, false, all(vec4<bool>(global0.x, global0.x, global0.x, true))), false == (arg_0.x < 24303u)), select(!vec3<bool>(global0.x, true, global0.x), !(!vec3<bool>(false, false, global0.x)), true | (arg_3 > -206f)));
    let var_0 = arg_1.x & 6540i;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-215f, arg_3), vec2<f32>(695f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) - vec2<f32>(arg_3, arg_3)))), vec2<f32>(arg_3, 397f), true)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(u_input.b.x, 1u)])))) + _wgslsmith_f_op_vec4_f32(func_2(u_input.c, select(vec4<u32>(arg_0.x, arg_0.x, 19405u, 1u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.d.x), vec4<bool>(false, false, global0.x, global0.x)), 4294967295u))), arg_0.zx >> (~(~vec2<u32>(arg_2, 47887u)) % vec2<u32>(32u)), Struct_2(vec4<bool>(true, !global0.x, true, global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))), _wgslsmith_mod_u32(arg_2, ~4294967295u), Struct_1(vec4<bool>(true, global0.x, global0.x, true), -930f, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, arg_0.x), arg_0), _wgslsmith_f_op_f32(arg_3 + arg_3), 1u), 18595u), all(!vec4<bool>(global0.x, false, global0.x, false)))));
    global2 = array<vec4<f32>, 1>();
    return Struct_1(!select(!vec4<bool>(global0.x, global0.x, false, global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false)), false), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1027f, _wgslsmith_f_op_f32(arg_3 + arg_3))), 322f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), -1519f)))))), abs(arg_2), 265f, 1u);
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_vec4_f32(func_2(~countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, 56312i)), select(vec4<u32>(13194u, 9353u, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.d.x, arg_0.e)), 1u), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(22030u, 64277u)), arg_0.c, 0u | u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xy)), global0.x), 1u)).yy, 4294967295u, arg_0, arg_0.c);
    let var_1 = u_input.c.x;
    let var_2 = var_0.a;
    global2 = array<vec4<f32>, 1>();
    var var_3 = 0u ^ max(0u, func_1(vec4<u32>(arg_0.e, arg_0.e, arg_0.c, 1u) ^ vec4<u32>(1u, u_input.b.x, u_input.b.x, var_0.d.c), u_input.a, ~(~1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.d)))).e);
    return ~(_wgslsmith_clamp_u32(0u, 19601u, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xx)) & 12187u);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = select(!vec3<bool>(false, any(!arg_1.a), -5006i != (-26541i ^ u_input.a.x)), !select(vec3<bool>(u_input.b.x > 2162u, arg_2.a.x, !global0.x), vec3<bool>(all(vec2<bool>(true, arg_2.a.x)), true, true), vec3<bool>(false, 1i <= u_input.c.x, !arg_2.a.x)), !arg_1.d.a.zxy);
    global0 = arg_2.a.xzz;
    var var_0 = func_1(firstTrailingBit(firstLeadingBit(select(vec4<u32>(u_input.b.x, u_input.b.x, arg_2.e, 0u), firstTrailingBit(vec4<u32>(u_input.b.x, arg_1.c, arg_1.e, arg_1.c)), all(vec4<bool>(global0.x, true, arg_2.a.x, false))))), vec3<i32>(abs(-1i), u_input.a.x << (15760u % 32u), 1i), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, arg_2.e, 25604u), vec3<u32>(u_input.d.x, 1u, u_input.d.x), false) | vec3<u32>(4294967295u, u_input.b.x, arg_1.c), firstLeadingBit(u_input.b) >> (~vec3<u32>(arg_2.c, arg_2.c, 1u) % vec3<u32>(32u))), min(select(~vec3<u32>(arg_1.e, 46604u, 121329u), firstLeadingBit(u_input.b), arg_1.d.a.x), min(~u_input.b, ~u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -102f)).a;
    global1 = array<Struct_2, 10>();
    let var_1 = !select(select(vec4<bool>(arg_1.d.a.x, !arg_2.a.x, any(vec3<bool>(var_0.x, true, var_0.x)), func_1(vec4<u32>(u_input.d.x, 55393u, 43978u, u_input.b.x), vec3<i32>(2147483647i, u_input.a.x, 0i), u_input.b.x, -550f).a.x), func_1(~vec4<u32>(arg_1.d.e, arg_2.e, 23885u, 0u), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-2147483647i, u_input.a.x, u_input.c.x)), u_input.b.x, _wgslsmith_f_op_f32(select(arg_0.x, 1186f, true))).a, select(vec4<bool>(true, global0.x, var_0.x, arg_1.a.x), select(arg_2.a, vec4<bool>(false, arg_2.a.x, global0.x, true), false), true)), !vec4<bool>(all(arg_2.a), false || arg_1.d.a.x, func_3(), any(arg_2.a.yyx)), arg_1.a);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(167f * -1798f), _wgslsmith_f_op_f32(237f + 183f))))), Struct_2(vec4<bool>(!global0.x, _wgslsmith_mult_u32(15876u, u_input.b.x) == (4294967295u & u_input.d.x), global0.x, global0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, 710f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-973f)), _wgslsmith_f_op_f32(max(1526f, -1000f)))), func_5(func_1(~vec4<u32>(u_input.b.x, 92229u, 47346u, 245u), u_input.a, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), _wgslsmith_f_op_f32(ceil(1000f)))), Struct_1(func_1(vec4<u32>(u_input.d.x, u_input.b.x, 64012u, u_input.b.x), ~u_input.c.zyx, 7409u, _wgslsmith_f_op_f32(f32(-1f) * -947f)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1624f) + _wgslsmith_f_op_f32(floor(469f))), reverseBits(_wgslsmith_mult_u32(1u, u_input.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 474f), -532f)), 1u), 83339u), Struct_1(!vec4<bool>(!global0.x, true, u_input.c.x < u_input.a.x, global0.x), _wgslsmith_div_f32(1325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-734f, 1875f, false)))), 1u, -1227f, countOneBits(func_5(func_1(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.d.x), vec3<i32>(-1i, u_input.c.x, 37447i), 17186u, -1293f)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(func_6(_wgslsmith_f_op_vec2_f32(ceil(var_0.b)), Struct_2(vec4<bool>(false, global0.x, var_0.a.x, global0.x), vec2<f32>(var_0.b.x, -188f), u_input.d.x, var_0.d, 4294967295u), func_1(vec4<u32>(u_input.d.x, 117893u, 4294967295u, u_input.b.x), u_input.a, 1u, 699f)).d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) - var_0.d.d)))), Struct_2(func_1(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, 112985u, var_0.c, 79036u)), select(vec4<u32>(u_input.d.x, var_0.d.e, u_input.b.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, var_0.c), var_0.d.a)), -vec3<i32>(u_input.a.x, -88917i, u_input.a.x), func_6(var_0.b, var_0, var_0.d).d.e ^ 4294967295u, _wgslsmith_div_f32(1000f, var_0.b.x)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, -129f)))), ~func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, var_0.d.c, 0u, u_input.d.x), vec4<u32>(u_input.d.x, 1u, 1u, 1u)), abs(vec3<i32>(1i, 30358i, -5609i)), _wgslsmith_mult_u32(u_input.d.x, var_0.c), _wgslsmith_f_op_f32(ceil(var_0.b.x))).e, Struct_1(select(var_0.a, func_1(vec4<u32>(u_input.d.x, 0u, 0u, var_0.c), u_input.a, var_0.c, var_0.b.x).a, func_6(var_0.b, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], Struct_1(var_0.d.a, -763f, var_0.e, var_0.b.x, var_0.c)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)), u_input.b.x, var_0.d.d, u_input.b.x), func_1(~vec4<u32>(u_input.b.x, u_input.d.x, var_0.e, u_input.d.x) << (abs(vec4<u32>(var_0.c, 0u, 48902u, 1u)) % vec4<u32>(32u)), -u_input.a & -u_input.c.yxz, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.b.x, 0u, var_0.c, u_input.d.x) >> (vec4<u32>(54236u, u_input.b.x, u_input.b.x, var_0.c) % vec4<u32>(32u))), var_0.d.b).c), _wgslsmith_f_op_f32(f32(-1f) * -437f));
    var_1 = Struct_3(func_1(abs(firstLeadingBit(max(vec4<u32>(var_1.b.d.c, var_1.b.e, 18518u, 1u), vec4<u32>(var_0.d.e, u_input.d.x, 4294967295u, 4294967295u)))), (u_input.a >> (u_input.b % vec3<u32>(32u))) ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 19976i, u_input.c.x), u_input.c.zxz, u_input.c.wwy) ^ -vec3<i32>(u_input.a.x, -36182i, -2147483647i)), var_0.d.c, 1875f).d, func_6(var_1.b.b, var_0, Struct_1(var_1.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c))), abs(var_0.c | 26223u), var_0.b.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.d.e, 30915u, 16419u, 26408u), vec4<u32>(5502u, var_1.b.e, 13924u, var_0.c), true), vec4<u32>(1u, var_0.e, 1u, var_1.b.c)))), _wgslsmith_f_op_f32(-var_1.c));
    let var_2 = var_1.b;
    var_1 = Struct_3(_wgslsmith_f_op_f32(var_2.d.d - _wgslsmith_f_op_vec4_f32(func_2(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.c, var_0.d.e, var_1.b.c, var_0.c) ^ vec4<u32>(34685u, var_1.b.d.c, u_input.b.x, var_0.d.c), ~vec4<u32>(var_1.b.d.e, var_2.d.c, 1u, var_1.b.d.e)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 46578u, var_2.c), u_input.d)))).x), var_0, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_2.d.d)));
    global1 = array<Struct_2, 10>();
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-var_1.b.d.b), func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1313f)), -696f), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b * vec2<f32>(1212f, var_1.b.b.x))), func_6(var_1.b.b, func_6(vec2<f32>(1000f, 1405f), Struct_2(var_1.b.d.a, vec2<f32>(var_1.b.b.x, var_1.c), var_1.b.e, Struct_1(var_1.b.d.a, -663f, 60048u, -1689f, 4294967295u), 4077u), var_2.d), var_2.d), func_6(_wgslsmith_f_op_vec2_f32(-var_2.b), Struct_2(var_2.d.a, var_2.b, 4294967295u, Struct_1(var_0.a, var_1.c, var_1.b.d.c, var_0.b.x, var_2.d.c), var_0.c), var_1.b.d).d), func_6(_wgslsmith_f_op_vec2_f32(max(func_6(vec2<f32>(-1180f, var_0.d.b), var_0, var_1.b.d).b, var_2.b)), func_6(vec2<f32>(var_2.b.x, -2727f), var_1.b, func_1(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u), u_input.c.zzx, 1u, -1164f)), func_1(firstTrailingBit(vec4<u32>(var_2.d.e, 0u, var_0.e, 16373u)), countOneBits(u_input.a), ~var_1.b.c, 812f)).d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(533f + var_0.b.x), _wgslsmith_f_op_f32(-var_1.a)) * 367f), var_1.b.d.d, global0.x)));
    var_3 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d.b)) - -353f))), var_0, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(min(_wgslsmith_sub_i32(-1i, u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -55288i), vec2<i32>(u_input.c.x, u_input.c.x))), ~min(1i, -36085i)), ~(~0u), 51431u, -min(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, -27187i), vec2<i32>(u_input.a.x, u_input.c.x)), vec2<i32>(u_input.a.x, u_input.c.x ^ u_input.c.x)));
}

