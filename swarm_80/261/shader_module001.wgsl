struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(27419i, 14363i);

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(4294967295u, 30136u), vec2<u32>(53559u, 0u), vec2<u32>(8625u, 40546u), vec2<u32>(5008u, 0u), vec2<u32>(0u, 0u), vec2<u32>(9872u, 1u), vec2<u32>(1u, 0u), vec2<u32>(26947u, 21114u), vec2<u32>(26237u, 39150u), vec2<u32>(58674u, 66326u), vec2<u32>(3321u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(16676u, 29170u), vec2<u32>(1u, 57968u), vec2<u32>(55907u, 55454u), vec2<u32>(34122u, 7142u), vec2<u32>(10471u, 1u), vec2<u32>(0u, 46085u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 35623u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(7023u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-785f, 781f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(333f))), -1393f, 257f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(900f * 1064f), _wgslsmith_f_op_f32(sign(844f)), _wgslsmith_f_op_f32(1950f * 740f), 404f) - vec4<f32>(-540f, -1129f, _wgslsmith_f_op_f32(min(-691f, 1035f)), _wgslsmith_f_op_f32(floor(-223f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 702f, 1000f, -1124f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 537f, -529f, -1536f))))))));
    let var_1 = Struct_1(vec2<u32>((_wgslsmith_mult_u32(63578u, u_input.a.x) >> (_wgslsmith_clamp_u32(58602u, u_input.a.x, u_input.a.x) % 32u)) << (1u % 32u), u_input.a.x), all(!vec4<bool>(true, any(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, false, true)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f))), var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(select(var_0.x, var_0.x, all(vec3<bool>(true, false, true)))))));
    global0 = u_input.b.zy << (_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(firstLeadingBit(0u), ~1u), max(_wgslsmith_sub_u32(4294967295u, u_input.a.x), abs(u_input.a.x))), 23u)], u_input.a.zx) % vec2<u32>(32u));
    return abs(_wgslsmith_dot_vec3_i32(u_input.b, reverseBits(u_input.b >> ((vec3<u32>(0u, 24837u, 4294967295u) ^ u_input.a.xxy) % vec3<u32>(32u)))));
}

fn func_2() -> Struct_4 {
    let var_0 = ~(~(~(u_input.a.x >> (u_input.a.x % 32u))));
    var var_1 = Struct_4(Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(3423u, 67072u), u_input.a.x)), true, _wgslsmith_f_op_f32(f32(-1f) * -1158f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1535f, -775f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, -231f) - vec2<f32>(-168f, -1436f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(479f, -2100f)))))));
    global1 = array<vec2<u32>, 23>();
    var var_2 = ~(_wgslsmith_mult_i32(min(~u_input.b.x, -2147483647i), ~func_3()) >> ((var_0 & firstTrailingBit(~var_1.a.a.x)) % 32u));
    var var_3 = vec4<bool>(select(728f >= _wgslsmith_f_op_f32(round(-258f)), !(85582u > _wgslsmith_mod_u32(0u, u_input.a.x)), false), false, false, true);
    return Struct_4(Struct_1(_wgslsmith_mult_vec2_u32(abs(var_1.a.a), var_1.a.a | vec2<u32>(u_input.a.x, u_input.a.x)), !var_3.x, 952f, _wgslsmith_f_op_vec2_f32(ceil(var_1.a.d))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_1 {
    return arg_0;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) - _wgslsmith_f_op_f32(253f - -656f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))));
    var_0 = 1494f;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(525f, _wgslsmith_f_op_f32(-994f - 1152f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-955f, -317f))), 4294967295u != u_input.a.x)))));
    var var_2 = Struct_1(~firstLeadingBit(u_input.a.xz), select(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(206f, 1713f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))))) * vec2<f32>(-111f, -1497f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, 1003f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))) - vec2<f32>(2425f, var_1)))));
    var_2 = func_4(Struct_1(~max(~global1[_wgslsmith_index_u32(u_input.a.x, 23u)], vec2<u32>(var_2.a.x, u_input.a.x) | vec2<u32>(4294967295u, var_2.a.x)), !(global0.x >= _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(30906i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -372f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * var_2.c)))), var_2.d), !vec2<bool>(false, reverseBits(u_input.a.x) <= (36049u >> (0u % 32u))), func_2());
    return func_2();
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec3<f32> {
    global0 = -((vec2<i32>(firstTrailingBit(arg_0), _wgslsmith_mult_i32(2147483647i, global0.x)) >> (select(arg_2.a.a, ~vec2<u32>(u_input.a.x, arg_2.a.a.x), !arg_2.a.b) % vec2<u32>(32u))) ^ (select(countOneBits(vec2<i32>(77406i, global0.x)), vec2<i32>(1i, -3750i) << (vec2<u32>(57934u, u_input.a.x) % vec2<u32>(32u)), true) << (~vec2<u32>(12269u, 41065u) % vec2<u32>(32u))));
    let var_0 = arg_2.a.b;
    var var_1 = arg_2.a.c;
    var var_2 = arg_2.a.a;
    var var_3 = _wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(abs(u_input.b.yz), min(vec2<i32>(36193i, arg_0), vec2<i32>(global0.x, -21472i)) << (select(global1[_wgslsmith_index_u32(var_2.x, 23u)], arg_2.a.a, vec2<bool>(false, arg_2.a.b)) % vec2<u32>(32u))), u_input.b.yy);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_div_f32(arg_2.a.c, arg_2.a.c), arg_2.a.d.x)) * vec3<f32>(arg_2.a.d.x, _wgslsmith_f_op_f32(exp2(arg_2.a.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(622f * 1160f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(-1i, -2147483647i << (u_input.a.x % 32u)) < min(-1i >> ((~u_input.a.x >> (51106u % 32u)) % 32u), ~u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_5(firstLeadingBit(global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(global0.x, -2038i)), func_1())), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-101f, 643f, -733f)))))))) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_5(reverseBits(global0.x & 40414i), 22593i, func_1())).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(354f)), func_2().a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2192f - 127f)) - 821f)));
    let var_2 = Struct_1(vec2<u32>(~u_input.a.x, ~u_input.a.x), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(round(553f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-723f, var_1.x), var_1.xy)))));
    let var_3 = func_1();
    global1 = array<vec2<u32>, 23>();
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, -538f, -296f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, -1673f, var_3.a.d.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b.xz), ~(~var_3.a.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -u_input.b.x, _wgslsmith_mod_i32(global0.x >> (31850u % 32u), u_input.b.x)), u_input.b));
}

