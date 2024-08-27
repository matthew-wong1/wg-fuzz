struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_3,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(48280u, 1u, 26492u, 4294967295u), vec2<f32>(114f, -1000f), Struct_3(vec2<i32>(-25497i, 26689i), Struct_2(vec4<f32>(-503f, -812f, 1121f, 2241f), vec2<u32>(1u, 4294967295u), vec3<f32>(1042f, -1000f, 1141f), Struct_1(vec3<bool>(true, false, false)), vec4<f32>(104f, 453f, -511f, 1172f)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), 4294967295u), vec4<bool>(true, true, false, false), Struct_3(vec2<i32>(2147483647i, -1i), Struct_2(vec4<f32>(-162f, 1001f, -1543f, 1648f), vec2<u32>(0u, 124185u), vec3<f32>(-529f, -454f, -1009f), Struct_1(vec3<bool>(true, true, false)), vec4<f32>(-2144f, -231f, -473f, -150f)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), 1150u));

var<private> global1: Struct_4 = Struct_4(vec4<u32>(10216u, 8060u, 1070u, 8234u), vec2<f32>(-1103f, 1242f), Struct_3(vec2<i32>(-45365i, 0i), Struct_2(vec4<f32>(-1171f, 303f, 1046f, -964f), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(1529f, 1000f, -102f), Struct_1(vec3<bool>(true, false, false)), vec4<f32>(-1800f, 589f, 291f, 1150f)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), 1u), vec4<bool>(true, true, true, true), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(vec4<f32>(1156f, 375f, 721f, -1185f), vec2<u32>(32580u, 9243u), vec3<f32>(-1192f, 955f, 914f), Struct_1(vec3<bool>(true, false, true)), vec4<f32>(-535f, -421f, 753f, 128f)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), 17617u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = Struct_3(global1.c.a, global0.e.b, Struct_1(arg_0.d.a), arg_0.d, 31426u);
    let var_1 = global0.c.d;
    var var_2 = global1.c.b;
    var_2 = Struct_2(global0.c.b.e, ~_wgslsmith_sub_vec2_u32(arg_0.b, vec2<u32>(4294967295u, global0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.c), global0.c.b.c)))), var_0.b.d, var_0.b.e);
    var_0 = global0.c;
    return var_0.d.a.x;
}

