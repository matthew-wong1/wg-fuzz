struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> i32 {
    var var_0 = ~((72637u | ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) ^ (~u_input.b.x >> (~firstTrailingBit(0u) % 32u)));
    var var_1 = Struct_2(56177i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(step(1814f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(509f)))) * -628f)))));
    var_1 = Struct_2(1661i, _wgslsmith_f_op_f32(sign(-1068f)));
    return ~(-17203i);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_sub_i32(abs(2885i), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-1i, -23160i, -34367i, -1i)), firstTrailingBit(vec4<i32>(2147483647i, -16612i, -1i, 0i)))), 433f);
    let var_1 = Struct_4(Struct_3(~(~vec3<u32>(u_input.a, u_input.b.x, u_input.a) | max(vec3<u32>(u_input.b.x, 758u, u_input.b.x), vec3<u32>(0u, u_input.a, u_input.b.x))), !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), var_0.b, Struct_2(-5559i, 1095f), Struct_2(func_3(true, vec4<f32>(arg_0, var_0.b, -726f, var_0.b)), _wgslsmith_f_op_f32(-arg_0))), reverseBits(u_input.b ^ ~(~u_input.b)));
    var var_2 = any(!vec2<bool>(true, !any(vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b))));
    let var_3 = !(!(!select(!vec4<bool>(var_1.a.b, var_1.a.b, var_1.a.b, var_1.a.b), vec4<bool>(true, var_1.a.b, var_1.a.b, var_1.a.b), 1267f <= arg_0)));
    var_0 = var_1.a.e;
    return var_1.a.d.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = vec2<i32>(~(-62250i), 1i);
    var_0 = -abs(vec2<i32>(arg_2, -1i)) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a, 29138i), vec2<i32>(arg_2, arg_1.d.a)), vec2<i32>(1i, func_2(531f))), vec2<i32>(arg_1.d.a, 1i));
    var var_1 = Struct_4(Struct_3(~arg_1.a, !arg_1.b, 740f, Struct_2(arg_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), Struct_2(arg_2, _wgslsmith_f_op_f32(-arg_1.e.b))), vec2<u32>(arg_1.a.x, u_input.b.x));
    let var_2 = var_1.a.e.a;
    var_0 = -(vec2<i32>(-1i) * -abs(-vec2<i32>(2147483647i, -2147483647i)));
    return arg_1.e.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1824f - _wgslsmith_f_op_f32(336f * 1000f))) + 599f));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(8148i, 1000f), Struct_3(vec3<u32>(u_input.a, u_input.a, 60267u), false, -1340f, Struct_2(-1i, 1627f), Struct_2(2147483647i, -279f)), 15906i)), _wgslsmith_f_op_f32(485f + var_0.x))) + vec2<f32>(537f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2429f), 272f)))));
    let var_1 = Struct_2(firstTrailingBit(1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-541f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1076f, 248f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1633f, _wgslsmith_f_op_f32(floor(var_1.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2515f, var_1.b) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-299f, -1146f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 280f) + vec2<f32>(-1418f, 547f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -494f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1226f, 1232f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.b), vec2<f32>(var_0.x, 550f))))), !vec2<bool>(any(vec2<bool>(false, true)), false)));
    let var_2 = false;
    let var_3 = select(!select(vec2<bool>(true, true), vec2<bool>(var_2, all(vec4<bool>(var_2, var_2, var_2, var_2))), vec2<bool>(!var_2, !var_2)), !(!select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), true)), all(vec2<bool>(false & all(vec2<bool>(false, false)), _wgslsmith_sub_i32(var_1.a, var_1.a) <= ~(-2147483647i))));
    var var_4 = Struct_1(!vec4<bool>(false, true, var_3.x, !var_3.x), countOneBits(firstTrailingBit(vec4<u32>(~29605u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(11676u, u_input.a, u_input.b.x, 0u), vec4<u32>(11834u, u_input.b.x, u_input.b.x, u_input.b.x)), ~47365u))), any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_2, true), var_2), vec3<bool>(false, select(true, true, var_3.x), any(vec4<bool>(var_2, false, true, var_3.x))), var_3.x)), select(vec4<bool>(var_2, all(!vec3<bool>(var_3.x, var_3.x, false)), true, var_3.x), !select(vec4<bool>(var_3.x, var_3.x, true, var_2), vec4<bool>(var_2, true, true, false), all(vec2<bool>(var_2, true))), select(vec4<bool>(var_2, true, true, var_2), !select(vec4<bool>(true, var_2, false, false), vec4<bool>(true, true, false, var_3.x), false), all(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_2)))));
    var_4 = Struct_1(select(!vec4<bool>(select(true, var_3.x, var_3.x), var_2, false, true), select(vec4<bool>(any(vec3<bool>(var_2, true, true)), var_4.d.x, u_input.a <= var_4.b.x, var_1.a >= 33638i), select(var_4.d, vec4<bool>(true, var_3.x, false, false), !vec4<bool>(var_3.x, var_2, var_2, var_2)), vec4<bool>(true, true, true, true)), var_4.d.x), vec4<u32>(~_wgslsmith_dot_vec3_u32(var_4.b.yyw >> (var_4.b.wyy % vec3<u32>(32u)), ~var_4.b.zzz), ~(~u_input.b.x), firstLeadingBit(15668u), 23386u), all(!(!var_3)), vec4<bool>(var_2, true, -754f < var_0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(-1630f, vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(187f + var_1.b)), var_1.b), vec2<i32>(_wgslsmith_mod_i32(-var_1.a, var_1.a >> (var_4.b.x % 32u)), _wgslsmith_sub_i32(abs(var_1.a), var_1.a)) & _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(var_1.a, 34848i)), vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, firstLeadingBit(2456u)), 1u, 21127u) >> (max(~var_4.b.yyz, vec3<u32>(0u, u_input.a, var_4.b.x) | vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % vec3<u32>(32u)), ~(~(~(~var_4.b.x))));
}

