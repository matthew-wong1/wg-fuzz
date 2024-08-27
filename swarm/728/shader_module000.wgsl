struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(2147483647i, -22933i, 2147483647i, 37846i), vec4<i32>(12278i, 2147483647i, -5436i, i32(-2147483648)), vec4<i32>(-1i, 38455i, 29257i, 0i), vec4<i32>(-1i, 41052i, 19225i, 29431i), vec4<i32>(-1i, 0i, 2147483647i, -31796i), vec4<i32>(14652i, 0i, i32(-2147483648), 8089i), vec4<i32>(-1872i, -31292i, 2147483647i, -1i), vec4<i32>(477i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(6962i, 1i, -860i, -47857i), vec4<i32>(-1i, -35078i, 0i, 16140i), vec4<i32>(15687i, 1i, 6222i, 29171i), vec4<i32>(16009i, -7497i, -13803i, 0i), vec4<i32>(2147483647i, 28385i, 2147483647i, 17517i), vec4<i32>(-1i, -43674i, 2147483647i, 18038i), vec4<i32>(0i, 33861i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 29579i, 68666i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 37217i), vec4<i32>(-1i, 0i, -37588i, 2147483647i), vec4<i32>(39542i, -1i, 18049i, 1294i), vec4<i32>(66158i, i32(-2147483648), -49646i, -1i));

