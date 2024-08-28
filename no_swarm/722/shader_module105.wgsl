struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(4294967295u, 66129u, 4294967295u, 0u), vec4<i32>(-25084i, -3714i, 1i, i32(-2147483648)), 1u, 153f);

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-742f, -338f, -1934f), vec3<f32>(897f, 783f, -1219f), vec3<f32>(788f, -353f, 1202f), vec3<f32>(-596f, -440f, 1265f), vec3<f32>(-107f, -974f, -593f), vec3<f32>(100f, -266f, 922f), vec3<f32>(-494f, 1209f, 150f), vec3<f32>(-1470f, -220f, 1514f), vec3<f32>(2170f, 2347f, 959f), vec3<f32>(-192f, 608f, 845f), vec3<f32>(-308f, -1706f, -709f), vec3<f32>(313f, -1000f, 237f), vec3<f32>(-2214f, -275f, -853f), vec3<f32>(1364f, -1240f, -1244f), vec3<f32>(-1738f, 1107f, 762f), vec3<f32>(798f, 1000f, 1179f), vec3<f32>(-517f, -627f, -2006f), vec3<f32>(1164f, 520f, -215f), vec3<f32>(800f, 1495f, 249f), vec3<f32>(699f, 911f, 855f), vec3<f32>(1000f, -1306f, -997f), vec3<f32>(602f, 286f, -623f), vec3<f32>(175f, 558f, -735f), vec3<f32>(-1007f, -608f, -1000f), vec3<f32>(1392f, -480f, -788f), vec3<f32>(1378f, -360f, 2378f), vec3<f32>(-198f, 979f, 1143f), vec3<f32>(372f, 2300f, 541f), vec3<f32>(-1000f, -1009f, 156f), vec3<f32>(-956f, 1257f, -750f));

var<private> global3: bool;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-348f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1594f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e), 615f));
    var var_1 = 7319i;
    global2 = array<vec3<f32>, 30>();
    let var_2 = Struct_1(select(!global1.a, vec4<bool>(global1.a.x && global1.a.x, true, arg_1.x != global1.d, true), select(select(select(global1.a, vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global1.a.x), select(vec4<bool>(global1.a.x, true, true, global1.a.x), global1.a, vec4<bool>(false, true, global1.a.x, global1.a.x)), arg_2.b.x != arg_3.x), global1.a, any(!vec2<bool>(global1.a.x, false)))), global1.b, global1.c, _wgslsmith_add_u32(~select(u_input.a.x, ~19990u, global1.a.x), global1.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1.e)) * arg_2.a), -137f)));
    var_1 = ~arg_0;
    return _wgslsmith_f_op_f32(-global1.e);
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    let var_0 = vec3<i32>(2147483647i, 15371i, _wgslsmith_sub_i32(global1.c.x, min(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, global1.c.x) ^ global1.c.xx, global1.c.wy), global1.c.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), -679f), -2141f, _wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(func_3(var_0.x, vec3<u32>(reverseBits(global1.b.x), global1.d, 4294967295u), Struct_2(_wgslsmith_div_f32(-419f, arg_1), u_input.a, _wgslsmith_sub_u32(81683u, 0u)), ~(~global1.b)))), vec4<f32>(_wgslsmith_f_op_f32(global1.e + arg_0), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.e))), global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.e)))))), (1i == ~global1.c.x) && true));
    let var_2 = global1.b >> (~(~select(vec4<u32>(1u, u_input.a.x, global1.d, 1064u), global1.b ^ vec4<u32>(global1.b.x, u_input.a.x, u_input.a.x, u_input.a.x), global1.a.x)) % vec4<u32>(32u));
    return (false | global1.a.x) | false;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    global3 = !(!(!(!arg_3)) & arg_2.a.x);
    global0 = global1.c.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.ywx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e)), arg_1.e, -644f), !(!(false | arg_1.a.x)))));
    global1 = Struct_1(!(!global1.a), abs(arg_2.b), -vec4<i32>(_wgslsmith_dot_vec3_i32(-global1.c.zxz, arg_2.c.yzx), arg_2.c.x, arg_2.c.x, global1.c.x), 5472u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = Struct_1(vec4<bool>(false, !func_2(-1520f, -1587f), !(!(arg_3 & arg_1.a.x)), global1.a.x), reverseBits(abs(global1.b) & ~arg_1.b), ~global1.c, 10851u, global1.e);
    return vec3<u32>(_wgslsmith_dot_vec3_u32(~arg_2.b.zzy, arg_1.b.xzw), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.b.x, 1u), ~u_input.a.yx, ~vec2<u32>(arg_2.b.x, var_1.d)), abs(vec2<u32>(global1.d, arg_1.d))), ~arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.c.x;
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(-1243f)), abs(_wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, u_input.a.x, global1.d) & global1.b.yyz), select(global1.b.yyx, func_1(vec4<f32>(251f, global1.e, global1.e, global1.e), Struct_1(vec4<bool>(true, global1.a.x, global1.a.x, true), global1.b, vec4<i32>(global1.c.x, global1.c.x, 55740i, global1.c.x), u_input.a.x, -108f), Struct_1(global1.a, vec4<u32>(global1.b.x, global1.d, u_input.a.x, u_input.a.x), global1.c, 4294967295u, 1261f), global1.a.x), select(vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.a.x)))), ~35957u);
    var var_1 = global1.e;
    let var_2 = ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global1.b, vec4<u32>(var_0.c, global1.b.x, u_input.a.x, 1u)), _wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(0u, 85221u, u_input.a.x, u_input.a.x))), 27651u));
    var var_3 = Struct_2(-1169f, (vec3<u32>(firstTrailingBit(91559u), global1.d, countOneBits(global1.b.x)) << ((firstLeadingBit(var_0.b) & vec3<u32>(global1.d, global1.b.x, 0u)) % vec3<u32>(32u))) | var_0.b, ~(~min(~1u, var_0.c)));
    let var_4 = ~(4294967295u << (~(~var_2 & 7879u) % 32u));
    var var_5 = Struct_2(-785f, var_0.b, var_0.c);
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 14448u), 30u)]) + global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 1u, 36693u), ~vec3<u32>(4294967295u, 48823u, var_4)), 30u)]));
    var var_7 = -20417i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.e, -2147483647i, _wgslsmith_div_u32(u_input.a.x >> ((firstTrailingBit(1u) & 1u) % 32u), firstTrailingBit(~(~102645u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a * var_3.a) * -459f), _wgslsmith_div_f32(var_5.a, -268f), -944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a * var_5.a), _wgslsmith_f_op_f32(exp2(global1.e)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_3.a, var_6.x, var_5.a) * vec4<f32>(655f, -374f, global1.e, var_0.a)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-231f, var_0.a, 1842f, global1.e), vec4<f32>(var_3.a, 1178f, 1540f, 777f), false))))))), _wgslsmith_clamp_vec3_u32(var_5.b, var_5.b, ~(~var_5.b)));
}

