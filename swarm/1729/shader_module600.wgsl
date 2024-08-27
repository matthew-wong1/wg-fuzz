struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global2: bool = true;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec4<bool>(true, false, true, true)));

var<private> global4: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    global4 = global3.a;
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), -_wgslsmith_add_i32(-u_input.a.x, select(u_input.a.x, u_input.a.x, arg_1.c))), 0i & min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, -1i, u_input.a.x)), _wgslsmith_mult_i32(-22794i, 812i)), abs(u_input.a.x) << (_wgslsmith_div_u32(1846u, 14186u) % 32u)), -1i, abs(1i));
    var var_1 = !(all(!vec2<bool>(global4.a.x, global4.a.x)) && !arg_1.c);
    global2 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.x, arg_2.b.x)), _wgslsmith_f_op_f32(sign(1197f)), all(!vec2<bool>(global3.a.a.x, true)) | all(global3.a.a.xyw))));
    return !(!(!(!select(vec4<bool>(global3.a.a.x, arg_1.c, arg_2.c, false), global4.a, vec4<bool>(true, false, false, false)))));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = select(vec4<bool>(select(global3.a.a.x, any(vec3<bool>(global4.a.x, global4.a.x, true)) || false, any(global4.a.zw)), all(global3.a.a.yyy), global4.a.x, any(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec4<f32>(arg_0.x, -1478f, -658f, -1759f), vec4<f32>(-1307f, 222f, arg_0.x, -184f), global3.a.a.x), Struct_1(vec4<f32>(707f, -820f, -778f, arg_0.x), vec4<f32>(arg_0.x, -1167f, 1847f, -1000f), false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 398f)))))), func_3(vec3<f32>(2690f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -1786f), -636f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, 1629f, 1000f, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x), global3.a.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1000f, arg_0.x, 490f))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(abs(arg_0.x)), -529f, _wgslsmith_f_op_f32(abs(arg_0.x))), !global3.a.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(896f, arg_0.x, 376f) - arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1862f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(150f, -1092f, arg_0.x), arg_0)), _wgslsmith_f_op_vec3_f32(round(arg_0))))))), !(!global3.a.a));
    let var_1 = Struct_3(global3.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 242f, arg_0.x, arg_0.x)))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(1051f * arg_0.x), 145f, 194f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1633f), arg_0.x, _wgslsmith_f_op_f32(ceil(1114f)), 339f) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -184f), 1366f, _wgslsmith_f_op_f32(arg_0.x + -1024f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, -1236f, arg_0.x, arg_0.x)))))));
    global1 = array<vec3<bool>, 28>();
    let var_3 = var_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(907f)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global4 = Struct_2(!(!vec4<bool>(false, true, u_input.b.x > 4294967295u, true)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) - _wgslsmith_f_op_f32(func_2(vec3<f32>(-457f, -966f, -213f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1418f, 327f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1529f, -793f)) + _wgslsmith_f_op_f32(f32(-1f) * -2238f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f - _wgslsmith_f_op_f32(-871f + 880f))));
    var var_1 = global3.a;
    global3 = Struct_3(global3.a);
    var var_2 = Struct_4(Struct_3(Struct_2(select(func_3(vec3<f32>(1000f, 1014f, -880f), Struct_1(vec4<f32>(1591f, -510f, 792f, -146f), vec4<f32>(1139f, -423f, -1912f, 792f), false), Struct_1(vec4<f32>(728f, 901f, -1679f, -259f), vec4<f32>(938f, -1007f, -1000f, 703f), arg_0), vec3<f32>(3418f, 2363f, -1000f)), select(var_1.a, global4.a, false), true))), global3.a);
    return Struct_2(!(!vec4<bool>(any(vec2<bool>(true, global3.a.a.x)), false, u_input.b.x >= 32113u, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), -reverseBits(_wgslsmith_add_i32(-u_input.a.x, -1i)), firstTrailingBit(37685i), ~firstLeadingBit(reverseBits(u_input.a.x)) | -42921i);
    global2 = true;
    let var_1 = global3.a;
    let var_2 = _wgslsmith_f_op_f32(-439f * -1319f);
    let var_3 = var_2;
    return Struct_4(Struct_3(Struct_2(!select(vec4<bool>(arg_0, arg_0, global4.a.x, arg_0), vec4<bool>(true, var_1.a.x, global3.a.a.x, true), arg_0))), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = func_4(!(!global4.a.x) | (global3.a.a.x && false), Struct_3(func_1(global3.a.a.x)));
    global4 = global3.a;
    let var_2 = all(!global3.a.a.zy);
    global3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(u_input.a.x, -min(16743i, u_input.a.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -25086i, u_input.a.x, u_input.a.x), vec4<i32>(55818i, 26853i, u_input.a.x, 1i))) << (1u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1965f - 763f) - _wgslsmith_f_op_f32(-342f * 481f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 1f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(511f * -215f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(487f)) + _wgslsmith_f_op_f32(-118f * -346f)), 1f)), abs(u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(849f, 486f, 238f, -603f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1118f, -955f, 1725f, -566f) - vec4<f32>(-1000f, 1654f, 2234f, 288f)))))), max(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, 39351u, 15971u)), vec3<u32>(u_input.b.x, 4294967295u, 11370u), false) & min(min(vec3<u32>(1438u, 5500u, 64101u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), abs(firstLeadingBit(~vec3<u32>(4294967295u, u_input.b.x, 4294967295u)))));
}

