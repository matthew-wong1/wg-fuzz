struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-1450f, 1172f, -1000f, -836f, -658f, 441f, 2199f, -1000f, 1219f, 1734f, -192f, -1543f, 429f, 1000f, 427f, -144f, 1205f, -1556f, 968f, 338f, 1000f, 197f, 1000f, 987f, 118f);

var<private> global1: array<f32, 18>;

var<private> global2: array<Struct_2, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global2 = array<Struct_2, 3>();
    global0 = array<f32, 25>();
    var var_0 = any(select(vec4<bool>(any(vec4<bool>(true, arg_0, false, arg_0)) && (arg_1 >= 2058u), false, arg_0, (28524i << (u_input.b.x % 32u)) < reverseBits(-1i)), select(!vec4<bool>(false, false, arg_0, false), !select(vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, arg_0, arg_0)), _wgslsmith_f_op_f32(abs(arg_2.b.x)) > _wgslsmith_f_op_f32(-678f * global0[_wgslsmith_index_u32(34771u, 25u)])), (arg_2.b.x != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4485u, 18u)])) || true));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.b.x))));
    return 23363u;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<f32> {
    return vec4<f32>(1304f, _wgslsmith_f_op_f32(step(1555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-666f * -313f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 25u)] * 1022f))))), global0[_wgslsmith_index_u32(reverseBits(1u), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -406f))))));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global0 = array<f32, 25>();
    global2 = array<Struct_2, 3>();
    global0 = array<f32, 25>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 1000f, global0[_wgslsmith_index_u32(36925u, 25u)], 1812f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(484f, global0[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(55445u, 18u)], -1298f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, -446f, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(61659u, 25u)], Struct_1(vec4<f32>(-1238f, global0[_wgslsmith_index_u32(u_input.a, 25u)], -1000f, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec2<f32>(409f, global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), arg_0, vec3<u32>(30866u, 4294967295u, 0u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, global1[_wgslsmith_index_u32(107658u, 18u)], 706f, global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-722f, global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(u_input.b.x, 18u)], -209f)), select(vec4<bool>(arg_0.a, arg_0.a, true, false), vec4<bool>(true, true, arg_0.a, false), vec4<bool>(true, arg_0.a, true, arg_0.a)))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 25u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(939f - 360f), -203f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)), 184f))));
    var var_1 = var_0.a;
    return ~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -15729i, 30702i, -1i), abs(vec4<i32>(37390i, 21529i, -17261i, -40285i)))) >> (vec4<u32>(max(_wgslsmith_clamp_u32(1u, u_input.a, u_input.b.x | 0u), _wgslsmith_dot_vec2_u32(min(u_input.b, u_input.b), countOneBits(u_input.b))), max(countOneBits(0u), ~u_input.a), 4294967295u, ~17023u) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = 1833f;
    let var_1 = vec4<bool>(true, true, true, true);
    global2 = array<Struct_2, 3>();
    let var_2 = global2[_wgslsmith_index_u32(~u_input.a, 3u)];
    var var_3 = ~_wgslsmith_add_vec2_u32(u_input.b, u_input.b);
    return global2[_wgslsmith_index_u32(~52502u, 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, func_1(true, 0u, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -900f, global0[_wgslsmith_index_u32(u_input.a, 25u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], 193f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-117f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)] - 707f))))))), 3u)];
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 25u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(45222u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))), _wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-196f - _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], var_0.a))) + _wgslsmith_f_op_f32(trunc(-1899f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(995u, 18u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] + global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, u_input.a, u_input.b.x), 25u)]), vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~5061u), 18u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~63022u, _wgslsmith_dot_vec4_u32(vec4<u32>(5759u, 4294967295u, u_input.a, 26128u), vec4<u32>(106461u, 95762u, 1u, 33475u))), 25u)])));
    var var_2 = global2[_wgslsmith_index_u32(56136u, 3u)];
    var_2 = func_4(_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-45387i, -1i, -18871i, 0i), vec4<i32>(-1i, -1i, 2147483647i, -1i)), vec4<i32>(38353i, -19179i, 611i, -41159i)), _wgslsmith_div_vec4_i32(func_2(Struct_2(var_2.a)) & (vec4<i32>(-46642i, 28526i, 0i, 0i) << (vec4<u32>(u_input.b.x, 7293u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(-17911i, -37877i, 1i, _wgslsmith_mod_i32(1i, 1i)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 613f, 883f, -274f), vec4<f32>(-349f, 233f, -109f, -430f), true)))), var_1.a.xy), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.a))), vec2<f32>(1398f, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 18u)]))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(-810f, -769f, var_1.b.x, global0[_wgslsmith_index_u32(1u, 25u)]))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), 431f))));
    let var_3 = false;
    global1 = array<f32, 18>();
    let var_4 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 18u)], var_1.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 25u)])))), _wgslsmith_f_op_f32(floor(-944f)), 381f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(601f, 1750f, global1[_wgslsmith_index_u32(u_input.b.x, 18u)])) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], -778f, -247f)), var_4.a.yzz)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(20907i, -21288i, -2147483647i, -19688i), _wgslsmith_add_vec4_i32(min(vec4<i32>(-1715i, -1i, -1i, 24320i), vec4<i32>(1i, 2147483647i, 1i, 3730i)), vec4<i32>(-1i, -1i, -8234i, 1i) >> (vec4<u32>(7929u, u_input.b.x, 1u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(32044u, 25u)], global1[_wgslsmith_index_u32(3712u, 18u)], var_1.a.x, 1000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_1.b.x, var_4.b.x, 286f))))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a, 25u)]))), _wgslsmith_f_op_f32(1288f - -1000f), _wgslsmith_f_op_f32(step(411f, var_4.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) + _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)))), vec3<u32>(17840u, ~_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(u_input.b.x, 26590u, 41720u), _wgslsmith_clamp_u32(1u, u_input.b.x, 0u)), 0u));
}

