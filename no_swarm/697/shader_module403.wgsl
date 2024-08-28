struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1138f)))))), _wgslsmith_f_op_f32(f32(-1f) * -309f));
    let var_1 = _wgslsmith_clamp_vec4_i32(~(select(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(1i, 32053i, 0i, -20104i), vec4<i32>(0i, 1i, 2147483647i, 59315i), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)) ^ abs(vec4<i32>(1i, 1i, 1i, 1i))), vec4<i32>(~_wgslsmith_add_i32(0i, -2931i), firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-57173i, -4460i), vec2<i32>(-1i, -34295i)), 1i)), firstTrailingBit(firstTrailingBit(-2147483647i)), -6713i), ~reverseBits(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 8933i, 8318i, 37890i), vec4<i32>(-20688i, 2147483647i, 0i, 2147483647i)))));
    var var_2 = false;
    var_2 = true;
    var var_3 = Struct_1(_wgslsmith_div_f32(1265f, var_0.x));
    return any(vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = true;
    let var_1 = 13544i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - arg_0.a));
    var var_3 = ~arg_1;
    let var_4 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(-var_1, 3219i, ~(-35583i)), _wgslsmith_sub_i32(-37243i, var_1) >> (u_input.b % 32u)), firstTrailingBit(_wgslsmith_clamp_i32(arg_2.x, var_1, var_1)));
    return !vec3<bool>(any(vec3<bool>(false & var_0, arg_0.a == -1000f, !var_0)), var_0, all(vec4<bool>(false, func_3(), true, 1u <= u_input.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32) -> vec2<bool> {
    let var_0 = select(select(vec3<bool>(!arg_1.x || true, false, !all(arg_1.xw)), func_2(Struct_1(-325f), u_input.b, ~countOneBits(vec4<i32>(-2519i, 0i, 40168i, 1i))), !select(!vec3<bool>(arg_0.x, arg_0.x, false), !arg_0.zyy, arg_0.x & arg_1.x)), func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) + -885f)), _wgslsmith_sub_u32(~arg_2, _wgslsmith_dot_vec4_u32(~vec4<u32>(17126u, u_input.a.x, arg_2, u_input.b), vec4<u32>(u_input.b, 1u, 4294967295u, 4294967295u))), vec4<i32>(1i, 1i, 1i, 1i)), !vec3<bool>(arg_0.x, true, func_2(Struct_1(593f), 0u, vec4<i32>(1i, 1i, 1i, 1i)).x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -415f));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-678f, -1064f))))), _wgslsmith_div_f32(var_1.a, 502f));
    let var_3 = _wgslsmith_add_vec4_u32(~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 16686u, arg_2), vec4<u32>(0u, arg_2, u_input.b, u_input.a.x)) >> (vec4<u32>(1u, 1u, 24036u, u_input.a.x) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 4294967295u), u_input.a), select(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(0u, arg_2), vec2<bool>(var_0.x, var_0.x))), arg_2), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1288u, arg_2, 1u, 38060u), vec4<u32>(110526u, arg_2, arg_2, 27700u), vec4<u32>(112256u, u_input.a.x, arg_2, 73998u)), reverseBits(vec4<u32>(arg_2, 4294967295u, arg_2, u_input.b))) << (u_input.a.x % 32u), 4294967295u, countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, u_input.b, 3311u), vec3<u32>(0u, u_input.b, 79240u)), u_input.a.x))));
    var var_4 = select(func_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -421f)))), u_input.a.x << (_wgslsmith_dot_vec2_u32(min(var_3.zw, var_3.yw), ~vec2<u32>(u_input.b, u_input.a.x)) % 32u), vec4<i32>(-1i, select(16350i, 1i, var_0.x) & 0i, ~1i, i32(-1i) * -1i)).x, select(!(var_0.x || all(arg_1)), arg_0.x, select(true, !(!arg_0.x), true)), false);
    return vec2<bool>(var_0.x, !select(arg_0.x, false, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, arg_1.a), vec3<f32>(var_0.a, var_0.a, 564f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_2))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, var_0.a, var_0.a), vec3<f32>(arg_2, arg_1.a, 418f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(627f, -109f, var_0.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, arg_1.a, var_0.a) * vec3<f32>(var_0.a, -964f, 1000f)))), vec3<bool>(true, false, all(select(vec2<bool>(arg_0.x, false), vec2<bool>(false, arg_0.x), false))))), false));
    var var_2 = countOneBits(firstTrailingBit(~32343i));
    let var_3 = var_1;
    return Struct_1(arg_1.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(4294967295u, 9967u, ~arg_0.x, 1u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(~(-2147483647i), 1i << ((u_input.a.x >> (45432u % 32u)) % 32u), -7544i >> (min(12414u, 1u) % 32u), 2147483647i)), ~abs(firstTrailingBit(vec4<i32>(-2147483647i, -3948i, -2147483647i, 30590i))));
    let var_1 = func_5(vec3<u32>(min(u_input.b, 0u), ~15653u, 1u) | ~firstTrailingBit(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), func_4(select(!func_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), 27125u), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), Struct_1(392f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) * -553f), 2392f)), ~firstTrailingBit(reverseBits(u_input.a))), func_4(vec2<bool>(true, true), func_4(vec2<bool>(true, true), func_4(vec2<bool>(false, false), func_4(vec2<bool>(false, true), Struct_1(-952f), -356f, vec2<u32>(u_input.a.x, 30860u)), _wgslsmith_div_f32(-149f, -298f), vec2<u32>(u_input.a.x, 46795u)), _wgslsmith_f_op_f32(step(886f, _wgslsmith_f_op_f32(f32(-1f) * -1012f))), _wgslsmith_add_vec2_u32(~u_input.a, u_input.a)), _wgslsmith_f_op_f32(887f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - -1590f) * -612f)), abs(min(u_input.a, u_input.a ^ vec2<u32>(4294967295u, 16682u)))));
    var var_2 = select(!func_2(func_5(countOneBits(vec3<u32>(4294967295u, u_input.a.x, 48661u)), func_5(vec3<u32>(10135u, 1u, 0u), Struct_1(var_1.a), var_1), func_4(vec2<bool>(false, false), Struct_1(-906f), var_1.a, vec2<u32>(u_input.a.x, 0u))), reverseBits(u_input.b), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(var_0, var_0), var_0)).zy, vec2<bool>(true, false), func_1(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)), all(vec4<bool>(false, true, false, true))), u_input.a.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(125f, var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a))))) + var_1.a));
    var var_4 = reverseBits(var_0.zw);
    let var_5 = u_input.a.x;
    var_2 = !(!vec2<bool>(false, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(max(i32(-1i) * -10209i, -2147483647i << (var_5 % 32u)), select(~(-24333i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_4.x, var_0.x, var_4.x), vec4<i32>(var_4.x, 2147483647i, var_4.x, var_0.x)), !var_2.x), -11612i, ~(-71011i)), _wgslsmith_mod_vec4_i32(~(var_0 | vec4<i32>(-1i, var_4.x, 22421i, var_4.x)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -64696i, var_4.x, 11210i)), var_0), firstLeadingBit(~(~1u)), -abs(vec4<i32>(_wgslsmith_div_i32(7561i, var_0.x), -3083i, ~var_0.x, -22292i)), -vec2<i32>((var_4.x >> (u_input.b % 32u)) << (var_5 % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_4.x, 0i), var_0.zzz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.a)))), _wgslsmith_div_f32(var_3.a, var_1.a), -1124f, _wgslsmith_f_op_f32(trunc(var_1.a))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_3.a, 1640f, -442f) + vec4<f32>(var_3.a, var_1.a, 326f, var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, var_1.a, -1000f, var_3.a)))), !vec4<bool>(var_2.x, var_2.x, true, var_2.x)))));
}

