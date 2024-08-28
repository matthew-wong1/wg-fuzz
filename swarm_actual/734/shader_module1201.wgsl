struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-252f, -275f, -1366f);

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec4<i32>(18897i, -10135i, 1i, 4205i)), 1i, 0u, 55904u, vec4<u32>(24972u, 0u, 17034u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> bool {
    var var_0 = global1.a;
    var var_1 = global1.a.b & global1.a.b;
    var_0 = global1.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -308f) + global0.zx))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(279f)))) - _wgslsmith_div_vec2_f32(global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.zx, global0.zx)))));
    var var_3 = -341f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-var_2.x)), global0.x))) < var_2.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    let var_0 = -1469f;
    global1 = Struct_2(global1.a, u_input.e, ~(_wgslsmith_dot_vec2_u32(arg_3, _wgslsmith_add_vec2_u32(arg_3, vec2<u32>(0u, 1u))) >> (firstTrailingBit(arg_3.x) % 32u)), ~arg_2 << (select(min(arg_3.x, 38105u) ^ 36326u, 1u, false) % 32u), ~(~(vec4<u32>(4294967295u, 4294967295u, 12847u, 12060u) >> (vec4<u32>(u_input.c, global1.d, 30673u, arg_3.x) % vec4<u32>(32u)))));
    global1 = Struct_2(global1.a, 43172i, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_3.x, arg_3.x) ^ global1.e.www, vec3<u32>(0u, 46734u, u_input.b) ^ global1.e.wzz) ^ ~4294967295u), ~arg_3.x, ~select(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a, 0u, 1u, 4294967295u)), global1.e), global1.e, global1.a.a));
    var var_1 = select(select(select(vec4<bool>(global1.a.a, arg_1.a & true, global1.a.a, true & arg_1.a), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.a, arg_1.a, global1.a.a, global1.a.a), global1.c >= u_input.c), true), vec4<bool>(all(vec4<bool>(global1.a.a, arg_1.a, false, arg_1.a)), arg_1.a, false | all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, arg_1.a, false))), !(!all(vec2<bool>(true, true)))), !(!(!(!vec4<bool>(false, global1.a.a, true, global1.a.a)))), !select(vec4<bool>(select(true, global1.a.a, false), true, global1.a.a | false, arg_1.a), !vec4<bool>(global1.a.a, false, false, true), !(!vec4<bool>(true, false, arg_1.a, false))));
    var_1 = !select(select(!select(vec4<bool>(false, arg_1.a, var_1.x, global1.a.a), vec4<bool>(global1.a.a, false, false, true), true), !vec4<bool>(true, false, arg_1.a, var_1.x), all(vec2<bool>(false, arg_1.a)) | (arg_1.b.x == -2147483647i)), !(!(!vec4<bool>(false, false, global1.a.a, false))), vec4<bool>(true, true, !(global0.x == 1632f), true));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1585u, reverseBits(~(1u >> (arg_3.x % 32u)))), arg_3);
}

fn func_2(arg_0: Struct_2) -> f32 {
    global1 = Struct_2(global1.a, firstLeadingBit(-_wgslsmith_add_i32(16205i, -1i)), arg_0.e.x, (1u >> ((17565u & u_input.a) % 32u)) << (~global1.e.x % 32u), vec4<u32>(_wgslsmith_mult_u32(1u, u_input.c), ~max(_wgslsmith_dot_vec3_u32(arg_0.e.wzw, global1.e.yxz), arg_0.c), u_input.b, global1.c));
    global1 = Struct_2(global1.a, 1i, 1u, firstLeadingBit(75915u), vec4<u32>(1u, global1.d, _wgslsmith_mult_u32((58069u >> (global1.e.x % 32u)) ^ reverseBits(12554u), max(1u, 86429u)), 4294967295u));
    let var_0 = Struct_2(arg_0.a, global1.b, ~(u_input.a << (_wgslsmith_dot_vec2_u32(reverseBits(global1.e.wy), vec2<u32>(22009u, arg_0.c) & arg_0.e.xw) % 32u)), ~(1u ^ (~global1.e.x & ~u_input.b)), min(_wgslsmith_mod_vec4_u32(~arg_0.e, vec4<u32>(func_3(vec4<f32>(-1425f, global0.x, -509f, global0.x), arg_0.a, 31279u, vec2<u32>(19069u, u_input.b)), countOneBits(0u), arg_0.d << (1u % 32u), 0u)), select(arg_0.e & ~global1.e, ~(~vec4<u32>(global1.e.x, 4294967295u, arg_0.c, 0u)), !any(vec4<bool>(arg_0.a.a, global1.a.a, true, global1.a.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(666f, 1408f)) + global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(u_input.a >= ~20169u, func_1(), true, global1.a.a);
    let var_1 = global1.e.wwz;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(1553f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(true, vec4<i32>(global1.a.b.x, u_input.d.x, -1995i, u_input.e)), _wgslsmith_mult_i32(~u_input.d.x, ~50623i), ~(~var_1.x), global1.d, global1.e))), global0.x);
    global1 = Struct_2(Struct_1(!var_0.x, global1.a.b), firstLeadingBit(~countOneBits(_wgslsmith_mod_i32(-6667i, global1.a.b.x))), ~10293u, ~global1.d, global1.e);
    let var_2 = true;
    let var_3 = true;
    var var_4 = 26584u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b.zzz, -global1.a.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) * _wgslsmith_f_op_f32(sign(149f)))), _wgslsmith_f_op_f32(f32(-1f) * -328f), 390f, global0.x), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(min(reverseBits(global1.e.wz), ~vec2<u32>(33900u, 43769u)), vec2<u32>(4294967295u ^ var_1.x, _wgslsmith_dot_vec4_u32(global1.e, vec4<u32>(var_1.x, u_input.b, var_1.x, 73044u))))));
}

