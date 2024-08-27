struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = !(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true));
    var var_1 = select(all(select(var_0.yx, select(vec2<bool>(var_0.x, var_0.x), var_0.yy, !var_0.xy), !select(var_0.zy, vec2<bool>(false, false), var_0.yz))), var_0.x | false, !(!any(select(var_0, vec3<bool>(var_0.x, false, true), var_0))));
    let var_2 = false;
    var var_3 = Struct_2(firstLeadingBit(~select(83479u << (u_input.b % 32u), u_input.c.x, !var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -1670f, arg_0.x), arg_0, true)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, -363f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1408f, -330f) + arg_0))))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x + -309f))))), _wgslsmith_f_op_f32(sign(267f)), 1000f), Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(arg_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1249f, arg_0.x, -1279f))), any(vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), -859f))), reverseBits(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, u_input.b), vec4<u32>(48263u, 106839u, 4294967295u, 30380u))))));
    var var_4 = _wgslsmith_div_i32(~u_input.a, u_input.a);
    return vec3<f32>(-145f, var_3.d.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1365f)), var_3.c.x)));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + 1317f)), _wgslsmith_f_op_f32(-arg_0.a))));
    let var_1 = !(!vec3<bool>((arg_0.b & false) != true, -u_input.a != _wgslsmith_sub_i32(-1i, 1i), all(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))));
    var var_2 = var_0;
    var var_3 = arg_0;
    var var_4 = u_input.b;
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(837f, var_0.x, var_3.a), vec3<f32>(2027f, var_2.x, var_0.x)) * vec3<f32>(var_0.x, var_3.a, arg_0.a)))), _wgslsmith_f_op_f32(ceil(-1285f))));
}

fn func_1() -> bool {
    var var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(540f - 431f) * _wgslsmith_f_op_f32(abs(1260f)))), !(_wgslsmith_div_u32(36621u, u_input.b) == 2975u)));
    var var_1 = vec2<bool>(any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true)), !any(vec2<bool>(true, false)))), u_input.b != _wgslsmith_mult_u32(~(~u_input.c.x), 4780u));
    return any(vec3<bool>(var_1.x, var_1.x, !var_1.x));
}

fn func_4(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(255f, 194f, -547f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1244f, -1020f)), vec3<f32>(565f, -1459f, 732f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(2892f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f - -539f))))));
    var var_1 = _wgslsmith_mult_vec3_u32(max(~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 21413u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), reverseBits(abs(min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 15672u))))), abs(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 19961u)), _wgslsmith_div_u32(39145u, u_input.c.x), 13265u)));
    var var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(-var_0.a.b), any(!select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0))))).a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a.x, var_2.a.x));
    let var_4 = true;
    return ~abs(~countOneBits(~vec4<u32>(u_input.b, u_input.b, 6882u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = reverseBits(vec4<i32>(~u_input.a << (u_input.b % 32u), 1i & u_input.a, i32(-1i) * -u_input.a, _wgslsmith_div_i32(firstLeadingBit(35184i), u_input.a))) >> (firstTrailingBit(func_4(func_1())) % vec4<u32>(32u));
    var var_2 = -_wgslsmith_dot_vec2_i32(~(reverseBits(vec2<i32>(var_1.x, u_input.a)) | abs(var_1.xw)), var_1.xw);
    let var_3 = _wgslsmith_mult_i32(45327i, u_input.a ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 59069i), vec3<i32>(-23902i, var_1.x, 1i) ^ var_1.wyx), -14183i));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1244f), !(true || (_wgslsmith_mult_i32(57631i, 0i) > var_1.x)));
    let var_5 = func_2(var_4).a;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.c.x, var_0), 0u), ~u_input.c), u_input.c, select(!select(vec2<bool>(var_4.b, false), vec2<bool>(false, false), vec2<bool>(var_4.b, var_4.b)), vec2<bool>(var_4.b, true), true)), vec4<f32>(_wgslsmith_f_op_f32(1877f + -1761f), _wgslsmith_f_op_f32(step(var_4.a, _wgslsmith_f_op_f32(217f + 1492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f)), var_4.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0, ~abs(1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), u_input.c)), vec4<u32>(var_0 << (abs(u_input.b) % 32u), ~(~var_0), 4294967295u, var_0)));
}

