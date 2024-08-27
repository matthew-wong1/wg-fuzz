struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -419f) + _wgslsmith_f_op_f32(arg_0.x + arg_0.x))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), max(u_input.b.www, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.c.x, -1i), _wgslsmith_add_vec3_i32(u_input.b.zwx, u_input.b.xzz)) | reverseBits(~vec3<i32>(u_input.c.x, 44971i, -2147483647i))));
    var var_1 = var_0;
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.a.x, ~u_input.d.x, 152527u >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.a)), vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x, 92413u, 0u)), 36659u, ~4294967295u, max(76295u, u_input.a.x & ~(~0u)));
    let var_3 = vec4<bool>(true, true, true, arg_1.a);
    var_1 = var_0;
    return countOneBits(-min(_wgslsmith_dot_vec3_i32(var_0.b ^ var_0.b, _wgslsmith_mult_vec3_i32(var_1.b, var_0.b)), _wgslsmith_mult_i32(var_1.b.x, -2147483647i)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = ~(u_input.e ^ -_wgslsmith_mult_i32(u_input.e, -52088i)) & max(-1i, abs(-func_3(vec3<f32>(-962f, -964f, -1338f), Struct_2(arg_3.x))));
    var var_1 = arg_3.yx;
    var var_2 = Struct_3(Struct_1(all(select(!vec4<bool>(var_1.x, false, false, false), !vec4<bool>(true, true, var_1.x, var_1.x), !arg_3.x)), -firstTrailingBit(max(vec3<i32>(0i, u_input.c.x, var_0), u_input.b.wwz))));
    var_1 = !select(!arg_3.xy, select(vec2<bool>(!var_2.a.a, true), arg_3.xx, arg_3.zx), (any(vec4<bool>(false, true, false, false)) == true) && any(select(vec4<bool>(arg_3.x, arg_3.x, false, var_1.x), vec4<bool>(var_2.a.a, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, true, true))));
    let var_3 = u_input.b.wzx;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = vec2<u32>(~1u, reverseBits(0u << ((4294967295u << (countOneBits(u_input.a.x) % 32u)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(691f, -1829f), vec2<f32>(arg_0, arg_0), true))) + _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(min(arg_0, -609f)), vec4<u32>(u_input.d.x, 1u, var_0.x, 18022u), _wgslsmith_f_op_f32(floor(-1749f)), vec3<bool>(false, true, true))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -880f)));
    let var_2 = var_0.x;
    var var_3 = Struct_3(Struct_1(!(var_2 >= ~0u), ~(-firstTrailingBit(u_input.b.yyx))));
    var_3 = Struct_3(var_3.a);
    return ~var_3.a.b.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1048f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2016f))))));
    var var_1 = vec2<i32>(u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(u_input.c.x), -13158i), u_input.b.x ^ ~u_input.b.x)) | countOneBits(abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, -3607i), vec2<i32>(u_input.e, u_input.e))));
    var_1 = func_1(_wgslsmith_f_op_f32(-276f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1413f, -193f)))) & _wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.x, 0i), u_input.c);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(-1897f + 878f), min(vec4<u32>(~0u, 0u, u_input.a.x, 1u), max(vec4<u32>(u_input.d.x, u_input.d.x, 47546u, 33068u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 8964u))), -175f, select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false), !any(vec2<bool>(false, false))))).x, -269f));
    var_0 = -1354f;
    var var_2 = ~(u_input.d.yz << (max(~(~u_input.a), u_input.d.xz) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_div_f32(-1100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-548f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1144f))))));
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(22368i, -1i), vec2<i32>(-1i, ~(36235i ^ var_1.x))) | u_input.b.xx;
    var var_4 = any(!vec2<bool>(!any(vec4<bool>(true, true, true, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -select(reverseBits(u_input.b.ywy), vec3<i32>(-47615i, -31778i, _wgslsmith_div_i32(28913i, 32508i)), vec3<bool>(true, true, true)), _wgslsmith_div_vec4_u32(reverseBits(max(vec4<u32>(var_2.x, 0u, var_2.x, 4294967295u) >> (vec4<u32>(43052u, var_2.x, 20963u, 53707u) % vec4<u32>(32u)), vec4<u32>(1u, 34185u, 4294967295u, var_2.x))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(55147u, 18414u, 5092u, 0u), vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, var_2.x)))));
}

