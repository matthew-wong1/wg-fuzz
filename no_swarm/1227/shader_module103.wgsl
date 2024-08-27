struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 12>;

var<private> global2: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_add_vec4_u32(~firstTrailingBit(~(~vec4<u32>(arg_3, 1u, 19176u, 4294967295u))), abs(vec4<u32>(reverseBits(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_3, global2.x)), arg_1.a), arg_3, firstTrailingBit(_wgslsmith_mult_u32(35566u, arg_3)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-731f, _wgslsmith_f_op_f32(trunc(arg_2.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -495f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, arg_2.d)), vec4<f32>(718f, -139f, arg_0.a.x, var_0.d), !vec4<bool>(var_0.b, true, true, arg_0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.d, arg_1.d.x, 1000f, arg_0.a.x))))), true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a)))), true, -arg_1.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d * -576f))));
    let var_4 = !vec3<bool>(~var_1.x > ~u_input.b, !(!arg_0.b != false), any(vec4<bool>(true, true, true, true)));
    return _wgslsmith_mult_i32(~53030i, arg_2.c.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = !vec3<bool>(func_3(Struct_1(vec2<f32>(arg_1.x, 1330f), true, vec4<i32>(u_input.a, 10151i, global0.x, -30172i), arg_1.x), Struct_2(vec2<u32>(4294967295u, 55490u), Struct_1(vec2<f32>(arg_1.x, 244f), false, vec4<i32>(u_input.c.x, -11588i, 1i, global0.x), 701f), u_input.a, arg_1.yz, vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 2147483647i)), Struct_1(vec2<f32>(-242f, arg_1.x), true, vec4<i32>(-2147483647i, 5392i, -5861i, -2147483647i), arg_1.x), 0u) < -(u_input.c.x << (28396u % 32u)), true, true);
    var var_1 = ~arg_0.x;
    global0 = -(vec4<i32>(_wgslsmith_mod_i32(0i, -global0.x), -(~u_input.c.x), ~(~global0.x), _wgslsmith_mult_i32(global0.x, 1i & global0.x)) | -(~(vec4<i32>(u_input.c.x, global0.x, global0.x, 0i) ^ vec4<i32>(-39700i, -2147483647i, -36701i, u_input.a))));
    let var_2 = 1u < global2.x;
    let var_3 = var_2;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(arg_0.zzw, global2.zwy)), reverseBits(vec3<u32>(abs(4371u), 1u, ~4294967295u))), firstTrailingBit(vec3<u32>(~arg_0.x, 52547u, arg_0.x)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = min(reverseBits(~_wgslsmith_mod_vec3_u32(global2.zyx, vec3<u32>(arg_0, u_input.d, 18564u)) | func_2(vec4<u32>(global1[_wgslsmith_index_u32(global2.x, 12u)], global2.x, 76297u, 4294967295u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(220f, -142f, -2016f), vec3<f32>(760f, 372f, 1019f))))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(42569u, global2.x, 97835u), global2.zxz, vec3<bool>(false, true, false)), abs(vec3<u32>(arg_0, 1u, 24836u))), global2.ywy), abs(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(28039u, 12u)], ~u_input.b)), ~(~_wgslsmith_add_u32(arg_0, 4294967295u))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1205f - _wgslsmith_f_op_f32(-120f + -773f)), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1942f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(561f, -591f, -664f), vec3<f32>(507f, -233f, -623f))))));
    global0 = vec4<i32>((i32(-1i) * -1i) & global0.x, _wgslsmith_mult_i32(~23755i, u_input.c.x), 6576i, 0i);
    global1 = array<u32, 12>();
    global1 = array<u32, 12>();
    return StorageBuffer(u_input.a, -_wgslsmith_sub_i32(-global0.x ^ u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 34601i, global0.x), countOneBits(u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(48811u);
}

