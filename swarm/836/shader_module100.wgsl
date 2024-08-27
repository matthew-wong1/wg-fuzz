struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(global1.a), global1.a), ~global1.a.x, 1u, 0u), u_input.c, global1.e, true, Struct_1(u_input.c.x, _wgslsmith_div_vec3_i32(vec3<i32>(0i, reverseBits(u_input.a.x), -2147483647i), u_input.c)));
    global1 = Struct_2(firstLeadingBit(vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(9663u, 7682u), global1.a.x), 4294967295u << ((u_input.b.x >> (global1.a.x % 32u)) % 32u), ~44077u)), u_input.c, Struct_1(_wgslsmith_add_i32(-u_input.c.x, -(-2147483647i << (u_input.b.x % 32u))), abs(u_input.c)), all(!select(vec3<bool>(true, arg_0, true), vec3<bool>(true, true, true), !vec3<bool>(global1.d, global1.d, true))), global1.e);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.x))))))), -370f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -426f))))), global0.x);
    var var_0 = Struct_1((firstTrailingBit(firstTrailingBit(global1.b.x)) >> (~global1.a.x % 32u)) >> (global1.a.x % 32u), -vec3<i32>(-(global1.c.a & u_input.a.x), select(~0i, _wgslsmith_dot_vec2_i32(global1.c.b.xy, global1.c.b.xz), -2147483647i > global1.c.a), ~(~global1.e.a)));
    var var_1 = !select(select(!(!vec3<bool>(true, true, arg_0)), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, true), true), select(vec3<bool>(false, true, arg_0), vec3<bool>(true, true, arg_0), false), !arg_0), vec3<bool>(all(vec3<bool>(false, arg_0, false)), -154f >= global0.x, u_input.c.x <= -69401i)), !(!vec3<bool>(true, global1.d, true)), vec3<bool>(!(!global1.d), true, arg_0));
    return global1.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_3 {
    global1 = Struct_2(func_3(false), vec3<i32>(abs(~u_input.a.x), firstLeadingBit(abs(_wgslsmith_sub_i32(-6667i, global1.e.a))), u_input.c.x), global1.e, all(select(!select(vec2<bool>(global1.d, false), vec2<bool>(global1.d, false), vec2<bool>(global1.d, global1.d)), vec2<bool>(1u == arg_0.x, global1.d), vec2<bool>(true, any(vec2<bool>(global1.d, false))))), global1.e);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-656f, 200f, 336f, global0.x), vec4<f32>(349f, global0.x, global0.x, -1664f), global1.d)) - _wgslsmith_div_vec4_f32(vec4<f32>(728f, global0.x, global0.x, 1242f), vec4<f32>(global0.x, global0.x, 184f, global0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(global0.x - 1000f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 435f) + _wgslsmith_f_op_f32(-global0.x)), var_0.x, 124f)), !(!vec4<bool>(!global1.d, any(vec2<bool>(global1.d, global1.d)), any(vec3<bool>(true, global1.d, true)), true))));
    let var_1 = ~reverseBits(global1.a.xw);
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-451f - var_0.x), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) - global0.x), var_0.x, global0.x)));
    return Struct_3(global1.c);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(vec2<u32>(reverseBits(4294967295u), _wgslsmith_add_u32(~u_input.b.x, 22041u)), _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b.x, global1.e.a, -2147483647i, u_input.c.x), vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, global1.c.a), vec4<i32>(global1.b.x, u_input.a.x, 0i, u_input.a.x)))), -2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(global1.e.b.x, global1.c.a))));
    let var_1 = ~u_input.b.x;
    var var_2 = select(vec4<bool>(!global1.d, var_0.a.a > _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, var_0.a.b.x), _wgslsmith_sub_i32(0i, 13326i)), !(all(vec3<bool>(global1.d, true, true)) && global1.d), global1.d), !vec4<bool>(global1.d, all(!vec2<bool>(global1.d, global1.d)), false && (global1.e.a == u_input.c.x), global1.d), select(vec4<bool>(true, all(select(vec2<bool>(global1.d, true), vec2<bool>(false, true), vec2<bool>(global1.d, global1.d))), false, true), vec4<bool>(any(!vec2<bool>(true, global1.d)), (u_input.a.x >= 1104i) & !global1.d, true, false), false));
    var var_3 = global1.a.yzy;
    let var_4 = select(!vec3<bool>(global1.d, global1.d, global1.d), var_2.ywx, select(vec3<bool>(true, false, !all(vec2<bool>(global1.d, global1.d))), !(!select(var_2.wzz, vec3<bool>(false, var_2.x, var_2.x), var_2.x)), global1.d));
    return Struct_2(vec4<u32>(global1.a.x & global1.a.x, select(_wgslsmith_mod_u32(countOneBits(u_input.b.x), 0u), 0u, any(var_2.xxw)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_3.zy, u_input.b), global1.a.x | 7672u), 4294967295u), -(~vec3<i32>(_wgslsmith_clamp_i32(0i, 0i, u_input.c.x), var_0.a.a | var_0.a.b.x, 18627i)), var_0.a, global1.d, global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.yzw - vec3<f32>(-930f, global0.x, global0.x))) - vec3<f32>(-417f, -837f, -362f)));
    var var_2 = Struct_5(Struct_4(func_2(~vec2<u32>(4294967295u, u_input.b.x), 9288i).a), global1.a, func_2(~u_input.b, _wgslsmith_mod_i32(global1.b.x, -(global1.c.b.x | -1i))), Struct_3(func_1().c), _wgslsmith_add_vec3_i32(func_2(vec2<u32>(var_0.a.x, 4174u) | ~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.e.b.x, global1.e.a, 0i, global1.c.b.x), reverseBits(vec4<i32>(-1i, var_0.e.a, var_0.b.x, var_0.e.a)))).a.b, select(-firstTrailingBit(vec3<i32>(var_0.c.a, 0i, 59743i)), reverseBits(global1.c.b), true)));
    let var_3 = var_2.e.x;
    let var_4 = false;
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(-39613i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-var_5.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_5.a.a, 2147483647i, var_2.e.x), vec4<i32>(-2147483647i, global1.c.b.x, var_5.a.b.x, 1i))), -2147483647i, -5868i, ~abs(global1.e.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(min(2147483647i, global1.c.a), -var_2.c.a.b.x, var_5.a.b.x, 2147483647i), vec4<i32>(-37105i, var_5.a.b.x, -2147483647i, u_input.c.x) ^ vec4<i32>(global1.b.x, u_input.a.x, u_input.a.x, global1.c.b.x))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u, var_0.a.x, 6467u) ^ 1u, 4294967295u, 0u), vec3<u32>(_wgslsmith_mult_u32(var_0.a.x, 4294967295u) | 56346u, 50569u, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(var_0.a.x, var_2.b.x)))));
}

