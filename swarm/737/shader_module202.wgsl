struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> u32 {
    global0 = array<vec3<f32>, 8>();
    let var_0 = arg_1.c.d.x;
    var var_1 = Struct_1(vec4<u32>(1u, ~21579u, ~arg_1.a, 92271u), arg_1.c.b, min(_wgslsmith_sub_vec3_u32(arg_0.c.c, ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec3<u32>(~arg_0.a, ~arg_1.a, ~arg_0.a)) >> (~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1.a, 1u), arg_0.c.c, arg_0.c.a.xyz), arg_1.c.c, arg_0.c.c & arg_0.c.c) % vec3<u32>(32u)), -(~vec3<i32>(var_0, var_0, _wgslsmith_mod_i32(9960i, arg_0.c.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.e), _wgslsmith_div_f32(405f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(121f)), _wgslsmith_f_op_f32(-arg_1.c.e)))));
    global0 = array<vec3<f32>, 8>();
    var_1 = Struct_1(arg_1.c.a, vec2<bool>(true, all(vec2<bool>(arg_0.c.b.x, arg_1.c.b.x)) & !arg_0.c.b.x), _wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.c.a.yyz, arg_0.c.a.yzy, vec3<u32>(arg_1.a, arg_1.a, 4294967295u)), _wgslsmith_add_vec3_u32(arg_0.c.a.xxw, vec3<u32>(34720u, 0u, 19873u)))), arg_0.c.a.xyw), -vec3<i32>(select(2147483647i, 2147483647i >> (u_input.a.x % 32u), arg_0.c.b.x), countOneBits(~4385i), -arg_0.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - 1602f)));
    return _wgslsmith_mod_u32(~(~var_1.c.x), u_input.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1989f)) - 483f))))));
    return ~vec2<u32>(~93147u, func_3(Struct_3(1u, true, Struct_1(arg_1, vec2<bool>(var_0, true), arg_1.wxz, vec3<i32>(-37389i, 8012i, 4074i), -405f)), Struct_3(~4294967295u, false, Struct_1(vec4<u32>(69863u, 1u, 111337u, 1u), vec2<bool>(var_0, false), arg_1.xxx, vec3<i32>(2147483647i, -21907i, 2147483647i), -1034f)), true));
}

fn func_1() -> vec4<u32> {
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    let var_0 = ~func_2(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(1u, 1u)), u_input.a.x), ~(~vec4<u32>(0u, u_input.a.x, 31332u, 1u)));
    return firstTrailingBit(_wgslsmith_sub_vec4_u32(~(select(vec4<u32>(91118u, 4388u, 16685u, 13920u), vec4<u32>(var_0.x, 115948u, 0u, 27659u), false) ^ min(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 19591u), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 1u))), min(~vec4<u32>(52789u, u_input.a.x, u_input.a.x, 17862u) << (select(vec4<u32>(2850u, 0u, u_input.a.x, 73578u), vec4<u32>(1u, 7816u, 0u, u_input.a.x), false) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, var_0.x)), ~vec4<u32>(var_0.x, 14973u, u_input.a.x, 28610u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_sub_u32(~func_3(Struct_3(min(4294967295u, u_input.a.x), true, Struct_1(var_0, vec2<bool>(true, true), vec3<u32>(66631u, 0u, u_input.a.x), vec3<i32>(0i, 2147483647i, 2147483647i), 292f)), Struct_3(var_0.x, false, Struct_1(var_0, vec2<bool>(true, false), var_0.zww, vec3<i32>(-19811i, -61157i, -2147483647i), 466f)), false), ~var_0.x);
    let var_2 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_1, var_1, func_2(vec2<u32>(var_0.x, u_input.a.x), firstTrailingBit(var_0)).x), vec4<u32>(59621u, ~(~1u), var_1, ~_wgslsmith_mult_u32(u_input.a.x, var_1))), select(select(vec2<bool>(false, all(vec4<bool>(true, true, false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(true, true, false)), all(vec2<bool>(false, true)))), reverseBits(~_wgslsmith_mult_vec3_u32(var_0.zyx, var_0.wwy)) | abs(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) & countOneBits(var_0.wzx)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), vec3<i32>(firstTrailingBit(15040i), -12132i, 1i)), ~reverseBits(abs(vec3<i32>(-5641i, -2147483647i, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-631f, _wgslsmith_f_op_f32(-1232f * _wgslsmith_f_op_f32(ceil(915f))))));
    global0 = array<vec3<f32>, 8>();
    var var_3 = var_2;
    global0 = array<vec3<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, firstLeadingBit(~_wgslsmith_mod_u32(~18866u, 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(1318u, 8u)], vec3<f32>(1452f, -1000f, -1033f))), global0[_wgslsmith_index_u32(u_input.a.x, 8u)]) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_2.c.x, 8u)] + global0[_wgslsmith_index_u32(8877u, 8u)])))), _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(18345u, 8u)])), !select(select(vec3<bool>(false, false, var_3.b.x), vec3<bool>(true, true, true), true), vec3<bool>(false, var_3.b.x, var_2.b.x), true))), ~(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_3.d.x, -34955i, 16972i, var_3.d.x), firstLeadingBit(vec4<i32>(21191i, -51273i, var_3.d.x, 1i)), vec4<i32>(-2147483647i, var_3.d.x, var_2.d.x, var_3.d.x))), _wgslsmith_mod_u32(~var_0.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_0.x), vec2<u32>(1u, var_2.a.x)), 3051u)));
}

