struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global2: array<i32, 20>;

var<private> global3: Struct_2 = Struct_2(Struct_1(1u, vec4<i32>(2147483647i, -30922i, 53063i, 4898i), 0i), true, Struct_1(1u, vec4<i32>(0i, 2147483647i, -4953i, -1997i), -20214i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec4<i32> {
    global2 = array<i32, 20>();
    let var_0 = arg_1.yy;
    var var_1 = ~select(~u_input.a.wx, ~(~_wgslsmith_add_vec2_u32(u_input.a.zy, u_input.a.wx)), all(select(vec3<bool>(global3.b, global3.b, global3.b), vec3<bool>(global3.b, false, true), all(vec3<bool>(false, true, false)))));
    global3 = Struct_2(global3.a, false, global3.c);
    var var_2 = max(global3.a.b.x, _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(~global2[_wgslsmith_index_u32(~var_1.x, 20u)], max(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-11004i, global3.a.b.x), global3.c.b.zy)))));
    return global3.a.b;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(178f, -864f), global0[_wgslsmith_index_u32(~2803u, 13u)])), vec2<f32>(-172f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1491f, -288f))), select(vec2<bool>(true, select(true, false, false)), global1[_wgslsmith_index_u32(15304u, 31u)], select(!global3.b, false, true)))), global0[_wgslsmith_index_u32(40508u, 13u)]));
    global2 = array<i32, 20>();
    var var_1 = _wgslsmith_mod_vec3_i32(global3.c.b.xxw, _wgslsmith_mult_vec3_i32(vec3<i32>(global3.c.c, -2147483647i, 2147483647i), global3.c.b.zxx | vec3<i32>(2746i, _wgslsmith_div_i32(41853i, -3909i), ~global3.c.c)));
    global1 = array<vec2<bool>, 31>();
    var var_2 = u_input.a;
    return Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(10438u, 32212u), ~u_input.a.zy), (vec4<i32>(-1i) * -func_3(global3.c.c, vec4<f32>(-717f, var_0.x, var_0.x, var_0.x))) << (~((vec4<u32>(global3.c.a, 25987u, u_input.a.x, 1u) & vec4<u32>(14636u, 1u, u_input.a.x, global3.c.a)) << (abs(vec4<u32>(0u, 21519u, 48944u, global3.c.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), -35238i);
}

fn func_1(arg_0: Struct_5) -> Struct_2 {
    let var_0 = Struct_4(func_2(false));
    let var_1 = true;
    return arg_0.b;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global2 = array<i32, 20>();
    var var_0 = Struct_4(global3.c);
    let var_1 = Struct_3(18263i, Struct_1(firstLeadingBit(global3.c.a | 1u), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.c.b.x, firstTrailingBit(0i), global2[_wgslsmith_index_u32(62364u & u_input.a.x, 20u)], 0i), _wgslsmith_mult_vec4_i32(arg_0.c.b, arg_0.c.b) ^ firstLeadingBit(vec4<i32>(-58095i, arg_0.a.c, arg_0.a.b.x, -2147483647i))), -1i));
    var var_2 = Struct_5(func_1(Struct_5(arg_0, func_1(Struct_5(Struct_2(var_1.b, false, arg_0.c), Struct_2(var_0.a, global3.b, var_1.b), Struct_3(-2147483647i, Struct_1(0u, vec4<i32>(global3.a.b.x, -50674i, 0i, arg_0.a.b.x), 2147483647i)))), Struct_3(-60917i, var_1.b))), arg_0, var_1);
    var var_3 = (-(i32(-1i) * -38205i) == global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global3.c.a, arg_0.c.a), 20u)]) || var_2.b.b;
    return Struct_4(var_0.a);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = -2004f;
    var var_1 = !vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(arg_0.a.a, 31u)])), global3.b);
    let var_2 = Struct_4(global3.a);
    var var_3 = var_2.a.b;
    var var_4 = ~13420u;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(Struct_1(_wgslsmith_add_u32(min(~u_input.a.x, global3.a.a), ~(~45843u)), select(_wgslsmith_add_vec4_i32(global3.c.b, global3.a.b), countOneBits(vec4<i32>(global3.c.b.x, 51775i, -7578i, 22390i)), true), 0i), false, func_5(func_4(func_1(Struct_5(Struct_2(Struct_1(global3.c.a, vec4<i32>(global3.c.c, global2[_wgslsmith_index_u32(35847u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], 1i), 2147483647i), global3.b, Struct_1(0u, vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(21887u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(8285u, 20u)]), global2[_wgslsmith_index_u32(4294967295u, 20u)])), Struct_2(global3.c, false, global3.c), Struct_3(global3.c.c, global3.c))))));
    global1 = array<vec2<bool>, 31>();
    var var_0 = _wgslsmith_add_vec4_i32(-abs(vec4<i32>(-1i) * -global3.c.b), vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(17614u), select(39793u, 47374u, global3.b) & abs(1u)), 20u)], ~41337i, -(-global2[_wgslsmith_index_u32(u_input.a.x, 20u)] << (global3.c.a % 32u)), -1i | global3.a.c));
    let var_1 = ~((_wgslsmith_add_u32(~global3.a.a, 30788u) >> (_wgslsmith_clamp_u32(31787u, _wgslsmith_div_u32(global3.a.a, 13362u), global3.c.a >> (global3.a.a % 32u)) % 32u)) ^ (max(u_input.a.x, func_1(Struct_5(Struct_2(global3.c, global3.b, global3.a), Struct_2(global3.a, true, global3.c), Struct_3(global2[_wgslsmith_index_u32(0u, 20u)], global3.c))).c.a) & ~37926u));
    var var_2 = global3.c.b;
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(func_2(global3.b).b, global3.c.b), 0i, -49621i) | vec3<i32>(_wgslsmith_mult_i32(func_2(global3.b).c, var_0.x | var_2.x) | func_3(func_4(Struct_2(global3.c, false, Struct_1(18771u, vec4<i32>(var_2.x, -1i, 49685i, -55506i), global2[_wgslsmith_index_u32(1u, 20u)]))).a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(966f, -165f, 118f, -977f))).x, abs(-2147483647i), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, global0[_wgslsmith_index_u32(~30467u, 13u)]);
}

