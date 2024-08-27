struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1114f, -843f, 933f, -749f, -1250f, 785f, -647f, 2155f, -455f, -1826f, 444f, 946f, 618f, -855f, -608f, -1000f, -463f, 1953f, 155f, -1140f, 2411f, -861f, 413f, -1000f, -358f, -192f, -1929f, -317f, 491f);

var<private> global1: array<i32, 13>;

var<private> global2: array<vec2<f32>, 29>;

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = !arg_1.b.a | arg_1.a.a;
    global1 = array<i32, 13>();
    let var_1 = Struct_4(Struct_1(false), ~(~u_input.c >> (~vec4<u32>(1183u, 12953u, u_input.c.x, 1u) % vec4<u32>(32u))), !(!vec2<bool>(true, 1u <= u_input.d)), u_input.c, select(vec3<i32>(28033i, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], -35399i), vec3<i32>(max(global1[_wgslsmith_index_u32(~u_input.d, 13u)], i32(-1i) * -2147483647i), abs(i32(-1i) * -2147483647i), 28326i), !select(!vec3<bool>(arg_3, arg_1.a.a, arg_1.a.a), select(vec3<bool>(arg_3, true, arg_1.c), vec3<bool>(false, arg_3, true), vec3<bool>(false, var_0, arg_1.b.a)), !vec3<bool>(true, arg_1.a.a, false))));
    let var_2 = select(false && all(vec3<bool>(any(var_1.c), select(arg_1.b.a, var_0, true), true)), true, !any(var_1.c));
    let var_3 = Struct_4(var_1.a, ~(~vec4<u32>(~97424u, _wgslsmith_clamp_u32(u_input.c.x, u_input.b, 3037u), 0u, 1u)), var_1.c, ~var_1.b, vec3<i32>(-1i, _wgslsmith_div_i32(u_input.a.x | 1i, _wgslsmith_div_i32(1i, u_input.a.x)), -_wgslsmith_div_i32(0i, u_input.a.x ^ 5583i)));
    return arg_3;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_5(Struct_2(Struct_1(true), Struct_1(any(vec2<bool>(false, true)) & true), true), _wgslsmith_mod_vec4_i32(-min(vec4<i32>(-57669i, 1i, global1[_wgslsmith_index_u32(1u, 13u)], 59751i) << (u_input.c % vec4<u32>(32u)), -vec4<i32>(0i, 29287i, 45501i, 18303i)), -vec4<i32>(1i, -3297i, select(u_input.a.x, global1[_wgslsmith_index_u32(1u, 13u)], true), countOneBits(23264i))), vec4<bool>(func_3(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(Struct_1(false), Struct_1(true), false), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.xwy, vec3<u32>(u_input.c.x, 4294967295u, 1u)), u_input.b), 29u)], true), true, !(max(u_input.c.x, u_input.b) <= ~u_input.d), true), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), abs(-_wgslsmith_dot_vec2_i32(-u_input.a, vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 13u)]))));
    var var_1 = var_0.a.b;
    let var_2 = var_0;
    global1 = array<i32, 13>();
    var var_3 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-295f, global0[_wgslsmith_index_u32(u_input.d, 29u)])))), 1670f, global0[_wgslsmith_index_u32(4294967295u, 29u)]) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -299f, global0[_wgslsmith_index_u32(56487u, 29u)])))))))));
}

fn func_1() -> vec4<bool> {
    var var_0 = ~u_input.c.xwx;
    let var_1 = !(!(!vec3<bool>(false, true, any(vec3<bool>(true, true, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2());
    return vec4<bool>(var_1.x, !(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, 8368u, 53036u, 32082u)), 1u) > ~54370u), var_1.x, global0[_wgslsmith_index_u32(1u, 29u)] < -1213f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 29u)] * global0[_wgslsmith_index_u32(4041u, 29u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)]))))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d ^ ~select(4294967295u, u_input.c.x, false), 29u)])), _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 29u)]))));
    global2 = array<vec2<f32>, 29>();
    var var_1 = !select(select(func_1(), vec4<bool>(true, 184f <= global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true, false), false), vec4<bool>(true, true, func_1().x, true), vec4<bool>(!func_3(false, Struct_2(Struct_1(false), Struct_1(false), true), vec2<f32>(451f, 1000f), true), any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), any(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_mult_vec4_i32(min(-_wgslsmith_mult_vec4_i32(vec4<i32>(-21763i, 0i, 68409i, -23710i) >> (vec4<u32>(u_input.c.x, 0u, 34633u, 27343u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -11986i, global1[_wgslsmith_index_u32(u_input.d, 13u)], -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 13u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.d, 13u)]))), ~max(vec4<i32>(u_input.a.x, u_input.a.x, 32708i, 26018i), -vec4<i32>(-7873i, 2147483647i, -2147483647i, 39325i))), min(_wgslsmith_add_vec4_i32(~(vec4<i32>(u_input.a.x, -22085i, u_input.a.x, 52701i) ^ vec4<i32>(-18008i, global1[_wgslsmith_index_u32(34663u, 13u)], 2147483647i, global1[_wgslsmith_index_u32(68729u, 13u)])), reverseBits(vec4<i32>(-4634i, u_input.a.x, -18334i, -13603i)) << (u_input.c % vec4<u32>(32u))), max(vec4<i32>(-56421i, abs(global1[_wgslsmith_index_u32(38679u, 13u)]), u_input.a.x >> (u_input.d % 32u), max(u_input.a.x, -41535i)), abs(~vec4<i32>(-26351i, 14773i, 68232i, 1i)))));
    global2 = array<vec2<f32>, 29>();
    var var_3 = var_2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<u32>(102857u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(69405u, u_input.d, u_input.c.x, 0u), vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)), ~_wgslsmith_add_u32(4294967295u, u_input.b))));
}

