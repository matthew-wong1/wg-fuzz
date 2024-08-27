struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 5> = array<f32, 5>(-389f, 888f, 177f, -351f, -902f);

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<bool> {
    global0 = Struct_3(2147483647i, Struct_1(46953u, global0.d, vec3<f32>(global0.b.c.x, _wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(662f)), _wgslsmith_f_op_f32(-434f - -200f)))), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1238i, u_input.b.x, -31228i), vec3<i32>(-2147483647i, arg_1, u_input.b.x)), select(global0.b.d, arg_1, false))), ~4294967295u, global0.d);
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~(vec3<u32>(0u, 4294967295u, 0u) & vec3<u32>(global0.b.a, u_input.a.x, u_input.a.x)), vec3<u32>(~u_input.a.x, global0.c << (1u % 32u), u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 31888u), vec3<u32>(u_input.a.x, u_input.a.x, global0.c)), ~vec3<u32>(global0.b.a, 7382u, 15997u)) ^ firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(59273u, 22098u, global0.b.a), vec3<u32>(79106u, global0.c, 1u)))), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 1u), vec3<u32>(63819u, u_input.c, 10564u)) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 11582u), vec3<u32>(global0.c, global0.c, 17183u)), countOneBits(~(~vec3<u32>(16127u, 69134u, 1u)))));
    let var_1 = !all(!select(vec3<bool>(global0.d, global0.d, true), vec3<bool>(true, false, false), !vec3<bool>(global0.b.b, global0.b.b, true)));
    let var_2 = !vec4<bool>(all(vec4<bool>(!global0.b.b, any(vec4<bool>(false, global0.d, global0.d, true)), var_1, global0.b.c.x == global0.b.c.x)), !var_1, !global0.d == !var_1, all(vec3<bool>(true, true, true)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_0)) + 1f), 1990f, -1534f, global1[_wgslsmith_index_u32(firstLeadingBit(var_0), 5u)]);
    return var_2;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec3<i32> {
    global0 = Struct_3(~global0.b.d, Struct_1(13971u ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 7569u, arg_1, 6133u), vec4<u32>(u_input.a.x, 1u, arg_1, 43675u)) << (1u % 32u)), false, global0.b.c, global0.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, ~arg_1), _wgslsmith_div_u32(~82194u, ~4294967295u ^ u_input.a.x)), false);
    var var_0 = func_3(global0.b.c.x, ~u_input.b.x);
    var var_1 = ~u_input.c << (~(~9093u) % 32u);
    var var_2 = ~(abs(u_input.c) << (4294967295u % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.c.x, 130f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.c.x * global1[_wgslsmith_index_u32(18169u, 5u)]), -752f) + 2142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -402f))))));
    return vec3<i32>(_wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(max(global0.a, 0i), ~u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-46457i, -65590i), global0.a, abs(-71547i)), ~(-vec3<i32>(0i, 19561i, u_input.b.x)))), _wgslsmith_dot_vec4_i32(-max(vec4<i32>(0i, 33330i, -2147483647i, u_input.b.x), max(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, global0.b.d), vec4<i32>(global0.a, -44077i, global0.b.d, u_input.b.x))), -select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.a, u_input.b.x, -38661i), vec4<i32>(global0.a, 1i, global0.b.d, -42001i)), -vec4<i32>(17927i, u_input.b.x, u_input.b.x, -58739i), select(vec4<bool>(true, false, false, global0.d), vec4<bool>(var_0.x, global0.d, global0.d, global0.b.b), vec4<bool>(global0.d, global0.b.b, false, false)))), reverseBits(~_wgslsmith_add_i32(u_input.b.x, -u_input.b.x)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> i32 {
    var var_0 = global0.b;
    global2 = false;
    global2 = true;
    var_0 = global0.b;
    global0 = Struct_3(_wgslsmith_dot_vec3_i32(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-124f, global1[_wgslsmith_index_u32(41083u, 5u)]))), 4294967295u) << ((vec3<u32>(4294967295u, 1036u, var_0.a) >> ((vec3<u32>(53140u, 55437u, u_input.a.x) ^ vec3<u32>(65131u, 0u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(reverseBits(6661i << (var_0.a % 32u)), ~u_input.b.x, var_0.d)), global0.b, ~4294967295u, true);
    return -7404i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(26282u, global0.b.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1986f, -366f, -653f) * vec3<f32>(_wgslsmith_f_op_f32(-206f * global1[_wgslsmith_index_u32(4294967295u, 5u)]), -1035f, global0.b.c.x)), func_1(-1000f, 1u, select(vec3<bool>(true, global0.b.b, true), select(vec3<bool>(global0.d, true, true), vec3<bool>(true, global0.d, global0.d), true), true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-3284f, global1[_wgslsmith_index_u32(4294967295u, 5u)]), global0.b.c.yz)), _wgslsmith_f_op_vec2_f32(max(global0.b.c.zy, vec2<f32>(169f, global0.b.c.x))), global0.d)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b.c.xx, vec2<f32>(-1245f, global0.b.c.x)) * global0.b.c.yz)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-853f, 2020f, _wgslsmith_f_op_f32(-945f - global1[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.c.x, -861f, _wgslsmith_f_op_f32(f32(-1f) * -842f)), global0.b.c))), vec3<bool>(global0.b.b & select(global0.d, global0.d, any(vec2<bool>(true, global0.b.b))), func_3(_wgslsmith_f_op_f32(global0.b.c.x - -653f), -23858i).x, global0.d), Struct_2(firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.b, u_input.b)), func_3(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(global0.c), 5u)] + _wgslsmith_f_op_f32(-906f + global1[_wgslsmith_index_u32(u_input.c, 5u)])), reverseBits(firstLeadingBit(global0.a)))));
    let var_1 = Struct_2(vec2<i32>(14864i, 1i), select(!vec4<bool>(u_input.b.x > var_0.a.d, var_0.a.b & global0.b.b, true, global0.b.b), var_0.e.b, true));
    let var_2 = vec4<bool>(select((2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21331u, 1u, u_input.c), vec4<u32>(7834u, 25036u, u_input.c, global0.c)) % 32u)) < -1i, !(!all(var_1.b.wzw)), (max(0u, u_input.c) == global0.c) & var_1.b.x), global0.d, true, true);
    var var_3 = abs(~vec4<u32>(1u, var_0.a.a, ~_wgslsmith_div_u32(3751u, var_0.a.a), ~(~4294967295u)));
    global0 = Struct_3(25303i, global0.b, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_3.x, u_input.c), 54941u, global0.c), 76678u), true);
    global0 = Struct_3(max(~14748i, 2147483647i), Struct_1(~43461u, var_1.b.x, vec3<f32>(-415f, 262f, var_0.c.x), max(~global0.a << (u_input.a.x % 32u), select(_wgslsmith_add_i32(u_input.b.x, -12785i), _wgslsmith_sub_i32(var_0.e.a.x, var_0.e.a.x), !var_1.b.x))), (firstTrailingBit(var_0.a.a) << (var_3.x % 32u)) & _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a >> (var_3.zx % vec2<u32>(32u)), abs(var_3.yz)), u_input.a), firstLeadingBit(_wgslsmith_div_u32(0u, var_0.a.a) >> (16745u % 32u)) <= (var_3.x >> (0u % 32u)));
    var var_4 = _wgslsmith_f_op_f32(min(875f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - 262f), _wgslsmith_f_op_f32(f32(-1f) * -101f))))))));
    var var_5 = vec3<bool>(func_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 5u)]), (global0.b.d << (~0u % 32u)) | u_input.b.x).x, var_2.x, !global0.d);
    var_5 = !select(vec3<bool>(true, !var_5.x, true | var_1.b.x), var_0.d, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) - 1f), -6860i).x);
    let x = u_input.a;
    s_output = StorageBuffer(~select(-vec4<i32>(var_1.a.x, 66600i, var_0.a.d, var_0.e.a.x) & vec4<i32>(-1i, var_1.a.x, var_1.a.x, u_input.b.x), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_1.a.x, 52001i, -7125i), vec4<i32>(7600i, 39675i, 14977i, u_input.b.x))), !(var_1.b.x && var_2.x)), firstLeadingBit(select(~var_3.zxw, (vec3<u32>(1u, 1u, 20687u) ^ vec3<u32>(var_3.x, 1u, var_0.a.a)) ^ _wgslsmith_mod_vec3_u32(var_3.wxx, vec3<u32>(0u, var_3.x, 79449u)), func_3(global1[_wgslsmith_index_u32(global0.b.a, 5u)], var_1.a.x).wzw)), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_sub_i32(abs(15230i), 1i)), abs(global0.a)), global0.b.c.x);
}

