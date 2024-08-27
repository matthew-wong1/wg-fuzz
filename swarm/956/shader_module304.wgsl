struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(Struct_4(vec4<i32>(1i, 1i, i32(-2147483648), -38315i)), Struct_4(vec4<i32>(17495i, 1i, 2147483647i, 70646i)), Struct_3(Struct_1(101f, vec3<bool>(false, false, true))), 0i), Struct_5(Struct_4(vec4<i32>(1i, 2147483647i, -34993i, -1i)), Struct_4(vec4<i32>(20647i, -13145i, -6095i, 2147483647i)), Struct_3(Struct_1(488f, vec3<bool>(true, false, false))), -24522i), Struct_5(Struct_4(vec4<i32>(-28234i, 1i, 1467i, 1i)), Struct_4(vec4<i32>(i32(-2147483648), 0i, 37595i, -15575i)), Struct_3(Struct_1(1000f, vec3<bool>(true, false, true))), -10126i), Struct_5(Struct_4(vec4<i32>(16431i, 1i, 3889i, 1i)), Struct_4(vec4<i32>(31772i, 36457i, 1i, 0i)), Struct_3(Struct_1(-945f, vec3<bool>(true, false, true))), i32(-2147483648)), Struct_5(Struct_4(vec4<i32>(-25284i, -12759i, 1i, -31505i)), Struct_4(vec4<i32>(2147483647i, 1i, -16118i, i32(-2147483648))), Struct_3(Struct_1(-1998f, vec3<bool>(false, false, false))), 46884i), Struct_5(Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i)), Struct_4(vec4<i32>(14943i, 2147483647i, -12503i, 30158i)), Struct_3(Struct_1(-2268f, vec3<bool>(true, false, false))), i32(-2147483648)), Struct_5(Struct_4(vec4<i32>(8989i, i32(-2147483648), 32331i, 27292i)), Struct_4(vec4<i32>(31710i, 2147483647i, i32(-2147483648), 48278i)), Struct_3(Struct_1(-842f, vec3<bool>(true, true, true))), -35931i), Struct_5(Struct_4(vec4<i32>(i32(-2147483648), -30536i, i32(-2147483648), 0i)), Struct_4(vec4<i32>(i32(-2147483648), 0i, 0i, 1i)), Struct_3(Struct_1(1657f, vec3<bool>(true, true, true))), 1i), Struct_5(Struct_4(vec4<i32>(-43066i, 44806i, -10903i, -36638i)), Struct_4(vec4<i32>(-1i, 22020i, -1i, -17823i)), Struct_3(Struct_1(1246f, vec3<bool>(true, true, false))), 2147483647i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: u32) -> vec4<u32> {
    let var_0 = 16016i << (reverseBits(u_input.d.x) % 32u);
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(-1i) * -u_input.b), u_input.b);
    global1 = array<Struct_5, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1616f)), -131f));
    let var_3 = u_input.d;
    return global0[_wgslsmith_index_u32(~48120u, 3u)];
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<u32>, 3>();
    global1 = array<Struct_5, 9>();
    global1 = array<Struct_5, 9>();
    global0 = array<vec4<u32>, 3>();
    global1 = array<Struct_5, 9>();
    return Struct_3(Struct_1(-1758f, vec3<bool>(any(vec4<bool>(true, true, true, true)), false, false)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    global1 = array<Struct_5, 9>();
    var var_0 = arg_1;
    var var_1 = func_1(Struct_2(func_2().a), any(!select(var_0.a.b.xx, select(vec2<bool>(arg_1.a.b.x, true), vec2<bool>(true, arg_1.a.b.x), vec2<bool>(arg_1.a.b.x, true)), true)), true, ~u_input.d.x ^ 12168u).wyx;
    var var_2 = countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(select(~arg_3, ~arg_3, select(arg_1.a.b.x, false, true)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), arg_3)), ~46849u, arg_3.x, select(_wgslsmith_dot_vec2_u32(arg_3.xx >> (vec2<u32>(1u, arg_3.x) % vec2<u32>(32u)), countOneBits(u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x) | vec2<u32>(u_input.d.x, arg_3.x), vec2<u32>(1u, u_input.d.x) << (arg_3.zx % vec2<u32>(32u))), any(!vec2<bool>(var_0.a.b.x, false)))));
    var_2 = vec4<u32>(106361u, min(~arg_3.x, 1u) | u_input.d.x, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.x, 4294967295u), ~u_input.d.x | 51032u), ~var_2.x);
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a.a), !var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec4_u32(func_1(Struct_2(Struct_1(-173f, vec3<bool>(false, true, false))), false & all(vec2<bool>(true, true)), true, u_input.d.x), global0[_wgslsmith_index_u32(0u ^ _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(1u, u_input.d.x))), 3u)]);
    var var_1 = func_3(Struct_4(~max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.b.x, -1i), vec4<i32>(u_input.a, u_input.a, -29981i, 0i)), vec4<i32>(u_input.a, -7208i, u_input.a, u_input.b.x))), func_2(), 1i, vec3<u32>(var_0.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_0.wyz, vec3<u32>(75066u, 0u, u_input.d.x)), u_input.d.x, u_input.d.x >> (var_0.x % 32u)) & ~_wgslsmith_div_u32(u_input.d.x, 0u), _wgslsmith_div_u32(71645u, 62168u)));
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-4699i, -(~_wgslsmith_div_i32(u_input.a, -18397i)), u_input.a, u_input.c), vec4<i32>(-2147483647i, -u_input.a, -2147483647i, _wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(u_input.a, -4022i, 48835i, u_input.a)), ~vec4<i32>(27069i, u_input.c, u_input.b.x, -71915i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, 40089i, u_input.a, u_input.b.x), vec4<i32>(-9528i, 24500i, -31483i, u_input.c) ^ vec4<i32>(-2147483647i, u_input.c, 1i, 21619i)))));
    var var_3 = u_input.c;
    var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, ~(-1i)), 0i);
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.d), ~u_input.d), abs(1u));
    let var_5 = ~1u;
    var var_6 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1684f, var_1.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-186f, -541f, -873f), vec3<f32>(var_1.a, var_1.a, -472f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, -574f, -3261f, -894f)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))));
}

