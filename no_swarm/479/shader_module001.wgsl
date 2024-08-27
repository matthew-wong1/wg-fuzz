struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 4>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(375f, 214f)) + -750f), -129f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(699f, -1222f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))))));
    var var_2 = all(!select(select(!vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, true), !vec3<bool>(false, arg_1, false)), !vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, select(arg_1, arg_1, arg_1), arg_1)));
    var var_3 = vec2<bool>(select(_wgslsmith_mod_i32(arg_2.x, -u_input.a) < firstTrailingBit(u_input.a), true, arg_1), !(!arg_1 || false));
    var var_4 = Struct_4(47027u, Struct_1(var_0.x, -arg_2.x, true), arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-428f * var_1.x), arg_2.x, !var_3.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -264f), 1i, true), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(101648u, 42386u, 4294967295u, 0u), vec4<u32>(4294967295u, 43949u, 0u, 4294967295u), vec4<u32>(107114u, 1u, 28628u, 0u))), 1160f, Struct_1(_wgslsmith_f_op_f32(exp2(var_0.x)), arg_0, any(vec4<bool>(arg_1, false, var_3.x, false)))), -vec3<i32>(1i, arg_0, -390i) >> (select(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(68829u, 0u, 0u)), select(vec3<bool>(true, true, false), vec3<bool>(true, var_3.x, arg_1), vec3<bool>(arg_1, false, true))) % vec3<u32>(32u)), ~(~(~0u))));
    return firstLeadingBit(_wgslsmith_mult_vec4_u32(firstTrailingBit(var_4.e.a.c), countOneBits(_wgslsmith_mult_vec4_u32(var_4.e.a.c, var_4.e.a.c) | var_4.e.a.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, select(reverseBits(1i), u_input.a, true), arg_0.x, arg_0.x) | ~(~(~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))), ~(vec4<i32>(_wgslsmith_mod_i32(1i, -21085i), _wgslsmith_mult_i32(arg_0.x, u_input.a), u_input.a << (55289u % 32u), max(2737i, u_input.a)) << (func_3(_wgslsmith_mult_i32(arg_0.x, -30752i), all(arg_2.zw), ~vec4<i32>(20957i, u_input.a, u_input.a, -61i)) % vec4<u32>(32u))));
    var var_1 = abs(u_input.a);
    var var_2 = min(vec3<i32>(2147483647i, arg_0.x, arg_0.x), min(vec3<i32>(-36181i, -firstLeadingBit(var_0.x), 17603i), vec3<i32>(~(-1i) & arg_0.x, reverseBits(~var_0.x), u_input.a)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -822f), -385f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(382f, -1126f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-949f - -519f), _wgslsmith_f_op_f32(f32(-1f) * -465f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 605f)))))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -610f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(163f - -514f) * _wgslsmith_f_op_f32(-1074f + -105f)), _wgslsmith_f_op_f32(1865f + -622f))), -(_wgslsmith_dot_vec2_i32(var_0.zy, select(vec2<i32>(var_0.x, var_2.x), vec2<i32>(var_2.x, -2147483647i), vec2<bool>(false, arg_1))) & var_0.x), false);
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, ~7451u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(71918u, 8009u, 1u, 48927u), vec4<u32>(34462u, 42260u, 49763u, 0u))), ~vec4<u32>(~1u, 1u, 1u, 1u)), max(func_3(var_2.x, all(select(arg_2.xw, vec2<bool>(true, true), vec2<bool>(true, true))), vec4<i32>(var_2.x, abs(-13951i), _wgslsmith_dot_vec2_i32(var_2.xx, vec2<i32>(12004i, -3096i)), -var_4.b)), reverseBits(~countOneBits(vec4<u32>(64315u, 13241u, 41428u, 4294967295u))))), 4u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global0 = arg_2.c;
    var var_0 = arg_1;
    var var_1 = func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(countOneBits(11237i)), arg_1.b.x), arg_1.b.yz), false || any(select(!arg_0, vec4<bool>(arg_0.x, arg_0.x, false, arg_2.c), !arg_2.c)), !select(arg_0, !select(vec4<bool>(true, arg_2.c, arg_2.c, var_0.a.b.c), vec4<bool>(false, false, arg_2.c, true), vec4<bool>(true, true, true, false)), var_0.a.e.c));
    return _wgslsmith_f_op_f32(-1741f * var_1.d);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1733f, _wgslsmith_f_op_f32(floor(-589f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f + -351f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, 760f, 1258f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(714f, -1000f, 591f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(921f, 469f, 1337f), vec3<f32>(712f, 1517f, -993f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, -567f, 1041f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -901f, -393f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1095f, 747f, -585f))))));
    let var_1 = ~vec2<u32>(select(~_wgslsmith_div_u32(0u, 53936u), 0u, true), _wgslsmith_div_u32(select(~4294967295u, ~1u, true), 4294967295u));
    global1 = array<Struct_2, 4>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1054f);
    global1 = array<Struct_2, 4>();
    return Struct_4(var_1.x, Struct_1(_wgslsmith_f_op_f32(func_4(vec4<bool>(all(vec3<bool>(false, true, true)), false, true, all(vec4<bool>(true, false, false, false))), Struct_3(func_2(vec2<i32>(u_input.a, u_input.a), true, vec4<bool>(false, true, false, true)), reverseBits(vec3<i32>(-29539i, -1i, 33952i)), var_1.x), func_2(vec2<i32>(2147483647i, 31325i), true, vec4<bool>(true, true, true, true)).b)), ~u_input.a | -3974i, any(vec3<bool>(all(vec2<bool>(false, false)), true, true))), func_2(firstLeadingBit(vec2<i32>(-33825i, u_input.a)), false, vec4<bool>(true, true, true, true)).b.b << ((_wgslsmith_mod_u32(func_3(u_input.a, false, vec4<i32>(55196i, 1i, -2147483647i, 47024i)).x, 0u | var_1.x) | reverseBits(max(var_1.x, var_1.x))) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), -799f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-893f * var_2), _wgslsmith_f_op_f32(-1466f - -1170f)) * _wgslsmith_f_op_vec2_f32(-var_0.zy))), Struct_3(global1[_wgslsmith_index_u32(var_1.x, 4u)], firstLeadingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-4419i, u_input.a, -1i))), _wgslsmith_mod_u32(1u, ~34362u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(max(47323u, 1u), 4u)], ~(-(-vec3<i32>(2147483647i, u_input.a, -41061i) >> (select(vec3<u32>(29834u, 1u, 95268u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(false, true, true)) % vec3<u32>(32u)))), select(~1u, 4294967295u, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))) || (58763i > u_input.a)));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -998f, -921f)));
    let var_3 = var_0.a.c.x;
    let var_4 = vec2<u32>(abs(~1u), 1u) | countOneBits(vec2<u32>(82359u, var_0.a.c.x << (_wgslsmith_clamp_u32(var_1.a, var_1.e.c, 66488u) % 32u)));
    var var_5 = var_4.x << (_wgslsmith_sub_u32(var_1.e.c, firstLeadingBit(~var_1.e.a.c.x)) % 32u);
    let var_6 = var_0.a.a;
    var var_7 = var_0.a.e.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.a, 288f, -526f, 1786f)))), vec4<f32>(_wgslsmith_f_op_f32(min(var_6.a, _wgslsmith_div_f32(-865f, var_6.a))), _wgslsmith_f_op_f32(-148f - -534f), _wgslsmith_f_op_f32(-var_1.d.x), var_0.a.a.a), true)), vec3<i32>(-2147483647i >> (max(var_0.c, 78429u) % 32u), -(~var_0.b.x), (var_6.b ^ u_input.a) | ~var_1.c) << (abs(vec3<u32>(~var_0.a.c.x, 92959u, var_1.a)) % vec3<u32>(32u)), -firstTrailingBit(_wgslsmith_add_i32(0i, abs(var_1.c))), ~(-(-24178i << (_wgslsmith_div_u32(4294967295u, var_0.c) % 32u))));
}

