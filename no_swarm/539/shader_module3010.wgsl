struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-404f, -684f), vec2<f32>(-674f, -727f), vec2<f32>(171f, -417f), vec2<f32>(320f, -680f));

var<private> global2: array<vec3<bool>, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(-952f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-204f * -1284f)))), _wgslsmith_clamp_u32(u_input.a.x, min(_wgslsmith_div_u32(u_input.c, u_input.c), ~44373u), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(16100u, 25299u, 0u, u_input.a.x))))), Struct_1(_wgslsmith_f_op_f32(-1481f * -563f), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), ~vec3<u32>(4294967295u, 60691u, u_input.c))));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(24370u) & var_0.b.b, ~_wgslsmith_dot_vec2_u32(u_input.a.zx, _wgslsmith_clamp_vec2_u32(u_input.a.yy, u_input.a.zy, vec2<u32>(u_input.a.x, 76116u)))), 4294967295u);
    let var_2 = var_0.a;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-879f)), 4294967295u), Struct_1(_wgslsmith_f_op_f32(1118f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(28013u, 1u, any(vec4<bool>(false, false, false, true)))));
    var var_3 = true;
    return ~(firstTrailingBit(~select(var_1.x, var_0.b.b, true)) ^ _wgslsmith_mult_u32(var_0.a.b, max(var_0.b.b, var_0.b.b)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f - -322f) + _wgslsmith_f_op_f32(sign(arg_2)))) + -272f), ~(~func_3(-2147483647i)));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_1 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(631f)) + _wgslsmith_f_op_f32(f32(-1f) * -888f))), ~6620u));
    let var_2 = 29954u;
    return 58246u >> ((u_input.a.x ^ ~var_2) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0, arg_0);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), -457f);
    let var_2 = _wgslsmith_mod_i32(~u_input.b.x, global0[_wgslsmith_index_u32(~func_2(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(1028f - -1787f)), 32u)]);
    global1 = array<vec2<f32>, 4>();
    global0 = array<i32, 32>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<i32, 32>();
    return Struct_3(true, select(vec2<u32>(~22568u, _wgslsmith_mod_u32(arg_0.b, ~38633u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(arg_1.yz), arg_1.xz), vec2<bool>(false, false)), _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-arg_2.x, u_input.b.x, ~(-arg_2.x)), -_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(global0[_wgslsmith_index_u32(60876u, 32u)], u_input.b.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(460f * 1766f)), 1u), u_input.b), _wgslsmith_add_vec3_u32(min(u_input.a.zxx, _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, u_input.a.x, 0u), vec3<u32>(15491u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.c, u_input.c))), abs(~vec3<u32>(u_input.c, u_input.c, u_input.c))), vec2<i32>(u_input.b.x, u_input.b.x));
    var var_1 = var_0.d.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~(24610u << (0u % 32u)), var_0.b.x)), 4u)]));
    var_1 = abs(13410i);
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(abs(39382u), 4u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-380f, var_0.c) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 4u)]))) + _wgslsmith_f_op_vec2_f32(-var_2)), var_0.c);
}

