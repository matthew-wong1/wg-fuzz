struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 755f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c));
    global0 = arg_0.c;
    let var_0 = vec4<u32>(120358u << (arg_0.a % 32u), arg_0.a, arg_1.x, arg_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-365f)), arg_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(649f * _wgslsmith_f_op_f32(f32(-1f) * -370f)), 1086f, false))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -837f);
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    let var_0 = 945f;
    var var_1 = ~arg_1.a;
    global0 = 1000f;
    var var_2 = ~vec4<i32>(u_input.a, 1i, -1i, _wgslsmith_dot_vec2_i32(~arg_0.a, abs(arg_0.a)));
    var_1 = 27370u;
    return firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(0u, firstLeadingBit(12941u)), countOneBits(abs(119555u)))) >> (~vec2<u32>(_wgslsmith_mod_u32(arg_0.b, u_input.b << (21689u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 545u), vec4<u32>(arg_1.a, 1u, arg_0.b, arg_1.a))) % vec2<u32>(32u));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~func_3(Struct_1(min(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~(u_input.b >> (u_input.b % 32u)), _wgslsmith_f_op_f32(ceil(-829f)) <= _wgslsmith_f_op_f32(f32(-1f) * -768f)), func_2(Struct_2(~u_input.b, 1i, _wgslsmith_f_op_f32(sign(175f))), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 28612u, u_input.b))), !arg_0.x);
    global0 = -2278f;
    var var_1 = Struct_2(~var_0.x, u_input.a, 1000f);
    let var_2 = func_2(func_2(func_2(Struct_2(_wgslsmith_sub_u32(u_input.b, 0u), 1i, _wgslsmith_f_op_f32(465f + 1015f)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_1.a, 1u, 74665u), vec4<u32>(u_input.b, u_input.b, 82262u, u_input.b) >> (vec4<u32>(var_0.x, 4294967295u, 28181u, 0u) % vec4<u32>(32u)))), reverseBits(vec4<u32>(u_input.b, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_0), 86494u))), ~firstLeadingBit(vec4<u32>(var_0.x, reverseBits(u_input.b), ~0u, _wgslsmith_sub_u32(var_1.a, var_1.a))));
    var var_3 = Struct_2(max(~31016u, u_input.b), -var_2.b ^ (countOneBits(u_input.a) << (min(var_1.a, var_2.a) % 32u)), _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(func_2(var_2, vec4<u32>(4294967295u, 0u, var_2.a, var_0.x)).c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c + var_2.c)))))));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true))) * _wgslsmith_f_op_f32(round(1926f))))))));
    let var_0 = true;
    var var_1 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-3683i, -65426i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_i32(u_input.a, 0i)) >> (select(~vec2<u32>(22782u, u_input.b), ~vec2<u32>(u_input.b, 39619u) | _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 427u)), vec2<bool>(true, true)) % vec2<u32>(32u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 41678u), vec4<u32>(18101u, u_input.b, u_input.b, u_input.b))) ^ ~4294967295u, any(vec4<bool>(true || (var_0 | true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), var_0)), false, true)));
    let var_2 = Struct_2(_wgslsmith_sub_u32(1u, countOneBits(~u_input.b)) ^ u_input.b, _wgslsmith_div_i32(-var_1.a.x, 2147483647i | u_input.a), -106f);
    global0 = _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(463f, 932f, var_0)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c))))));
    var var_3 = var_2;
    var var_4 = Struct_1(abs(var_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_sub_u32(var_3.a, 52488u)), vec2<u32>(1u, _wgslsmith_sub_u32(1u, var_2.a) ^ ~34632u)), any(vec4<bool>(true, var_1.c, !(!var_0), all(vec3<bool>(var_1.c, var_0, var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~24064u), var_1.a.x);
}

