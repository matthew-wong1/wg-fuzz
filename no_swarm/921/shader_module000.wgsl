struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(~max(~vec4<u32>(44743u, 4294967295u, 1u, 1u), max(vec4<u32>(1u, 8659u, arg_1, arg_2), vec4<u32>(arg_2, 1u, 0u, arg_1)))), 0i, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, _wgslsmith_clamp_u32(arg_2, 1u, arg_2), firstTrailingBit(4294967295u), arg_1), ~(~vec4<u32>(arg_1, 1u, arg_1, 46442u)))), Struct_1(vec4<u32>(select(arg_1, arg_2, true), _wgslsmith_mult_u32(0u | arg_1, arg_1), ~_wgslsmith_mod_u32(46096u, arg_2), _wgslsmith_div_u32(0u, max(0u, 4294967295u)))), Struct_1(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_2, 4294967295u, 1u), vec4<u32>(0u, arg_1, 5019u, arg_2)))));
    var_0 = Struct_2(var_0.a, max(~(-(var_0.b << (var_0.d.a.x % 32u))), -15465i), Struct_1(vec4<u32>(select(arg_2, arg_2, all(vec4<bool>(true, false, true, true))), ~arg_1 >> (~5479u % 32u), 4294967295u, ~_wgslsmith_add_u32(arg_1, arg_1))), Struct_1(~vec4<u32>(6296u, 0u, ~var_0.e.a.x, arg_1)), Struct_1(min(select(~vec4<u32>(11703u, arg_2, 4294967295u, 58533u), ~vec4<u32>(27409u, arg_1, arg_2, arg_1), vec4<bool>(false, false, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(44657u, 389u, 0u, 18538u) >> (var_0.e.a % vec4<u32>(32u)), ~var_0.d.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(844f, _wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-1044f - -459f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-381f, -740f, -623f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(491f, 1922f, 1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1084f, -824f, 2618f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2073f, -213f, -1000f), vec3<f32>(1161f, -598f, 826f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 218f, var_1.x))));
    let var_2 = Struct_2(Struct_1(~vec4<u32>(~67639u, ~29161u, ~2921u, ~arg_1)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(select(var_0.b, var_0.b, true), arg_0), _wgslsmith_clamp_i32(var_0.b ^ arg_0, -var_0.b, var_0.b)), Struct_1(vec4<u32>(arg_1 ^ abs(4294967295u), 3566u, 29508u, ~(~43929u))), var_0.e, var_0.e);
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_2.d;
    var var_1 = arg_2;
    var_1 = Struct_2(var_0, firstLeadingBit(10010i), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~57180u, countOneBits(arg_1.a.x), 1u), countOneBits(~vec4<u32>(91472u, var_1.e.a.x, var_1.c.a.x, arg_2.e.a.x)))), arg_2.c, var_1.c);
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(u_input.a.x, var_1.c.a.x, var_0.a.x)))), -1144f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1522f, _wgslsmith_f_op_f32(sign(-1271f)), -106f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-798f, 990f, 1000f)), vec3<f32>(1f, 1f, 1f))))));
    return select(select(vec4<bool>(false, false, !all(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(sign(var_3.x)) == var_3.x), vec4<bool>(any(vec3<bool>(false, true, true)), true & (31455i != var_1.b), true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, -firstTrailingBit(0i) == arg_2.b, !(!(var_0.a.x != 4294967295u)), false), vec4<bool>(true, false, true, true));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(926f, -541f, 794f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(min(1705f, 935f)), _wgslsmith_f_op_f32(sign(653f)), _wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(f32(-1f) * -2159f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-515f, -459f, 1689f, 412f), vec4<f32>(851f, -450f, 1075f, 1080f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -102f, -1151f, -1742f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, 840f, -1426f, 109f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 614f, -157f, -750f) * vec4<f32>(-1000f, -993f, -1000f, -875f)) + vec4<f32>(146f, -626f, 690f, 516f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1431f, 1174f, 888f, -702f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, 1637f, -955f, 198f) + vec4<f32>(-291f, -279f, 1564f, -1363f))) - vec4<f32>(1f, -856f, _wgslsmith_f_op_f32(f32(-1f) * -1372f), -1318f))));
    let var_1 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(3860i, 1i, 36273i, ~u_input.a.x), select(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), max(vec4<i32>(u_input.a.x, u_input.a.x, 32507i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 23900i, u_input.a.x)), func_2(vec3<i32>(u_input.a.x, 1i, -10175i), Struct_1(vec4<u32>(4294967295u, 54722u, 1u, 21512u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 6291u, 1u, 6908u)), u_input.a.x, Struct_1(vec4<u32>(0u, 15891u, 0u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 27449u, 53618u)), Struct_1(vec4<u32>(1u, 0u, 1u, 0u)))))), ~vec4<i32>(-firstTrailingBit(-1i), 1i, -(i32(-1i) * -1i), ~83372i), abs(select(-(vec4<i32>(-1i, -9830i, u_input.a.x, 1i) << (vec4<u32>(21609u, 29285u, 47798u, 0u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 22775i, u_input.a.x), vec4<i32>(39130i, u_input.a.x, 2147483647i, u_input.a.x)), false)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, -711f, var_0.x, -990f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 591f, -1563f, var_0.x), vec4<f32>(-322f, var_0.x, 1281f, 380f))), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-335f * -1747f), 2834f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2221f, -237f, -1262f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)))), 196f, var_0.x, var_0.x));
    let var_3 = vec4<bool>(!(!all(vec3<bool>(false, false, false))), true != any(vec3<bool>(true, select(true, true, true), any(vec4<bool>(false, true, true, true)))), true, any(!select(vec3<bool>(true, true, true), func_2(var_1.wzy, Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 71508u)), Struct_2(Struct_1(vec4<u32>(0u, 35926u, 22960u, 1u)), var_1.x, Struct_1(vec4<u32>(5853u, 21750u, 45480u, 1u)), Struct_1(vec4<u32>(36539u, 0u, 1u, 0u)), Struct_1(vec4<u32>(0u, 1u, 1u, 4294967295u)))).wzz, func_2(var_1.wxz, Struct_1(vec4<u32>(81759u, 0u, 1u, 48296u)), Struct_2(Struct_1(vec4<u32>(25782u, 0u, 0u, 1332u)), var_1.x, Struct_1(vec4<u32>(46922u, 55928u, 57684u, 67425u)), Struct_1(vec4<u32>(12043u, 4294967295u, 1u, 19389u)), Struct_1(vec4<u32>(31802u, 9342u, 0u, 14333u)))).xxw)));
    return u_input.a.x | abs(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1();
    var var_1 = u_input.a;
    var_0 = firstLeadingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-72743i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(min(-19260i, var_1.x), select(var_1.x, 2147483647i, false), select(-1242i, -2147483647i, true)), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(40887u, 0u, 0u) % vec3<u32>(32u)))), select(-vec3<i32>(var_1.x, u_input.a.x, u_input.a.x), vec3<i32>(abs(-18754i), -u_input.a.x, u_input.a.x), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9309u, 35128u, 1u, 4294967295u), vec4<u32>(20984u, 1u, 38506u, 26526u)), ~0u), _wgslsmith_clamp_u32(1u, abs(1u), 1u), firstLeadingBit(countOneBits(4294967295u)), ~1u));
}

