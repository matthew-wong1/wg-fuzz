struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(69111i, i32(-2147483648), -1i, i32(-2147483648));

var<private> global1: bool;

var<private> global2: array<f32, 4>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    let var_0 = -_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, -2147483647i | arg_2.a.b.x) & ~(arg_1 & -6117i), _wgslsmith_add_i32(arg_1, u_input.a >> (0u % 32u)));
    var var_1 = vec2<u32>(global3.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(47500u), 0u, _wgslsmith_mult_u32(arg_2.a.a.x, 1u)), arg_3.a.a)) ^ u_input.b.zz;
    global3 = arg_2;
    global1 = true;
    global1 = !all(vec2<bool>(true, any(select(vec2<bool>(false, arg_3.a.c), vec2<bool>(global3.a.c, false), arg_0.a.c))));
    return _wgslsmith_f_op_f32(arg_2.a.e.x + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(56973u | global3.a.a.x, 4u)] - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))))));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_1(~arg_1.a.a, select(-firstLeadingBit(vec4<i32>(u_input.a, arg_1.a.b.x, global3.a.b.x, -33422i)), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -34309i, arg_1.a.b.x, -1i) ^ (vec4<i32>(global3.a.b.x, global3.a.b.x, global0[_wgslsmith_index_u32(9758u, 4u)], 65863i) ^ vec4<i32>(global3.a.b.x, 0i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], arg_1.a.b.x)), !(!vec4<bool>(false, arg_0, true, arg_1.a.c))) | arg_1.a.b, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.e.yz)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.e.x + -682f) + _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(vec3<u32>(57891u, global3.a.a.x, global3.a.a.x), arg_1.a.b, arg_0, global3.a.d, global3.a.e)), 0i, Struct_4(global3.a), arg_1))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(678f)), _wgslsmith_f_op_f32(max(-1167f, arg_1.a.e.x))))), _wgslsmith_f_op_f32(select(1016f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(0u, 4u)])))), arg_0)), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(4294967295u, u_input.b.x)) ^ _wgslsmith_div_u32(arg_1.a.a.x, global3.a.a.x), 4u)], 366f));
    global0 = array<i32, 4>();
    global1 = all(select(vec2<bool>((arg_1.a.b.x & global3.a.b.x) > _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, global3.a.b.x, 2147483647i, arg_1.a.b.x), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -1i, u_input.c.x, global0[_wgslsmith_index_u32(var_0.a.x, 4u)])), countOneBits(var_0.b.x) >= 1i), select(vec2<bool>(any(vec3<bool>(var_0.c, global3.a.c, false)), any(vec2<bool>(global3.a.c, arg_1.a.c))), select(select(vec2<bool>(global3.a.c, false), vec2<bool>(true, true), true), vec2<bool>(arg_0, global3.a.c), any(vec3<bool>(var_0.c, var_0.c, false))), !any(vec3<bool>(false, arg_1.a.c, global3.a.c))), vec2<bool>(!arg_0, true & (arg_0 & global3.a.c))));
    let var_1 = -vec4<i32>(-10322i, _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(39988u >> (u_input.b.x % 32u), 4u)], -2147483647i), _wgslsmith_mod_i32((-30247i ^ var_0.b.x) ^ var_0.b.x, _wgslsmith_div_i32(0i, -global3.a.b.x)), 4596i);
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.e.xzz * vec3<f32>(-273f, -832f, arg_1.a.d.x));
    return firstLeadingBit(var_0.b.x);
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(u_input.b, max(vec4<i32>(-abs(u_input.c.x), _wgslsmith_div_i32(min(-17725i, 43485i), global3.a.b.x), firstTrailingBit(~global3.a.b.x), _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.b.x, 4u)], 1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global3.a.b.zxx, vec3<i32>(u_input.c.x, -33631i, global0[_wgslsmith_index_u32(global3.a.a.x, 4u)])), -global3.a.b.wxx), func_2(global3.a.c, Struct_4(Struct_1(vec3<u32>(u_input.b.x, global3.a.a.x, 1u), vec4<i32>(global3.a.b.x, u_input.c.x, u_input.d, global3.a.b.x), global3.a.c, global3.a.e.wx, vec4<f32>(arg_0, 1461f, global3.a.d.x, -673f)))) | -1i, ~(-2147483647i), abs(u_input.a))), global3.a.c, _wgslsmith_f_op_vec2_f32(global3.a.d + _wgslsmith_f_op_vec2_f32(abs(global3.a.d))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a.e * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global3.a.d.x, 316f, arg_0) + vec4<f32>(arg_0, -1700f, 474f, -1855f)))))));
    global1 = false;
    global2 = array<f32, 4>();
    let var_1 = 1i;
    var var_2 = max(_wgslsmith_add_vec2_u32(global3.a.a.xy, var_0.a.yz), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 1u)), global3.a.a.zz));
    return countOneBits(~vec4<u32>(4294967295u, var_0.a.x, 4294967295u, 40555u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = ~(~global3.a.a.x);
    var var_1 = Struct_4(global3.a);
    var var_2 = ~firstTrailingBit(min(-vec3<i32>(var_1.a.b.x, global0[_wgslsmith_index_u32(var_0, 4u)], var_1.a.b.x), _wgslsmith_add_vec3_i32(global3.a.b.wyw, var_1.a.b.yxz >> (u_input.b % vec3<u32>(32u)))));
    var_1 = Struct_4(var_1.a);
    global2 = array<f32, 4>();
    return Struct_4(Struct_1(global3.a.a & select(vec3<u32>(35122u, 1u, 0u), abs(global3.a.a), !vec3<bool>(global3.a.c, false, global3.a.c)), ~var_1.a.b, !var_1.a.c, var_1.a.e.yy, _wgslsmith_f_op_vec4_f32(floor(global3.a.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global3.a);
    let var_1 = 1u;
    var_0 = func_4(_wgslsmith_mult_vec4_u32(~(~firstTrailingBit(vec4<u32>(1u, 0u, var_0.a.a.x, global3.a.a.x))), ~(func_1(-102f) | _wgslsmith_sub_vec4_u32(vec4<u32>(10326u, var_1, u_input.b.x, 1u), vec4<u32>(u_input.b.x, global3.a.a.x, 0u, global3.a.a.x)))));
    var var_2 = -select(-(var_0.a.b.xyz ^ -vec3<i32>(1i, var_0.a.b.x, 1i)), global3.a.b.yzy ^ _wgslsmith_mult_vec3_i32(~var_0.a.b.wyw, vec3<i32>(-1i, global0[_wgslsmith_index_u32(6130u, 4u)], global0[_wgslsmith_index_u32(65827u, 4u)])), !vec3<bool>(all(vec4<bool>(true, true, global3.a.c, false)), false, false));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.d.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b.x, 4u)])) * global2[_wgslsmith_index_u32(~4294967295u, 4u)])))) > _wgslsmith_div_f32(global3.a.d.x, 2173f);
    global1 = any(select(vec2<bool>(false, (var_0.a.c && global3.a.c) && false), !(!select(vec2<bool>(var_0.a.c, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, abs(u_input.d) > var_0.a.b.x)));
    var var_3 = _wgslsmith_mod_vec3_u32(max(u_input.b, firstTrailingBit(abs(abs(var_0.a.a)))), abs(~(~vec3<u32>(4640u, var_1, 0u)) ^ func_1(_wgslsmith_f_op_f32(min(-268f, var_0.a.d.x))).zyz));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(var_1, var_0.a.a.x, global3.a.a.x >> (93547u % 32u), _wgslsmith_clamp_u32(var_0.a.a.x, var_3.x, var_0.a.a.x))), max(_wgslsmith_mod_vec3_u32(func_1(var_0.a.d.x).zzz, global3.a.a), vec3<u32>(var_3.x, ~1259u, 1u) | u_input.b), func_4(~abs(countOneBits(vec4<u32>(56301u, 0u, var_3.x, 49392u)))).a.e.x);
}

