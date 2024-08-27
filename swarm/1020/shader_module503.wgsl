struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-29553i, -1i, i32(-2147483648)), vec3<i32>(-28524i, 10115i, -1i), vec3<i32>(2147483647i, 73334i, 2147483647i), vec3<i32>(0i, 20939i, -1i), vec3<i32>(2147483647i, 2147483647i, -8097i), vec3<i32>(21117i, i32(-2147483648), 0i), vec3<i32>(-44126i, i32(-2147483648), 1194i), vec3<i32>(i32(-2147483648), -43954i, -1i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(99907i, -32907i, -59211i), vec3<i32>(1i, 1i, 31500i), vec3<i32>(2147483647i, 1i, -55167i), vec3<i32>(0i, 27093i, -9227i), vec3<i32>(-1i, -12312i, 2147483647i), vec3<i32>(-2206i, -1i, -1i), vec3<i32>(19183i, -11565i, -8606i), vec3<i32>(2147483647i, -1i, -6597i), vec3<i32>(22274i, -1i, 2147483647i), vec3<i32>(0i, 1i, 1i), vec3<i32>(1i, -1i, 24481i), vec3<i32>(-43866i, -10163i, -31721i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-9735i, 0i, -1i), vec3<i32>(2147483647i, i32(-2147483648), -22644i), vec3<i32>(38669i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 1i, 1358i), vec3<i32>(0i, -1336i, i32(-2147483648)));

var<private> global1: Struct_5 = Struct_5(vec4<i32>(-1i, 0i, -1i, -20256i), Struct_4(Struct_2(-308f, -163f, vec2<bool>(true, false), vec3<i32>(1i, 2147483647i, 26387i)), vec3<i32>(-1i, 0i, 2147483647i), Struct_3(Struct_2(1220f, -1000f, vec2<bool>(false, true), vec3<i32>(-1i, 1i, 15345i)), 969f)), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(1426f, 165f), vec4<i32>(28741i, 9484i, 10648i, 581i), 0u, vec4<bool>(false, true, true, false)), 55698u);

var<private> global2: array<u32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global2 = array<u32, 27>();
    let var_0 = !select(global1.b.a.c, global1.b.a.c, global1.c.a.x || (min(global1.b.c.a.d.x, global1.b.b.x) >= 14342i));
    global1 = Struct_5(vec4<i32>(-1i, -36851i, global1.a.x, ~0i), global1.b, global1.c, global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 27u)])), 27u)]), 27u)]);
    let var_1 = Struct_5(vec4<i32>(26345i, global1.b.c.a.d.x >> (0u % 32u), ~(-_wgslsmith_clamp_i32(0i, 0i, -58420i)), i32(-1i) * -(~21150i)), global1.b, Struct_1(vec4<bool>(false, !any(vec4<bool>(true, false, true, true)), all(!vec3<bool>(var_0.x, false, global1.b.c.a.c.x)), false), vec2<f32>(_wgslsmith_f_op_f32(325f + 284f), global1.c.b.x), -(global1.a & (vec4<i32>(global1.c.c.x, global1.b.c.a.d.x, global1.b.a.d.x, global1.b.c.a.d.x) | global1.c.c)), u_input.a, global1.c.a), ~global2[_wgslsmith_index_u32(~(~1u), 27u)]);
    global0 = array<vec3<i32>, 29>();
    return -select((~vec4<i32>(var_1.a.x, global1.c.c.x, 0i, var_1.a.x) ^ ~vec4<i32>(-1i, var_1.b.b.x, var_1.b.c.a.d.x, -5661i)) >> (~(~vec4<u32>(80487u, global2[_wgslsmith_index_u32(global1.d, 27u)], global1.c.d, u_input.a)) % vec4<u32>(32u)), -var_1.a, !(!global1.c.e));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_5 {
    let var_0 = -global1.a.ww;
    let var_1 = abs(vec4<i32>(23076i, abs(~select(6052i, -32260i, global1.c.e.x)), global1.c.c.x, ~2147483647i));
    return Struct_5(abs(func_3(4294967295u)) ^ _wgslsmith_add_vec4_i32(global1.a, vec4<i32>(_wgslsmith_div_i32(-2147483647i, var_1.x), _wgslsmith_div_i32(-11789i, global1.c.c.x), -6943i, var_1.x)), arg_3, global1.c, ~(~u_input.a));
}

fn func_1() -> vec3<u32> {
    let var_0 = !((true & global1.b.a.c.x) & any(vec3<bool>(-1000f > global1.c.b.x, !global1.c.e.x, true)));
    var var_1 = firstLeadingBit(~(~_wgslsmith_mod_u32(4294967295u, u_input.a)) | global2[_wgslsmith_index_u32(1u, 27u)]);
    let var_2 = func_2(0u, global1.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-132f, -714f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(858f)) + _wgslsmith_f_op_f32(min(-1000f, 169f)))), -1116f, _wgslsmith_f_op_f32(exp2(1f))), global1.b);
    var_1 = ~global2[_wgslsmith_index_u32(~0u, 27u)];
    var var_3 = _wgslsmith_div_u32(u_input.a, 38174u);
    return vec3<u32>(~var_2.c.d ^ 4294967295u, global1.d, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!global1.c.a.xw);
    global2 = array<u32, 27>();
    let var_1 = func_1();
    let var_2 = vec3<i32>(global1.a.x, -global1.a.x, global1.c.c.x << (u_input.a % 32u));
    var var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(select(13933u, global1.d, true), ~global2[_wgslsmith_index_u32(1u, 27u)], ~32750u, ~12810u) | select(vec4<u32>(global2[_wgslsmith_index_u32(global1.c.d, 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 27u)], 27u)], 64348u, 0u), ~vec4<u32>(28283u, 41655u, 1u, 10641u), global1.c.a), min(vec4<u32>(var_1.x, 1u, u_input.a, 1u) << (vec4<u32>(u_input.a, 61194u, global1.c.d, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_1.x, 27u)], u_input.a, 4294967295u, var_1.x), vec4<u32>(global1.d, 70599u, 14829u, 26556u))) | firstLeadingBit(firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], u_input.a, global1.c.d, global1.c.d))));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.b.x, global1.b.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.b.x))), _wgslsmith_f_op_f32(abs(-1529f))) - vec4<f32>(1052f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.c.b.x)), 1f))), _wgslsmith_f_op_f32(1343f - _wgslsmith_f_op_f32(abs(global1.b.a.b))), global1.b.c.b));
    let var_5 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.b.x))))), -1856f, func_2(34386u, -1i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -825f), 1000f, var_4.x), global1.b).b.a.c, _wgslsmith_mod_vec3_i32(-var_2, -var_2));
    var var_6 = -_wgslsmith_div_i32(global1.c.c.x, ~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_3.wxz, vec3<u32>(global1.c.d, ~_wgslsmith_clamp_u32(u_input.a, 19804u, global1.d), _wgslsmith_dot_vec3_u32(~var_1, ~var_1))), _wgslsmith_f_op_vec4_f32(exp2(var_4)), ~(~u_input.a), var_2.xx);
}

