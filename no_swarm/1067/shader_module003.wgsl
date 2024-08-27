struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 27>;

var<private> global2: u32 = 66777u;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global0 = 2147483647i;
    let var_0 = min(_wgslsmith_sub_i32(1i, arg_0), 1i) >> (15039u % 32u);
    global1 = array<i32, 27>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(623f, 1575f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2824f, 1812f) * _wgslsmith_div_vec2_f32(vec2<f32>(-154f, -367f), vec2<f32>(-465f, -1652f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-922f, -1610f), vec2<f32>(-916f, 1410f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, 1744f))))));
    let var_2 = abs(~abs(countOneBits(1u)));
    return -(~((vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, global1[_wgslsmith_index_u32(4294967295u, 27u)], 0i)) | (select(vec4<i32>(arg_0, u_input.a, -1i, -2147483647i), vec4<i32>(1i, var_0, -3086i, -20767i), vec4<bool>(true, true, global3.x, false)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_2, var_2, var_2, 4431u), vec4<u32>(22427u, var_2, 4294967295u, var_2)) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0.x;
    return Struct_1(_wgslsmith_sub_vec4_i32(max((vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], 2207i, u_input.a, u_input.b) ^ vec4<i32>(9180i, global1[_wgslsmith_index_u32(arg_1, 27u)], u_input.a, u_input.a)) & vec4<i32>(54307i, 20466i, global1[_wgslsmith_index_u32(arg_1, 27u)], 46956i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(arg_1, 27u)], -15792i, u_input.a) | vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 27u)], 43090i, u_input.a, -16402i), -vec4<i32>(0i, u_input.b, global1[_wgslsmith_index_u32(49330u, 27u)], 2147483647i))), func_3(u_input.a)), _wgslsmith_f_op_vec3_f32(arg_0.yzw - _wgslsmith_f_op_vec3_f32(round(arg_0.yyx))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1046f, 1204f, 879f, arg_0.e.b.b.x)) * vec4<f32>(-250f, 704f, _wgslsmith_f_op_f32(1262f * arg_0.e.c.b.x), 1386f)))), arg_0.e.a);
    let var_2 = -1118f;
    let var_3 = arg_0.d;
    global3 = select(select(select(select(vec2<bool>(var_0, true), !vec2<bool>(true, var_0), false || var_0), vec2<bool>(false, true == arg_0.a), !global3.x), select(!(!vec2<bool>(true, global3.x)), !select(vec2<bool>(false, false), vec2<bool>(true, true), global3.x), !select(vec2<bool>(global3.x, var_0), vec2<bool>(global3.x, global3.x), vec2<bool>(arg_0.a, arg_0.a))), select(true, any(vec2<bool>(global3.x, true)), true) && (all(vec3<bool>(arg_0.a, global3.x, arg_0.a)) || all(vec4<bool>(false, false, var_0, var_0)))), vec2<bool>(true, true), !(!(!(!vec2<bool>(arg_0.a, false)))));
    return arg_0.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    var var_0 = ~_wgslsmith_mod_vec2_u32(select(~min(vec2<u32>(60642u, 80034u), vec2<u32>(4116u, 122910u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(21406u, 4294967295u), vec2<u32>(4294967295u, 1u))), vec2<bool>(global3.x || true, all(vec4<bool>(false, false, global3.x, global3.x)))), _wgslsmith_sub_vec2_u32(vec2<u32>(14859u, func_1(Struct_4(global3.x, Struct_1(vec4<i32>(-1i, -16290i, u_input.a, global1[_wgslsmith_index_u32(5338u, 27u)]), vec3<f32>(-490f, 1489f, -1732f)), 17137u, 0u, Struct_3(48355u, Struct_1(vec4<i32>(2147483647i, 0i, global1[_wgslsmith_index_u32(1u, 27u)], -2147483647i), vec3<f32>(-581f, 285f, -832f)), Struct_1(vec4<i32>(-2147483647i, 6267i, u_input.b, global1[_wgslsmith_index_u32(45689u, 27u)]), vec3<f32>(-661f, 2507f, -1458f)), -1i)), vec2<u32>(12240u, 29623u))), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(79922u, 76235u), vec2<u32>(4294967295u, 21641u), vec2<u32>(19564u, 1u)))));
    global2 = 0u;
    let var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(433f, 275f, true))));
    global3 = select(vec2<bool>((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 14202u), vec3<u32>(var_0.x, var_0.x, var_0.x)) > ~235u) == global3.x, true), select(!(!vec2<bool>(false, global3.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(global3.x, global3.x), vec2<bool>(false, true)), select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x)), any(vec4<bool>(true, global3.x, global3.x, global3.x))), vec2<bool>(true, true), true), global3.x), !global3.x);
    global0 = ~func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_1, 1897f, var_1))) - vec4<f32>(599f, var_1, var_1, var_1))), ~1u).a.x;
    global2 = firstLeadingBit(~(~var_0.x));
    global1 = array<i32, 27>();
    global1 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(min(~vec2<i32>(-44854i, 0i), vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 27u)], u_input.a)), firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))), 0i, ~reverseBits(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_0.x, 27u)], -u_input.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x & 4294967295u, ~4294967295u, var_0.x), vec4<u32>(_wgslsmith_mod_u32(var_0.x, 34922u), 39290u, _wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x ^ var_0.x)), max(~vec4<u32>(79121u, var_0.x, var_0.x, var_0.x) << (~vec4<u32>(var_0.x, 16060u, 97348u, var_0.x) % vec4<u32>(32u)), vec4<u32>(max(32741u, var_0.x), 0u, ~var_0.x, ~1u))), vec3<u32>(var_0.x, var_0.x, 24902u));
}

