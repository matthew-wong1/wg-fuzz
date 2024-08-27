struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: f32 = -543f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<vec2<i32>, 5>();
    global1 = _wgslsmith_f_op_f32(step(-1000f, -1480f));
    let var_0 = _wgslsmith_f_op_f32(step(481f, _wgslsmith_f_op_f32(1129f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1308f + -1000f), 910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1673f))))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(525f, var_0))), -1065f, true)), _wgslsmith_f_op_f32(ceil(-1282f)))) + -1096f);
    global1 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 188f));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-504f))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(max(-246f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) - -184f)), -284f, arg_0))));
    global1 = _wgslsmith_f_op_f32(func_3(u_input.b.x));
    let var_0 = -abs(firstLeadingBit(min(1i, -1897i)));
    var var_1 = var_0;
    global0 = array<vec2<i32>, 5>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1232f, -717f, 642f) + arg_2))))) * arg_2);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~u_input.b.yzx, ~vec3<u32>(u_input.a, u_input.b.x, 4294967295u)), ~vec3<u32>(~1941u, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, u_input.b.x)), 1u)), 5u)], _wgslsmith_f_op_vec4_f32(func_2((~4294967295u | _wgslsmith_clamp_u32(1u, 65583u, 0u)) > u_input.a, -_wgslsmith_clamp_i32(arg_2.x, -1070i, 8138i) == arg_2.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-206f, _wgslsmith_f_op_f32(step(-1308f, 885f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, arg_1.x, arg_1.x, 1210f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1258f, 118f, -1251f, arg_1.x))))))));
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.x, -7876i), 1i);
    let var_3 = select(vec2<bool>(true, true), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), true)), any(!vec2<bool>(any(vec2<bool>(true, false)), true)));
    global1 = _wgslsmith_f_op_f32(-var_0.b.x);
    return vec3<u32>(u_input.b.x, ~1u, _wgslsmith_dot_vec3_u32(u_input.b.zyx, u_input.b.zwy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(-173f * -1276f);
    let var_1 = Struct_1(func_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(17924i, -1i, 3596i, 1i) << (u_input.b % vec4<u32>(32u))), min(vec4<i32>(-20240i, -2147483647i, -1i, 17970i), -vec4<i32>(1i, 1i, -27904i, 1i))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, -1165f, _wgslsmith_f_op_f32(230f + -120f)))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 2998i << (u_input.a % 32u)), select(-global0[_wgslsmith_index_u32(u_input.a, 5u)], -vec2<i32>(267i, -1i), vec2<bool>(true, true)))), u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(12640u, 88971u, u_input.b.x), u_input.b.zxx) & u_input.b.yzz, abs(firstLeadingBit(vec3<u32>(1u, 4294967295u, u_input.b.x)))) == select(20674u, ~min(u_input.b.x, u_input.a), true), abs(~(~vec3<i32>(-61083i, -16856i, 2147483647i))), ~u_input.b.wzy);
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    global0 = array<vec2<i32>, 5>();
    let var_3 = select(!(!(!(!vec3<bool>(var_1.c, false, var_1.c)))), !(!(!(!vec3<bool>(var_1.c, true, true)))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, 56811i, var_2.x, 17710i), vec4<i32>(var_1.d.x, var_2.x, -2147483647i, -50552i))) | min(vec4<i32>(var_2.x, var_2.x, 0i, var_1.d.x), max(vec4<i32>(var_1.d.x, var_2.x, -2147483647i, 15105i), vec4<i32>(-27840i, -10053i, var_1.d.x, -17893i))), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(var_2.x, var_2.x, var_1.d.x, var_2.x), vec4<i32>(var_1.d.x, -1i, 24379i, 0i), vec4<bool>(var_3.x, true, true, false)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1.d.x, var_1.d.x, var_1.d.x) >> (vec4<u32>(15345u, var_1.e.x, 4294967295u, 36850u) % vec4<u32>(32u)), min(vec4<i32>(-10832i, var_1.d.x, var_1.d.x, -36810i), vec4<i32>(var_2.x, 39610i, 2147483647i, -1i))))), var_2.x, var_1.d);
}

