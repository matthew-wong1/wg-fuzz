struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: u32) -> vec3<bool> {
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(-(~u_input.a.x), 48326i);
    var var_1 = Struct_1(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -2147483647i, var_0.x, -18084i), ~(-vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x)), vec4<i32>(-24583i, _wgslsmith_clamp_i32(var_0.x, u_input.a.x, var_0.x), firstLeadingBit(u_input.a.x), reverseBits(2147483647i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.x, 16204i, var_0.x, 1i) ^ vec4<i32>(u_input.a.x, -10305i, u_input.a.x, -1i), vec4<i32>(var_0.x, -var_0.x, u_input.a.x >> (arg_3 % 32u), u_input.a.x & -8734i))));
    var_1 = Struct_1(~countOneBits(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-14803i, -1i, u_input.a.x, var_0.x), vec4<i32>(-55522i, 23208i, -8529i, -1i)))));
    var var_2 = -2147483647i;
    var var_3 = max((countOneBits(var_0) | var_1.a.xy) ^ ~(~(~var_1.a.yy)), u_input.a.zx);
    return arg_0.xzx;
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = vec4<bool>(false, any(func_3(vec4<bool>(true, true, true, true), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f + -1000f) * -438f), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(33169u, 39475u, 49246u), ~51116u, abs(4294967295u)))), true, all(!vec3<bool>(true, all(vec2<bool>(true, true)), func_3(vec4<bool>(false, false, false, true), true, -816f, 17564u).x)));
    let var_1 = var_0;
    var var_2 = ~countOneBits(~(~vec2<u32>(59231u, 50716u)));
    let var_3 = Struct_1(arg_0);
    var var_4 = Struct_1(-var_3.a);
    return select(false || (var_0.x && true), var_1.x, var_2.x < 15946u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = vec3<bool>(true, true, func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.a.x & -31355i, 0i, u_input.a.x), _wgslsmith_div_vec4_i32(~vec4<i32>(102540i, arg_0.a.x, -2147483647i, arg_0.a.x), vec4<i32>(u_input.a.x, -1i, arg_0.a.x, arg_0.a.x) & arg_0.a))));
    var_1 = !select(vec3<bool>(all(select(vec2<bool>(false, false), var_1.xx, var_1.x)), !var_1.x, true), !select(vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, true, false), false)), false);
    var var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0 & 0u, select(var_0, var_0, false), ~154147u, 4294967295u), vec4<u32>(1u, 1u, var_0 & var_0, _wgslsmith_mult_u32(var_0, 66582u))), vec4<u32>(min(var_0 & 1u, 73360u), abs(abs(var_0)), var_0, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0, var_0)), ~vec2<u32>(var_0, var_0))));
    var var_3 = -7799i;
    return Struct_1(-max(abs(_wgslsmith_clamp_vec4_i32(arg_0.a, vec4<i32>(72658i, -13715i, u_input.a.x, 2147483647i), vec4<i32>(1i, 2147483647i, 39458i, -1i))), arg_0.a >> (vec4<u32>(var_0, var_0, var_0, 0u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10374u, _wgslsmith_div_u32(arg_1.x, _wgslsmith_clamp_u32(4294967295u, arg_1.x, arg_1.x))), vec2<u32>(4294967295u, arg_1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~arg_1.x, 1u), ~vec3<u32>(1u, ~1u, arg_1.x)));
    var_0 = arg_0;
    var_1 = ~(~(arg_1.x << (~1u % 32u))) ^ arg_1.x;
    var_0 = arg_0;
    return 1i & u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_clamp_vec4_i32(max(_wgslsmith_sub_vec4_i32(-vec4<i32>(-5612i, u_input.a.x, -36923i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -38972i, u_input.a.x)), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, -17892i)), -(~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -1i) | (vec4<i32>(u_input.a.x, 9869i, u_input.a.x, -58075i) ^ vec4<i32>(u_input.a.x, 1i, 0i, u_input.a.x))), vec4<i32>(-(~u_input.a.x), ~(i32(-1i) * -1i), u_input.a.x, -u_input.a.x));
    var_0 = vec4<i32>(~(-1i), u_input.a.x, ~u_input.a.x, max(var_0.x, func_4(func_1(Struct_1(vec4<i32>(var_0.x, -20248i, var_0.x, 1i))), vec3<u32>(4294967295u, 0u, 14592u))) & var_0.x);
    let var_1 = Struct_1(abs(vec4<i32>(-(u_input.a.x ^ u_input.a.x), -2147483647i, var_0.x, -28611i)));
    var_0 = vec4<i32>(func_4(var_1, vec3<u32>(44194u, firstLeadingBit(0u), 1u)), 0i, _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(u_input.a.x, -1i, ~var_1.a.x, u_input.a.x)), var_1.a.x) >> (vec4<u32>(abs(reverseBits(_wgslsmith_mult_u32(58972u, 1u))), ~4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 63784u, 1u)), vec3<u32>(1u, 1u, 1u)), 4294967295u) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(-901f)))) + 1737f);
    let var_3 = select(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(var_0.x, -1i), var_1.a.x, -var_0.x)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, 3270i), ~var_0.x), ~(-1i), abs(0i)), !vec3<bool>(true, true, select(false, true, false))) >> (_wgslsmith_add_vec3_u32(countOneBits(select(vec3<u32>(51640u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 32949u), var_2 > var_2)), countOneBits(vec3<u32>(1u, _wgslsmith_add_u32(78688u, 32918u), 0u))) % vec3<u32>(32u));
    var var_4 = var_1;
    let var_5 = func_1(func_1(Struct_1(-select(vec4<i32>(var_3.x, 0i, var_3.x, -2147483647i), var_1.a, vec4<bool>(false, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~1u), ~1u, func_1(var_1).a, firstLeadingBit(1u), var_2);
}