var<private> global1: Struct_4 = Struct_4(true, Struct_3(Struct_1(vec3<f32>(1000f, -326f, 254f), vec3<u32>(13259u, 1u, 1u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), 69882u), Struct_3(Struct_1(vec3<f32>(-198f, -559f, 598f), vec3<u32>(57375u, 7356u, 4294967295u), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), 4294967295u), 22426u);

var<private> global2: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-6585i, 15360i, 50271i, -1i), vec4<i32>(-20401i, -48207i, 2147483647i, 40636i), vec4<i32>(-46169i, 1i, 17466i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 5464i, 1i, 65452i), vec4<i32>(i32(-2147483648), i32(-2147483648), -17003i, 0i), vec4<i32>(-3834i, 2147483647i, 39018i, 1i), vec4<i32>(31618i, 22202i, 1i, -31827i), vec4<i32>(-13571i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -1i, 1i, 2147483647i), vec4<i32>(2147483647i, 1i, -1i, 30018i), vec4<i32>(-1i, -25296i, 0i, -5676i), vec4<i32>(43637i, -4544i, -1i, -1i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), -22555i, -52566i), vec4<i32>(2147483647i, i32(-2147483648), 22853i, -38930i), vec4<i32>(1i, -1i, -57508i, 16786i), vec4<i32>(i32(-2147483648), -1i, -43223i, 0i), vec4<i32>(-25602i, -1i, 1i, 0i), vec4<i32>(45384i, 28856i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, i32(-2147483648), 25574i, 38513i), vec4<i32>(2147483647i, 0i, 15661i, i32(-2147483648)), vec4<i32>(-1i, 1i, 33597i, 1i), vec4<i32>(i32(-2147483648), -17505i, 8308i, -7124i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(-1i, 2147483647i, -32299i, 0i), vec4<i32>(-1i, 34224i, 1i, -37054i), vec4<i32>(0i, -30677i, i32(-2147483648), 0i), vec4<i32>(49490i, 48313i, 23105i, -18965i), vec4<i32>(i32(-2147483648), i32(-2147483648), 14599i, -1i), vec4<i32>(2147483647i, -33055i, -435i, -58238i), vec4<i32>(2147483647i, 12332i, 19730i, -54693i), vec4<i32>(0i, -7150i, i32(-2147483648), 4696i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    let var_0 = select(vec4<i32>(~u_input.c, u_input.a.x, 0i, _wgslsmith_mod_i32(max(u_input.c, firstLeadingBit(8324i)), (u_input.a.x ^ u_input.a.x) ^ 1i)), global0[_wgslsmith_index_u32(countOneBits(~arg_0.a.b.x), 20u)], !vec4<bool>(true, true, arg_1.x, any(arg_0.a.c.yzx)));
    var var_1 = Struct_4(!arg_1.x, arg_0, arg_0, _wgslsmith_add_u32(global1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b.x, arg_0.b, _wgslsmith_mod_u32(arg_0.a.b.x, 35290u), _wgslsmith_mult_u32(4294967295u, global1.b.b)), ~(~vec4<u32>(4294967295u, 6832u, 4294967295u, 8561u)))));
    let var_2 = Struct_1(global1.b.a.a, ~global1.b.a.b, select(arg_0.a.c, global1.b.a.c, select(global1.b.a.c, !(!vec4<bool>(var_1.b.a.c.x, true, var_1.b.a.d.x, true)), true)), vec4<bool>(arg_0.a.d.x, arg_0.a.c.x, false, 258f < var_1.b.a.a.x));
    var var_3 = 4294967295u;
    var var_4 = global1.c.a.d.wz;
    return _wgslsmith_sub_u32(~(~countOneBits(var_1.c.a.b.x)) ^ 19681u, 1u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    global1 = arg_2;
    global2 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_mod_u32(12739u, _wgslsmith_add_u32(func_3(arg_2.b, arg_2.b.a.d.xx), countOneBits(7620u)));
    var_0 = 17209u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1304f + 1413f)) * _wgslsmith_f_op_f32(f32(-1f) * -591f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a.a.x))), _wgslsmith_f_op_f32(-arg_2.b.a.a.x))));
    return global1.b.a.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<bool>) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_u32(56077u, ~arg_2.b.b);
    let var_2 = u_input.a.x;
    global2 = array<vec4<i32>, 32>();
    let var_3 = arg_2.c.a.b;
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_3 {
    global0 = array<vec4<i32>, 20>();
    var var_0 = global1.b.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(173f)) * 1294f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - 1042f));
    var var_2 = global1.c;
    let var_3 = min(_wgslsmith_mult_vec4_i32(vec4<i32>(func_4(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.a.x, u_input.a.x, 3973i), vec4<u32>(44734u, 66565u, 21742u, u_input.b.x), Struct_4(true, Struct_3(Struct_1(global1.c.a.a, u_input.b, global1.c.a.d, var_2.a.d), 39443u), global1.b, 4294967295u))), Struct_1(var_2.a.a, vec3<u32>(51105u, 31969u, 10249u), var_0.d, vec4<bool>(true, false, true, var_2.a.d.x)), Struct_4(global1.c.a.c.x, global1.b, global1.b, 1u), arg_0.zy), u_input.c, u_input.a.x, firstTrailingBit(u_input.a.x)), ~vec4<i32>(1i, 2147483647i, -37307i, func_4(var_0.a.x, Struct_1(global1.c.a.a, u_input.b, vec4<bool>(var_0.c.x, global1.a, var_2.a.d.x, arg_0.x), vec4<bool>(false, true, true, true)), Struct_4(false, global1.b, Struct_3(var_2.a, var_0.b.x), global1.c.a.b.x), var_2.a.d.wz))), global0[_wgslsmith_index_u32(~(~(var_0.b.x >> (1u % 32u))), 20u)]);
    return global1.c;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    return func_1(!global1.b.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.a.a.x, arg_0.b.a.a.x) - vec2<f32>(-428f, arg_1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, arg_1.a.x)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c.a.a.x, global1.c.a.a.x), global1.b.a.a.xz))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(all(global1.c.a.d), func_5(Struct_4((i32(-1i) * -2147483647i) >= _wgslsmith_add_i32(u_input.a.x, 68006i), func_1(vec4<bool>(global1.c.a.c.x, true, false, true), _wgslsmith_f_op_vec2_f32(-global1.b.a.a.zx)), global1.c, 0u), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.a.a + vec3<f32>(1776f, global1.b.a.a.x, global1.c.a.a.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(312f, global1.c.a.a.x, global1.b.a.a.x), global1.c.a.a)), max(~vec3<u32>(u_input.b.x, global1.c.b, 1u), vec3<u32>(6677u, 29540u, global1.d)), global1.c.a.c, global1.c.a.d)), Struct_3(Struct_1(global1.c.a.a, abs(vec3<u32>(global1.c.a.b.x, 33196u, 0u)), global1.c.a.c, func_5(Struct_4(false, global1.b, Struct_3(Struct_1(vec3<f32>(-402f, global1.b.a.a.x, -132f), global1.c.a.b, vec4<bool>(false, false, false, global1.b.a.d.x), global1.c.a.c), 23325u), global1.c.a.b.x), Struct_1(vec3<f32>(1201f, -1355f, 1427f), global1.b.a.b, global1.b.a.c, global1.c.a.d)).a.c), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(102675u, 1u, global1.d), global1.c.a.b.x), ~vec2<u32>(global1.c.a.b.x << (u_input.b.x % 32u), _wgslsmith_mod_u32(u_input.b.x, 30498u))));
    let var_0 = Struct_3(global1.b.a, 1u);
    global2 = array<vec4<i32>, 32>();
    let var_1 = abs(vec4<i32>(u_input.a.x, min(-11090i, _wgslsmith_div_i32(39205i, u_input.a.x)), u_input.c, select(u_input.a.x, 1i, true)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.b, 8789u, global1.b.b, 1u) << ((vec4<u32>(var_0.b, 29147u, var_0.b, global1.b.b) << (vec4<u32>(var_0.b, global1.d, 21395u, 38343u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(vec4<u32>(4294967295u, u_input.b.x, 0u, 44444u) ^ vec4<u32>(global1.d, var_0.b, 1u, var_0.b))) % vec4<u32>(32u)));
    global0 = array<vec4<i32>, 20>();
    let var_2 = vec2<bool>(global1.a, false);
    let var_3 = 31707i;
    let var_4 = Struct_4(var_0.a.d.x, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.a.x, global1.b.a.a.x, var_0.a.a.x))), vec3<u32>(func_1(vec4<bool>(global1.b.a.d.x, false, false, true), vec2<f32>(-1557f, var_0.a.a.x)).a.b.x, 29773u, ~15828u), global1.b.a.c, var_0.a.d), _wgslsmith_div_u32(global1.c.b ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 63413u, 4294967295u), global1.c.a.b), 1u)), func_1(!(!select(var_0.a.c, var_0.a.c, var_0.a.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.xy))))), ~(_wgslsmith_sub_u32(var_0.a.b.x << (1u % 32u), min(global1.c.a.b.x, u_input.b.x)) >> (~7636u % 32u)));
    let var_5 = vec3<bool>(any(select(vec3<bool>(var_0.a.c.x, true, true), var_4.b.a.c.zxz, var_4.c.a.d.zxz)), true, func_1(select(select(!vec4<bool>(var_0.a.d.x, true, false, var_2.x), !var_4.c.a.c, all(vec3<bool>(global1.b.a.d.x, true, var_2.x))), vec4<bool>(false, !var_4.c.a.c.x, true, false), any(!vec3<bool>(var_4.c.a.d.x, false, var_0.a.d.x))), var_4.b.a.a.zy).a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -var_3, global0[_wgslsmith_index_u32(~0u, 20u)]);
}

