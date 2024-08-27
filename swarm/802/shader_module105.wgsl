struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-2056f, -524f), vec4<f32>(1401f, -515f, -698f, -304f), 0i, true);

var<private> global1: array<Struct_2, 26>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global1 = array<Struct_2, 26>();
    let var_0 = global1[_wgslsmith_index_u32(4294967295u << (_wgslsmith_dot_vec2_u32(~abs(min(vec2<u32>(29479u, 99301u), vec2<u32>(1u, 0u))), vec2<u32>(1u, 1u)) % 32u), 26u)];
    let var_1 = ~vec3<u32>(1u, 1u, 1u);
    let var_2 = var_0.b;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(abs(~(~var_1.x))), 71551u), 26u)];
    return vec3<bool>(!any(var_0.b.xx), true, (global0.d && arg_0) || all(select(vec2<bool>(true, true), var_3.b.zz, vec2<bool>(arg_0, true))));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, _wgslsmith_sub_i32(1i, 0i), global0.c, abs(global0.c))), min(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(23696i, 17753i, u_input.a, u_input.a), vec4<i32>(global0.c, u_input.a, global0.c, u_input.a), true), vec4<i32>(global0.c, 1i, global0.c, u_input.a) & (vec4<i32>(global0.c, global0.c, -2147483647i, global0.c) | vec4<i32>(36789i, global0.c, -22003i, 22683i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(global0.c, -18380i, u_input.a, 2147483647i), countOneBits(vec4<i32>(global0.c, 44435i, global0.c, 36382i)))));
    var var_1 = !vec4<bool>(!global0.d, !any(!vec2<bool>(true, arg_0.x)), false, true);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1326f, global0.a.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, -2035f))))), vec2<f32>(-1631f, -172f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.b), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 313f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, -819f, global0.a.x, -1380f))), true))), _wgslsmith_sub_i32(50445i, var_0.x), var_1.x);
    var var_2 = -2147483647i;
    var var_3 = ~28668u;
    return max(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(18923u, ~1u), abs(0u)), 1u), 1u);
}

fn func_2() -> Struct_1 {
    let var_0 = global0.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.b))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, -423f, global0.a.x, global0.b.x)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2197f, global0.b.x, global0.b.x, 1735f), vec4<f32>(global0.a.x, global0.a.x, -1439f, global0.a.x))))))) + global0.b);
    let var_2 = _wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(14698i), -59265i), ~vec2<i32>(1i, global0.c)), u_input.a), ~global0.c);
    let var_3 = global1[_wgslsmith_index_u32(~(4294967295u & ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(45899u, 0u, 0u), vec3<u32>(4294967295u, 11683u, 255u)))), 26u)];
    var var_4 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~select(4294967295u, 0u, global0.d), func_4(func_3(var_3.b.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~27221u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18428u, 4294967295u), vec3<u32>(39463u, 38750u, 0u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 39729u), vec2<u32>(40791u, 0u), vec2<u32>(112726u, 100696u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 14357u), ~vec2<u32>(1u, 14587u))))), 26u)];
    return var_4.a;
}

fn func_1() -> bool {
    let var_0 = global0.b.x;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), global0.a.x)))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1076f)))));
    global0 = func_2();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a, global0.b.yx, global0.d)) - _wgslsmith_f_op_vec2_f32(select(global0.b.ww, global0.a, global0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.xx)), ~27433u > func_4(vec3<bool>(global0.d, global0.d, global0.d))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().b.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(global0.b.x, 478f))), _wgslsmith_f_op_f32(max(108f, global0.a.x)), _wgslsmith_f_op_f32(global0.b.x - var_1)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, global0.a.x, _wgslsmith_f_op_f32(min(global0.a.x, -1804f)), _wgslsmith_f_op_f32(635f * -1000f)), vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 + 1292f), _wgslsmith_f_op_f32(max(-386f, global0.b.x)), 418f)))), i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, global0.c), abs(-2147483647i)), false);
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1383f, var_2.b.x, false)), var_1), -1015f))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-1710f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.b.x, var_2.b.x)) + _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(542f + var_2.a.x) - global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -379f)), func_2().c, !(global0.b.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global0.b.x)) + _wgslsmith_f_op_f32(-var_2.a.x))));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.c;
    var var_1 = vec4<bool>(any(!(!select(vec4<bool>(global0.d, false, global0.d, global0.d), vec4<bool>(false, false, global0.d, true), vec4<bool>(true, false, true, false)))), !func_1(), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), 1f, global0.d)) != 1f), false);
    let var_2 = func_1();
    global1 = array<Struct_2, 26>();
    var var_3 = ~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(74354u, 16282u, 4294967295u, 53445u), reverseBits(vec4<u32>(0u, 17235u, 59622u, 27213u))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_vec3_i32(max(vec3<i32>(global0.c, global0.c, global0.c), vec3<i32>(global0.c, -2946i, -2147483647i)), firstLeadingBit(vec3<i32>(-23159i, global0.c, 17807i))) & vec3<i32>(1i, global0.c, _wgslsmith_mod_i32(-36326i, -5179i))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(countOneBits(17482u), _wgslsmith_dot_vec2_u32(vec2<u32>(49845u, 57504u), vec2<u32>(45189u, 8996u))), 1u, 1u, 0u), ~vec4<u32>(~56576u, min(1u, 4294967295u), 1u, ~69137u)), vec3<u32>(~_wgslsmith_mult_u32(~29257u, _wgslsmith_dot_vec4_u32(vec4<u32>(15681u, 1u, 1u, 64725u), vec4<u32>(8023u, 4294967295u, 1u, 86764u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(_wgslsmith_mod_u32(103292u, 1u))), ~13096u));
}

