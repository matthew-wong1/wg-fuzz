struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1195f, 2406f, 1354f)), vec3<f32>(1101f, 157f, 2221f)) + vec3<f32>(_wgslsmith_f_op_f32(step(-2064f, 896f)), _wgslsmith_f_op_f32(round(207f)), -837f)))));
    global0 = Struct_3((i32(-1i) * -(~u_input.a.x)) & 1i, all(vec4<bool>(true, true, true, true)));
    global0 = Struct_3(-_wgslsmith_sub_i32(74731i, _wgslsmith_add_i32(global0.a, u_input.a.x)) << (select(countOneBits(arg_0.x), u_input.e, -364f >= var_0.a.x) % 32u), any(select(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b), select(global0.b, global0.b, global0.b)), !select(vec2<bool>(false, false), vec2<bool>(false, false), global0.b), select(select(vec2<bool>(false, true), vec2<bool>(global0.b, false), vec2<bool>(global0.b, global0.b)), !vec2<bool>(global0.b, global0.b), !vec2<bool>(global0.b, global0.b)))));
    var var_1 = -firstTrailingBit(~(-global0.a) >> (4294967295u % 32u));
    var var_2 = ~0u;
    return u_input.a.yx;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    let var_1 = arg_0.c;
    var_0 = true;
    global1 = _wgslsmith_mult_vec2_i32(func_3(reverseBits((vec2<u32>(u_input.d.x, 29003u) | u_input.c.xy) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(15937u, 0u)) % vec2<u32>(32u)))), u_input.a.xz);
    var var_2 = Struct_1(783f, u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) + _wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a, -401f))), -1075f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(var_1)))), _wgslsmith_div_vec3_f32(var_1, vec3<f32>(-195f, arg_0.a, arg_0.a)))));
    return global0.a;
}

fn func_1() -> vec3<u32> {
    global0 = Struct_3(global0.a << (_wgslsmith_sub_u32(4294967295u, 3239u) % 32u), false);
    global1 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global1.x, -9642i, -2147483647i, global1.x)), abs(vec4<i32>(global0.a, global0.a, -1i, u_input.a.x)))) | u_input.a.xz, reverseBits(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(13614i, -25423i), u_input.a.zz)) & vec2<i32>(-global1.x, ~(-35160i))));
    global0 = Struct_3(-7566i, global0.b);
    global1 = ~(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(73923i, -1i, -29134i)), func_2(Struct_1(-1158f, 36821u, vec3<f32>(210f, 1774f, -1382f)))) << (min(reverseBits(select(vec2<u32>(36436u, 0u), vec2<u32>(u_input.e, 30042u), true)), vec2<u32>(~u_input.e, ~4294967295u)) % vec2<u32>(32u)));
    let var_0 = all(!select(vec2<bool>(true, false), !(!vec2<bool>(false, global0.b)), select(vec2<bool>(false, true), select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, global0.b), vec2<bool>(global0.b, global0.b)), vec2<bool>(false, false))));
    return abs(vec3<u32>(reverseBits(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x ^ u_input.d.x, min(27954u, 1u)), ~u_input.d.xzx), firstTrailingBit(1u)));
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1182f), 1f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1305f * -343f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1383f)) * _wgslsmith_f_op_f32(133f + -1534f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(617f - -215f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1028f)))))));
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 282f, -1104f) - vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 1515f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -895f) - vec3<f32>(345f, var_0.x, 233f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1594f, var_0.x, var_0.x), vec3<f32>(2856f, var_0.x, 1739f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -494f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, -616f)))));
    var var_2 = vec2<f32>(-1032f, -919f);
    return Struct_3(0i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(var_1.a.x + var_2.x))) > _wgslsmith_f_op_f32(f32(-1f) * -295f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(-2147483647i, !global0.b);
    global0 = func_4(abs(~func_1()));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(-1532f, -1334f)), -1000f);
    let var_1 = true;
    let var_2 = ~(vec2<i32>(-1i) * -u_input.a.yx);
    global0 = Struct_3(_wgslsmith_sub_i32(abs(global0.a), firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) & 7314i), all(select(select(vec4<bool>(var_1, true, global0.b, false), select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(global0.b, var_1, true, var_1), true), !var_1), select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(global0.b, global0.b, var_1, global0.b), true), var_0.x != var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x)))) * _wgslsmith_div_f32(var_0.x, -1436f)));
}

