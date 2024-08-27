struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.a);
    global1 = 348f;
    global0 = var_0;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - 2127f), _wgslsmith_f_op_f32(round(-1050f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, _wgslsmith_f_op_f32(f32(-1f) * -1514f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1368f * -1429f) + _wgslsmith_f_op_f32(-348f + -1220f)))));
    return var_0;
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~(~(~reverseBits(min(vec2<u32>(53429u, 8823u), global0.a))));
    let var_1 = select(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.a.x, global0.a.x, 1u, 0u), countOneBits(countOneBits(vec4<u32>(39822u, var_0.x, var_0.x, 0u)))), max(max(vec4<u32>(var_0.x, 1u, 43426u, 39701u), vec4<u32>(8226u, global0.a.x, 0u, 0u)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(86769u, 19463u, 33528u, global0.a.x), vec4<u32>(var_0.x, 12940u, global0.a.x, var_0.x)))), vec4<bool>(true, true, 4294967295u < ~global0.a.x, -arg_0 < ~(-1i))) & select(~(_wgslsmith_mod_vec4_u32(vec4<u32>(35902u, var_0.x, var_0.x, 14744u), vec4<u32>(8401u, global0.a.x, var_0.x, 25525u)) | (vec4<u32>(var_0.x, 28602u, 0u, 40915u) | vec4<u32>(28169u, 2142u, 20951u, 4294967295u))), ~(~vec4<u32>(108327u, 4294967295u, 4294967295u, var_0.x)), vec4<bool>(true, true, true, true));
    global0 = func_2();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -1454f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-586f, -572f))))));
    var var_3 = Struct_2(func_2(), true, all(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    return var_1.x << (var_1.x % 32u);
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_div_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(31498u, 24647u), vec2<u32>(26078u, global0.a.x)), vec2<u32>(~global0.a.x, 34335u)), ~global0.a));
    var var_0 = func_2();
    var_0 = Struct_1(~(~vec2<u32>(func_3(arg_0.x), 11102u)));
    return !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), false & (u_input.b.x <= u_input.b.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = reverseBits(vec3<u32>(~(~1u), func_3(-u_input.a & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(2147483647i, u_input.b.x, 9218i))), func_2().a.x));
    let var_2 = func_2();
    var var_3 = -1115f;
    let var_4 = Struct_2(func_2(), all(vec4<bool>(false, true, any(arg_0.xxx), any(arg_0.yy))) & all(select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), func_1(min(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(~u_input.a, -1i, -54794i, -2147483647i))).x);
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(~vec4<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a & 4204i, u_input.a)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 20208u), vec2<u32>(38158u, _wgslsmith_sub_u32(global0.a.x, global0.a.x)))));
    var var_0 = i32(-1i) * -1i;
    var var_1 = Struct_2(Struct_1(vec2<u32>(global0.a.x, 4294967295u)), true, func_1(max(max(-vec4<i32>(u_input.a, 0i, u_input.b.x, 1i), ~vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 1i)), ~(~vec4<i32>(-8505i, -2147483647i, -2147483647i, u_input.b.x)))).x);
    let var_2 = ~vec4<i32>(reverseBits(-(i32(-1i) * -2147483647i)), 2147483647i, ~firstLeadingBit(abs(-2147483647i)), _wgslsmith_mod_i32(select(u_input.b.x, -1i, any(vec4<bool>(true, true, var_1.b, true))), ~_wgslsmith_mult_i32(23918i, u_input.a)));
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), vec3<u32>(46763u, 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(~85549u, ~1u), global0.a.x)));
}

