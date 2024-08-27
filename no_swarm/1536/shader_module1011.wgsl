struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> u32 {
    let var_0 = min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(48203u, u_input.e, 4294967295u, u_input.a) & vec4<u32>(u_input.e, 40832u, 4294967295u, u_input.a)), abs(~vec4<u32>(1154u, 4294967295u, u_input.a, 1u))), (~vec4<u32>(4294967295u, u_input.e, u_input.a, u_input.a) & countOneBits(vec4<u32>(u_input.a, u_input.e, 3473u, u_input.a))) | ~(~vec4<u32>(0u, 39063u, 220u, u_input.e))), ~4294967295u);
    global0 = Struct_1(-975f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(170f, -1070f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b))))), (u_input.d < -32016i) || any(vec3<bool>(!arg_1.x, true, global0.c)));
    let var_1 = ~1i;
    let var_2 = vec4<u32>(u_input.e, ~16163u, ~u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u & u_input.a, 25039u), reverseBits(vec2<u32>(~u_input.a, 1u))));
    var var_3 = i32(-1i) * -(~var_1);
    return u_input.e;
}

fn func_2(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = u_input.a | _wgslsmith_add_u32(max(~0u & firstTrailingBit(4294967295u), func_3(arg_0, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, arg_0.x, global0.b.x, -945f) - vec4<f32>(global0.b.x, -1370f, global0.b.x, arg_0.x)))), ~4294967295u);
    let var_1 = u_input.a;
    var var_2 = 1016f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(sign(arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), -1000f), all(vec2<bool>(global0.c, global0.c)));
    let var_4 = ~vec2<i32>(_wgslsmith_add_i32(47535i, u_input.b), ~firstLeadingBit(u_input.d)) | -max(~firstTrailingBit(vec2<i32>(38300i, u_input.d)), vec2<i32>(u_input.b, _wgslsmith_clamp_i32(2147483647i, u_input.d, u_input.c)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), arg_0);
}

fn func_1(arg_0: f32) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b))) + vec2<f32>(arg_0, global0.a)), true);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1928f, arg_0))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(133f, _wgslsmith_f_op_f32(abs(arg_0)), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1712f, arg_0, global0.a), vec3<f32>(arg_0, -1131f, arg_0)) + _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(arg_0, arg_0, arg_0))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(arg_0, 2078f)), 1f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-160f, -1025f, global0.b.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1372f, var_0.x, global0.a, arg_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, var_0.x, global0.a, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 1000f, arg_0, -301f)))))));
    var var_2 = -_wgslsmith_clamp_i32(-2147483647i, 1i, 9621i);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec2<u32>(func_1(1179f), u_input.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 17176u), vec2<u32>(0u, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(~u_input.a, u_input.a) % vec2<u32>(32u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-958f * global0.b.x), 368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, -577f)) - -368f)) + _wgslsmith_div_f32(1f, global0.b.x)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.x), var_1.yx, global0.a <= _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)))), Struct_1(-1106f, vec2<f32>(global0.b.x, 827f), select(true, all(!vec2<bool>(global0.c, global0.c)), all(select(vec2<bool>(global0.c, global0.c), vec2<bool>(false, global0.c), global0.c)))), Struct_1(_wgslsmith_f_op_f32(-1296f - var_1.x), vec2<f32>(global0.a, 1016f), true));
    let var_3 = select(select(select(!vec2<bool>(var_2.b.c, global0.c), select(!vec2<bool>(var_2.b.c, false), select(vec2<bool>(global0.c, var_2.c.c), vec2<bool>(global0.c, false), global0.c), !global0.c), true), select(vec2<bool>(true, true), vec2<bool>(!global0.c, false), true), vec2<bool>(global0.c, -u_input.b > _wgslsmith_dot_vec3_i32(vec3<i32>(-15580i, -26551i, 1i), vec3<i32>(1i, 0i, u_input.d)))), vec2<bool>(var_2.c.c, false), vec2<bool>(false, false));
    let var_4 = -1000f;
    var var_5 = Struct_2(Struct_1(_wgslsmith_div_f32(-1280f, -1138f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.b, var_2.c.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, global0.a))) + var_2.c.b), any(select(vec4<bool>(var_2.a.c, true, var_3.x, true), !vec4<bool>(false, true, var_2.c.c, false), var_4 != var_2.b.b.x))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-193f)), _wgslsmith_div_f32(1654f, -662f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1109f, -256f)), vec2<f32>(833f, 1f)), true), var_2.a);
    var var_6 = var_5.a.c;
    let var_7 = -169f;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -1i) >> (var_0 % vec2<u32>(32u)), max(vec2<i32>(-44897i, u_input.d), vec2<i32>(9863i, u_input.b)), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -2147483647i) | vec2<i32>(u_input.d, -2147483647i), vec2<i32>(70191i, u_input.c)), ~(vec2<i32>(u_input.b, 0i) | vec2<i32>(0i, -1i))), countOneBits(_wgslsmith_div_i32(1i, max(-u_input.c, -2147483647i))));
}

