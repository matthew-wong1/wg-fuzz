struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<u32>(77363u, 0u), vec2<bool>(false, true), vec2<f32>(1000f, -752f), 2050f), Struct_1(vec2<u32>(45098u, 1u), vec2<bool>(false, true), vec2<f32>(-209f, -251f), 735f), Struct_1(vec2<u32>(4294967295u, 5541u), vec2<bool>(true, true), vec2<f32>(-888f, -1000f), -1000f), Struct_1(vec2<u32>(74513u, 0u), vec2<bool>(true, false), vec2<f32>(1367f, -1338f), -1158f), Struct_1(vec2<u32>(48470u, 96640u), vec2<bool>(true, true), vec2<f32>(-522f, -1000f), 1426f), Struct_1(vec2<u32>(4294967295u, 56545u), vec2<bool>(true, true), vec2<f32>(-1000f, -960f), 484f), Struct_1(vec2<u32>(0u, 4324u), vec2<bool>(true, true), vec2<f32>(-1525f, -472f), 306f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(false, true), vec2<f32>(1284f, 218f), -191f), Struct_1(vec2<u32>(42893u, 1u), vec2<bool>(false, true), vec2<f32>(-930f, -1462f), -157f), Struct_1(vec2<u32>(57653u, 1u), vec2<bool>(true, true), vec2<f32>(-675f, -422f), 753f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), vec2<f32>(1337f, 1000f), -172f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true), vec2<f32>(-1431f, 193f), -145f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(true, true), vec2<f32>(1649f, 783f), -1279f), Struct_1(vec2<u32>(0u, 32532u), vec2<bool>(false, true), vec2<f32>(-1673f, -1229f), 107f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> i32 {
    return -(u_input.a ^ u_input.a) ^ (~(-abs(-1230i)) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, firstLeadingBit(u_input.a)), -(u_input.a & u_input.a)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global1 = array<Struct_1, 14>();
    global0 = any(select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, arg_0.e.b.x), vec3<bool>(true, arg_0.e.b.x, arg_0.a.b.x)), vec3<bool>(false, true, arg_0.a.b.x), !vec3<bool>(false, true, arg_0.a.b.x)), vec3<bool>(arg_0.e.b.x && true, true, all(vec4<bool>(false, arg_0.a.b.x, arg_0.e.b.x, false))), select(vec3<bool>(false, arg_0.a.b.x, arg_0.e.b.x), vec3<bool>(true, false, true), !vec3<bool>(true, false, arg_0.a.b.x))), select(!select(vec3<bool>(true, arg_0.a.b.x, true), vec3<bool>(arg_0.a.b.x, arg_0.e.b.x, true), false), select(vec3<bool>(false, false, arg_0.a.b.x), vec3<bool>(arg_0.a.b.x, false, arg_0.a.b.x), arg_0.e.b.x), select(vec3<bool>(true, false, arg_0.a.b.x), !vec3<bool>(true, arg_0.e.b.x, true), arg_0.a.b.x)), arg_0.e.b.x));
    global0 = arg_0.a.b.x;
    var var_0 = arg_0;
    let var_1 = var_0.e.a.x | ~_wgslsmith_clamp_u32(arg_0.e.a.x, ~4294967295u, 1u);
    return var_0.a;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_div_i32(u_input.a, u_input.a) >> (~arg_0.a.x % 32u);
    var var_1 = Struct_1(arg_0.a & arg_0.a, arg_0.b, _wgslsmith_f_op_vec2_f32(select(arg_0.c, arg_0.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d)))));
    var var_2 = Struct_2(func_2(Struct_2(Struct_1(arg_0.a, var_1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-884f, 2294f) * vec2<f32>(-868f, -1171f)), 310f), ~4294967295u & countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -10919i, u_input.a) ^ vec4<i32>(u_input.a, 1i, u_input.a, -14775i), ~vec4<i32>(-15818i, u_input.a, -2147483647i, u_input.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d - arg_0.d))), Struct_1(vec2<u32>(var_1.a.x, u_input.b), func_2(Struct_2(Struct_1(vec2<u32>(32548u, 0u), var_1.b, var_1.c, 1888f), arg_0.a.x, -9362i, arg_0.c.x, Struct_1(var_1.a, var_1.b, vec2<f32>(-639f, 1000f), arg_0.c.x)), -837f).b, vec2<f32>(var_1.c.x, -1000f), arg_0.d)), -209f), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.a & vec2<u32>(4294967295u, 0u), select(vec2<u32>(var_1.a.x, var_1.a.x), var_1.a, var_1.b)), var_1.a), _wgslsmith_mult_i32(10147i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -2147483647i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), vec4<i32>(2147483647i, u_input.a, u_input.a, 1i))), arg_0.c.x, func_2(Struct_2(func_2(Struct_2(arg_0, var_1.a.x, u_input.a, -1000f, arg_0), arg_0.d), _wgslsmith_dot_vec4_u32(vec4<u32>(44122u, var_1.a.x, 0u, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, var_1.a.x, 0u)), 1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.c.x)), func_2(Struct_2(global1[_wgslsmith_index_u32(74366u, 14u)], arg_0.a.x, -70292i, var_1.d, arg_0), arg_0.d).d)), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(3803u, 42329u), vec2<u32>(25487u, u_input.b)), !vec2<bool>(false, var_1.b.x), vec2<f32>(749f, 695f), _wgslsmith_f_op_f32(-387f + -227f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1224f)), -245f))));
    var var_3 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~0u, ~var_1.a.x), 4294967295u, 0u, _wgslsmith_mod_u32(~27504u, 33613u)), vec4<u32>(var_1.a.x, ~(~u_input.b), ~_wgslsmith_mod_u32(var_2.e.a.x, arg_0.a.x), ~10542u)));
    return 1i < ~(u_input.a >> (~_wgslsmith_clamp_u32(u_input.b, 85120u, 17111u) % 32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    global0 = false;
    let var_0 = Struct_2(Struct_1(vec2<u32>(u_input.b, ~u_input.b) >> ((firstTrailingBit(vec2<u32>(0u, u_input.b)) << (~vec2<u32>(21984u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), !vec2<bool>(any(vec4<bool>(false, arg_1, arg_1, false)), arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-421f - 1000f), _wgslsmith_div_f32(335f, -897f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(484f, -1000f)), _wgslsmith_f_op_f32(-307f + 225f))) - 1239f)), u_input.b, ~arg_0.x, -1566f, func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.b, 14u)], ~(~4294967295u), 0i, 1000f, global1[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_f_op_f32(sign(func_2(Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true), vec2<f32>(-653f, 1207f), -1023f), 4294967295u, arg_2.x, -178f, Struct_1(vec2<u32>(25209u, u_input.b), vec2<bool>(false, arg_1), vec2<f32>(-1000f, -105f), -1051f)), 1000f).d))));
    global1 = array<Struct_1, 14>();
    global0 = true;
    let var_1 = 19374u;
    return Struct_1(var_0.e.a, func_2(var_0, _wgslsmith_f_op_f32(abs(1021f))).b, var_0.a.c, -134f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<i32>(func_1(vec3<bool>(true, true, true), Struct_1(min(vec2<u32>(18031u, u_input.b), vec2<u32>(u_input.b, 53555u)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1940f))), -1090f), 0u, abs(0u)), -47563i, -1i), !(!func_3(func_2(Struct_2(Struct_1(vec2<u32>(1u, u_input.b), vec2<bool>(true, true), vec2<f32>(-888f, -1007f), 1770f), 4294967295u, -2147483647i, 2004f, Struct_1(vec2<u32>(u_input.b, 4294967295u), vec2<bool>(true, true), vec2<f32>(1000f, -676f), -479f)), -1000f))), abs(~vec2<i32>(1i, u_input.a)), -29412i);
    global1 = array<Struct_1, 14>();
    global0 = var_0.b.x || false;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -543f), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(797f)), var_0.d) - func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(11243i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)), true, countOneBits(vec2<i32>(u_input.a, -1i)), firstLeadingBit(u_input.a)).c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.d, var_0.c.x, var_0.d)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, -1875f, 1933f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(327f + 1000f), var_1.x, -1409f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_mult_i32(-19068i, u_input.a), -2147483647i, firstLeadingBit(_wgslsmith_add_i32(u_input.a, -19006i))), u_input.a, vec2<u32>(~70421u, ~68954u), vec4<u32>(17935u, var_0.a.x, _wgslsmith_div_u32(1u, ~var_0.a.x), ~max(~u_input.b, _wgslsmith_mult_u32(4294967295u, 0u))));
}

