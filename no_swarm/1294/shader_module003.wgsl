struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = min(~24712i, ~u_input.a);
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, firstTrailingBit(-2147483647i)), u_input.b), 0i, u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-702f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-210f - 235f), _wgslsmith_f_op_f32(f32(-1f) * -139f), all(vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -878f)))));
    var var_2 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.x, 38133u), vec3<u32>(global0.x, 26012u, 0u)) << ((vec3<u32>(45634u, 1u, global0.x) | ~vec3<u32>(global0.x, 47944u, 9900u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(~global0.x, ~global0.x, ~13954u) & _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 41909u, 16247u), vec3<u32>(14363u, global0.x, 4294967295u)), ~vec3<u32>(global0.x, global0.x, 11590u)), ~vec3<u32>(_wgslsmith_sub_u32(global0.x, 35565u), _wgslsmith_dot_vec4_u32(vec4<u32>(10567u, global0.x, global0.x, 0u), vec4<u32>(global0.x, 7255u, global0.x, global0.x)), _wgslsmith_div_u32(0u, 14310u))));
    var var_3 = ~vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(-34512i), 2147483647i), u_input.a, _wgslsmith_dot_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-9280i, -1i, u_input.a, u_input.b), vec4<i32>(-2147483647i, u_input.a, 21057i, -59921i)), vec4<i32>(u_input.b, 0i, u_input.a, -2147483647i)), -vec4<i32>(6145i, 17943i, 20185i, u_input.a) | vec4<i32>(-1i, u_input.a, 52031i, -26299i)));
    return min(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44446u, 1u, global0.x), ~vec4<u32>(4294967295u, global0.x, 2797u, global0.x)), _wgslsmith_clamp_u32(global0.x & global0.x, 26840u, abs(26434u))), global0.x, ~(~(~global0.x)), 14880u), reverseBits(vec4<u32>(global0.x, ~4294967295u, ~global0.x, 0u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<u32> {
    global0 = firstLeadingBit(vec3<u32>(~(~(~arg_1.a.x)), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(4782u, 51685u, arg_1.a.x), arg_0.x), arg_1.a.x));
    let var_0 = ~vec3<u32>(68367u, ~(67204u | arg_0.x) << (1u % 32u), 37097u);
    let var_1 = abs(arg_0 | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_0, max(arg_0, vec4<u32>(1u, 0u, arg_1.a.x, global0.x))), max(max(vec4<u32>(arg_0.x, 1u, arg_1.a.x, 8333u), arg_0), _wgslsmith_sub_vec4_u32(arg_0, arg_0))));
    let var_2 = Struct_3(vec3<u32>(abs(_wgslsmith_mult_u32(abs(0u), _wgslsmith_mult_u32(0u, 1u))), 4294967295u, 4294967295u), 589f);
    global0 = ~(~reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 14100u, 1u), ~arg_1.a)));
    return _wgslsmith_sub_vec4_u32(~arg_0, reverseBits(arg_0));
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(arg_0));
    var var_1 = vec4<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1499u ^ global0.x, ~global0.x, min(5869u, 0u)), vec3<u32>(global0.x, ~1u, global0.x | global0.x)), global0.x, 44333u) << (~(~(~vec4<u32>(4294967295u, 18809u, global0.x, 22477u))) % vec4<u32>(32u));
    var_1 = func_4(min(_wgslsmith_sub_vec4_u32(func_3(), vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.zwx, vec3<u32>(0u, 0u, 50862u)), 60964u, ~0u, ~global0.x)), min(vec4<u32>(_wgslsmith_div_u32(13404u, var_1.x), global0.x, _wgslsmith_mod_u32(var_1.x, var_1.x), ~var_1.x), vec4<u32>(global0.x, ~global0.x, 4294967295u, 7379u))), Struct_3(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.x), vec3<u32>(58887u, global0.x, global0.x))), -2082f));
    let var_2 = max(_wgslsmith_mod_i32(1i, 2147483647i), firstLeadingBit(u_input.a));
    var var_3 = ~2147483647i;
    return select(vec2<bool>(4294967295u == global0.x, false), !vec2<bool>(all(vec4<bool>(true, true, true, true)), -903f < _wgslsmith_f_op_f32(arg_0.x - var_0.x)), all(!vec4<bool>(true, any(vec2<bool>(true, true)), true, true)));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_2(-9208i);
    var var_1 = Struct_4(arg_2.yzz);
    var_0 = Struct_2(_wgslsmith_mult_i32(1i, 3049i));
    var var_2 = Struct_1(!vec4<bool>(!select(arg_1.x, true, arg_1.x), true, true, false));
    return countOneBits(~(~(~(~arg_0))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = arg_0;
    var var_1 = ~(~max(max(reverseBits(arg_2), global0.x), arg_2));
    var var_2 = _wgslsmith_div_i32(arg_1, _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, arg_1, 1i, arg_1) | vec4<i32>(u_input.a, arg_1, -686i, 36143i)), abs(-vec4<i32>(-24613i, -2124i, u_input.a, 1i)))));
    let var_3 = Struct_2(-5952i);
    var_2 = 3673i;
    return min(~(min(1u, ~global0.x) | _wgslsmith_sub_u32(~6315u, arg_2)), func_5(reverseBits(~arg_2), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), func_2(vec3<f32>(1700f, -970f, -605f)))), ~abs(max(vec4<i32>(arg_1, 23059i, u_input.a, -2147483647i), vec4<i32>(var_0.a, var_3.a, var_0.a, var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~abs(vec3<u32>(~global0.x >> (global0.x % 32u), ~global0.x, ~(~global0.x)));
    global0 = vec3<u32>(global0.x, global0.x, select(firstTrailingBit(global0.x) & 0u, func_1(Struct_2(-30845i), -17460i, 34965u) << (global0.x % 32u), reverseBits(1u) >= _wgslsmith_sub_u32(0u, global0.x))) << (vec3<u32>(global0.x, ~global0.x, abs(24486u) | ~global0.x) % vec3<u32>(32u));
    let var_0 = Struct_3(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(45014u, global0.x, 8546u)) >> (~vec3<u32>(1u, global0.x, global0.x) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, global0.x, 1u) >> (vec3<u32>(0u, global0.x, global0.x) % vec3<u32>(32u)))) ^ ((vec3<u32>(33354u, 39067u, global0.x) << (select(vec3<u32>(global0.x, global0.x, 21692u), vec3<u32>(global0.x, 0u, global0.x), vec3<bool>(true, true, false)) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(21099u, 644u, global0.x), vec3<u32>(global0.x, global0.x, global0.x)), ~vec3<u32>(global0.x, 0u, 8238u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1339f, 241f))) - _wgslsmith_f_op_f32(step(1169f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_1(select(!vec4<bool>(true, any(vec4<bool>(false, true, false, false)), true, all(vec2<bool>(false, true))), vec4<bool>(1074f != var_0.b, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, true, false)), true, var_0.a.x > 4294967295u, true))));
    let var_2 = var_0;
    global0 = func_3().xzz;
    let var_3 = Struct_2(~_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 48545i), vec3<i32>(u_input.b, u_input.a, u_input.b)), select(abs(vec3<i32>(u_input.a, 1i, u_input.a)), select(vec3<i32>(u_input.b, -33771i, -1i), vec3<i32>(-875i, 0i, 19782i), var_1.a.x), select(var_1.a.xyy, vec3<bool>(false, var_1.a.x, false), var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, abs(-74224i), firstTrailingBit(1i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b, var_2.b, -628f), vec3<f32>(808f, -1705f, -141f))) - _wgslsmith_div_vec3_f32(vec3<f32>(151f, var_0.b, var_2.b), vec3<f32>(var_2.b, 1625f, 662f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 221f, -1100f))), var_1.a.x)))));
}

