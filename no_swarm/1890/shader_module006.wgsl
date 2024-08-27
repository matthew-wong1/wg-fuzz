struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

var<private> global2: i32 = -64394i;

var<private> global3: Struct_2 = Struct_2(0u, Struct_1(true), Struct_1(true));

var<private> global4: array<f32, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    global4 = array<f32, 23>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 23u)])) * -306f), 207f, global4[_wgslsmith_index_u32(~select(38393u, global3.a ^ global3.a, false), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2609f)) - global4[_wgslsmith_index_u32(global3.a | global3.a, 23u)]));
    let var_1 = Struct_4(abs(_wgslsmith_div_u32(~global3.a, 4294967295u)), Struct_1(!arg_1), vec3<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_mult_i32(-8233i, ~(-u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.e, i32(-1i) * -1i), _wgslsmith_div_i32(-2147483647i & u_input.a.x, ~1666i))));
    global1 = array<vec4<bool>, 9>();
    var var_2 = var_0.zw;
    return var_1.a;
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-min(vec4<i32>(u_input.e, u_input.e, u_input.e, arg_0.x), vec4<i32>(0i, arg_0.x, arg_0.x, 0i)), -abs(vec4<i32>(-2147483647i, arg_0.x, u_input.e, u_input.e))), -vec4<i32>(1i & arg_0.x, 1i, -u_input.e, arg_0.x << (22373u % 32u)));
    global4 = array<f32, 23>();
    var var_1 = func_2(u_input.a, false);
    var var_2 = Struct_4(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, ~1u), ~countOneBits(1u) | _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global3.a, 35668u, u_input.d.x), vec4<u32>(34330u, global3.a, global3.a, u_input.c.x)))), Struct_1(any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(16628u, 54389u)), 9u)])), countOneBits(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.e, var_0.x), vec3<i32>(-2147483647i, -2147483647i, var_0.x)))));
    let var_3 = global3.c;
    return global0.zzz;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<u32>) -> vec4<i32> {
    var var_0 = Struct_2(arg_2, global3.c, Struct_1(!any(select(vec4<bool>(global0.x, false, true, true), global1[_wgslsmith_index_u32(arg_3.x, 9u)], vec4<bool>(global3.c.a, false, global0.x, global3.c.a)))));
    let var_1 = Struct_4(1u, var_0.b, abs(reverseBits(-(vec3<i32>(2147483647i, u_input.e, u_input.a.x) << (vec3<u32>(21739u, var_0.a, u_input.c.x) % vec3<u32>(32u))))));
    let var_2 = 4294967295u;
    global3 = Struct_2(~var_2, Struct_1(global3.b.a), var_0.c);
    global0 = global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(var_0.a, ~global3.a, ~abs(3306u)), arg_3.x, all(vec3<bool>(global3.c.a, u_input.a.x <= -u_input.a.x, var_0.b.a))), 9u)];
    return vec4<i32>(abs(reverseBits(23490i)), var_1.c.x, abs(var_1.c.x), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.a;
    let var_1 = select(select(vec3<bool>(any(vec3<bool>(false, true, global3.c.a)), true, all(select(global0.xx, vec2<bool>(global0.x, true), global0.x))), global0.xyz, vec3<bool>(global0.x, !any(vec2<bool>(true, false)), all(!vec3<bool>(true, global3.c.a, global3.b.a)))), vec3<bool>(true, false, !any(select(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], false))), !func_1(-(~vec3<i32>(u_input.e, -63613i, -35994i))));
    var var_2 = Struct_3(Struct_2(~global3.a, Struct_1(-2147483647i <= u_input.a.x), global3.b), min(~vec4<i32>(-2147483647i, -11736i, u_input.a.x, u_input.a.x) | reverseBits(vec4<i32>(-2147483647i, 2240i, 10244i, u_input.e)), ~func_3(vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], 133f), vec2<f32>(global4[_wgslsmith_index_u32(81873u, 23u)], -2457f), 0u, vec4<u32>(41611u, global3.a, u_input.d.x, 0u))) & vec4<i32>(u_input.e, reverseBits(_wgslsmith_mod_i32(u_input.a.x, -17558i)), ~(~28539i), -(~u_input.a.x)), u_input.a.x, 2147483647i << ((max(38948u, global3.a) << (_wgslsmith_clamp_u32(u_input.c.x >> (4294967295u % 32u), global3.a << (u_input.d.x % 32u), u_input.d.x >> (0u % 32u)) % 32u)) % 32u));
    global1 = array<vec4<bool>, 9>();
    let var_3 = Struct_5(5105i);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4708u, var_2.a.a, global3.a) & (34249u >> (0u % 32u)), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1185f)) - _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(global3.a, 23u)])))), global4[_wgslsmith_index_u32(4294967295u, 23u)])), global4[_wgslsmith_index_u32(54256u, 23u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(18311u, 23u)] * global4[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_f32(-var_4.x), -207f)))));
}

