struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = 0i << (_wgslsmith_div_u32(arg_0.c.x, firstTrailingBit(min(u_input.a, 56208u))) % 32u);
    global0 = arg_0.b.b.x;
    global0 = !arg_0.b.b.x;
    var_0 = ~(~_wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(0i, 13096i, arg_0.b.c, -1977i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13372i, arg_0.b.c, -34566i, u_input.d.x), vec4<i32>(u_input.c, 2147483647i, u_input.d.x, -21104i), vec4<i32>(-2147483647i, -2147483647i, -5370i, u_input.c)), vec4<i32>(17607i, arg_0.b.c, arg_0.b.c, 55148i))));
    var var_1 = select(vec3<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1527u, 0u), arg_0.c), arg_0.c) >= 125096u, arg_0.b.d || !any(vec3<bool>(true, false, arg_0.b.b.x)), arg_0.b.b.x), !(!select(select(arg_0.b.b, arg_0.b.b, arg_0.b.b.x), select(arg_0.b.b, vec3<bool>(arg_0.b.d, true, arg_0.b.b.x), vec3<bool>(false, arg_0.b.b.x, arg_0.b.d)), !vec3<bool>(true, arg_0.b.d, true))), !arg_0.b.d);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) - arg_3));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    return all(vec3<bool>(all(select(vec4<bool>(true, true, arg_1.b.x, false), vec4<bool>(false, arg_2.a.d, false, arg_1.b.x), vec4<bool>(arg_2.a.b.x, false, arg_2.b.b.x, false))) && true, _wgslsmith_f_op_f32(max(arg_2.a.a, arg_1.a)) > _wgslsmith_f_op_f32(floor(1606f)), !(arg_2.b.d | arg_1.d) & true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = any(!vec2<bool>(any(vec3<bool>(false, true, true)) & all(vec4<bool>(true, false, false, false)), true));
    let var_0 = !select(true, true, false) == false;
    global1 = !(all(vec2<bool>(12537i >= u_input.d.x, func_3(arg_1.x, Struct_1(-1189f, vec3<bool>(false, var_0, false), u_input.d.x, var_0), Struct_2(Struct_1(arg_0.x, vec3<bool>(var_0, var_0, true), 1i, var_0), Struct_1(-1012f, vec3<bool>(var_0, false, true), u_input.d.x, var_0))))) && false);
    let var_1 = Struct_1(200f, vec3<bool>(!all(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), true)), any(select(!vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0), var_0 != var_0)), var_0), 1i, u_input.a <= ~12498u);
    global1 = var_1.d;
    return vec3<bool>(true, !func_3(select(_wgslsmith_add_i32(11583i, arg_1.x), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_1.x, -22765i, -1i)), true), Struct_1(_wgslsmith_f_op_f32(abs(var_1.a)), vec3<bool>(false, var_0, var_1.d), -arg_1.x, !var_1.d), Struct_2(var_1, var_1)), all(!var_1.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    global0 = arg_2.a <= arg_2.a;
    global1 = true;
    global1 = arg_1;
    global0 = arg_2.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f * _wgslsmith_f_op_f32(-arg_2.a)));
    global1 = true;
    return Struct_2(arg_2, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.d.yy, select(~reverseBits(u_input.d.x) < firstTrailingBit(1i), true, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-748f))))), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(623f, Struct_1(2157f, vec3<bool>(true, true, true), 49874i, false), vec2<u32>(u_input.b, 0u)), vec4<u32>(u_input.b, 107u, u_input.b, 4294967295u), u_input.a, vec4<f32>(-133f, 122f, -842f, -1092f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1658f, 183f, -355f, 359f)))), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, -1i, 1i)) >> (~vec4<u32>(1u, 24715u, u_input.b, 52235u) % vec4<u32>(32u))), 2147483647i, true), reverseBits(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 76271u, 50252u, u_input.a), vec4<u32>(u_input.a, u_input.b, 1u, 41921u)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(2422f)), func_2(vec4<f32>(-1450f, 185f, -166f, _wgslsmith_f_op_f32(var_0.b.a * 136f)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-26658i, -10594i, var_0.b.c, 2147483647i), vec4<i32>(2147483647i, 2147483647i, u_input.d.x, 39767i) << (vec4<u32>(u_input.a, 0u, u_input.b, u_input.a) % vec4<u32>(32u)))), _wgslsmith_sub_i32(var_0.b.c ^ var_0.a.c, -var_0.a.c), all(vec2<bool>(!var_0.b.d, !var_0.b.b.x))), var_0.b);
    var_0 = func_4(reverseBits(~vec2<i32>(_wgslsmith_sub_i32(var_0.b.c, var_1.b.c), max(38922i, 0i))), !var_0.a.b.x, var_0.a, vec4<u32>(4294967295u, ~u_input.b, ~max(1u, u_input.a | u_input.b), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b) ^ 1u, firstLeadingBit(4294967295u))));
    let var_2 = u_input.c;
    let var_3 = Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_f32(var_0.b.a * 227f), var_0.b.b, var_0.a.c, false));
    var var_4 = _wgslsmith_mult_u32(u_input.a, ~(u_input.b | (_wgslsmith_mod_u32(u_input.b, 4294967295u) ^ ~u_input.a)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(var_1.a.a, var_1.b, vec2<u32>(u_input.b, 22786u)), max(vec4<u32>(u_input.b, 7413u, 1u, 1u), vec4<u32>(u_input.b, 40833u, 9449u, 1u)), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(234f, -1282f, -1000f, var_0.a.a) + vec4<f32>(-1000f, -945f, 777f, 195f)))).x)), var_0.a.b, _wgslsmith_mod_i32(-(-u_input.c & select(-2147483647i, -76882i, var_3.b.b.x)), ~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1.a.c, 0i, var_0.b.c, 20129i)), vec4<i32>(u_input.d.x, -1i, u_input.c, var_3.b.c))), var_1.a.b.x);
    let var_6 = Struct_1(var_0.a.a, select(vec3<bool>(all(select(vec3<bool>(var_3.a.b.x, var_5.d, var_3.b.b.x), var_5.b, true)), var_1.b.d, any(vec4<bool>(true, var_3.b.b.x, var_3.b.d, false)) && func_4(u_input.d.yy, var_5.b.x, Struct_1(253f, var_0.a.b, -1i, var_1.a.b.x), vec4<u32>(u_input.a, 17178u, 12687u, 0u)).a.d), vec3<bool>(all(!vec4<bool>(true, false, var_3.a.b.x, var_1.b.b.x)), false, select(false, var_0.b.d & false, var_5.d)), true & func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1117f, var_5.a, 1640f, -710f)), vec4<i32>(var_1.a.c, -27621i, 1i, -37255i)).x), 1i, (var_2 & ~(~var_3.a.c)) == ~(~_wgslsmith_sub_i32(var_0.b.c, 2147483647i)));
    global0 = var_1.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-22633i, u_input.c, 17099i, _wgslsmith_mod_i32(var_3.b.c, var_3.b.c)), u_input.a);
}

