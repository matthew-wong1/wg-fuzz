struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 8>;

var<private> global2: array<vec2<i32>, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<i32> {
    return vec4<i32>(4762i, _wgslsmith_div_i32(~(~abs(-17660i)), reverseBits(_wgslsmith_mult_i32(u_input.e.x, u_input.d))), -3613i, _wgslsmith_div_i32(0i, 25108i));
}

fn func_2() -> vec4<bool> {
    let var_0 = -2685f;
    global0 = vec4<i32>(global0.x, global0.x, _wgslsmith_dot_vec4_i32(u_input.c, func_3()), 32804i);
    global2 = array<vec2<i32>, 30>();
    let var_1 = Struct_2(max(~(~(~vec3<u32>(61046u, u_input.b, u_input.b))), ~_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.a, 87722u, u_input.b), vec3<u32>(1u, 29319u, u_input.b)), ~vec3<u32>(u_input.a, u_input.b, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -352f, 771f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, var_0, var_0)))))), u_input.c.x, -42384i, max(14328i, firstTrailingBit(_wgslsmith_clamp_i32(global0.x, global0.x, -2147483647i))), reverseBits(~select(4294967295u, u_input.a, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(1055f, -816f))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f - -1731f) + _wgslsmith_f_op_f32(ceil(606f))))));
    var var_2 = Struct_1(vec3<f32>(915f, var_1.b.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(800f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0)), -116f)))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(6261u, 30u)], vec2<i32>(-2147483647i, 7677i))) ^ 24059i, _wgslsmith_mod_i32(45653i, ~(-25617i))), min(25873i, var_1.b.c) >> (var_1.a.x % 32u), -(~(_wgslsmith_mult_i32(u_input.e.x, global0.x) >> (_wgslsmith_div_u32(var_1.b.e, var_1.a.x) % 32u))), reverseBits(var_1.b.e));
    return !vec4<bool>(!(false || (global1[_wgslsmith_index_u32(1u, 8u)] & global1[_wgslsmith_index_u32(51657u, 8u)])), global1[_wgslsmith_index_u32(~u_input.b, 8u)], global1[_wgslsmith_index_u32(~0u, 8u)], all(select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_1.b.e, 8u)]), global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.b.e, 8u)]), all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 8u)], true, global1[_wgslsmith_index_u32(u_input.a, 8u)])))));
}

fn func_1() -> Struct_4 {
    var var_0 = !(!(!func_2()));
    global2 = array<vec2<i32>, 30>();
    var var_1 = var_0.zy;
    return Struct_4(!all(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a, 8u)], true, true)), _wgslsmith_mult_i32(0i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 30>();
    let var_0 = vec3<bool>(!(!(global1[_wgslsmith_index_u32(~u_input.b, 8u)] && true)), !(!global1[_wgslsmith_index_u32(0u, 8u)]), all(!vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.b, 8u)], !global1[_wgslsmith_index_u32(4294967295u, 8u)], all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 8u)])))));
    global2 = array<vec2<i32>, 30>();
    var var_1 = func_1();
    var var_2 = !(!((abs(25007i) ^ ~global0.x) < (1i | _wgslsmith_dot_vec3_i32(global0.xzy, global0.xwy))));
    let var_3 = func_2().yy;
    let var_4 = -(select(min(-vec4<i32>(45764i, -53901i, 2147483647i, global0.x), -vec4<i32>(2147483647i, -564i, -1i, u_input.c.x)), vec4<i32>(-var_1.b, -52894i, max(u_input.d, var_1.b), var_1.b << (u_input.b % 32u)), true) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -2147483647i), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-19880i, -9520i, global0.x, u_input.d), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1650f, 1102f, -1534f, -438f))), vec4<f32>(-544f, 292f, -2192f, -585f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-470f, -1000f, 789f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1304f, -1810f, -141f))), var_1.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(879f, -491f, 261f), vec3<f32>(911f, -1775f, 1452f), vec3<bool>(false, false, true)))))), func_1().b, var_4.x, vec4<u32>(0u, ~45428u, abs(u_input.b), u_input.a) & vec4<u32>(countOneBits(_wgslsmith_div_u32(u_input.a, 44815u)), u_input.b, 33530u, ~(~u_input.b)));
}

