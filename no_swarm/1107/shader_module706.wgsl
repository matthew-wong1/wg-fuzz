struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1783i, vec2<f32>(202f, -811f), -456f, vec2<bool>(false, true)), Struct_1(19583i, vec2<f32>(-572f, 569f), 1153f, vec2<bool>(false, true)), Struct_1(-26322i, vec2<f32>(1391f, -511f), 1621f, vec2<bool>(true, true)), Struct_1(-11445i, vec2<f32>(-219f, 491f), 1282f, vec2<bool>(false, true)), Struct_1(-1i, vec2<f32>(-1327f, -323f), -162f, vec2<bool>(false, false)), Struct_1(-64395i, vec2<f32>(280f, 1715f), 142f, vec2<bool>(false, true)), Struct_1(2147483647i, vec2<f32>(-217f, -1694f), 2203f, vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec2<f32>(-1000f, 650f), -1425f, vec2<bool>(true, true)), Struct_1(i32(-2147483648), vec2<f32>(-436f, -430f), -566f, vec2<bool>(false, true)), Struct_1(2147483647i, vec2<f32>(216f, 815f), -1465f, vec2<bool>(true, false)), Struct_1(0i, vec2<f32>(-806f, 137f), -222f, vec2<bool>(true, true)), Struct_1(0i, vec2<f32>(3092f, -207f), -661f, vec2<bool>(true, true)), Struct_1(2147483647i, vec2<f32>(1398f, -789f), -462f, vec2<bool>(true, true)), Struct_1(-69704i, vec2<f32>(497f, 863f), 354f, vec2<bool>(false, true)));

var<private> global1: array<Struct_4, 2>;

