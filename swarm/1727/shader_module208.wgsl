struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    global0 = arg_0.x;
    let var_0 = Struct_2(!vec2<bool>(u_input.a.x < u_input.a.x, true), firstLeadingBit(_wgslsmith_mod_vec3_u32(select(vec3<u32>(14152u, u_input.c, u_input.c) | vec3<u32>(u_input.c, u_input.c, 39885u), abs(vec3<u32>(36154u, 1u, 0u)), u_input.c != 70671u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.c, 25013u, u_input.c)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(15120u, u_input.c, u_input.c), vec3<u32>(72848u, u_input.c, 1u)))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), u_input.c < 64277u), false), true);
    let var_1 = select(vec4<bool>(false, true, false & var_0.d, u_input.c <= u_input.c), select(!(!vec4<bool>(false, false, true, var_0.c.x)), select(var_0.c, vec4<bool>(any(vec2<bool>(var_0.c.x, var_0.d)), !var_0.a.x, any(var_0.c.xwz), false), vec4<bool>(var_0.b.x > 49967u, false, true, arg_0.x <= arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) + _wgslsmith_f_op_f32(floor(282f))) > _wgslsmith_f_op_f32(round(613f))), vec4<bool>(var_0.a.x, var_0.a.x, !(!(u_input.c <= var_0.b.x)), any(select(vec2<bool>(var_0.a.x, var_0.d), vec2<bool>(var_0.c.x, false), var_0.a))));
    global0 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = -222f;
    return !var_1.ywx;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<u32> {
    global0 = arg_0.a.x;
    var var_0 = abs(~vec3<u32>(min(abs(u_input.c), ~19550u), u_input.c, ~94115u));
    var_0 = vec3<u32>(abs(~(~1u)), 4294967295u, var_0.x);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_2 = arg_0;
    return _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.yz, vec2<u32>(48926u, 84603u)), var_0.zz);
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = ~func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, arg_0.x, -862f)), vec2<bool>(true, 1681f > arg_0.x)), select(select(vec3<bool>(true, true, true), func_3(arg_0.zx), vec3<bool>(true, true, true)), func_3(vec2<f32>(2156f, -1349f)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))));
    let var_1 = Struct_1(select(vec3<bool>(func_3(vec2<f32>(arg_0.x, 1685f)).x, !all(vec2<bool>(false, true)), all(vec2<bool>(false, true))), func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -412f)), _wgslsmith_f_op_vec2_f32(arg_0.zy - vec2<f32>(arg_0.x, -1651f)))), vec3<bool>(!(133f != arg_0.x), true, true)));
    var_0 = select(~(max(~vec2<u32>(14707u, 13214u), vec2<u32>(1u, u_input.c)) & _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(79087u, 11787u)), countOneBits(vec2<u32>(41889u, 1u)))), ~(~(max(vec2<u32>(4294967295u, 1u), vec2<u32>(11186u, u_input.c)) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)))), !func_3(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x))).zy);
    var var_2 = vec2<u32>(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1731f, 2131f)) + arg_0), vec2<bool>(var_1.a.x || var_1.a.x, true)), !var_1.a, Struct_1(vec3<bool>(var_1.a.x, true, !var_1.a.x))).x, max(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(976u, var_0.x, 1u, 75445u), vec4<u32>(var_0.x, 42664u, 7764u, u_input.c)) ^ (var_0.x & var_0.x), _wgslsmith_mod_u32(~var_0.x, 1u)), ~104052u));
    var var_3 = Struct_3(arg_0, var_1.a.xz);
    return !var_1.a.zx;
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -440f))))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(9795u, 122872u, u_input.c)), abs(~vec3<u32>(u_input.c, u_input.c, 1820u))) >> (firstTrailingBit(~vec3<u32>(u_input.c, u_input.c, 4294967295u)) % vec3<u32>(32u)), !vec4<bool>(true, false, func_3(vec2<f32>(arg_0, -659f)).x, 0i < _wgslsmith_mod_i32(-5792i, u_input.b.x)), true);
    global0 = arg_0;
    let var_1 = 1249f;
    var var_2 = vec2<u32>(0u, 1u);
    var_2 = abs(var_0.b.xx);
    return reverseBits(min(_wgslsmith_add_vec2_i32(u_input.b.xy, u_input.b.yy) | (_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.b.zy) >> (vec2<u32>(32284u, var_0.b.x) % vec2<u32>(32u))), vec2<i32>(1i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(select(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-293f)) * _wgslsmith_f_op_f32(f32(-1f) * -293f))), vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(-54331i, -1i)), select(1i, -12593i, all(vec2<bool>(false, false)))), func_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, -928f) * vec2<f32>(373f, 771f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-166f, -1007f)))))).zx), -(~(~(~vec2<i32>(u_input.b.x, u_input.b.x)))));
    let var_1 = ((true & (u_input.b.x != 17721i)) && true) & func_2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(802f + -559f), 231f)).x;
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_div_f32(324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1321f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f * 511f) * _wgslsmith_f_op_f32(trunc(182f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(trunc(-1277f)))))), select(vec2<bool>(var_1, any(!vec2<bool>(var_1, var_1))), vec2<bool>(var_1, var_1), var_1 || all(func_2(vec3<f32>(167f, -599f, -1000f)))));
    global0 = var_2.a.x;
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1524f, 447f)), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(1000f + var_2.a.x))), vec2<bool>(var_2.a.x == _wgslsmith_f_op_f32(trunc(-1693f)), !(!all(vec4<bool>(true, false, true, var_1)))));
    let var_3 = !func_3(var_2.a.xy).x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.x, var_2.a.x) - -542f)), var_2.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)))))));
    global0 = var_4.x;
    let var_5 = ~(min(func_4(Struct_3(vec3<f32>(var_4.x, 1000f, var_2.a.x), var_2.b), !vec3<bool>(var_3, var_1, var_3), Struct_1(vec3<bool>(var_3, var_3, var_3))).x, u_input.c) ^ _wgslsmith_add_u32(u_input.c, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(1260f).x, 12633u);
}

