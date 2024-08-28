struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(-1i, arg_0);
    let var_1 = firstTrailingBit(~(~(_wgslsmith_sub_vec2_u32(u_input.b.xz, u_input.b.zy) ^ ~vec2<u32>(u_input.b.x, u_input.b.x))));
    var var_2 = countOneBits(min(min(select(vec4<i32>(arg_0, 2147483647i, u_input.a.x, -9980i), vec4<i32>(u_input.c, arg_0, u_input.c, arg_0), arg_2.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 12406i, u_input.a.x), vec4<i32>(-23619i, 29869i, 0i, -37998i))), vec4<i32>(reverseBits(arg_0), -1828i, abs(-71368i), min(u_input.c, 18927i))) << (min(~(vec4<u32>(var_1.x, 0u, 3654u, 0u) >> (vec4<u32>(var_1.x, var_1.x, 533u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 6729u), var_1.x, 4294967295u, abs(25456u))) % vec4<u32>(32u)));
    var var_3 = Struct_1(true, arg_1.x, 562f);
    var var_4 = ~(vec4<i32>(~arg_0 | 2147483647i, _wgslsmith_div_i32(var_2.x, -1i) & -u_input.a.x, -37461i, u_input.a.x) ^ -(vec4<i32>(-1i) * -vec4<i32>(arg_0, -14810i, -43556i, -57968i)));
    return vec4<bool>(abs(~reverseBits(u_input.b.x)) > _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, u_input.b.x, var_1.x, 12789u)), ~(~vec4<u32>(69237u, u_input.b.x, u_input.b.x, var_1.x))), !var_3.a, select(any(vec4<bool>(any(vec3<bool>(false, var_3.a, var_3.a)), !var_3.a, false, arg_2.a)), arg_2.a, arg_2.a & all(!vec4<bool>(false, true, var_3.a, true))), (select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11496u, 60817u, 0u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), u_input.b.x ^ 83917u, var_3.a) <= u_input.b.x) != arg_2.a);
}

fn func_2() -> i32 {
    let var_0 = max(((vec2<i32>(0i, u_input.c) >> (~vec2<u32>(26154u, 27253u) % vec2<u32>(32u))) << (vec2<u32>(42693u, ~u_input.b.x) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_div_i32(23699i, _wgslsmith_clamp_i32(u_input.c, u_input.a.x, u_input.c)), _wgslsmith_sub_i32(select(-1i, 2147483647i, false), _wgslsmith_mult_i32(-10616i, u_input.c))), u_input.a.xy);
    var var_1 = Struct_1(false, 671f, 437f);
    var_1 = Struct_1(all(select(select(select(vec4<bool>(var_1.a, false, false, false), vec4<bool>(var_1.a, false, var_1.a, var_1.a), true), func_3(19514i, vec3<f32>(var_1.c, -1000f, 217f), Struct_1(false, var_1.c, var_1.b)), true), select(select(vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(true, true, true, true), true), vec4<bool>(var_1.a, false, var_1.a, false), true), !select(vec4<bool>(true, false, var_1.a, var_1.a), vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec4<bool>(var_1.a, true, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_1.c - -737f)) + var_1.b), var_1.b);
    var_1 = Struct_1(all(select(func_3(var_0.x, vec3<f32>(var_1.b, var_1.b, -1840f), Struct_1(var_1.a, var_1.b, var_1.b)).yyw, select(select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(true, var_1.a, var_1.a)), vec3<bool>(false, true, var_1.a), !vec3<bool>(false, var_1.a, var_1.a)), vec3<bool>(1055f != var_1.b, !var_1.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -111f), var_1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-880f, var_1.c))), 741f);
    var_1 = Struct_1(_wgslsmith_div_f32(var_1.b, var_1.c) > _wgslsmith_f_op_f32(var_1.b - 1136f), _wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))))), var_1.c)));
    return -u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(u_input.c, u_input.a.x, -5587i, u_input.c) ^ vec4<i32>(countOneBits(1i), -1i, u_input.c, func_2())), vec4<i32>(~(firstTrailingBit(u_input.a.x) << (1u % 32u)), max(u_input.a.x, min(-u_input.a.x, -10690i)), -50228i, _wgslsmith_add_i32(_wgslsmith_div_i32(select(-58915i, u_input.c, false), _wgslsmith_clamp_i32(0i, 8256i, -1i)), -1i)));
    var var_1 = vec2<i32>(2147483647i << (~u_input.b.x % 32u), _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_add_i32(u_input.c, func_2())));
    var_0 = ~2147483647i;
    var var_2 = vec2<bool>(!all(!vec2<bool>(true, arg_1.a)), 1i > var_1.x);
    var var_3 = Struct_1(arg_1.a, 690f, _wgslsmith_f_op_f32(-1f));
    return max(~(~vec4<u32>(countOneBits(u_input.b.x), 1u, 1u, u_input.b.x & arg_0)), ~vec4<u32>(~(42032u >> (arg_0 % 32u)), arg_0, 4294967295u, ~(~125309u)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(1u << (_wgslsmith_div_u32(1u, arg_1.x & u_input.b.x) % 32u), _wgslsmith_mult_u32(countOneBits(~0u), arg_1.x)), 247u, ~33217u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1292f))))), 713f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1547f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1668f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1111f))))));
    let var_3 = Struct_1(false, var_2.x, _wgslsmith_f_op_f32(-var_2.x));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.c, -2559f, var_3.b)))))))));
    return vec2<bool>(all(vec2<bool>(!any(vec4<bool>(true, arg_0, var_0, true)), true)), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!any(func_4(true, func_1(u_input.b.x, Struct_1(true, -567f, -1066f), Struct_1(true, 1000f, -1550f), Struct_1(false, 687f, 151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1684f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f - 402f))))), 1000f);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-775f, 575f), _wgslsmith_f_op_f32(max(-921f, -145f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1661f * var_0.b) * var_0.c), 1111f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.c)));
    var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, -1164f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -535f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_0.c, var_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1385f)))))));
    var var_2 = -175f;
    var var_3 = (abs(vec4<i32>(abs(25231i), i32(-1i) * -3488i, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(16989i, -5078i)), -1i)) & vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), u_input.a.yz), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.c), u_input.a.yz)), u_input.c, max(-1i, -30430i), 0i)) << (~reverseBits(vec4<u32>(0u, 4294967295u, countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.yz))) % vec4<u32>(32u));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c, var_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-217f, 172f) + vec2<f32>(var_1.x, 586f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 405f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(590f, var_1.x))), vec2<f32>(-1481f, 1760f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1138f, 1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-485f, var_0.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(53495u, reverseBits(reverseBits(select(vec4<i32>(var_3.x, var_3.x, u_input.a.x, var_3.x) << (vec4<u32>(1990u, 16197u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(1i, var_3.x, var_3.x, var_3.x) << (vec4<u32>(4294967295u, u_input.b.x, 1u, 20729u) % vec4<u32>(32u)), select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(false, false, true, var_0.a), vec4<bool>(var_0.a, var_0.a, false, false))))), -(~(~firstTrailingBit(vec4<i32>(-13256i, 0i, -1524i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 789f, 1008f) + vec3<f32>(1299f, var_0.b, var_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2286f, var_1.x, var_0.b), vec3<f32>(var_1.x, var_1.x, var_1.x), var_0.a)))), vec3<f32>(_wgslsmith_div_f32(var_1.x, var_0.c), var_0.c, _wgslsmith_f_op_f32(var_0.b + 198f))))));
}

