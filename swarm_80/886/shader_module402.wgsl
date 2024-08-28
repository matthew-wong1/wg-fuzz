struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    global0 = _wgslsmith_div_i32(abs(min(0i, ~arg_1)), 13125i) | -reverseBits(_wgslsmith_clamp_i32(~1i, -arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-9931i, arg_1, -26991i), vec3<i32>(arg_1, arg_1, -16559i))));
    global0 = ~arg_1;
    global0 = 23454i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(655f, -1002f))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081f * 1933f) * _wgslsmith_f_op_f32(-var_0.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(1507f)), any(vec4<bool>(false, true, true, true))))) + vec2<f32>(arg_2.a, 894f)));
    return !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(false, true, false), true), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -218f));
    var var_1 = vec3<bool>(true | !func_3(Struct_2(vec3<u32>(4294967295u, 24471u, arg_0)), i32(-1i) * -4018i, Struct_1(var_0.a)), !select(true, true, true) | any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), reverseBits(0u) != countOneBits(arg_0));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(~99211u, countOneBits(_wgslsmith_mult_u32(firstTrailingBit(0u), 4294967295u))), abs(u_input.a));
    var var_3 = Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, 660f))), _wgslsmith_f_op_f32(min(-886f, -1058f)))));
    var var_4 = !(firstLeadingBit(19998i) != firstTrailingBit(~firstLeadingBit(1i)));
    return ~(~abs(countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, arg_0)))) ^ vec4<u32>(~(~arg_0), countOneBits(min(arg_0, arg_0)), 18124u, reverseBits(arg_0 << (50192u % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(1u, 31075u, 925u)), vec3<u32>(24741u, arg_0.a.x, countOneBits(arg_1.x))) & arg_1.wzx);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i << (arg_0.a.x % 32u), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -49630i, 2147483647i, 16563i), vec4<i32>(-5096i, -10403i, -48954i, 1i)), -83957i), 31312i), ~_wgslsmith_add_i32(33547i, _wgslsmith_add_i32(0i, 7750i)), 1i), reverseBits(-select(vec4<i32>(1i, 2147483647i, -2147483647i, -95530i), vec4<i32>(1i, -91006i, -1i, 21083i), arg_2)) >> (vec4<u32>(countOneBits(1u), abs(select(23398u, 1u, arg_2)), 1u, ~_wgslsmith_mult_u32(var_0.a.x, arg_0.a.x)) % vec4<u32>(32u)));
    global0 = abs(-1i);
    var var_1 = select(-41909i, _wgslsmith_mod_i32(1i, ~select(39924i, -1i, true)), arg_2) << (1u % 32u);
    return vec2<bool>(false, true);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = 17217i;
    let var_1 = func_4(arg_0, firstLeadingBit(select(~func_2(u_input.a), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.a.x, 1129u, u_input.a, 4294967295u)), min(vec4<u32>(u_input.a, 4294967295u, u_input.a, 54544u), vec4<u32>(u_input.a, u_input.a, arg_0.a.x, arg_0.a.x))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-301f))))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(517f)) * _wgslsmith_f_op_f32(floor(-1826f))))));
    global0 = _wgslsmith_mult_i32(-47121i, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1, 9467i, 30363i, arg_1)), ~vec4<i32>(-1i, 2147483647i, arg_1, 2147483647i)), _wgslsmith_sub_i32(~arg_1 << (16720u % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(-10797i, arg_1), -24494i)), -arg_1));
    var var_2 = max(min(abs(vec2<i32>(firstLeadingBit(arg_1), _wgslsmith_add_i32(62839i, -2147483647i))), ~(~firstLeadingBit(vec2<i32>(43400i, -18570i)))), firstTrailingBit(max(-abs(vec2<i32>(arg_1, 46004i)), vec2<i32>(arg_1, arg_1))));
    var_2 = (vec2<i32>(~var_2.x >> (countOneBits(50000u) % 32u), var_2.x) << ((_wgslsmith_div_vec2_u32(arg_0.a.zx, select(vec2<u32>(arg_0.a.x, 4308u), vec2<u32>(8981u, u_input.a), var_1)) ^ (~arg_0.a.xy << (_wgslsmith_sub_vec2_u32(arg_0.a.xy, vec2<u32>(arg_0.a.x, 15881u)) % vec2<u32>(32u)))) % vec2<u32>(32u))) << (arg_0.a.zy % vec2<u32>(32u));
    return ~55409u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5335i;
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(48337i, 1i), vec2<i32>(-32393i, 32364i)), select(vec2<i32>(-1i) * -vec2<i32>(1i, 9886i), select(vec2<i32>(-42003i, 0i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(11740i, -6388i)), true), false)), -_wgslsmith_mult_i32(i32(-1i) * -21944i, 0i), -15712i);
    var var_1 = ~select(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(3100u, 1u, 58593u), vec3<u32>(4294967295u, 4294967295u, u_input.a))), vec3<u32>(firstTrailingBit(func_1(Struct_2(vec3<u32>(74667u, 37541u, 32041u)), -14022i)), ~(u_input.a | u_input.a), u_input.a), u_input.a > u_input.a);
    var_1 = vec3<u32>(~(firstTrailingBit(u_input.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48062u, 1u) >> (vec3<u32>(var_1.x, 16782u, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.a, var_1.x))), (countOneBits(_wgslsmith_clamp_u32(6127u, u_input.a, var_1.x)) | min(~4294967295u, ~10927u)) ^ (_wgslsmith_clamp_u32(reverseBits(u_input.a), var_1.x, var_1.x) & var_1.x), var_1.x);
    var_1 = vec3<u32>(var_1.x, 29030u, 1u << (_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(var_1.x << (u_input.a % 32u), u_input.a, abs(1u))) % 32u));
    var var_2 = -681f;
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<i32>(min(2147483647i, -51784i), -1i) & vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(11151i, -33582i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-1392i, 32314i, -2147483647i), vec3<i32>(0i, -4303i, 28404i))), -_wgslsmith_mult_i32(-26289i, 47047i)));
}

