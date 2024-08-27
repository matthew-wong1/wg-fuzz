struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(41807u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 10341u, 39875u), vec3<u32>(11227u, 54547u, arg_1.b)), vec3<u32>(~1u, ~arg_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, u_input.a), vec2<u32>(103955u, arg_1.b)))), !arg_1.c, vec4<bool>(true, any(arg_1.c.zz), true, any(!arg_1.c)), arg_1.e), arg_1.e, select(select(~abs(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, arg_1.b, 644u, 0u)), !vec4<bool>(false, true, false, arg_1.c.x)), vec4<u32>(min(~u_input.a, max(u_input.a, 1u)), arg_1.b, _wgslsmith_div_u32(59026u, 1u), 14949u), !vec4<bool>(arg_1.e, true, true, true)), Struct_1(82229u, arg_1.a, arg_1.c, !vec4<bool>(true, all(vec4<bool>(arg_1.d.x, true, false, false)), true, false), arg_1.d.x), vec2<u32>(u_input.a, countOneBits(_wgslsmith_div_u32(1u, arg_1.a))) << (~(vec2<u32>(4294967295u, 1u) & select(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 0u), vec2<bool>(arg_1.d.x, false))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_mult_vec3_u32(var_0.c.yzw, _wgslsmith_add_vec3_u32(~firstLeadingBit(~vec3<u32>(arg_1.a, 4968u, arg_1.b)), countOneBits(abs(var_0.c.wyw))));
    let var_2 = var_0.d.d.x;
    let var_3 = 0u;
    var var_4 = Struct_1(u_input.a, 4294967295u, select(!select(select(var_0.a.d, vec4<bool>(var_2, true, false, true), var_0.b), var_0.a.c, !var_0.a.c), select(select(select(vec4<bool>(arg_1.e, arg_1.e, arg_1.c.x, var_0.b), vec4<bool>(false, arg_1.c.x, true, arg_1.e), false), vec4<bool>(var_0.a.d.x, false, false, var_2), true), select(!vec4<bool>(false, var_2, arg_1.c.x, true), vec4<bool>(arg_1.e, var_2, true, var_0.d.e), true), vec4<bool>(true, true, true, true)), var_0.d.c.x), !select(select(vec4<bool>(arg_1.d.x, var_2, arg_1.c.x, var_2), !arg_1.d, vec4<bool>(true, var_0.d.d.x, var_2, arg_1.e)), select(select(arg_1.c, vec4<bool>(var_2, false, false, true), var_0.b), var_0.d.d, true), select(vec4<bool>(true, true, false, true), !arg_1.d, any(arg_1.c))), var_2);
    return ~(~(~(~(~var_1.x))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_0 = _wgslsmith_sub_u32(arg_1, 1u);
    let var_1 = Struct_3(Struct_2(Struct_1(func_3(403f, Struct_1(0u, 85158u, vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false)), 1u, select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), !select(false, true, false) == true, vec4<u32>(u_input.a, countOneBits(func_3(-955f, Struct_1(arg_1, 1u, vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false))), 4294967295u, 0u), Struct_1(arg_2.x, 79685u, !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), 494f < _wgslsmith_f_op_f32(round(974f))), countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2, vec2<u32>(arg_1, 4294967295u)), _wgslsmith_add_vec2_u32(arg_2, arg_2)))), Struct_2(Struct_1(u_input.a, abs(18587u), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)) | (~25916u == _wgslsmith_sub_u32(u_input.a, arg_0)), countOneBits(select(vec4<u32>(4294967295u, 9216u, arg_1, 0u), vec4<u32>(0u, 4294967295u, 42617u, arg_0), true)) | firstTrailingBit(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)), Struct_1(1u, 30186u, select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), true), max(~arg_2, vec2<u32>(~arg_0, firstTrailingBit(arg_1)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -2147483647i, 22022i << (arg_0 % 32u), 26073i), vec4<i32>(firstTrailingBit(-2147483647i), abs(2147483647i), firstLeadingBit(27413i), ~0i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 43068u, 17309u, 0u), countOneBits(vec4<u32>(5401u, 0u, 0u, 4025u)), vec4<u32>(1u, arg_2.x, arg_2.x, 1u)) % vec4<u32>(32u))), abs(vec4<u32>(max(1u, arg_2.x & 74198u), ~(~u_input.a), ~firstLeadingBit(36310u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, arg_2.x), vec4<u32>(arg_1, arg_2.x, 76944u, 47664u)), ~u_input.a))), 4294967295u);
    let var_2 = false;
    let var_3 = Struct_1(u_input.a, abs(arg_2.x) | var_1.d.x, !var_1.a.a.c, !vec4<bool>(18826u < (1u >> (arg_1 % 32u)), var_1.a.a.e, !var_2, !any(var_1.a.a.c.xw)), var_1.b.b);
    return var_1.b;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_3(func_2(_wgslsmith_div_u32(~1u, u_input.a), ~abs(~u_input.a), vec2<u32>(firstLeadingBit(31u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 70095u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 20176u)), ~54753u, true))), func_2(func_2(u_input.a << ((u_input.a & 7895u) % 32u), abs(select(1u, u_input.a, false)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), func_2(u_input.a, u_input.a, vec2<u32>(1u, 14534u)).c.zz)).d.b, _wgslsmith_clamp_u32(~u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), func_2(23184u, 1u, vec2<u32>(u_input.a, u_input.a)).c.xzz)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(32675u, 4294967295u)), select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 15754u), select(false, true, true)))), vec4<i32>(var_0, var_0, countOneBits(firstTrailingBit(~arg_0)), 39420i), vec4<u32>(u_input.a, 1u << (_wgslsmith_div_u32(u_input.a, 1u >> (1u % 32u)) % 32u), 1u, u_input.a), 0u);
    let var_2 = !(!(!func_2(func_3(-1000f, var_1.b.d), 1u, vec2<u32>(9218u, var_1.b.a.b)).d.c));
    var var_3 = var_1.c.yyz & var_1.c.wwz;
    var_3 = var_1.c.xxy >> (~countOneBits(~(~vec3<u32>(u_input.a, 0u, var_1.e))) % vec3<u32>(32u));
    return _wgslsmith_clamp_u32(60592u, u_input.a, firstLeadingBit(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_1(_wgslsmith_add_i32(-51389i, -9694i)), func_1(~30466i), u_input.a) & ~(~vec3<u32>(u_input.a, 4294967295u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(min(-611f, _wgslsmith_f_op_f32(-1373f - _wgslsmith_f_op_f32(step(-421f, -258f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -643f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-767f))))));
}

