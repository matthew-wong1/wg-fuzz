struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    let var_0 = 20890u;
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = select(!select(!vec4<bool>(false, false, arg_1.c, var_1.c), !select(vec4<bool>(true, false, arg_1.c, false), vec4<bool>(true, var_1.c, arg_1.c, var_1.c), vec4<bool>(var_1.c, false, var_1.c, false)), vec4<bool>(0u < arg_0, select(arg_1.c, true, false), all(vec3<bool>(true, false, arg_1.c)), false & arg_1.c)), !vec4<bool>(reverseBits(1u) != arg_0, var_1.c, any(select(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(var_1.c, true, true, true), arg_1.c)), var_1.c), select(!(!vec4<bool>(true, arg_1.c, false, false)), vec4<bool>(!all(vec4<bool>(false, false, var_1.c, true)), true, arg_1.c, true & any(vec2<bool>(false, true))), select(vec4<bool>(all(vec2<bool>(var_1.c, false)), arg_1.c, false, arg_1.c), select(!vec4<bool>(true, arg_1.c, var_1.c, arg_1.c), !vec4<bool>(var_1.c, true, true, arg_1.c), select(vec4<bool>(true, arg_1.c, var_1.c, var_1.c), vec4<bool>(var_1.c, true, false, var_1.c), vec4<bool>(var_1.c, false, var_1.c, false))), vec4<bool>(true, var_1.c, var_1.c, !var_1.c))));
    var_1 = arg_1;
    return ~u_input.a.x | min(25656u, 4294967295u);
}

fn func_2() -> Struct_3 {
    let var_0 = any(vec2<bool>(func_3(~u_input.b.x, Struct_3(u_input.a.ywx, u_input.a.x, false), -vec4<i32>(-54711i, 0i, 0i, 35162i)) < _wgslsmith_mult_u32(~1u, u_input.b.x), select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !any(vec2<bool>(true, false)), true)));
    var var_1 = -20636i << (~u_input.b.x % 32u);
    let var_2 = Struct_3(~min(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x ^ u_input.b.x, select(1u, u_input.b.x, var_0), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, 8372u, 20574u)))), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(select(u_input.a.zwx, u_input.a.yyx, vec3<bool>(false, var_0, var_0)), min(vec3<u32>(40582u, 33127u, 0u), vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)))), var_0);
    let var_3 = u_input.a.zw;
    var_1 = 24553i;
    return Struct_3(vec3<u32>(_wgslsmith_mult_u32(31360u, 0u), var_3.x, u_input.b.x) << (var_2.a % vec3<u32>(32u)), var_2.b, (~reverseBits(15763u) <= _wgslsmith_sub_u32(u_input.b.x, ~var_2.a.x)) && var_2.c);
}

fn func_1() -> bool {
    let var_0 = true;
    let var_1 = func_2();
    var var_2 = Struct_2(vec4<bool>(true, true, true, true), true, Struct_1(true, -1i, i32(-1i) * -1i, _wgslsmith_mult_u32(~_wgslsmith_add_u32(var_1.b, 0u), 1u), vec2<f32>(-778f, -1000f)), Struct_1(true, abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(35335i, 63213i), vec2<i32>(1i, -1i))), ((0i << (u_input.b.x % 32u)) ^ 0i) ^ _wgslsmith_clamp_i32(countOneBits(-1i), -30338i, 24077i), func_2().a.x, vec2<f32>(674f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1466f)))))), i32(-1i) * -36619i);
    var_2 = Struct_2(vec4<bool>(true, all(vec2<bool>(!var_2.a.x, true)), var_2.d.a, true), true, var_2.d, Struct_1(true, var_2.e, -_wgslsmith_dot_vec2_i32(vec2<i32>(39146i, 0i), vec2<i32>(-1i, var_2.d.c)), 1u >> (var_1.a.x % 32u), var_2.c.e), reverseBits(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_2.c.b, 1i, var_2.d.b)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.b, -52293i, var_2.d.c), vec3<i32>(var_2.e, var_2.d.c, 3170i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c.c, 0i, var_2.e), vec3<i32>(1i, var_2.e, var_2.e))))));
    let var_3 = -(~(~(-vec2<i32>(var_2.e, 2147483647i)))) & (vec2<i32>(-1i) * -vec2<i32>(~1i, var_2.c.b));
    return any(select(var_2.a.yy, vec2<bool>(false, false), var_2.a.xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), -26749i, _wgslsmith_add_i32(min(i32(-1i) * -11812i, ~2147483647i) << (min(reverseBits(u_input.b.x), 0u) % 32u), 1i & abs(firstTrailingBit(1i))), func_3(u_input.a.x, Struct_3(abs(~u_input.a.wzw), ~u_input.b.x, select(true, true, false)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, -949f) * vec2<f32>(-121f, -332f))), vec2<f32>(_wgslsmith_f_op_f32(round(-734f)), _wgslsmith_f_op_f32(trunc(989f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1140f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-779f, -608f) - _wgslsmith_f_op_f32(f32(-1f) * -325f)))));
    var var_1 = Struct_3(_wgslsmith_sub_vec3_u32(firstLeadingBit(~u_input.a.yxz), u_input.a.yyx), u_input.b.x, true);
    var_1 = func_2();
    let var_2 = ~vec4<u32>(6443u, ~var_1.a.x, var_1.a.x, 26095u);
    var_1 = Struct_3(vec3<u32>(118932u, var_0.d, var_0.d | ~53231u) ^ u_input.a.zxw, ~_wgslsmith_add_u32(var_0.d, _wgslsmith_div_u32(0u, firstTrailingBit(0u))), var_0.a);
    var var_3 = vec2<bool>(true, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7079u, abs(1u), var_1.b, ~29844u), var_2), u_input.a), _wgslsmith_div_vec3_i32(firstLeadingBit(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(21556i, var_0.b, var_0.b), vec3<i32>(-1i, 0i, -17685i)))), ~(-vec3<i32>(-27614i, -2147483647i, var_0.c))), var_0.d, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-var_0.c, ~(-42462i), 2147483647i, ~(-22676i))), ~vec4<i32>(_wgslsmith_mult_i32(-2147483647i, var_0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.c, var_0.b, var_0.c), vec4<i32>(-819i, -37447i, var_0.c, 11145i)), 6696i << (u_input.b.x % 32u), min(-2147483647i, var_0.b)), firstTrailingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.c, 0i, -1234i, var_0.c), abs(vec4<i32>(-1i, 0i, var_0.c, var_0.b))))));
}

