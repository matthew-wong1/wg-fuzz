struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u, vec2<i32>(-28551i, -1i), vec3<i32>(46805i, 37192i, -28105i), vec3<bool>(true, false, false)), Struct_1(0u, vec2<i32>(21012i, -1i), vec3<i32>(i32(-2147483648), 23572i, -24206i), vec3<bool>(false, true, true)), Struct_1(0u, vec2<i32>(74025i, 2125i), vec3<i32>(6772i, -36842i, 1i), vec3<bool>(true, true, true)), Struct_1(0u, vec2<i32>(-72414i, -16122i), vec3<i32>(0i, 0i, -50321i), vec3<bool>(false, false, false)), Struct_1(0u, vec2<i32>(1i, -4654i), vec3<i32>(i32(-2147483648), 1i, 5042i), vec3<bool>(false, false, true)), Struct_1(1053u, vec2<i32>(i32(-2147483648), -1i), vec3<i32>(1i, -1i, -8673i), vec3<bool>(true, false, false)), Struct_1(46587u, vec2<i32>(53214i, -875i), vec3<i32>(-20665i, 0i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<i32>(2147483647i, -34196i), vec3<i32>(2147483647i, -17906i, -1i), vec3<bool>(true, true, false)), Struct_1(0u, vec2<i32>(30092i, 23654i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<bool>(false, false, false)), Struct_1(1u, vec2<i32>(1i, 0i), vec3<i32>(29904i, 0i, -35878i), vec3<bool>(false, true, false)), Struct_1(1u, vec2<i32>(66417i, 21103i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<bool>(false, true, true)), Struct_1(19129u, vec2<i32>(-49860i, -13137i), vec3<i32>(-1i, 16697i, -32966i), vec3<bool>(false, false, false)), Struct_1(74286u, vec2<i32>(0i, 2147483647i), vec3<i32>(1i, 1i, 2147483647i), vec3<bool>(true, true, false)), Struct_1(1u, vec2<i32>(-32963i, 0i), vec3<i32>(2147483647i, 1656i, -46728i), vec3<bool>(true, false, true)), Struct_1(27085u, vec2<i32>(-62111i, 17022i), vec3<i32>(13487i, -1i, 2147483647i), vec3<bool>(false, false, true)), Struct_1(1u, vec2<i32>(-30254i, 0i), vec3<i32>(-18003i, 2147483647i, 15198i), vec3<bool>(false, false, true)), Struct_1(20281u, vec2<i32>(2147483647i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 31161i), vec3<bool>(true, false, true)), Struct_1(4294967295u, vec2<i32>(-28112i, 0i), vec3<i32>(36891i, -1i, 1i), vec3<bool>(false, true, false)), Struct_1(45999u, vec2<i32>(-12487i, 0i), vec3<i32>(0i, -11685i, 0i), vec3<bool>(true, false, false)), Struct_1(72265u, vec2<i32>(42649i, i32(-2147483648)), vec3<i32>(-34492i, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_1(71388u, vec2<i32>(47806i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<bool>(false, true, false)), Struct_1(5401u, vec2<i32>(47473i, -32372i), vec3<i32>(2147483647i, 2147483647i, -63740i), vec3<bool>(true, true, true)), Struct_1(30372u, vec2<i32>(-25696i, 10111i), vec3<i32>(1i, -51662i, -49723i), vec3<bool>(true, true, true)), Struct_1(0u, vec2<i32>(i32(-2147483648), -48401i), vec3<i32>(46736i, -18880i, 2335i), vec3<bool>(false, true, false)), Struct_1(42167u, vec2<i32>(-1i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<i32>(2147483647i, -1i), vec3<i32>(i32(-2147483648), 9459i, -17937i), vec3<bool>(true, true, false)), Struct_1(72414u, vec2<i32>(2147483647i, 1i), vec3<i32>(2147483647i, -35975i, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_1(0u, vec2<i32>(i32(-2147483648), -6964i), vec3<i32>(1i, -5102i, 1i), vec3<bool>(false, false, true)), Struct_1(62371u, vec2<i32>(2147483647i, -27230i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(57027u, vec2<i32>(i32(-2147483648), -44746i), vec3<i32>(0i, i32(-2147483648), 11564i), vec3<bool>(false, false, true)), Struct_1(43037u, vec2<i32>(i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), -18911i, -35345i), vec3<bool>(true, false, true)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> bool {
    return arg_2.b.b.d.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    var var_0 = Struct_2(1033f, Struct_1(~1958u, arg_0.a.b, ~arg_0.a.c >> (vec3<u32>(16952u, ~arg_0.a.a, ~1u) % vec3<u32>(32u)), arg_0.a.d));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, 635f)), vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), 1f));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -477f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1)))) - -487f);
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(u_input.a.x, vec2<i32>(-abs(1i), -11839i), ~vec3<i32>(0i, ~(~(-81969i)), 11018i), !(!global0.ywx));
    global0 = select(!vec4<bool>(-2147483647i == var_0.c.x, var_0.d.x, true, !select(var_0.d.x, global0.x, true)), select(!select(!vec4<bool>(true, global0.x, var_0.d.x, true), vec4<bool>(var_0.d.x, true, global0.x, var_0.d.x), any(vec4<bool>(false, false, var_0.d.x, var_0.d.x))), vec4<bool>(!func_2(-1809f, 4294967295u, Struct_4(var_0.a, Struct_2(-732f, Struct_1(29852u, vec2<i32>(var_0.c.x, -2147483647i), vec3<i32>(var_0.b.x, 1i, var_0.b.x), vec3<bool>(true, true, var_0.d.x))), var_0.a)), func_2(_wgslsmith_f_op_f32(step(802f, 820f)), _wgslsmith_sub_u32(u_input.a.x, u_input.b), Struct_4(10210u, Struct_2(-495f, Struct_1(0u, var_0.b, vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(true, global0.x, var_0.d.x))), 38745u)), global0.x, !(!var_0.d.x)), !vec4<bool>(true, all(vec3<bool>(var_0.d.x, false, var_0.d.x)), all(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true)), false)), true);
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(abs(u_input.b), 31u)]);
    var_1 = Struct_3(Struct_1(0u, min(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a.c.zz, vec2<i32>(-2147483647i, 21536i)), 1i), -(~vec2<i32>(var_0.b.x, 2147483647i))), vec3<i32>(-var_0.c.x, 0i, countOneBits(var_0.b.x) ^ 37940i), !(!(!vec3<bool>(global0.x, global0.x, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-979f + 922f)))), _wgslsmith_f_op_f32(-1939f + 232f), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(var_0.a, var_0.c.xy, vec3<i32>(var_1.a.b.x, -30849i, var_0.c.x), var_1.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -461f)))) + vec3<f32>(_wgslsmith_f_op_f32(round(106f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1460f, -317f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1141f, -832f) + _wgslsmith_f_op_f32(f32(-1f) * -899f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1013f))));
    return vec4<bool>(false, var_0.d.x, false, func_2(-103f, u_input.a.x, Struct_4(~_wgslsmith_clamp_u32(0u, u_input.b, u_input.b), Struct_2(var_2.x, var_0), u_input.b)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-765f, arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)));
    var var_1 = Struct_3(arg_3.b);
    let var_2 = Struct_2(-2001f, var_1.a);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))));
    let var_4 = Struct_2(var_0, Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(23480u, ~arg_1.x), (1u >> (var_1.a.a % 32u)) & _wgslsmith_mod_u32(20226u, u_input.a.x), 1u), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.x, var_1.a.c.x, var_2.b.b.x, var_2.b.c.x), vec4<i32>(var_2.b.c.x, var_2.b.c.x, var_1.a.c.x, 0i)), ~11228i), arg_3.b.c.zy, var_1.a.c.zx), vec3<i32>(1i, ~(-47662i), -arg_3.b.b.x) << (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.xzx, arg_1.zyz), _wgslsmith_sub_vec3_u32(u_input.a.zxy, arg_2.xyw)) % vec3<u32>(32u)), func_1().zyw));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(vec2<bool>(all(select(vec4<bool>(global0.x, global0.x, true, global0.x), func_1(), !vec4<bool>(global0.x, global0.x, global0.x, global0.x))), false), ~u_input.a, vec4<u32>(~1u, 0u, _wgslsmith_div_u32(min(u_input.a.x, u_input.b), ~39724u), _wgslsmith_add_u32(0u, ~u_input.a.x)) ^ vec4<u32>(~countOneBits(83147u), _wgslsmith_sub_u32(~u_input.b, u_input.b), select(u_input.b, ~u_input.a.x, any(vec3<bool>(true, false, global0.x))), firstLeadingBit(1u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f))), Struct_1(u_input.b, ~vec2<i32>(-13686i, 7342i), min(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(52421i, 1i, 1i), vec3<i32>(2147483647i, 1i, -2147483647i))), select(select(global0.wzw, global0.xzz, global0.x), !vec3<bool>(global0.x, true, false), false)))));
    var_0 = -821f;
    var var_1 = 8962i;
    let var_2 = _wgslsmith_mult_u32(u_input.b, 25114u & _wgslsmith_clamp_u32(_wgslsmith_div_u32(reverseBits(0u), ~1u), ~u_input.b, _wgslsmith_add_u32(u_input.b, u_input.a.x) >> (4294967295u % 32u)));
    let var_3 = Struct_3(Struct_1(~firstLeadingBit(var_2), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(32509i, 26844i, 14482i), vec3<i32>(-20060i, 1i, 1i)) | ~2093i), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -2147483647i, 0i, 9889i)), -vec4<i32>(-1i, 2147483647i, 2147483647i, -6784i)), reverseBits(-2147483647i), 7382i), !(!func_1().zzz)));
    var_1 = -1i;
    var_1 = (i32(-1i) * -_wgslsmith_sub_i32(-727i >> (var_2 % 32u), var_3.a.b.x)) | 1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xxw, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) * _wgslsmith_f_op_f32(f32(-1f) * -176f)))), -1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-236f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1940f, 183f) + vec2<f32>(358f, 2163f))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-175f, -1649f), vec2<f32>(354f, 2034f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-339f, -1055f))))))));
}

