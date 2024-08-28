struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(0i, 14704i, 15295i, -22458i);

var<private> global2: array<bool, 32> = array<bool, 32>(true, false, false, true, true, true, false, true, false, false, true, false, true, false, false, false, true, false, false, true, true, true, false, false, false, false, true, false, true, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.wx - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, global0.b.a.x))), _wgslsmith_f_op_f32(ceil(arg_1.x))))));
    global2 = array<bool, 32>();
    var var_1 = firstLeadingBit(~_wgslsmith_mod_u32(744u, 1u));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, -611f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -200f)) * vec2<f32>(-262f, _wgslsmith_div_f32(arg_1.x, 469f))))));
    global0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1063f)) * _wgslsmith_f_op_f32(-global0.a.a.x)), global0.b.a.x), ~_wgslsmith_sub_vec3_i32(global1.xzy, -vec3<i32>(1i, u_input.b.x, global0.a.b.x))), Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(367f)), global0.a.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(global1.zyz, max(vec3<i32>(u_input.b.x, arg_0.x, 2147483647i), vec3<i32>(-22805i, global1.x, 2147483647i))), ~global1.xxy)), global0.a, all(select(select(select(vec4<bool>(global0.d, false, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], true, false, true), vec4<bool>(arg_2, true, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), vec4<bool>(true, true, true, true), !vec4<bool>(false, global0.d, true, arg_2)), select(vec4<bool>(arg_2, global2[_wgslsmith_index_u32(57156u, 32u)], global0.d, false), vec4<bool>(true, true, arg_2, global2[_wgslsmith_index_u32(50115u, 32u)]), select(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], true, global0.d)), reverseBits(25717u) == u_input.a.x)));
    return global0.c.a.x;
}

