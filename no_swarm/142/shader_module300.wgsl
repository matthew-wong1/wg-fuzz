struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_3,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(59707u, 4294967295u), 2330f, 39649i, -1045f);

var<private> global1: f32;

var<private> global2: u32 = 247u;

var<private> global3: bool;

var<private> global4: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~countOneBits(u_input.a), ~(~26194u | _wgslsmith_dot_vec3_u32(u_input.b.wwx, u_input.b.xzz)), ~(u_input.b.x << (u_input.b.x % 32u))), ~select(u_input.b.wwy, ~u_input.b.xyx, true));
    let var_1 = !vec3<bool>((all(vec3<bool>(false, true, false)) & true) | !(u_input.b.x >= var_0.x), false, _wgslsmith_f_op_f32(min(global0.d, _wgslsmith_f_op_f32(270f * global0.d))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + global0.b));
    var var_2 = ~vec4<i32>(firstTrailingBit(u_input.d.x) >> (1u % 32u), global0.c, abs(global0.c ^ ~(-26929i)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, global0.c, u_input.c, u_input.c)), vec4<i32>(i32(-1i) * -1i, -47459i, u_input.c, ~2147483647i)));
    var var_3 = vec2<bool>(global0.a.x != _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(37358u, 1u)), select(0u, 70539u, var_1.x)), !var_1.x | true);
    global3 = false;
    return var_0.x >= ~(_wgslsmith_mod_u32(~var_0.x, 14895u) >> (global0.a.x % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = -613f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b)))));
    var var_1 = arg_0;
    let var_2 = abs(24090u) << (~max(_wgslsmith_clamp_u32(15954u, 4294967295u, u_input.a), firstTrailingBit(_wgslsmith_mult_u32(arg_1.a.x, 1u))) % 32u);
    global2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0, _wgslsmith_sub_u32(1u, var_2 << (abs(var_2) % 32u)), u_input.b.x), ((~u_input.b.zzz >> (vec3<u32>(69923u, 1u, arg_1.a.x) % vec3<u32>(32u))) ^ ~_wgslsmith_div_vec3_u32(u_input.b.xzw, u_input.b.yxw)) | vec3<u32>(_wgslsmith_mult_u32(abs(14770u), _wgslsmith_sub_u32(9003u, u_input.b.x)), _wgslsmith_mult_u32(u_input.a, 21449u), 26252u));
    global1 = -2055f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(750f * arg_1.b) - _wgslsmith_f_op_f32(step(arg_1.b, 1000f))), arg_1.d, all(vec4<bool>(false, true, false, false)))) + global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-324f)))));
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = false;
    global2 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(func_4(0u << (~firstTrailingBit(~21927u) % 32u), Struct_3(_wgslsmith_sub_vec2_u32(~(global0.a | vec2<u32>(35034u, arg_0.e.a)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(u_input.b.x, 57330u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1982f * _wgslsmith_f_op_f32(ceil(-798f)))), -49719i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, arg_0.b.a.d)))))), vec4<i32>(firstLeadingBit(~global0.c), u_input.d.x << (~4294967295u % 32u), abs(u_input.d.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(29857i, 1i), 1i, ~u_input.c)) >> (~(~u_input.b) % vec4<u32>(32u)), !vec4<bool>(!(!arg_0.a), true, !func_3(), false)));
    let var_2 = u_input.b.wz;
    let var_3 = Struct_5(any(!(!vec4<bool>(false, false, arg_0.a, arg_0.a))), arg_0.b, Struct_3(firstTrailingBit(~abs(global0.a)), _wgslsmith_f_op_f32(1000f * arg_0.e.b.x), 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - 846f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-626f)), _wgslsmith_f_op_f32(-global0.d)), -458f)), Struct_1(~global0.a.x, _wgslsmith_div_vec4_f32(arg_0.e.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(-2146f)), _wgslsmith_f_op_f32(max(global0.d, 870f)), _wgslsmith_f_op_f32(-global0.b), -626f))));
    return _wgslsmith_div_f32(var_3.b.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.b)), _wgslsmith_f_op_f32(select(788f, _wgslsmith_f_op_f32(f32(-1f) * -296f), arg_0.a)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> i32 {
    return ~_wgslsmith_add_i32(global0.c, select(~2147483647i, ~(-2147483647i), true));
}

fn func_1() -> bool {
    var var_0 = vec2<i32>(-1i, func_5(vec2<bool>(false, _wgslsmith_f_op_f32(-global0.d) < _wgslsmith_f_op_f32(func_2(Struct_5(true, Struct_4(Struct_3(vec2<u32>(3723u, 35284u), -158f, 0i, 754f)), Struct_3(global0.a, -621f, u_input.d.x, 235f), vec2<f32>(-822f, global0.d), Struct_1(9679u, vec4<f32>(-1173f, 571f, global0.b, global0.b)))))), Struct_2(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), all(vec2<bool>(true, false))), select(false, true, any(vec2<bool>(true, false))), vec3<f32>(-383f, -716f, _wgslsmith_div_f32(global0.d, global0.d))), global0.d, global0.b));
    let var_1 = -482f;
    let var_2 = false;
    var var_3 = Struct_4(Struct_3(vec2<u32>(u_input.b.x, ~_wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(global0.a.x, 4294967295u))), _wgslsmith_f_op_f32(step(1000f, global0.d)), ~u_input.c, _wgslsmith_f_op_f32(func_2(Struct_5(all(vec2<bool>(var_2, var_2)), Struct_4(Struct_3(vec2<u32>(81179u, u_input.b.x), -244f, 0i, 312f)), Struct_3(vec2<u32>(global0.a.x, 0u), var_1, -5931i, global0.d), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, 779f))), Struct_1(global0.a.x, vec4<f32>(403f, var_1, var_1, -650f)))))));
    global0 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.a.x), global0.a), global0.d, -1i, _wgslsmith_f_op_f32(trunc(258f)));
    return any(vec3<bool>(true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    global4 = 42304u;
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) + _wgslsmith_f_op_f32(min(global0.d, -2039f))), 947f, global0.b, -199f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * global0.b) * _wgslsmith_f_op_f32(ceil(-1391f))), -555f, _wgslsmith_f_op_f32(-global0.b)), -1i < ~global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.b)), -1000f, 891f, -709f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 1007f, global0.b, -1099f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -240f, 414f, global0.d)))))));
    var var_3 = Struct_4(Struct_3(~u_input.b.zx, 1000f, 1i, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a.a.x, u_input.b.x, u_input.b.yxw ^ abs(firstLeadingBit(u_input.b.yxx)), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_3.a.a.x, firstLeadingBit(global0.a.x)), _wgslsmith_clamp_u32(global0.a.x, ~(51538u >> (global0.a.x % 32u)), global0.a.x)), vec4<u32>(u_input.b.x, u_input.a, global0.a.x, 4294967295u));
}

