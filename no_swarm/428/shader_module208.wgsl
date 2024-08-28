struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: bool;

var<private> global3: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(78610u, 73066u, 34674u), vec3<u32>(4294967295u, 1u, 92779u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(13233u, 1u, 80019u), vec3<u32>(33319u, 72497u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(41534u, 43342u, 25693u), vec3<u32>(0u, 12580u, 44561u), vec3<u32>(77229u, 86649u, 52978u), vec3<u32>(4294967295u, 4294967295u, 14080u), vec3<u32>(14851u, 33686u, 1u), vec3<u32>(0u, 51323u, 19196u));

var<private> global4: bool = true;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-arg_2.x), 479f);
    var var_1 = !select(!vec4<bool>(true, any(vec4<bool>(arg_3.a, false, true, true)), true, true), vec4<bool>(arg_3.c.x, true, false, arg_3.a), !arg_3.a);
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.d.xy, vec2<i32>(2147483647i, -1i));
    let var_3 = Struct_3(_wgslsmith_clamp_u32(~24062u, u_input.b.x, abs(_wgslsmith_dot_vec3_u32(arg_3.b.wwx, max(vec3<u32>(arg_0.x, arg_0.x, global0.a), vec3<u32>(arg_3.b.x, u_input.b.x, global0.a))))));
    var var_4 = Struct_3(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u << (arg_0.x % 32u), reverseBits(var_3.a)), 0u, ~(select(4294967295u, u_input.b.x, arg_3.a) >> (~93507u % 32u))));
    return select(u_input.c, var_2.x, var_1.x);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = false || (_wgslsmith_mod_i32(u_input.e, _wgslsmith_mod_i32(~u_input.e, _wgslsmith_mod_i32(arg_0.x, 20033i))) < (func_3(u_input.b.yzy | vec3<u32>(22404u, global0.a, u_input.a), _wgslsmith_f_op_f32(151f + -593f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1098f, -1451f)), Struct_1(true, u_input.b, vec3<bool>(true, false, true))) >> (global0.a % 32u)));
    global0 = Struct_3(u_input.a);
    var var_1 = Struct_2(select(!vec3<bool>(true, false, var_0), select(select(!vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false), var_0), vec3<bool>(var_0, true, var_0)), !(!vec3<bool>(var_0, false, var_0)), vec3<bool>(any(vec2<bool>(false, var_0)), true, all(vec2<bool>(var_0, var_0)))), var_0), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(286f, _wgslsmith_f_op_f32(floor(681f))), 1000f))), 0u);
    let var_2 = Struct_3(var_1.c | ~countOneBits(~13110u));
    let var_3 = firstLeadingBit(0u);
    return Struct_1(true, ~(~(~vec4<u32>(var_3, var_2.a, global0.a, 23798u))), vec3<bool>(!all(!vec3<bool>(var_0, var_0, var_1.a.x)), true && all(var_1.a), false));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.c.x != all(vec3<bool>(!(!arg_1.c.x), false, !(16051i != arg_0)));
    global3 = array<vec3<u32>, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2723f - -1544f)), _wgslsmith_div_f32(-1601f, _wgslsmith_f_op_f32(-1673f + _wgslsmith_f_op_f32(366f - -1242f))), 1000f));
    var var_2 = u_input.b.x;
    var_0 = any(arg_1.c);
    return true;
}

fn func_1() -> vec2<bool> {
    var var_0 = !(!func_4(~1i, func_2(vec2<i32>(u_input.c, 2147483647i) >> (u_input.b.yy % vec2<u32>(32u)))));
    var var_1 = Struct_1(8213i >= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.e, 1i), -(~u_input.d.zy)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(min(~vec4<u32>(u_input.a, 41335u, 0u, global0.a), u_input.b << (u_input.b % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a, 0u, global0.a), u_input.b) & (vec4<u32>(global0.a, 4294967295u, 0u, global0.a) >> (vec4<u32>(u_input.a, 1u, 44275u, 4294967295u) % vec4<u32>(32u)))), u_input.b | firstLeadingBit(~u_input.b)), func_2(~(~abs(vec2<i32>(u_input.e, -1i)))).c);
    global4 = var_1.c.x;
    let var_2 = var_1.b.yxz;
    var var_3 = -1457f;
    return vec2<bool>(~u_input.d.x <= -21954i, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))) || any(func_1()), _wgslsmith_mult_vec4_u32(max(_wgslsmith_clamp_vec4_u32(~u_input.b, ~u_input.b, abs(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_add_vec4_u32(u_input.b | u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, 51517u, global0.a, global0.a), u_input.b))), countOneBits(vec4<u32>(abs(global0.a), u_input.a, _wgslsmith_sub_u32(global0.a, 1u), global0.a))), select(func_2(vec2<i32>(1i, 5091i) << (vec2<u32>(u_input.a, 4584u) % vec2<u32>(32u))).c, func_2(-(vec2<i32>(u_input.e, u_input.c) >> (u_input.b.yy % vec2<u32>(32u)))).c, func_1().x));
    global0 = Struct_3(_wgslsmith_sub_u32(min(1u, _wgslsmith_dot_vec3_u32(var_0.b.xyz, vec3<u32>(var_0.b.x, var_0.b.x, 5266u) >> (vec3<u32>(1u, global0.a, var_0.b.x) % vec3<u32>(32u)))), ~u_input.b.x));
    var var_1 = vec2<f32>(-601f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -254f)))))));
    global0 = Struct_3(4294967295u);
    let var_2 = Struct_3(_wgslsmith_clamp_u32(~u_input.a, 28388u, abs(select(var_0.b.x, u_input.a, false))) ^ ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, var_0.b.x), ~u_input.b.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1080f)));
    let var_4 = Struct_2(func_2(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.d.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(-29550i, 21250i), u_input.d.zx)))).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1255f)), -1000f), _wgslsmith_div_u32(~u_input.b.x, 24942u));
    global1 = !var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~(max(reverseBits(vec2<u32>(35919u, u_input.a)), vec2<u32>(global0.a, 1u) >> (vec2<u32>(var_4.c, var_2.a) % vec2<u32>(32u))) | ~(u_input.b.xz >> (u_input.b.xw % vec2<u32>(32u)))), ~select(_wgslsmith_div_u32(~1u, ~var_0.b.x), 14305u, true), vec4<i32>(_wgslsmith_sub_i32(u_input.e, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.xx, vec2<i32>(44413i, u_input.c)), -vec2<i32>(u_input.c, u_input.e))), 10719i, u_input.e, min(_wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.xx), i32(-1i) * -18274i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 1u, 4294967295u, var_0.b.x) >> (vec4<u32>(105369u, 4294967295u, 43292u, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.c, 1u, var_2.a, var_2.a), u_input.b)) % 32u)));
}