fn func_2() -> Struct_1 {
    global1 = ~vec4<i32>(-(i32(-1i) * -22706i), 2414i, 19493i, 0i);
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a.x + global0.b.a.x), global0.b.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-197f)))), _wgslsmith_div_f32(-1210f, 126f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec3<i32>(global1.x, global1.x, 33685i), vec4<f32>(global0.b.a.x, -1000f, global0.b.a.x, global0.c.a.x), global2[_wgslsmith_index_u32(49622u, 32u)])), -434f)))), countOneBits(global0.b.b));
    let var_1 = vec2<bool>((1u == _wgslsmith_clamp_u32(4294967295u, max(u_input.a.x, u_input.a.x), reverseBits(4294967295u))) && false, true | (!all(vec3<bool>(global0.d, true, false)) && false));
    global2 = array<bool, 32>();
    let var_2 = -366f;
    return global0.c;
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.a, 59242u), u_input.a.x);
    global0 = Struct_2(global0.c, global0.a, func_2(), true);
    var var_1 = !select(arg_0.b, arg_0.b, vec3<bool>(!all(vec3<bool>(global0.d, false, true)), all(!vec2<bool>(arg_0.b.x, global0.d)), true));
    var var_2 = arg_0;
    global1 = max(vec4<i32>(-42366i, ~countOneBits(i32(-1i) * -2147483647i), 0i, _wgslsmith_clamp_i32(~(global0.a.b.x ^ global0.a.b.x), arg_0.d.b.x, _wgslsmith_mult_i32(global0.b.b.x, -6961i) >> (84574u % 32u))), ~countOneBits(~vec4<i32>(-2147483647i, 2147483647i, -13331i, var_2.d.b.x) >> ((arg_0.c & vec4<u32>(var_2.a, 3038u, 26154u, 36925u)) % vec4<u32>(32u))));
    return abs(vec4<i32>(countOneBits(32355i), _wgslsmith_dot_vec2_i32(-global0.b.b.zx, max(vec2<i32>(arg_0.d.b.x, -27206i), arg_0.d.b.yz)) << (~1u % 32u), global0.c.b.x, _wgslsmith_mult_i32(-global1.x, ~2147483647i) >> (_wgslsmith_add_u32(17528u, var_2.c.x >> (u_input.a.x % 32u)) % 32u)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: f32) -> i32 {
    global1 = func_4(Struct_3(u_input.a.x, !select(vec3<bool>(false, global0.d, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<bool>(false, false, false), select(global2[_wgslsmith_index_u32(1u, 32u)], global0.d, global0.d)), vec4<u32>(4294967295u, ~(~u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.wxy | vec3<u32>(7802u, u_input.a.x, 110933u), ~vec3<u32>(17473u, 12017u, u_input.a.x)), _wgslsmith_div_u32(~u_input.a.x, ~u_input.a.x)), func_2()));
    let var_0 = any(select(vec2<bool>(true, global0.d), vec2<bool>(global2[_wgslsmith_index_u32(~35449u, 32u)], select(true, global0.d, false)), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false))) || (_wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(arg_3 + 1752f));
    var var_1 = global0.b;
    let var_2 = Struct_3(u_input.a.x, select(select(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false)), vec3<bool>(2147483647i < arg_1, !global2[_wgslsmith_index_u32(u_input.a.x, 32u)], all(vec4<bool>(global0.d, false, true, true))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global0.d, false), vec3<bool>(global0.d, true, true), vec3<bool>(false, var_0, true)), !vec3<bool>(true, false, global0.d), false)), vec3<bool>(false, true, !(var_0 | false)), var_1.a.x < _wgslsmith_f_op_f32(max(global0.b.a.x, var_1.a.x))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) & vec2<u32>(59003u, 53810u), ~vec2<u32>(u_input.a.x, 16583u)), u_input.a.x, ~(u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_sub_u32(abs(8019u), 1u)), global0.c);
    let var_3 = Struct_2(var_2.d, global0.a, func_2(), all(vec4<bool>(var_1.a.x <= _wgslsmith_div_f32(419f, 365f), true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], false), var_2.b.xz, global0.d)), !(!var_2.b.x))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(0i, global1.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(select(global1.wwx | global0.b.b, vec3<i32>(330i, global1.x, u_input.b.x), true), -global0.b.b), max(func_1(1i, -2035i, -869f, 1552f), -1i)), -(i32(-1i) * -countOneBits(-1i)));
    global1 = abs(_wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, global0.b.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, global1.x)), firstLeadingBit(vec4<i32>(-15734i, -1i, 50785i, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(global1.x, -1i, 1i, global0.b.b.x))) & (abs(select(vec4<i32>(1i, u_input.b.x, -9650i, global0.a.b.x), vec4<i32>(-1i, 2147483647i, 11294i, -2147483647i), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(47896u, 32u)], true)) << (vec4<u32>(u_input.a.x, 60730u, 34170u, u_input.a.x) % vec4<u32>(32u))) & firstTrailingBit(vec4<i32>(global0.c.b.x ^ -26271i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.a.b.x), global1.yx), global1.x, global0.a.b.x ^ u_input.b.x)));
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x & u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 56035u), vec3<u32>(u_input.a.x, u_input.a.x, 6270u)), _wgslsmith_add_u32(~1u, ~u_input.a.x), u_input.a.x & (10794u >> (u_input.a.x % 32u))), u_input.a), 58768u);
    let var_1 = global0.a.b & ~vec3<i32>(u_input.b.x, global0.c.b.x, global0.b.b.x);
    global0 = Struct_2(global0.a, Struct_1(func_2().a, vec3<i32>(1i, -u_input.b.x, 27051i)), func_2(), global0.d);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1211f)), global0.b.a.x, _wgslsmith_f_op_f32(-1639f * global0.c.a.x))), vec3<i32>(28370i, -46729i, global0.b.b.x)), global0.b, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.a.a))), var_1), !any(vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a ^ vec4<u32>(1u, _wgslsmith_div_u32(var_0.x, u_input.a.x) << (4294967295u % 32u), abs(_wgslsmith_add_u32(var_0.x, u_input.a.x)), 58061u), u_input.b.x, firstLeadingBit(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.www, u_input.a.wxw) << (abs(u_input.a.x) % 32u), firstTrailingBit(_wgslsmith_sub_u32(var_0.x, u_input.a.x)), 72236u)), _wgslsmith_div_i32(firstLeadingBit(~_wgslsmith_mult_i32(-10927i, 0i)), 1i));
}

