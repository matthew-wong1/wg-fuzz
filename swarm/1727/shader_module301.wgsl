struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    let var_0 = arg_0.b.x;
    let var_1 = any(select(select(!vec4<bool>(arg_0.a.x, var_0, arg_0.b.x, false), select(!vec4<bool>(true, var_0, true, true), !vec4<bool>(var_0, false, false, var_0), true), any(vec4<bool>(var_0, var_0, true, true))), select(!(!vec4<bool>(arg_0.b.x, var_0, var_0, arg_0.a.x)), vec4<bool>(arg_0.a.x, all(vec2<bool>(var_0, var_0)), select(true, arg_0.b.x, true), true), select(!vec4<bool>(false, arg_0.b.x, true, arg_0.a.x), select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(true, true, var_0, arg_0.a.x), vec4<bool>(false, true, true, true)), false)), select(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), vec4<bool>(var_0, var_0, any(vec3<bool>(true, false, var_0)), true), select(!vec4<bool>(var_0, false, true, arg_0.a.x), select(vec4<bool>(false, arg_0.b.x, arg_0.a.x, false), vec4<bool>(var_0, false, false, true), true), vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)))));
    global0 = -31594i;
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1606f), _wgslsmith_f_op_f32(-846f * -2021f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1124f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, -258f) - vec2<f32>(-455f, 1000f))))))));
    return ~1i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = arg_1.x;
    var var_0 = Struct_4(-vec3<i32>(arg_1.x, -18137i, abs(2147483647i << (u_input.a % 32u))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 11945i, arg_1.x, arg_1.x >> (u_input.a % 32u)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -4694i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, -2147483647i, arg_1.x, -46161i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-7006i, 42428i, arg_1.x, -1i), vec4<i32>(arg_1.x, arg_1.x, 54415i, 1i))), vec4<i32>(_wgslsmith_mod_i32(~arg_1.x, func_3(arg_0, vec4<u32>(78560u, 134556u, 4294967295u, u_input.a))), ~1i, max(_wgslsmith_add_i32(arg_1.x, -2147483647i), -1i), _wgslsmith_dot_vec2_i32(~arg_1.yy, arg_1.yx)), !select(vec4<bool>(false, true, arg_0.a.x, false), select(vec4<bool>(true, arg_0.b.x, arg_0.a.x, true), vec4<bool>(true, false, arg_0.b.x, arg_0.a.x), arg_0.a.x), !arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(560f, -1000f))))));
    let var_1 = select(arg_0.a.zx, select(arg_0.a.xy, !arg_0.b, vec2<bool>(arg_0.a.x != any(vec4<bool>(true, true, arg_0.b.x, false)), false)), true);
    var var_2 = _wgslsmith_div_u32(~(_wgslsmith_add_u32(_wgslsmith_mult_u32(4239u, u_input.a), 4294967295u ^ u_input.a) | u_input.a), ~u_input.a);
    var_0 = Struct_4(arg_1, ~vec4<i32>(arg_1.x, reverseBits(arg_1.x) | var_0.a.x, var_0.a.x, ~var_0.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.c))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-410f, _wgslsmith_f_op_f32(-var_0.c.x)))), any(vec3<bool>(false, true & var_1.x, arg_0.b.x)))));
    return select(select(vec4<bool>(any(vec3<bool>(true, true, true)), var_1.x, any(vec4<bool>(arg_0.a.x, false, arg_0.b.x, arg_0.b.x)), !all(vec3<bool>(true, true, true))), select(!vec4<bool>(arg_0.a.x, var_1.x, true, var_1.x), !select(vec4<bool>(false, false, true, arg_0.a.x), vec4<bool>(arg_0.b.x, arg_0.a.x, true, var_1.x), false), select(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, false, var_1.x, true), vec4<bool>(false, var_1.x, true, true)), vec4<bool>(true, false, false, true), select(true, false, true))), select(select(vec4<bool>(arg_0.b.x, arg_0.a.x, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), false), all(arg_0.a)), !select(vec4<bool>(false, arg_0.a.x, false, false), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x), vec4<bool>(true, arg_0.a.x, true, arg_0.b.x)), true)), select(vec4<bool>(all(select(arg_0.a, vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, arg_0.b.x, arg_0.a.x))), true, var_1.x, false), select(!vec4<bool>(true, false, var_1.x, true), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, false, true)), var_1.x), select(vec4<bool>(true, select(var_1.x, var_1.x, true), var_1.x, !var_1.x), select(select(vec4<bool>(false, var_1.x, var_1.x, arg_0.b.x), vec4<bool>(arg_0.a.x, false, true, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !vec4<bool>(true, arg_0.b.x, true, true), !var_1.x), !(arg_1.x < 61274i))), var_1.x);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec3<f32> {
    global0 = arg_0;
    global0 = -(i32(-1i) * -arg_0);
    var var_0 = arg_1.wx;
    var var_1 = ~var_0.x;
    let var_2 = _wgslsmith_clamp_u32(select(u_input.a, 40007u, all(select(vec4<bool>(true, true, true, true), func_2(Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false)), vec3<i32>(10123i, arg_0, 0i)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))))), _wgslsmith_add_u32(~(~u_input.a), _wgslsmith_clamp_u32(0u, 1u, ~u_input.a)) ^ 0u, 0u);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, 824f, 1220f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(684f, -1000f, 153f)))) + vec3<f32>(_wgslsmith_f_op_f32(min(-664f, -774f)), _wgslsmith_f_op_f32(round(607f)), -1569f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-459f + _wgslsmith_f_op_f32(-1236f * _wgslsmith_f_op_f32(f32(-1f) * -387f))), -374f, -1493f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, -449f, -239f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_1(-(~reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-17469i, 0i), vec2<i32>(-1i, -26555i)))), vec4<i32>(~_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, -1i), 36881i), reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -14715i, -37695i, 16948i), -vec4<i32>(-2147483647i, -54960i, 2147483647i, 2147483647i))), -(~(~(-19739i))), -6778i)));
    var var_1 = abs(-(34270i << (u_input.a % 32u)));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, -398f)))));
    let var_2 = vec3<f32>(-640f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1270f, -604f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(sign(1710f))))))), -1459f);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(max(1i, -10053i), i32(-1i) * -49013i), -1i), -select(firstTrailingBit(_wgslsmith_div_i32(1i, -29831i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-1i, 20227i)), 0i), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1238f))), 201f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))))), abs(vec2<i32>(abs(abs(2147483647i)), abs(23082i))));
}

