struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(2147483647i, 27934i, 17291i), vec3<i32>(24425i, -16547i, 27557i), vec3<i32>(1i, -20646i, i32(-2147483648)), vec3<i32>(-12614i, 2147483647i, 35268i), vec3<i32>(1i, 1i, 0i), vec3<i32>(-27690i, 2147483647i, -5939i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(21291i, 24273i, 11390i), vec3<i32>(1i, -39307i, 0i), vec3<i32>(4052i, -12669i, -79481i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, 63986i, 2147483647i), vec3<i32>(-1i, -25145i, 0i), vec3<i32>(32132i, 47163i, 2147483647i), vec3<i32>(-42332i, 1i, 2147483647i), vec3<i32>(0i, -1i, -12730i), vec3<i32>(38225i, -2702i, -6456i), vec3<i32>(1i, -13578i, -53532i), vec3<i32>(-32730i, -19266i, 2147483647i), vec3<i32>(29840i, i32(-2147483648), 0i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-15321i, -1i, 22151i), vec3<i32>(1i, i32(-2147483648), 31949i), vec3<i32>(0i, -50550i, i32(-2147483648)), vec3<i32>(-2244i, i32(-2147483648), 78503i), vec3<i32>(30669i, 2147483647i, -25398i), vec3<i32>(14975i, -1i, -51419i), vec3<i32>(77012i, 1i, 1i), vec3<i32>(8873i, 52198i, 29263i), vec3<i32>(-4422i, -10587i, 25064i));

