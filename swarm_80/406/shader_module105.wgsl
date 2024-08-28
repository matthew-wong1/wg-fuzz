struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = select(vec2<bool>(!arg_0.c.x, any(vec3<bool>(false, true, all(vec2<bool>(false, arg_0.c.x))))), arg_0.c.wx, any(vec4<bool>(true, all(!vec2<bool>(arg_0.c.x, arg_0.c.x)), true, true)));
    let var_1 = Struct_2(arg_0.d << (1u % 32u));
    var var_2 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, arg_0.d, -36081i) & -vec4<i32>(1i, 60831i, u_input.a, -2147483647i)) | 2147483647i;
    let var_3 = false;
    var var_4 = arg_0;
    return -210f;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(17614i, u_input.a, i32(-1i) * -22i, u_input.a), vec4<i32>(abs(u_input.a), u_input.a | 1i, _wgslsmith_div_i32(u_input.a, u_input.a), -1i)), reverseBits(~(vec4<i32>(-67413i, 11327i, 37410i, u_input.a) >> (vec4<u32>(22292u, 1u, arg_0.x, 1u) % vec4<u32>(32u)))) & countOneBits(~min(vec4<i32>(-2147483647i, 1i, -1i, -13875i), vec4<i32>(-4541i, u_input.a, u_input.a, 1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1308f - _wgslsmith_div_f32(563f, 231f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(true, arg_1), -542f, vec4<bool>(arg_1, arg_1, arg_1, arg_1), u_input.a, 1049f))))));
    let var_2 = reverseBits(_wgslsmith_add_u32(~arg_0.x ^ max(arg_0.x << (arg_0.x % 32u), 4294967295u), _wgslsmith_div_u32(78827u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x) << (vec2<u32>(arg_0.x, 8021u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.zz)))));
    let var_3 = max(_wgslsmith_add_vec4_u32(max(max(firstLeadingBit(vec4<u32>(58470u, 1739u, 15004u, var_2)), vec4<u32>(122313u, 22684u, arg_0.x, 0u)), countOneBits(firstLeadingBit(vec4<u32>(var_2, 19006u, arg_0.x, var_2)))), min(~vec4<u32>(var_2, arg_0.x, arg_0.x, var_2), _wgslsmith_clamp_vec4_u32(~arg_0, vec4<u32>(1u, arg_0.x, 50645u, arg_0.x), arg_0))), ~vec4<u32>(_wgslsmith_clamp_u32(var_2, var_2, 0u), min(var_2, var_2), arg_0.x, 1u) & firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(24225u, var_2, 16708u, 51809u) >> (arg_0 % vec4<u32>(32u)), min(vec4<u32>(var_2, 1u, var_2, arg_0.x), arg_0))));
    var_1 = 1877f;
    return Struct_1(!vec2<bool>(!(!arg_1), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), -1000f, vec4<bool>(all(select(!vec4<bool>(arg_1, arg_1, false, arg_1), select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(false, true, false, arg_1), true), !vec4<bool>(arg_1, arg_1, false, arg_1))), arg_1, (u_input.a & -23866i) >= u_input.a, true), 2343i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-310f, -436f)) * _wgslsmith_f_op_f32(min(2384f, -1000f))) - 1f)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = vec4<i32>(countOneBits(19507i), -42719i, -u_input.a, -1i);
    let var_1 = Struct_2(firstTrailingBit(i32(-1i) * -u_input.a));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1056f, -1108f))))), 888f, -564f);
    let var_3 = func_2(reverseBits(max(arg_0, ~vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 25154u) >> (~arg_0 % vec4<u32>(32u)))), all(vec4<bool>(true, true, true, true)));
    var var_4 = var_0.xz;
    return select(vec4<bool>(!(!func_2(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), var_3.c.x).c.x), func_2(min(vec4<u32>(arg_0.x, arg_0.x, 10901u, 4294967295u), vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x)), false && var_3.a.x).c.x, true, var_3.a.x), var_3.c, select(func_2(arg_0, _wgslsmith_add_i32(-13059i, var_0.x) >= 2147483647i).c, var_3.c, vec4<bool>(select(false, var_3.c.x, var_3.a.x), func_2(~arg_0, false).c.x, all(vec4<bool>(true, var_3.c.x, true, var_3.c.x)), !(false && var_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)), all(vec4<bool>(true, 0i > u_input.a, true, true)), false, true);
    var var_1 = select(vec4<bool>(true && !var_0.x, true & var_0.x, any(select(vec3<bool>(true, var_0.x, var_0.x), var_0.wxz, select(var_0.yyw, var_0.zxz, false))), all(var_0.xz)), vec4<bool>(false, all(vec4<bool>(var_0.x, any(vec2<bool>(var_0.x, var_0.x)), true, true | var_0.x)), true, (5340i & ~u_input.a) == _wgslsmith_mult_i32(_wgslsmith_mod_i32(-8617i, -1i), 60866i)), !select(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, false, false, false), var_0.x & var_0.x), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a | 47502i, 38210i), vec3<i32>(-(firstTrailingBit(u_input.a) ^ -63408i), -u_input.a, u_input.a));
    var_2 = -1i;
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 39096u, 78262u)), vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(40018u, 4294967295u, 61662u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 4294967295u, 0u), reverseBits(vec4<u32>(60224u, 23872u, 34558u, 50484u))), _wgslsmith_mod_u32(~1u, 1u))), min(~1u, ~(~(~0u))));
    var_0 = !select(select(select(vec4<bool>(var_0.x, var_1.x, var_0.x, var_1.x), func_1(vec4<u32>(0u, var_3, var_3, 1582u)), -17746i >= u_input.a), func_2(abs(vec4<u32>(var_3, 49040u, 51081u, var_3)), true).c, !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !select(func_1(vec4<u32>(4294967295u, 44337u, 5844u, var_3)), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_0.x, var_1.x, false, true)), select(select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, false, false, true)), !vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, var_0.x, true, true)), !vec4<bool>(false, var_0.x, true, true), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<u32>(113027u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, ~var_3), 0u >> (var_3 % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-465f, 649f) + _wgslsmith_f_op_f32(ceil(-1334f))) - _wgslsmith_f_op_f32(f32(-1f) * -1276f)))), u_input.a);
}

