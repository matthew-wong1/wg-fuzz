struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7798i;

var<private> global1: array<vec2<u32>, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<u32>) -> vec4<bool> {
    global1 = array<vec2<u32>, 14>();
    let var_0 = vec3<bool>((true | !arg_1.x) & arg_2, !(!(!arg_1.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(30576u, 14u)]), ~u_input.a.yx) != _wgslsmith_mod_u32(45084u, arg_3.x));
    let var_1 = u_input.a;
    let var_2 = -25459i;
    var var_3 = var_1.x << ((u_input.a.x & arg_3.x) % 32u);
    return !arg_1;
}

fn func_2() -> Struct_2 {
    global1 = array<vec2<u32>, 14>();
    var var_0 = !any(func_3(vec4<f32>(-762f, 109f, _wgslsmith_f_op_f32(335f + -1000f), _wgslsmith_div_f32(553f, -135f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), true, u_input.a.zx));
    return Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(abs(u_input.a.x), 56109u), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.wxy, vec3<u32>(u_input.a.x, 68112u, u_input.a.x)))) < _wgslsmith_div_u32(_wgslsmith_sub_u32(57199u | u_input.a.x, ~0u), ~_wgslsmith_dot_vec3_u32(u_input.a.zzz, u_input.a.wyz)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3.c;
    global0 = 28308i;
    var var_1 = func_2();
    return arg_3.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec4<bool> {
    var var_0 = vec2<u32>(0u, 1u);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-477f, _wgslsmith_f_op_f32(f32(-1f) * -1089f), 21159u != u_input.a.x)))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-351f)), arg_1);
    var var_3 = ~reverseBits(vec3<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -40048i), ~(-2147483647i)), -(~u_input.b.x)));
    let var_4 = ~vec3<u32>(3445u, arg_0.x, _wgslsmith_sub_u32(var_0.x, 0u));
    return vec4<bool>(true | ((abs(96210u) <= (var_4.x | 4294967295u)) | any(vec3<bool>(true, false, false))), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f + var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - 1418f))) > _wgslsmith_f_op_f32(func_4(vec2<u32>(abs(u_input.a.x), arg_0.x), func_2(), u_input.b.x, Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1050f) - vec2<f32>(var_2, var_2)), vec4<bool>(true, true, true, true), Struct_2(false)))), all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x << (firstLeadingBit(u_input.a.x) % 32u);
    let var_0 = true;
    global0 = _wgslsmith_dot_vec3_i32(u_input.c, u_input.c);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1000f - -715f), _wgslsmith_f_op_f32(min(-223f, -1000f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-876f, 1278f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(909f, -1000f) * vec2<f32>(-210f, -245f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(880f + -450f)))))), !func_1(u_input.a.zww, -798f), func_2());
    global1 = array<vec2<u32>, 14>();
    var var_2 = Struct_1(vec4<bool>(var_1.b.x, any(func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, -1020f, 244f, var_1.a.x))), vec4<bool>(true, var_1.b.x, false, false), var_1.c.a, _wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(70410u, 1u)))), true, true), firstTrailingBit(0u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(979f)), var_1.a.x, !(1000f != var_1.a.x))), vec4<bool>(0i <= u_input.c.x, false, true | var_0, true));
    var_2 = Struct_1(var_2.d, min(u_input.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f))))), vec4<bool>(var_1.c.a, u_input.a.x != 26129u, all(var_1.b.ww), var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.xxw, ~(_wgslsmith_add_vec3_u32(vec3<u32>(12343u, u_input.a.x, 1u), vec3<u32>(var_2.b, var_2.b, 1577u)) | ~u_input.a.zzx)), 1390f, ~(vec4<i32>(u_input.c.x & u_input.c.x, u_input.b.x | 20723i, 1i, reverseBits(0i)) & vec4<i32>(u_input.c.x, u_input.b.x, -1i, min(u_input.c.x, u_input.c.x))), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(u_input.b.x, select(-2147483647i, u_input.c.x, false))), i32(-1i) * -(i32(-1i) * -1i)));
}

