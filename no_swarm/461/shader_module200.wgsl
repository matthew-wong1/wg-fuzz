struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, true, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec2<bool> {
    global0 = array<Struct_2, 29>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 29u)];
    let var_1 = Struct_1(select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-16706i, 2147483647i), vec2<i32>(-1i, 36616i)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(58715i, 2147483647i))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, -32815i)), vec2<i32>(19319i, 27718i)), var_0.a.x) << ((u_input.a >> (~(~vec2<u32>(arg_1, u_input.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), ~u_input.a, var_0.a.x);
    global0 = array<Struct_2, 29>();
    let var_2 = _wgslsmith_div_f32(arg_0, arg_0);
    return !var_0.a.zw;
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec4<u32> {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_0 = Struct_3(arg_0.d.a, vec3<u32>(~arg_0.d.b.x, ~1u, 0u));
    let var_1 = arg_0;
    global0 = array<Struct_2, 29>();
    return ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, ~var_1.d.b.x, 77484u, ~var_0.b.x)), vec4<u32>(~var_0.b.x, _wgslsmith_dot_vec2_u32(~u_input.a, max(vec2<u32>(arg_0.d.b.x, 1u), u_input.e.xz)), ~u_input.a.x | ~1u, abs(~arg_0.d.b.x)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = func_2(-1492f, select(~u_input.c, reverseBits(47299u), select(false && !arg_0, arg_0, true)));
    var var_1 = Struct_4(func_3(Struct_5(~vec4<i32>(-15060i, 46337i, arg_1.x, 2147483647i), -199f, _wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(f32(-1f) * -946f)), Struct_3(firstTrailingBit(9072i), u_input.e.yyw ^ u_input.e.zwx)), 1i));
    var_1 = Struct_4(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, 50774u, var_1.a.x), abs(~select(var_1.a, u_input.e, vec4<bool>(var_0.x, false, arg_0, false)))));
    global0 = array<Struct_2, 29>();
    return _wgslsmith_f_op_f32(-2160f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(211f)))))), 319f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true, vec3<i32>(-12357i, 3433i, 0i))), -609f)), -1055f))));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-3405i, -1i), vec2<i32>(1i, 0i)), max(vec2<i32>(1i, -2147483647i), vec2<i32>(-2147483647i, 15770i))) << (u_input.d % 32u));
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2, firstLeadingBit(var_2), 1i ^ -_wgslsmith_div_i32(-var_1, max(var_2, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1374f, 1313f, 613f), vec3<f32>(-1000f, 444f, -760f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(false, true, true))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1846f, 598f, -1214f))))));
}