fn func_2() -> f32 {
    global1 = Struct_4(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.e.b.b.x, 23162u, u_input.d.x | global0.c.b.b.x, global0.c.b.b.x >> (4294967295u % 32u)), vec4<u32>(~global1.e.e, 44934u, global0.c.b.b.x, 19518u)), ~vec4<u32>(u_input.d.x, global1.a.x, u_input.d.x, 31589u) >> ((vec4<u32>(global0.c.b.b.x, global0.c.b.b.x, 9997u, global0.c.e) ^ global1.a) % vec4<u32>(32u))), global1.e.b.c.zy, Struct_3(vec2<i32>(-1i) * -(~vec2<i32>(1i, 2147483647i)), Struct_2(global1.c.b.e, u_input.d.yw, global0.e.b.a.zxz, Struct_1(!global0.c.d.a), _wgslsmith_f_op_vec4_f32(step(global0.c.b.e, _wgslsmith_f_op_vec4_f32(select(global1.e.b.a, vec4<f32>(-289f, global1.c.b.a.x, -1132f, global1.e.b.c.x), global1.d.x))))), Struct_1(!select(vec3<bool>(global0.d.x, true, true), global0.d.xyw, vec3<bool>(global0.d.x, global0.c.b.d.a.x, global1.c.b.d.a.x))), Struct_1(global0.d.wzy), 1u), vec4<bool>(false, any(vec4<bool>(select(global1.e.d.a.x, false, global1.d.x), !global0.d.x, global1.c.d.a.x, func_3(global0.c.b))), global1.e.c.a.x, true), global0.c);
    global1 = Struct_4(u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global1.e.b.e.xy, global0.b))), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -675f)), _wgslsmith_f_op_f32(global1.b.x * -949f)), select(func_3(Struct_2(vec4<f32>(global1.c.b.a.x, global1.b.x, global0.b.x, -832f), vec2<u32>(global0.c.b.b.x, u_input.d.x), vec3<f32>(1344f, 672f, global0.b.x), Struct_1(global1.d.xxz), vec4<f32>(1108f, -1208f, global0.e.b.c.x, -708f))), all(vec4<bool>(global0.e.d.a.x, false, global0.c.d.a.x, false)), true))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1549f, global1.c.b.a.x))))))), global0.e, vec4<bool>(global0.c.b.d.a.x, true, global0.e.d.a.x, !(any(vec4<bool>(true, true, false, false)) || global0.d.x)), Struct_3(~(-global1.c.a) << (select(reverseBits(vec2<u32>(1u, 13704u)), firstLeadingBit(vec2<u32>(0u, u_input.d.x)), false) % vec2<u32>(32u)), Struct_2(global1.c.b.a, _wgslsmith_mult_vec2_u32(select(global0.e.b.b, global0.c.b.b, global0.c.c.a.xx), max(vec2<u32>(u_input.d.x, u_input.d.x), global0.a.zx)), global1.c.b.e.wzz, Struct_1(vec3<bool>(global0.d.x, global0.c.b.d.a.x, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -154f, 1000f, global1.e.b.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-613f, 1801f, -391f, -631f) - vec4<f32>(1000f, global0.b.x, global1.c.b.e.x, global1.c.b.c.x)))), Struct_1(!global0.d.xxz), Struct_1(vec3<bool>(any(vec2<bool>(false, true)), true, select(global0.c.b.d.a.x, global1.d.x, global1.c.d.a.x))), global0.c.e));
    global1 = Struct_4(~vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(global0.e.b.b, vec2<u32>(global1.a.x, 11798u))), global1.e.b.b.x, 39561u, abs(global0.a.x)), global1.b, global1.e, select(!vec4<bool>(all(global0.d), global1.c.d.a.x, true, all(global0.d.xy)), vec4<bool>(!global0.d.x | true, all(vec2<bool>(true, true)), global1.d.x, global1.e.b.d.a.x), true), Struct_3(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(0i, u_input.c.x)), global0.e.b, global0.c.c, global0.c.d, _wgslsmith_sub_u32(min(u_input.d.x << (global0.e.b.b.x % 32u), _wgslsmith_mult_u32(global1.a.x, 4294967295u)), abs(1u) & global1.e.e)));
    let var_0 = select(~reverseBits(global0.a.x), _wgslsmith_clamp_u32(~global1.e.e, _wgslsmith_sub_u32(global0.a.x, ~u_input.d.x ^ _wgslsmith_mult_u32(0u, global1.c.b.b.x)), 71167u), true);
    var var_1 = vec3<bool>(all(global1.d), global1.d.x, select(reverseBits(global0.a.x) != 1u, select(global0.c.c.a.x, global1.d.x, _wgslsmith_f_op_f32(-2030f * 1103f) != _wgslsmith_f_op_f32(-global0.b.x)), any(select(vec2<bool>(global1.e.d.a.x, false), global1.d.wy, vec2<bool>(true, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.b.e.x * global1.c.b.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec4<bool> {
    global0 = Struct_4(global1.a & vec4<u32>(firstLeadingBit(67532u ^ u_input.d.x), 40171u, ~global1.e.e, ~(global1.e.b.b.x >> (global0.a.x % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-407f - 724f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.b.e.x) - 289f))), global0.e, global1.d, Struct_3(vec2<i32>(max(abs(global1.e.a.x), abs(global0.e.a.x)), -_wgslsmith_sub_i32(-7795i, global1.c.a.x)), global1.c.b, global1.e.d, global0.c.d, _wgslsmith_add_u32(~42900u, global0.c.b.b.x)));
    let var_0 = 2147483647i;
    let var_1 = -countOneBits(-(vec2<i32>(u_input.c.x, global0.e.a.x) << (vec2<u32>(global1.a.x, 85727u) % vec2<u32>(32u)))) >> (firstLeadingBit(firstTrailingBit(max(~global0.c.b.b, _wgslsmith_mult_vec2_u32(u_input.d.yx, global1.c.b.b)))) % vec2<u32>(32u));
    let var_2 = -268f;
    var var_3 = global1.c.b;
    return select(global0.d, global1.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(_wgslsmith_mod_vec4_u32(global1.a, vec4<u32>(u_input.d.x, _wgslsmith_div_u32(0u, global1.a.x), u_input.d.x, global1.e.e)), _wgslsmith_f_op_vec2_f32(-global0.b), global0.e, !select(!select(vec4<bool>(true, global0.e.d.a.x, global0.e.b.d.a.x, global0.d.x), vec4<bool>(global1.c.c.a.x, false, true, true), vec4<bool>(global0.e.c.a.x, global0.d.x, false, global1.c.c.a.x)), func_1(select(global1.c.d.a.x, global1.c.b.d.a.x, false), true), global1.d), Struct_3(vec2<i32>(global1.c.a.x, -select(31222i, global1.c.a.x, false)), global1.e.b, global0.c.b.d, Struct_1(func_1(global1.d.x, !global0.e.b.d.a.x).wxx), 1u));
    global0 = Struct_4(~(~u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.e.b.c.x * _wgslsmith_f_op_f32(-global1.e.b.e.x)), _wgslsmith_f_op_f32(ceil(global1.e.b.c.x)))), Struct_3(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.e.a.x, u_input.c.x), global1.e.a)), global0.c.b, global0.e.b.d, Struct_1(!vec3<bool>(global1.e.c.a.x, global1.d.x, false)), select(u_input.d.x, firstLeadingBit(reverseBits(0u)), ~17465u == _wgslsmith_add_u32(4294967295u, global1.a.x))), vec4<bool>(true, any(select(select(global0.c.d.a, vec3<bool>(true, true, global1.d.x), vec3<bool>(global0.c.b.d.a.x, true, global0.c.d.a.x)), vec3<bool>(true, true, global0.d.x), func_1(false, global1.c.c.a.x).zwy)), global1.e.d.a.x, any(global0.c.b.d.a.yy)), Struct_3(countOneBits(vec2<i32>(2147483647i, -22338i)), Struct_2(global1.e.b.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.e.e, 56982u), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x, global1.c.e), vec2<u32>(global0.a.x, u_input.d.x)), u_input.d.xx), vec3<f32>(215f, -453f, _wgslsmith_f_op_f32(f32(-1f) * -660f)), Struct_1(!global0.d.zxx), vec4<f32>(905f, _wgslsmith_f_op_f32(252f + global0.c.b.c.x), _wgslsmith_f_op_f32(step(global1.b.x, -188f)), -657f)), global0.e.b.d, Struct_1(!vec3<bool>(false, global0.c.c.a.x, global0.c.c.a.x)), 43497u));
    let var_0 = _wgslsmith_f_op_f32(trunc(global1.c.b.e.x));
    let var_1 = Struct_4(firstTrailingBit(~vec4<u32>(global1.c.b.b.x, 16181u, select(30430u, 26530u, true), abs(0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.b.c.x, global1.c.b.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-762f, var_0), vec2<f32>(global0.c.b.e.x, 713f), vec2<bool>(global1.d.x, global1.e.c.a.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.b.c.x, _wgslsmith_f_op_f32(1000f - -440f)))), global0.e, select(!global0.d, func_1(false, global1.e.c.a.x), vec4<bool>(false, any(global1.e.c.a) && any(global0.d), any(!global1.d.zy), false)), global1.c);
    global0 = Struct_4(abs(abs(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.e.b.b.x, 1u, 1u, 4294967295u), global0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.c.b.a.ww))))), var_1.e, !global1.d, Struct_3(vec2<i32>(-1i, _wgslsmith_add_i32(var_1.e.a.x >> (1u % 32u), global1.c.a.x)), Struct_2(vec4<f32>(global0.e.b.c.x, 316f, _wgslsmith_f_op_f32(1345f + 351f), _wgslsmith_f_op_f32(-309f - global1.e.b.c.x)), ~u_input.d.yy, _wgslsmith_f_op_vec3_f32(-global1.c.b.a.wxx), var_1.e.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c.b.e))), global1.c.b.d, Struct_1(vec3<bool>(true, func_3(global0.c.b), 760f <= var_0)), _wgslsmith_clamp_u32(49005u, 145350u, max(~4294967295u, ~18152u))));
    var var_2 = min(u_input.b, ~(-3279i));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0.c.b.a)))), vec2<u32>(1u >> (~u_input.d.x % 32u), global1.a.x) >> (~vec2<u32>(var_1.e.e | 4294967295u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.b.c - vec3<f32>(var_1.b.x, -301f, global0.c.b.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(886f, global1.e.b.e.x, 995f)))))), var_1.e.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, -600f, var_1.e.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.b.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(abs(1i), 2147483647i | select(u_input.a.x, 2147483647i, var_3.d.a.x), 38746i), u_input.c.zwy), _wgslsmith_f_op_f32(round(global1.b.x)), vec3<i32>(-13558i, ~2147483647i, _wgslsmith_mod_i32(1104i, global1.e.a.x)));
}

