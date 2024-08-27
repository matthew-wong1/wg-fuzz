struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec4<u32> {
    global0 = (-abs(abs(u_input.e.x)) << (~_wgslsmith_mult_u32(~4294967295u, reverseBits(u_input.c)) % 32u)) ^ ~(2147483647i & u_input.e.x);
    let var_0 = vec2<bool>(all(select(vec2<bool>(!global2.x, global2.x), vec2<bool>(false, select(global2.x, false, global2.x)), vec2<bool>(global2.x, !global2.x))), -u_input.e.x <= -2147483647i);
    global0 = -_wgslsmith_dot_vec2_i32(~(~u_input.e), firstTrailingBit(vec2<i32>(~u_input.e.x, reverseBits(u_input.e.x))));
    let var_1 = ~(~(~17826u));
    global0 = -9081i;
    return vec4<u32>(~(~reverseBits(~4294967295u)), ~u_input.d, u_input.d >> (_wgslsmith_add_u32(firstLeadingBit(u_input.a.x & var_1), abs(_wgslsmith_div_u32(u_input.a.x, var_1))) % 32u), _wgslsmith_sub_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_u32(4294967295u, 1u))), 47620u));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f * 1000f) * 1f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f + var_0))))) * var_0);
    let var_2 = Struct_1(abs(~func_3(vec4<f32>(var_0, var_0, 1489f, 1510f), vec3<f32>(422f, var_1, -450f))) << (vec4<u32>(12163u, u_input.b.x, _wgslsmith_div_u32(0u, u_input.b.x) >> ((u_input.a.x | 4294967295u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(32421u, u_input.a.x, u_input.a.x, 1u) | vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 41039u, 1u), vec4<u32>(u_input.d, u_input.c, u_input.b.x, 4294967295u)))) % vec4<u32>(32u)), -329f, vec3<bool>(all(vec3<bool>(true, true, true)), global2.x, !any(vec3<bool>(true, global2.x, false))));
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - 1171f)))))), vec3<bool>(global2.x, false, global2.x));
    global2 = var_2.c.xy;
    return select(!select(vec4<bool>(!var_2.c.x, -37965i >= u_input.e.x, var_3.c.x, !var_2.c.x), vec4<bool>(var_2.c.x | global2.x, 603f <= var_1, true && var_2.c.x, u_input.e.x < 71685i), vec4<bool>(true, var_2.c.x, true, true)), vec4<bool>(-10441i > (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -4640i), vec3<i32>(-23403i, -1i, u_input.e.x)) | firstTrailingBit(u_input.e.x)), false, false, !global2.x), all(var_3.c.xz));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = u_input.e.x;
    var var_1 = u_input.a.x;
    let var_2 = u_input.e;
    var var_3 = !select(!arg_0, vec4<bool>(all(arg_0.xyz), true, true, !global2.x), u_input.c <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28341u, 0u, u_input.d), vec4<u32>(110729u, u_input.a.x, u_input.d, u_input.b.x)));
    let var_4 = func_2();
    return ~(~(~13245u)) ^ u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = reverseBits(~(~(-max(-27108i, u_input.e.x))));
    global3 = all(!(!arg_0.c));
    global3 = all(vec4<bool>(false, true, !all(select(arg_0.c, arg_0.c, arg_0.c.x)), global2.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, -1274f)), vec3<f32>(arg_0.b, 1000f, arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, -915f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(160f, arg_0.b, -1395f) * vec3<f32>(-195f, arg_0.b, arg_0.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-135f, -441f, -947f)))))));
    var var_1 = false;
    return Struct_1(arg_0.a, arg_0.b, !func_2().xzz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(-1i ^ u_input.e.x) >> (~u_input.b.x % 32u);
    global1 = false;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(276f, 963f, 1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(316f)), _wgslsmith_f_op_f32(836f - -104f), 834f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2456f, 1506f, _wgslsmith_f_op_f32(floor(112f))))));
    let var_1 = func_4(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.b) & reverseBits(u_input.c), min(abs(7322u), u_input.a.x), reverseBits(~0u), func_1(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1276f - _wgslsmith_f_op_f32(-var_0.x))), vec3<bool>(all(vec4<bool>(global2.x, true, true, global2.x)), global2.x, select(global2.x, true, any(vec4<bool>(true, false, global2.x, global2.x))))), -_wgslsmith_dot_vec2_i32(firstLeadingBit(~u_input.e), (vec2<i32>(u_input.e.x, u_input.e.x) ^ u_input.e) >> ((vec2<u32>(4294967295u, u_input.b.x) ^ u_input.a.yy) % vec2<u32>(32u))));
    global3 = var_1.c.x;
    var var_2 = -1921f;
    global2 = var_1.c.xz;
    let var_3 = _wgslsmith_div_u32(~0u, countOneBits(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(83936u, var_1.a.x & 1u)), vec4<u32>(~firstLeadingBit(35181u), var_1.a.x, ~(~1u), u_input.a.x));
}

