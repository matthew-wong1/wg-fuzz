struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = true;
    global0 = !((~(46000u << (u_input.b % 32u)) >> (u_input.d.x % 32u)) != 34422u);
    let var_1 = Struct_2(Struct_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(254f)) * 246f)))), Struct_1(!vec4<bool>(any(vec4<bool>(true, false, false, true)), false, true, select(false, true, true))));
    var var_2 = !all(vec2<bool>(true, true));
    var var_3 = Struct_2(Struct_1(var_1.c.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - var_1.b))), Struct_1(!vec4<bool>(true, false, true, var_1.a.a.x)));
    return ~_wgslsmith_dot_vec2_i32(~firstLeadingBit(firstTrailingBit(vec2<i32>(-8212i, -2147483647i))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), select(vec2<i32>(14859i, -41809i), vec2<i32>(-5062i, -1i), vec2<bool>(false, true))));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(!vec4<bool>(!all(vec3<bool>(false, true, true)), true, u_input.a.x < u_input.d.x, !select(true, false, false)));
    let var_1 = true;
    let var_2 = Struct_1(vec4<bool>(!var_0.a.x, true, true, true));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.x, 2147483647i), func_3()) << (_wgslsmith_sub_u32(~26203u, countOneBits(76130u)) % 32u), -2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(35373i, 9254i, 3549i, arg_0.x), countOneBits(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i)), true), vec4<i32>(~arg_0.x, -2147483647i, abs(arg_0.x), ~arg_0.x)), arg_0.x), min(~(~(~vec4<i32>(2147483647i, arg_0.x, arg_0.x, arg_0.x))), vec4<i32>(~_wgslsmith_add_i32(arg_0.x, arg_0.x), _wgslsmith_mult_i32(arg_0.x, 1i), _wgslsmith_mod_i32(min(-34284i, arg_0.x), _wgslsmith_sub_i32(arg_0.x, 0i)), 18415i)));
    var_3 = countOneBits(select(~max(-vec4<i32>(13391i, arg_0.x, var_3.x, arg_0.x), -vec4<i32>(var_3.x, var_3.x, arg_0.x, 9721i)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -1i, var_3.x, var_3.x) | vec4<i32>(19853i, arg_0.x, 26476i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -19531i, -1i, var_3.x), vec4<i32>(var_3.x, arg_0.x, var_3.x, arg_0.x))), var_0.a));
    return all(vec4<bool>(var_1, false, !select(!var_2.a.x, true, !var_1), !var_2.a.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> i32 {
    let var_0 = ~select(1u | ~arg_0.x, countOneBits(arg_0.x), func_2(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, 21748i, 1i), vec3<i32>(22266i, -4939i, -1i))));
    return -51557i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (!all(vec4<bool>(false, true, true, false)) || true) != !(true & (true | all(vec4<bool>(true, false, true, false))));
    var var_0 = 2543f;
    let var_1 = true;
    let var_2 = func_1(countOneBits(vec4<u32>(reverseBits(u_input.c.x & 37834u), _wgslsmith_mod_u32(u_input.a.x | 1u, u_input.a.x), (4294967295u << (u_input.d.x % 32u)) & 102234u, ~(~0u))), !vec2<bool>(all(!vec2<bool>(var_1, var_1)), 1u > ~u_input.c.x));
    var var_3 = select(~firstTrailingBit(firstLeadingBit(~u_input.c)), countOneBits(u_input.c), false);
    var_3 = min(~(~max(u_input.c, u_input.c)), ~_wgslsmith_div_vec4_u32(vec4<u32>(max(u_input.b, 4294967295u), var_3.x, 36036u, ~var_3.x), select(vec4<u32>(4294967295u, 20949u, u_input.d.x, var_3.x), abs(vec4<u32>(var_3.x, 105614u, u_input.b, var_3.x)), any(vec4<bool>(var_1, false, var_1, false)))));
    var_0 = 1000f;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~36276u, 49125u);
}

