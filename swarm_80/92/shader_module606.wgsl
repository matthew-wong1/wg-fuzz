struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(_wgslsmith_mult_u32(38689u, u_input.b.x), Struct_2(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), !any(vec3<bool>(false, true, false))), vec4<f32>(1000f, 714f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -888f))), 1213f), -1940f), 54394u);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)), !var_0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) * 1613f))));
    var var_2 = var_0;
    var var_3 = ~(reverseBits(var_2.d) | 0u) | 45085u;
    var var_4 = !(!(all(vec4<bool>(true, false, false, var_0.b.a.x)) && var_2.b.b) == false);
    return firstLeadingBit(max((firstLeadingBit(var_0.a) >> (var_0.d % 32u)) & 18593u, var_2.a));
}

fn func_2() -> vec3<bool> {
    let var_0 = reverseBits(~(~37053i << (func_3() % 32u))) == 36564i;
    var var_1 = ~func_3();
    return !vec3<bool>(!var_0, true, any(vec2<bool>(var_0, any(vec4<bool>(false, var_0, true, true)))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = !func_2();
    return !func_2();
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(u_input.b.x, Struct_2(arg_0, any(!(!vec4<bool>(arg_0.x, false, true, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * arg_1))))), 1u);
    let var_1 = ~(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-1i), countOneBits(-24607i)), ~min(34276i, -7667i), ~(i32(-1i) * -9436i)) & abs(select(-2147483647i, 26441i, all(vec4<bool>(var_0.b.b, var_0.b.a.x, false, false)))));
    let var_2 = Struct_4(1u, Struct_2(arg_0, var_0.d > select(_wgslsmith_clamp_u32(4880u, 23475u, u_input.b.x), ~var_0.d, arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, 1000f, arg_1.x, var_0.c.x))), arg_1, all(func_2()))))), ~(~_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(56265u, 122685u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, var_0.a, u_input.b.x, var_0.a)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-408f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, 1000f)))));
    let var_4 = arg_1;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_1.x) * var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) + _wgslsmith_f_op_f32(min(var_3.x, arg_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(286f - var_2.c.x) * _wgslsmith_div_f32(arg_1.x, -456f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> Struct_5 {
    let var_0 = arg_1.a.c.xxx;
    var var_1 = Struct_2(arg_1.a.b.a, !(!(!arg_1.a.b.b && func_1(vec3<i32>(10144i, 1i, -34660i)).x)));
    var var_2 = Struct_3(vec4<i32>(64378i, _wgslsmith_div_i32(-3832i, _wgslsmith_dot_vec3_i32(vec3<i32>(10836i, -43864i, -1i), vec3<i32>(-1i, 0i, 55790i)) ^ 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(46286i, 6467i, -1533i), vec3<i32>(1i, 1i, 1i)), i32(-1i) * -4067i), max(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), ~vec2<i32>(-6917i, 0i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(233f)))));
    let var_3 = Struct_3(~select(var_2.a, var_2.a, arg_1.b.b.b), i32(-1i) * -1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_div_f32(var_0.x, -1902f))))));
    var var_4 = arg_1.a;
    return Struct_5(Struct_4(~(~(~3451u)), arg_1.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_4.c.x, _wgslsmith_f_op_f32(-var_0.x), 1438f)), 6522u), Struct_4(_wgslsmith_dot_vec3_u32(select(~u_input.b.zww, abs(vec3<u32>(54906u, 1u, 38814u)), !var_1.a), u_input.a), arg_1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.x, 1144f, var_0.x, 782f))), 62699u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~(-(i32(-1i) * -1i))));
    var var_1 = func_5(func_4(!func_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, 0i), vec3<i32>(-22790i, -9131i, 2147483647i))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-560f - -1069f), _wgslsmith_f_op_f32(-978f + -637f), _wgslsmith_div_f32(-225f, -525f), _wgslsmith_f_op_f32(f32(-1f) * -1527f))))), Struct_5(Struct_4(abs(27350u), Struct_2(vec3<bool>(false, true, false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1865f, 808f, 442f, 2326f) * vec4<f32>(-392f, 1000f, -1099f, 853f))), firstLeadingBit(firstTrailingBit(37827u))), Struct_4(~4294967295u, Struct_2(vec3<bool>(false, false, true), any(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1852f, -326f, -1275f, 1280f)))), ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u)))));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_5(func_4(var_1.a.b.a, _wgslsmith_f_op_vec4_f32(var_1.b.c * vec4<f32>(-759f, var_1.a.c.x, var_1.b.c.x, var_1.a.c.x))), func_5(func_4(vec3<bool>(var_1.b.b.b, var_1.b.b.a.x, false), var_1.b.c), func_5(Struct_1(var_1.b.c.zx), Struct_5(Struct_4(var_1.a.a, var_1.b.b, var_1.a.c, 1u), Struct_4(var_2.x, Struct_2(var_1.b.b.a, false), var_1.a.c, u_input.a.x))))).b.c.xxw) - _wgslsmith_f_op_vec3_f32(-var_1.b.c.zyy));
    var_0 = 2737i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~0i), _wgslsmith_div_i32(2147483647i, ~(~(-1i)))), 44950u, vec2<i32>(-(i32(-1i) * -1i), 17064i << (abs(0u) % 32u)), var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1041f + 353f)));
}

