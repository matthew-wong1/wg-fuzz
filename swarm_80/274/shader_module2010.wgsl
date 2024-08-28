struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 27>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1169f)), 356f, _wgslsmith_f_op_f32(f32(-1f) * -347f), 586f)));
    global1 = array<vec4<bool>, 27>();
    let var_1 = !(!(!vec3<bool>(true, true, u_input.b.x <= 44383u)));
    global0 = ~abs(4294967295u);
    let var_2 = Struct_3(~(~54909u), ~(-vec4<i32>(reverseBits(u_input.a), -6020i, -32983i, countOneBits(44605i))), arg_1);
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1243f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, -289f))) * _wgslsmith_f_op_f32(f32(-1f) * -1435f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.a, -753f)), 1371f)))) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, arg_1.a, true)) * var_0.x))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global1 = array<vec4<bool>, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a) << (22095u % 32u)) | reverseBits(~vec2<i32>(1i, 1i) & _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(47209i, u_input.a))), Struct_1(1f), false));
    let var_1 = Struct_3(_wgslsmith_mod_u32(u_input.c.x, u_input.b.x), -countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(54306i, 2147483647i, u_input.a, -1i), vec4<i32>(u_input.a, -47795i, 7417i, u_input.a), vec4<i32>(-18804i, -1i, u_input.a, 19545i)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2178f - -314f))));
    global0 = u_input.c.x;
    global0 = select(4294967295u, var_1.a, true);
    return select(select(vec3<bool>(arg_0, !arg_0, arg_0), vec3<bool>(true, any(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true))), !(!arg_0)), false), !(!select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(true, false, true), vec3<bool>(arg_0, false, false), vec3<bool>(true, false, false)), var_1.b.x == -1i)), vec3<bool>(arg_0, true, !arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = ~(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(22076u, 1u, u_input.c.x), vec3<u32>(u_input.b.x, 11820u, 0u))) & arg_0.a);
    var var_1 = u_input.a;
    let var_2 = arg_0;
    var var_3 = global1[_wgslsmith_index_u32(~u_input.c.x, 27u)];
    let var_4 = var_3.wx;
    return Struct_3(arg_0.a, vec4<i32>(-1i) * -(~(-vec4<i32>(-23504i, -2147483647i, -35580i, u_input.a))), Struct_1(568f));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = func_4(arg_2, arg_2.a, func_2(!(~arg_2.a != 71942u)));
    let var_1 = vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b.yz, max(var_0.b.yw, vec2<i32>(1i, var_0.b.x))), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-5631i, var_0.b.x), all(vec2<bool>(true, false)))), -var_0.b.x, var_0.b.x) ^ ~vec4<i32>(min(var_0.b.x, u_input.a), -_wgslsmith_clamp_i32(u_input.a, u_input.a, var_0.b.x), _wgslsmith_mult_i32(-553i, u_input.a), var_0.b.x);
    let var_2 = _wgslsmith_sub_u32(u_input.c.x, arg_1.x) >> (_wgslsmith_mod_u32(abs(u_input.c.x), 1u) % 32u);
    var var_3 = ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_2.a, 60461u, ~1u, var_2)), ~firstLeadingBit(vec4<u32>(var_0.a, var_0.a, 1u, arg_1.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_2.b.yxz, _wgslsmith_f_op_vec3_f32(arg_2.b.xzw * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, -1386f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-982f, arg_0, -1968f))))))), vec3<f32>(_wgslsmith_div_f32(var_0.c.a, -387f), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(200f))))), var_0.c.a), vec3<bool>(true, 0i < -_wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x), u_input.a <= 0i)));
    return Struct_3(var_2, var_0.b, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 27>();
    let var_0 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-500f, -690f))), 1733f)), min(firstTrailingBit(~firstLeadingBit(vec3<u32>(u_input.c.x, 73255u, 28206u))), select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<bool>(true, false, true)), min(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x))), vec3<u32>(1u, _wgslsmith_clamp_u32(15757u, 132267u, u_input.c.x), _wgslsmith_div_u32(27138u, u_input.b.x)), any(vec3<bool>(false, true, false)))), Struct_2(71973u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, -984f, -537f, -962f)))));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(~47887u, _wgslsmith_dot_vec3_u32(vec3<u32>(51504u, var_0.a, u_input.c.x), vec3<u32>(u_input.c.x, var_0.a, u_input.b.x)))), ~firstLeadingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.a, var_0.c.a, 656f, var_0.c.a), vec4<f32>(var_0.c.a, var_0.c.a, -102f, 1766f))))))));
    var var_2 = Struct_3(countOneBits(firstTrailingBit(_wgslsmith_div_u32(abs(4294967295u), min(var_1.a, 1u)))), -func_4(var_1, var_0.a, vec3<bool>(true, all(vec2<bool>(true, true)), select(false, false, false))).b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1534f))));
    global1 = array<vec4<bool>, 27>();
    var var_3 = 8774u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(select(var_2.b.xx, vec2<i32>(-31520i, var_0.b.x), vec2<bool>(true, true)), firstLeadingBit(var_2.b.xy)) >> (reverseBits(vec2<u32>(var_1.a, 1u)) % vec2<u32>(32u)), -var_2.b.wz));
}

