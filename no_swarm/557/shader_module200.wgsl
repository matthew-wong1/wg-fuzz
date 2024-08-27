struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(firstTrailingBit(vec4<i32>(-abs(u_input.b.x), ~1i, u_input.a.x, 8129i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(sign(342f)))), 1u, select(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) | u_input.c, u_input.c | _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.b.x)), false));
    let var_1 = vec3<i32>(var_0.a.x, var_0.d, 13547i);
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_1.x, 0i, u_input.c), var_0.a), var_0.a, var_0.a), var_0.b, 0u, _wgslsmith_div_i32(-31476i, abs(select(i32(-1i) * -1i, -27891i, all(vec2<bool>(false, false))))));
    var var_2 = _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.c, var_0.c), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c, 5u), vec2<u32>(17126u, u_input.d))), vec2<u32>(abs(4294967295u), 6363u), vec2<u32>(u_input.d, abs(73670u)))), countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.c), vec2<u32>(1u, 17712u))));
    let var_3 = ~var_2.x;
    return -var_0.a.x <= var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    let var_0 = u_input.d;
    var var_1 = arg_1.wz;
    var var_2 = !vec2<bool>(false, func_3());
    let var_3 = vec3<i32>(u_input.c, abs(~_wgslsmith_mod_i32(-28619i, 3328i)), -_wgslsmith_add_i32(~1i, 1i) | max(-2147483647i, arg_1.x));
    var var_4 = Struct_2(arg_0);
    return var_2.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> bool {
    var var_0 = select(select(vec4<bool>(false, arg_1.x, true, true), vec4<bool>(any(vec4<bool>(false, false, arg_1.x, arg_1.x)), true || !arg_1.x, u_input.c <= arg_2, false), all(vec3<bool>(arg_1.x, func_2(Struct_1(arg_0.a.a, arg_0.a.b, 51027u, -6935i), vec4<i32>(arg_0.a.a.x, u_input.c, -2147483647i, -24363i)), func_3()))), select(vec4<bool>(any(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), true, arg_1.x, any(arg_1)), vec4<bool>(!(false || arg_1.x), true, arg_1.x, any(select(arg_1.yx, arg_1.zz, false))), false), true);
    var var_1 = vec4<u32>(6847u, 1u, u_input.d >> (u_input.d % 32u), _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(9689u, arg_0.a.c, u_input.d), ~u_input.d << (u_input.d % 32u)));
    var_0 = !vec4<bool>(select(firstLeadingBit(u_input.d) < ~var_1.x, false, true), any(select(arg_1.xx, var_0.yy, !vec2<bool>(arg_1.x, arg_1.x))), all(vec4<bool>(arg_1.x, all(vec3<bool>(var_0.x, arg_1.x, arg_1.x)), !var_0.x, arg_1.x)), any(!select(vec3<bool>(var_0.x, false, var_0.x), arg_1, vec3<bool>(arg_1.x, true, arg_1.x))));
    let var_2 = select(var_0.zx, !select(vec2<bool>(true, true), vec2<bool>(false, !arg_1.x), !var_0.x), vec2<bool>(arg_1.x == all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), false));
    var var_3 = Struct_1(vec4<i32>(countOneBits(34066i), -17256i, ~((i32(-1i) * -17910i) >> (select(arg_0.a.c, arg_0.a.c, arg_1.x) % 32u)), -5662i >> (~arg_0.a.c % 32u)), arg_0.a.b, _wgslsmith_clamp_u32(u_input.d, ~(~(~u_input.d)), abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.xx), select(var_1.zw, var_1.zy, false)))), select(arg_2, arg_0.a.d, !var_0.x));
    return select(func_3(), false, false);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1i, arg_2.a.x, 2851i), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, 17835i ^ arg_2.a.x)), vec2<i32>(min(u_input.b.x, arg_3) << (u_input.d % 32u), 0i)) == 33032i;
    let var_1 = vec2<i32>(arg_3, u_input.c);
    var_0 = true;
    let var_2 = firstLeadingBit(~(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(31818u, 65671u, arg_1.a.x, 1u), vec4<u32>(1u, 4294967295u, 94836u, 0u), vec4<bool>(arg_0, arg_0, false, arg_0)), ~vec4<u32>(4294967295u, 41132u, arg_2.c, arg_1.a.x))));
    var_0 = func_2(Struct_1(arg_2.a, 1000f, max(u_input.d, _wgslsmith_dot_vec4_u32(var_2, ~var_2)), i32(-1i) * -arg_2.d), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(arg_2.a, vec4<i32>(arg_2.a.x, arg_2.d, arg_3, arg_2.a.x)), ~arg_2.a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_2(Struct_1(vec4<i32>(u_input.b.x, 0i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(1000f - 276f), u_input.d, -38658i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -max(u_input.a.x, ~2147483647i)), Struct_3(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, 7593u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, 84482u), vec3<u32>(4294967295u, u_input.d, 6818u))))), Struct_1(-(vec4<i32>(u_input.c, 1i, 2147483647i, 39456i) >> (vec4<u32>(3562u, 1u, u_input.d, 1u) % vec4<u32>(32u))) & vec4<i32>(~26555i, u_input.c, ~(-11358i), -4900i), -1000f, ~0u, countOneBits(1i)), -95222i);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(474f, 809f) + vec2<f32>(212f, 155f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1342f, 316f)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, -322f) * vec2<f32>(-217f, 613f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 1f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f) - _wgslsmith_f_op_f32(1f + -738f)), 141f)));
    var var_2 = vec3<bool>(false, false, any(vec4<bool>(false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), false)));
    let var_3 = var_2.x;
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(922f, -1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, var_1.x)) - vec2<f32>(316f, var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(315f, 961f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2402f, var_1.x)), vec2<f32>(var_1.x, 1339f), var_2.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1100f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - 775f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, -435f), vec2<f32>(-504f, -886f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-609f, -1204f))))) - vec2<f32>(-1671f, _wgslsmith_f_op_f32(var_1.x + 1000f)))), vec3<f32>(-645f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)), ~u_input.d);
}

