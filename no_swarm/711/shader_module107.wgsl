struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = 522f;

var<private> global2: bool = false;

var<private> global3: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<i32> {
    global3 = 4294967295u != _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(29976u, u_input.d), u_input.c) & vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_mult_u32(u_input.d, ~firstLeadingBit(u_input.d)), max(1u << (u_input.d % 32u), select(_wgslsmith_sub_u32(u_input.c.x, 1u), u_input.d, true)));
    global1 = -986f;
    let var_0 = Struct_5(-2172f);
    var var_1 = u_input.d;
    let var_2 = !select(select(vec4<bool>(var_0.a <= var_0.a, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec3<bool>(false, true, true)), true, true, false), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return select(vec4<i32>(global0.x, -2147483647i, 1i, _wgslsmith_mult_i32(-2147483647i, 1i)) >> (max(vec4<u32>(4294967295u, u_input.d, u_input.b, 64129u) << (vec4<u32>(u_input.c.x, u_input.b, 7650u, u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 22207u, 1u, 62641u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 53570u, u_input.c.x, 1u), vec4<u32>(1u, u_input.d, u_input.c.x, u_input.c.x)))) % vec4<u32>(32u)), vec4<i32>(min(2147483647i, -(~u_input.a)), _wgslsmith_mult_i32((global0.x & 0i) ^ (i32(-1i) * -2147483647i), -global0.x), reverseBits(select(1i, abs(u_input.a), true)), 40260i), all(vec3<bool>(select(!var_2.x, var_2.x, false), any(var_2.yw), false)));
}

fn func_2() -> Struct_3 {
    global0 = -vec2<i32>(_wgslsmith_sub_i32(-2147483647i >> (u_input.d % 32u), countOneBits(1i)) | -5438i, u_input.a);
    global3 = ~u_input.b != select(~max(u_input.b, 7056u) & 1u, u_input.d, _wgslsmith_mult_u32(u_input.b, ~0u) == ~1u);
    global2 = _wgslsmith_f_op_f32(ceil(447f)) == 492f;
    let var_0 = -1801f;
    var var_1 = Struct_1(func_3(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(147f, 1769f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), vec2<f32>(var_0, -308f), u_input.c.x != u_input.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1619f)), _wgslsmith_f_op_f32(floor(449f)))), true);
    return Struct_3(~(~vec4<u32>(~70323u, ~16712u, ~u_input.b, 0u)), _wgslsmith_f_op_f32(step(1496f, var_1.b.x)), ~u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> vec3<f32> {
    var var_0 = func_2();
    var var_1 = !select(vec3<bool>(all(vec4<bool>(arg_0.c, true, true, true)) && arg_0.c, _wgslsmith_mult_i32(arg_0.a.x, global0.x) == u_input.a, any(!vec3<bool>(false, arg_2, arg_0.c))), select(vec3<bool>(arg_2, true, any(vec2<bool>(false, arg_0.c))), vec3<bool>(arg_0.c, arg_0.c, true), !(arg_0.c & arg_0.c)), false);
    let var_2 = _wgslsmith_clamp_vec3_u32(~var_0.a.yzy, vec3<u32>(~(_wgslsmith_sub_u32(u_input.d, 0u) >> (1u % 32u)), _wgslsmith_dot_vec3_u32(var_0.a.yxz, ~vec3<u32>(arg_3, 18077u, 57521u)), firstTrailingBit(~1u)), ~abs(abs(vec3<u32>(25363u, 1u, 73643u))) << ((var_0.a.zyw | var_0.a.yxz) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(abs(336f));
    let var_4 = Struct_5(var_0.b);
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.zzz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_div_f32(325f, arg_0.b.x), var_4.a) - vec3<f32>(_wgslsmith_f_op_f32(var_0.b + -2428f), func_2().b, _wgslsmith_f_op_f32(min(var_4.a, -1408f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_1(-max(vec4<i32>(2147483647i, i32(-1i) * -1i, u_input.a & arg_2.a.x, -global0.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, global0.x, 28316i, global0.x), min(vec4<i32>(-10359i, -1i, arg_2.a.x, u_input.a), vec4<i32>(23361i, 2147483647i, arg_2.a.x, global0.x)))), vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-arg_2.c.x)), !arg_2.d);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f) * _wgslsmith_div_f32(arg_2.b.a, _wgslsmith_f_op_f32(trunc(var_0.b.x))))));
    var var_2 = vec3<f32>(-2226f, 162f, -1289f);
    var var_3 = arg_2.b;
    var_3 = Struct_2(-337f);
    return Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(436f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a)) - _wgslsmith_f_op_f32(arg_1.a + -620f))), -421f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(select(true, u_input.a > u_input.a, select(true, false, false)), !all(vec3<bool>(true, true, false)), true));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<i32>(u_input.a, -31081i, global0.x, u_input.a), vec2<f32>(777f, 1000f), true), vec4<f32>(-473f, -1568f, -564f, 584f), false, u_input.d)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(321f, 469f, 884f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(-560f, 212f, 940f), _wgslsmith_f_op_vec3_f32(vec3<f32>(802f, 1581f, -272f) + vec3<f32>(1337f, -978f, -890f)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(801f, _wgslsmith_f_op_f32(-934f + 262f), _wgslsmith_f_op_f32(f32(-1f) * -165f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(step(2377f, 1000f)), -1255f)))), Struct_5(_wgslsmith_f_op_f32(ceil(-1859f))), Struct_4(reverseBits(min(vec3<i32>(global0.x, -18341i, 1i), -vec3<i32>(-2147483647i, u_input.a, 1i))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2018f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1812f, 1000f, -862f), vec3<f32>(726f, 1000f, -1316f))), !(!(3750u == u_input.d))));
    let var_2 = vec3<bool>(false, true, select(var_0.x, any(var_0.zx), !var_0.x));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.d), vec2<u32>(u_input.c.x, u_input.d))), select(u_input.c, u_input.c, !var_2.yx)), ~u_input.b, _wgslsmith_add_u32(1u, u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(max(u_input.c.x, 4294967295u), u_input.c.x | u_input.b, 1u), (u_input.c.x << (u_input.b % 32u)) ^ abs(0u)), _wgslsmith_div_u32(1u, u_input.c.x)));
    let var_4 = Struct_4(vec3<i32>(1i, min(_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(global0.x, global0.x)), ~u_input.a), -1i), Struct_2(var_1.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, var_1.a, var_1.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, -685f, 821f))) - vec3<f32>(-1222f, _wgslsmith_f_op_f32(select(-1076f, -161f, true)), func_2().b)))), any(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, var_2.x, true, true), vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_0.x, true, true, false)), false)));
    let var_5 = 26911u;
    var var_6 = ~(max(~countOneBits(vec3<u32>(u_input.c.x, var_3.x, 69342u)), var_3.xwz) | (~(var_3.xwz >> (vec3<u32>(var_3.x, 0u, 0u) % vec3<u32>(32u))) | abs(vec3<u32>(12624u, var_5, var_3.x))));
    let var_7 = vec4<u32>(11528u, var_5, var_6.x, select(111313u << (_wgslsmith_mod_u32(~0u, var_5 >> (4294967295u % 32u)) % 32u), reverseBits(_wgslsmith_dot_vec4_u32(var_3, var_3)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(vec3<f32>(var_1.a, 1179f, var_4.b.a), Struct_5(583f), Struct_4(var_4.a, Struct_2(805f), var_4.c, var_4.d)).a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f * -654f))), _wgslsmith_div_f32(var_4.b.a, _wgslsmith_f_op_f32(-var_4.b.a))));
}

