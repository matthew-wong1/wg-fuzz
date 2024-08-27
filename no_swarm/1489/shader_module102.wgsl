struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 22>;

var<private> global2: array<u32, 12> = array<u32, 12>(0u, 1u, 4294967295u, 45747u, 0u, 0u, 7606u, 36698u, 0u, 51126u, 1u, 13381u);

var<private> global3: array<Struct_3, 8>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<u32>(21821u, 4608u, 22871u, 4294967295u), vec3<f32>(-951f, -1000f, -861f), i32(-2147483648), vec4<i32>(-19851i, 24202i, -1i, -22648i)), 40152i, vec3<i32>(-66032i, -1i, 26805i), false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_2(global0.d.a, -_wgslsmith_mod_i32(max(1i, _wgslsmith_dot_vec2_i32(global0.b.yx, global0.c)), u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, -1i, global0.b.x), vec3<i32>(u_input.b.x, global4.a.c, global0.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(22192i, u_input.a, -2147483647i), global4.c)), ~(i32(-1i) * -68638i)), global4.c), arg_0.x < -1904f);
    var var_1 = global3[_wgslsmith_index_u32(var_0.a.a.x, 8u)];
    var_1 = global3[_wgslsmith_index_u32(min(var_0.a.a.x, ~(global4.a.a.x ^ 52407u)), 8u)];
    let var_2 = Struct_3(abs(global4.a.d.x), _wgslsmith_div_vec3_i32(-vec3<i32>(-12374i, _wgslsmith_div_i32(20974i, -1i), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.d.a.a.x, 12u)], 22u)], global1[_wgslsmith_index_u32(36281u, 22u)])), _wgslsmith_add_vec3_i32(vec3<i32>(14295i, -2147483647i, 1i) >> (global4.a.a.yzx % vec3<u32>(32u)), ~vec3<i32>(var_1.b.x, var_0.a.d.x, global1[_wgslsmith_index_u32(1u, 22u)]))), _wgslsmith_dot_vec2_i32(~global0.c, vec2<i32>(46866i, 11746i & ~u_input.b.x)));
    let var_3 = _wgslsmith_mod_vec2_u32(var_0.a.a.zz, vec2<u32>(countOneBits(_wgslsmith_mod_u32(0u, global4.a.a.x)) & _wgslsmith_mult_u32(14557u, var_0.a.a.x ^ global0.d.a.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.a.x, 27336u), ~global4.a.a.zy)));
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = vec2<bool>(global0.d.d, global4.d);
    global3 = array<Struct_3, 8>();
    let var_1 = !vec2<bool>(any(vec4<bool>(false, global0.a.x, func_3(vec2<f32>(-572f, global4.a.b.x)), true)), true);
    global2 = array<u32, 12>();
    global1 = array<i32, 22>();
    return Struct_1(vec4<u32>(20055u, ~1u, global2[_wgslsmith_index_u32(abs(global0.d.a.a.x), 12u)], 1u) ^ vec4<u32>(global0.d.a.a.x, _wgslsmith_div_u32(countOneBits(global4.a.a.x), 4294967295u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, global2[_wgslsmith_index_u32(global4.a.a.x, 12u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1082f, global0.d.a.b.x) * vec3<f32>(global0.d.a.b.x, global4.a.b.x, -758f)))), global4.a.b)), -1i, min(select(-vec4<i32>(arg_2, arg_2, arg_2, 9205i), -global0.d.a.d, vec4<bool>(true, true, true, true)), -(~vec4<i32>(u_input.c.x, -11808i, 8976i, arg_2))) | -select(global0.d.a.d, _wgslsmith_clamp_vec4_i32(global4.a.d, global4.a.d, global0.d.a.d), select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(global4.d, global0.a.x, false, true), global4.d)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -1222f;
    global4 = Struct_2(arg_0.a, -2147483647i, vec3<i32>(_wgslsmith_mod_i32(-12023i, min(~(-2147483647i), countOneBits(global4.c.x))), u_input.c.x, ~(arg_0.c.x >> (arg_1.a.x % 32u)) >> (~(~arg_1.a.x) % 32u)), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.a.b.yz, vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.b.x * global4.a.b.x), arg_1.b.x)))));
    let var_2 = Struct_4(select(global0.a, global0.a, all(!select(vec2<bool>(false, true), vec2<bool>(global0.a.x, true), false))), min(vec3<i32>(abs(0i), ~(-18986i), 1i), global0.d.a.d.zyy), u_input.c.xz, Struct_2(global0.d.a, -abs(~global4.b), arg_1.d.wzy, all(global0.a)));
    global4 = global0.d;
    return global4.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    global1 = array<i32, 22>();
    var var_0 = global0.d.d;
    global4 = global0.d;
    var var_1 = func_4(Struct_2(global4.a, abs(firstLeadingBit(arg_0.x)), vec3<i32>(0i, arg_0.x, arg_0.x), global4.d), func_2(global3[_wgslsmith_index_u32(arg_1.x, 8u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d.a.b.x, global0.d.a.b.x, false))), global4.a.b.x, global0.d.a.b.x), _wgslsmith_div_i32(i32(-1i) * -9664i, global4.b)));
    var var_2 = true;
    return Struct_2(Struct_1(vec4<u32>(abs(arg_1.x) << (global4.a.a.x % 32u), ~(~0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(16837u, arg_1.x), ~var_1.a.yx), _wgslsmith_dot_vec4_u32(global0.d.a.a, arg_1) | global4.a.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.a.b.x, _wgslsmith_f_op_f32(exp2(global0.d.a.b.x)), global0.d.a.b.x) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-158f, -1806f, 280f)))), func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.d.a.a.xyx, var_1.a.wxw), 8u)], _wgslsmith_f_op_vec3_f32(global0.d.a.b * vec3<f32>(-116f, 482f, var_1.b.x)), -2080i).d.x | _wgslsmith_sub_i32(arg_0.x, u_input.b.x), var_1.d), max(arg_0.x, -arg_0.x), u_input.c, func_3(global4.a.b.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 22>();
    global4 = func_1(_wgslsmith_add_vec3_i32(global4.c, global4.a.d.yzz), global4.a.a, (global1[_wgslsmith_index_u32(global0.d.a.a.x, 22u)] ^ _wgslsmith_add_i32(-global1[_wgslsmith_index_u32(global0.d.a.a.x, 22u)], 2147483647i)) > ~global4.b);
    var var_0 = global0.d.a.a.zxw;
    var var_1 = global4.a;
    global4 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1(select(u_input.c, vec3<i32>(71360i, -1i, 2147483647i), global0.d.d), ~vec4<u32>(0u, global0.d.a.a.x, var_0.x, 4294967295u) & (vec4<u32>(global4.a.a.x, 68577u, 50101u, 21676u) << (global4.a.a % vec4<u32>(32u))), (global0.d.d != global4.d) && true).a.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.a.b, _wgslsmith_f_op_vec3_f32(-global4.a.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.a.b, var_1.b) + _wgslsmith_f_op_vec3_f32(global4.a.b * vec3<f32>(-444f, -788f, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-global0.d.a.b.x), _wgslsmith_f_op_f32(-var_1.b.x))))));
}

