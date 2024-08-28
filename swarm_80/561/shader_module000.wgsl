struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = Struct_3(Struct_2(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(u_input.a.yxz, u_input.a.yxz, vec3<bool>(false, false, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a.wyx)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | -vec3<i32>(1i, 1i, u_input.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1449f, 344f, -858f, -206f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(257f, 1138f, -836f, 676f) * vec4<f32>(488f, 150f, 418f, 1000f)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, -334f, -320f, -798f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(f32(-1f) * -895f)))));
    let var_1 = !(!all(vec3<bool>(true, true, true)) | false);
    global0 = array<Struct_1, 9>();
    let var_2 = ~abs((vec3<u32>(arg_1.x, arg_1.x, arg_1.x) | vec3<u32>(1u, arg_0, 12022u)) ^ ~vec3<u32>(arg_1.x, 0u, arg_0)) << ((reverseBits(~(~vec3<u32>(arg_1.x, 0u, arg_0))) ^ vec3<u32>(~29782u << (_wgslsmith_mult_u32(25889u, arg_0) % 32u), u_input.b, countOneBits(4294967295u) & ~arg_0)) % vec3<u32>(32u));
    global0 = array<Struct_1, 9>();
    return false;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_1, 9>();
    var var_0 = any(vec2<bool>(true, abs(arg_0) < arg_0)) && any(vec2<bool>(all(vec2<bool>(true, false)), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.d.x, arg_1.d.x, all(vec4<bool>(false, false, false, true)))) - arg_1.c.x) + _wgslsmith_f_op_f32(1f * 1416f)));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 74690u) | (reverseBits(~u_input.b) >> (~(u_input.b >> (u_input.b % 32u)) % 32u)), _wgslsmith_mod_u32(u_input.b, 33718u));
    var var_3 = Struct_3(arg_1);
    return _wgslsmith_f_op_f32(f32(-1f) * -198f);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec2<f32> {
    let var_0 = arg_0.a;
    var var_1 = select(-(~u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, var_0.a, -2328i, 2147483647i), -u_input.a, vec4<i32>(2147483647i, arg_0.a.a, -1i, arg_0.a.a)), u_input.a), ~(~arg_0.b.x) > u_input.b) & abs(arg_0.a.b >> (countOneBits(arg_0.b.x) % 32u));
    var_1 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(-2332i), Struct_2(-2147483647i, 18325i, vec4<f32>(577f, -559f, 548f, var_0.d.x), vec2<f32>(var_0.d.x, 502f))))), _wgslsmith_f_op_f32(min(-234f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + 446f), _wgslsmith_f_op_f32(1868f + 580f))))) + var_0.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> bool {
    let var_0 = !(func_2(1u, max(vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(54562u, u_input.b), select(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b), true))) | any(vec4<bool>(true, any(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, false, true)), func_2(u_input.b, vec2<u32>(u_input.b, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_4(Struct_2(-71432i, -_wgslsmith_div_i32(2147483647i, arg_0.x), vec4<f32>(_wgslsmith_div_f32(1071f, 1393f), _wgslsmith_div_f32(1000f, -682f), _wgslsmith_f_op_f32(floor(1010f)), _wgslsmith_f_op_f32(sign(-511f))), vec2<f32>(-534f, _wgslsmith_f_op_f32(func_3(arg_0.x, Struct_2(-63474i, -22440i, vec4<f32>(-124f, -557f, -1827f, 179f), vec2<f32>(-1000f, -327f)))))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 53644u, 55996u), vec3<u32>(0u, 1u, u_input.b)), ~u_input.b, 1u), !var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(529f, -373f, -705f, 817f), vec4<f32>(808f, -2346f, -149f, -945f), false))))), 768f));
    let var_2 = ~(u_input.b << (~firstLeadingBit(reverseBits(u_input.b)) % 32u));
    var var_3 = Struct_4(Struct_2(u_input.a.x, arg_0.x, vec4<f32>(-1027f, var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1916f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(529f, var_1.x) - vec2<f32>(-578f, var_1.x))))), ~(~firstLeadingBit(vec3<u32>(u_input.b, var_2, 1u) << (vec3<u32>(var_2, 1u, u_input.b) % vec3<u32>(32u)))), !any(select(vec3<bool>(true, true, var_0), !vec3<bool>(true, true, var_0), select(vec3<bool>(true, var_0, true), vec3<bool>(false, false, false), true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(111107u, u_input.b), ~vec2<u32>(_wgslsmith_add_u32(4096u, 0u), ~var_2)), 9u)]);
    let var_4 = ~var_2;
    return any(vec4<bool>(true, true, all(!select(vec4<bool>(var_3.c, false, var_0, true), vec4<bool>(var_0, true, var_3.c, true), var_3.c)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(var_3.c, var_3.c, var_3.c), var_0), select(vec3<bool>(var_0, true, var_3.c), vec3<bool>(var_0, var_0, var_3.c), vec3<bool>(var_0, true, var_0)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = true;
    let var_1 = vec3<bool>(false, !(true != var_0), any(!(!vec3<bool>(var_0, true, true))));
    var var_2 = Struct_2(~(~(~0i | ~u_input.a.x)), u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f - 898f)), -554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f - -586f) - _wgslsmith_f_op_f32(-417f * -663f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(-990f)), _wgslsmith_f_op_f32(f32(-1f) * -867f)))))));
    var var_3 = var_1;
    let var_4 = !vec4<bool>(true, true, all(var_1), func_1(firstTrailingBit(vec3<i32>(-1i, -23536i, 2147483647i) ^ vec3<i32>(var_2.b, -9000i, 42594i)), vec3<i32>(var_2.b, 0i, var_2.b) | u_input.a.xzx));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, vec3<u32>(u_input.b, ~_wgslsmith_clamp_u32(u_input.b, max(845u, u_input.b), u_input.b), 29208u), select(select(vec2<u32>(u_input.b, u_input.b), ~countOneBits(vec2<u32>(1u, 22370u)), !(!var_3.x)), vec2<u32>(1u, u_input.b ^ _wgslsmith_add_u32(u_input.b, 4294967295u)), !var_4.ww), vec2<u32>(4294967295u, 7537u << (u_input.b % 32u)), ~reverseBits(4349u));
}

