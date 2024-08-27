struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, 9858u);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = 2147483647i >> (arg_1.b % 32u);
    var var_1 = ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 4294967295u, 6814u), u_input.a.xyz) | _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3.x, arg_1.b, 4294967295u), vec3<u32>(arg_1.b, 61282u, 4294967295u) >> (u_input.a.xzx % vec3<u32>(32u))), ~(vec3<u32>(arg_3.x, 50196u, arg_3.x) ^ (u_input.c.wzy ^ u_input.a.yww)));
    var_1 = 51467u << (_wgslsmith_add_u32(u_input.c.x, 4294967295u) % 32u);
    var var_2 = !(arg_0.x & arg_0.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f + -1005f))));
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(select(vec4<i32>(global0.a, 23778i, -56107i, global0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, global0.a, global0.a, global0.a), vec4<i32>(global0.a, global0.a, -24462i, -19132i)), all(vec3<bool>(false, false, arg_0.x))), ~vec4<i32>(-1i, -1i, global0.a, global0.a)), ~(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, 12268i, global0.a), vec4<i32>(global0.a, global0.a, global0.a, global0.a)) ^ -vec4<i32>(global0.a, global0.a, -48858i, -62336i)) | (-(~vec4<i32>(-10356i, global0.a, -21975i, 14448i)) & vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(arg_1 + 178f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(613f))))))), 145f);
    var_1 = Struct_1(-452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(717f + arg_1)))));
    var var_2 = -19224i;
    global0 = Struct_4(-var_0.x, u_input.a.x);
    return var_0.x;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = global0.b;
    global0 = Struct_4(firstLeadingBit(i32(-1i) * -(i32(-1i) * -16362i)), global0.b);
    let var_1 = Struct_3(0i ^ func_4(select(vec4<bool>(false, true, true, false), func_3(vec4<bool>(true, true, true, true), Struct_4(-2147483647i, 1u), vec2<i32>(global0.a, 2147483647i), vec2<u32>(u_input.b.x, 4294967295u)), true), -2656f, global1.b, u_input.b), select(global0.a, arg_0.x, true), ~vec4<u32>(u_input.c.x, 129717u, 1u, _wgslsmith_div_u32(abs(50305u), firstTrailingBit(53991u))), 66392i, Struct_2(vec4<i32>(-1i, global0.a, -15562i, -1823i), vec2<u32>(firstTrailingBit(1u), 26957u), select(func_3(vec4<bool>(true, true, true, true), Struct_4(arg_0.x, u_input.a.x), arg_0.xx, vec2<u32>(4294967295u, 0u)).wzw, vec3<bool>(true, true, true), all(vec2<bool>(true, true)))));
    var var_2 = -_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, -10609i), vec2<i32>(-1i, ~2147483647i), vec2<i32>(1i, global0.a)) ^ _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, var_1.d), vec2<i32>(-8930i, 0i)), var_1.e.a.wz) | _wgslsmith_add_vec2_i32(select(vec2<i32>(108446i, 51051i), arg_0.xx, false), vec2<i32>(-49263i, var_1.d)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, arg_0.x, 1i), var_1.e.a), arg_0.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-264f - 230f)))));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u), var_1.e.b.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(8197u, global0.b), vec2<u32>(var_1.c.x, var_1.c.x)), ~var_1.e.b.x, var_1.e.c.x || true), 92917u), var_1.c);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, global1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), global1.b);
    return vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(57640u ^ arg_0.b.x, ~u_input.b.x, arg_2.x >> (42433u % 32u), select(1u, 4294967295u, arg_0.c.x)), firstLeadingBit(u_input.c)), _wgslsmith_div_u32(~func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a, global0.a, arg_1), vec3<i32>(arg_0.a.x, -51276i, -8183i))), firstTrailingBit(4294967295u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) - -1801f), _wgslsmith_f_op_f32(floor(-919f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, 443f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -313f))))));
    let var_1 = (arg_2.d | 1i) != 7079i;
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a)))), global1.a);
    var var_2 = arg_2.e.a.xzy ^ vec3<i32>(~(~arg_0.d), ~func_4(vec4<bool>(var_1, arg_0.e.c.x, arg_0.e.c.x, true), _wgslsmith_f_op_f32(step(var_0.a, 397f)), _wgslsmith_f_op_f32(abs(-635f)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.a.x, 4294967295u, arg_1))), global0.a);
    var var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(2147483647i, _wgslsmith_mod_i32(global0.a, global0.a) >> (global0.b % 32u), ~_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(4294967295u, 0u, global0.b, u_input.a.x)), 1652i, Struct_2(-(vec4<i32>(global0.a, 0i, global0.a, -91618i) >> (vec4<u32>(1u, global0.b, 47074u, u_input.b.x) % vec4<u32>(32u))), func_1(Struct_2(vec4<i32>(-1i, global0.a, global0.a, -1i), u_input.b.xz, vec3<bool>(true, false, false)), -1i, vec2<u32>(global0.b, 0u)) ^ ~u_input.c.xy, select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))))), _wgslsmith_div_u32(25790u, ~func_2(vec3<i32>(-8409i, global0.a, global0.a))) ^ global0.b, Struct_3(-1i ^ ~_wgslsmith_sub_i32(global0.a, -1i), -(countOneBits(global0.a) ^ global0.a), u_input.a, -_wgslsmith_sub_i32(global0.a, _wgslsmith_sub_i32(-1i, global0.a)), Struct_2(vec4<i32>(-2147483647i, global0.a ^ 29217i, i32(-1i) * -8584i, global0.a), min(vec2<u32>(0u, global0.b), u_input.c.xy), vec3<bool>(all(vec3<bool>(false, false, false)), true, true))), true);
    var var_1 = ~(~u_input.a.x);
    var var_2 = true;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_add_i32(1517i, func_5(Struct_3(var_0.e.a.x, -2147483647i, var_0.c, -7140i, var_0.e), global0.b, func_5(var_0, global0.b, Struct_3(-11874i, var_0.b, vec4<u32>(var_0.e.b.x, global0.b, 0u, 389u), var_0.d, var_0.e), false), true).b) >> (select(19973u, 7840u, true) % 32u), global0.a);
    var var_4 = var_0.e.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.a.zwz, countOneBits(var_0.a), 4294967295u, global0.a, vec2<f32>(global1.b, global1.b));
}

