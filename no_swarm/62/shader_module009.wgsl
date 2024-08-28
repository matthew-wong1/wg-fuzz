struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, i32(-2147483648), 1i, 31763i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = vec4<f32>(448f, 701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))))) + 2456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-666f, 1189f) * -293f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(108f, 249f)) * -250f)) - -879f));
    let var_1 = Struct_2(false & !(_wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(var_0.x - 1199f)));
    var var_2 = Struct_1(arg_1, firstTrailingBit(global0.zy), -25070i, select(!(arg_1 != 53547u), !(-1586f < var_0.x), true) & (true && any(select(vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(false, false, var_1.a, false), true))));
    var var_3 = Struct_2(any(select(select(!vec3<bool>(var_2.d, var_1.a, true), vec3<bool>(true, true, false), select(vec3<bool>(var_1.a, var_1.a, var_2.d), vec3<bool>(var_2.d, false, false), var_2.d)), select(select(vec3<bool>(var_2.d, var_2.d, true), vec3<bool>(var_1.a, false, var_2.d), vec3<bool>(false, var_2.d, true)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, var_1.a))), !(!vec3<bool>(true, true, var_1.a)))));
    var var_4 = !(!((arg_0 < global0.x) && (true || var_1.a))) & (-2348f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)));
    return all(select(select(select(vec2<bool>(false, var_3.a), !vec2<bool>(false, var_2.d), false), select(select(vec2<bool>(false, true), vec2<bool>(var_3.a, false), var_2.d), select(vec2<bool>(var_3.a, false), vec2<bool>(true, var_2.d), var_2.d), !vec2<bool>(var_2.d, var_1.a)), var_3.a), !(!vec2<bool>(var_2.d, true)), select(select(vec2<bool>(var_1.a, var_3.a), !vec2<bool>(true, var_3.a), vec2<bool>(true, true)), vec2<bool>(true, global0.x <= var_2.b.x), _wgslsmith_f_op_f32(min(1342f, -195f)) == _wgslsmith_f_op_f32(max(767f, var_0.x)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> bool {
    var var_0 = Struct_1(62233u, -vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(arg_1.c, 17091i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, arg_1.c, 1i), vec3<i32>(global0.x, global0.x, 9436i))), (arg_1.c << (abs(max(57302u, arg_1.a)) % 32u)) << (arg_3 % 32u), !(!func_3(-1i >> (u_input.a.x % 32u), firstTrailingBit(0u))));
    var var_1 = ~_wgslsmith_mod_u32(u_input.a.x, arg_2.x);
    var_0 = Struct_1(5947u, _wgslsmith_clamp_vec2_i32(countOneBits(~vec2<i32>(2147483647i, global0.x)), _wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(global0.xy, global0.zx), vec2<i32>(-2147483647i, arg_1.b.x >> (1u % 32u)), select(global0.wy, vec2<i32>(var_0.c, global0.x), var_0.d)), vec2<i32>(~(-1151i), _wgslsmith_div_i32(_wgslsmith_div_i32(0i, -1i), -arg_1.b.x))), 2147483647i, false);
    global0 = ~vec4<i32>(global0.x, min(var_0.c, -17596i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, 1i, 2147483647i, 15549i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c, global0.x, global0.x, 0i), vec4<i32>(0i, var_0.c, 2147483647i, var_0.b.x))), var_0.b.x);
    var var_2 = Struct_2(all(select(select(!vec2<bool>(false, var_0.d), !arg_0, select(arg_0, vec2<bool>(arg_0.x, false), arg_0)), !(!arg_0), all(arg_0))));
    return true;
}

