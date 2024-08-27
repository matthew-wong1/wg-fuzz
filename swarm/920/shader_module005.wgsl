struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1243f;

var<private> global1: vec4<u32>;

var<private> global2: bool;

var<private> global3: array<u32, 13>;

var<private> global4: f32 = 432f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(997f * -765f), _wgslsmith_f_op_f32(min(-842f, 274f)), true))))) + -152f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1454f, -449f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1583f)));
    let var_0 = Struct_3(!vec4<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), true | all(vec2<bool>(true, true)), true, select(global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(70577u, 13u)], 13u)], true) >= ~global3[_wgslsmith_index_u32(global1.x, 13u)]), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, u_input.b.x), -1i), min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 6541i), vec2<i32>(u_input.b.x, -21786i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 1i))), min(vec2<i32>(u_input.b.x, -2147483647i), u_input.b.wy) ^ max(vec2<i32>(-22627i, u_input.a.x), vec2<i32>(-2147483647i, u_input.b.x))), Struct_1(!any(vec3<bool>(false, false, false)), vec2<f32>(1f, _wgslsmith_f_op_f32(round(1f))), !all(vec4<bool>(false, true, true, false))));
    var var_1 = Struct_1(var_0.a.x, _wgslsmith_f_op_vec2_f32(-var_0.c.b), select(var_0.c.c, var_0.c.c, any(!(!var_0.a.zxx))));
    return _wgslsmith_div_f32(var_0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x - -1000f)), 873f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())));
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_clamp_i32(0i, -20260i, -38185i << (countOneBits(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)] >> (arg_0.x % 32u), global1.x)) % 32u));
    var_1 = -reverseBits(firstTrailingBit(59555i & -var_0.x));
    global3 = array<u32, 13>();
    return Struct_1(true && (~(~var_0.x) < min(-arg_1.x, _wgslsmith_div_i32(0i, -4707i))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1884f * 381f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1260f)), _wgslsmith_f_op_f32(f32(-1f) * -1376f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-251f, 853f), vec2<f32>(654f, 288f), false)))))), false);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-152f, -407f)), arg_1.b, -126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1241f)) * -1455f)))));
    global3 = array<u32, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(-1024f, _wgslsmith_f_op_f32(round(-830f)), var_0.x, -349f))));
    let var_2 = Struct_3(arg_2, -_wgslsmith_add_vec2_i32(u_input.b.wz, ~u_input.a), arg_1.c);
    let var_3 = var_2;
    return Struct_3(select(!vec4<bool>(true, false == arg_1.c.a, select(true, var_2.c.c, var_3.a.x), arg_2.x), var_3.a, true), ~var_3.b, Struct_1(!(var_2.c.a || !var_2.c.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 241f) - vec2<f32>(arg_0.x, var_0.x)))), var_2.a.x));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, 1000f, -1113f, -1011f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1832f, 657f, -795f, -370f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, 104f, -796f, 170f) + vec4<f32>(-1269f, -475f, 756f, -219f)), vec4<f32>(535f, -364f, -1326f, 1828f)))))), Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, arg_0, u_input.a.x), u_input.b ^ vec4<i32>(4938i, -1i, arg_0, 1i)), 1257f, func_2(_wgslsmith_mod_vec3_u32(global1.zzw, select(global1.zxy, vec3<u32>(4294967295u, 4294967295u, global1.x), true)), u_input.b.xyz)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~13667u, max(1u, 1u)), 13u)]);
    var var_1 = all(!(!var_0.a.wyx));
    global3 = array<u32, 13>();
    global3 = array<u32, 13>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), var_0.c.b.x, var_0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.c.b.x))))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -260f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(1i == u_input.b.x, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-639f * -197f), 648f), -620f))), true);
    var var_1 = _wgslsmith_div_i32(u_input.b.x, u_input.a.x);
    var var_2 = global1.xx;
    global4 = _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(13310i, firstLeadingBit(-2147483647i), 1i, _wgslsmith_sub_i32(u_input.c, ~u_input.c)), vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(reverseBits(0i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.c, 14869i)), u_input.c), -u_input.c >> (~var_2.x % 32u), 61697i))));
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1437f, var_0.b.x, var_0.b.x, -652f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, var_0.b.x, -898f, 1177f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) - vec4<f32>(var_0.b.x, var_0.b.x, 671f, 705f))))), Struct_2(u_input.c, var_0.b.x, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1532f, -1000f, var_0.b.x, -471f) - vec4<f32>(1000f, -1397f, -777f, var_0.b.x)) + vec4<f32>(926f, 1000f, -946f, var_0.b.x)), Struct_2(~0i, _wgslsmith_div_f32(var_0.b.x, 1845f), var_0), vec4<bool>(func_2(vec3<u32>(1u, 47934u, 119111u), vec3<i32>(u_input.b.x, -2147483647i, 5512i)).c, false, var_0.b.x <= var_0.b.x, var_0.a), countOneBits(reverseBits(4294967295u))).c), vec4<bool>(any(select(!vec3<bool>(true, true, var_0.a), !vec3<bool>(var_0.a, true, true), select(vec3<bool>(var_0.a, var_0.c, false), vec3<bool>(false, true, var_0.c), var_0.a))), any(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2084f, var_0.b.x, 1651f, var_0.b.x)), Struct_2(55168i, var_0.b.x, var_0), vec4<bool>(false, var_0.a, true, var_0.c), min(1u, 0u)).a.wy), var_0.a | true, true), global3[_wgslsmith_index_u32(global1.x, 13u)]);
    var var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -409f), 422f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-975f, var_0.b.x) * var_3.c.b), vec2<f32>(1000f, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(598f)), var_4.b.x))), select(vec2<bool>(true, var_0.a), select(select(vec2<bool>(var_0.a, false), var_3.a.yy, true), var_3.a.xy, var_3.a.wz), all(func_4(vec4<f32>(-2729f, -287f, var_3.c.b.x, var_3.c.b.x), Struct_2(var_3.b.x, 1352f, Struct_1(var_0.a, vec2<f32>(-1157f, -193f), var_3.c.a)), vec4<bool>(var_3.c.c, true, false, false), 1u).a.zyz)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(2626f)), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.c.b.x, var_3.c.b.x, 2366f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b.x, var_4.b.x, var_3.c.b.x) - vec3<f32>(var_0.b.x, -634f, var_3.c.b.x)), vec3<bool>(var_4.a, true, var_4.a & false)))));
}

