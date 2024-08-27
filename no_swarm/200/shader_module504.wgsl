struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    global0 = array<vec2<bool>, 16>();
    let var_0 = Struct_2(true, 4294967295u, 44654u);
    let var_1 = all(!(!(!select(vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.a, false, false), true))));
    var var_2 = var_0;
    let var_3 = true;
    return _wgslsmith_mult_u32(22849u, ~var_2.c);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-743f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1212f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1639f, 247f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1608f)));
    var var_1 = Struct_2(false, 1u, 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 2326f)))))));
    var_1 = Struct_2(var_1.a, var_1.c, 1u << (u_input.a.x % 32u));
    var var_3 = Struct_2(var_1.a, 0u, var_1.b >> (28241u % 32u));
    return var_3.a;
}

fn func_1() -> i32 {
    var var_0 = vec2<bool>(~u_input.a.x > _wgslsmith_add_u32(func_2(-534f, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 71310u), vec2<u32>(4294967295u, 33386u) | u_input.a.xz)), !(((-1i >= u_input.c.x) || true) | (~u_input.a.x < u_input.a.x)));
    var var_1 = abs(u_input.c.x);
    var var_2 = Struct_3(~vec4<u32>(~4294967295u, u_input.a.x, _wgslsmith_mult_u32(1u, max(1u, 17335u)), u_input.a.x), u_input.b, Struct_1(vec3<bool>(var_0.x, !any(vec2<bool>(var_0.x, true)), func_3()), u_input.c, false), Struct_2(true == (u_input.a.x != firstTrailingBit(59227u)), 1u, 69331u));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2197f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(610f, 1053f)), _wgslsmith_f_op_f32(f32(-1f) * -1496f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) + _wgslsmith_f_op_f32(-887f + 783f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(520f, 771f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-625f, _wgslsmith_f_op_f32(sign(-2064f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1344f, 357f, true))))));
    global0 = array<vec2<bool>, 16>();
    return _wgslsmith_dot_vec4_i32(~max(~min(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.b.x), vec4<i32>(u_input.c.x, var_2.c.b.x, u_input.b.x, var_2.b.x)), ~countOneBits(vec4<i32>(56735i, -1i, -1i, -46782i))), vec4<i32>(var_2.c.b.x, var_2.c.b.x, 1i, var_2.b.x));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_1 {
    global0 = array<vec2<bool>, 16>();
    global0 = array<vec2<bool>, 16>();
    global0 = array<vec2<bool>, 16>();
    global0 = array<vec2<bool>, 16>();
    var var_0 = Struct_2(true & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, arg_1)))) >= 937f), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(~78801u, _wgslsmith_mult_u32(~u_input.a.x, 1u))));
    return Struct_1(!vec3<bool>(var_0.a, (false | var_0.a) | func_3(), any(vec3<bool>(var_0.a, var_0.a, true))), -_wgslsmith_mod_vec2_i32(u_input.c | ~u_input.c, _wgslsmith_mod_vec2_i32(u_input.c, u_input.c)), !any(select(select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(false, var_0.a, var_0.a, true), true), !vec4<bool>(false, true, false, var_0.a), !vec4<bool>(var_0.a, var_0.a, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(21211u, 1000f, _wgslsmith_sub_i32(0i, i32(-1i) * -func_1()));
    global0 = array<vec2<bool>, 16>();
    var_0 = func_4(~abs(u_input.a.x), -2790f, -_wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x)), select(~vec3<i32>(var_0.b.x, u_input.b.x, -4253i), select(vec3<i32>(u_input.c.x, 2147483647i, 49155i), vec3<i32>(-2147483647i, var_0.b.x, -48451i), false), vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))));
    var var_2 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(~(~(-20895i)), -1i, _wgslsmith_div_i32(-1i, var_0.b.x), -1i), ~(-vec4<i32>(1i, 2147483647i, u_input.c.x, -2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f))))) * 1f);
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(686f, ~u_input.a.x, ~4294967295u, min(firstTrailingBit(max(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 29019u, 23583u), vec4<u32>(u_input.a.x, 20273u, 0u, u_input.a.x)))), vec4<u32>(_wgslsmith_clamp_u32(~0u, u_input.a.x, u_input.a.x), u_input.a.x, ~0u, ~u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -558f));
}

