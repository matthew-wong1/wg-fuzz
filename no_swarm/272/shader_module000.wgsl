struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3) -> bool {
    let var_0 = Struct_2(u_input.a);
    global0 = !arg_2.c.wx;
    var var_1 = _wgslsmith_clamp_vec3_i32(-countOneBits(vec3<i32>(20502i, -25512i, u_input.c)) ^ reverseBits(countOneBits(vec3<i32>(16790i, 9550i, -1i))), -_wgslsmith_add_vec3_i32(vec3<i32>(~(-9615i), ~var_0.a, var_0.a), ~vec3<i32>(var_0.a, u_input.a, -1i)), vec3<i32>(~abs(select(var_0.a, arg_2.a, global0.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-37812i, 1i, var_0.a, u_input.c), vec4<i32>(arg_2.b, arg_2.a, u_input.c, -2147483647i), false), abs(vec4<i32>(1i, -74949i, 0i, 12051i))), 98703i));
    global0 = arg_2.c.wy;
    var var_2 = Struct_3(var_0.a, -2147483647i, vec4<bool>(arg_2.c.x, arg_2.d.a == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(290f, 618f)), false, -34383i == countOneBits(var_0.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))), arg_2.e);
    return select(select(reverseBits(1u << (arg_0.x % 32u)) == reverseBits(arg_0.x), !(all(arg_2.c) && all(var_2.c)), any(!select(vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, arg_1), arg_1))), false, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_4(Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -37081i), vec2<i32>(u_input.c, -1i)), u_input.c), -1i, !(!select(vec4<bool>(arg_0.x, var_0.x, false, true), vec4<bool>(global0.x, arg_0.x, arg_0.x, var_0.x), false)), Struct_1(-196f), Struct_1(-2133f)), -327f, vec2<i32>(u_input.a, u_input.a));
    let var_2 = ~4247u;
    var var_3 = var_1.a.c.wy;
    var var_4 = 1731f;
    return select(vec2<bool>(global0.x, any(vec3<bool>(var_0.x, select(true, false, true), 4294967295u <= arg_1.x))), vec2<bool>(arg_0.x, true | any(!var_1.a.c)), false);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    global0 = func_4(select(select(vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, true), !(!vec3<bool>(global0.x, true, global0.x))), !vec3<bool>(global0.x, true, u_input.b.x >= u_input.b.x), func_3(~vec3<u32>(u_input.b.x, 0u, 90600u), true, Struct_3(u_input.a, u_input.c, vec4<bool>(global0.x, false, global0.x, false), Struct_1(-1879f), Struct_1(-1247f))) && func_3(vec3<u32>(7099u, 23830u, 0u), any(vec4<bool>(global0.x, global0.x, false, global0.x)), Struct_3(13533i, -58021i, vec4<bool>(true, true, false, false), Struct_1(-1538f), Struct_1(217f)))), u_input.b);
    global0 = vec2<bool>(true, select(true, !(global0.x | true), -2147483647i <= u_input.c));
    global0 = func_4(select(!select(select(vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, global0.x)), !vec3<bool>(global0.x, false, true), func_4(vec3<bool>(true, false, true), u_input.b).x), vec3<bool>(false || (global0.x || true), global0.x, (6855i >> (u_input.b.x % 32u)) <= _wgslsmith_add_i32(arg_1.x, arg_1.x)), true), vec2<u32>(1u, ~u_input.b.x) | (select(u_input.b, _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 16175u)), !vec2<bool>(global0.x, false)) << (u_input.b % vec2<u32>(32u))));
    global0 = func_4(!(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, true))), ~reverseBits(vec2<u32>(~u_input.b.x, ~26146u)));
    global0 = select(vec2<bool>(!(!global0.x || !global0.x), global0.x), vec2<bool>((true | !global0.x) & true, all(vec3<bool>(global0.x, any(vec3<bool>(global0.x, global0.x, true)), true))), !global0.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(567f)))), 350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1557f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f)))))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = select(select(!select(vec2<bool>(global0.x, false), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)), !vec2<bool>(global0.x, false)), !(!select(vec2<bool>(true, false), vec2<bool>(global0.x, false), global0.x)), true), vec2<bool>(true, !(!(!global0.x))), select(!(!(!vec2<bool>(false, global0.x))), vec2<bool>(any(select(vec4<bool>(global0.x, true, false, true), vec4<bool>(false, true, global0.x, true), vec4<bool>(false, false, false, global0.x))), !any(vec4<bool>(true, false, global0.x, global0.x))), global0.x));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-452f, 637f)) - _wgslsmith_f_op_f32(round(1586f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(200f, -1545f)) + _wgslsmith_f_op_f32(600f + 682f)) - 541f)), _wgslsmith_f_op_f32(func_2(-vec4<i32>(-1i, u_input.a, arg_0.a << (u_input.b.x % 32u), -2147483647i & arg_0.a), vec2<i32>(-arg_0.a, -(~arg_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1635f)) * _wgslsmith_f_op_f32(-2034f - 193f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f * 2304f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(min(-802f, -209f))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-2013f, _wgslsmith_f_op_f32(f32(-1f) * -239f))))));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.yzy);
    var_1 = _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(324f, _wgslsmith_f_op_f32(-var_0.x))), -1027f))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_f32(ceil(var_0.x))))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = i32(-1i) * -54535i;
    global0 = vec2<bool>(!global0.x, global0.x);
    let var_2 = any(select(vec2<bool>(true, false), vec2<bool>(global0.x, true), !select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), all(vec2<bool>(true, global0.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2452f, 1534f, true)) + -1027f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-851f)) * 1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.c))), _wgslsmith_div_f32(-2111f, 929f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1676f, 230f, global0.x))))), _wgslsmith_f_op_f32(ceil(-736f))), vec3<f32>(-1197f, _wgslsmith_div_f32(-193f, 596f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f - _wgslsmith_f_op_f32(1014f * -154f)))), vec3<bool>(false, _wgslsmith_sub_u32(firstTrailingBit(54561u), abs(49076u)) <= _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x >> (u_input.b.x % 32u)), !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec3_i32(abs(select(vec3<i32>(-2147483647i, -2147483647i, var_0), vec3<i32>(2147483647i, var_0, 0i), vec3<bool>(false, var_2, true))), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(58650i, -1567i, var_0), vec3<i32>(-2147483647i, -25353i, var_0)))) << (firstTrailingBit(~(vec3<u32>(u_input.b.x, 47461u, u_input.b.x) | vec3<u32>(109789u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -930f, var_3.x, var_3.x) + vec4<f32>(857f, 1556f, 549f, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, -1122f, var_3.x, -627f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -1644f, -1068f, _wgslsmith_f_op_f32(var_3.x * 617f)), vec4<f32>(1774f, var_3.x, _wgslsmith_f_op_f32(618f * var_3.x), -1462f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_3.x))), -1808f), _wgslsmith_f_op_f32(616f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f))));
}

