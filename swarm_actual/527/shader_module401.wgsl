struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<u32>, 1>;

var<private> global2: bool = false;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> bool {
    let var_0 = Struct_3(Struct_2(~11758u | (_wgslsmith_mult_u32(0u, u_input.c) & ~u_input.e)));
    global0 = select(vec3<bool>(!(global0.x != (global0.x | global0.x)), !(!global0.x) & select(true, global0.x, true), var_0.a.a < abs(firstTrailingBit(u_input.c))), vec3<bool>(global0.x, false, any(vec3<bool>(false, true, !global0.x))), global0.x);
    let var_1 = vec3<u32>(~u_input.e, reverseBits(_wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(var_0.a.a, var_0.a.a)), max(vec2<u32>(25200u, u_input.c), vec2<u32>(4294967295u, 0u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 8889u), vec3<u32>(4294967295u, var_0.a.a, u_input.e)), _wgslsmith_div_u32(0u, 1u)))), max(_wgslsmith_mod_u32(1u, u_input.c), abs(4294967295u)) >> (0u % 32u));
    global1 = array<vec4<u32>, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(347f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f) - _wgslsmith_f_op_f32(902f - -1330f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1592f))))) < 1f;
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_add_u32(select(u_input.c, u_input.c | u_input.e, global0.x | global0.x), u_input.c)));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1415f))))) - 1f), -762f);
    let var_3 = !any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global0.x, global0.x, global0.x), true));
    global1 = array<vec4<u32>, 1>();
    return 1i;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = vec3<i32>(2147483647i, u_input.d, -2147483647i);
    global1 = array<vec4<u32>, 1>();
    var var_1 = Struct_3(arg_0);
    let var_2 = vec4<i32>(-(i32(-1i) * -func_3()), u_input.d, -var_0.x, select(var_0.x, var_0.x, any(!vec2<bool>(true, global0.x))));
    let var_3 = ~4294967295u;
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    var var_0 = -2147483647i;
    global1 = array<vec4<u32>, 1>();
    var var_1 = select(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.e, 1u)], vec4<u32>(u_input.e, u_input.e, 0u, u_input.e)), u_input.c, 231u)) | _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(14632u, 23031u, u_input.e)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.c), vec3<u32>(u_input.e, 0u, u_input.e))), vec3<u32>(u_input.e, 0u, 6118u)), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(u_input.e), min(u_input.e, 0u), u_input.e), ~vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(u_input.c, u_input.c, u_input.c)) & max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, 101375u), vec3<u32>(u_input.c, 4294967295u, 22259u)) << (min(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.e)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.c, 0u) & vec3<u32>(u_input.c, 1u, u_input.e), _wgslsmith_sub_vec3_u32(vec3<u32>(17609u, 0u, 4294967295u), vec3<u32>(43560u, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(68966u, u_input.c, u_input.c), vec3<u32>(42222u, 18026u, u_input.c)))), vec3<bool>(arg_1.x, any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.x, true), arg_1.yyz), select(arg_1.wwz, vec3<bool>(true, false, false), arg_1.x), global0.x || true)), true));
    let var_2 = _wgslsmith_mult_u32(firstTrailingBit(var_1.x), 1u);
    global0 = select(!select(vec3<bool>(495f <= arg_0, any(vec3<bool>(true, true, global0.x)), any(vec3<bool>(false, false, false))), !arg_1.zyy, true), !select(arg_1.xyw, !vec3<bool>(global0.x, arg_1.x, arg_1.x), !vec3<bool>(global0.x, false, true)), !(!global0.x));
    return Struct_2(36407u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(~select(vec4<i32>(u_input.b, -1i, 1i, u_input.b), vec4<i32>(u_input.a.x, -1i, -46839i, -10183i), !vec4<bool>(global0.x, true, true, true))));
    let var_1 = func_4(_wgslsmith_f_op_f32(-933f - _wgslsmith_f_op_f32(abs(-971f))), select(!vec4<bool>(u_input.a.x == -877i, func_1(), global0.x, !global0.x), vec4<bool>(any(vec2<bool>(false, true)), all(!vec4<bool>(global0.x, global0.x, true, global0.x)), !(global0.x | true), global0.x), vec4<bool>(true, _wgslsmith_f_op_f32(floor(390f)) < -1025f, select(global0.x, global0.x && true, func_2(Struct_2(u_input.c))), false)), var_0.x);
    global2 = all(vec3<bool>(global0.x, global0.x, func_2(var_1)));
    let var_2 = Struct_2(41020u);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f + 180f)), 456f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1028f, -1000f) + vec2<f32>(116f, 368f))) + vec2<f32>(_wgslsmith_f_op_f32(select(1000f, 1000f, global0.x)), -1602f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(191f * _wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_f_op_f32(f32(-1f) * -586f))));
    global1 = array<vec4<u32>, 1>();
    var var_4 = u_input.c;
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(877f, reverseBits(~_wgslsmith_mod_u32(var_2.a, u_input.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f + -1790f)), _wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(floor(-1259f))))));
}

