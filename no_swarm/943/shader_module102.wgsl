struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-736f)))));
    var var_1 = Struct_1(global0.x);
    var var_2 = vec3<i32>(-1i) * -(u_input.a << (vec3<u32>(1u, 43897u, abs(1u)) % vec3<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(595f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -1688f)))));
    let var_4 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(34399u, 0u, 1u), max(53338u, 30153u), firstTrailingBit(50815u), 1u), ~vec4<u32>(1u, 5838u, 53631u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(17861u, 16425u), vec2<u32>(37863u, 19978u)), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10863u, 0u, 4294967295u), vec4<u32>(0u, 0u, 1u, 60278u))), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(~firstLeadingBit(~1u), ~abs(max(1u, 0u)), ~abs(0u), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 36527u), vec3<u32>(262u, 0u, 4294967295u)), 85242u)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-230f - _wgslsmith_f_op_f32(-2259f * 993f)), var_3.a))));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = vec4<i32>(~_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), -22290i, -46627i, ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-2013i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(-18772i, -32728i, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 50458i))) << (firstLeadingBit(vec4<u32>(~35784u, ~countOneBits(1u), 1u, countOneBits(1u))) % vec4<u32>(32u));
    var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), abs(vec2<u32>(1u, 1u)));
    var var_2 = firstTrailingBit(vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(select(u_input.a, vec3<i32>(-5076i, -52459i, -1i), false), -vec3<i32>(u_input.a.x, -10783i, u_input.a.x))), -64008i));
    var var_3 = func_2();
    return arg_3;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec4<i32> {
    var var_0 = func_3(-1497f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-768f, global0.x, 190f)))))), func_2(), arg_1);
    var_0 = func_3(_wgslsmith_f_op_f32(-701f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-796f * -2112f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -1638f, 1062f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-461f, 1011f, -441f) * vec3<f32>(248f, 1338f, -875f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1570f, 1964f, -1000f) + vec3<f32>(var_0.a, -718f, var_0.a)))), !(!arg_0.x) & true)), Struct_1(_wgslsmith_f_op_f32(trunc(global0.x))), arg_1);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_0.a, 1000f, -1656f));
    var var_3 = _wgslsmith_f_op_f32(-var_0.a);
    return vec4<i32>(-1i) * -min(select(vec4<i32>(-2147483647i, -60595i, -1i, 2147483647i), vec4<i32>(u_input.a.x, 1i, -38961i, u_input.a.x) << (vec4<u32>(18895u, arg_3, arg_3, 54945u) % vec4<u32>(32u)), select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), vec4<i32>(u_input.a.x << (0u % 32u), -74777i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 15659i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(min(vec4<i32>(2147483647i, ~abs(-1i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x), 0i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i, -1i, u_input.a.x, u_input.a.x)), ~(vec4<i32>(2147483647i, 4967i, 1i, u_input.a.x) << (vec4<u32>(62849u, 1u, 0u, 43999u) % vec4<u32>(32u))))));
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a.x, -1530i, ~(~19013i), u_input.a.x | 1i), vec4<i32>(min(13075i, 2147483647i), 24759i, var_0.x, -51852i)), ~(func_1(vec2<bool>(false, false), Struct_1(global0.x), vec2<f32>(-373f, 820f), 4294967295u) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, var_0.x, u_input.a.x, var_0.x))) << ((vec4<u32>(1u, 1u, ~19428u, 394u) | vec4<u32>(min(4294967295u, 4294967295u), abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(50160u, 1680u, 46043u, 48418u), vec4<u32>(4294967295u, 25909u, 90670u, 139493u)), 1u)) % vec4<u32>(32u)));
    let var_1 = func_2();
    var_0 = firstTrailingBit(vec4<i32>(-2175i, -34300i, u_input.a.x | var_0.x, ~((var_0.x << (33398u % 32u)) >> (countOneBits(4294967295u) % 32u))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1176f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(448f, global0.x)))) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(171f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-282f, var_1.a) * vec2<f32>(284f, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1537f, var_1.a), global0.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1817f), global0.x))));
    var var_2 = select(u_input.a.xz, ~max(_wgslsmith_mult_vec2_i32(func_1(vec2<bool>(false, true), Struct_1(-482f), vec2<f32>(-367f, -1780f), 1u).yz, -var_0.zy), vec2<i32>(-18634i, var_0.x)), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false)), vec2<bool>(true, true), -1000f > global0.x));
    var_0 = max(select(-(~func_1(vec2<bool>(true, false), Struct_1(-1220f), vec2<f32>(var_1.a, global0.x), 15013u)), -vec4<i32>(26819i, select(-1i, -1211i, false), 1i, ~var_2.x), vec4<bool>(all(vec3<bool>(false, false, false)), true, false, !any(vec3<bool>(true, true, true)))), -vec4<i32>(u_input.a.x, ~var_0.x, 1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, -2147483647i);
}

