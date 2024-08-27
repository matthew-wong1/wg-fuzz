struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    global0 = u_input.b.x;
    global0 = abs(_wgslsmith_div_u32(~(arg_0.x >> (1u % 32u)), arg_0.x));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, arg_3))) * arg_3) <= arg_3, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3))), _wgslsmith_f_op_f32(sign(636f))));
    global0 = _wgslsmith_mod_u32(4294967295u, 9612u);
    let var_1 = vec2<i32>(reverseBits(~(-2147483647i)), -(~u_input.a.x));
    return u_input.e;
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec3<u32>(0u, _wgslsmith_clamp_u32(~func_3(u_input.c, abs(u_input.d.x), _wgslsmith_mod_vec2_i32(u_input.d.yz, vec2<i32>(-2147483647i, -2147483647i)), arg_0.b.x), _wgslsmith_clamp_u32(u_input.e ^ 61740u, arg_0.a, 1u) ^ u_input.c.x, ~_wgslsmith_div_u32(arg_0.a & arg_0.a, 15547u)), ~_wgslsmith_div_u32(77282u, ~_wgslsmith_mod_u32(15605u, arg_1.x)));
    global0 = ~func_3(vec4<u32>(_wgslsmith_clamp_u32(9022u, u_input.c.x, 15854u), ~arg_0.a & arg_1.x, 4294967295u, 1u), _wgslsmith_add_i32(u_input.d.x, 17248i), -abs(vec2<i32>(-1636i, u_input.a.x)), 1190f);
    global0 = ~1u;
    let var_1 = Struct_3(1348f, arg_0.c);
    global0 = ~18619u;
    return countOneBits(_wgslsmith_sub_u32(firstTrailingBit(arg_1.x), _wgslsmith_add_u32(arg_0.a, ~1u)) | u_input.b.x);
}

fn func_1() -> vec4<f32> {
    global0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.c.x | _wgslsmith_add_u32(u_input.e, u_input.c.x), 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(15000u, u_input.c.x, 1u), ~vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x)) << (u_input.c.x % 32u)), ~select(0u, u_input.b.x, true) << (_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.e, u_input.b.x), func_2(Struct_5(4294967295u, vec2<f32>(253f, 1113f), Struct_2(true, Struct_1(729f, -1539f)), Struct_4(Struct_1(-219f, -671f))), u_input.c)) % 32u));
    var var_0 = -min(~max(countOneBits(vec4<i32>(0i, u_input.a.x, u_input.d.x, -1i)), vec4<i32>(40849i, 0i, u_input.d.x, -50594i) & vec4<i32>(-36345i, u_input.a.x, u_input.a.x, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-2147483647i), 62308i >> (u_input.b.x % 32u), ~u_input.d.x, ~u_input.a.x), -vec4<i32>(u_input.a.x, u_input.d.x, 1i, 38092i)));
    global0 = ~(~u_input.b.x);
    let var_1 = Struct_5(select(firstTrailingBit(1u), 45707u, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(1000f, -969f)))))), Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1570f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f * 1103f)))), Struct_4(Struct_1(_wgslsmith_f_op_f32(-267f + -610f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(207f + 1249f))))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b.a, var_1.c.b.a)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_2.x, 277f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.b.a, -1508f, var_2.x, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(738f, var_1.b.x, var_1.b.x, var_2.x) - vec4<f32>(-411f, var_2.x, var_2.x, 259f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-250f, 1465f, var_1.d.a.a, var_2.x) * vec4<f32>(-105f, var_2.x, -464f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1634f, var_1.b.x, -2044f, var_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(363f * -1000f), -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1754f, -977f)), _wgslsmith_f_op_f32(min(374f, 336f))))));
    var var_1 = ~vec3<u32>(0u, 1u, u_input.b.x) >> (vec3<u32>(0u, ~(~4294967295u ^ (40442u ^ u_input.b.x)), abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) & (u_input.b.x >> (u_input.b.x % 32u)))) % vec3<u32>(32u));
    let var_2 = vec3<bool>(false, _wgslsmith_f_op_f32(sign(916f)) == -231f, false);
    var_1 = _wgslsmith_div_vec3_u32(u_input.b, min(min(vec3<u32>(var_1.x, u_input.c.x, 39005u), select(u_input.c.zyy, u_input.c.yxy, true)), reverseBits(~vec3<u32>(1u, u_input.c.x, u_input.b.x))) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c >> (vec4<u32>(0u, 14712u, var_1.x, 17191u) % vec4<u32>(32u)), vec4<u32>(1u, u_input.c.x, u_input.c.x, var_1.x) >> (vec4<u32>(u_input.e, var_1.x, u_input.b.x, var_1.x) % vec4<u32>(32u))), _wgslsmith_add_u32(var_1.x, 42043u) << (select(0u, u_input.c.x, var_2.x) % 32u), ~(u_input.b.x | var_1.x)));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1846f, 304f, var_0.a, var_0.b), vec4<f32>(var_0.b, var_0.a, -710f, 568f)), vec4<f32>(var_0.a, -210f, var_0.b, var_0.b), var_3 | false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(func_1()))))), u_input.c.wyz, vec4<i32>(u_input.a.x, 1i, u_input.d.x & -68815i, _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.d.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.d.x, -1i))), ~abs(vec4<i32>(18293i, -13154i, -8379i, u_input.d.x)))), 38790u);
}

