struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<u32, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    var var_0 = vec3<bool>(all(vec3<bool>((global1[_wgslsmith_index_u32(u_input.a.x, 29u)] >> (arg_3 % 32u)) < (global1[_wgslsmith_index_u32(42449u, 29u)] >> (1u % 32u)), !arg_0, (1184u << (arg_3 % 32u)) < 0u)), !any(!(!vec4<bool>(arg_0, false, false, false))), false);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) - arg_1.x);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(countOneBits(-1i), min(22738i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(-1467i, -18627i, -1i))))), firstLeadingBit(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -1i, -2147483647i)), min(vec3<i32>(7231i, 10909i, -1i), vec3<i32>(-1i, -1i, -2147483647i)))));
    let var_3 = Struct_2(41346i);
    var var_4 = firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~u_input.a.x) >> (reverseBits(_wgslsmith_mult_u32(~23928u, _wgslsmith_mult_u32(0u, 83625u))) % 32u), 29u)], 29u)]);
    return -abs(1i);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(arg_0.a << (_wgslsmith_div_u32(4960u, _wgslsmith_mult_u32(abs(0u), arg_2.a)) % 32u), Struct_1(arg_0.a, countOneBits(~20042u) >> (_wgslsmith_sub_u32(countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), 1u) % 32u), _wgslsmith_mod_u32(1u, ~2366u), -1040f, _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_1.x, arg_2.e), vec3<i32>(arg_0.e, arg_2.e, -1i)), vec3<i32>(min(-2147483647i, 1i), 26437i, 42031i))), func_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 1000f, _wgslsmith_f_op_f32(1000f - arg_2.d), _wgslsmith_f_op_f32(-1042f * arg_2.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_0.d, arg_2.d, 228f) * vec4<f32>(arg_2.d, 358f, arg_0.d, arg_2.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(690f, -771f, arg_2.d, 548f))), _wgslsmith_div_vec4_f32(vec4<f32>(695f, arg_0.d, arg_2.d, arg_0.d), vec4<f32>(arg_2.d, 1180f, 156f, -756f))), u_input.a.x), select(vec2<bool>(!all(vec2<bool>(true, false)), false), !vec2<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, true))), vec2<bool>(true, true)), !(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)) || any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))));
    global1 = array<u32, 29>();
    var var_1 = max(_wgslsmith_add_i32(-14201i, countOneBits(1i)), ~28877i);
    let var_2 = ~_wgslsmith_mod_i32(select(arg_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(24853u, 1u, var_0.b.c, 10978u), vec4<u32>(arg_2.a, var_0.a, 4294967295u, arg_2.b)) % 32u), ~(-var_0.b.e), false), -46747i);
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(~(1u ^ ~arg_2.b), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(~(u_input.a.x >> (arg_2.a % 32u)), 29u)], _wgslsmith_add_u32(~1353u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b, arg_0.b), 29u)])), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.a, arg_2.c) ^ vec2<u32>(var_0.a, u_input.a.x)), ~u_input.a.xy)), 14u)], countOneBits(-(~(-var_2))), select(var_0.d, select(vec2<bool>(arg_0.e < 5755i, var_0.b.e > 13897i), select(var_0.d, vec2<bool>(false, false), vec2<bool>(var_0.e, false)), _wgslsmith_clamp_u32(1u, 29298u, u_input.a.x) > ~0u), vec2<bool>(arg_0.d <= -1000f, u_input.a.x > reverseBits(arg_0.b))), !(7104u <= _wgslsmith_div_u32(~5848u, arg_0.b)));
    return var_3;
}

fn func_1() -> Struct_2 {
    global1 = array<u32, 29>();
    var var_0 = Struct_4(func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 14u)], vec3<i32>(-_wgslsmith_sub_i32(-1i, -11748i), ~1i, abs(reverseBits(-1i))), Struct_1(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~0u, 29u)], 29u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), 29u)] ^ _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31625u, 29u)], 29u)]), countOneBits(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(1u, 29u)])), 1f, -(~7608i))), -95335i);
    global1 = array<u32, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-616f, -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.b.d * -957f))), func_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(5955u, 353u, 33608u, var_0.a.b.a), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 0u, 0u, var_0.a.a)), countOneBits(var_0.a.b.a), reverseBits(13077u), 577f, var_0.b ^ var_0.b), _wgslsmith_div_vec3_i32(~vec3<i32>(12885i, -33119i, var_0.b), reverseBits(vec3<i32>(-30568i, -1i, -33494i))), Struct_1(1u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0.a.b.d, var_0.b)).b.d)));
    var var_2 = func_2(global0[_wgslsmith_index_u32(countOneBits(select(min(var_0.a.a, u_input.a.x), 35088u, var_0.a.e)), 14u)], -vec3<i32>(-var_0.a.b.e, firstLeadingBit(var_0.a.b.e), var_0.a.b.e) ^ vec3<i32>(var_0.a.c, -1i, firstTrailingBit(var_0.a.b.e)), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(42518u, 29u)], 14u)]).b;
    return Struct_2(-(~(-34880i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f))) * -909f));
    let var_2 = func_2(func_2(Struct_1(0u, ~32093u << (~u_input.a.x % 32u), 120325u, _wgslsmith_f_op_f32(-1f), 0i), firstLeadingBit(firstTrailingBit(-vec3<i32>(var_0.a, 0i, -2147483647i))), global0[_wgslsmith_index_u32(0u, 14u)]).b, select(vec3<i32>(i32(-1i) * -11i, -var_0.a, var_0.a), _wgslsmith_mod_vec3_i32((vec3<i32>(-2147483647i, var_0.a, 0i) & vec3<i32>(-1i, 49569i, var_0.a)) << (abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 4294967295u, 41975u)) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -5468i, abs(-29798i), ~var_0.a)), select(vec3<bool>(true, any(vec2<bool>(true, true)), var_0.a <= var_0.a), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), true)), global0[_wgslsmith_index_u32(~61120u, 14u)]).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1428f + var_2.d) + -1261f)), _wgslsmith_f_op_f32(abs(var_2.d)));
}

