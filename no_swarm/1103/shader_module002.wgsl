struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_4, 19>;

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global3: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(false, Struct_2(Struct_1(49760u, vec4<f32>(1000f, 1942f, 1068f, 888f), 7466u), 4294967295u), vec2<bool>(false, true)), Struct_5(false, Struct_2(Struct_1(1u, vec4<f32>(-804f, 562f, -2276f, -1513f), 24696u), 1u), vec2<bool>(false, true)), Struct_5(true, Struct_2(Struct_1(1u, vec4<f32>(679f, 1455f, -283f, 1578f), 77707u), 1u), vec2<bool>(false, false)), Struct_5(true, Struct_2(Struct_1(33013u, vec4<f32>(528f, 763f, -660f, 852f), 4294967295u), 1u), vec2<bool>(true, false)), Struct_5(false, Struct_2(Struct_1(1u, vec4<f32>(1492f, 793f, 462f, 891f), 24322u), 1u), vec2<bool>(false, false)), Struct_5(false, Struct_2(Struct_1(6073u, vec4<f32>(356f, 180f, -563f, 554f), 10630u), 1u), vec2<bool>(true, true)), Struct_5(true, Struct_2(Struct_1(4294967295u, vec4<f32>(-428f, 545f, 1039f, -763f), 66162u), 74869u), vec2<bool>(true, false)), Struct_5(false, Struct_2(Struct_1(0u, vec4<f32>(215f, 1443f, 520f, 216f), 4294967295u), 0u), vec2<bool>(false, false)), Struct_5(false, Struct_2(Struct_1(4294967295u, vec4<f32>(921f, 1140f, -189f, -433f), 117504u), 4294967295u), vec2<bool>(false, false)), Struct_5(false, Struct_2(Struct_1(10823u, vec4<f32>(-1000f, 226f, -949f, 1371f), 1u), 69733u), vec2<bool>(false, true)), Struct_5(false, Struct_2(Struct_1(1u, vec4<f32>(-1069f, -507f, -953f, -359f), 1u), 20009u), vec2<bool>(true, false)), Struct_5(false, Struct_2(Struct_1(0u, vec4<f32>(-727f, 1654f, 1000f, 618f), 13691u), 0u), vec2<bool>(false, false)), Struct_5(false, Struct_2(Struct_1(19862u, vec4<f32>(-628f, -1165f, -583f, 1576f), 10758u), 25188u), vec2<bool>(false, false)), Struct_5(true, Struct_2(Struct_1(4294967295u, vec4<f32>(461f, 765f, 137f, -220f), 32576u), 44641u), vec2<bool>(true, true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    global2 = array<vec4<bool>, 22>();
    global3 = array<Struct_5, 14>();
    var var_0 = Struct_1(countOneBits(~u_input.d.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-364f, 125f, 1572f, -319f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-254f, 128f, 1407f, -135f) + vec4<f32>(1157f, 266f, 643f, 1253f)))))))), ~1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(2226f)), -1574f, _wgslsmith_f_op_f32(1574f + -677f), var_0.b.x) * _wgslsmith_f_op_vec4_f32(-var_0.b)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, var_0.b.x, 1270f, 1139f)))))))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(1334f - -379f)), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_f32(-var_0.b.x)), -231f));
    var var_2 = arg_0;
    return u_input.d.wyx;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    global2 = array<vec4<bool>, 22>();
    let var_0 = vec4<bool>(true, !all(vec4<bool>(-10260i == arg_0.x, false & arg_3, true, true)), !arg_3, any(select(!arg_1.yzz, !(!vec3<bool>(false, arg_1.x, arg_3)), arg_1.xwz)));
    var var_1 = ~_wgslsmith_add_vec3_u32(select(~_wgslsmith_add_vec3_u32(u_input.d.yyw, vec3<u32>(0u, u_input.d.x, 4174u)), u_input.d.zzw, !(!arg_1.wwy)), firstLeadingBit((global0.yxw << (vec3<u32>(global0.x, u_input.d.x, 8617u) % vec3<u32>(32u))) << (vec3<u32>(global0.x, 50963u, global0.x) % vec3<u32>(32u))));
    var_1 = ~func_3(~vec4<u32>(~0u, _wgslsmith_mod_u32(global0.x, u_input.d.x), _wgslsmith_mod_u32(u_input.d.x, 4294967295u), 4294967295u << (u_input.d.x % 32u)));
    var var_2 = Struct_5(any(select(select(!vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, var_0.x, false), false), vec3<bool>(all(var_0.xy), all(vec4<bool>(true, arg_1.x, false, true)), -37204i == u_input.a.x), any(var_0.wy))), Struct_2(Struct_1(~u_input.d.x >> ((4830u & global0.x) % 32u), vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 111f)), _wgslsmith_f_op_f32(floor(1917f)), -189f, _wgslsmith_f_op_f32(-204f + arg_2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_1.x, 9238u), ~vec3<u32>(global0.x, 24683u, 34587u))), 0u & abs(_wgslsmith_sub_u32(1u, global0.x))), vec2<bool>(any(arg_1), all(vec2<bool>(true, var_0.x))));
    return var_2.b.a;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = func_2(-firstLeadingBit(u_input.c.yz << (_wgslsmith_mult_vec2_u32(u_input.d.yy, vec2<u32>(u_input.d.x, 1825u)) % vec2<u32>(32u))), select(global2[_wgslsmith_index_u32(457u, 22u)], !vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true), vec4<bool>(_wgslsmith_div_i32(u_input.b.x, -34203i) <= u_input.b.x, !all(global2[_wgslsmith_index_u32(3768u, 22u)]), true, all(vec2<bool>(true, true)))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), u_input.c.x != _wgslsmith_dot_vec3_i32(vec3<i32>(-38843i, u_input.b.x, 0i), vec3<i32>(u_input.c.x, 7858i, u_input.a.x)))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(468f))))), -514f), false);
    let var_1 = !vec3<bool>(any(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, var_0.a), 22u)], vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), !select(any(vec3<bool>(false, true, true)), true, all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - -206f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)), -872f))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(min(-3130f, -819f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(850f, 1815f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -662f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(var_0.b.xy - _wgslsmith_f_op_vec2_f32(-var_0.b.wz)), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(var_0.b.yx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.zx * var_0.b.wx)), false))));
    global3 = array<Struct_5, 14>();
    return Struct_4(func_2(vec2<i32>(u_input.b.x, 2147483647i), select(global2[_wgslsmith_index_u32(~51545u, 22u)], global2[_wgslsmith_index_u32(var_0.a, 22u)], vec4<bool>(var_1.x == true, true, var_1.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b.xww))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, arg_0, var_2.x), vec3<f32>(536f, var_2.x, var_2.x))))), true).b.xxw, Struct_2(Struct_1(11405u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.b, var_0.b)), _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(392f, 1680f, var_2.x, -1205f))), ~_wgslsmith_clamp_u32(global0.x, u_input.d.x, 1242u)), var_0.a), Struct_1(_wgslsmith_sub_u32(u_input.d.x, global0.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -1417f, -862f)))), _wgslsmith_sub_u32(var_0.c << (var_0.c % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 19158u, 7726u), vec3<u32>(var_0.a, var_0.a, var_0.a))) & global0.x), ~(-143i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1935f);
    var var_1 = ~16525u << (_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d.x, var_0.c.a ^ 5294u), 25043u ^ _wgslsmith_sub_u32(var_0.b.a.c, u_input.d.x)), _wgslsmith_add_u32(global0.x, ~(~0u))) % 32u);
    var var_2 = reverseBits(firstTrailingBit(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -27439i), u_input.b, vec2<i32>(var_0.d, var_0.d))));
    let var_3 = min(vec3<u32>(59796u, _wgslsmith_mult_u32(0u, 743u | firstTrailingBit(var_0.b.a.c)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d.x, 56553u, 2504u, u_input.d.x) | vec4<u32>(global0.x, global0.x, u_input.d.x, 27427u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b.a.a, global0.x, u_input.d.x), u_input.d)), _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(var_0.c.a, var_0.c.a, 49984u, var_0.c.c)) & ~u_input.d)), ~reverseBits(u_input.d.ywx));
    var_2 = firstTrailingBit(u_input.a);
    var_1 = u_input.d.x;
    var_2 = firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(u_input.b | _wgslsmith_add_vec2_i32(u_input.c.xz, vec2<i32>(2147483647i, -534i)), vec2<i32>(~var_2.x, _wgslsmith_dot_vec2_i32(u_input.c.yx, u_input.a)))));
    var var_4 = vec4<bool>(true, false, true, ((var_2.x << (_wgslsmith_add_u32(11402u, var_0.b.b) % 32u)) != var_2.x) || ((_wgslsmith_add_u32(0u, u_input.d.x) << (var_0.b.a.a % 32u)) == global0.x));
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1748f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0.x & var_3.x) << (((max(global0.x, global0.x) ^ 3375u) & (_wgslsmith_mod_u32(8287u, var_0.b.a.c) >> (var_0.c.c % 32u))) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(33543u, var_3.x, u_input.d.x, 20150u), vec4<u32>(4294967295u, 4684u, var_3.x, 68268u), global2[_wgslsmith_index_u32(124250u, 22u)]) >> (~vec4<u32>(14187u, 4294967295u, 86278u, 44655u) % vec4<u32>(32u)), vec4<u32>(4847u, 25790u, 0u, 4294967295u) | firstLeadingBit(vec4<u32>(1u, 1u, 0u, var_3.x))), _wgslsmith_clamp_u32(~var_3.x, 1u, var_3.x), ~u_input.d.x), _wgslsmith_add_i32(~14680i, var_0.d), func_3(u_input.d).x, _wgslsmith_div_f32(var_5, 1087f));
}

