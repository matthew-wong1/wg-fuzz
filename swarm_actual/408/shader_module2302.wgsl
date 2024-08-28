struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), vec2<u32>(35257u, 4294967295u), 87979i), Struct_1(vec2<bool>(false, false), vec2<u32>(90415u, 1u), -1i), 0u);

var<private> global2: array<f32, 15>;

var<private> global3: array<vec2<u32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    return ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~(-arg_0.d), arg_0.d << (_wgslsmith_div_vec4_u32(vec4<u32>(57859u, u_input.c.x, u_input.c.x, arg_0.b.c), u_input.c) % vec4<u32>(32u))), ~(~(~u_input.b.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_3(global0.x, Struct_2(Struct_1(select(select(arg_1.a.a, global1.a.a, vec2<bool>(false, global1.a.a.x)), select(vec2<bool>(false, true), global1.b.a, true), vec2<bool>(true, false)), min(countOneBits(arg_1.a.b), ~vec2<u32>(6088u, 0u)), _wgslsmith_div_i32(func_3(Struct_4(Struct_2(Struct_1(vec2<bool>(true, false), vec2<u32>(u_input.d.x, 4294967295u), -9460i), Struct_1(arg_1.b.a, arg_1.b.b, global1.b.c), 0u), arg_1, arg_1, vec4<i32>(arg_1.b.c, -25121i, arg_0.x, u_input.b.x)), Struct_4(Struct_2(Struct_1(arg_1.a.a, arg_1.b.b, -47733i), Struct_1(arg_1.a.a, global1.a.b, global1.a.c), 61110u), arg_1, arg_1, vec4<i32>(arg_0.x, u_input.a.x, arg_1.b.c, u_input.a.x))), -1i)), Struct_1(select(vec2<bool>(global1.a.a.x, false), arg_1.a.a, !vec2<bool>(arg_1.a.a.x, false)), select(vec2<u32>(1u, 4294967295u), vec2<u32>(global1.b.b.x, 34162u), any(vec2<bool>(false, true))), _wgslsmith_dot_vec3_i32(~arg_0, _wgslsmith_sub_vec3_i32(arg_0, u_input.a))), 1u >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, u_input.c.x), arg_1.c) % 32u)), Struct_2(Struct_1(!global1.b.a, ~select(arg_1.b.b, global1.b.b, arg_1.b.a.x), -max(u_input.b.x, 1i)), Struct_1(arg_1.b.a, vec2<u32>(arg_1.a.b.x, 39328u), -22080i), global0.x));
    global3 = array<vec2<u32>, 7>();
    var var_1 = -firstLeadingBit(_wgslsmith_mod_vec2_i32(~u_input.a.zx, vec2<i32>(4587i, -28490i)));
    return arg_1.b;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<u32>(u_input.d.x, _wgslsmith_add_u32(~4294967295u, u_input.c.x), countOneBits(global0.x));
    let var_1 = global1.a.a;
    var var_2 = -960f;
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 15u)])))));
    return Struct_2(global1.b, func_2(u_input.a, Struct_2(Struct_1(global1.b.a, ~vec2<u32>(u_input.c.x, global1.b.b.x), u_input.a.x), global1.a, 0u >> (_wgslsmith_dot_vec2_u32(var_0.zz, var_0.yz) % 32u)), 678f), 44313u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = select(arg_2.b.a.x, arg_1.b.a.x, (!arg_1.a.a.x != global1.b.a.x) || (!func_1().a.a.x | global1.b.a.x));
    global1 = func_1();
    global1 = Struct_2(func_2(vec3<i32>(func_2(select(u_input.a, u_input.a, arg_2.a.a.x), Struct_2(arg_1.a, arg_1.b, arg_2.b.b.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(87899u, 15u)])).c, -u_input.a.x, -1i >> ((1u & global1.a.b.x) % 32u)), func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(firstTrailingBit(global1.b.b.x), 15u)], _wgslsmith_div_f32(278f, global2[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1348f, global2[_wgslsmith_index_u32(global0.x, 15u)]))))), Struct_1(func_1().b.a, firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.d.wz, vec2<u32>(global0.x, global0.x), arg_1.b.b)), ~(-38927i)), ~arg_1.b.b.x);
    var var_1 = func_1().b;
    let var_2 = ~select(~vec4<u32>(arg_1.b.b.x, 4294967295u, _wgslsmith_dot_vec2_u32(var_1.b, var_1.b), ~global0.x), max(u_input.d, firstTrailingBit(abs(u_input.c))), any(select(select(vec4<bool>(true, false, global1.b.a.x, var_0), vec4<bool>(false, false, var_1.a.x, true), var_0), select(vec4<bool>(false, false, arg_1.a.a.x, true), vec4<bool>(false, arg_1.a.a.x, arg_2.b.a.x, var_1.a.x), var_1.a.x), vec4<bool>(false, true, var_1.a.x, arg_2.b.a.x))));
    return StorageBuffer(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32((_wgslsmith_div_u32(u_input.c.x, arg_2.a.b.x) ^ 0u) & _wgslsmith_add_u32(4294967295u, global0.x), 15u)]), ~vec3<i32>(~u_input.b.x, -33406i, select(15374i, -33145i, var_1.a.x) ^ firstTrailingBit(2147483647i)), vec3<u32>(abs(min(~var_1.b.x, ~var_1.b.x)), arg_1.c, 0u), (arg_2.b.b ^ global3[_wgslsmith_index_u32(61563u << (max(global1.c, 0u) % 32u), 7u)]) ^ ~var_2.wx, vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 0u), 15u)] * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(425f - -1000f)))), 831f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(47852u), 15u)] + -1079f), global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(16984u, global0.x, 26111u, global1.a.b.x), var_2)), 15u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -10336i;
    let x = u_input.a;
    s_output = func_4(-(~global1.a.c), func_1(), func_1());
}

