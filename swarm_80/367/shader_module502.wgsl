struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(220f * _wgslsmith_f_op_f32(349f - _wgslsmith_f_op_f32(floor(1020f)))), -990f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f + global1.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(ceil(global1.x)));
    var var_1 = Struct_3(arg_0);
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(17639i, var_1.a.c.x, -668i) >> (vec3<u32>(arg_1.x, 37934u, 4294967295u) % vec3<u32>(32u)), -u_input.c.xyw) >> (arg_0.a.xyy % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.yxy, vec3<i32>(29588i, arg_0.c.x ^ arg_0.c.x, _wgslsmith_div_i32(u_input.c.x, -2147483647i))), vec3<i32>(-var_1.a.c.x, abs(0i), _wgslsmith_add_i32(76883i, arg_0.c.x) << (u_input.a.x % 32u))));
    return vec2<i32>(var_2.x, ~_wgslsmith_sub_i32(max(arg_0.c.x, -2147483647i), _wgslsmith_mod_i32(-22200i, 5203i))) & u_input.c.zy;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> bool {
    return !(!any(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0.b.a.b), arg_1)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    global1 = vec3<f32>(-264f, -567f, 273f);
    global0 = vec2<bool>(global0.x, global0.x);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.yz))))) * global1.zz), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.xx))));
    var var_2 = func_4(Struct_4(Struct_2(~firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.d, u_input.d)), any(vec2<bool>(global0.x, global0.x)), func_3(Struct_2(vec4<u32>(86703u, u_input.d, 32043u, 4294967295u), global0.x, u_input.c.xw), ~vec4<u32>(u_input.a.x, 35659u, u_input.b.x, 4294967295u))), Struct_3(Struct_2(vec4<u32>(0u, u_input.d, u_input.a.x, u_input.a.x), global0.x, firstTrailingBit(u_input.c.yx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1298f - 1366f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-701f))))), Struct_2(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 1u), vec4<u32>(1u, u_input.b.x, 19925u, u_input.d))), true, abs(~vec2<i32>(u_input.c.x, 22512i))), true), global0.x, Struct_2(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 8881u), vec3<u32>(56667u, 63144u, 1u)), ~u_input.d, 30859u), 4506u, ~u_input.d >> (u_input.a.x % 32u), ~abs(4294967295u)), !all(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), u_input.c.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f * var_1.x) - _wgslsmith_f_op_f32(global1.x * var_1.x))))));
    return all(vec2<bool>(global0.x, select(global0.x, false, global0.x)));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = !vec2<bool>(!all(vec4<bool>(false, arg_0, true, global0.x)), func_2());
    let var_0 = Struct_3(Struct_2(min(min(firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, 38763u, 37069u)), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, u_input.d))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b.x), vec4<u32>(4294967295u, 6485u, u_input.d, 4294967295u) << (vec4<u32>(u_input.d, u_input.b.x, u_input.d, 0u) % vec4<u32>(32u)))), any(!select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, false, arg_0), vec3<bool>(global0.x, false, global0.x))), _wgslsmith_mod_vec2_i32(u_input.c.wz, -vec2<i32>(u_input.c.x, u_input.c.x) | min(vec2<i32>(-1i, u_input.c.x), u_input.c.zy))));
    var var_1 = -(u_input.c.yw & var_0.a.c);
    let var_2 = global1.xy;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f + var_2.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(469f)))))), 1843f, -197f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1019f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b.x ^ ~16553u, countOneBits(1u), 4294967295u, u_input.b.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), -2968f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1340f, -112f, 241f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, global1.x))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1240f)), _wgslsmith_f_op_f32(576f - _wgslsmith_f_op_f32(func_1(global1.x <= -746f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-474f)) * _wgslsmith_f_op_f32(global1.x * 892f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.x))), _wgslsmith_f_op_f32(func_1(true)), 1253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(656f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -373f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - -631f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 1000f))))));
    var var_2 = !(!vec3<bool>(global0.x, global0.x, true));
    var_2 = select(!select(select(vec3<bool>(false, global0.x, true), !vec3<bool>(false, global0.x, true), !global0.x), !select(vec3<bool>(var_2.x, true, true), vec3<bool>(true, false, false), var_2.x), true), select(!select(!vec3<bool>(true, var_2.x, false), vec3<bool>(true, true, true), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(global0.x, false, false), vec3<bool>(false, false, true))), select(select(select(vec3<bool>(true, false, var_2.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(var_2.x, var_2.x, false)), vec3<bool>(var_2.x, var_2.x, global0.x), vec3<bool>(true, true, var_2.x)), !vec3<bool>(var_2.x, global0.x, false), vec3<bool>(!global0.x, false, var_2.x)), select(!(!vec3<bool>(true, false, var_2.x)), !vec3<bool>(global0.x, global0.x, var_2.x), vec3<bool>(global0.x, global0.x, true))), func_4(Struct_4(Struct_2(var_0, var_2.x, select(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.wy, var_2.x)), Struct_3(Struct_2(var_0, var_2.x, u_input.c.wx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(322f * 847f) * global1.x), Struct_2(~var_0, false, u_input.c.xy), true), func_2(), Struct_2(_wgslsmith_clamp_vec4_u32(~var_0, ~vec4<u32>(4294967295u, 1u, 1u, var_0.x), firstLeadingBit(var_0)), !func_4(Struct_4(Struct_2(vec4<u32>(0u, u_input.b.x, 1u, 7817u), false, vec2<i32>(u_input.c.x, u_input.c.x)), Struct_3(Struct_2(vec4<u32>(56618u, var_0.x, u_input.b.x, var_0.x), var_2.x, u_input.c.yy)), 2642f, Struct_2(vec4<u32>(1u, 1u, 6275u, 34537u), global0.x, u_input.c.xx), true), false, Struct_2(var_0, global0.x, vec2<i32>(u_input.c.x, -53591i)), var_1.x), vec2<i32>(-19591i, 1i)), _wgslsmith_f_op_f32(-var_1.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1104f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-311f, 810f))))), !global0.x, !(!(!(!vec4<bool>(true, global0.x, var_2.x, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

