struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_2(all(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false))), vec2<i32>(~_wgslsmith_sub_i32(~0i, ~u_input.b.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(7184i, -4439i, 1i, u_input.b.x)) & (u_input.b ^ u_input.b), u_input.b)), -1157f < arg_0);
    var_0 = Struct_2(var_0.a, -vec2<i32>(2147483647i, var_0.b.x), !all(!vec4<bool>(var_0.a, var_0.a, var_0.a, false)));
    var var_1 = 0u;
    var_1 = 12126u;
    let var_2 = vec2<u32>(30387u, 6019u);
    return 1u > var_2.x;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = 4144u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1309f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-258f, 135f) - 429f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -402f))));
    let var_2 = vec4<bool>(all(vec4<bool>(!func_3(248f), true, true, true)), !select(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, !(30954u < var_0)), !((func_3(-190f) & false) & true), true);
    let var_3 = 53590u;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-701f * 356f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1)), -620f < _wgslsmith_f_op_f32(step(var_1, 1014f))))));
    return 2147483647i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = ~(~vec4<i32>(_wgslsmith_mod_i32(-arg_1.b.x, arg_1.b.x), arg_1.b.x, abs(_wgslsmith_sub_i32(10022i, 0i)), func_2(u_input.b.x | -1i)));
    var var_1 = firstTrailingBit((abs(vec4<u32>(arg_2, 23291u, arg_2, arg_2)) << (abs(~vec4<u32>(4294967295u, 1u, arg_2, arg_2)) % vec4<u32>(32u))) >> (~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 59154u, arg_2, 21941u), vec4<u32>(arg_2, 61129u, arg_2, arg_2))) % vec4<u32>(32u)));
    var_1 = firstLeadingBit(min(min(vec4<u32>(var_1.x, arg_2, arg_2, 12662u) ^ (vec4<u32>(arg_2, 56147u, 43364u, arg_2) | vec4<u32>(2566u, arg_2, var_1.x, arg_2)), vec4<u32>(reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(var_1.x, 0u)), min(arg_2, var_1.x), arg_2)), ~vec4<u32>(var_1.x, 28779u, 1u, 4294967295u) & (vec4<u32>(1u, 35904u, var_1.x, var_1.x) | ~vec4<u32>(53575u, var_1.x, 0u, 4294967295u))));
    var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, 54765u, 18434u, _wgslsmith_clamp_u32(arg_2, arg_2, var_1.x)) >> (vec4<u32>(~47099u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2, 1u, var_1.x), vec4<u32>(1u, 4294967295u, 20153u, var_1.x)), ~var_1.x, arg_2) % vec4<u32>(32u)), ~(vec4<u32>(arg_2, arg_2, 4294967295u, 0u) & ~vec4<u32>(var_1.x, arg_2, arg_2, arg_2)), vec4<u32>(arg_2, min(var_1.x, 21801u), ~arg_2, 0u) >> (firstLeadingBit(~vec4<u32>(1u, 0u, arg_2, 1u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2160f * 257f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-210f, _wgslsmith_f_op_f32(ceil(866f)), arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return _wgslsmith_f_op_f32(min(589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(-u_input.b.wyw << (vec3<u32>(0u << (1u % 32u), _wgslsmith_mod_u32(8497u, 89603u), 1u) % vec3<u32>(32u)), Struct_2(true, -u_input.b.wy >> (firstTrailingBit(vec2<u32>(29197u, 0u)) % vec2<u32>(32u)), false), _wgslsmith_mod_u32(firstTrailingBit(~4294967295u), 1u)))));
    let var_1 = Struct_2(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false)), u_input.b.xy, !any(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true)));
    var_0 = -449f;
    var_0 = _wgslsmith_f_op_f32(min(405f, 536f));
    var var_2 = _wgslsmith_add_i32(var_1.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-26923i, -2147483647i), vec2<i32>(-1i, 1748i))), vec2<i32>(u_input.a.x << (19026u % 32u), _wgslsmith_dot_vec2_i32(u_input.a.zx, var_1.b))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, u_input.b.x, -1i) ^ u_input.b, u_input.b), select(vec4<i32>(u_input.b.x, u_input.a.x, 1i, -1i), u_input.b >> (vec4<u32>(1u, 17502u, 1u, 48336u) % vec4<u32>(32u)), all(vec3<bool>(true, var_1.a, false))))));
    var var_3 = ~(~1u);
    let var_4 = var_1;
    var_3 = ~(~min(~(~62825u), 42116u));
    var_3 = _wgslsmith_add_u32(0u, firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(9336u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_mult_i32(var_1.b.x, abs(-1i)) & reverseBits(-(var_1.b.x << (101077u % 32u))), ~(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 17171u, 14194u), 0u, _wgslsmith_mult_u32(44884u, 38062u)) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(39680u, 1u), vec2<u32>(4294967295u, 1u)), _wgslsmith_add_u32(1u, 93164u), ~0u)), 1u);
}

