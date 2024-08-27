struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec3<i32>;

var<private> global2: array<u32, 26>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 17>();
    global2 = array<u32, 26>();
    global1 = vec3<i32>(~_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(global1.x, global1.x)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(8793i, _wgslsmith_div_i32(-1i, 5624i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 17517i, u_input.a.x), vec3<i32>(-1i, -1i, -25956i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(4414i, 42865i), vec2<i32>(2147483647i, u_input.a.x)), -18200i, ~(-2147483647i)))), 40575i);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(773f, 679f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(f32(-1f) * -1636f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f)))))), 1f, -409f);
    global0 = array<Struct_2, 17>();
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<f32> {
    global2 = array<u32, 26>();
    global1 = ~firstTrailingBit(~vec3<i32>(abs(global1.x), -global1.x, countOneBits(-33108i)));
    var var_0 = func_3();
    global0 = array<Struct_2, 17>();
    var_0 = u_input.a.x;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)) * arg_0)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), 122f));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = ~(_wgslsmith_mod_vec4_u32(vec4<u32>(~global2[_wgslsmith_index_u32(1u, 26u)], 4344u, u_input.c, 1u), vec4<u32>(68062u, 1u | global2[_wgslsmith_index_u32(0u, 26u)], 1u, abs(4294967295u))) & vec4<u32>(59253u, _wgslsmith_mod_u32(0u, 20394u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16101u, u_input.b, 1u), vec4<u32>(30026u, 4294967295u, u_input.b, 20584u)), global2[_wgslsmith_index_u32(30111u, 26u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1620f, 361f) - vec2<f32>(-343f, 127f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, -584f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1577f, -1000f) * vec2<f32>(-1605f, -1057f))), vec2<bool>(all(!vec4<bool>(arg_1, false, false, arg_1)), all(vec2<bool>(true, true))))), _wgslsmith_clamp_i32(2242i, 12074i, i32(-1i) * -arg_0.x), arg_1, _wgslsmith_f_op_vec2_f32(func_2(-263f, Struct_2(true, select(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, true, arg_1)), vec3<bool>(arg_1, arg_1, true), all(vec2<bool>(arg_1, false)))), global0[_wgslsmith_index_u32(26320u << ((4294967295u ^ _wgslsmith_mod_u32(u_input.c, var_0.x)) % 32u), 17u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-309f, _wgslsmith_f_op_f32(678f + -149f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f))), -610f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, global1.x) & _wgslsmith_mult_i32(arg_0.x, -1i), 54583i)), var_1.c, vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(select(-2022f, _wgslsmith_div_f32(var_1.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(var_1.a.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(var_0.x, 17u)])).x))), true)));
    var var_3 = ~_wgslsmith_dot_vec3_u32((vec3<u32>(24507u, var_0.x, 49131u) << (~vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 26u)], 17027u) % vec3<u32>(32u))) & ((var_0.zyx << (vec3<u32>(16914u, u_input.c, u_input.c) % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(0u, 1408u, u_input.d)) % vec3<u32>(32u))), select(_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 26u)], 26u)], 0u, global2[_wgslsmith_index_u32(u_input.b, 26u)]) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 26u)], 26u)], 0u, 40873u), var_0.xzy), min(vec3<u32>(var_0.x, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 26u)], 26u)]), ~var_0.wyz), !vec3<bool>(arg_1, true, true)));
    var_2 = Struct_1(var_1.a, var_2.b, !var_2.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(var_2.e * -289f)), _wgslsmith_f_op_vec2_f32(var_1.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, var_1.e) * vec2<f32>(227f, -1145f))), select(vec2<bool>(var_1.c, var_2.c), vec2<bool>(true, false), !vec2<bool>(false, var_1.c)))))), -126f);
    return global0[_wgslsmith_index_u32(var_0.x, 17u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    global0 = array<Struct_2, 17>();
    let var_0 = abs(~countOneBits(vec4<u32>(10184u, 1u, 147399u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)]) & (vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(u_input.d, 26u)], u_input.c, u_input.d) & vec4<u32>(33976u, u_input.d, u_input.d, 4294967295u))));
    let var_1 = countOneBits(var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f * 1101f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-728f, _wgslsmith_f_op_f32(f32(-1f) * -2513f)), vec2<f32>(-649f, 178f))), (abs(~global1.x) << ((~var_0.x << (global2[_wgslsmith_index_u32(var_0.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 26u)], 26u)] % 32u), 26u)] % 32u)) % 32u)) >> (23981u % 32u), !all(vec4<bool>(true, any(vec2<bool>(arg_0.a, arg_0.a)), select(false, arg_0.a, arg_0.a), arg_0.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-575f, -843f) * vec2<f32>(1000f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(747f, -948f) * vec2<f32>(-1000f, -1337f)), select(true, arg_0.a, arg_0.b.x)))))), 779f);
    var var_3 = ~(~var_0.yy);
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, 946f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1353f + 804f), _wgslsmith_f_op_f32(select(1165f, 836f, true))))), true)), global1.x, func_4(func_1(-(~vec4<i32>(-2147483647i, u_input.a.x, -51151i, global1.x)), true), ~vec3<i32>(global1.x, global1.x, ~global1.x)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2325f, 2252f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1375f)), -1035f, true))), Struct_2(func_1(~vec4<i32>(u_input.a.x, u_input.a.x, global1.x, global1.x), true).b.x, !func_1(vec4<i32>(global1.x, -10501i, u_input.a.x, u_input.a.x), false).b), global0[_wgslsmith_index_u32(select(47094u, 76358u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(146388u, 26u)], u_input.c) <= _wgslsmith_mult_u32(u_input.d, u_input.d)), 17u)])), _wgslsmith_f_op_f32(select(-873f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -730f) + 395f), 14841i > u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1281f, _wgslsmith_div_f32(273f, var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -196f)));
    global1 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i ^ var_0.b, max(30140i, u_input.a.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, 11758i, global1.x), vec3<i32>(u_input.a.x, var_0.b, u_input.a.x)), -vec3<i32>(-2147483647i, u_input.a.x, -1i))), vec3<i32>(-max(-6626i, var_0.b), -abs(-1i), global1.x)), select(vec3<i32>(abs(var_0.b), 1i, u_input.a.x), vec3<i32>(51737i >> (reverseBits(u_input.d) % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-11765i, -13960i))), u_input.a.x), func_1(vec4<i32>(0i, var_0.b, 1i, max(1i, 1i)), var_0.c).b));
    let var_2 = var_0.d.x;
    global1 = -(~vec3<i32>(global1.x, i32(-1i) * -2147483647i, 1i) << (vec3<u32>(4294967295u, select(1u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.d, 26u)], 26699u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), true), 0u) % vec3<u32>(32u)));
    let var_3 = Struct_2(all(select(select(vec4<bool>(var_0.c, var_0.c, false, var_0.c), !vec4<bool>(true, true, false, var_0.c), !vec4<bool>(false, var_0.c, false, true)), !vec4<bool>(var_0.c, false, var_0.c, false), true)), !vec3<bool>(func_4(func_1(vec4<i32>(global1.x, -12389i, u_input.a.x, -1i), var_0.c), -vec3<i32>(55134i, 99678i, 3501i)), !var_0.c && !var_0.c, !select(var_0.c, false, false)));
    global0 = array<Struct_2, 17>();
    var var_4 = func_1(vec4<i32>(abs(_wgslsmith_mod_i32(firstLeadingBit(global1.x), 50832i >> (global2[_wgslsmith_index_u32(u_input.c, 26u)] % 32u))), u_input.a.x & _wgslsmith_dot_vec4_i32(-vec4<i32>(1875i, -33118i, u_input.a.x, -1i), vec4<i32>(5334i, u_input.a.x, global1.x, -2147483647i) << (vec4<u32>(u_input.d, 1u, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 26u)]) % vec4<u32>(32u))), 1i, 39i), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

