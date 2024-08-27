struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<Struct_4, 30>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(70711u, 1u), ~4294967295u, firstLeadingBit(4294967295u)) >> (vec3<u32>(23911u, arg_2.b, ~(u_input.d << (0u % 32u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~max(vec3<u32>(u_input.b.x, arg_2.b, arg_2.b), vec3<u32>(22470u, u_input.b.x, 61097u)) | _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, arg_2.b, u_input.a)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(arg_2.b, arg_2.b, 13799u)), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 4294967295u), 31949u, u_input.d), vec3<u32>(~19018u, ~arg_2.b, arg_2.b))));
    var_0 = ~firstTrailingBit(_wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(0u, 14251u, u_input.b.x)), ~(~vec3<u32>(arg_2.b, arg_2.b, u_input.a))));
    global1 = array<Struct_4, 30>();
    global0 = array<bool, 32>();
    var_0 = reverseBits(vec3<u32>(select(arg_2.b, ~4294967295u, global0[_wgslsmith_index_u32(~27554u, 32u)]), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(45115u, 78451u, u_input.d, var_0.x), vec4<u32>(u_input.b.x, arg_2.b, arg_2.b, u_input.b.x)), _wgslsmith_clamp_u32(0u, u_input.b.x, arg_2.b)), arg_2.b));
    return arg_2.b;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> bool {
    let var_0 = vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2390f, _wgslsmith_f_op_f32(arg_0 + -1271f))), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = 22451i;
    var_1 = 51141i;
    var_1 = u_input.c.x;
    let var_2 = vec2<u32>(~(u_input.a & (countOneBits(arg_1) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(3953u, 1u, 4294967295u, 4294967295u), vec4<u32>(69092u, u_input.b.x, 4294967295u, u_input.a)))), min((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.a, 1u, 19961u), vec4<u32>(arg_1, arg_1, 40464u, 3078u)) ^ _wgslsmith_mod_u32(0u, 14064u)) | ~firstTrailingBit(arg_1), _wgslsmith_div_u32(~16070u, abs(select(10640u, arg_1, false)))));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = abs(arg_1.a.b);
    var var_1 = firstTrailingBit(-2147483647i);
    global1 = array<Struct_4, 30>();
    let var_2 = any(vec3<bool>(u_input.d > ~28306u, false, func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, 917f)))), func_3(_wgslsmith_f_op_f32(sign(1281f)), _wgslsmith_f_op_f32(1000f + arg_0.x), arg_1.a), vec4<bool>(true, any(vec3<bool>(global2.x, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(79875u, 32u)])), true, global0[_wgslsmith_index_u32(u_input.d, 32u)]))));
    global0 = array<bool, 32>();
    return arg_1.a;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a.c.a.x, -146f)), -364f, _wgslsmith_f_op_f32(1967f + arg_0.a.a), arg_0.a.a)), arg_0));
    global2 = !vec3<bool>(any(!select(vec4<bool>(arg_2.x, true, global0[_wgslsmith_index_u32(u_input.a, 32u)], true), vec4<bool>(global2.x, false, false, global2.x), true)), true, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1540f), func_2(var_0.a.c.a, Struct_3(var_0.a)).b, !(!vec4<bool>(false, true, arg_2.x, global0[_wgslsmith_index_u32(var_0.a.b, 32u)]))));
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    let var_1 = arg_0;
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec4<f32> {
    global1 = array<Struct_4, 30>();
    let var_0 = false;
    global2 = select(select(vec3<bool>(false, var_0, global2.x), !(!(!vec3<bool>(var_0, global0[_wgslsmith_index_u32(13921u, 32u)], true))), vec3<bool>((1u >> (arg_1.b % 32u)) != ~50173u, global2.x, false)), vec3<bool>(!(!(21634u >= arg_1.b)), any(select(vec4<bool>(global2.x, true, true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), select(vec4<bool>(false, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(9041u, 32u)], var_0, false, global2.x), false), true)), global0[_wgslsmith_index_u32(~(~(~arg_1.b)), 32u)]), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)] & global2.x, arg_0.c.c.x < arg_0.c.c.x)));
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~(~vec2<u32>(u_input.a, max(1u, u_input.d))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_3(Struct_2(375f, 118604u, Struct_1(vec4<f32>(990f, 350f, -490f, 1860f), vec3<f32>(-351f, -1283f, 609f), vec4<i32>(2147483647i, 2147483647i, u_input.c.x, 0i)))), 14313i, vec2<bool>(true, false), vec3<u32>(u_input.a, u_input.d, 4294967295u)), func_2(vec4<f32>(1000f, -161f, -370f, 130f), Struct_3(Struct_2(311f, 52043u, Struct_1(vec4<f32>(-655f, -681f, -381f, 1038f), vec3<f32>(-1231f, 259f, -1426f), vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x))))))) * vec4<f32>(_wgslsmith_f_op_f32(max(-1240f, 245f)), _wgslsmith_f_op_f32(-664f - 394f), _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-176f - 160f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), ~countOneBits(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1422f), u_input.b.x, func_1(Struct_3(Struct_2(1696f, u_input.b.x, Struct_1(vec4<f32>(914f, 468f, -1267f, -313f), vec3<f32>(407f, 1891f, 556f), vec4<i32>(26802i, 45259i, 1i, u_input.c.x)))), -3339i, global2.yz, vec3<u32>(113u, 17873u, u_input.b.x)).c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-697f, -675f, -687f), vec3<f32>(-560f, -207f, 291f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(900f, -1147f, 833f) * vec3<f32>(506f, 1674f, -1000f))))))), vec3<i32>(5863i | -(u_input.c.x >> (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c.x, u_input.c.x), vec3<i32>(1i, u_input.c.x, -33656i)), reverseBits(vec3<i32>(-1i, u_input.c.x, u_input.c.x))), ~select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -1i), vec3<i32>(-22999i, -39542i, u_input.c.x)), firstTrailingBit(u_input.c.x), true)));
    let var_1 = var_0.c;
    global1 = array<Struct_4, 30>();
    var var_2 = var_0.c.a;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.d, func_3(-1264f, _wgslsmith_f_op_f32(-var_2.c.a.x), func_1(var_1, 37360i, !global2.xz, ~vec3<u32>(0u, 13815u, var_2.b))) | ~(~_wgslsmith_sub_u32(32069u, var_0.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, ~(~var_0.a)), countOneBits(~u_input.b))), 30u)];
    let var_4 = _wgslsmith_f_op_f32(-var_3.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, var_2.c.b.x, var_3.b.b.x, -117f))) * vec4<f32>(-1000f, var_3.d.x, -496f, _wgslsmith_f_op_f32(min(var_2.c.a.x, 1299f)))), var_1).c.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(var_1.a.a, -250f), _wgslsmith_div_f32(-146f, 152f), _wgslsmith_f_op_f32(1205f - -481f))))), vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(326f * 177f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(var_2.c.b.x, var_3.a.x, Struct_1(vec4<f32>(var_3.d.x, var_4, var_4, var_1.a.a), vec3<f32>(var_4, -1852f, 603f), vec4<i32>(var_2.c.c.x, 1i, var_1.a.c.c.x, 23982i))), var_1.a)).x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(563f)), 474f))), var_1.a.c.c.xz, -abs(vec3<i32>(-569i, -2361i, var_0.e.x) >> (countOneBits(vec3<u32>(19261u, var_2.b, var_0.c.a.b)) % vec3<u32>(32u))));
}

