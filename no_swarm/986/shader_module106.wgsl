struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, false, false, true, true, false, false, false, false, false, true, true, false, false, true, true, false, true, true);

var<private> global1: Struct_1 = Struct_1(-717f, -58025i, vec3<i32>(2147483647i, -14677i, 9954i), vec3<i32>(-12805i, 0i, -16023i));

var<private> global2: i32;

var<private> global3: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = min(abs(vec2<i32>(global1.d.x, firstTrailingBit(u_input.a | 50149i))), global1.c.xz);
    var var_1 = 26770u;
    global3 = select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false, true, false), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(1u, 24u)]), global3.x), true), vec4<bool>(true, false, !global3.x, true), global3.x || true), vec4<bool>((global0[_wgslsmith_index_u32(0u, 24u)] && true) || (global3.x & true), global3.x, arg_0, true), vec4<bool>((false || global0[_wgslsmith_index_u32(4294967295u, 24u)]) | true, global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 24u)], true, global0[_wgslsmith_index_u32(0u, 24u)])), select(!select(!vec4<bool>(false, true, global3.x, global0[_wgslsmith_index_u32(u_input.c, 24u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], false, arg_0), vec4<bool>(false, arg_0, global3.x, global0[_wgslsmith_index_u32(21491u, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 24u)], true, arg_0, arg_0)), select(vec4<bool>(false, true, arg_0, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 24u)], false), global0[_wgslsmith_index_u32(2875u, 24u)])), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(8510u, 24u)], arg_0, global3.x), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], false, global3.x, global0[_wgslsmith_index_u32(13294u, 24u)]), select(global3.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), global3.x), vec4<bool>(!(true && global3.x), true, !global3.x, any(!(!vec4<bool>(true, global3.x, false, true)))));
    var var_2 = _wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1.a, global1.a, !(!arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(global1.a * 723f))), _wgslsmith_f_op_f32(-global1.a))))));
    let var_3 = u_input.b.x;
    return global3.wxz;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_2(func_3(((u_input.d.x <= 30174u) || true) | select(true, u_input.d.x >= 0u, true)), select(_wgslsmith_sub_vec4_u32(arg_0.c, _wgslsmith_mult_vec4_u32(~vec4<u32>(9653u, arg_0.c.x, arg_0.b.x, u_input.b.x), _wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(arg_0.c.x, 1u, arg_0.c.x, u_input.c)))), arg_0.b, !select(select(vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, true, arg_0.a.x, true), false), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], true, false, global3.x), true))), vec4<u32>(_wgslsmith_mult_u32(u_input.c, 72771u << (u_input.d.x % 32u)), reverseBits(1u), firstTrailingBit(~1u), u_input.c) << (arg_0.b % vec4<u32>(32u)), !(!(true | any(vec4<bool>(arg_0.a.x, arg_0.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_div_f32(arg_1.x, arg_1.x)))) * global1.a));
    let var_1 = arg_1.wwz;
    global3 = !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 24u)], true, true, func_3(false).x), !vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.c, 24u)], true, any(vec4<bool>(arg_0.a.x, true, false, global0[_wgslsmith_index_u32(70282u, 24u)]))), vec4<bool>(true, global3.x || false, any(var_0.a) | global3.x, all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 24u)], false, false, false))));
    return countOneBits(arg_0.c.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = !vec4<bool>(2147483647i < _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, global1.c.x), vec3<i32>(-1i, -1i, global1.b)), false, true, all(vec4<bool>(arg_0, false, global3.x, global0[_wgslsmith_index_u32(func_2(Struct_2(global3.yzw, vec4<u32>(u_input.b.x, 0u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.d.x), global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global1.a), vec4<f32>(global1.a, 1060f, 583f, -708f), Struct_1(global1.a, global1.c.x, global1.d, vec3<i32>(global1.c.x, -1i, -7091i)), vec4<i32>(global1.d.x, global1.b, 2147483647i, 68469i)), 24u)])));
    global3 = var_0;
    global2 = _wgslsmith_clamp_i32(u_input.a, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, 2147483647i, u_input.a), vec3<i32>(1i, 0i, _wgslsmith_add_i32(global1.c.x, ~(-1i)))));
    let var_1 = global1.a;
    global2 = _wgslsmith_mod_i32(1i, ~(-26132i));
    return Struct_1(-1339f, ~_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, -9988i, abs(-13938i)), global1.d), abs(firstTrailingBit(vec3<i32>(global1.b, 21388i, 0i)) & vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 20314i), global1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-4812i, global1.b, -38698i, 7462i), vec4<i32>(-1i, global1.d.x, u_input.a, global1.b)), _wgslsmith_mult_i32(global1.d.x, global1.b))), vec3<i32>(29917i ^ _wgslsmith_mult_i32(global1.b, -9073i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-64621i, global1.b, u_input.a), -global1.c), -17308i) << ((vec3<u32>(~59098u, u_input.d.x, u_input.d.x) & _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.c, 64274u, u_input.b.x))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(true);
    let var_0 = ~global1.c.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 337f, global1.a))))))));
    var var_2 = Struct_2(select(select(global3.zyz, global3.wyx, vec3<bool>(any(vec2<bool>(true, global3.x)), true, true)), global3.ywy, !any(vec4<bool>(false, global3.x, global3.x, true))), vec4<u32>(1u, ~abs(2310u), u_input.d.x, ~reverseBits(58701u)) ^ max(vec4<u32>(min(u_input.b.x, 0u), u_input.d.x, u_input.d.x, ~u_input.b.x), min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 28046u, 1u), vec4<u32>(u_input.d.x, 1u, u_input.b.x, 4462u)), ~vec4<u32>(1u, u_input.b.x, u_input.d.x, 1u))), vec4<u32>(u_input.b.x, countOneBits(select(_wgslsmith_div_u32(38857u, u_input.d.x), ~4294967295u, !global0[_wgslsmith_index_u32(u_input.c, 24u)])), firstTrailingBit(_wgslsmith_sub_u32(~u_input.b.x, 1u)), u_input.c), true, global1.a);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.a, _wgslsmith_f_op_vec3_f32(round(var_1.a))))));
    global2 = u_input.a;
    global2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

