struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(i32(-2147483648), 30600i, 0i, 6983i), vec4<i32>(-7300i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(0i, 1i, -1i, 1i), vec4<i32>(1i, 37994i, 0i, 0i), vec4<i32>(-23561i, -1i, 2147483647i, 56853i), vec4<i32>(13609i, i32(-2147483648), 55366i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 11701i, i32(-2147483648)), vec4<i32>(-32762i, i32(-2147483648), 2147483647i, -2136i), vec4<i32>(-44313i, 11791i, 0i, 1i));

var<private> global1: Struct_4;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(-1818f));
    var var_1 = Struct_4(global1.a, ~(global1.a.a.a.wzx << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.a.a.x, 7792u, 4294967295u), vec3<u32>(37143u, 1u, 4294967295u), vec3<u32>(0u, global1.b.x, arg_0)) >> (firstLeadingBit(global1.a.a.a.xxy) % vec3<u32>(32u))) % vec3<u32>(32u))), false, global1.a.a.d, select(global1.e, !vec4<bool>(true, all(global1.a.d.xz), true, global1.e.x | true), select(vec4<bool>(true, global1.e.x, !global1.c, !global1.c), select(vec4<bool>(global1.a.a.c.x, true, true, global1.c), global1.e, true), global1.e)));
    var_1 = Struct_4(var_1.a, vec3<u32>(reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, 4294967295u), vec2<u32>(4294967295u, global1.b.x)), ~1u)), u_input.b.x, 1u), false, -1202f, vec4<bool>(true, all(global1.e), all(!var_1.e), !(!global1.e.x)));
    let var_2 = global1.a;
    var var_3 = var_1.a.a;
    return ~reverseBits(~(select(vec3<u32>(var_2.a.a.x, var_1.b.x, var_1.a.a.a.x), vec3<u32>(var_1.b.x, var_2.a.a.x, 62236u), var_3.c.x) & vec3<u32>(u_input.b.x, 28042u, arg_0)));
}

fn func_2() -> Struct_3 {
    var var_0 = -abs(u_input.a.yw);
    global1 = Struct_4(global1.a, global1.b, true, global1.a.a.d, !(!global1.e));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x)), 0u), u_input.b.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 84145u)) ^ _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(global1.b, global1.b), func_3(~7901u)), abs(max(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(4294967295u, 23637u, global1.a.a.a.x) >> (global1.b % vec3<u32>(32u)))));
    var_0 = u_input.a.yx;
    global0 = array<vec4<i32>, 9>();
    return Struct_3(global1.e.xy, global1.c, _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(func_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(39396u, var_1.x, 4294967295u, var_1.x), vec4<u32>(u_input.b.x, u_input.b.x, global1.b.x, global1.a.a.a.x))).x, 9u)], select(countOneBits(u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.a.a.a.x & u_input.b.x, u_input.b.x), 9u)], select(vec4<bool>(true, global1.a.d.x, global1.a.a.c.x, false), vec4<bool>(false, true, global1.e.x, global1.c), vec4<bool>(global1.a.d.x, global1.a.d.x, global1.e.x, global1.a.d.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    var var_0 = 131995u;
    return Struct_4(global1.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.x, 28295u, 4294967295u), arg_1.a.zyx, max(vec3<u32>(19507u, global1.a.a.a.x, 46649u), max(abs(global1.b), ~global1.a.a.a.zww))), select(-27460i <= -_wgslsmith_mult_i32(arg_2.c.x, u_input.c), (-2147483647i & global1.a.a.b) == (-arg_1.b & 10374i), !arg_0.a.x), -402f, !vec4<bool>(true, global1.c, !arg_2.a.x, ~arg_1.b >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global1.a.a.b, arg_0.c.x), vec3<i32>(2147483647i, 1i, global1.a.a.b))));
}

fn func_1() -> Struct_4 {
    global0 = array<vec4<i32>, 9>();
    let var_0 = Struct_5(global1.c, _wgslsmith_sub_vec3_u32(global1.a.a.a.yyw, vec3<u32>(~global1.a.a.a.x, global1.b.x, 4294967295u)), ~(~_wgslsmith_div_u32(global1.b.x, 72089u >> (0u % 32u))));
    var var_1 = global1.a.d.x;
    var var_2 = -vec2<i32>(~u_input.c | -38864i, -21542i);
    let var_3 = global1.a;
    return func_4(func_2(), var_3.a, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = func_1();
    let var_2 = var_1.a.a.a;
    var_1 = func_4(func_2(), Struct_1(global1.a.a.a, var_1.a.a.b, global1.a.d.zz, -622f), Struct_3(vec2<bool>(var_1.c, !(!var_1.c)), false, _wgslsmith_add_vec4_i32(~(-vec4<i32>(var_1.a.b, 34906i, global1.a.a.b, u_input.a.x)), reverseBits(vec4<i32>(75280i, var_0, -16250i, 0i)))));
    var var_3 = !global1.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_1().a.a.b, _wgslsmith_add_i32(-2147483647i, ~_wgslsmith_clamp_i32(-2147483647i, var_1.a.a.b, 0i))), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, 2147483647i) & u_input.a.zz, vec2<i32>(~(-1i), select(var_0, u_input.c, var_1.c)))), min(4294967295u, 42596u), vec3<f32>(_wgslsmith_div_f32(global1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1608f)), _wgslsmith_f_op_f32(438f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.d - -520f) * var_1.a.a.d)), -1238f));
}

