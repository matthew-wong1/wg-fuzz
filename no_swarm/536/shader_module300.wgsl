struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> vec2<bool> {
    global0 = abs(74226u);
    return select(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(false, _wgslsmith_f_op_f32(arg_2.x * 1342f) != -1205f), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5428i, -26240i, 9259i), u_input.d), -25889i >> (0u % 32u)), _wgslsmith_mult_i32(-2147483647i, -u_input.a)) <= (i32(-1i) * -1i));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = 1u;
    var var_0 = _wgslsmith_div_f32(arg_1.e, 2547f);
    let var_1 = true;
    let var_2 = select(!vec4<bool>(select(!var_1, var_1, all(vec3<bool>(true, true, true))), var_1, !var_1, true), select(select(select(!vec4<bool>(true, false, true, var_1), !vec4<bool>(false, true, var_1, false), !vec4<bool>(false, var_1, true, var_1)), vec4<bool>(any(vec4<bool>(true, var_1, var_1, var_1)), false, true, !var_1), select(select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, var_1, var_1, var_1), false), !vec4<bool>(var_1, var_1, false, true), false)), !(!vec4<bool>(true, true, var_1, var_1)), select(vec4<bool>(var_1, true, true, 31936i >= u_input.a), select(!vec4<bool>(var_1, false, false, false), select(vec4<bool>(var_1, true, true, var_1), vec4<bool>(false, true, var_1, var_1), vec4<bool>(false, false, false, var_1)), true), var_1)), !select(vec4<bool>(var_1, false, u_input.c != 4294967295u, true), select(!vec4<bool>(var_1, true, false, var_1), !vec4<bool>(true, true, true, var_1), select(vec4<bool>(false, true, var_1, true), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, true, false, var_1))), !vec4<bool>(var_1, var_1, var_1, var_1)));
    let var_3 = u_input.b.x ^ (_wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(22806u, arg_1.b, u_input.b.x))) >> ((~(~103611u) ^ ~arg_1.b) % 32u));
    return ~min(u_input.b.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, arg_0, u_input.c, u_input.b.x), vec4<u32>(var_3, 5587u, 26982u, 4294967295u))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(u_input.d, _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.d.x, -u_input.d.x, u_input.d.x), ~(u_input.d | -u_input.d)));
    let var_1 = ~vec4<u32>(29996u, 4294967295u, 4792u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.b, arg_0.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), firstTrailingBit(vec4<u32>(0u, u_input.c, u_input.c, u_input.b.x))) | _wgslsmith_sub_u32(u_input.c, ~arg_0.d));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(107f - _wgslsmith_f_op_f32(round(901f))), -1242f, -1769f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.e, arg_0.e))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-416f, 530f, 512f, 681f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, arg_0.e, 1000f, 358f)))))));
    let var_3 = ~(~func_3(1u, Struct_1(_wgslsmith_sub_u32(30034u, var_1.x), max(u_input.b.x, 4294967295u), ~var_1.x, var_1.x << (u_input.b.x % 32u), -173f)));
    var var_4 = Struct_1(1u, 1u, abs(~var_3), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-486f, _wgslsmith_div_f32(451f, var_2.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.e, -243f)), _wgslsmith_f_op_f32(f32(-1f) * -603f))) - _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-297f, 731f)) - var_2.x))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = 18240i;
    global0 = ~(~(~(arg_0.a >> (_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, 1u)) % 32u))));
    var var_1 = func_2(func_2(arg_0));
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.d.yx, u_input.e);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + arg_0.e))) * arg_3.x), -844f, _wgslsmith_f_op_f32(-arg_3.x)));
    return func_2(func_2(func_2(func_2(func_2(arg_0)))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~(~select(u_input.d, countOneBits(vec3<i32>(1i, u_input.d.x, u_input.a)), true)));
    var var_1 = firstLeadingBit(~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(74514u, 1u), ~abs(71622u)));
    var var_2 = all(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))));
    var_1 = ~func_3(func_4(func_4(arg_0, arg_0.e, 14578i, vec2<f32>(arg_0.e, arg_0.e)), _wgslsmith_f_op_f32(abs(-1715f)), reverseBits(var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, 861f))).b, func_2(Struct_1(arg_0.b, u_input.b.x, 64775u, 55592u, arg_0.e))) << (u_input.b.x % 32u);
    var var_3 = func_2(Struct_1(~0u, ~abs(~35927u), reverseBits(0u >> (arg_0.d % 32u)), u_input.b.x, -2003f));
    return reverseBits(max(firstTrailingBit(4294967295u), _wgslsmith_add_u32(select(16696u << (arg_0.c % 32u), u_input.c >> (0u % 32u), all(vec2<bool>(false, true))), func_3(var_3.b, func_2(arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    global0 = 47827u;
    global0 = _wgslsmith_add_u32(38467u, 70861u);
    global0 = ~u_input.c;
    let var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(4294967295u, u_input.c, vec3<f32>(-511f, 1000f, 1419f)))));
    global0 = func_5(func_4(func_2(Struct_1(1u, abs(u_input.b.x), 4294967295u, abs(19047u), _wgslsmith_f_op_f32(1000f - 246f))), 216f, -_wgslsmith_mod_i32(-38590i, select(21617i, -61691i, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-1840f + 569f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) - -485f))));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_sub_u32(~u_input.c & firstTrailingBit(u_input.b.x), u_input.b.x), _wgslsmith_clamp_u32(49433u, u_input.b.x, ~func_3(u_input.b.x, Struct_1(33886u, 49950u, 33363u, u_input.c, -427f)))), min(vec3<u32>(select(1u << (1u % 32u), ~4294967295u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(55078u, 0u, 43971u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(10429u, 4294967295u, u_input.c, 33820u), vec4<u32>(u_input.c, u_input.b.x, u_input.c, 4294967295u))), _wgslsmith_sub_u32(1u & u_input.c, u_input.c >> (43268u % 32u))), reverseBits(u_input.b) ^ (vec3<u32>(3120u, 24492u, u_input.c) >> ((u_input.b >> (vec3<u32>(1u, u_input.b.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    global0 = u_input.b.x;
    let var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1247f)), _wgslsmith_f_op_f32(139f + 3102f)))))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x << (70173u % 32u), ~92182u, 1197u, u_input.b.x), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, u_input.b.x), vec4<u32>(var_1.x, 16715u, u_input.b.x, u_input.c)), ~countOneBits(vec4<u32>(4294967295u, 4542u, var_1.x, var_1.x)))));
}