fn func_1() -> i32 {
    global0 = -vec4<i32>(global0.x, -76668i, global0.x, global0.x);
    let var_0 = !(!vec4<bool>(all(vec3<bool>(true, true, true)), true, true, !func_2(vec2<bool>(true, true), Struct_1(u_input.a.x, vec2<i32>(-2147483647i, 0i), global0.x, false), vec4<u32>(70875u, 4294967295u, 4294967295u, 10821u), 38476u)));
    var var_1 = Struct_1(18814u, vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(34308i, 8917i, global0.x, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -31745i, 40504i, global0.x), vec4<i32>(global0.x, -44742i, global0.x, 0i), vec4<i32>(2147483647i, global0.x, global0.x, -27557i)), vec4<i32>(2147483647i, -4921i, global0.x, global0.x)), -(~vec4<i32>(global0.x, global0.x, -38122i, global0.x)))), _wgslsmith_div_i32(37543i, 59638i) & global0.x, var_0.x);
    var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(2291u, u_input.a.x) << ((u_input.a | vec2<u32>(13410u, 20233u)) % vec2<u32>(32u)), min(u_input.a, vec2<u32>(var_1.a, u_input.a.x))), vec2<i32>(-38008i, countOneBits(countOneBits(1i))), -27404i << (_wgslsmith_clamp_u32(firstLeadingBit(~37764u), 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.a, var_1.a), vec3<u32>(4294967295u, 4931u, 1u)), 35091u) % 32u), any(select(vec4<bool>(var_1.d, func_3(1771i, 45086u), true, var_1.d), !vec4<bool>(var_0.x, var_0.x, true, var_1.d), vec4<bool>(all(var_0.ww), all(var_0.yyx), true, !var_1.d))));
    global0 = _wgslsmith_add_vec4_i32(max(~vec4<i32>(countOneBits(global0.x), var_1.b.x, 18735i, -3019i), max(vec4<i32>(-26110i, firstLeadingBit(var_1.c), var_1.c, -12704i), min(vec4<i32>(var_1.c, global0.x, global0.x, var_1.c), max(vec4<i32>(var_1.b.x, global0.x, var_1.c, 2147483647i), vec4<i32>(-1i, global0.x, 0i, 44381i))))), countOneBits(vec4<i32>(-1i) * -vec4<i32>(global0.x, 4664i, 26103i, var_1.c)) | min(select(vec4<i32>(1i, var_1.b.x, 14096i, -43576i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c, 2147483647i, global0.x, 0i), vec4<i32>(var_1.c, global0.x, global0.x, -18043i)), !var_0), max(vec4<i32>(var_1.c, global0.x, var_1.b.x, var_1.b.x), vec4<i32>(var_1.b.x, global0.x, -40542i, 2147483647i)) << (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 36587u, 0u)) % vec4<u32>(32u))));
    return countOneBits(reverseBits(-var_1.c << (u_input.a.x % 32u)) | _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.b.x, abs(var_1.b.x)), 33158i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(reverseBits(~select(u_input.a, vec2<u32>(4294967295u, 11883u), vec2<bool>(true, false))) >> (vec2<u32>(0u, ~4294967295u << (firstTrailingBit(2800u) % 32u)) % vec2<u32>(32u)));
    let var_1 = Struct_1(17514u, max(reverseBits(-(vec2<i32>(2147483647i, global0.x) & vec2<i32>(global0.x, global0.x))), global0.zw), _wgslsmith_add_i32(~(~(~(-1i))), _wgslsmith_add_i32((global0.x << (var_0.x % 32u)) & global0.x, select(29734i, 2147483647i, true))), all(vec2<bool>(any(vec3<bool>(false, false, false)), true)) && true);
    var var_2 = min(global0.x, _wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, -43058i, var_1.c, global0.x), -vec4<i32>(var_1.c, var_1.b.x, global0.x, -2147483647i))), func_1()));
    global0 = vec4<i32>(~(global0.x >> (~0u % 32u)), (global0.x ^ -var_1.c) << ((u_input.a.x & 10806u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-(i32(-1i) * -24804i), _wgslsmith_mod_i32(global0.x, var_1.c) ^ var_1.b.x), vec2<i32>(var_1.c >> (reverseBits(1u) % 32u), 1i)), 2147483647i);
    var var_3 = ~(~countOneBits(u_input.a.x));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_i32(countOneBits(select(vec4<i32>(global0.x, var_1.c, var_1.b.x, var_1.b.x), vec4<i32>(-1i, 1i, -8034i, global0.x), vec4<bool>(false, true, var_1.d, true))), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, 43815i, var_1.c, -1i), abs(vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)))));
}

