struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<vec3<u32>, 25>;

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<f32>(-320f, -564f), Struct_1(vec2<i32>(4983i, i32(-2147483648)), 58666u, vec3<bool>(true, true, false)), 4294967295u, Struct_1(vec2<i32>(12017i, -65399i), 73747u, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-26488i, 2147483647i), 0u, vec3<bool>(true, false, true))), Struct_2(vec2<f32>(-1000f, -464f), Struct_1(vec2<i32>(-22249i, 0i), 65856u, vec3<bool>(true, false, true)), 0u, Struct_1(vec2<i32>(-30570i, 1i), 51959u, vec3<bool>(true, true, true)), Struct_1(vec2<i32>(-32309i, 2147483647i), 6518u, vec3<bool>(false, false, false))), Struct_2(vec2<f32>(1049f, -926f), Struct_1(vec2<i32>(-20458i, 27048i), 47925u, vec3<bool>(true, false, false)), 4294967295u, Struct_1(vec2<i32>(19803i, -20144i), 25510u, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 1u, vec3<bool>(false, false, false))), Struct_2(vec2<f32>(-1000f, 1226f), Struct_1(vec2<i32>(31220i, 0i), 26962u, vec3<bool>(false, false, true)), 0u, Struct_1(vec2<i32>(8384i, 0i), 4294967295u, vec3<bool>(true, true, false)), Struct_1(vec2<i32>(18085i, 48139i), 66441u, vec3<bool>(false, false, false))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<f32>) -> f32 {
    global2 = array<vec3<u32>, 25>();
    global4 = array<Struct_2, 4>();
    global0 = array<vec3<f32>, 19>();
    var var_0 = arg_2.b;
    let var_1 = -arg_2.e.xw << (arg_1 % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(round(-215f));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    global2 = array<vec3<u32>, 25>();
    let var_0 = ~abs(min(global2[_wgslsmith_index_u32(abs(global3.x ^ arg_1.a.d.b), 25u)], vec3<u32>(global3.x | 0u, 1u, 1u >> (global3.x % 32u))));
    global2 = array<vec3<u32>, 25>();
    return global3.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<u32> {
    global3 = vec2<u32>(func_4(vec2<bool>(!(true || arg_1.c.x), _wgslsmith_f_op_f32(1239f * -804f) <= _wgslsmith_f_op_f32(ceil(-693f))), Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(655f, 355f), vec2<f32>(-775f, 300f))), Struct_1(vec2<i32>(u_input.a, arg_1.a.x), 31718u, vec3<bool>(arg_0.x, arg_1.c.x, arg_1.c.x)), arg_1.b, arg_1, Struct_1(vec2<i32>(14395i, 1i), 1u, arg_1.c)), Struct_3(arg_1.c.x, arg_1.a.x), vec2<f32>(_wgslsmith_f_op_f32(floor(-404f)), _wgslsmith_f_op_f32(func_3(Struct_3(true, arg_1.a.x), vec2<u32>(65934u, 25255u), Struct_4(global4[_wgslsmith_index_u32(global3.x, 4u)], Struct_3(arg_0.x, -39201i), vec2<f32>(-363f, 190f), arg_1.a, vec4<i32>(arg_1.a.x, -2147483647i, 4780i, 0i)), vec2<f32>(433f, 1163f)))), arg_1.a, select(firstLeadingBit(vec4<i32>(arg_1.a.x, u_input.a, arg_1.a.x, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-52768i, u_input.a, arg_1.a.x, 2147483647i), vec4<i32>(u_input.a, -2147483647i, arg_1.a.x, -31286i)), select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, false), vec4<bool>(arg_1.c.x, arg_0.x, true, true), vec4<bool>(true, true, arg_1.c.x, false))))), ~((global3.x << (1u % 32u)) << (~global3.x % 32u)));
    global3 = _wgslsmith_add_vec2_u32(~min(select(countOneBits(vec2<u32>(global3.x, 13545u)), ~vec2<u32>(28526u, 4294967295u), !arg_0.x), abs(abs(vec2<u32>(1u, 4294967295u)))), ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(23258u, 65844u), vec2<u32>(34990u, global3.x))));
    let var_0 = global4[_wgslsmith_index_u32(((16506u ^ arg_1.b) | 43932u) ^ global3.x, 4u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f * var_0.a.x)) * -1281f));
    var var_2 = Struct_3(true, -2147483647i);
    return vec2<u32>(19985u, ~reverseBits(_wgslsmith_div_u32(arg_1.b, global3.x) >> (4294967295u % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1.a >> (func_2(vec2<bool>(any(!arg_0.wxy), (arg_2 <= -10406i) || !arg_1.c.x), Struct_1(arg_1.a, ~1u, arg_0.zzz)) % vec2<u32>(32u));
    global1 = array<Struct_2, 32>();
    let var_1 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(-9278i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-25440i, u_input.a, 1i, -1i), vec4<i32>(1i, 51069i, u_input.a, u_input.a)), _wgslsmith_add_i32(53954i, u_input.a)), reverseBits(u_input.a)), vec3<i32>(-9357i, _wgslsmith_add_i32(arg_1.a.x, select(u_input.a, u_input.a, arg_1.c.x)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, arg_1.a.x, u_input.a), vec4<i32>(-2647i, 2147483647i, arg_2, -1i))))), 0i);
    global1 = array<Struct_2, 32>();
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = Struct_4(Struct_2(vec2<f32>(1153f, _wgslsmith_f_op_f32(-arg_3)), arg_1, 65460u, Struct_1(arg_1.a, ~global3.x | abs(arg_1.b), !select(vec3<bool>(arg_1.c.x, arg_1.c.x, false), arg_1.c, vec3<bool>(arg_1.c.x, true, arg_1.c.x))), Struct_1(abs(~arg_1.a), global3.x, !(!arg_1.c))), Struct_3(!all(vec3<bool>(true, arg_1.c.x, arg_1.c.x)), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-300f, 791f, arg_1.c.x)), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_0))))), reverseBits(vec2<i32>(9072i, -(i32(-1i) * -19878i))), vec4<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-17825i, u_input.a, -21461i, arg_1.a.x)), max(vec4<i32>(0i, 7415i, arg_1.a.x, -23980i), -vec4<i32>(-37593i, -39918i, arg_1.a.x, u_input.a))), select(arg_1.a.x, u_input.a, arg_1.c.x), _wgslsmith_dot_vec2_i32(arg_1.a, arg_1.a), -1i));
    let var_1 = false;
    let var_2 = _wgslsmith_div_f32(-1490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.b, func_2(vec2<bool>(true, true), func_1(vec4<bool>(var_0.b.a, true, var_0.a.b.c.x, var_1), var_0.a.d, -9773i)), Struct_4(Struct_2(vec2<f32>(-1000f, 823f), Struct_1(vec2<i32>(var_0.e.x, 35116i), 1u, vec3<bool>(var_0.b.a, var_0.a.e.c.x, var_0.b.a)), var_0.a.e.b, arg_1, var_0.a.b), Struct_3(false, -1i), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -1280f), vec2<f32>(-299f, arg_0)), arg_1.a, ~var_0.e), _wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(arg_2, arg_2), var_1))))));
    let var_3 = var_0.a;
    let var_4 = u_input.a;
    return _wgslsmith_f_op_f32(select(arg_2, -656f, true));
}