var<private> global2: array<Struct_3, 30>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global2 = array<Struct_3, 30>();
    let var_0 = all(vec2<bool>(true, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1716f))) + -183f);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = vec2<i32>(firstTrailingBit(0i) << ((35988u << ((~4294967295u & countOneBits(arg_0)) % 32u)) % 32u), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_add_i32(12420i, -u_input.a.x), select(reverseBits(u_input.b.x), -u_input.b.x, true)) << (~arg_0 % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1339f)), -1194f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2326f) + _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-536f, -1547f)) + _wgslsmith_f_op_f32(f32(-1f) * -2084f)))) - -141f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-495f, 883f))), 240f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f + _wgslsmith_f_op_f32(ceil(-555f)))))));
    var var_2 = 150f;
    let var_3 = (max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(99681u, 4294967295u, 1u, 4294967295u), vec4<u32>(arg_0, arg_0, 1u, 1u), vec4<bool>(true, true, true, true)), ~vec4<u32>(4294967295u, arg_0, 1u, 5893u)), reverseBits(11047u)) << (arg_0 % 32u)) ^ arg_0;
    var var_4 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.x, -1i), vec2<i32>(17899i, u_input.b.x), true) & ~u_input.a.xx, vec2<i32>(_wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.b.x), var_0.x | -29664i)), var_0), Struct_1(firstLeadingBit(u_input.b.x), var_1.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1333f + -177f)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false)))), all(vec2<bool>(select(true, true, var_3 > 1u), true)), ~(~(firstTrailingBit(u_input.b) | (vec4<i32>(-23985i, 2147483647i, u_input.a.x, var_0.x) | u_input.b))));
    return var_4.b.d;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: i32) -> vec3<f32> {
    global1 = array<Struct_4, 2>();
    var var_0 = ~firstLeadingBit(~7314u);
    let var_1 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -907f) - vec2<f32>(arg_0.a, arg_1.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.yz))), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f + arg_1.x)), func_3(4294967295u));
    let var_2 = var_1.d.x;
    let var_3 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(1u, 4294967295u)), 2u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wyw) + _wgslsmith_f_op_vec3_f32(arg_1.zwz - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(arg_0.a + -1714f), 1303f), _wgslsmith_f_op_vec3_f32(arg_1.xwx + _wgslsmith_f_op_vec3_f32(-arg_1.xxx)), var_2))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    var var_0 = all(select(vec4<bool>(arg_1.b.d.x, any(select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(arg_1.b.d.x, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, false, true))), true, true), !select(select(vec4<bool>(false, true, arg_1.c, arg_1.b.d.x), vec4<bool>(true, arg_1.c, arg_1.c, false), true), vec4<bool>(arg_1.c, true, false, arg_1.c), true), true));
    let var_1 = ~reverseBits(11045u);
    let var_2 = arg_1.c;
    let var_3 = arg_1;
    var_0 = false;
    return all(arg_1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x == u_input.b.x;
    global1 = array<Struct_4, 2>();
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(342f, -1225f, 271f)))) * _wgslsmith_f_op_vec3_f32(func_2(Struct_3(_wgslsmith_f_op_f32(func_1())), vec4<f32>(_wgslsmith_f_op_f32(ceil(-916f)), -954f, _wgslsmith_f_op_f32(-1110f * -1000f), 253f), _wgslsmith_add_i32(select(u_input.b.x, u_input.b.x, false), select(u_input.a.x, -21811i, false)), i32(-1i) * -24916i))), Struct_2(select(_wgslsmith_mod_vec2_i32(vec2<i32>(18307i, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), vec2<i32>(28089i, u_input.b.x))), u_input.a.yy & u_input.a.yy, func_3(_wgslsmith_mult_u32(0u, 4294967295u))), global0[_wgslsmith_index_u32(1u, 14u)], false, vec4<i32>(_wgslsmith_div_i32(55477i, firstTrailingBit(u_input.b.x)), (u_input.b.x ^ 5109i) & -1i, u_input.b.x, u_input.b.x)));
    var var_2 = !(!vec2<bool>(~u_input.b.x >= (u_input.b.x >> (10444u % 32u)), !var_1 != !var_1));
    global0 = array<Struct_1, 14>();
    let var_3 = Struct_1(19189i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(184f, -826f) * vec2<f32>(753f, -737f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(648f, -1000f) - vec2<f32>(-800f, 186f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, 410f)), vec2<f32>(-613f, _wgslsmith_f_op_f32(min(-400f, 686f))), u_input.a.x <= countOneBits(u_input.b.x))))), 1000f, vec2<bool>(true, any(vec4<bool>(var_1 || var_2.x, true, func_3(0u).x, true))));
    let var_4 = Struct_5(~(~(~_wgslsmith_div_u32(0u, 1u))), var_3.d.x, var_3.b);
    let var_5 = !select(select(vec4<bool>(var_3.d.x, !var_2.x, var_4.a < 25967u, !var_2.x), select(select(vec4<bool>(var_3.d.x, true, true, var_4.b), vec4<bool>(var_2.x, var_4.b, var_3.d.x, var_3.d.x), true), vec4<bool>(false, true, var_3.d.x, false), select(vec4<bool>(true, true, var_1, var_2.x), vec4<bool>(var_4.b, false, var_2.x, var_2.x), true)), any(vec3<bool>(var_3.d.x, false, true)) && false), vec4<bool>(true, ~1u == var_4.a, true, var_1), all(!(!vec3<bool>(var_2.x, var_3.d.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~0i, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(22806i, var_3.a, u_input.a.x, u_input.b.x)), min(u_input.b, vec4<i32>(u_input.a.x, var_3.a, 0i, u_input.b.x)))) ^ ~u_input.b.yzx, var_4.a, ~vec4<i32>(-13772i, 1i, 2147483647i, -u_input.b.x) >> (max(vec4<u32>(~var_4.a, var_4.a, abs(var_4.a), var_4.a | var_4.a), abs(~vec4<u32>(var_4.a, 0u, 24499u, var_4.a))) % vec4<u32>(32u)));
}

