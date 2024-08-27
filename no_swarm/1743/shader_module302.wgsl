struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1408f;

var<private> global1: vec3<i32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_5, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(!all(vec2<bool>(false, arg_0.b.a.a))), arg_3.a, Struct_1(true));
    var var_1 = u_input.a;
    global1 = vec3<i32>(i32(-1i) * -(~1i), -2147483647i, _wgslsmith_add_i32(-4130i, _wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.a, -1i)), ~(~vec2<i32>(u_input.a, u_input.a)))));
    var var_2 = ~(~4294967295u);
    var var_3 = 1u;
    return ~firstTrailingBit(arg_2.a.e);
}

fn func_2(arg_0: Struct_5) -> i32 {
    let var_0 = vec2<u32>(41468u, 38037u) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(58837u, arg_0.a.e), ~92823u) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(30126u, arg_0.a.e), vec2<u32>(4294967295u, 53767u)) % vec2<u32>(32u)), ~vec2<u32>(func_3(arg_0, -401f, arg_0, Struct_2(arg_0.a.a.a, arg_0.b.a, arg_0.b.a)), 1u));
    global0 = global2.x;
    global0 = global2.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(217f, global2.x, arg_0.b.c.a)))), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(-1182f, 253f, arg_0.b.c.a)))), -811f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 962f, 623f, global2.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 853f, global2.x, 1000f))) + vec4<f32>(global2.x, global2.x, 1706f, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))))), false));
    let var_2 = arg_0.a.e;
    return u_input.a;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(func_2(Struct_5(Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), 37882u, vec2<bool>(true, true), vec4<bool>(true, false, false, false), 3095u), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true)))), global1.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(-arg_1.ww, vec2<i32>(arg_0, -24611i)) & ~abs(arg_0), global1.x));
    var_0 = func_2(Struct_5(Struct_3(Struct_2(Struct_1(false), Struct_1(false), Struct_1(false)), reverseBits(_wgslsmith_mod_u32(4294967295u, 10177u)), vec2<bool>(true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), func_3(Struct_5(Struct_3(Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), 4294967295u, vec2<bool>(false, false), vec4<bool>(true, true, true, false), 4294967295u), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true))), global2.x, Struct_5(Struct_3(Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), 0u, vec2<bool>(false, false), vec4<bool>(true, false, true, false), 1u), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true))), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false)))), Struct_2(Struct_1(any(vec2<bool>(false, true))), Struct_1(true), Struct_1(false))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)))))));
    var var_1 = vec4<bool>(!((~53186i <= arg_0) || false), true, true, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, false))));
    var_1 = !(!(!vec4<bool>(true, false, var_1.x, true)));
    return Struct_3(Struct_2(Struct_1(any(!var_1.zzy)), Struct_1(any(select(var_1.wz, vec2<bool>(var_1.x, false), var_1.x))), Struct_1(true)), ~15290u, var_1.wz, select(select(vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), false, any(var_1.ww), var_1.x | var_1.x), vec4<bool>(var_1.x, var_1.x && var_1.x, var_1.x | var_1.x, var_1.x), var_1.x), vec4<bool>(true, true, true, !any(vec2<bool>(false, true))), select(vec4<bool>(false, all(vec2<bool>(false, false)), var_1.x, !var_1.x), !(!vec4<bool>(var_1.x, var_1.x, false, false)), vec4<bool>(false, true, var_1.x, var_1.x))), firstTrailingBit(12609u << (firstTrailingBit(1u) % 32u)));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global1 = vec3<i32>(u_input.b, select(-_wgslsmith_div_i32(362i, _wgslsmith_div_i32(1i, -1i)), reverseBits(u_input.b), any(arg_0.d)), _wgslsmith_add_i32(1i, firstLeadingBit(u_input.a)) | _wgslsmith_mod_i32(global1.x, abs(global1.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_div_f32(982f, _wgslsmith_f_op_f32(select(1450f, global2.x, arg_0.a.c.a)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-615f, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -362f), 965f), false)));
    var var_1 = arg_0.a;
    global0 = -1139f;
    var var_2 = Struct_4(_wgslsmith_mult_i32(2147483647i, global1.x), ~(~25763u) ^ _wgslsmith_clamp_u32(53007u, arg_0.b, arg_0.b), arg_0.c, Struct_1(_wgslsmith_f_op_f32(327f + _wgslsmith_f_op_f32(-262f * -2296f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-954f, var_0.x)) - _wgslsmith_f_op_f32(min(global2.x, -343f)))), var_1.a);
    return Struct_4(var_2.a, 0u, vec2<bool>(true, true), func_1(func_2(Struct_5(Struct_3(arg_0.a, 4294967295u, vec2<bool>(false, arg_0.d.x), vec4<bool>(var_1.c.a, true, true, arg_0.c.x), 1u), func_1(u_input.b, vec4<i32>(-2147483647i, global1.x, 79810i, u_input.a)).a)), countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, global1.x, global1.x, u_input.a), vec4<i32>(u_input.b, 7435i, var_2.a, 6655i)))).a.c, Struct_1(select(false, true, any(vec3<bool>(var_1.a.a, false, var_2.e.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 635f;
    let var_0 = func_4(func_1(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b, -30483i, -19461i), select(vec4<i32>(-2147483647i, -59874i, -30833i, u_input.b), vec4<i32>(-1i, 0i, global1.x, global1.x), vec4<bool>(false, false, true, true)) | vec4<i32>(global1.x, 17513i, -29091i, global1.x))));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 40686u, var_0.b) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, 1u, 84268u), vec3<u32>(var_0.b, var_0.b, var_0.b)), vec3<u32>(4294967295u, 51785u, 13600u) >> (vec3<u32>(var_0.b, var_0.b, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(func_1(-var_0.a, vec4<i32>(global1.x, 43722i, u_input.a, global1.x)).e, _wgslsmith_clamp_u32(var_0.b, ~var_0.b, _wgslsmith_mult_u32(var_0.b, var_0.b)), ~(~var_0.b))), vec3<u32>(~(var_0.b >> (countOneBits(7648u) % 32u)), _wgslsmith_mod_u32(~(var_0.b >> (var_0.b % 32u)), 4294967295u), ~func_4(func_1(0i, vec4<i32>(u_input.a, 1i, var_0.a, global1.x))).b));
    let var_2 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, var_0.b);
}

