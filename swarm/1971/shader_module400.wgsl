struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(~u_input.e);
    var_0 = Struct_1(var_0.a);
    var var_1 = -911f;
    let var_2 = Struct_1(u_input.b.x);
    let var_3 = var_2;
    return 336f;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(~(~_wgslsmith_mod_u32(u_input.b.x, 8784u)));
    var var_1 = ~u_input.c;
    let var_2 = ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(var_0.a, 1u)) | ~firstLeadingBit(u_input.b.yw), u_input.b.zx, ~(~vec2<u32>(arg_1.a, 41454u)));
    global0 = array<vec3<i32>, 29>();
    let var_3 = Struct_1(~1u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1047f)), 604f);
}

fn func_1() -> vec2<f32> {
    var var_0 = 2147483647i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(976f, 1921f) + _wgslsmith_f_op_f32(-1607f + 1059f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(470f + 783f))) - _wgslsmith_f_op_f32(-1580f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2520f, -657f))))), 923f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1039f, 819f))))), _wgslsmith_f_op_f32(func_2()))));
    var var_2 = vec3<i32>(u_input.a.x, reverseBits(-u_input.d), abs(_wgslsmith_dot_vec4_i32(max(u_input.a, u_input.a) >> (~vec4<u32>(u_input.c, 4294967295u, 53371u, 67729u) % vec4<u32>(32u)), vec4<i32>(u_input.d, 2147483647i, u_input.a.x, 0i) >> (~vec4<u32>(0u, 4294967295u, 25312u, 64522u) % vec4<u32>(32u)))));
    var var_3 = (u_input.e >= ~53279u) && false;
    global0 = array<vec3<i32>, 29>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zw), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a.x, 57022i, -2147483647i, 45035i), Struct_1(u_input.c))) - 1342f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1848f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -1100f;
    let var_1 = Struct_1(35492u);
    global0 = array<vec3<i32>, 29>();
    global1 = vec3<bool>(any(select(select(select(vec3<bool>(false, arg_2.x, global1.x), vec3<bool>(arg_2.x, true, arg_2.x), false), select(vec3<bool>(true, false, arg_2.x), vec3<bool>(global1.x, false, true), true), !vec3<bool>(arg_2.x, false, global1.x)), !select(vec3<bool>(global1.x, true, arg_2.x), vec3<bool>(arg_2.x, true, false), true), select(select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(global1.x, false, arg_2.x), arg_2.x), vec3<bool>(true, true, true), !vec3<bool>(global1.x, false, global1.x)))), true, arg_2.x);
    global1 = select(vec3<bool>(global1.x, true, true), vec3<bool>(true, all(!global1.yz), global1.x), vec3<bool>(true, !(_wgslsmith_div_f32(arg_0.x, -224f) != _wgslsmith_f_op_f32(642f + arg_0.x)), arg_2.x));
    return Struct_1(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0i;
    var var_1 = ~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-1i) * -u_input.a), vec4<i32>(~0i, -u_input.a.x, abs(0i), -2147483647i) << (~u_input.b % vec4<u32>(32u)));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-671f, -646f) + vec2<f32>(-1554f, -1554f))) + vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-2169f)))), u_input.a.wzx, vec2<bool>(false, all(select(vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, global1.x, true, true)))), Struct_1(~u_input.c));
    var_2 = Struct_1(20836u);
    let var_3 = min(vec2<i32>(_wgslsmith_sub_i32(~var_0, reverseBits(firstTrailingBit(u_input.d))), 40044i), _wgslsmith_div_vec2_i32(u_input.a.ww, var_1.wz));
    var_1 = _wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(u_input.a, -u_input.a, _wgslsmith_mult_vec4_i32(-u_input.a, u_input.a)), vec4<i32>(2147483647i, var_1.x, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec2_i32(u_input.a.ww, var_3), 1i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, var_3.x, -18846i), 0i, var_1.x)), firstTrailingBit(min(var_3.x, -2147483647i))));
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2470f, -2317f), vec2<f32>(1f, _wgslsmith_f_op_f32(421f - 427f)))), vec3<i32>(_wgslsmith_mult_i32(2147483647i, 0i), firstTrailingBit(-19734i), var_0), select(global1.yz, select(!global1.yy, select(!global1.xy, select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), false), 7522u > u_input.b.x), !global1.x), global1.x), Struct_1(_wgslsmith_mod_u32(1u, 4294967295u)));
    let var_5 = vec3<i32>(-select(abs(u_input.a.x) >> (1u % 32u), abs(-34256i), any(global1.xy)), var_1.x, max(-39608i, 1i));
    let var_6 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1451f + -620f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -674f))), -413f), vec3<i32>(var_0, 1i, var_5.x), select(!select(!vec2<bool>(true, global1.x), global1.xy, global1.xx), select(global1.yx, select(global1.xy, vec2<bool>(true, false), global1.xz), !select(vec2<bool>(false, global1.x), global1.xx, global1.yy)), all(vec3<bool>(false, any(vec2<bool>(true, global1.x)), false))), Struct_1(10057u));
    let x = u_input.a;
    s_output = StorageBuffer(14609u << (u_input.b.x % 32u));
}

