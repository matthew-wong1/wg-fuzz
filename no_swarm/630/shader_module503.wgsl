struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = ~firstLeadingBit(vec2<u32>(1u, u_input.a));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(340f + -589f), _wgslsmith_f_op_f32(step(-1033f, -1591f)), _wgslsmith_f_op_f32(step(139f, 488f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -347f, -396f, 758f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1200f, 608f, 1954f, -1372f), vec4<f32>(-1019f, 130f, 254f, -925f), vec4<bool>(global1.x, global1.x, false, global1.x)))), 1i <= (0i >> (global0.x % 32u)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1232f, 437f, 980f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1400f, 1197f, 337f, 976f))))));
    let var_1 = Struct_2(-553f, any(vec4<bool>(global0.x >= 47363u, global1.x, global1.x, true)));
    var var_2 = firstTrailingBit(u_input.b);
    var var_3 = firstTrailingBit(var_2.x);
    return _wgslsmith_f_op_f32(abs(-1477f));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = abs(u_input.b.xy);
    global0 = (u_input.b.zy | ~(~(~u_input.d))) >> (select(vec2<u32>(u_input.a, _wgslsmith_mod_u32(global0.x | u_input.b.x, 4294967295u)), firstTrailingBit(vec2<u32>(~u_input.a, ~53507u)), arg_0 <= _wgslsmith_f_op_f32(func_3())) % vec2<u32>(32u));
    return Struct_1(global1.yyy, vec2<bool>(!(!(!global1.x)), true), ~0i, !all(!vec4<bool>(arg_1.b, arg_1.b, true, global1.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(1101f, _wgslsmith_f_op_f32(-1943f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1380f * 445f) + _wgslsmith_f_op_f32(step(-395f, 402f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2305f - -1000f))))));
    let var_1 = select(global1.x, !((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, 23339u), u_input.b) | u_input.d.x) >= 1u), all(vec2<bool>(!(!global1.x), !arg_2.a.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-862f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), -718f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))));
    global0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~global0.x), select(firstTrailingBit(min(u_input.d, vec2<u32>(global0.x, global0.x))), min(~u_input.b.xy, u_input.b.zx & vec2<u32>(u_input.b.x, u_input.d.x)), false)));
    var var_2 = _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(arg_0, u_input.c, global0.x), u_input.b.wwz ^ vec3<u32>(u_input.d.x, global0.x, global0.x)), vec3<u32>(~u_input.b.x, 45080u, ~u_input.b.x)), u_input.b.yzx);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    global1 = select(!select(vec4<bool>(true, any(vec4<bool>(global1.x, global1.x, false, true)), arg_0.b.x, true), !(!vec4<bool>(arg_0.a.x, false, false, arg_0.a.x)), !vec4<bool>(false, false, false, global1.x)), !vec4<bool>(false, true, true || arg_0.d, global1.x), any(vec3<bool>(all(global1.xxw) & any(vec3<bool>(true, true, true)), true, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.b.x, 42546u)) <= (u_input.b.x & 51860u))));
    return !select(!vec4<bool>(true, all(vec3<bool>(global1.x, true, arg_0.d)), func_4(u_input.b.x, arg_0, arg_0).d, true), !(!select(vec4<bool>(false, true, true, global1.x), vec4<bool>(true, false, global1.x, global1.x), global1.x)), true);
}

fn func_1() -> vec4<bool> {
    global1 = func_5(func_4(u_input.b.x, func_2(1043f, Struct_2(_wgslsmith_f_op_f32(trunc(289f)), true)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1981f)), Struct_2(-2261f, true))), -min(~max(-1i, 9931i), _wgslsmith_div_i32(~0i, reverseBits(2147483647i))));
    global0 = firstTrailingBit(vec2<u32>(u_input.b.x, 1719u));
    let var_0 = vec2<f32>(-1292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(194f * -789f) - 1550f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(369f, 1491f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f))));
    let var_2 = -(~countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(37782i, 25696i, 0i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))));
    return !vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))) > var_0.x, !global1.x || global1.x, true, any(global1.www));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = ~countOneBits(1i);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(520f, 357f)) + _wgslsmith_f_op_f32(1668f + 538f)) - _wgslsmith_f_op_f32(round(659f))), any(!vec4<bool>(false, true, global1.x, global1.x))), Struct_2(_wgslsmith_f_op_f32(-1000f * -1450f), true), -1i, reverseBits(u_input.b), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(298f)) * -1285f))), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, max(select(1i, -35283i, var_1.b.b), ~(_wgslsmith_mult_i32(var_0, 1i) & ~var_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-288f, 1843f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-658f, var_1.a.a))), func_2(var_1.e.a, Struct_2(_wgslsmith_f_op_f32(func_3()), func_1().x)).d)), firstTrailingBit(countOneBits(u_input.b.wxy)) ^ vec3<u32>(~u_input.d.x, global0.x, ~u_input.a), var_1.e.a);
}

