struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-731f, 1200f, 1760f, 1000f), vec4<f32>(-512f, 534f, 643f, 1026f), vec4<f32>(-1544f, 656f, -173f, -1623f), vec4<f32>(-344f, -609f, -1054f, -1745f), vec4<f32>(683f, -493f, -1000f, -3348f), vec4<f32>(-1037f, -978f, 1560f, -1000f), vec4<f32>(973f, -664f, 715f, -1138f), vec4<f32>(2031f, -296f, -1118f, -1000f), vec4<f32>(-1219f, 107f, 290f, 817f), vec4<f32>(265f, 942f, -986f, -955f), vec4<f32>(602f, 1811f, -1000f, 455f), vec4<f32>(-1225f, 269f, -143f, 544f), vec4<f32>(-133f, 788f, 102f, -1000f), vec4<f32>(-1685f, -1469f, 1421f, 1072f), vec4<f32>(461f, -1529f, 1266f, 111f), vec4<f32>(646f, 797f, -1000f, -139f), vec4<f32>(-191f, -356f, 1227f, 936f), vec4<f32>(1000f, -803f, -3268f, 326f), vec4<f32>(-846f, -567f, -298f, -623f), vec4<f32>(1884f, -646f, -896f, -439f), vec4<f32>(1023f, -545f, 1000f, 1182f), vec4<f32>(-1573f, 265f, 534f, 1772f), vec4<f32>(1856f, -1541f, -1533f, -280f), vec4<f32>(-365f, 448f, -321f, -307f), vec4<f32>(-618f, -1275f, -327f, -265f), vec4<f32>(788f, -149f, -1055f, -1130f), vec4<f32>(-648f, -1780f, 642f, -2070f), vec4<f32>(450f, -368f, 1046f, -184f), vec4<f32>(681f, 2264f, -2770f, -157f), vec4<f32>(-926f, 1491f, -417f, 1056f));

var<private> global1: f32 = -730f;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(false, true), Struct_1(-624f, true, 22940u));

var<private> global3: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_2(select(vec2<bool>(false, true), global2.a, true), Struct_1(-316f, false, u_input.a.x));
    var var_1 = vec4<bool>(true, any(global2.a), all(vec3<bool>(var_0.a.x, all(vec4<bool>(false, false, var_0.b.b, global2.b.b)), ~27957u != ~var_0.b.c)), ~u_input.c < -1i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1159f * var_0.b.a) + _wgslsmith_f_op_f32(var_0.b.a + global2.b.a)))))), true, _wgslsmith_mult_u32(u_input.b.x, 1u ^ (global2.b.c ^ _wgslsmith_sub_u32(global2.b.c, u_input.a.x))));
    let var_3 = vec4<u32>(17188u, _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), firstTrailingBit(u_input.b.x), _wgslsmith_mult_u32(abs(0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1698u, global2.b.c), vec2<u32>(var_2.c, u_input.a.x)), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(80548u, 17720u))), ~global2.b.c << (~1u % 32u))));
    let var_4 = false;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.b.a))))), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(567f, 666f) + vec2<f32>(321f, 660f)) - _wgslsmith_div_vec2_f32(vec2<f32>(549f, var_2.a), vec2<f32>(var_2.a, var_0.b.a))))));
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = Struct_2(select(!(!select(vec2<bool>(true, global2.a.x), vec2<bool>(true, global2.b.b), true)), !(!select(vec2<bool>(global2.b.b, true), vec2<bool>(true, true), vec2<bool>(global2.a.x, true))), global2.a), Struct_1(964f, all(!(!global2.a)), 57077u));
    let var_1 = true;
    global3 = array<vec4<bool>, 23>();
    global3 = array<vec4<bool>, 23>();
    let var_2 = ~reverseBits(~vec4<i32>(u_input.c << (79785u % 32u), ~u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.c), 41912i));
    return _wgslsmith_f_op_vec2_f32(func_3());
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_2(select(global2.a, !select(select(vec2<bool>(global2.a.x, global2.b.b), vec2<bool>(false, false), global2.a), !vec2<bool>(true, global2.a.x), true == global2.a.x), global2.a), global2.b);
    global1 = _wgslsmith_f_op_f32(ceil(542f));
    global3 = array<vec4<bool>, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.a))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, 2938f) + vec2<f32>(global2.b.a, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, 618f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global2.b.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, global2.b.a) + vec2<f32>(874f, 370f))))), any(!var_0.a))), vec2<bool>(var_0.a.x, false)));
    let var_2 = ~(~(~vec4<u32>(var_0.b.c, global2.b.c ^ 3221u, ~var_0.b.c, _wgslsmith_sub_u32(global2.b.c, 0u))));
    return !(var_0.b.b || (arg_0.x < _wgslsmith_clamp_i32(arg_0.x, 46231i, arg_0.x))) & select(!all(global3[_wgslsmith_index_u32(~54527u, 23u)]), ~(u_input.a.x << (1u % 32u)) == ~_wgslsmith_mult_u32(8340u, var_0.b.c), !(var_1.x > -1954f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global2.b.b, false, global2.a.x);
    var var_1 = 68641i;
    global0 = array<vec4<f32>, 30>();
    let var_2 = vec4<bool>(_wgslsmith_div_f32(global2.b.a, 346f) == global2.b.a, func_1(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(-2147483647i, u_input.c)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-1i, -2147483647i)))), true, true);
    let var_3 = countOneBits(-12271i);
    global3 = array<vec4<bool>, 23>();
    var var_4 = !select(!(!var_2.zxx), vec3<bool>(true, global2.a.x, true | (global2.b.a >= global2.b.a)), select(vec3<bool>(!global2.a.x, !var_0.x, global2.a.x), vec3<bool>(false, !var_2.x, -887f <= global2.b.a), !vec3<bool>(var_0.x, global2.a.x, var_2.x)));
    let var_5 = 79625u;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.a);
}

