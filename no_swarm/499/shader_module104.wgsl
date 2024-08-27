struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.b.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1609f)), arg_1.b.a.x > 1449f))) - vec3<f32>(_wgslsmith_div_f32(-1903f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2044f, -205f)) * -532f), arg_1.b.a.x)), arg_1.b.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b.a * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.a.x, arg_0, arg_1.b.c.x), vec3<f32>(arg_0, -411f, arg_1.b.c.x), vec3<bool>(false, true, arg_1.a)))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.c.x), _wgslsmith_f_op_f32(ceil(2152f)), -1851f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1166f, 995f, -872f)) + _wgslsmith_f_op_vec3_f32(arg_1.b.c - vec3<f32>(arg_1.b.c.x, arg_1.b.a.x, arg_0)))), vec2<i32>(~arg_1.b.d.x, arg_1.b.d.x & arg_1.b.d.x));
    let var_1 = !vec3<bool>(2147483647i >= abs(_wgslsmith_div_i32(var_0.d.x, -31862i)), !global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.a.x, -831f))) < 2725f);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1.b.a.x, arg_0))))), -656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(floor(-928f)), !global0.x)) - arg_1.b.a.x)) - var_0.a);
    let var_4 = arg_1;
    return i32(-1i) * -var_0.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> vec2<u32> {
    global0 = select(!select(!(!vec4<bool>(false, arg_1.c.a, false, false)), vec4<bool>(any(global0.ywy), select(false, arg_2.c.a, arg_1.d.c.a), true, arg_2.c.a || false), !select(vec4<bool>(arg_1.c.a, global0.x, arg_1.b.c.a, true), vec4<bool>(global0.x, arg_1.c.a, true, arg_1.b.c.a), vec4<bool>(false, arg_1.b.c.a, global0.x, global0.x))), select(vec4<bool>(arg_2.c.a, select(false, global0.x, true), true, true), !select(!vec4<bool>(arg_1.c.a, global0.x, arg_2.c.a, false), vec4<bool>(true, true, arg_1.c.a, true), vec4<bool>(arg_1.b.c.a, true, global0.x, arg_1.c.a)), any(global0.zz)), !vec4<bool>(!all(global0.zx), !select(false, arg_2.c.a, true), arg_2.b.x == ~arg_1.c.b.b.x, true));
    let var_0 = -1i;
    var var_1 = Struct_3(arg_0.d.x, ~(~(vec3<u32>(1u, 14769u, arg_2.c.b.b.x) & vec3<u32>(4294967295u, u_input.a.x, 0u))), arg_2.c);
    var var_2 = firstTrailingBit(firstLeadingBit(var_1.c.b.b.x));
    var var_3 = _wgslsmith_f_op_f32(-var_1.c.b.c.x);
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(~arg_1.b.c.b.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 15109u, 4294967295u), reverseBits(arg_1.c.b.b))), ~_wgslsmith_div_vec2_u32(vec2<u32>(73533u | arg_0.b.x, _wgslsmith_mod_u32(8917u, arg_0.b.x)), abs(vec2<u32>(0u, u_input.a.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = !vec3<bool>(!global0.x, true, !any(!arg_1));
    var var_1 = all(var_0.yz);
    let var_2 = arg_3.c.b.a.x;
    global0 = !select(select(select(select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(true, arg_1.x, false, false), vec4<bool>(false, true, true, global0.x)), select(vec4<bool>(global0.x, arg_1.x, false, true), vec4<bool>(arg_1.x, var_0.x, global0.x, true), arg_3.c.a), arg_3.c.a), select(!vec4<bool>(global0.x, global0.x, true, false), !vec4<bool>(global0.x, global0.x, global0.x, true), any(vec2<bool>(true, arg_3.c.a))), var_0.x), vec4<bool>(76109i > arg_2, !var_0.x, 1u != ~u_input.a.x, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, arg_3.c.a))), all(select(!vec4<bool>(true, arg_1.x, false, false), !vec4<bool>(false, arg_3.c.a, global0.x, global0.x), !vec4<bool>(arg_3.c.a, true, arg_1.x, global0.x))));
    return select(vec4<bool>(arg_1.x, false, 4294967295u >= ~_wgslsmith_div_u32(4294967295u, arg_0.x), all(select(select(vec4<bool>(global0.x, var_0.x, global0.x, true), vec4<bool>(arg_1.x, true, arg_3.c.a, arg_3.c.a), arg_3.c.a), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, global0.x), !vec4<bool>(true, false, arg_1.x, false)))), vec4<bool>(false, arg_1.x, true, arg_3.c.a), !(!vec4<bool>(false, false, !global0.x, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    let var_0 = func_5(select(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-665f, -1000f, 294f))), vec3<u32>(0u, u_input.a.x, u_input.a.x) | vec3<u32>(0u, 4294967295u, 933u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1711f, -1685f, 338f) + vec3<f32>(-508f, -1386f, 109f)), vec2<i32>(-9898i, arg_1)), Struct_4(Struct_1(vec3<f32>(-636f, 432f, 743f), u_input.a.wzz, vec3<f32>(-1136f, -1269f, 103f), vec2<i32>(-986i, arg_1)), Struct_3(0i, u_input.a.xzy, Struct_2(false, Struct_1(vec3<f32>(-169f, -503f, 597f), vec3<u32>(0u, 29024u, u_input.a.x), vec3<f32>(752f, 426f, 1000f), vec2<i32>(-38755i, -2147483647i)))), Struct_2(false, Struct_1(vec3<f32>(-1012f, -1167f, 609f), vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<f32>(953f, -1000f, -1466f), vec2<i32>(15815i, 11245i))), Struct_3(arg_1, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(arg_0.x, Struct_1(vec3<f32>(860f, 234f, 527f), u_input.a.xwx, vec3<f32>(-431f, 1047f, -1240f), vec2<i32>(arg_1, 13284i))))), Struct_3(func_3(-1276f, Struct_2(false, Struct_1(vec3<f32>(255f, 206f, 1183f), u_input.a.xzz, vec3<f32>(-957f, -2400f, 1608f), vec2<i32>(arg_1, -39147i)))), firstLeadingBit(u_input.a.xzz), Struct_2(false, Struct_1(vec3<f32>(1000f, 798f, 1096f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(-1003f, -1739f, 970f), vec2<i32>(6495i, arg_1))))), vec2<u32>(~1u, 41278u & ~u_input.a.x), !vec2<bool>(false || global0.x, arg_0.x | false)), vec3<bool>(arg_0.x, true, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-3091i, arg_1), vec2<i32>(-37083i, -15213i)) >= (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-63248i, arg_1, arg_1)) >> (1u % 32u))), _wgslsmith_mod_i32(arg_1, arg_1), Struct_3(-89982i, u_input.a.xyz, Struct_2(true, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(697f, -300f, 1000f) + vec3<f32>(1256f, 1344f, -616f)), u_input.a.wzx, _wgslsmith_div_vec3_f32(vec3<f32>(-160f, 1111f, -673f), vec3<f32>(338f, 2418f, 278f)), vec2<i32>(arg_1, arg_1)))));
    var var_1 = ~vec2<u32>(10968u, ~abs(u_input.a.x));
    var_1 = abs(vec2<u32>(~countOneBits(var_1.x), ~var_1.x));
    var var_2 = Struct_2(!arg_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2240f, -340f, 297f))))), u_input.a.wzw, vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), 876f, _wgslsmith_f_op_f32(f32(-1f) * -1474f)), -vec2<i32>(arg_1, arg_1) & firstTrailingBit(vec2<i32>(2147483647i, arg_1) << (vec2<u32>(u_input.a.x, 26426u) % vec2<u32>(32u)))));
    var var_3 = Struct_4(var_2.b, Struct_3(~max(_wgslsmith_sub_i32(arg_1, arg_1), arg_1), ~var_2.b.b, Struct_2(true, Struct_1(var_2.b.c, var_2.b.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.c.x, -1654f, var_2.b.c.x))), vec2<i32>(var_2.b.d.x, 1i)))), Struct_2(!var_2.a, Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(750f, -421f, -969f), _wgslsmith_f_op_vec3_f32(-var_2.b.c))), vec3<u32>(select(1u, var_2.b.b.x, var_2.a), var_1.x, firstTrailingBit(var_2.b.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.c.x, var_2.b.c.x, var_2.b.a.x), var_2.b.a), _wgslsmith_f_op_vec3_f32(var_2.b.a - vec3<f32>(-452f, 318f, -516f))), ~(-vec2<i32>(2147483647i, var_2.b.d.x)))), Struct_3(-var_2.b.d.x | var_2.b.d.x, var_2.b.b, Struct_2(true, Struct_1(vec3<f32>(var_2.b.a.x, var_2.b.c.x, var_2.b.a.x), select(u_input.a.zwy, vec3<u32>(1u, 1u, u_input.a.x), global0.yxx), vec3<f32>(var_2.b.a.x, 2364f, -1156f), var_2.b.d))));
    return select(vec4<bool>(true, true, -1887f > var_3.b.c.b.a.x, !(!any(vec4<bool>(true, false, var_2.a, var_3.c.a)))), var_0, false);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    var var_0 = arg_1;
    global0 = func_2(!global0.zy, 1i);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.c.b.a), _wgslsmith_f_op_vec3_f32(abs(var_0.c.b.a)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a.x, 252f, arg_2.a.x), var_0.c.b.c)), _wgslsmith_div_f32(-848f, 307f) >= _wgslsmith_f_op_f32(max(var_0.c.b.a.x, 1380f)))), firstLeadingBit(~(~vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x))), arg_2.c, countOneBits(var_0.c.b.d)), Struct_3(arg_1.c.b.d.x, arg_2.b, Struct_2(any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, true, arg_1.c.a), vec4<bool>(false, arg_1.c.a, true, false))), arg_1.c.b)), arg_1.c, Struct_3(var_0.c.b.d.x, vec3<u32>(func_4(Struct_1(vec3<f32>(-214f, arg_1.c.b.c.x, -2685f), u_input.a.zwy, vec3<f32>(arg_2.c.x, 123f, -2512f), vec2<i32>(arg_2.d.x, var_0.c.b.d.x)), Struct_4(arg_1.c.b, arg_1, Struct_2(arg_0.x, Struct_1(arg_1.c.b.c, u_input.a.wyz, var_0.c.b.a, arg_1.c.b.d)), arg_1), arg_1).x & ~u_input.a.x, (0u >> (1u % 32u)) ^ _wgslsmith_sub_u32(u_input.a.x, arg_2.b.x), 17543u), var_0.c));
    let var_2 = Struct_2(!var_1.b.c.a, arg_2);
    let var_3 = vec3<bool>(false, var_0.c.a, !var_2.a);
    return var_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-97485i);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(global0.x, global0.x), Struct_3(var_0, u_input.a.ywz, Struct_2(global0.x, Struct_1(vec3<f32>(100f, 478f, 1205f), u_input.a.wwx, vec3<f32>(-610f, -747f, -1453f), vec2<i32>(34944i, var_0)))), Struct_1(vec3<f32>(-579f, -1546f, 917f), vec3<u32>(59062u, u_input.a.x, 106526u), vec3<f32>(1545f, -381f, 1000f), vec2<i32>(-45126i, var_0)), 581f)))), vec3<f32>(1290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1753f)) * -1330f), _wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, true), Struct_3(var_0, u_input.a.yzy, Struct_2(global0.x, Struct_1(vec3<f32>(-730f, 1760f, 979f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(934f, -382f, 286f), vec2<i32>(-32317i, var_0)))), Struct_1(vec3<f32>(1577f, 164f, 443f), u_input.a.xyx, vec3<f32>(-613f, 206f, 732f), vec2<i32>(var_0, -2147483647i)), 1064f)).x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, var_1.x, var_1.x) - var_1), var_1)) + vec3<f32>(_wgslsmith_f_op_f32(sign(-1818f)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(1618f * var_1.x))) * _wgslsmith_f_op_vec3_f32(ceil(var_1))), ~firstTrailingBit(firstTrailingBit(~vec3<u32>(u_input.a.x, 1u, 1u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1511f), _wgslsmith_f_op_f32(796f + _wgslsmith_f_op_f32(trunc(var_1.x)))) * _wgslsmith_f_op_vec3_f32(-var_1)), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(var_0, var_0)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0) ^ vec2<i32>(var_0, var_0), vec2<i32>(-2147483647i, 14050i)), firstTrailingBit(countOneBits(vec2<i32>(var_0, 304i)))) | _wgslsmith_mod_vec2_i32(vec2<i32>(-21825i, -36580i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -19171i) | vec2<i32>(var_0, 0i), ~vec2<i32>(var_0, var_0))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(floor(206f))))), -1349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) * var_2.c.x));
    global0 = !func_5(vec2<u32>(var_2.b.x, countOneBits(min(u_input.a.x, u_input.a.x))), vec3<bool>(func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), var_2.b.xz), !vec3<bool>(global0.x, false, global0.x), ~40525i, Struct_3(var_2.d.x, var_2.b, Struct_2(global0.x, var_2))).x, true, true), -1i, Struct_3(var_0, ~(vec3<u32>(u_input.a.x, var_2.b.x, 55205u) & u_input.a.wxx), Struct_2(true, Struct_1(vec3<f32>(685f, var_2.a.x, 115f), vec3<u32>(1u, u_input.a.x, var_2.b.x), var_3, var_2.d))));
    let var_4 = Struct_4(var_2, Struct_3(abs(var_0), _wgslsmith_div_vec3_u32(u_input.a.xww & max(vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(~51441u, u_input.a.x, ~var_2.b.x)), Struct_2(!(!global0.x), Struct_1(var_3, u_input.a.yzx << (vec3<u32>(u_input.a.x, 11839u, 103094u) % vec3<u32>(32u)), vec3<f32>(var_2.a.x, -197f, 515f), var_2.d))), Struct_2(func_2(!vec2<bool>(global0.x, true), var_2.d.x).x, var_2), Struct_3(-9654i, var_2.b, Struct_2(abs(var_0) <= ~var_2.d.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -422f, -1000f)), u_input.a.xxy, var_1, var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(-1188f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, 1616f))), _wgslsmith_f_op_vec3_f32(func_1(global0.xy, var_4.d, var_2, _wgslsmith_f_op_f32(var_3.x + var_1.x))).x, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_2.c.x)))))), _wgslsmith_f_op_f32(ceil(var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1470f, -895f)), _wgslsmith_f_op_f32(var_4.b.c.b.c.x - var_4.b.c.b.c.x))))), u_input.a);
}

