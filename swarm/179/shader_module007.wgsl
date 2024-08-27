struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_2(vec2<i32>(arg_3.x, ~(~_wgslsmith_div_i32(arg_3.x, arg_1.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-585f - _wgslsmith_f_op_f32(f32(-1f) * -782f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))) + -1066f);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(~(~firstLeadingBit(1u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1411f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(1000f, -481f)))));
    let var_2 = Struct_3(u_input.a, Struct_2(abs(vec2<i32>(-40260i, u_input.a) & vec2<i32>(u_input.a, 2147483647i)) & _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.a) | vec2<i32>(-15818i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0, Struct_2(vec2<i32>(1i, -1591i)), Struct_2(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a)))) - 517f), 1788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)), _wgslsmith_f_op_f32(min(941f, -779f))), Struct_1(96641u));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.c.x, var_2.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-837f + _wgslsmith_f_op_f32(func_3(var_2.d, var_2.b, var_2.b, vec2<i32>(1i, var_2.a)))))));
    var var_3 = select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, all(vec2<bool>(false, true)), -896f == var_2.c.x), vec3<bool>(true, true, all(vec3<bool>(false, false, false))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))))), vec3<bool>(true, true, all(vec3<bool>(629f < var_2.c.x, any(vec2<bool>(false, true)), false))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(false, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, false, true)) & all(vec2<bool>(false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), 1i == _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, var_2.a, -1i), vec4<i32>(1i, -27008i, 2147483647i, var_2.b.a.x)))));
    return var_2.d.a;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(110546u, 1u) >> (arg_2 % 32u), func_2(), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(reverseBits(0u))), func_2());
    var_0 = vec4<u32>(max(~1u, ~1u & abs(var_0.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(min(40293u, arg_2), ~34436u, arg_2, ~14513u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, arg_2, 52855u, 20532u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 1u, 12702u, 4294967295u), vec4<u32>(arg_2, arg_2, 12630u, var_0.x))) >> (vec4<u32>(var_0.x << (15083u % 32u), 4294967295u, 1806u, arg_2) % vec4<u32>(32u))), select(0u, _wgslsmith_add_u32(var_0.x | ~arg_2, ~66896u), false), arg_2 | _wgslsmith_mult_u32(countOneBits(countOneBits(arg_2)), abs(arg_2)));
    var var_1 = abs(_wgslsmith_add_vec4_i32(vec4<i32>(~0i, reverseBits(arg_1.x >> (arg_2 % 32u)), abs(_wgslsmith_add_i32(2147483647i, -26929i)), -39947i), select(arg_1, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1, arg_1, vec4<i32>(-1i, u_input.a, 1i, arg_1.x)), vec4<i32>(21425i, u_input.a, arg_1.x, -2147483647i)), vec4<bool>(true, all(vec2<bool>(true, true)), 0u != var_0.x, false))));
    var var_2 = true;
    var var_3 = 1f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = !select(vec3<bool>(true, func_1(-974f, abs(vec4<i32>(107003i, 37619i, u_input.a, 1i)), ~27832u), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), false);
    var_1 = select(vec3<bool>((-28739i ^ firstTrailingBit(u_input.a)) > _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0, 2147483647i), vec3<i32>(var_0, u_input.a, var_0), vec3<i32>(-42565i, var_0, 2595i)), abs(vec3<i32>(u_input.a, u_input.a, var_0))), var_1.x, !var_1.x), vec3<bool>(!var_1.x, any(var_1.yz), true), !select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(false, false, var_1.x), select(true, var_1.x, var_1.x)), !select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, var_1.x && var_1.x, true)));
    var_1 = vec3<bool>(var_1.x, var_1.x, var_1.x);
    let var_2 = Struct_2(firstLeadingBit(abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_0, -1i), ~vec2<i32>(u_input.a, -1i)))));
    var_1 = !select(vec3<bool>(false, any(select(vec3<bool>(true, var_1.x, true), vec3<bool>(false, false, true), var_1.x)), (true | var_1.x) | false), select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(var_1.x, true, true)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), true), !vec3<bool>(var_1.x, true, true)), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false), true)), vec3<bool>(true, true, any(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-(vec4<i32>(1204i, u_input.a, 27498i, var_2.a.x) & vec4<i32>(var_0, var_0, var_2.a.x, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(var_0, 2147483647i, 1931i, var_0)) << (vec4<u32>(1u, 0u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 7296u, 0u)), ~vec4<u32>(1u, 32870u, 1u, 8945u)), ~27515u) % vec4<u32>(32u)), ~(~vec3<u32>(1u, 19201u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 29431u), vec3<u32>(13666u, 50656u, 59303u)))), firstLeadingBit(51043u), -119f);
}

