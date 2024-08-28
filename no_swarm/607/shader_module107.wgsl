struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_u32(u_input.b, u_input.b);
    let var_1 = arg_2.a;
    global0 = var_1.b;
    let var_2 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(reverseBits(vec3<u32>(arg_0.b.x, 1u, var_0.x) & vec3<u32>(u_input.b.x, var_0.x, 85169u))), arg_0.b.yww);
    let var_3 = vec3<bool>(all(select(select(select(vec4<bool>(true, false, arg_2.a.b, arg_2.a.b), vec4<bool>(true, arg_0.a.b, false, var_1.b), vec4<bool>(true, arg_1.b, arg_0.a.b, true)), select(vec4<bool>(true, arg_2.a.b, var_1.b, var_1.b), vec4<bool>(arg_0.a.b, var_1.b, false, false), vec4<bool>(false, arg_2.a.b, var_1.b, true)), !vec4<bool>(true, true, arg_1.b, arg_0.a.b)), vec4<bool>(arg_1.b, true, true, arg_1.b), !(!vec4<bool>(false, var_1.b, false, true)))), arg_2.a.b, arg_0.a.b);
    return vec2<i32>(arg_1.a, -u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_4(Struct_2(Struct_1(-318f, any(vec3<bool>(arg_0.b, true, true)), vec4<i32>(arg_2.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-4985i, u_input.e.x, -1i, u_input.a.x), arg_2.c), reverseBits(-2147483647i), _wgslsmith_sub_i32(0i, -36134i))), -(-1i | u_input.a.x) >> (_wgslsmith_sub_u32(1u, ~4294967295u) % 32u), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 0i, 23865i, 44456i), arg_0.c), arg_2.c)), -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_2.c.x, arg_2.c.x), firstLeadingBit(arg_0.c.x)), func_3(Struct_3(Struct_1(arg_0.a, arg_0.b, arg_2.c), vec4<u32>(4294967295u, 63145u, 20692u, u_input.d)), Struct_5(arg_0.c.x, false), Struct_2(arg_0, arg_2.c.x, arg_0.c))));
    let var_1 = var_0.a;
    global0 = false;
    global0 = var_1.a.b;
    global0 = false;
    return -684f;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, 142f, -149f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1000f, arg_0) * vec3<f32>(-228f, -236f, -156f))))) * vec3<f32>(arg_0, _wgslsmith_f_op_f32(-953f + -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, false, vec4<i32>(1i, 1i, u_input.a.x, var_0)), vec3<bool>(arg_1, false, arg_1), Struct_1(arg_0, true, vec4<i32>(var_0, -2147483647i, 11044i, u_input.e.x)))))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), 633f), false));
    global0 = true;
    var var_2 = min(_wgslsmith_dot_vec3_u32(~min(u_input.b.wyx, ~vec3<u32>(arg_2.x, 18652u, 19997u)), _wgslsmith_mult_vec3_u32(u_input.b.www, _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 67642u, u_input.d), vec3<u32>(arg_2.x, 0u, u_input.c)) | u_input.b.zww)), arg_2.x);
    let var_3 = firstLeadingBit(vec2<u32>(u_input.d, arg_2.x | ~firstLeadingBit(u_input.c)));
    return select(vec4<bool>(true, arg_1, any(vec3<bool>(var_0 <= 16374i, !arg_1, arg_1)), any(vec4<bool>(true, false, true, all(vec4<bool>(true, arg_1, false, arg_1))))), vec4<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + 178f), _wgslsmith_f_op_f32(-arg_0), 12256u <= u_input.d)) > arg_0, false, true), !(!vec4<bool>(arg_1, true, any(vec2<bool>(true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = !(!(false || !all(vec4<bool>(true, true, false, true))));
    let var_0 = -vec4<i32>(u_input.a.x, -_wgslsmith_div_i32(u_input.e.x, _wgslsmith_add_i32(u_input.a.x, -57878i)), _wgslsmith_sub_i32(1i, u_input.e.x), 1i << (1u % 32u));
    let var_1 = Struct_5(-25541i, true);
    let var_2 = select(!(!vec4<bool>(var_1.b, all(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), true, all(vec3<bool>(var_1.b, false, var_1.b)))), select(!vec4<bool>(true, false, all(vec4<bool>(var_1.b, var_1.b, var_1.b, true)), any(vec3<bool>(false, false, false))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1388f)) * _wgslsmith_div_f32(130f, 479f)), var_1.b, vec2<u32>(min(0u, u_input.b.x), ~36433u)), func_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-836f, 290f), -162f, all(vec4<bool>(var_1.b, var_1.b, true, true)))), true, _wgslsmith_div_vec2_u32(select(u_input.b.xx, vec2<u32>(1074u, 1u), vec2<bool>(var_1.b, true)), abs(vec2<u32>(u_input.c, u_input.d)))).x), select(vec4<bool>(var_1.b, true, any(func_1(2334f, var_1.b, u_input.b.yx).ww), var_1.b), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f)), var_1.b, vec2<u32>(~u_input.d, 4294967295u)), var_1.b));
    global0 = var_1.b | any(vec2<bool>(!(!var_1.b), false));
    let var_3 = 20608i;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(963f, var_1.b, vec4<i32>(0i, u_input.e.x, u_input.a.x, -2147483647i)), var_2.xyw, Struct_1(1930f, false, vec4<i32>(-21929i, u_input.a.x, 18729i, var_3)))), _wgslsmith_f_op_f32(abs(-1000f)))), var_1.b, _wgslsmith_add_vec4_i32(~(~var_0), var_0 & vec4<i32>(var_0.x, 2147483647i, 1i, var_0.x))), _wgslsmith_mult_i32(u_input.e.x, var_3), vec4<i32>(var_0.x ^ -(~9936i), _wgslsmith_sub_i32(reverseBits(~u_input.a.x), firstLeadingBit(1i)), _wgslsmith_div_i32(select(~var_0.x, 36024i, func_1(305f, true, vec2<u32>(u_input.b.x, 1u)).x), 2147483647i), _wgslsmith_add_i32(var_1.a, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-16297i, vec2<u32>(~_wgslsmith_mod_u32(56637u, u_input.b.x) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c)), 58321u, true && var_1.b) % 32u), ~u_input.b.x), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(20553u, ~3895u), vec2<u32>(u_input.c, _wgslsmith_clamp_u32(17056u, 42157u, 0u)), ~abs(vec2<u32>(u_input.b.x, u_input.c)))), -(~(var_4.c.xwz & vec3<i32>(var_3, 2147483647i, var_4.c.x))) ^ (countOneBits(select(var_0.xww, vec3<i32>(-14409i, 19863i, var_0.x), var_2.x)) & abs(~var_0.wyw)));
}

