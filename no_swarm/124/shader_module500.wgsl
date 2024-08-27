struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(1i, 24071i, 0i, 48541i), vec4<i32>(0i, 0i, -1i, 2147483647i), vec4<i32>(-31552i, 22753i, -41149i, 59592i));

var<private> global1: Struct_3 = Struct_3(Struct_1(83u));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = global1.a;
    let var_1 = u_input.a.x;
    let var_2 = arg_1.a.xy | (_wgslsmith_div_vec2_u32(~arg_1.a.xz, ~(arg_1.a.zy << (arg_2.a.zx % vec2<u32>(32u)))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(61787u, arg_1.b ^ var_0.a), arg_0.yw) % vec2<u32>(32u)));
    global0 = array<vec4<i32>, 3>();
    let var_3 = var_1;
    return (_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -1i), u_input.a.zzw), ~u_input.a.yww), var_1) & u_input.b.x) >> ((4294967295u | _wgslsmith_div_u32(global1.a.a, ~(~global2.a))) % 32u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> vec4<i32> {
    var var_0 = vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(60681u, ~(global1.a.a | 4294967295u)), 3u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1005f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-270f, -1000f)) * _wgslsmith_div_f32(-1402f, -672f)), -1394f)) + _wgslsmith_f_op_f32(f32(-1f) * -276f));
    global0 = array<vec4<i32>, 3>();
    var var_2 = global1.a;
    var var_3 = vec2<i32>(-10958i, func_1(_wgslsmith_div_vec4_u32(arg_0, min(arg_0, vec4<u32>(global2.a, global2.a, var_2.a, global2.a))), Struct_2(arg_0.yxy, 4294967295u), Struct_2(firstTrailingBit(vec3<u32>(var_2.a, 31212u, var_2.a)), 16437u), false)) | ((-u_input.a.wz >> (vec2<u32>(49686u, ~4294967295u) % vec2<u32>(32u))) | var_0.yw);
    return min(firstTrailingBit(firstTrailingBit(u_input.a)), vec4<i32>(~u_input.b.x, ~_wgslsmith_mult_i32(u_input.a.x, min(-1i, -2147483647i)), var_3.x, var_0.x));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> u32 {
    global1 = arg_1;
    global0 = array<vec4<i32>, 3>();
    let var_0 = func_3(firstLeadingBit(abs(vec4<u32>(4294967295u, firstTrailingBit(42704u), global2.a, ~1u))), arg_1.a.a, arg_0 << (arg_1.a.a % 32u));
    global1 = Struct_3(global1.a);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1235f);
    return arg_1.a.a;
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2155f, 879f)) - -711f), 823f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(953f)), _wgslsmith_f_op_f32(-122f + 107f), _wgslsmith_f_op_f32(round(632f)))))));
    let var_1 = vec3<bool>(true, !any(vec3<bool>(true, true, true)), true);
    global0 = array<vec4<i32>, 3>();
    var var_2 = vec3<f32>(-668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -456f) + _wgslsmith_f_op_f32(step(var_0.x, var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f - var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(step(429f, -1000f))))), _wgslsmith_f_op_f32(sign(624f)));
    let var_3 = Struct_2(~(~(arg_0.xxz | ~arg_0.www)), ~(~arg_0.x));
    return Struct_1(func_2(func_1(select(vec4<u32>(arg_0.x, 0u, global1.a.a, 1u), vec4<u32>(arg_0.x, 4294967295u, global1.a.a, 19534u), vec4<bool>(false, false, var_1.x, true)), Struct_2(var_3.a, arg_0.x), var_3, var_1.x), Struct_3(Struct_1(arg_0.x))) ^ (arg_0.x << (select(~1u, 2271u, var_1.x | var_1.x) % 32u)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global2 = global1.a;
    global0 = array<vec4<i32>, 3>();
    global1 = Struct_3(Struct_1(~(~abs(arg_0.a))));
    var var_0 = select(vec4<bool>(true, true, true, true), !select(vec4<bool>(41111u == global2.a, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true))), select(vec4<bool>(true, true, 69593u <= select(1u, global1.a.a, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true && all(vec2<bool>(false, true)))));
    var var_1 = Struct_3(func_4(vec4<u32>(global2.a, 1u, ~(~global1.a.a), 1u)));
    return Struct_2(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(63716u, arg_0.a, 4294967295u)), ~(~vec3<u32>(var_1.a.a, 4294967295u, var_1.a.a))), reverseBits(global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~(-50059i), ~(-1i) << (global1.a.a % 32u), i32(-1i) * -max(func_1(vec4<u32>(24598u, global1.a.a, global2.a, 1u), Struct_2(vec3<u32>(40487u, 10669u, global1.a.a), 1u), Struct_2(vec3<u32>(4294967295u, global2.a, 4294967295u), 42829u), false), 9579i));
    var var_1 = func_5(func_4(firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(3438u, 6467u, 4602u), ~global2.a, func_2(var_0.x, Struct_3(global1.a)), ~global1.a.a))));
    let var_2 = Struct_1(global1.a.a);
    var var_3 = Struct_3(func_4(~vec4<u32>(var_1.b, 0u, ~32751u, firstLeadingBit(var_2.a))));
    global1 = Struct_3(Struct_1(~_wgslsmith_sub_u32(~0u, _wgslsmith_mod_u32(var_1.b, global2.a))));
    let var_4 = Struct_3(Struct_1(var_2.a));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, -1000f, -319f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-744f, 1491f, -1506f), vec3<f32>(-594f, 762f, -2028f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(457f, -435f, 1250f) - vec3<f32>(-1000f, -1000f, -372f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2833f, -1000f, 529f), vec3<f32>(1000f, -520f, 1965f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, -1010f, 599f) * vec3<f32>(523f, 268f, 2336f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-884f, -594f, -426f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2054f, -821f, 841f)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(921f, -1488f, 660f)))))))));
    let var_6 = ~(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_0.x, _wgslsmith_mod_i32(u_input.b.x, var_0.x))), -(~(vec2<i32>(var_0.x, 38786i) << (vec2<u32>(var_4.a.a, 0u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_5.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x))), var_1.a);
}

