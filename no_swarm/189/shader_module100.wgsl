struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: i32) -> bool {
    global0 = array<Struct_3, 4>();
    let var_0 = arg_2;
    let var_1 = max(firstLeadingBit(u_input.b.zz), countOneBits(select(abs(~vec2<u32>(84885u, u_input.b.x)), abs(u_input.b.yz >> (u_input.b.zy % vec2<u32>(32u))), true)));
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    return ~35569u >= firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b.x), vec2<u32>(var_1.x, ~28454u)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> vec2<bool> {
    var var_0 = 4294967295u;
    var var_1 = 3806i;
    var var_2 = Struct_3(vec4<bool>(func_3(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, -1i), 2605i << (u_input.b.x % 32u)), vec4<bool>(u_input.a.x <= u_input.c, func_3(2147483647i, vec4<bool>(true, arg_0, arg_0, arg_0), Struct_3(vec4<bool>(arg_0, arg_0, true, false), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i)), 1i), select(arg_0, arg_0, arg_0), true), global0[_wgslsmith_index_u32(78940u, 4u)], ~(-u_input.a.x)), !arg_0, (countOneBits(24252u) >= ~arg_1.x) || true, false), vec4<i32>(0i, u_input.c, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mod_i32(-1i, countOneBits(4790i))), -33614i));
    let var_3 = u_input.b.x;
    global0 = array<Struct_3, 4>();
    return !select(!var_2.a.wx, vec2<bool>(all(var_2.a.xw), 4294967295u < arg_1.x), all(vec2<bool>(var_2.a.x || false, arg_0)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(~(~(~vec4<u32>(28005u, 35052u, u_input.b.x, 1u))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1047f, -896f, -711f)))))) + vec3<f32>(-2324f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(596f - -285f))), -887f)), select(func_4(func_3(i32(-1i) * -2147483647i, vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(~u_input.b.x, 4u)], countOneBits(1i)), max(_wgslsmith_div_vec4_u32(vec4<u32>(2286u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u)), ~vec4<u32>(135203u, 4294967295u, u_input.b.x, 38667u))), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(false, false, false, false))), func_4(true, ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 28392u)).x), vec2<bool>(true, true)));
    let var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x + -1000f), _wgslsmith_f_op_f32(-1000f + -420f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(var_0.c.x, var_0.c.x, -1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, -868f, -1639f), var_0.c, var_0.d.x)), vec3<bool>(false, true, false))) * vec3<f32>(_wgslsmith_f_op_f32(min(1715f, var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, var_0.c.x), var_0.c.x)), func_3(reverseBits(u_input.c), vec4<bool>(any(vec3<bool>(var_0.b, var_0.b, var_0.d.x)), var_0.b, var_0.d.x, !var_0.b), global0[_wgslsmith_index_u32(u_input.b.x, 4u)], min(u_input.c, select(-3159i, -29648i, var_0.d.x))))), !var_0.d);
    var_0 = Struct_1(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(1u, 1u) >> ((39935u ^ var_1.a.x) % 32u), var_0.a.x, abs(u_input.b.x)), var_1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 446f) + vec3<f32>(-1000f, var_0.c.x, var_1.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_1.c.x) + vec3<f32>(1124f, -245f, -325f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0.c * var_0.c), _wgslsmith_f_op_vec3_f32(select(var_0.c, vec3<f32>(var_0.c.x, 888f, 1088f), vec3<bool>(var_1.d.x, var_0.d.x, var_1.b)))))), var_1.d.x)), !var_1.d);
    var_0 = var_1;
    var_0 = var_1;
    return false;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(385f, _wgslsmith_f_op_f32(select(-537f, -608f, true))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-889f + _wgslsmith_f_op_f32(f32(-1f) * -134f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1667f, -2746f)), func_2()))) + _wgslsmith_f_op_f32(ceil(291f)));
    var var_1 = select(!vec4<bool>(all(vec4<bool>(false, false, false, false)), !(4294967295u <= u_input.b.x), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec3<bool>(false, true, true))), vec4<bool>(!(!all(vec3<bool>(false, true, false))), false, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(false, 0i != (abs(u_input.c) ^ u_input.c), !(~u_input.b.x < firstLeadingBit(u_input.b.x)), all(vec3<bool>(true, true, func_3(13519i, vec4<bool>(false, true, true, true), Struct_3(vec4<bool>(true, false, true, false), vec4<i32>(1i, 33610i, 0i, u_input.a.x)), u_input.c)))));
    var_1 = vec4<bool>(true, true, true, true);
    let var_2 = min(u_input.a & abs(_wgslsmith_mod_vec2_i32(abs(u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.a.x, -1i)))), vec2<i32>(u_input.c, ~(-1125i)));
    var_1 = select(vec4<bool>(!(_wgslsmith_f_op_f32(sign(771f)) < 1f), all(var_1.xzy), true, var_1.x & !var_1.x), select(select(vec4<bool>(any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), var_1.x, var_1.x, true), select(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, true, true, var_1.x), true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x)), true), true), vec4<bool>(true, any(!vec3<bool>(var_1.x, false, false)), func_4(func_2(), ~vec4<u32>(12828u, 28287u, 5598u, 11261u)).x, func_3(-29782i, !vec4<bool>(var_1.x, true, true, var_1.x), Struct_3(vec4<bool>(false, true, var_1.x, true), vec4<i32>(-14868i, u_input.a.x, u_input.a.x, u_input.c)), ~u_input.a.x)), var_1.x), var_1.x);
    return !var_1.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mult_u32(4294967295u, 1u) >> (~4294967295u % 32u);
    let var_2 = ~_wgslsmith_div_u32(var_1, max(1u, ~u_input.b.x) << (0u % 32u));
    var_0 = var_1;
    let var_3 = Struct_2(select(vec2<bool>(reverseBits(-36564i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 22162i, 22844i), vec3<i32>(1i, 0i, u_input.a.x)), var_1 != var_1), func_1(), vec2<bool>(true, true)), countOneBits(vec3<i32>(-abs(2147483647i), u_input.a.x ^ ~u_input.a.x, u_input.c)));
    var var_4 = ~var_2;
    var var_5 = _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, ~9580u, u_input.b.x)), vec3<u32>(countOneBits(~0u), 1u, countOneBits(max(countOneBits(u_input.b.x), _wgslsmith_mod_u32(0u, u_input.b.x)))));
    var var_6 = any(vec3<bool>(var_3.a.x && var_3.a.x, false || (var_3.a.x & var_3.a.x), func_4(var_3.a.x, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_1, 20261u, u_input.b.x, var_1), vec4<u32>(1u, var_1, 22654u, var_2)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-531f, 353f, var_3.a.x)) + -549f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -242f)), -556f), false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f))), u_input.c, var_3.b | firstLeadingBit(-vec3<i32>(u_input.a.x, -19108i, u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(958f, 1139f, -317f) + vec3<f32>(332f, 259f, -1229f)), vec3<f32>(-1727f, -1000f, 274f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, 646f, 777f))))));
}

