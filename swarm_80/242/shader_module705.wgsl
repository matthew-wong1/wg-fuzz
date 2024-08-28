struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_5, arg_3: u32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(-1i, arg_0) << (~(~(~arg_2.a.b.b.x)) % 32u), vec3<u32>(arg_3, arg_2.c.x, arg_2.a.b.b.x), -1320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b.d)) + _wgslsmith_f_op_f32(-159f - 1000f)) + arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_2.d.b.d)))));
    global0 = array<bool, 5>();
    var var_1 = -518f;
    var_1 = 1f;
    var var_2 = vec2<bool>(global0[_wgslsmith_index_u32(~1689u, 5u)], false);
    return _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_2.b.a, 2147483647i, 2147483647i), vec4<i32>(29657i, 1i, arg_0, arg_2.a.b.a)), -vec4<i32>(-13770i, var_0.a, var_0.a, var_0.a)), -arg_2.d.c.x, arg_0, arg_2.b.a)), -_wgslsmith_sub_vec4_i32(-vec4<i32>(724i, arg_2.a.c.a.x, var_0.a, -2147483647i), vec4<i32>(~(-3041i), arg_0, countOneBits(-8731i), arg_2.d.d.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    global0 = array<bool, 5>();
    let var_0 = 4294967295u;
    let var_1 = Struct_3(vec4<u32>(33001u, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0, _wgslsmith_dot_vec2_u32(u_input.b, u_input.c)), _wgslsmith_sub_u32(0u, u_input.c.x)), select(abs(u_input.a.x), _wgslsmith_mult_u32(var_0, var_0), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]) >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 1u), firstTrailingBit(32913u)) % 32u), u_input.a.x | select(var_0, var_0, !global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), Struct_1(~53633i, ~min(vec3<u32>(60920u, u_input.c.x, var_0), select(u_input.a.wzw, vec3<u32>(var_0, 1u, 4294967295u), false)), -1142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-693f, 1396f)))), arg_0.zxz, Struct_1(2147483647i, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1106f + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1306f * 319f) + _wgslsmith_f_op_f32(min(499f, -402f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1754f))))));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(firstTrailingBit(func_3(12928i, -539f, Struct_5(Struct_4(vec4<f32>(1025f, 567f, -625f, -718f), Struct_1(2147483647i, u_input.a.yzx, -921f, 460f), Struct_2(vec3<i32>(-26049i, 4861i, -1700i), vec2<f32>(-147f, -1961f))), Struct_1(1i, u_input.a.wzw, -629f, -246f), u_input.a, Struct_3(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), Struct_1(29873i, vec3<u32>(1u, 112142u, u_input.b.x), -273f, -721f), vec3<i32>(19639i, -1i, 0i), Struct_1(1i, vec3<u32>(88912u, 1u, 0u), -1987f, 1987f))), abs(u_input.c.x))), 13821i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f - -268f)) + _wgslsmith_f_op_f32(-638f - -436f))), (global0[_wgslsmith_index_u32(u_input.b.x, 5u)] && true) | false));
    let var_1 = 2147483647i;
    var_0 = _wgslsmith_f_op_f32(trunc(701f));
    var var_2 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_1, -6527i), -vec2<i32>(var_1, var_1)), vec2<i32>(var_1, -18034i)), ~(-1i), 19717i), vec2<f32>(-1157f, -369f));
    var var_3 = vec2<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35452u, 1u, 47794u), u_input.a.xzx) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u), 5u)])), true);
    return abs(-(i32(-1i) * -1i) | (var_2.a.x | ~var_1));
}

fn func_1() -> Struct_4 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_0 = vec4<i32>(12002i, _wgslsmith_mult_i32(1i, func_2()), i32(-1i) * -2147483647i, ~(-(~(-47474i) << (u_input.c.x % 32u))));
    var_0 = vec4<i32>(var_0.x, 57135i << (u_input.c.x % 32u), var_0.x, -(~(var_0.x >> (64964u % 32u)) & select(var_0.x, reverseBits(var_0.x), true)));
    var_0 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), _wgslsmith_sub_vec3_i32(var_0.xwx, vec3<i32>(21906i, var_0.x, -38757i))) << (24209u % 32u), min(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, var_0.x), ~var_0.x), var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 57965i, var_0.x, var_0.x) >> ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-25672i, var_0.x, -1i, var_0.x))), 1i);
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 1692f, 522f, -102f)) * vec4<f32>(_wgslsmith_f_op_f32(129f + 553f), _wgslsmith_div_f32(-939f, 1276f), 771f, _wgslsmith_f_op_f32(388f - 764f)))), Struct_1(2147483647i, u_input.a.xzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-394f)))), _wgslsmith_f_op_f32(func_4(vec4<i32>(11111i, var_0.x, 0i, 2147483647i) & abs(vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x)), 1i | (40606i >> (u_input.a.x % 32u))))), Struct_2(vec3<i32>(5597i, var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, 301f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    let var_0 = func_1();
    global0 = array<bool, 5>();
    var var_1 = vec3<u32>(var_0.b.b.x, ~_wgslsmith_clamp_u32(0u, ~func_1().b.b.x, ~abs(1u)), u_input.a.x);
    let var_2 = func_1().b;
    var var_3 = var_0.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - var_2.d) + _wgslsmith_f_op_f32(var_0.a.x - var_2.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) * _wgslsmith_f_op_f32(select(1000f, var_2.d, true)))), _wgslsmith_f_op_f32(func_4(abs(~vec4<i32>(4512i, -30226i, var_0.b.a, var_0.c.a.x)), max(1i, var_2.a ^ var_0.c.a.x))), !all(!vec2<bool>(false, global0[_wgslsmith_index_u32(93318u, 5u)])))), u_input.a, 1u);
}

