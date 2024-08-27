struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec3<f32>, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    let var_0 = 0u;
    var var_1 = Struct_3(vec3<i32>(~_wgslsmith_sub_i32(arg_1, u_input.b), abs(-firstTrailingBit(u_input.a)), u_input.a | (~arg_1 & -u_input.a)));
    let var_2 = abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b, 1u, ~arg_0.b), min(min(vec3<u32>(arg_0.b, 16043u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 94627u, 48649u), vec3<u32>(0u, var_0, 0u)))));
    let var_3 = ~vec3<u32>(var_0, ~var_2.x, 81137u & _wgslsmith_dot_vec3_u32(var_2, vec3<u32>(0u, 2719u, u_input.c))) >> (~(vec3<u32>(~u_input.c, ~1u, _wgslsmith_div_u32(u_input.c, 0u)) | vec3<u32>(1400u, 8795u ^ var_0, _wgslsmith_clamp_u32(53817u, var_2.x, 81189u))) % vec3<u32>(32u));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, var_2.x, var_2.x, var_3.x), vec4<u32>(var_2.x << (1u % 32u), arg_0.b, 4294967295u, var_2.x)), ~(~(~0u))) << (_wgslsmith_mult_u32(abs(1u), var_3.x) % 32u), 27u)];
    return vec4<bool>(true, !(_wgslsmith_mult_u32(~var_2.x, ~arg_0.b) <= _wgslsmith_add_u32(1u, var_2.x)), !arg_0.a.x, var_4.c.a.x);
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 27>();
    global1 = array<vec3<f32>, 16>();
    let var_0 = all(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), func_3(Struct_1(vec2<bool>(false, true), u_input.c), u_input.b), true))) || !all(vec2<bool>(true, true));
    let var_1 = firstTrailingBit(u_input.c);
    global0 = array<Struct_2, 27>();
    return Struct_3(arg_0.a);
}

fn func_1() -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(max(18578u, 4294967295u)), 27u)];
    global0 = array<Struct_2, 27>();
    return func_2(Struct_3(var_0.a.xxy));
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-610f, 1000f, false)) * 1530f))))) + _wgslsmith_f_op_f32(max(1011f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2046f - 609f))), -1000f))));
    var var_1 = all(func_3(Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), 1u), -44352i).wz);
    let var_2 = 2147483647i << (~(~select(firstTrailingBit(0u), ~u_input.c, any(vec3<bool>(false, false, false)))) % 32u);
    var var_3 = vec4<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(43698i, u_input.a, 1i), arg_0.a), _wgslsmith_div_i32(0i, ~u_input.a) | -1i, -func_2(arg_0).a.x, -arg_0.a.x) >> (countOneBits(vec4<u32>(abs(u_input.c), 13691u, ~u_input.c, min(35561u, 9081u)) | vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u)) % vec4<u32>(32u));
    global0 = array<Struct_2, 27>();
    return !vec2<bool>(!(_wgslsmith_f_op_f32(step(-1766f, -719f)) >= 1f), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    let var_0 = vec2<u32>(arg_0.c.b, ~(~(~(36302u ^ u_input.c))));
    var var_1 = func_3(arg_0.c, -17253i);
    global0 = array<Struct_2, 27>();
    var var_2 = !(!vec3<bool>(arg_2, !(arg_0.c.a.x & var_1.x), arg_2));
    var var_3 = ~(~arg_1.b);
    return Struct_3(arg_0.a.yyw);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    let var_0 = func_3(Struct_1(!arg_2.c.a, ~12057u), _wgslsmith_mult_i32(firstLeadingBit(u_input.a), ~(-30101i)));
    var var_1 = Struct_1(vec2<bool>(true != var_0.x, arg_2.c.a.x), u_input.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), -275f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), -194f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-385f, arg_2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1127f, arg_2.b) - vec2<f32>(333f, arg_2.b)))))));
    return Struct_3(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(u_input.c, ~(~9336u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 5616u, 68585u), vec4<u32>(u_input.c, 34101u, 1u, 4418u)) >> (27600u % 32u))) >> (~_wgslsmith_mult_vec3_u32(~vec3<u32>(19042u, 1u, u_input.c), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u));
    let var_1 = u_input.c;
    var var_2 = func_6(Struct_3(-vec3<i32>(u_input.a, _wgslsmith_mod_i32(u_input.b, 16920i), _wgslsmith_dot_vec4_i32(vec4<i32>(-16311i, u_input.a, u_input.a, 63987i), vec4<i32>(u_input.a, u_input.a, 13825i, -2147483647i)))), func_5(global0[_wgslsmith_index_u32(~max(47607u, var_0.x), 27u)], Struct_1(func_4(func_1()), var_1 ^ 16850u), true), Struct_2(~vec4<i32>(u_input.a, -45220i, countOneBits(-2410i), ~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-311f, _wgslsmith_f_op_f32(f32(-1f) * -1118f)))), Struct_1(vec2<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, true, true, true))), 41407u)));
    var var_3 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(u_input.b == var_2.a.x, false), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), vec2<bool>(true, var_1 > 1u), any(vec4<bool>(false, true, true, true)) & false), ~_wgslsmith_clamp_u32(u_input.c, _wgslsmith_clamp_u32(~99405u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 15919u, 4294967295u), vec3<u32>(15682u, var_1, 31422u)), 0u), min(u_input.c, _wgslsmith_clamp_u32(var_0.x, var_0.x, 1u))));
    var_2 = func_2(Struct_3(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 2147483647i, var_2.a.x)), firstLeadingBit(func_2(Struct_3(vec3<i32>(var_2.a.x, u_input.b, u_input.a))).a))));
    let x = u_input.a;
    s_output = StorageBuffer(1331f);
}

