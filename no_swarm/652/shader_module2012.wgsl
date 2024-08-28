struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, 50833i), vec2<i32>(-51126i, -10483i), vec2<i32>(0i, -27093i), vec2<i32>(i32(-2147483648), 536i), vec2<i32>(0i, -1i), vec2<i32>(32580i, 40630i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-11880i, 32213i), vec2<i32>(1i, 2147483647i), vec2<i32>(42285i, -29992i), vec2<i32>(-1i, 301i), vec2<i32>(36263i, -1i), vec2<i32>(-40890i, -16941i), vec2<i32>(54402i, -1i), vec2<i32>(0i, -25672i), vec2<i32>(-13269i, -29295i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-25260i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-43251i, -22359i));

var<private> global1: array<vec4<i32>, 10>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_1(true, global2.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_f_op_vec4_f32(ceil(global2.c)))), ~reverseBits(~1i));
    var var_1 = -50333i;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-595f, 170f)), _wgslsmith_f_op_f32(-409f * -1000f), var_0.d >= -7828i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(360f - global2.c.x) - -1717f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-228f)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.c.zzx))), _wgslsmith_f_op_vec3_f32(round(var_0.c.xzx))));
    global0 = array<vec2<i32>, 21>();
    return true | (_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(~u_input.d, 4294967295u)) <= (global2.b.x & ~1u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = ~vec3<u32>(2354u, 15490u, ~29430u);
    global1 = array<vec4<i32>, 10>();
    return func_3(~_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 10u)], vec4<i32>(arg_3, -1i, arg_0.d, -15279i) ^ global1[_wgslsmith_index_u32(u_input.d, 10u)])) || arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec3<bool>(true, true && any(select(vec4<bool>(global2.a, global2.a, true, true), vec4<bool>(global2.a, global2.a, true, global2.a), vec4<bool>(global2.a, global2.a, false, false))), global2.a), select(vec3<bool>((u_input.c.x ^ 10519i) == u_input.c.x, false, global2.a), select(vec3<bool>(false, true, global2.a), !vec3<bool>(true, global2.a, global2.a), select(!vec3<bool>(true, global2.a, false), select(vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, global2.a, global2.a), vec3<bool>(global2.a, global2.a, global2.a)), vec3<bool>(false, global2.a, false))), true), select(select(vec3<bool>(true | global2.a, any(vec2<bool>(false, global2.a)), !global2.a), vec3<bool>(global2.a, func_2(Struct_1(true, global2.b, vec4<f32>(-944f, global2.c.x, global2.c.x, -361f), global2.d), vec2<i32>(-86676i, u_input.c.x), global2.a, 0i), global2.a), select(true, global2.a, false) && !global2.a), vec3<bool>(_wgslsmith_clamp_i32(global2.d, 0i, u_input.c.x) <= -u_input.b, global2.a, all(!vec2<bool>(global2.a, true))), true));
    let var_1 = Struct_3(vec2<u32>(global2.b.x, 1u), ~max(global2.b.x, u_input.a) >> (u_input.d % 32u), Struct_2(global2.a, -1648f, Struct_1(global2.a, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, u_input.a, u_input.a)), global2.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.c)), _wgslsmith_f_op_vec4_f32(-global2.c)), _wgslsmith_mult_i32(~(-42166i), -u_input.b))), Struct_2(var_0.x && (_wgslsmith_div_f32(-1120f, -272f) <= global2.c.x), global2.c.x, Struct_1(global2.a, global2.b, global2.c, abs(global2.d) << (global2.b.x % 32u))));
    let var_2 = global2.c.x;
    let var_3 = var_1.c.c.c.wzx;
    let var_4 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))))));
    return Struct_1(all(vec3<bool>(!global2.a || func_2(var_1.c.c, vec2<i32>(global2.d, -4485i), false, u_input.b), false, !any(vec4<bool>(var_0.x, global2.a, false, false)))), ~global2.b, global2.c, ~var_1.c.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = Struct_1(all(select(select(!vec3<bool>(global2.a, true, global2.a), !vec3<bool>(var_0.a, var_0.a, var_0.a), false == var_0.a), vec3<bool>(1i != u_input.c.x, global2.b.x >= u_input.d, var_0.a == var_0.a), false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, func_1().b.x, 1u), vec3<u32>(func_1().b.x, countOneBits(~global2.b.x), 4294967295u << (~u_input.a % 32u)), ~var_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, var_0.c.x))), var_0.c.x, -1076f, -179f) - global2.c), ~firstLeadingBit(var_0.d));
    let var_1 = Struct_4(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, global2.b.x, 0u), vec4<u32>(global2.b.x, 1u, 64799u, global2.b.x))) ^ ~_wgslsmith_mult_u32(u_input.a, global2.b.x), ~var_0.b.x));
    let var_2 = Struct_4(min(~firstTrailingBit(~43535u), 42287u));
    var_0 = func_1();
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~func_1().b.x, 26286u) ^ _wgslsmith_mod_u32(~(~var_1.a), var_2.a), _wgslsmith_mod_u32(73749u, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-var_0.c.x)) - _wgslsmith_f_op_f32(abs(var_0.c.x)))), u_input.c, var_0.c.x, -max(-vec2<i32>(global2.d, u_input.b), u_input.c.xw >> ((global2.b.xx >> (vec2<u32>(16557u, var_2.a) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_sub_u32(func_1().b.x, var_0.b.x));
}

