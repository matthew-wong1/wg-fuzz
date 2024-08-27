struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(1i, 1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<i32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-316f + arg_3.d.x), _wgslsmith_f_op_f32(trunc(global2.e.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 255f)));
    var var_0 = global2.d.yz;
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f + 1082f)))));
    var var_3 = -21829i;
    return abs(vec2<i32>(-_wgslsmith_dot_vec3_i32(arg_1.a, global2.e.a >> (global2.d % vec3<u32>(32u))), min(arg_3.c.x, 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = arg_2.e;
    var var_1 = global2.b;
    var_1 = arg_2.b;
    var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(func_3(true, Struct_1(vec3<i32>(-2413i, arg_2.a, arg_2.e.c.x), false, vec2<i32>(0i, 18020i), var_0.d), vec3<u32>(arg_2.d.x, u_input.a.x, global2.d.x), var_0), -vec2<i32>(arg_2.e.a.x, -84976i))), global3[_wgslsmith_index_u32(~(~0u), 1u)]), arg_2.e.c);
    return ~arg_2.d.x;
}

fn func_1() -> Struct_1 {
    var var_0 = global2.d.zy;
    global3 = array<vec2<i32>, 1>();
    var var_1 = vec3<u32>(func_2(vec3<bool>(global2.e.b, false, global2.e.b), !vec3<bool>(global2.d.x <= 0u, true, global2.e.b), Struct_2(global2.b, max(~9529i, _wgslsmith_clamp_i32(global2.b, 1i, -1i)), _wgslsmith_f_op_f32(floor(1466f)), ~vec3<u32>(1u, global2.d.x, global2.d.x), global2.e)), global2.d.x | ~46392u, ~_wgslsmith_mod_u32(4294967295u, global2.d.x) | u_input.a.x);
    let var_2 = vec3<bool>(global2.e.b, _wgslsmith_add_i32(abs(-global2.e.a.x), ~(-28476i)) >= abs(global2.b), global2.e.b);
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1105f, 2181f, global2.c) + global2.e.d))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(274f, 1850f, -1000f)), vec3<f32>(global1.x, global1.x, global1.x))) + vec3<f32>(1712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, true))), 290f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, 575f)), _wgslsmith_f_op_f32(-248f + _wgslsmith_f_op_f32(min(global2.e.d.x, global2.c))), -980f))));
    return global2.e;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> bool {
    global3 = array<vec2<i32>, 1>();
    global2 = arg_1;
    var var_0 = false;
    global2 = arg_1;
    global2 = Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, global2.a, 33006i, arg_2.c.x), -vec4<i32>(1i, 1553i, 2147483647i, global2.e.c.x)), 5349i) ^ (global2.b ^ func_1().a.x), _wgslsmith_mod_i32(reverseBits(~(-1i)), ~max(arg_1.a, select(-2147483647i, 44787i, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1602f, arg_2.d.x) + 1000f), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x), vec3<u32>(arg_3, 0u, global2.d.x)) & select(vec3<u32>(arg_3, 1u, 0u), vec3<u32>(0u, 1u, 86927u), true), vec3<u32>(global2.d.x, ~u_input.b.x, ~87706u) | reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global2.d.x), arg_1.d))), func_1());
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(~(global2.e.c.x ^ 1i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, global2.b), countOneBits(0i)), global2.b), abs(~(~u_input.a.x)) != 4294967295u, select(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -global3[_wgslsmith_index_u32(20391u, 1u)], _wgslsmith_clamp_vec2_i32(-global3[_wgslsmith_index_u32(25543u, 1u)], global2.e.c, global2.e.c)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_sub_u32(0u, global2.d.x), ~1u) & ((u_input.b.x << (global2.d.x % 32u)) & ~u_input.a.x), 1u)], func_4(select(select(vec3<bool>(global2.e.b, true, global2.e.b), vec3<bool>(global2.e.b, true, global2.e.b), false), select(vec3<bool>(global2.e.b, global2.e.b, global2.e.b), vec3<bool>(false, false, true), false), select(vec3<bool>(true, global2.e.b, true), vec3<bool>(false, true, global2.e.b), vec3<bool>(false, true, global2.e.b))), Struct_2(global2.b, -2147483647i, _wgslsmith_f_op_f32(abs(-307f)), countOneBits(vec3<u32>(global2.d.x, 0u, 25606u)), func_1()), global2.e, 66354u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.c), global2.c, global2.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.e.d + global2.e.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global2.e.d, global2.e.d, true)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.e.d)))))));
    let var_1 = Struct_2(~(-45296i), _wgslsmith_add_i32(_wgslsmith_mod_i32(~_wgslsmith_add_i32(global2.e.c.x, 1i), (global2.e.a.x << (global2.d.x % 32u)) & -2147483647i), ~abs(~global2.e.a.x)), -298f, u_input.b, var_0);
    var var_2 = func_1();
    let var_3 = select(vec4<bool>(all(select(!vec2<bool>(global2.e.b, true), vec2<bool>(false, var_2.b), true)), !all(vec4<bool>(false, var_2.b, true, false)), true, var_0.b), vec4<bool>(select(37970i, var_0.c.x | 6807i, all(vec3<bool>(true, false, false))) <= (22332i >> (u_input.c.x % 32u)), var_2.b, !var_1.e.b, var_2.b), vec4<bool>(func_1().b, !(var_1.e.b == var_0.b) && true, all(vec2<bool>(true, var_0.b)), var_2.b));
    let var_4 = var_1;
    let var_5 = func_1();
    var var_6 = max(vec4<i32>((func_3(var_3.x, Struct_1(var_4.e.a, false, vec2<i32>(var_0.a.x, global2.b), vec3<f32>(-1261f, var_0.d.x, -242f)), var_4.d, Struct_1(vec3<i32>(var_0.a.x, 56410i, -2147483647i), var_5.b, vec2<i32>(var_2.c.x, 2147483647i), var_1.e.d)).x | ~(-14164i)) & _wgslsmith_add_i32(-2147483647i >> (0u % 32u), reverseBits(26700i)), abs(-1i), reverseBits(_wgslsmith_add_i32(firstLeadingBit(var_2.a.x), ~278i)), 3960i >> (~4294967295u % 32u)), ~_wgslsmith_div_vec4_i32(-vec4<i32>(-45314i, -1i, -1i, 1i), countOneBits(vec4<i32>(-32441i, var_4.e.a.x, -1i, global2.a)) >> ((vec4<u32>(1u, 4294967295u, 33370u, 1u) << (vec4<u32>(var_1.d.x, var_4.d.x, var_4.d.x, 50073u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-165f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + -945f))), global1.x, 0i);
}

