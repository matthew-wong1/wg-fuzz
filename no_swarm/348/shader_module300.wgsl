struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<u32, 17> = array<u32, 17>(7238u, 20798u, 4024u, 24170u, 59002u, 51159u, 57988u, 30505u, 16442u, 0u, 1u, 64449u, 0u, 23911u, 49867u, 34457u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = u_input.a.yw;
    global1 = array<u32, 17>();
    var var_1 = Struct_2(countOneBits(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31467u, 17u)], 17u)], 17u)], 17u)], 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(26980u, 17u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27822u, 17u)], 17u)], 17u)], 30880u)) & ~global1[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_f_op_f32(2218f - 1153f), Struct_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18150u, 17u)], 17u)], ~vec3<u32>(select(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], false), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24640u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 55260u, global1[_wgslsmith_index_u32(75468u, 17u)])), 17u)], 17u)], 17u)], 17u)], 3342u), vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1518f) + -478f)), _wgslsmith_clamp_u32(~reverseBits(7370u), 4294967295u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~63354u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)]), select(true, (u_input.a.x | 9717i) != -73037i, true)), global1[_wgslsmith_index_u32(1u, 17u)], select(vec3<i32>(reverseBits(1i), _wgslsmith_div_i32(reverseBits(u_input.a.x), abs(-8309i)), var_0.x), vec3<i32>(1i, -1i, -2147483647i), false));
    let var_2 = 2793i;
    let var_3 = var_1.e.yz;
    return ~(~4294967295u);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    var var_0 = arg_2.c;
    global1 = array<u32, 17>();
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-arg_3.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(31048i, arg_2.e.x))), firstLeadingBit(arg_3.x)), abs(_wgslsmith_div_vec2_i32(-reverseBits(vec2<i32>(u_input.a.x, -59232i)), ~(~arg_2.e.xz))), -(~arg_2.e.zz));
    var var_2 = var_0.c.x;
    var var_3 = !select(select(vec4<bool>(arg_2.c.e && arg_2.c.e, global1[_wgslsmith_index_u32(4294967295u, 17u)] == arg_0, !arg_2.c.e, all(vec4<bool>(arg_2.c.e, arg_2.c.e, false, false))), vec4<bool>(true, !var_0.e, true, true), vec4<bool>(1577f <= arg_2.c.c.x, !arg_2.c.e, true, true)), select(vec4<bool>(any(vec4<bool>(var_0.e, true, arg_2.c.e, true)), arg_2.c.e, true, true), !vec4<bool>(arg_2.c.e, false, var_0.e, var_0.e), !(!vec4<bool>(true, var_0.e, var_0.e, false))), var_0.e);
    return abs(~countOneBits(~var_0.b.x));
}

fn func_2() -> Struct_2 {
    return Struct_2(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(~(63205u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40175u, 17u)], 17u)] % 32u)), 17u)]), 17u)], -197f, Struct_1(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 17u)] & ~37080u, 17u)], 17u)], ~_wgslsmith_div_vec3_u32(~vec3<u32>(89181u, 1u, global1[_wgslsmith_index_u32(4294967295u, 17u)]), min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83141u, 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7478u, 17u)], 17u)], 17u)], 0u, global1[_wgslsmith_index_u32(13327u, 17u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-122f, 125f) - vec2<f32>(-625f, 699f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-876f, 1000f), vec2<f32>(-926f, 1379f)))), 1u, false), countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(27639u, func_4(func_3(vec4<f32>(-531f, -405f, -139f, -802f), vec2<f32>(844f, 2771f)), 801u, Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], 1643f, Struct_1(4294967295u, vec3<u32>(global1[_wgslsmith_index_u32(28851u, 17u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)]), vec2<f32>(-108f, 546f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], true), 1u, u_input.a.zxw), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 15404i), u_input.a.xy))), 17u)]), _wgslsmith_sub_vec3_i32(reverseBits(u_input.a.wwx), u_input.a.ywx) ^ (firstTrailingBit(u_input.a.zxz) | -firstTrailingBit(vec3<i32>(-1053i, -7427i, u_input.a.x))));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = 14378u;
    var_0 = arg_0.a;
    var var_1 = !select(!(!vec4<bool>(arg_0.e, arg_0.e, true, arg_0.e)), !vec4<bool>(1i < u_input.a.x, false == arg_0.e, true, arg_0.e), !vec4<bool>(arg_0.e, all(vec4<bool>(true, arg_0.e, arg_0.e, true)), arg_0.e & arg_0.e, false));
    let var_2 = func_2();
    var var_3 = _wgslsmith_mult_i32(2147483647i, ~u_input.a.x);
    return abs(vec4<u32>(~25844u, 0u, global1[_wgslsmith_index_u32(50956u ^ _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(4294967295u, 17u)], 17872u), 17u)], ~((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)] | arg_0.d) ^ _wgslsmith_div_u32(arg_0.a, 26708u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1690f, _wgslsmith_f_op_f32(round(-1000f)), true))));
    var var_1 = ~global1[_wgslsmith_index_u32(~0u, 17u)];
    global0 = array<vec2<u32>, 26>();
    global1 = array<u32, 17>();
    var var_2 = !(!vec2<bool>(var_0.x == -776f, true && all(vec2<bool>(false, true))));
    var_2 = !vec2<bool>(all(!select(vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, true))), var_2.x);
    let var_3 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(104559u, 17u)], 17u)], global1[_wgslsmith_index_u32(28594u, 17u)])) << (firstLeadingBit(vec4<u32>(17933u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 36170u, 0u) ^ vec4<u32>(32354u, 4294967295u, 0u, 4294967295u)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(59643u, global1[_wgslsmith_index_u32(52422u, 17u)], 19771u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17762u, 17u)], 17u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51516u, 17u)], 17u)], 17u)], 1864u, global1[_wgslsmith_index_u32(0u, 17u)], 14261u))) | _wgslsmith_mult_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17647u, 28218u, 42318u), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 1u, 1u, 8493u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74264u, 17u)], 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)])))) ^ max(func_1(Struct_1(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33795u, 17u)], 17u)], vec3<u32>(1u, global1[_wgslsmith_index_u32(5036u, 17u)], 5084u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, -176f), vec2<f32>(var_0.x, 495f))), 106512u, all(vec3<bool>(false, false, var_2.x)))), firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7631u, 17u)], 17u)], 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14941u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 10777u), vec2<u32>(3273u, 13307u)), _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(0u, 17u)]), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3) << (~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), var_3) << (~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.x, 17u)], 17u)], var_3.x, 115701u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-45322i, ~abs(-37448i), u_input.a.x, countOneBits(u_input.a.x)), ~(~(~firstTrailingBit(var_3.x))));
}

