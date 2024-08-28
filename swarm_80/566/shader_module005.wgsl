struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(68879u, u_input.e), vec2<u32>(91792u, u_input.e)), ~(~vec2<u32>(77812u, 4294967295u)))) >> (1u % 32u);
    var_0 = _wgslsmith_add_u32(~u_input.e, 1u);
    global0 = Struct_1(!global0.a, ~vec3<i32>(-18026i, 25844i, -(1i << (u_input.e % 32u))));
    var_0 = max(~(~(~u_input.e)), 0u);
    var var_1 = 1i;
    return -72361i;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(!select(!global0.a, select(select(global0.a, global0.a, vec3<bool>(false, global0.a.x, global0.a.x)), vec3<bool>(true, false, false), !vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), !vec3<bool>(global0.a.x, global0.a.x, true)), vec3<i32>(33257i | _wgslsmith_add_i32(0i | global0.b.x, -1i), firstTrailingBit(~1i), _wgslsmith_mod_i32(1i & global0.b.x, 2147483647i)));
    let var_1 = true;
    global0 = Struct_1(vec3<bool>(arg_0 <= ((2147483647i | global0.b.x) ^ func_3()), var_1, any(vec2<bool>(any(var_0.a.yx), true))), -u_input.a.yxy);
    var var_2 = vec4<bool>(any(!(!vec3<bool>(false, false, var_1))), any(vec4<bool>(var_0.a.x, global0.a.x, !var_0.a.x, all(vec4<bool>(false, var_1, false, var_0.a.x)))) & all(select(vec3<bool>(var_1, global0.a.x, var_1), select(var_0.a, vec3<bool>(global0.a.x, var_0.a.x, false), false), true)), var_0.a.x, true);
    var var_3 = firstLeadingBit(20077i);
    return var_2.x & (u_input.e <= _wgslsmith_dot_vec4_u32(~vec4<u32>(28989u, 13064u, u_input.e, u_input.e), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 0u, u_input.e, 29918u), ~vec4<u32>(u_input.e, 4294967295u, 24297u, u_input.e))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(true, !all(select(vec2<bool>(global0.a.x, false), global0.a.zz, func_2(13706i))), func_2(u_input.c), global0.a.x);
    let var_1 = abs(37901u);
    global0 = Struct_1(global0.a, u_input.a.wyx);
    let var_2 = vec3<i32>(global0.b.x, _wgslsmith_dot_vec4_i32(u_input.a, -min(~vec4<i32>(global0.b.x, 2147483647i, 53223i, global0.b.x), firstTrailingBit(u_input.a))), max(u_input.a.x, global0.b.x));
    global0 = Struct_1(!global0.a, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(global0.b.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_2.x, global0.b.x, -2147483647i, -27154i)), func_3()), _wgslsmith_mod_vec3_i32(min(vec3<i32>(global0.b.x, global0.b.x, -1i), vec3<i32>(var_2.x, 2147483647i, -37893i)), countOneBits(vec3<i32>(u_input.b, var_2.x, var_2.x))), u_input.a.zwz), -firstTrailingBit(vec3<i32>(1i, 0i, 12290i)), !vec3<bool>(all(vec2<bool>(var_0.x, var_0.x)), true && global0.a.x, var_0.x)));
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(arg_0.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xwx, ~_wgslsmith_div_vec3_i32(u_input.a.ywz, vec3<i32>(arg_0.b.x, arg_0.b.x, 2147483647i))), countOneBits(global0.b) >> (~(~arg_2.wwy) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wz, vec2<i32>(global0.b.x, -38531i)), min(arg_0.b.x, global0.b.x), -2147483647i), select(max(vec3<i32>(11623i, 2147483647i, u_input.b), vec3<i32>(0i, u_input.a.x, arg_0.b.x)), vec3<i32>(u_input.a.x, 1i, -1228i), select(vec3<bool>(false, arg_0.a.x, false), global0.a, global0.a.x)), global0.b)));
    let var_0 = Struct_1(!(!arg_0.a), ~global0.b);
    global0 = arg_0;
    let var_1 = select(select(vec4<bool>(any(vec3<bool>(false, arg_0.a.x, arg_0.a.x)), var_0.a.x, (arg_1.x > 1u) == true, false), !vec4<bool>(any(vec4<bool>(global0.a.x, true, false, false)), var_0.a.x, !arg_0.a.x, false), any(func_1(~arg_2.wy, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(529f, 321f)))))), select(vec4<bool>(func_1(arg_2.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, -623f))).x, true, all(global0.a.yz), !(global0.a.x | global0.a.x)), vec4<bool>(~(-22910i) <= abs(arg_0.b.x), var_0.a.x, global0.a.x, true), var_0.a.x), true != arg_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(423f - -814f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1440f * -840f))), -873f)))));
    return Struct_1(vec3<bool>(false, var_1.x, func_2(min(0i, _wgslsmith_div_i32(global0.b.x, var_0.b.x)))), vec3<i32>(-6844i & ((-2147483647i ^ u_input.b) << (select(u_input.e, arg_1.x, global0.a.x) % 32u)), 1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, 45502i, -1i), min(global0.b, arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(select(func_1(~vec2<u32>(u_input.e, u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, 1582f))), func_1(select(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, u_input.e), vec2<bool>(global0.a.x, false)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1016f, 460f), vec2<f32>(1442f, 586f)))), !select(vec3<bool>(global0.a.x, false, false), global0.a, global0.a.x)), vec3<i32>(u_input.b << (~u_input.e % 32u), _wgslsmith_add_i32(global0.b.x, abs(global0.b.x)), _wgslsmith_add_i32(0i, -1i) >> (u_input.e % 32u))), select(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, u_input.e), select(vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.e), vec4<u32>(u_input.e, 5341u, 0u, u_input.e), global0.a.x))), select(vec4<u32>(1u, u_input.e, 4294967295u, 4294967295u), ~firstTrailingBit(vec4<u32>(u_input.e, u_input.e, u_input.e, 64501u)), any(!global0.a.zx)), !(!vec4<bool>(false, global0.a.x, global0.a.x, false))), vec4<u32>(55849u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 1335u, u_input.e, 1u), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)), ~vec4<u32>(24194u, u_input.e, u_input.e, 1u)), 0u | (~u_input.e ^ max(u_input.e, 39852u)), abs(~u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zzw, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-486f, 2520f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-753f, 442f, -1279f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-497f, 351f, -575f) - vec3<f32>(230f, 1038f, 432f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1132f, -336f, -150f), vec3<f32>(1416f, 847f, -1388f), global0.a))))))));
}

