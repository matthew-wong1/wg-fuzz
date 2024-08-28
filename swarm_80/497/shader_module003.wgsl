struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 45921u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: bool) -> i32 {
    return 1i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(985f)), _wgslsmith_f_op_f32(select(229f, -1000f, all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), any(vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a, 273f)) - _wgslsmith_f_op_f32(-647f - arg_0.c.x)))));
    let var_1 = arg_1;
    let var_2 = any(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), all(vec4<bool>(true, true, true, false))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true)), all(vec4<bool>(false, false, false, false))));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.c.xzx);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.yzz)));
    return _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, arg_2.x), vec2<i32>(1i, 1i))), u_input.a.xz) | (_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(~u_input.a.x, arg_2.x)) << (~((vec2<u32>(0u, 35260u) >> (vec2<u32>(arg_0.b, 13945u) % vec2<u32>(32u))) | select(vec2<u32>(arg_1.b, 4294967295u), vec2<u32>(var_1.b, 26425u), var_2)) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = i32(-1i) * -func_2(abs(1u) <= arg_2.b);
    var var_1 = Struct_2(arg_2, 1000f, arg_2);
    let var_2 = _wgslsmith_div_vec4_f32(var_1.a.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(var_1.b + var_1.b), 681f, -611f));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), firstLeadingBit(var_1.c.b & ~var_1.c.b), var_1.a.c);
    let var_4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-16515i, _wgslsmith_div_i32(~u_input.b.x, reverseBits(u_input.a.x >> (0u % 32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -u_input.a.yy, u_input.b.xz), func_3(arg_2, Struct_1(870f, arg_2.b, var_1.c.c), u_input.b));
    return Struct_2(Struct_1(-547f, _wgslsmith_sub_u32(~arg_2.b, min(5075u, reverseBits(4294967295u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.a.c - var_1.c.c))), arg_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(653f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_div_f32(var_2.x, var_2.x))))), arg_2);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global0 = 87344u;
    global0 = 24608u >> (~_wgslsmith_mod_u32(37761u, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.a.b, arg_0.x), ~arg_2.c.b)) % 32u);
    var var_0 = 1u;
    let var_1 = -1i;
    global0 = 4294967295u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_1(arg_3.a.c.xx, vec2<bool>(true, true), arg_2.c).b)) * -2298f) - -469f), -229f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1790f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(138f + 1421f)))))) + -1531f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~vec4<u32>(1u, 4294967295u, 12287u, 16466u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, 1159f, 127f, var_0)), func_1(vec2<f32>(var_0, -776f), vec2<bool>(false, false), Struct_1(-574f, 1u, vec4<f32>(1206f, -1788f, -714f, -1716f))), Struct_2(Struct_1(394f, 20469u, vec4<f32>(var_0, var_0, 270f, var_0)), 124f, Struct_1(339f, 27079u, vec4<f32>(-629f, var_0, 1210f, 1198f))))) + _wgslsmith_f_op_f32(f32(-1f) * -112f)) - _wgslsmith_f_op_f32(f32(-1f) * -348f)), abs(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(48997u, 5602u), vec2<u32>(44219u, 4294967295u)), min(32365u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2458f, 1000f, var_0, -896f))))))));
    var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)))))), !select(vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, all(vec2<bool>(false, false))), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(var_1.c.x * -1000f))), firstLeadingBit(26291u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -362f)), var_1.c.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, var_1.b, 0u, 0u), vec4<u32>(var_1.b, var_1.b, var_1.b, 4294967295u), vec4<u32>(var_1.b, 48725u, var_1.b, 0u)), vec4<f32>(1000f, 716f, var_0, 1145f), Struct_2(Struct_1(var_1.c.x, var_1.b, var_1.c), var_1.a, Struct_1(var_0, 4294967295u, vec4<f32>(-888f, -1072f, var_0, 930f))), func_1(var_1.c.zx, vec2<bool>(false, false), Struct_1(-1132f, var_1.b, vec4<f32>(var_0, 912f, var_0, -747f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a)))))).a;
    var var_2 = !vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), (true & (-258f < var_0)) | true, false);
    let var_3 = var_1.c.wwz;
    var var_4 = (false & ((var_2.x | true) || all(!vec4<bool>(true, false, var_2.x, var_2.x)))) && var_2.x;
    var_2 = vec3<bool>(var_2.x, all(select(!vec3<bool>(false, var_2.x, false), vec3<bool>(!var_2.x, !var_2.x, true), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, false), !vec3<bool>(var_2.x, false, var_2.x)))), var_2.x);
    var var_5 = u_input.a.yz;
    var var_6 = 172f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(var_0)), true)), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - 993f), var_0, var_2.x & var_2.x))), 2956f));
}

