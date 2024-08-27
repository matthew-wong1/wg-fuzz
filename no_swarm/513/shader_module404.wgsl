struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(abs(u_input.a), ~(u_input.a >> (abs(~0u) % 32u)));
    var var_1 = vec4<i32>(-55683i, ~_wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(0i, -8727i, 30234i, 47798i)), firstLeadingBit(vec4<i32>(-2147483647i, 0i, 0i, 14120i)) >> ((vec4<u32>(u_input.a, 0u, 4294967295u, 13988u) >> (vec4<u32>(1u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), max(-((i32(-1i) * -2147483647i) >> (u_input.a % 32u)), abs(countOneBits(~1i))), _wgslsmith_mult_i32(1i, abs(38789i)));
    var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, firstTrailingBit(39175i), countOneBits(1i)), -vec4<i32>(-2053i, 23145i, 24554i, 0i)), -select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -15012i, var_1.x, 30927i), vec4<i32>(-7191i, -39739i, var_1.x, 2147483647i)), ~vec4<i32>(37685i, var_1.x, -1i, -11367i), true)) | (~(~vec4<i32>(-67677i, var_1.x, var_1.x, var_1.x) << (select(vec4<u32>(u_input.a, 105052u, 15124u, u_input.a), vec4<u32>(u_input.a, 32648u, u_input.a, 7725u), vec4<bool>(true, false, true, false)) % vec4<u32>(32u))) & min(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(22146i, 9004i, -2147483647i, -4610i), vec4<i32>(17719i, var_1.x, -2147483647i, var_1.x)), abs(vec4<i32>(var_1.x, 0i, 83050i, -19454i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 2147483647i, 0i, -1i), vec4<i32>(var_1.x, -1i, var_1.x, 10989i))));
    let var_2 = ~min(vec4<i32>(~var_1.x << (u_input.a % 32u), 13724i, ~(~32767i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, -1i), ~vec3<i32>(var_1.x, 22014i, 0i))), vec4<i32>(countOneBits(2147483647i), -abs(var_1.x), abs(0i), abs(-30046i)));
    var_1 = countOneBits(reverseBits(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.yx, var_1.xz) >> (~47795u % 32u), _wgslsmith_div_i32(i32(-1i) * -1i, var_2.x ^ 2147483647i), -44258i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1298u, u_input.a)) % 32u))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.x, -485f), _wgslsmith_f_op_vec2_f32(round(arg_0.a))))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_0.a))));
    let var_1 = firstLeadingBit(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(57566u, u_input.a), ~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 72193u)), abs(~vec2<u32>(u_input.a, u_input.a)))));
    let var_2 = arg_0;
    var var_3 = var_2;
    var var_4 = u_input.a;
    return ~vec3<i32>(~arg_2.a.x, -2147483647i, _wgslsmith_div_i32(max(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, 2147483647i, 0i, arg_2.a.x), vec4<i32>(2147483647i, arg_1.a.x, -16521i, arg_1.a.x))), -2147483647i));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = all(vec3<bool>(false, true, any(vec3<bool>(true, true, true))));
    var var_1 = !((~31716u | abs(_wgslsmith_dot_vec4_u32(vec4<u32>(99769u, 43455u, 0u, 55492u), vec4<u32>(u_input.a, 0u, u_input.a, 1u)))) > 36409u);
    var_1 = false;
    let var_2 = _wgslsmith_clamp_i32(arg_1.x ^ (i32(-1i) * -31207i), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.x, 1i), -737i), _wgslsmith_div_i32(arg_0, ~func_2(arg_2, Struct_2(arg_1.yz), Struct_2(vec2<i32>(arg_1.x, arg_0)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)).x));
    var_0 = all(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    return Struct_1(arg_3.a);
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    return vec4<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1092f))) + _wgslsmith_f_op_f32(-arg_0.a.x)) < arg_0.a.x, true);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.a.x, ~arg_0.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -10054i), vec2<i32>(-45169i, 58129i)), false), _wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0.a.x, arg_0.a.x), -vec2<i32>(arg_0.a.x, -16948i)) & _wgslsmith_mod_vec2_i32(arg_0.a, ~vec2<i32>(arg_0.a.x, arg_0.a.x))) < -(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -1i, arg_0.a.x, -44616i), vec4<i32>(-54311i, 12444i, -59042i, -8635i))));
    let var_1 = 0i;
    var_0 = !(!select((65040u & u_input.a) < 3991u, !select(false, true, false), all(vec2<bool>(false, false))));
    var var_2 = !func_5(func_4(-24842i, ~func_2(Struct_1(vec2<f32>(-1636f, -3109f)), arg_0, Struct_2(vec2<i32>(var_1, var_1)), vec2<bool>(false, false)), Struct_1(vec2<f32>(-133f, 1014f)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, 357f)))));
    var var_3 = u_input.a;
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0));
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = -abs(37213i);
    let var_2 = func_4(-2147483647i >> (u_input.a % 32u), _wgslsmith_div_vec3_i32(((vec3<i32>(arg_1.a.x, -1i, -13552i) >> (vec3<u32>(arg_2, 4294967295u, u_input.a) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a, arg_2, 56654u) % vec3<u32>(32u))) >> (vec3<u32>(~arg_2, ~u_input.a, 1u) % vec3<u32>(32u)), select(-func_2(Struct_1(vec2<f32>(arg_0, arg_0)), arg_3, arg_1, vec2<bool>(false, false)), -vec3<i32>(arg_3.a.x, arg_3.a.x, 2717i), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), false))), func_4(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(arg_1.a.x, -84427i, 0i)), 49535i), min(vec3<i32>(-25376i, -2147483647i, 2147483647i), countOneBits(vec3<i32>(-2147483647i, 31576i, -72827i))) | func_2(func_4(arg_1.a.x, vec3<i32>(-15514i, arg_1.a.x, arg_1.a.x), Struct_1(vec2<f32>(1200f, -1017f)), Struct_1(vec2<f32>(-246f, arg_0))), func_1(Struct_2(vec2<i32>(arg_3.a.x, arg_1.a.x))), arg_3, vec2<bool>(true, true)), func_4(~0i, ~vec3<i32>(11816i, arg_1.a.x, arg_1.a.x), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_3.a.x, 17389i), vec3<i32>(1i, 40207i, -1i)), vec3<i32>(arg_3.a.x, 1i, 6652i), func_4(-90437i, vec3<i32>(arg_1.a.x, arg_3.a.x, arg_1.a.x), Struct_1(vec2<f32>(824f, arg_0)), Struct_1(vec2<f32>(-176f, arg_0))), Struct_1(vec2<f32>(arg_0, 840f))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-811f, arg_0), vec2<f32>(1000f, 292f)))), func_4(-1i, _wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_1.a.x, -8506i, arg_3.a.x), vec3<i32>(-17018i, arg_3.a.x, 2147483647i)), vec3<i32>(-37218i, 22757i, 0i)), func_4(-arg_1.a.x, vec3<i32>(-1i, -2147483647i, arg_3.a.x) ^ vec3<i32>(1i, -78747i, arg_1.a.x), Struct_1(vec2<f32>(arg_0, arg_0)), func_4(arg_1.a.x, vec3<i32>(arg_1.a.x, arg_3.a.x, 8504i), Struct_1(vec2<f32>(arg_0, 1937f)), Struct_1(vec2<f32>(-1262f, arg_0)))), func_4(~arg_1.a.x, ~vec3<i32>(1i, 20993i, 8434i), func_4(arg_1.a.x, vec3<i32>(arg_3.a.x, arg_3.a.x, arg_1.a.x), Struct_1(vec2<f32>(arg_0, arg_0)), Struct_1(vec2<f32>(arg_0, 737f))), Struct_1(vec2<f32>(366f, arg_0))))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0)))))));
    return ~vec3<u32>(arg_2, arg_2, _wgslsmith_mod_u32(u_input.a, min(78621u, 98533u))) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_clamp_u32(0u, 45996u, 4294967295u), ~4294967295u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, u_input.a, arg_2), vec3<u32>(4294967295u, 1u, 1u))), firstLeadingBit(reverseBits(~u_input.a)), _wgslsmith_clamp_u32(~41113u, arg_2, _wgslsmith_sub_u32(4294967295u, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 75251u, u_input.a)) & ~firstLeadingBit(u_input.a)) != 0u);
    var_0 = true;
    let var_1 = firstLeadingBit(max(~func_6(1f, Struct_2(vec2<i32>(-30483i, 2147483647i)), 1u, func_1(Struct_2(vec2<i32>(0i, 0i)))), vec3<u32>(max(u_input.a, u_input.a), _wgslsmith_mult_u32(9406u, u_input.a), ~4294967295u)));
    var var_2 = firstTrailingBit(vec2<i32>(max(42236i, 2147483647i), 1i));
    var var_3 = Struct_2(vec2<i32>(-2147483647i, -2147483647i));
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(func_1(Struct_2(var_3.a)).a.x, var_3.a.x, _wgslsmith_div_i32(-66391i, _wgslsmith_sub_i32(0i, -2147483647i)), abs(var_3.a.x) | -var_3.a.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, 2504f, -230f, 1160f)))))), vec2<i32>(~var_2.x, func_1(func_1(func_1(Struct_2(vec2<i32>(-1i, -2147483647i))))).a.x));
}

