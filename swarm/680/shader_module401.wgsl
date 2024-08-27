struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(1000f, -1000f, 151f), vec3<f32>(-1674f, 195f, -665f), vec3<f32>(-887f, -279f, -486f), vec3<f32>(-1000f, -674f, 1000f), vec3<f32>(-1525f, -1370f, 1169f), vec3<f32>(-509f, 1000f, -243f), vec3<f32>(-810f, 819f, -823f), vec3<f32>(1306f, -135f, 390f), vec3<f32>(1000f, -2513f, 652f), vec3<f32>(534f, -260f, -301f));

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(2147483647i, 1i, 0i, 6297i), 1401f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = arg_0;
    global2 = Struct_2(global2.a, _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(f32(-1f) * -1279f)));
    let var_1 = vec2<bool>(!var_0.a, false);
    let var_2 = var_1;
    let var_3 = -_wgslsmith_div_vec2_i32(select(u_input.a.zx, abs(u_input.a.ww), global1.a), select(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, -2147483647i), firstLeadingBit(global2.a.x)), -u_input.a.xx, all(vec3<bool>(true, false, true))));
    return Struct_2(-(vec4<i32>(-1i) * -(~vec4<i32>(1i, global2.a.x, 2147483647i, -19022i))), global2.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = i32(-1i) * -22625i;
    global2 = arg_0;
    global2 = func_2(Struct_1(any(!vec2<bool>(global1.a, false)) && (~u_input.e < abs(42686u))), !(!all(!vec3<bool>(true, arg_1.a, true))));
    let var_1 = -2379f;
    let var_2 = arg_1;
    return _wgslsmith_mult_u32(8021u, u_input.d.x) ^ 792u;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> f32 {
    var var_0 = Struct_1(global1.a);
    global1 = Struct_1(!any(vec2<bool>(-66017i != u_input.c, all(vec4<bool>(var_0.a, true, global1.a, false)))));
    var_0 = Struct_1(~(17990u & min(u_input.d.x, u_input.d.x)) == u_input.d.x);
    let var_1 = _wgslsmith_dot_vec4_u32(select(~select(vec4<u32>(1u, u_input.e, u_input.e, 31975u), vec4<u32>(u_input.e, u_input.d.x, 0u, u_input.d.x) >> (vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.d.x) % vec4<u32>(32u)), true), select(select(vec4<u32>(4294967295u, 59069u, 0u, u_input.d.x) << (vec4<u32>(u_input.e, u_input.e, 28447u, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 642u, 58818u, u_input.e), vec4<u32>(u_input.e, u_input.d.x, 72434u, 0u)), true), _wgslsmith_div_vec4_u32(~vec4<u32>(41303u, u_input.d.x, 69173u, 50286u), vec4<u32>(47333u, u_input.d.x, 1u, u_input.d.x)), var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.b, arg_0.b)), -725f) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.b, 788f), 1210f))), ~(~vec4<u32>(u_input.d.x, 58789u, 129u, 1u) << (~firstLeadingBit(vec4<u32>(94056u, u_input.e, 46764u, 45321u)) % vec4<u32>(32u))));
    global2 = Struct_2(u_input.a, _wgslsmith_f_op_f32(-arg_0.b));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global2.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - -1032f));
    let var_0 = _wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(175f * 1044f)));
    var var_1 = ~_wgslsmith_div_u32(func_1(Struct_2(vec4<i32>(1274i, 14862i, u_input.b, -1i) | global2.a, _wgslsmith_f_op_f32(-var_0)), Struct_1(all(vec4<bool>(true, true, true, global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2793f)) * _wgslsmith_f_op_f32(min(372f, global2.b)))), u_input.d.x);
    var var_2 = Struct_1(global1.a);
    global2 = Struct_2(vec4<i32>(14093i, -30572i, ~7339i, -39320i), _wgslsmith_f_op_f32(exp2(global2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_dot_vec2_u32(reverseBits(u_input.d), vec2<u32>(u_input.d.x, u_input.e)), u_input.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -1000f) + vec2<f32>(-628f, -104f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1123f), vec2<f32>(var_0, -487f))))), 18401i, min(func_2(Struct_1(true && global1.a), all(vec4<bool>(true, true, true, true))).a.zyy, global2.a.xwx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1308f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -804f), -2757f)), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(-2147483647i, 1503i, u_input.c, 2147483647i), var_0), u_input.c)))));
}

