struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 53661u, 4294967295u, 136698u), -1706f, true), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 1u, 1u, 1u), -731f, true), Struct_1(vec2<bool>(true, true), vec4<u32>(23661u, 0u, 1u, 4294967295u), 1012f, true), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 53559u, 1u, 0u), -1807f, false), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 0u, 0u), 537f, true), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 24198u, 36181u, 0u), -1000f, false), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 84645u, 42750u, 23262u), 1407f, true), Struct_1(vec2<bool>(true, false), vec4<u32>(8606u, 64413u, 93680u, 4294967295u), -112f, false), Struct_1(vec2<bool>(true, true), vec4<u32>(154u, 0u, 22079u, 35391u), -2136f, true));

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1402f, _wgslsmith_f_op_f32(floor(-1118f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1940f + 622f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f + 258f)) + 1f))));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    return vec4<f32>(711f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(597f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(576f + -1000f), -1135f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1070f, -853f))) + -378f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), 1402f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(1000f + 154f), -123f, 383f, _wgslsmith_f_op_f32(abs(-289f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, 1000f, -1405f, 705f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2117f - _wgslsmith_f_op_f32(floor(-332f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1843f, -387f)) * _wgslsmith_f_op_f32(-474f - -770f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-967f * 1714f), !arg_0.a.x))), _wgslsmith_f_op_f32(954f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1212f + -670f) + _wgslsmith_div_f32(1000f, -282f))), 559f));
    let var_1 = arg_0;
    let var_2 = u_input.c;
    global1 = Struct_2(_wgslsmith_sub_vec2_u32(reverseBits(global1.a & global1.a) | (~vec2<u32>(47267u, 1u) ^ (u_input.b.xy & u_input.b.zy)), select(~global1.a, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zy, vec2<u32>(global1.a.x, 67478u)), u_input.b.xy), !(!vec2<bool>(var_1.a.x, true)))), -18671i, global1.b);
    return Struct_4(var_1, 62790u);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec3<f32> {
    var var_0 = vec3<u32>(global1.a.x & (_wgslsmith_div_u32(~global1.a.x, global1.a.x) >> (global1.a.x % 32u)), abs(113462u), func_1(func_1(arg_1.a, -select(arg_3, vec3<i32>(1i, 1i, 2147483647i), arg_2.yyz)).a, arg_3).b);
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.x, global1.b), ~global1.c), 1i | arg_3.x), -max(global1.c, u_input.a) ^ firstTrailingBit(1701i ^ u_input.a), _wgslsmith_mult_i32(arg_1.a.b ^ arg_3.x, func_1(Struct_3(arg_2.ww, 0i), u_input.c).a.b) & (global1.b & global1.b)), ~select(abs(vec4<i32>(2147483647i, arg_1.a.b, 16030i, global1.c)), ~vec4<i32>(16190i, arg_3.x, 47843i, -27651i), !vec4<bool>(true, arg_0, true, arg_2.x)) | abs(~vec4<i32>(arg_3.x, global1.c, -19099i, u_input.a)));
    global0 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_2(select(true, !arg_0, all(arg_2.zx)))).x, -210f)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-611f, -603f, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-1788f - -1416f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(var_2 * -690f), _wgslsmith_f_op_f32(f32(-1f) * -184f))), 384f == var_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1136f, _wgslsmith_div_f32(-644f, 579f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d, global1.a.x, global1.a.x) ^ vec4<u32>(68358u, u_input.d, global1.a.x, 8817u), select(reverseBits(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d)), u_input.b, vec4<bool>(true, true, true, true))));
    var var_1 = u_input.d;
    var_0 = ~(~max(u_input.b.zw, vec2<u32>(global1.a.x, var_0.x)) ^ _wgslsmith_sub_vec2_u32(~(~u_input.b.wx), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, global1.a.x), global1.a, vec2<u32>(0u, var_0.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, 852f, 217f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(164f + 242f), -719f) - vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(true, func_1(Struct_3(vec2<bool>(true, true), 25658i), u_input.c), vec4<bool>(true, false, true, false), ~vec3<i32>(u_input.c.x, -1i, -20370i))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -231f, 219f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, 874f, 891f)))))));
    let var_3 = ~(~select(_wgslsmith_add_vec2_u32(u_input.b.zz, vec2<u32>(global1.a.x, global1.a.x)), vec2<u32>(4294967295u, var_0.x), true)) << ((global1.a << (~(_wgslsmith_clamp_vec2_u32(u_input.b.xy, global1.a, vec2<u32>(global1.a.x, 4294967295u)) | ~global1.a) % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1202f, -462f, ~1u);
}

