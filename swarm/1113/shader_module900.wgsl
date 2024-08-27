struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    global0 = array<vec2<f32>, 19>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(760f, 546f, arg_2.a.x), vec3<f32>(global1.x, -177f, 355f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, 395f, arg_2.a.x) - vec3<f32>(390f, 187f, 717f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(920f, arg_2.a.x, 1000f), vec3<f32>(arg_2.a.x, -1591f, 329f), any(arg_1)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x) * vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), 1f, _wgslsmith_f_op_f32(sign(global1.x))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1275f, 508f) - _wgslsmith_div_vec3_f32(vec3<f32>(987f, 1532f, 1521f), vec3<f32>(912f, 1000f, 679f))), vec3<f32>(arg_2.a.x, arg_2.a.x, _wgslsmith_div_f32(arg_2.a.x, 923f)), arg_0)))));
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + arg_2.a.x), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(436f + arg_2.a.x)))), _wgslsmith_f_op_f32(-arg_2.a.x))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-1448f - global1.x), arg_2.a.x, -836f);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(max(global1.x, 1188f))), 1638f);
    return !select(select(vec3<bool>(false, arg_1.x, any(arg_1.yy)), !arg_1, select(!vec3<bool>(false, false, arg_0), arg_1, arg_2.b.b)), select(vec3<bool>(true, arg_0, false), !arg_1, any(arg_1)), true);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(!(any(vec3<bool>(false, false, true)) | true));
    let var_1 = _wgslsmith_div_i32(-countOneBits(u_input.a) << (1u % 32u), u_input.a);
    var_0 = Struct_3(all(vec4<bool>(true, var_0.a, all(vec4<bool>(false, var_0.a, false, var_0.a)), ~(-2147483647i) >= -var_1)));
    let var_2 = 1f;
    let var_3 = 1000f;
    return Struct_3(all(func_3(true, vec3<bool>(all(vec4<bool>(false, false, var_0.a, var_0.a)), var_0.a, false), Struct_2(global0[_wgslsmith_index_u32(1u, 19u)], Struct_1(vec4<u32>(10089u, 4294967295u, 1059u, 4294967295u), true, vec3<u32>(18500u, 83596u, 4294967295u), 2147483647i)), -_wgslsmith_div_i32(16895i, -2147483647i))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.b.d, u_input.a), 1i);
    let var_1 = !vec3<bool>((arg_1.x ^ 1u) > _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 10684u, 814u, 1u), vec4<u32>(4294967295u, arg_2.b.c.x, 14116u, arg_1.x)), vec4<u32>(0u, arg_2.b.a.x, arg_2.b.c.x, arg_1.x)), true != any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, arg_2.b.b))), false);
    let var_2 = _wgslsmith_add_i32(24000i, 1i);
    var var_3 = ~1u;
    let var_4 = func_2();
    return Struct_1(arg_2.b.a, any(var_1), ~select(~vec3<u32>(4294967295u, 4294967295u, arg_2.b.c.x), arg_2.b.a.wzw, !(!var_1.x)), arg_2.b.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global1.yx)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) * _wgslsmith_f_op_f32(f32(-1f) * -642f)))), select(select(select(!vec2<bool>(false, arg_1.b), arg_0, select(arg_0, vec2<bool>(arg_1.b, false), false)), vec2<bool>(true, !arg_1.b), arg_0.x), select(func_3(true, vec3<bool>(true, arg_1.b, arg_0.x), Struct_2(global0[_wgslsmith_index_u32(arg_1.c.x, 19u)], arg_1), arg_1.d).yy, select(arg_0, !vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x)), !arg_0.x), true)));
    global0 = array<vec2<f32>, 19>();
    let var_1 = !arg_0;
    var var_2 = min(arg_1.a.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c.x, arg_1.a.x, arg_1.c.x, 68863u) ^ ~vec4<u32>(4294967295u, 4294967295u, arg_1.c.x, arg_1.a.x), vec4<u32>(arg_1.c.x, ~arg_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(70697u, arg_1.c.x), vec2<u32>(76315u, 12493u)), 1u)));
    let var_3 = Struct_4(arg_0.x, -1i, Struct_1(vec4<u32>(_wgslsmith_div_u32(~arg_1.c.x, 4294967295u), arg_1.c.x, reverseBits(arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(55867u, 26868u, arg_1.c.x, arg_1.c.x), vec4<u32>(arg_1.a.x, arg_1.c.x, 80762u, 1u))), !(arg_1.d < 6032i), arg_1.c, 34805i));
    return Struct_3(any(!(!var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(~(~(~20263u)), ~1u, ~min(~28530u, reverseBits(1769u))), 25955u, 1u, 0u);
    var var_1 = func_4(vec2<bool>(true, true), func_1(global1.x, vec2<u32>(~_wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + global1.xz)), Struct_1(min(vec4<u32>(1u, var_0.x, var_0.x, var_0.x), vec4<u32>(37881u, 27616u, var_0.x, var_0.x)), false, firstTrailingBit(var_0.wzw), u_input.a))));
    let var_2 = func_1(global1.x, var_0.zw, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(min(1f, global1.x))), func_1(global1.x, vec2<u32>(23209u, var_0.x >> (89069u % 32u)), Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -1128f), vec2<f32>(global1.x, 1000f))), Struct_1(vec4<u32>(var_0.x, 4294967295u, var_0.x, 1u), var_1.a, var_0.xyx, u_input.a))))).a;
    var_0 = ~abs(var_2);
    var_0 = vec4<u32>(~(~_wgslsmith_add_u32(33394u, firstLeadingBit(var_0.x))), countOneBits(12221u), 15676u, 0u);
    let var_3 = var_1.a;
    var var_4 = func_1(395f, ~var_0.zy, Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(countOneBits(var_2.x), _wgslsmith_dot_vec3_u32(var_2.zyy, vec3<u32>(16168u, 4294967295u, 26935u))), ~1u), 19u)], Struct_1(vec4<u32>(~var_0.x, var_2.x, _wgslsmith_mod_u32(0u, 4294967295u), var_0.x), false, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.x, 4294967295u), var_0.zww), vec3<u32>(0u, var_0.x, var_2.x) & var_0.wxz), 2147483647i))).a.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(746f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1733f, global1.x)))))), var_1.a)));
}