fn func_6(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    global2 = array<vec3<u32>, 25>();
    global2 = array<vec3<u32>, 25>();
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1740f + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -600f));
    var var_1 = 26037u;
    global1 = array<Struct_2, 32>();
    return Struct_1(vec2<i32>(min(_wgslsmith_sub_i32(firstTrailingBit(2147483647i), arg_1.x), ~firstTrailingBit(u_input.a)), 1i), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 25u)], vec3<u32>(global3.x, ~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 8388u, global3.x, 0u), vec4<u32>(global3.x, 4294967295u, global3.x, 17044u)) | (global3.x << (4294967295u % 32u)))), !select(func_1(vec4<bool>(true, false, true, true), Struct_1(arg_1.zy, 19540u, vec3<bool>(false, false, false)), arg_1.x).c, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), 1i > arg_1.x), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, arg_0 == -811f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    var var_0 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(-1000f, func_1(vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(u_input.a, -20213i), global3.x, vec3<bool>(false, false, false)), u_input.a), -243f, _wgslsmith_f_op_f32(abs(301f))))), 1000f), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a & -34926i, 2147483647i, -34277i) & -vec3<i32>(-386i, 2147483647i, u_input.a), ~vec3<i32>(select(u_input.a, 0i, true), u_input.a, ~(-19292i)), firstTrailingBit(vec3<i32>(0i, 2147483647i, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(1216f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1927f + -537f), -1637f))), _wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(ceil(619f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-631f, 1075f) + -460f))))));
    global2 = array<vec3<u32>, 25>();
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -189f);
    global3 = abs(~(select(vec2<u32>(0u, 44243u), vec2<u32>(75990u, global3.x) ^ vec2<u32>(global3.x, global3.x), var_0.c.x) | func_2(var_0.c.zz, func_1(vec4<bool>(true, var_0.c.x, var_0.c.x, true), Struct_1(var_0.a, global3.x, var_0.c), var_0.a.x))));
    global1 = array<Struct_2, 32>();
    global2 = array<vec3<u32>, 25>();
    let var_2 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-865f - 564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -681f))), -1737f), 16526u, vec2<f32>(-584f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f + -1000f)))));
}

