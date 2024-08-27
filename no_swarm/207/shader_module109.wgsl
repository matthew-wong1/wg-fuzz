struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 21>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(global0.a.zwy), select(vec3<i32>(u_input.a, -2147483647i, global0.b.x), global0.a.wyx, vec3<bool>(false, arg_0, arg_0))), _wgslsmith_sub_i32(global0.a.x, u_input.a ^ u_input.a), -select(13910i, u_input.a, arg_0), reverseBits(2147483647i)), -(~global0.a)), global0.a.yyx);
    var var_0 = 1u;
    var_0 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~abs(1u)), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(12621u, 1u), vec2<u32>(9577u, 100446u))), 46799u));
    let var_1 = 1i;
    let var_2 = true;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1274f, -365f))), vec2<f32>(1f, 1f))));
}

fn func_2(arg_0: vec2<bool>) -> vec2<f32> {
    global0 = Struct_1(_wgslsmith_mult_vec4_i32(-global0.a, reverseBits(global0.a)), abs(global0.b));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-333f, 598f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-507f, 435f) + _wgslsmith_f_op_f32(abs(-407f)))), 1253f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-250f, -136f), vec2<f32>(-1000f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(938f, 1310f), vec2<f32>(-1000f, 884f)))), arg_0)), _wgslsmith_f_op_vec2_f32(func_3(any(vec2<bool>(arg_0.x, arg_0.x)))))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, false))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1154f), -1120f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, -1402f) * vec2<f32>(787f, 215f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x;
    let var_1 = 17597u ^ ~_wgslsmith_sub_u32(~func_1(), 37935u);
    let var_2 = global0.b.x;
    let var_3 = -671f;
    var var_4 = abs(vec3<u32>(~var_1, 11059u, 23944u));
    var var_5 = Struct_2(1u, reverseBits(vec4<u32>(var_4.x, abs(var_4.x), var_1, 4294967295u)) << ((select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 29762u, var_1, var_4.x), vec4<u32>(1u, 4294967295u, var_4.x, 52051u), vec4<u32>(var_1, var_1, var_4.x, var_1)), ~vec4<u32>(0u, var_1, 4341u, var_1), any(vec3<bool>(false, true, true))) | vec4<u32>(84648u, ~var_4.x, firstTrailingBit(var_1), 1u)) % vec4<u32>(32u)), Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global0.a.xy, vec2<i32>(-2147483647i, global0.b.x)), global0.b.zx), _wgslsmith_mod_i32(21036i, 15564i), select(u_input.a, 21145i >> (var_1 % 32u), true), -45989i), countOneBits(vec3<i32>(-global0.a.x, ~u_input.a, u_input.a))), Struct_1(max(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(37501i, 1i, global0.b.x, u_input.a), global0.a), min(vec4<i32>(-1i, global0.a.x, 455i, u_input.a), vec4<i32>(global0.a.x, global0.a.x, u_input.a, u_input.a))), global0.a), vec3<i32>(global0.b.x, 1i, ~(~0i))));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~min(max(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(13217i, global0.b.x, 1i), global0.b)), i32(-1i) * -u_input.a), 4294967295u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3, var_3, var_3, 1234f)))))))), var_5.b.wxz);
}

