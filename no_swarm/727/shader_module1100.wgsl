struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(6032i, -2147483647i), max(~vec2<i32>(2147483647i, 23889i), ~vec2<i32>(0i, -37447i)));
    global0 = -2147483647i;
    return arg_0.c.c.x;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(837f))))), u_input.a.wy, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1031f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(217f - -1433f)))), _wgslsmith_f_op_f32(round(593f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-579f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(397f, 174f) * _wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x), vec3<bool>(false, false, true), Struct_1(vec2<f32>(1000f, 252f), vec2<u32>(71638u, u_input.a.x), vec4<f32>(1232f, -328f, -1000f, 278f))), Struct_1(vec2<f32>(741f, 2395f), u_input.a.zz, vec4<f32>(-239f, 1356f, 1960f, 284f)), Struct_2(u_input.a, vec3<bool>(false, false, true), Struct_1(vec2<f32>(-1936f, 145f), u_input.b, vec4<f32>(112f, -1000f, 486f, 988f))))))), -298f));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)))), 934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.x))), arg_3.c.x), _wgslsmith_f_op_vec4_f32(-arg_3.c));
    var var_1 = Struct_2(max(u_input.a, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.x, 0u, u_input.a.x), vec4<u32>(1u, 1u, arg_3.b.x, 49408u)), ~arg_2) >> (arg_2 % vec4<u32>(32u))), vec3<bool>(true, !select(all(vec4<bool>(true, true, false, true)), false, all(vec4<bool>(false, true, false, true))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1, 9772i), ~arg_1) == _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, arg_1, 32917i), vec3<i32>(arg_1, -46823i, arg_1)), countOneBits(vec3<i32>(arg_1, 1i, -38934i)))), func_2());
    var_1 = Struct_2(_wgslsmith_mod_vec4_u32(firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(var_1.a, var_1.a))), vec4<u32>((1u | arg_3.b.x) << (abs(1u) % 32u), arg_2.x, _wgslsmith_div_u32(select(100849u, 1u, var_1.b.x), _wgslsmith_sub_u32(arg_0, 0u)), 6376u)), var_1.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.c.x, -387f) + vec2<f32>(arg_3.c.x, arg_3.a.x)) + _wgslsmith_f_op_vec2_f32(-arg_3.c.yy)), arg_3.a), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, ~var_1.c.b.x), arg_3.b), func_2().c));
    var var_2 = u_input.a.x;
    let var_3 = Struct_2(_wgslsmith_mult_vec4_u32(var_1.a, select(~u_input.a, var_1.a, !vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x))) & arg_2, !vec3<bool>(select(true, !var_1.b.x, all(vec4<bool>(false, var_1.b.x, true, false))), true, any(!vec3<bool>(true, var_1.b.x, false))), func_2());
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(2147483647i, _wgslsmith_mult_i32(~(-1i) & _wgslsmith_mod_i32(~67890i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(1i, 52281i))), _wgslsmith_mult_i32(~(-2147483647i), func_1(u_input.b.x, -1i, u_input.a, Struct_1(vec2<f32>(-1734f, 1089f), u_input.b, vec4<f32>(903f, 355f, -1304f, -650f)))) ^ firstLeadingBit(~33892i)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - -184f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(285f, -824f))))) * func_2().a), ~vec2<u32>(~u_input.b.x, 25159u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, 884f, 643f, -550f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-804f, -798f, 599f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, -728f, 1612f, 1505f))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, 745f, -1923f, 251f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1843f, -313f, -1400f, 1434f)))))));
    global0 = 1i;
    var var_1 = !(false && (_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 44930i, 1i), vec3<i32>(2147483647i, -1i, -30066i)), vec3<i32>(1i, -44319i, -1i)) <= _wgslsmith_add_i32(25379i, 29817i << (var_0.b.x % 32u))));
    let var_2 = ~vec3<u32>(~min(~var_0.b.x, ~21870u), ~var_0.b.x, 3477u);
    var var_3 = var_0;
    global0 = 1i;
    var var_4 = _wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(~var_3.b.x, var_3.b.x, var_2.x, _wgslsmith_add_u32(var_2.x, 0u)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), func_2()), func_2(), Struct_2(abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, var_3.b.x, 0u, 4744u), u_input.a)), vec3<bool>(true, true, true), func_2()))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_3.c.ywx)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.c.x, -726f), var_0.c.wxw), vec3<f32>(568f, var_3.c.x, 1678f))), var_0.c.wzw))), vec4<f32>(var_3.a.x, var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.x - 1154f), _wgslsmith_f_op_f32(var_3.c.x * var_3.a.x)) - _wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_f_op_f32(var_0.a.x * 800f)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(-3279i, i32(-1i) * -1i, -12174i)));
}

