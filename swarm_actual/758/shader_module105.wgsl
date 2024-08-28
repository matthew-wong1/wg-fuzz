struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 20>;

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(37525i, -24790i, 2147483647i), vec3<i32>(-3710i, -6947i, 0i), vec3<i32>(0i, -32641i, 2147483647i), vec3<i32>(29559i, 1i, -41193i), vec3<i32>(88057i, -6864i, 20153i), vec3<i32>(58882i, 12506i, 2147483647i), vec3<i32>(1i, -1i, 17220i), vec3<i32>(993i, -13015i, -1i), vec3<i32>(58235i, 1i, 2147483647i), vec3<i32>(-22835i, i32(-2147483648), 0i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(14871i, i32(-2147483648), -34189i), vec3<i32>(-28459i, i32(-2147483648), 0i), vec3<i32>(-12272i, -41203i, i32(-2147483648)));

var<private> global3: Struct_4;

var<private> global4: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(0u, 43083u), vec2<u32>(70695u, 68835u), vec2<u32>(44310u, 37883u), vec2<u32>(6650u, 0u), vec2<u32>(110122u, 14047u), vec2<u32>(75632u, 0u), vec2<u32>(26330u, 51070u), vec2<u32>(21185u, 4294967295u), vec2<u32>(1u, 7428u), vec2<u32>(1u, 50476u), vec2<u32>(8388u, 1u), vec2<u32>(1u, 1u), vec2<u32>(79742u, 30984u), vec2<u32>(41512u, 6895u), vec2<u32>(0u, 1u), vec2<u32>(0u, 112037u), vec2<u32>(1072u, 4294967295u), vec2<u32>(1u, 45348u), vec2<u32>(1u, 0u), vec2<u32>(59047u, 9834u), vec2<u32>(0u, 84699u), vec2<u32>(0u, 4294967295u), vec2<u32>(90541u, 1u), vec2<u32>(1u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = u_input.b.zx;
    global4 = array<vec2<u32>, 24>();
    var var_0 = firstLeadingBit(abs(~global3.a.b & _wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, global3.a.b.x) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)))));
    global3 = Struct_4(global3.a);
    let var_1 = Struct_2(!vec3<bool>(!all(vec2<bool>(global3.a.a, global3.a.a)), global3.a.a, global3.a.a));
    return Struct_2(vec3<bool>(!any(vec2<bool>(true, global3.a.a)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global3.a.b.x, global3.a.b.x), select(u_input.a.x, var_0.x, true)) < (~global3.a.b.x << (u_input.a.x % 32u)), true));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(func_2(-u_input.b.x), _wgslsmith_f_op_f32(-143f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1356f, -670f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(380f, var_0.b, 970f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -549f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, -1203f, 636f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1154f * -1102f) - _wgslsmith_f_op_f32(var_0.b * var_0.b))))));
    global4 = array<vec2<u32>, 24>();
    var var_2 = 4294967295u;
    global0 = ~vec2<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.b.x), u_input.b), u_input.c, i32(-1i) * -21338i) >> (global3.a.b.x % 32u));
    return 4294967295u;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    var var_0 = vec2<bool>(true, select(true, false, arg_1.x >= _wgslsmith_f_op_f32(arg_1.x + -557f)));
    let var_1 = Struct_3(func_2(~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2, arg_0.x), 20u)], ~u_input.b.x)), _wgslsmith_f_op_f32(-1393f - _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + 1714f))));
    let var_2 = vec4<bool>(true, false, all(var_1.a.a.xy) | (~(~global3.a.b.x) >= ~1u), global3.a.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_1.b, -1168f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1433f, 451f, 308f) * vec3<f32>(arg_1.x, arg_1.x, var_1.b)), any(var_2))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, var_1.b, arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b, -193f, var_1.b)))), !vec3<bool>(var_2.x, var_1.a.a.x, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, -1456f, arg_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(step(-379f, 1000f)), 1983f, _wgslsmith_f_op_f32(ceil(var_1.b))))));
    global3 = Struct_4(global3.a);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1591f)) - -1406f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1163f)))), 1f)) - 393f);
    let var_2 = abs(~((select(vec4<u32>(u_input.a.x, 10007u, 0u, 48540u), vec4<u32>(u_input.a.x, u_input.a.x, 89922u, u_input.a.x), global3.a.a) << (_wgslsmith_div_vec4_u32(vec4<u32>(46269u, 34446u, global3.a.b.x, 0u), vec4<u32>(61512u, global3.a.b.x, 0u, global3.a.b.x)) % vec4<u32>(32u))) | vec4<u32>(~2713u, func_1(), select(u_input.a.x, global3.a.b.x, global3.a.a), u_input.a.x)));
    let var_3 = Struct_3(Struct_2(vec3<bool>(any(select(vec2<bool>(global3.a.a, true), vec2<bool>(global3.a.a, false), vec2<bool>(global3.a.a, global3.a.a))), true, global3.a.a && all(vec4<bool>(false, global3.a.a, global3.a.a, global3.a.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(804f, -275f))), _wgslsmith_div_f32(-650f, _wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(max(-233f, 1399f)))))));
    let var_4 = var_3.a;
    let var_5 = 1u;
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(~_wgslsmith_div_vec3_u32(var_2.zxy, vec3<u32>(51844u, global3.a.b.x, 16120u)), vec3<u32>(var_2.x, func_3(vec2<u32>(4294967295u, u_input.a.x), vec2<f32>(var_3.b, -1000f), 4294967295u), global3.a.b.x), select(var_6.a, !var_3.a.a, func_2(global0.x).a.x))), countOneBits(-u_input.b.yyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, -308f, var_3.b)), vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(var_3.b - 634f), _wgslsmith_f_op_f32(309f - var_3.b)), u_input.b.x < (u_input.b.x >> (0u % 32u))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(1796f * 346f)), var_3.b)), vec4<f32>(2817f, _wgslsmith_f_op_f32(max(var_3.b, 488f)), var_3.b, var_3.b));
}

