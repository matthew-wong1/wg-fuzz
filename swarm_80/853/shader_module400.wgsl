struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1033f, 641f, -2405f), vec3<f32>(-232f, 450f, -1000f), vec3<f32>(260f, 765f, -1636f), vec3<f32>(-2111f, 1297f, 1000f), vec3<f32>(-1240f, -185f, 1363f), vec3<f32>(-896f, -188f, -496f), vec3<f32>(596f, -177f, 462f), vec3<f32>(-368f, -360f, 1363f), vec3<f32>(-2468f, 1659f, 1056f), vec3<f32>(1086f, 721f, -1461f), vec3<f32>(606f, 976f, 376f), vec3<f32>(946f, -151f, -1000f), vec3<f32>(-244f, 1276f, -1000f), vec3<f32>(280f, 1187f, 434f), vec3<f32>(-1805f, -2164f, -1775f), vec3<f32>(1093f, -1110f, 669f), vec3<f32>(-869f, 259f, -1236f), vec3<f32>(-1173f, -1335f, 141f), vec3<f32>(923f, -781f, -1000f), vec3<f32>(-885f, -538f, 933f), vec3<f32>(-1031f, -1000f, 1549f));

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -470f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -732f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, -1000f) - vec2<f32>(global1.x, arg_1.b)), vec2<f32>(-738f, 326f))))));
    let var_0 = countOneBits(reverseBits(vec3<u32>(arg_0, ~0u, abs(global3.b) & _wgslsmith_dot_vec2_u32(vec2<u32>(86887u, u_input.a), vec2<u32>(global3.c, arg_0)))));
    global0 = select(vec4<bool>(all(!(!vec4<bool>(global0.x, true, true, false))), all(select(select(vec4<bool>(arg_2, false, global0.x, false), vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_2, global0.x, global0.x, global0.x)), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, false, arg_2, arg_2))), (_wgslsmith_f_op_f32(ceil(global4.b)) <= _wgslsmith_f_op_f32(f32(-1f) * -813f)) && true, global0.x), select(vec4<bool>(arg_2, _wgslsmith_f_op_f32(global1.x * arg_1.b) <= arg_1.b, true, !arg_2), vec4<bool>(true, true, arg_2, global0.x), arg_2), vec4<bool>(7698u == ~(~global3.b), global0.x, min(6863i, global3.a) > _wgslsmith_div_i32(-global3.a, -16236i), false));
    let var_1 = _wgslsmith_mod_i32(global3.a, ~(-65033i) >> ((global3.b | u_input.a) % 32u));
    var var_2 = Struct_1(-global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, -556f)) * _wgslsmith_f_op_f32(floor(arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    return 2147483647i;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(-global4.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -899f))))));
    global4 = Struct_1(vec4<i32>(global4.a.x | 31958i, global3.a ^ select(-2147483647i, -15237i, global0.x), 1i, func_3(1u, Struct_1(var_0.a, -1210f), !global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(481f, _wgslsmith_f_op_f32(-global1.x), false || global0.x)), global1.x, true)))));
    let var_1 = 791f;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-221f, 335f))), 236f, any(vec2<bool>(all(vec2<bool>(global0.x, true)), global0.x)))), -1011f));
    global2 = array<vec3<f32>, 21>();
    return firstTrailingBit(vec4<i32>(global3.a, global3.a, -1i, _wgslsmith_dot_vec3_i32(global4.a.zxz, select(firstLeadingBit(vec3<i32>(global4.a.x, u_input.e, -25242i)), var_0.a.ywz, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> i32 {
    let var_0 = -func_2();
    global0 = !(!(!select(vec4<bool>(global0.x, global0.x, arg_1.x, global0.x), !vec4<bool>(true, global0.x, global0.x, false), false)));
    global1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4.b)), arg_0.b), _wgslsmith_f_op_f32(-global1.x));
    let var_1 = u_input.e;
    var var_2 = arg_0.a.xzz ^ ~global4.a.zyx;
    return i32(-1i) * -reverseBits(~global3.a ^ ~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.yxx;
    global4 = Struct_1(vec4<i32>(u_input.d, abs(_wgslsmith_mult_i32(1i, u_input.d)) & global3.a, global3.a, func_1(Struct_1(-global4.a, _wgslsmith_f_op_f32(-1711f - global1.x)), !global0.xww, _wgslsmith_f_op_f32(-global4.b))), 764f);
    global4 = Struct_1(~(~vec4<i32>(-13093i, -global4.a.x, u_input.e, 95320i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b - global1.x) * 827f), -766f)));
    global2 = array<vec3<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), !var_0.x && all(global0.yxx))), _wgslsmith_f_op_f32(max(global4.b, _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), firstLeadingBit(vec2<u32>(u_input.a, reverseBits(u_input.c))), global3.b, vec2<i32>(16721i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(global3.a, u_input.d), -u_input.e), global4.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.x, -85617i), _wgslsmith_div_vec2_i32(global4.a.wz, global4.a.zz)))), vec2<f32>(global1.x, -2407f));
}

