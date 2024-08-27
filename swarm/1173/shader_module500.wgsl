struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<f32, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = array<u32, 2>();
    var var_0 = ~vec4<i32>(abs(32964i), arg_3, u_input.a ^ -arg_3, arg_3);
    global1 = array<Struct_2, 18>();
    global2 = array<f32, 15>();
    var var_1 = arg_3;
    return -971f;
}

fn func_3() -> u32 {
    var var_0 = true;
    var var_1 = Struct_3(select(!vec3<bool>(select(false, true, true), true, any(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, (u_input.e.x <= 66021u) | true), vec3<bool>(select(true, true, true), true, true)));
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(min(1u, firstLeadingBit(global0[_wgslsmith_index_u32(~37127u, 2u)])), 4294967295u), ~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e, u_input.e), ~vec2<u32>(u_input.d, 45191u), vec2<u32>(1u, u_input.b.x))));
    var_1 = Struct_3(var_1.a);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(var_2.x)), 15u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~countOneBits(_wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(4294967295u, var_2.x))), vec2<u32>(1u, 4294967295u)), 18u)]);
    return u_input.e.x;
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(vec3<bool>(true, false, true), _wgslsmith_f_op_f32(func_2(vec2<bool>(all(vec2<bool>(true, true)), true), ~global0[_wgslsmith_index_u32(~1u, 2u)], Struct_1(vec3<bool>(true, false, true), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(u_input.d, 15u)], global2[_wgslsmith_index_u32(0u, 15u)])), true), ~_wgslsmith_sub_i32(u_input.a, u_input.c))) == _wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(799f, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 15u)]))))), vec3<f32>(_wgslsmith_f_op_f32(floor(355f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24228u, 2u)], 2u)]), 15u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(644f))))), _wgslsmith_f_op_f32(f32(-1f) * -1078f) >= _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(), ~u_input.e.x), 15u)])));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(31209u, 2u)] | _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.e.x, u_input.d)), 15u)] * 358f), _wgslsmith_f_op_f32(round(-145f)), !any(select(var_0.a.yy, vec2<bool>(true, true), vec2<bool>(true, var_0.b))))));
    global1 = array<Struct_2, 18>();
    var var_2 = Struct_5(global2[_wgslsmith_index_u32(15679u, 15u)]);
    global1 = array<Struct_2, 18>();
    return var_0.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_3 {
    global1 = array<Struct_2, 18>();
    let var_0 = Struct_5(-312f);
    var var_1 = !(!vec4<bool>(true, arg_0.x, false, -u_input.c > arg_1));
    let var_2 = _wgslsmith_add_vec4_i32(-abs(vec4<i32>(u_input.c, -2147483647i, -1i, 33498i) | (vec4<i32>(0i, u_input.c, u_input.a, -23730i) & vec4<i32>(arg_1, -8133i, u_input.c, 24910i))), vec4<i32>(~38281i, _wgslsmith_dot_vec3_i32(vec3<i32>(8192i, -arg_1, u_input.c), -vec3<i32>(arg_1, arg_1, arg_1)), max(_wgslsmith_sub_i32(max(0i, -49979i), _wgslsmith_add_i32(-2147483647i, arg_1)), arg_1), 2147483647i));
    let var_3 = vec2<i32>(u_input.c, (~_wgslsmith_sub_i32(0i, -1i) ^ arg_1) ^ _wgslsmith_mult_i32(arg_1, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_2.zz, var_2.xz), -1i, -15764i)));
    return Struct_3(var_1.yxw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!func_1(~(vec3<i32>(u_input.a, u_input.c, u_input.c) ^ vec3<i32>(u_input.a, 79936i, -22838i))), u_input.a);
    global0 = array<u32, 2>();
    global1 = array<Struct_2, 18>();
    var var_1 = vec4<u32>(~(~(~_wgslsmith_div_u32(u_input.e.x, u_input.e.x))), 0u, ~global0[_wgslsmith_index_u32(~abs(4294967295u), 2u)], ~(~53u));
    var var_2 = _wgslsmith_clamp_i32(-2147483647i, ~u_input.c, firstTrailingBit(23947i));
    var_2 = _wgslsmith_sub_i32(select(28480i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.a, -67673i)), -1i << (var_1.x % 32u)), select(1i != (u_input.c << (9015u % 32u)), !var_0.a.x, false)), abs(u_input.a));
    global1 = array<Struct_2, 18>();
    var_1 = _wgslsmith_mod_vec4_u32(~(~min(vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6011u, 2u)], 2u)], 1u, u_input.d), max(vec4<u32>(60195u, 1u, 4568u, 4401u), vec4<u32>(var_1.x, 8075u, var_1.x, var_1.x)))), ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 1u, 1u, var_1.x), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1u, 64526u, u_input.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 2u)], 15u)], var_0.a.x)) * global2[_wgslsmith_index_u32(1u, 15u)])) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.b.x & var_1.x, 2u)]), 15u)] + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 15u)])))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_1.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4294967295u), vec4<u32>(1u, u_input.d, var_1.x, 0u), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), reverseBits(~vec4<u32>(319u, 4294967295u, 4294967295u, u_input.d))) & 3539u, 15u)], -vec4<i32>(2147483647i, ~(u_input.a >> (var_1.x % 32u)), _wgslsmith_mult_i32(-33890i, 1326i) >> (u_input.e.x % 32u), ~u_input.a), reverseBits(vec4<u32>(u_input.d, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.e.x), 0u), 44587u, _wgslsmith_add_u32(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.e.x), 2u)]))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, reverseBits(~1u), max(var_1.x, ~var_1.x)), ~vec3<u32>(~1u, ~var_1.x, countOneBits(global0[_wgslsmith_index_u32(19854u, 2u)]))));
}

