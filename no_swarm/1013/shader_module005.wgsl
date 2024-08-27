struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-25619i, 0i), vec2<i32>(-14417i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(55562i, -23107i), vec2<i32>(-14837i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-17389i, 1i), vec2<i32>(28458i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(-45336i, 3275i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(47596i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(-10382i, 24804i), vec2<i32>(31025i, -82890i), vec2<i32>(1i, 9511i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(u_input.d, reverseBits(~vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x), -2147483647i)));
    let var_1 = Struct_2(u_input.b.yyz, Struct_1(u_input.d.x, (min(vec4<u32>(u_input.c, u_input.a, u_input.a, 4294967295u), u_input.b) << (~u_input.b % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f * 1130f) - -1053f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1303f, 613f)) - 966f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1064f, -193f) + vec2<f32>(561f, -913f)))))), all(vec2<bool>(true && arg_0, false)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(103f, -120f, -325f) - vec3<f32>(var_1.d.x, -394f, var_1.d.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, var_1.d.x, -694f), vec3<f32>(-1653f, var_1.d.x, -1132f)))))) * vec3<f32>(-861f, -214f, var_1.d.x));
}

fn func_3() -> u32 {
    global0 = array<Struct_4, 30>();
    var var_0 = _wgslsmith_mult_i32(select(u_input.d.x, 1i, true), i32(-1i) * -16272i);
    var_0 = _wgslsmith_mult_i32(-u_input.d.x, ~41697i | -(u_input.d.x & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d)));
    var var_1 = Struct_1(~(~_wgslsmith_sub_i32(~u_input.d.x, ~u_input.d.x)), ~u_input.b);
    let var_2 = vec2<u32>(4294967295u, var_1.b.x);
    return 14562u;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(!select(true, true, true)));
    var var_1 = Struct_5(var_0.x, var_0.x, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) & ~vec2<u32>(9797u, u_input.a), u_input.b.xz), Struct_4(true, Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -1i), u_input.d)), u_input.b), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.wyz, u_input.b.wzx), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), _wgslsmith_sub_i32(max(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), ~0i), firstLeadingBit(-21078i)), Struct_3(7828u)), u_input.d.x ^ (_wgslsmith_dot_vec3_i32(~u_input.d, select(u_input.d, u_input.d, true)) << (_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b) % 32u)));
    let var_2 = Struct_4(func_3() <= var_1.c.x, var_1.d.b, vec3<u32>(u_input.a, 1u, ~(u_input.b.x & u_input.c) & ~(~14455u)), ~(~(-2147483647i)), Struct_3(54289u));
    var var_3 = true;
    var_3 = var_1.d.a;
    return Struct_3(var_2.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true, Struct_1(_wgslsmith_mult_i32(-39794i, ~16503i), ~((vec4<u32>(u_input.c, 16154u, 1u, 4294967295u) | vec4<u32>(0u, 0u, u_input.c, 0u)) >> (u_input.b % vec4<u32>(32u)))), u_input.b.wxy, abs(-1i | _wgslsmith_dot_vec3_i32(vec3<i32>(10399i, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, 1i)))), func_1());
    var var_1 = Struct_3(max(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 14957u, u_input.b.x, u_input.a)) ^ ~27368u, 15863u));
    let var_2 = true;
    global0 = array<Struct_4, 30>();
    global1 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.xz, firstLeadingBit(~_wgslsmith_div_vec2_u32(var_0.c.yy, vec2<u32>(14607u, 9464u))), true), 0i & -u_input.d.x, u_input.b.wy, vec2<f32>(320f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_vec3_f32(func_2(!var_0.a)).x)));
}

