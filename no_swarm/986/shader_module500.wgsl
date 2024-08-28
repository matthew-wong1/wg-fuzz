struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_4(Struct_3(arg_2.a.a, select(arg_2.b.d.yx, vec2<bool>(arg_1.e == arg_1.e, arg_1.a.c), !(!arg_2.d)), arg_1.d.x & true, !vec3<bool>(true, true, func_3(Struct_2(Struct_1(u_input.b.x, arg_2.c.x, arg_1.b.d, u_input.b.x, vec4<u32>(68632u, 0u, 1u, u_input.c)))))), arg_2.b, ~arg_1.c, select(select(vec2<bool>(true, false), vec2<bool>(arg_2.d.x, arg_2.a.a.x > -1109f), any(vec3<bool>(arg_2.b.d.x, false, arg_2.b.c))), select(select(arg_1.b.b, arg_2.a.d.xy, select(arg_1.d, vec2<bool>(arg_1.b.d.x, arg_1.d.x), arg_2.d.x)), select(select(vec2<bool>(true, arg_2.d.x), arg_2.a.d.zx, vec2<bool>(arg_1.a.d.x, arg_1.a.d.x)), arg_2.a.d.yx, arg_1.d), true), (_wgslsmith_dot_vec3_u32(vec3<u32>(14704u, 29708u, arg_1.e), vec3<u32>(arg_0, u_input.c, u_input.c)) ^ arg_1.e) > ~arg_1.e), ~64415u);
    var_0 = Struct_4(var_0.a, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1790f, -1911f, 568f, -521f) * var_0.a.a))), select(arg_1.a.b, vec2<bool>(true, true), !any(vec4<bool>(var_0.b.b.x, arg_1.b.c, false, var_0.b.b.x))), false, vec3<bool>(false, false, !var_0.d.x)), select(vec4<i32>(abs(var_0.c.x), var_0.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(0i, arg_2.c.x)), ~u_input.b.x >> (~0u % 32u)), arg_1.c, select(select(vec4<bool>(true, false, arg_2.d.x, arg_2.d.x), !vec4<bool>(true, false, false, arg_1.d.x), false & arg_2.a.b.x), vec4<bool>(true, arg_2.d.x, !arg_1.a.d.x, true), any(select(vec4<bool>(var_0.d.x, false, false, false), vec4<bool>(false, arg_2.a.c, false, var_0.b.d.x), vec4<bool>(false, var_0.b.d.x, var_0.a.c, var_0.d.x))))), vec2<bool>(!((arg_1.c.x & 0i) != ~(-38931i)), true), arg_1.e);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_0.c.xzx, vec3<i32>(var_0.c.x, 1i, u_input.b.x)), var_0.c.wwz), arg_1.c.yxz);
    var_0 = arg_1;
    let var_2 = vec4<bool>(any(!select(select(vec4<bool>(true, arg_2.a.d.x, true, true), vec4<bool>(true, true, arg_1.a.b.x, true), vec4<bool>(true, arg_1.b.c, arg_2.a.c, true)), !vec4<bool>(false, false, false, arg_1.a.d.x), true)), !(arg_2.e > ~u_input.c) | !(!var_0.b.d.x), any(var_0.d), !(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), u_input.a)) != 0u));
    return ~(firstTrailingBit(~(~4294967295u)) | arg_0);
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    let var_0 = !arg_0.d;
    var var_1 = arg_0;
    var var_2 = (func_2(_wgslsmith_div_u32(4294967295u, ~34081u), Struct_4(arg_0, arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(-30741i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, 2147483647i)), select(var_0.xz, vec2<bool>(arg_0.c, var_0.x), vec2<bool>(arg_0.d.x, true)), 1183u), Struct_4(arg_0, Struct_3(var_1.a, arg_0.d.xx, var_1.d.x, vec3<bool>(arg_0.d.x, arg_0.c, var_1.d.x)), vec4<i32>(u_input.b.x, u_input.b.x, -58591i, u_input.b.x), vec2<bool>(false, var_0.x), select(u_input.c, u_input.a.x, true))) << (u_input.c % 32u)) & ~countOneBits(u_input.c);
    let var_3 = u_input.a.x;
    var var_4 = abs(vec4<i32>(~(-2147483647i), 12336i, -reverseBits(u_input.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -44366i, u_input.b.x), vec3<i32>(u_input.b.x, 21160i, 2147483647i)), ~vec3<i32>(0i, u_input.b.x, u_input.b.x)))) | select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(64239i, 2147483647i, -29470i, -12201i), vec4<i32>(70446i, 0i, u_input.b.x, 21541i)) & vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x)), vec4<i32>(-u_input.b.x & _wgslsmith_mod_i32(-36555i, u_input.b.x), ~(-u_input.b.x), 0i, _wgslsmith_mod_i32(u_input.b.x, 0i & u_input.b.x)), var_1.b.x && (var_1.a.x != _wgslsmith_f_op_f32(-arg_1)));
    return Struct_3(var_1.a, vec2<bool>(all(select(vec4<bool>(false, var_0.x, false, var_1.d.x), vec4<bool>(false, arg_0.d.x, false, true), !vec4<bool>(arg_0.d.x, false, var_0.x, true))), true), func_3(Struct_2(Struct_1(var_4.x, ~49968i, select(vec3<bool>(var_1.b.x, true, arg_0.d.x), arg_0.d, var_1.d), -1i, vec4<u32>(u_input.a.x, var_3, u_input.a.x, u_input.c) & vec4<u32>(94602u, u_input.c, var_3, var_3)))), select(!select(!var_0, vec3<bool>(var_1.c, true, true), !var_1.d), arg_0.d, false));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(abs(u_input.b.x), ~u_input.b.x, !select(select(vec3<bool>(false, arg_2.d.x, true), vec3<bool>(arg_0.c, arg_0.c, true), arg_0.c), select(arg_2.d, arg_0.d, arg_2.b.x), arg_2.b.x), (i32(-1i) * -1607i) >> (u_input.a.x % 32u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.a.x), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 20302u), vec4<u32>(4294967295u, u_input.c, 39806u, 1u)), abs(vec4<u32>(1u, u_input.a.x, 4294967295u, 4294967295u))))));
    let var_1 = Struct_1(abs(var_0.a.a), ~arg_3.x, vec3<bool>(all(!select(vec3<bool>(false, arg_2.c, arg_0.b.x), vec3<bool>(arg_0.c, arg_0.c, var_0.a.c.x), vec3<bool>(var_0.a.c.x, true, false))), any(arg_2.b), true), (u_input.b.x ^ _wgslsmith_dot_vec2_i32(arg_3, u_input.b)) ^ u_input.b.x, vec4<u32>(_wgslsmith_div_u32(5593u, u_input.c | (1u >> (1u % 32u))), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, ~6960u) | select(var_0.a.e.x, ~u_input.a.x, arg_0.a.x < -1039f), min(~firstLeadingBit(u_input.c), ~(~0u))));
    var var_2 = Struct_5(Struct_2(var_1), var_1.c.zx);
    var_2 = Struct_5(Struct_2(Struct_1(10002i, arg_3.x, vec3<bool>(!arg_0.b.x, true, true), var_1.a, abs(var_1.e))), vec2<bool>(all(func_1(arg_2, _wgslsmith_f_op_f32(select(1408f, -246f, var_0.a.c.x))).d.yy), !all(!vec3<bool>(arg_0.c, true, false))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f) + _wgslsmith_f_op_f32(round(831f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(~u_input.b.x >> (_wgslsmith_div_u32(u_input.a.x, u_input.c) % 32u), -7364i, 21901i) << (vec3<u32>(min(select(u_input.c, u_input.c, true), _wgslsmith_sub_u32(1u, u_input.a.x)), u_input.a.x, u_input.a.x << (~0u % 32u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-1i), _wgslsmith_sub_i32(-u_input.b.x, u_input.b.x), func_4(func_1(Struct_3(vec4<f32>(-1000f, -1000f, 809f, 1000f), vec2<bool>(false, false), true, vec3<bool>(true, false, true)), 1369f), _wgslsmith_f_op_f32(f32(-1f) * -1020f), func_1(Struct_3(vec4<f32>(-1573f, -291f, -893f, 244f), vec2<bool>(true, false), false, vec3<bool>(true, true, false)), 2151f), u_input.b)), min(vec3<i32>(firstLeadingBit(-6274i), 47846i, -46241i), ~min(vec3<i32>(u_input.b.x, 33468i, -3390i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), u_input.a.x > _wgslsmith_div_u32(u_input.c, firstLeadingBit(u_input.a.x) << (reverseBits(u_input.c) % 32u)));
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec3_u32(abs(abs(vec3<u32>(u_input.c, u_input.c, u_input.a.x))), abs(reverseBits(vec3<u32>(u_input.a.x, u_input.c, 1u)))) << (vec3<u32>(u_input.a.x, 0u, reverseBits(43624u)) % vec3<u32>(32u)));
    let var_2 = vec4<u32>(abs(u_input.c), 0u, var_1.x ^ u_input.c, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_1.x, 20835u, u_input.a.x)), max(vec4<u32>(1u, u_input.c, 53330u, u_input.a.x), vec4<u32>(0u, 32575u, 1u, 25740u))), ~vec4<u32>(~4294967295u, _wgslsmith_sub_u32(1u, u_input.a.x), firstLeadingBit(38163u), var_1.x)));
    var var_3 = -393f;
    let var_4 = Struct_2(Struct_1(var_0.x, ~var_0.x, select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), ~16284i >= _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-46215i, 27693i, u_input.b.x))), -1i, vec4<u32>(var_2.x, 76778u, 36332u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

