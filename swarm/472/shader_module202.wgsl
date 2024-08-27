struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(18760u, 4294967295u), vec2<u32>(4294967295u, 2173u), vec2<u32>(6601u, 0u), vec2<u32>(0u, 0u), vec2<u32>(24535u, 4294967295u), vec2<u32>(84114u, 0u), vec2<u32>(1u, 12290u), vec2<u32>(1u, 41096u), vec2<u32>(46197u, 1u), vec2<u32>(9007u, 9999u), vec2<u32>(7031u, 1u), vec2<u32>(1u, 0u), vec2<u32>(57643u, 4294967295u), vec2<u32>(7314u, 0u), vec2<u32>(0u, 0u), vec2<u32>(16279u, 1u), vec2<u32>(36908u, 0u), vec2<u32>(0u, 0u), vec2<u32>(32904u, 1u), vec2<u32>(77602u, 131043u), vec2<u32>(4294967295u, 39717u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 17923u), vec2<u32>(40130u, 38271u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = any(!vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(f32(-1f) * -2194f)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    global0 = array<vec2<u32>, 24>();
    let var_0 = vec3<u32>(4294967295u, 1u >> (~abs(arg_0.d) % 32u), 1u);
    global0 = array<vec2<u32>, 24>();
    let var_1 = Struct_4(_wgslsmith_sub_i32(-u_input.a.x, -(i32(-1i) * -u_input.d.x)), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.b.b.b.xw)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, 273f) - arg_0.b.b.b.xy))))), 16194u, Struct_1(u_input.b.x << (u_input.b.x % 32u), arg_0.b.b.b));
    let var_2 = select(vec2<u32>(36776u, 4294967295u), abs(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, arg_0.b.d.x), 6021u & var_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(5069u, 60988u), countOneBits(u_input.b.zx)))), vec2<bool>((u_input.c.x & (i32(-1i) * -12300i)) != (u_input.e.x ^ _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-47184i, 0i, 1i))), _wgslsmith_f_op_f32(func_3(Struct_2(-32434i), -vec2<i32>(1i, -19709i))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-433f * -1491f), _wgslsmith_f_op_f32(-179f + -417f)))));
    return 1654f;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(0i, Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], Struct_1(0u, vec4<f32>(-639f, arg_1.x, arg_1.x, arg_1.x)), true, global0[_wgslsmith_index_u32(0u, 24u)]), arg_1, u_input.b.x, Struct_1(1u, vec4<f32>(arg_1.x, -379f, arg_1.x, arg_1.x)))))), arg_1.x), 506f));
    var var_1 = Struct_4(~(~(i32(-1i) * -15441i)), Struct_3(global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 24u)], Struct_1(u_input.b.x, vec4<f32>(217f, _wgslsmith_f_op_f32(floor(1442f)), -894f, _wgslsmith_f_op_f32(trunc(arg_1.x)))), countOneBits(~u_input.b.x) < ~select(u_input.b.x, u_input.b.x, false), select(~global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 24u)], _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zz) & vec2<u32>(1u, 64071u), true && arg_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.xz)), _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(arg_1.x, 1994f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-476f + var_0.x))), arg_0)), 47720u, Struct_1(u_input.b.x, vec4<f32>(302f, var_0.x, _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_div_f32(-917f, _wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = u_input.e & _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-var_1.a, abs(var_1.a), -var_1.a), max(u_input.e, vec3<i32>(u_input.a.x, 63439i, u_input.e.x))), u_input.c.xxx);
    let var_3 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, var_1.c.x, -591f)), vec3<f32>(-1320f, 1060f, -645f)) - _wgslsmith_f_op_vec3_f32(-var_1.e.b.zww)) - vec3<f32>(-220f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1787f))), var_1.e.b.x)) * var_1.b.b.b.yyx);
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = vec3<f32>(arg_0.b.b.x, 1000f, _wgslsmith_div_f32(arg_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.b.b.x, arg_0.b.b.x, 579f), _wgslsmith_div_vec3_f32(arg_0.b.b.xyz, var_0)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.zwy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.b.b.yxw)))), vec3<bool>(false, arg_0.c, !(arg_1.x >= -421f)))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(select(arg_0.b.b.x, -706f, 4294967295u != ~(u_input.b.x ^ func_1(arg_0.c, arg_0.b.b.zx, vec3<bool>(true, arg_0.c, var_2), vec3<bool>(true, false, arg_0.c)).d.x)));
    return Struct_2(~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(vec3<bool>(false, any(vec2<bool>(false, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))), true, !all(vec4<bool>(true, true, true, true)) && false);
    var var_1 = func_4(func_1((false & var_0.x) & var_0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(788f, -1398f), vec2<f32>(1098f, 813f)))), vec2<f32>(-516f, _wgslsmith_f_op_f32(-1000f + 163f))), vec3<bool>(true, true, true), select(vec3<bool>(any(vec4<bool>(var_0.x, false, var_0.x, false)), true, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x & all(vec2<bool>(var_0.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -269f, -1502f, 407f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(450f, 1000f, 1727f, -145f))))))));
    var var_2 = func_4(Struct_3(u_input.b.yy, Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -1000f, 661f, -1070f)))), true, min(vec2<u32>(firstTrailingBit(23241u), ~u_input.b.x), vec2<u32>(4294967295u, ~u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-388f)), _wgslsmith_f_op_f32(select(-1000f, 1724f, var_0.x)))) - -420f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, -197f)), 429f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(0i, Struct_3(vec2<u32>(u_input.b.x, 5634u), Struct_1(u_input.b.x, vec4<f32>(515f, 168f, 1472f, -236f)), false, global0[_wgslsmith_index_u32(1u, 24u)]), vec2<f32>(-1855f, -184f), 0u, Struct_1(0u, vec4<f32>(-971f, 620f, 1169f, -363f))))) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-144f * 193f), -229f, true)))));
    let var_3 = func_4(Struct_3(u_input.b.yx, Struct_1(0u, vec4<f32>(-498f, _wgslsmith_f_op_f32(-1269f + -1118f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)), !(!var_0.x), _wgslsmith_clamp_vec2_u32((vec2<u32>(u_input.b.x, 1661u) | global0[_wgslsmith_index_u32(11959u, 24u)]) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.zx) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), u_input.b.x), vec2<u32>(~u_input.b.x, ~u_input.b.x))), vec4<f32>(1887f, -685f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(u_input.b.x, vec4<f32>(-268f, -598f, -321f, 516f)), true, vec2<u32>(u_input.b.x, u_input.b.x)), vec4<f32>(-1572f, 182f, -182f, -339f)), u_input.e.yx)) + 1120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(940f, 1898f)))));
    global0 = array<vec2<u32>, 24>();
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-_wgslsmith_div_i32(u_input.c.x, var_3.a))), u_input.b.x << (0u % 32u), 0i, _wgslsmith_add_vec2_u32(~global0[_wgslsmith_index_u32(~4294967295u, 24u)], firstTrailingBit(vec2<u32>(1u | u_input.b.x, 53987u))));
}

