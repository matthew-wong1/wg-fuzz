struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(arg_0.c, -915f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-759f, -1000f) * vec2<f32>(-167f, 1461f)), vec2<f32>(465f, 1462f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 188f)))))));
    var var_1 = _wgslsmith_div_i32(-max(firstLeadingBit(_wgslsmith_add_i32(2147483647i, arg_3.x)), u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_3.x, -1i), arg_3.wx) & ~arg_3.x);
    global0 = arg_3.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_0.c, arg_0.c));
    return arg_2;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 824f)), -920f)), _wgslsmith_dot_vec2_u32(reverseBits(~arg_0.a.c.xx), vec2<u32>(~4294967295u, 93347u)), arg_0.a.c), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1339f - 529f) * _wgslsmith_f_op_f32(-arg_0.a.a)), ~abs(15475u) >> (_wgslsmith_add_u32(arg_0.a.b >> (arg_0.b.c.x % 32u), arg_0.a.b | arg_0.b.c.x) % 32u), arg_0.a.c));
    let var_1 = true;
    var_0 = arg_0;
    global0 = i32(-1i) * -1i;
    let var_2 = !select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1)), vec2<bool>(func_3(Struct_1(vec4<i32>(-2147483647i, -1i, u_input.a, u_input.a), vec2<u32>(52038u, arg_0.a.c.x), -360f, -1i, vec3<u32>(var_0.b.c.x, arg_0.b.b, arg_0.b.b)), Struct_3(vec2<f32>(var_0.b.a, var_0.a.a)), var_1, vec4<i32>(-1i, -1i, u_input.a, -2147483647i)), false), -1338f == var_0.a.a);
    return -1294f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32) -> f32 {
    let var_0 = ~vec4<u32>(arg_0.c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(834u, 4294967295u), vec2<u32>(arg_0.b, arg_0.c.x)), arg_0.c.x), 0u, abs(4294967295u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.a, -266f)), _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_div_f32(-259f, 1000f), _wgslsmith_f_op_f32(min(arg_0.a, -934f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(792f, arg_0.a, arg_1.x, arg_1.x))))))));
    var_1 = vec4<f32>(524f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(1130f + -1310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(arg_0, Struct_2(arg_1.x, 0u, var_0.xwy))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(-852f)), -416f, _wgslsmith_f_op_f32(-arg_0.a), arg_0.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-869f, 1214f, arg_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(672f, -1961f, -336f, -518f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(258f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(275f)), _wgslsmith_f_op_f32(max(-304f, arg_0.a)))))));
    return _wgslsmith_f_op_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_2(-858f, 35386u, vec3<u32>(4294967295u, 0u, 4294967295u)), vec2<f32>(-956f, 112f), 37032u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -675f), -2435f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f), _wgslsmith_f_op_f32(f32(-1f) * -1338f))), vec3<f32>(-149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1195f, 292f)) * _wgslsmith_f_op_f32(-942f - -1253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1131f * 176f) + _wgslsmith_f_op_f32(742f * 187f))), !vec3<bool>(false, all(vec2<bool>(false, false)), true))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1168f * -1921f)), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(1110f, 80387u, vec3<u32>(1u, 28766u, 72364u)), Struct_2(-934f, 4294967295u, vec3<u32>(1u, 33316u, 0u))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1116f + -457f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1493f, 697f, -944f)))))));
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(836f, 510f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-382f, 702f))) + var_0.yz), var_0.zy));
    var var_2 = _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f * var_1.a.x)), 1u, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(71436u, 1u, 1u))), Struct_2(_wgslsmith_f_op_f32(var_0.x * var_1.a.x), 44914u, select(abs(vec3<u32>(34243u, 27992u, 1u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true))))));
    var_2 = var_0.x;
    var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 124f), var_0.xz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_1.a.x)), vec2<i32>(min(-17685i, -1i), _wgslsmith_mod_i32(~36089i >> (firstTrailingBit(1u) % 32u), u_input.a)), -vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -17244i) & -u_input.a, _wgslsmith_mult_i32(countOneBits(u_input.a), _wgslsmith_mult_i32(u_input.a, -16581i)), ~(-5465i)), -(u_input.a | ~(-18689i)));
}

