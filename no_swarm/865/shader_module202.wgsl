struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-1678f, 886f, -282f, 1337f), vec4<f32>(-1290f, 278f, 953f, 358f), vec4<f32>(366f, 179f, 1613f, -1000f), vec4<f32>(-238f, -1145f, -1252f, 1593f), vec4<f32>(-772f, -1512f, -631f, -1226f), vec4<f32>(-1024f, 1055f, 1000f, -1000f), vec4<f32>(-489f, 1094f, -112f, -1320f), vec4<f32>(540f, 1016f, -103f, 1552f), vec4<f32>(1172f, 1646f, 1000f, 225f), vec4<f32>(-559f, 1178f, -757f, 377f));

var<private> global1: array<i32, 23> = array<i32, 23>(1i, 3751i, 0i, i32(-2147483648), -27453i, 0i, 53330i, 63651i, 1i, 1i, 0i, -1i, 0i, -44864i, -44573i, -23660i, 44234i, -1i, -23952i, 2147483647i, -44328i, -5926i, 1i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    global0 = array<vec4<f32>, 10>();
    var var_0 = vec4<bool>(false, true, true, true && any(vec2<bool>(true, true)));
    var var_1 = Struct_1(reverseBits(~(~max(vec4<u32>(arg_0, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, 51033u, arg_0, 68955u)))), firstLeadingBit(-((vec2<i32>(global1[_wgslsmith_index_u32(arg_0, 23u)], -2147483647i) ^ vec2<i32>(-25080i, -26717i)) & vec2<i32>(0i, 0i))), _wgslsmith_f_op_f32(-256f + arg_1));
    global0 = array<vec4<f32>, 10>();
    let var_2 = !(!(!(!vec4<bool>(false, var_0.x, false, false))));
    return ~arg_0;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> i32 {
    global0 = array<vec4<f32>, 10>();
    let var_0 = !(max(arg_0, firstLeadingBit(~global1[_wgslsmith_index_u32(0u, 23u)])) != ~(-1i));
    let var_1 = -46076i;
    let var_2 = reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(~u_input.d, 23u)], -u_input.b), select(_wgslsmith_div_vec2_i32(vec2<i32>(var_1, u_input.b), vec2<i32>(arg_0, -1i)), vec2<i32>(2147483647i, -35171i), vec2<bool>(arg_1.x, var_0))) << (1u % 32u));
    var var_3 = Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, (func_3(1u, -1000f) | ~1u) ^ reverseBits(~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), select(vec2<i32>(-select(var_1, global1[_wgslsmith_index_u32(u_input.d, 23u)], arg_1.x), ~(-var_2)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, 0i, -20313i), vec3<i32>(var_2, global1[_wgslsmith_index_u32(39328u, 23u)], -19783i)) | _wgslsmith_sub_i32(var_1, 0i), firstLeadingBit(2147483647i)), !(!(!vec2<bool>(var_0, arg_1.x)))), _wgslsmith_f_op_f32(-2102f * -853f));
    return _wgslsmith_mult_i32(reverseBits(-53830i), -29696i << ((countOneBits(var_3.a.x) >> (_wgslsmith_div_u32(59046u, u_input.a.x) % 32u)) % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = _wgslsmith_div_u32(arg_1.a.x, ~(~(arg_1.a.x & (arg_1.a.x >> (arg_1.a.x % 32u)))));
    var var_2 = arg_1;
    let var_3 = Struct_1(~arg_1.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-964f, _wgslsmith_f_op_f32(floor(var_2.c)), !arg_0.x)))));
    var var_4 = vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, 18389i, var_2.b.x, var_3.b.x)), vec4<i32>(~2147483647i, firstLeadingBit(u_input.b), arg_1.b.x, ~u_input.c)) ^ func_2(~(-1i), arg_0), u_input.c, ~(~select(-2147483647i, u_input.b, false)));
    return var_3.a.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec4<bool>(true, true, all(vec3<bool>(true, false, true)) & true, !(u_input.b >= -2147483647i)), Struct_1(max(vec4<u32>(func_1(vec2<bool>(false, false), Struct_1(vec4<u32>(38639u, u_input.d, 115973u, 0u), vec2<i32>(-61958i, u_input.b), -2138f)), ~u_input.d, u_input.d, func_1(vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.d, u_input.d, 9609u, u_input.d), vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)]), 1000f))), select(~vec4<u32>(85320u, u_input.d, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 6692u), true)), _wgslsmith_mod_vec2_i32(vec2<i32>(-global1[_wgslsmith_index_u32(1u, 23u)], 1i << (u_input.a.x % 32u)), _wgslsmith_add_vec2_i32(select(vec2<i32>(2147483647i, -25845i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 23u)], -60081i), false), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(138f, _wgslsmith_f_op_f32(select(-118f, -1403f, true))))));
    global1 = array<i32, 23>();
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(u_input.d), max(~var_0.a.x, _wgslsmith_mod_u32(1u, 1u)) << (51412u % 32u)), vec2<u32>(_wgslsmith_clamp_u32(88164u, 4294967295u, _wgslsmith_add_u32(~u_input.d, _wgslsmith_sub_u32(29000u, u_input.a.x))), u_input.a.x | u_input.d));
    global0 = array<vec4<f32>, 10>();
    global1 = array<i32, 23>();
    global0 = array<vec4<f32>, 10>();
    var var_2 = func_4(select(vec4<bool>(!all(vec4<bool>(false, false, false, true)), false, any(vec4<bool>(true, false, false, false)), _wgslsmith_mult_u32(u_input.d, 1u) <= u_input.d), vec4<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), false & (u_input.c > global1[_wgslsmith_index_u32(1385u, 23u)]), any(vec3<bool>(true, false, false))), !vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true)), var_0);
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c, _wgslsmith_div_f32(-1429f, var_0.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.c, var_0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1779f, 236f) - vec2<f32>(-987f, var_0.c)), true)), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-343f, var_2.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(877f, var_0.c))))))));
    let var_4 = vec3<bool>(true & !(all(vec2<bool>(true, false)) || any(vec4<bool>(false, true, false, false))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f) * var_3.x)) - _wgslsmith_f_op_f32(round(var_0.c))), var_2.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_3, vec2<f32>(var_0.c, var_3.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-1307f - 623f), _wgslsmith_f_op_f32(-303f + var_0.c)))), _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(12121i, -2147483647i, 2147483647i, u_input.c)), countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(13470u, 23u)], var_2.b.x, 2147483647i, -20365i), vec4<i32>(var_0.b.x, -38596i, var_2.b.x, 2147483647i)))));
}

