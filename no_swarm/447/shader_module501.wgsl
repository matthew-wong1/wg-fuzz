struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 0u), vec2<u32>(25560u, 100258u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 50265u), vec2<u32>(10114u, 33572u), vec2<u32>(0u, 44044u), vec2<u32>(27557u, 4294967295u), vec2<u32>(24107u, 4294967295u), vec2<u32>(15403u, 1u), vec2<u32>(24277u, 4294967295u), vec2<u32>(2851u, 94081u), vec2<u32>(1u, 0u), vec2<u32>(29792u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 75314u), vec2<u32>(2261u, 1u));

var<private> global1: i32 = -15783i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = Struct_1(true, ~2147483647i >> (0u % 32u), 0u);
    global0 = array<vec2<u32>, 16>();
    global1 = 29599i;
    global0 = array<vec2<u32>, 16>();
    return vec2<u32>(1u, 30909u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_3(all(select(!vec3<bool>(false, true, var_0.b.a), select(vec3<bool>(var_0.c.a, arg_0.c.a, false), vec3<bool>(false, arg_0.c.a, true), vec3<bool>(var_0.c.a, var_0.b.a, true)), !vec3<bool>(arg_0.d, var_0.d, false))) | all(select(!vec4<bool>(var_0.d, false, arg_0.b.a, true), select(vec4<bool>(false, true, var_0.b.a, false), vec4<bool>(arg_0.c.a, var_0.b.a, false, arg_0.c.a), false), select(true, false, arg_0.d))));
    let var_2 = arg_0;
    global0 = array<vec2<u32>, 16>();
    global1 = var_0.c.b;
    return _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(abs(2147483647i), -arg_0.b.b, u_input.a.x)), ~(-2147483647i)), _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), _wgslsmith_sub_i32(min(var_0.b.b, -24046i), 24333i) & arg_0.b.b));
}

fn func_1() -> bool {
    global1 = 2147483647i;
    var var_0 = _wgslsmith_mult_vec4_i32(-vec4<i32>(func_3(Struct_2(vec4<f32>(-392f, 1292f, -516f, 203f), Struct_1(true, u_input.c.x, 7735u), Struct_1(false, 19282i, 66338u), true, vec2<u32>(37712u, 0u)), 0u, func_2(u_input.c.x, Struct_1(true, u_input.a.x, 70227u), Struct_3(false))), u_input.b, -u_input.a.x, _wgslsmith_mod_i32(countOneBits(u_input.c.x), u_input.c.x)), ~vec4<i32>(u_input.b, -countOneBits(u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(39798i, u_input.a.x, i32(-1i) * -1i)));
    let var_1 = ~(0u & ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~14988u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true, func_1() || (true && select(false, false, false)), true, !func_1()));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-242f)), 1318f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(840f - -523f) * _wgslsmith_f_op_f32(trunc(174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -577f), Struct_1(false, -2147483647i, abs(0u)), Struct_1(all(vec4<bool>(var_0, var_0, any(vec2<bool>(var_0, var_0)), all(vec4<bool>(var_0, var_0, var_0, true)))), 6269i, _wgslsmith_add_u32(1u, abs(_wgslsmith_mult_u32(91373u, 0u)))), ~_wgslsmith_mult_i32(-u_input.c.x, -8672i) <= -min(countOneBits(u_input.b), u_input.c.x >> (67808u % 32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(19754u, 4294967295u, 14985u, 1u)), ~vec4<u32>(40757u, 4294967295u, 0u, 14566u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 0u), _wgslsmith_mod_u32(4294967295u, 20380u), 1014u), _wgslsmith_div_u32(36796u, ~1u))));
    global1 = -(~(-4632i));
    var var_2 = var_1.c;
    global1 = var_1.c.b;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(661f, var_1.a.x) + 1287f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_1.a.x)))), _wgslsmith_f_op_f32(-1073f - _wgslsmith_div_f32(var_1.a.x, 1000f)))), Struct_1(!any(vec4<bool>(true, var_2.a, false, true)), select(u_input.b, 1i, any(!vec4<bool>(true, var_0, true, var_1.d))), 0u), var_1.c, ~(~var_1.c.c) != ~1u, ~var_1.e);
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 217f) - _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)), -992f)), _wgslsmith_div_f32(var_1.a.x, var_1.a.x), -538f), var_1.c, var_1.b, var_1.c.a, global0[_wgslsmith_index_u32(~var_1.b.c, 16u)]);
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))) - 1000f));
}

