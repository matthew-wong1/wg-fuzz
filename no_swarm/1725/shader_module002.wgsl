struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = Struct_2(global0.a, ~countOneBits(global0.b << (min(global0.a.d.x, global0.a.d.x) % 32u)), -543f);
    var var_0 = Struct_1(1f, global0.a.b, 0u >> (0u % 32u), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, abs(global0.a.c)), 59051u), ~global0.a.c, _wgslsmith_div_u32(294u, _wgslsmith_add_u32(1u, max(global0.a.c, global0.a.c))), _wgslsmith_mod_u32(countOneBits(global0.a.c), 34758u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-171f - _wgslsmith_f_op_f32(706f * var_0.a)), !vec2<bool>(var_0.b.x, any(vec2<bool>(var_0.b.x, var_0.b.x))), var_0.c, global0.a.d), ~abs((global0.b & u_input.a.x) ^ min(global0.b, -1i)), -127f);
    var_0 = global0.a;
    var var_2 = select(select(select(vec3<bool>(global0.a.b.x, global0.a.b.x != true, true), vec3<bool>(12759u != var_1.a.d.x, true, any(var_1.a.b)), vec3<bool>(all(var_1.a.b), true, true && global0.a.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.b.x, true), vec3<bool>(any(vec4<bool>(true, false, false, false)), any(var_0.b), !var_0.b.x)), vec3<bool>(firstTrailingBit(-23313i) <= global0.b, true, global0.c >= _wgslsmith_f_op_f32(f32(-1f) * -141f))), vec3<bool>(true, var_1.a.b.x, true), !select(!select(vec3<bool>(var_1.a.b.x, var_1.a.b.x, var_0.b.x), vec3<bool>(var_1.a.b.x, global0.a.b.x, var_1.a.b.x), var_1.a.b.x), select(!vec3<bool>(true, var_0.b.x, true), select(vec3<bool>(false, false, var_1.a.b.x), vec3<bool>(var_1.a.b.x, true, true), false), vec3<bool>(global0.a.b.x, true, var_0.b.x)), true));
    return select(u_input.b.x, var_1.b, true);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> vec3<i32> {
    global0 = Struct_2(global0.a, 18745i, global0.c);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(213f)), vec2<bool>(false, any(vec2<bool>(arg_0.x, false))), 0u, _wgslsmith_sub_vec4_u32(global0.a.d, ~global0.a.d << (_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.c, 2289u, arg_1.x, 71072u), global0.a.d) % vec4<u32>(32u)))), func_3() | -_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.a))))));
    global0 = Struct_2(Struct_1(arg_2.x, !global0.a.b, arg_1.x, global0.a.d), ~1i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c))));
    var var_0 = global0.a;
    var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1437f + 1548f)) * _wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-var_0.a))), select(vec2<bool>(true, !(!global0.a.b.x)), vec2<bool>(select(true, global0.a.b.x, select(true, true, var_0.b.x)), var_0.b.x), !arg_0.x), firstLeadingBit(0u), vec4<u32>(min(_wgslsmith_sub_u32(9088u, 1u), _wgslsmith_mod_u32(~global0.a.d.x, _wgslsmith_add_u32(arg_1.x, 4294967295u))), ~firstTrailingBit(global0.a.c) << (_wgslsmith_mult_u32(arg_1.x, reverseBits(arg_1.x)) % 32u), min(var_0.c, ~_wgslsmith_add_u32(1u, 15228u)), var_0.d.x));
    return u_input.b.yxw;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = 4294967295u | abs(abs(global0.a.d.x));
    let var_1 = ~max(select(vec3<i32>(-2147483647i, global0.b, 65008i), vec3<i32>(-4624i, 16259i, global0.b), arg_2.a.b.x) | firstLeadingBit(func_2(vec2<bool>(global0.a.b.x, true), vec3<u32>(global0.a.d.x, arg_1.x, global0.a.c), arg_0)), _wgslsmith_sub_vec3_i32(u_input.a.wyz, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 2147483647i), abs(vec3<i32>(global0.b, -17804i, 292i)))));
    var_0 = _wgslsmith_mult_u32(~(18539u ^ _wgslsmith_sub_u32(81761u, ~arg_1.x)), 0u);
    var_0 = global0.a.d.x;
    var_0 = ~_wgslsmith_mult_u32(reverseBits(select(global0.a.d.x, select(arg_1.x, global0.a.c, false), arg_2.a.b.x)), 4294967295u);
    return arg_2.a.c;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1373f, _wgslsmith_f_op_f32(exp2(global0.c))))), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-global0.a.a), any(select(vec3<bool>(global0.a.b.x, arg_2, true), vec3<bool>(global0.a.b.x, false, global0.a.b.x), global0.a.b.x)))), _wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c, -1650f)))), global0.a.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(917f, global0.a.a))))), 1486f));
    global0 = Struct_2(Struct_1(var_0.x, select(vec2<bool>(true, arg_2), select(vec2<bool>(true, arg_2), !global0.a.b, all(vec4<bool>(false, global0.a.b.x, false, true))), all(global0.a.b)), global0.a.c, select(reverseBits(vec4<u32>(29860u, global0.a.c, global0.a.c, 11273u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, arg_0), countOneBits(vec4<u32>(global0.a.c, arg_0, arg_0, arg_0)), min(vec4<u32>(global0.a.d.x, arg_0, 0u, 0u), vec4<u32>(20730u, 52252u, global0.a.c, global0.a.c))), all(vec2<bool>(true, global0.a.b.x)))), ~(abs(_wgslsmith_sub_i32(u_input.a.x, -63433i)) << (global0.a.c % 32u)), _wgslsmith_f_op_f32(-var_0.x));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.x), global0.a.b, global0.a.c, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(42071u, 1u, 12542u), ~global0.a.d.wzy), 12261u, 74844u, ~4294967295u)), u_input.a.x, var_0.x);
    var var_1 = max(_wgslsmith_sub_vec3_u32(global0.a.d.wyw, vec3<u32>(arg_0, _wgslsmith_mult_u32(35826u, 26952u) ^ ~arg_0, _wgslsmith_mod_u32(arg_0 | global0.a.d.x, arg_0))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(global0.a.d.x, arg_0, global0.a.c)), vec3<u32>(global0.a.c, 22289u, 0u)));
    var var_2 = global0.a.b.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f + global0.c))), select(vec2<bool>(!(1441i <= global0.b), !arg_2), vec2<bool>(true || all(global0.a.b), false), false), ~_wgslsmith_add_u32(abs(~4294967295u), ~(~global0.a.d.x)), select(vec4<u32>(arg_0, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0, 96999u, 1u), abs(37293u)), ~(66275u | global0.a.c), ~_wgslsmith_sub_u32(arg_0, 4294967295u)), vec4<u32>(4294967295u, 10908u, var_1.x >> (max(global0.a.c, 8626u) % 32u), 57698u), !arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f == global0.c;
    let var_1 = Struct_2(global0.a, ~_wgslsmith_add_i32(-2147483647i, -global0.b), global0.c);
    let var_2 = global0.a;
    var var_3 = Struct_2(func_4(min(_wgslsmith_clamp_u32(~global0.a.c, global0.a.c & var_1.a.c, 23570u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.c, 36799u, global0.a.d.x), vec3<u32>(global0.a.d.x, 0u, var_1.a.d.x)), ~1u)), max(u_input.b.wwz ^ u_input.b.xxx, u_input.b.wwx) | _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b, global0.b, -8057i), vec3<i32>(global0.b, -2147483647i, u_input.a.x)), select(u_input.b.xzw, u_input.a.yxx, var_1.a.b.x)), 15969u < (func_1(vec2<f32>(var_1.c, var_2.a), vec4<u32>(global0.a.c, var_2.d.x, 1u, var_2.d.x), Struct_2(global0.a, -1i, -1000f)) << (0u % 32u)), func_2(var_1.a.b, vec3<u32>(1u, 57347u, 52021u), vec2<f32>(594f, global0.a.a)).x & 15327i), ~(global0.b & 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-239f, -2274f, var_2.b.x)), _wgslsmith_f_op_f32(min(global0.c, 1000f)))) + _wgslsmith_f_op_f32(1572f * _wgslsmith_f_op_f32(round(global0.c))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-678f))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1924f, abs(~func_2(select(var_2.b, var_3.a.b, true), vec3<u32>(4294967295u, 0u, 21098u), vec2<f32>(713f, -707f)).x));
}

