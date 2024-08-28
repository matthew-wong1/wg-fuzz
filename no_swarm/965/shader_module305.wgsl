struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(-34176i), -1i), Struct_2(Struct_1(74007i), 26445i), Struct_2(Struct_1(-7104i), -37095i), Struct_2(Struct_1(-8656i), 7070i), Struct_2(Struct_1(-36765i), -1i), Struct_2(Struct_1(1i), 13402i), Struct_2(Struct_1(i32(-2147483648)), -48774i), Struct_2(Struct_1(-1102i), -18394i), Struct_2(Struct_1(-2095i), 49023i), Struct_2(Struct_1(-10868i), 34987i), Struct_2(Struct_1(19024i), -28433i), Struct_2(Struct_1(1i), -75756i), Struct_2(Struct_1(0i), -33142i), Struct_2(Struct_1(-71184i), 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<bool> {
    global0 = array<Struct_2, 14>();
    var var_0 = Struct_2(Struct_1(firstTrailingBit(-u_input.b.x)), -18748i);
    var_0 = Struct_2(var_0.a, _wgslsmith_sub_i32(2147483647i, -_wgslsmith_sub_i32(32189i, firstTrailingBit(68218i))));
    let var_1 = Struct_4(var_0.b, vec4<bool>(true | any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.c.x, arg_1.x)) >= 126688u, true, true), 1u << (~(~countOneBits(arg_1.x)) % 32u), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.b, arg_2.a.a, arg_2.a.a), vec4<i32>(17919i, var_0.a.a, 14840i, arg_2.c.a) | vec4<i32>(var_0.a.a, var_0.a.a, -53597i, var_0.b)) ^ _wgslsmith_mod_i32(~2147483647i, abs(u_input.d)), -1i, arg_2.c.a & abs(-var_0.b), var_0.b));
    global0 = array<Struct_2, 14>();
    return !select(!select(var_1.b, var_1.b, true), var_1.b, !var_1.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 14>();
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, u_input.e), u_input.e));
    let var_1 = -vec4<i32>(50745i, 2147483647i, max((var_0.x >> (14020u % 32u)) << (4294967295u % 32u), 5272i), -611i);
    let var_2 = Struct_1(1i);
    global0 = array<Struct_2, 14>();
    return select(select(select(select(!vec4<bool>(true, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(false, arg_1.x, arg_1.x, true), true)), !vec4<bool>(arg_1.x, true, false, false), vec4<bool>(6209u == u_input.a, arg_1.x, !arg_1.x, any(vec3<bool>(false, arg_1.x, arg_1.x)))), func_3(u_input.c, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(50977u, 4294967295u)), 4294967295u, arg_0.x, ~u_input.a), Struct_3(var_2, -106f, Struct_1(var_2.a))), any(arg_1.yy)), func_3(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 1u), arg_0.x, ~arg_0.x, 1u), vec4<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(~u_input.c.zy, select(vec2<u32>(59568u, arg_0.x), arg_0.yw, arg_1.zz)), 14799u, u_input.a), Struct_3(Struct_1(max(1i, u_input.e.x)), _wgslsmith_div_f32(-444f, -530f), var_2)), all(arg_1));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 14>();
    let var_0 = Struct_4(1i, !func_2(~vec4<u32>(u_input.a, u_input.a, 9173u, u_input.a), vec3<bool>(true, true, true)), ~(~0u), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -83803i), _wgslsmith_sub_vec2_i32(u_input.e.zy, u_input.b)), _wgslsmith_clamp_i32(u_input.d, u_input.e.x, ~6550i), ~(max(u_input.b.x, u_input.d) & u_input.e.x), 4908i));
    global0 = array<Struct_2, 14>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_sub_i32(-38220i, u_input.b.x), ~(-26720i), _wgslsmith_sub_i32(13533i, 8656i)), vec4<i32>(_wgslsmith_mod_i32(var_0.d.x, var_0.d.x), 2147483647i, 5952i, var_0.d.x >> (var_0.c % 32u)))), -827f, Struct_1(-11901i));
    var var_2 = ~(~select(_wgslsmith_sub_u32(var_0.c, var_0.c) << (var_0.c % 32u), ~(var_0.c << (var_0.c % 32u)), (var_0.b.x & true) || !var_0.b.x));
    return Struct_3(var_1.c, _wgslsmith_f_op_f32(-var_1.b), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(u_input.b.x, -1i);
    let var_1 = ~25355i;
    var_0 = firstTrailingBit(-((vec2<i32>(u_input.d, -7952i) | u_input.e.xy) << (firstTrailingBit(u_input.c.yw) % vec2<u32>(32u))) ^ vec2<i32>(var_0.x, 1i));
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2.b) - -324f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(518f - var_2.b))));
    global0 = array<Struct_2, 14>();
    let var_4 = -1i;
    var var_5 = u_input.c.ywx;
    let var_6 = Struct_3(func_1().a, var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, ~(-(_wgslsmith_add_vec4_i32(vec4<i32>(var_6.a.a, -13100i, var_6.a.a, u_input.d), vec4<i32>(1i, 43898i, u_input.e.x, var_2.c.a)) >> (vec4<u32>(4294967295u, var_5.x, var_5.x, var_5.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-177f, _wgslsmith_div_f32(func_1().b, -2012f)))), var_5.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.b, var_3)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-343f, var_3)) - vec2<f32>(-1402f, var_6.b))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(937f, -1436f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_6.b, -1000f), vec2<f32>(-177f, var_3), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -887f)))));
}

