struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_3(vec4<u32>(u_input.b >> (countOneBits(u_input.b ^ 39573u) % 32u), u_input.b, u_input.b, u_input.b));
    global0 = Struct_3(max(global0.a << (~(vec4<u32>(global0.a.x, 0u, global0.a.x, 0u) >> (vec4<u32>(4294967295u, u_input.b, 0u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_u32(global0.a, select(global0.a, vec4<u32>(43763u, u_input.b, 0u, 1u), false)))));
    global0 = Struct_3(reverseBits(global0.a));
    var var_0 = -reverseBits(countOneBits(-min(u_input.a, 46595i)));
    var var_1 = min(~(_wgslsmith_mod_vec3_u32(global0.a.xxx, _wgslsmith_clamp_vec3_u32(global0.a.xxw, global0.a.yzw, global0.a.zxz)) << (abs(global0.a.yww) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 31917u, u_input.b) << (vec3<u32>(52801u, global0.a.x, u_input.b) % vec3<u32>(32u))), ~global0.a.zyx));
    return ~_wgslsmith_mult_vec2_u32(select(~_wgslsmith_sub_vec2_u32(var_1.xx, var_1.yx), var_1.zz, vec2<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, true, true)))), ~vec2<u32>(0u, 0u));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_2(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true)) || true, Struct_1(min(func_3(), global0.a.yz), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, -974f, 687f, 1216f)), vec4<f32>(1003f, -650f, -542f, -862f))))), arg_0.zw), vec3<u32>(1u, u_input.b, min(~u_input.b, firstLeadingBit(max(1u, 4294967295u)))), vec3<bool>(true || !any(vec2<bool>(true, true)), (select(true, true, true) && select(false, true, false)) | any(vec4<bool>(true, true, true, true)), true), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    let var_1 = Struct_3(abs(global0.a));
    let var_2 = Struct_3(global0.a);
    let var_3 = var_2;
    let var_4 = select(vec2<bool>(all(vec2<bool>(var_0.d.x, any(var_0.e))), false & all(select(var_0.d.xz, vec2<bool>(var_0.d.x, var_0.d.x), var_0.a))), var_0.e.yz, _wgslsmith_add_i32(~firstTrailingBit(arg_0.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_0.b.c.x), var_0.b.c, var_0.b.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -52920i), vec2<i32>(-4446i, u_input.a)))) > ~_wgslsmith_add_i32(firstTrailingBit(3800i), var_0.b.c.x));
    return max(max(-6505i, firstTrailingBit(14124i)), ~(1i << (u_input.b % 32u)));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(-706f)), _wgslsmith_f_op_f32(f32(-1f) * -1703f), _wgslsmith_f_op_f32(trunc(1829f)), -2025f))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-581f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1578f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(694f, 174f, false)), 576f)), -1169f))));
    global0 = Struct_3(global0.a);
    var var_1 = -((_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, 36077i, 0i, u_input.a), max(vec4<i32>(-1i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (vec4<u32>(~85024u, ~1u, u_input.b, _wgslsmith_add_u32(50763u, 47324u)) % vec4<u32>(32u))) | vec4<i32>(u_input.a & (u_input.a << (u_input.b % 32u)), i32(-1i) * -40353i, 50909i, max(-2147483647i, u_input.a)));
    var var_2 = !(!select(select(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), false), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), !arg_0), select(!vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, true, arg_0, false)), vec4<bool>(true, true, true, true)), func_2(vec4<i32>(var_1.x, 21259i, var_1.x, var_1.x)) < reverseBits(u_input.a)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(var_0.x - var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -550f))));
    return vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(388f - 1093f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_3))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-976f, var_0.x, true))) + -993f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * -367f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -798f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> StorageBuffer {
    return StorageBuffer(vec3<i32>(-u_input.a, -2147483647i, ~(~2147483647i) << (global0.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-760f, 1731f, 699f, -252f) * vec4<f32>(-1495f, -185f, 160f, 705f)))), _wgslsmith_f_op_vec4_f32(func_1(var_0 >= u_input.b)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f - 1666f)), _wgslsmith_f_op_f32(round(473f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-285f + 991f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(557f)) + _wgslsmith_f_op_f32(f32(-1f) * -646f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(200f, 1185f) + _wgslsmith_div_f32(-1677f, -1000f)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-78824i, abs(-1i), -43811i, 2147483647i), firstTrailingBit(vec4<i32>(1i, 61961i, u_input.a, 57545i))), u_input.a));
}

