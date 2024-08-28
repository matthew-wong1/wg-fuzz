struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<i32>(56783i, 28032i));

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: vec2<f32> = vec2<f32>(1421f, -589f);

var<private> global4: vec2<u32> = vec2<u32>(0u, 34219u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = vec3<bool>(all(!vec4<bool>(select(true, false, false), true, any(vec2<bool>(false, false)), true)), any(vec3<bool>(true, true, true)) || true, all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), 711f <= arg_2.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, all(vec4<bool>(false, false, true, false))))));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 42667u), ~max(1u, ~firstLeadingBit(0u)), abs(_wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, global0.a), global4.x)));
    var var_2 = max(vec3<u32>(_wgslsmith_mult_u32(max(global4.x, u_input.c), _wgslsmith_div_u32(4294967295u, global4.x)), abs(global0.a ^ 4914u), abs(~u_input.c)) >> (firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(u_input.b, global4.x), global0.a, u_input.b & 27741u)) % vec3<u32>(32u)), vec3<u32>(~(global0.a << (~global0.a % 32u)), u_input.b, firstLeadingBit(4294967295u)));
    var var_3 = !vec2<bool>(var_0.x, any(vec2<bool>(var_0.x, var_0.x & false)));
    var var_4 = ~(~(~61948u) & firstTrailingBit(global0.a)) <= abs(abs(_wgslsmith_div_u32(global0.a >> (53327u % 32u), global0.a | global4.x)));
    return ~u_input.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> vec2<f32> {
    global0 = Struct_1(global0.a, _wgslsmith_mod_vec2_i32(~vec2<i32>(global0.b.x, arg_3.b.a ^ 0i), ~max(vec2<i32>(-525i, arg_3.b.a), vec2<i32>(arg_1.x, -1i)) & select(vec2<i32>(u_input.d, arg_1.x) & arg_1.zy, _wgslsmith_mult_vec2_i32(u_input.a, global0.b), all(vec3<bool>(false, true, true)))));
    global1 = 260f;
    let var_0 = countOneBits(arg_3.b.a);
    var var_1 = _wgslsmith_add_u32(global0.a, ~(~_wgslsmith_add_u32(4531u, 1u) | global4.x));
    var var_2 = (~(~arg_2.x) ^ arg_2.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, countOneBits(_wgslsmith_mod_u32(global4.x, 0u)), _wgslsmith_div_u32(u_input.b, func_3(global0.b.x, Struct_3(arg_3.a, Struct_2(-2147483647i)), Struct_3(arg_3.a, arg_0)))), ~(~vec3<u32>(0u, global4.x, 1u)) ^ ~(vec3<u32>(u_input.b, 0u, u_input.c) << (vec3<u32>(790u, 8185u, u_input.c) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(step(arg_3.a.xz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_3.a.yy)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(max(abs(global0.a), global4.x), vec2<i32>(reverseBits(global0.b.x), ~(~select(global0.b.x, global0.b.x, false))));
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(-2147483647i), -vec3<i32>(-19309i, global0.b.x, -1i), ~vec2<u32>(0u, 0u), Struct_3(vec3<f32>(global3.x, arg_1, arg_1), Struct_2(-5092i))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * arg_1)))))));
    var var_1 = _wgslsmith_f_op_f32(-global3.x);
    return Struct_1(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a, 4294967295u, u_input.b)), abs(firstLeadingBit(vec3<u32>(41374u, 1u, 4294967295u)))), global0.b);
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = u_input.d;
    var var_1 = min(vec3<u32>(15205u, max(1u, _wgslsmith_mod_u32(~global4.x, _wgslsmith_mult_u32(82044u, 45126u))), ~firstTrailingBit(global0.a)), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(30852u, 18035u, 1u), ~vec3<u32>(u_input.b, 4294967295u, 30962u))));
    return vec3<u32>(1u, abs(~55907u), abs(func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x + global3.x)))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a ^ ((_wgslsmith_add_u32(1u, u_input.b) | 8981u) & (abs(~44477u) ^ (_wgslsmith_mult_u32(0u, global4.x) & countOneBits(global4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), global3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(944f, global3.x, global3.x, 185f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 183f, global3.x, global3.x) - vec4<f32>(global3.x, global3.x, -320f, global3.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(166f, global3.x, global3.x, -844f), vec4<f32>(global3.x, 656f, global3.x, global3.x), true))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + global3.x), _wgslsmith_f_op_f32(-883f * global3.x), global3.x, 1020f)), vec3<i32>(2147483647i, ~2262i, -func_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), 815f).b.x));
}