var<private> global1: array<vec3<f32>, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, max(_wgslsmith_sub_u32(25895u, u_input.a.x), ~u_input.b)), vec3<u32>(16568u, (u_input.a.x | u_input.b) >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(5499u, u_input.b, u_input.a.x)) % 32u), _wgslsmith_mod_u32(select(u_input.b, u_input.b, false), ~4294967295u))), 2514u, u_input.b);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 865f))), _wgslsmith_f_op_f32(f32(-1f) * -1898f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1535f)), vec2<f32>(568f, -815f)))))));
    var var_2 = vec2<bool>(true, true);
    return vec2<bool>(any(vec4<bool>(all(vec3<bool>(false, var_2.x, var_2.x)), true, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(min(1299f, var_1.x)), var_2.x)), !((-1873i != firstTrailingBit(0i)) & !(!var_2.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<bool>) -> bool {
    global1 = array<vec3<f32>, 12>();
    var var_0 = Struct_1(~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(86711u, arg_1.a.x)), min(vec2<u32>(arg_1.a.x, arg_1.a.x), u_input.a.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xx), arg_0.xy))), !func_3(), arg_3.zy, vec4<f32>(-814f, 189f, arg_1.b.x, _wgslsmith_f_op_f32(floor(-434f))));
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(var_0.a.x), ~var_0.a.x);
    let var_2 = arg_3.x;
    var var_3 = Struct_1(firstLeadingBit(arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(trunc(1066f))) - 1f), arg_1.b.x), select(vec2<bool>(any(!arg_3), var_0.c.x), vec2<bool>(var_0.c.x, arg_3.x), !select(var_0.d, vec2<bool>(var_2, arg_1.c.x), !arg_1.c)), !arg_3.xy, arg_1.e);
    return !(!((var_0.c.x || !arg_3.x) != select(var_0.d.x, var_2, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.a;
    var var_1 = vec4<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, arg_3.e.x, 914f, -1514f))), Struct_1(u_input.a.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_3.e.yx)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1009f, arg_3.b.x), vec2<f32>(-1789f, 673f), arg_3.d.x))), arg_3.c, vec2<bool>(true, arg_3.c.x), vec4<f32>(_wgslsmith_f_op_f32(-780f + arg_3.b.x), _wgslsmith_f_op_f32(abs(129f)), _wgslsmith_f_op_f32(min(arg_3.e.x, arg_3.e.x)), arg_3.b.x)), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(5452u, 30u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-66921i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 2147483647i, 2147483647i)), min(arg_0.x, -2147483647i))), select(select(vec3<bool>(arg_3.c.x, arg_3.c.x, true), vec3<bool>(arg_3.c.x, false, false), arg_3.d.x), vec3<bool>(arg_3.c.x, arg_3.b.x <= arg_3.e.x, true), select(vec3<bool>(true, arg_3.d.x, arg_3.c.x), vec3<bool>(false, arg_3.d.x, arg_3.c.x), true))), arg_3.c.x, all(arg_3.c));
    let var_2 = arg_3;
    var var_3 = arg_3.d.x;
    var var_4 = u_input.b;
    return _wgslsmith_f_op_f32(abs(var_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global1 = array<vec3<f32>, 12>();
    global0 = array<vec3<i32>, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(1i, 1i), min(4294967295u, var_0), abs(var_0), Struct_1(u_input.a.yy, vec2<f32>(-333f, -815f), vec2<bool>(true, false), vec2<bool>(false, true), vec4<f32>(916f, -502f, -156f, 1006f)))), _wgslsmith_f_op_f32(func_1(-vec2<i32>(-1i, 53557i), var_0, 1u, Struct_1(u_input.a.xy, vec2<f32>(-1000f, -1311f), vec2<bool>(true, true), vec2<bool>(false, false), vec4<f32>(-568f, 1000f, 1885f, 766f))))), _wgslsmith_f_op_f32(func_1(-(~vec2<i32>(1i, -1i)), u_input.b, u_input.b, Struct_1(vec2<u32>(u_input.a.x, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-358f, -1289f)), vec2<bool>(false, true), vec2<bool>(true, true), vec4<f32>(-1654f, 1226f, 219f, 1444f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f + -568f)), _wgslsmith_f_op_f32(func_1(select(vec2<i32>(-19317i, 2147483647i), vec2<i32>(-37533i, -1i), vec2<bool>(true, false)), abs(0u), firstTrailingBit(u_input.b), Struct_1(vec2<u32>(36160u, var_0), vec2<f32>(1982f, -1277f), vec2<bool>(false, true), vec2<bool>(true, true), vec4<f32>(2065f, -972f, -395f, 614f)))))));
    let var_2 = Struct_1(abs(vec2<u32>(var_0, 4294967295u) >> ((_wgslsmith_mod_vec2_u32(u_input.a.yy, vec2<u32>(20467u, var_0)) << (~u_input.a.yz % vec2<u32>(32u))) % vec2<u32>(32u))), var_1, vec2<bool>(true, func_3().x), !vec2<bool>(true, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-1471f - var_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1665f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(floor(1110f))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(-222f)), _wgslsmith_div_f32(var_1.x, 435f), 1277f))));
    let var_3 = vec3<u32>(0u, _wgslsmith_add_u32(~(~var_2.a.x), firstTrailingBit(20218u | var_2.a.x)), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(22013u, var_0), _wgslsmith_div_u32(var_0, var_0))) << ((~(~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)) ^ min(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(var_2.a.x, 50146u, 60409u)), countOneBits(~u_input.a))) % vec3<u32>(32u));
    global0 = array<vec3<i32>, 30>();
    let var_4 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(~var_2.a.x, 3033u, var_3.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(~var_0, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(47950u, 1u, 0u), vec3<u32>(var_0, var_2.a.x, var_3.x)), select(1u, 4294967295u, false)) << (vec4<u32>(~59131u, min(var_0, 1u), 16214u, var_0) % vec4<u32>(32u)), select(vec4<u32>(countOneBits(var_0), ~var_3.x, firstLeadingBit(32718u), ~var_0), ~select(vec4<u32>(u_input.b, 2053u, var_3.x, 0u), vec4<u32>(var_3.x, 2355u, var_0, var_0), vec4<bool>(var_2.c.x, false, var_2.d.x, var_2.d.x)), !var_2.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(42069u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_2.e.zww)), vec3<f32>(-524f, _wgslsmith_f_op_f32(var_2.e.x * var_2.b.x), _wgslsmith_f_op_f32(sign(var_2.e.x))), !select(vec3<bool>(var_2.c.x, true, var_2.c.x), vec3<bool>(var_2.c.x, var_2.c.x, var_2.d.x), false))) - _wgslsmith_f_op_vec3_f32(ceil(var_2.e.zzz))));
}

