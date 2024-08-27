struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, -14594i, 2147483647i, 3300i, i32(-2147483648), 75551i, -5470i, -47550i, 1i, i32(-2147483648), 323i);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, false)), vec3<u32>(1u, 1u, 0u), 5856u, vec2<i32>(1i, 27457i));

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -713f, 1639f)));
    var var_1 = ~(-vec4<i32>(~(-1i) << (u_input.b % 32u), i32(-1i) * -global1.d.x, 4316i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global1.b.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(87600u, 11u)]), vec3<i32>(-1i, 23690i, -1345i) >> (vec3<u32>(0u, u_input.e, 0u) % vec3<u32>(32u)))));
    let var_2 = -75681i | _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(2866u, 11u)]);
    var var_3 = ~_wgslsmith_clamp_u32((_wgslsmith_add_u32(113857u, 31978u) | global1.b.x) ^ 1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), _wgslsmith_div_u32(u_input.d.x, ~global1.c)), _wgslsmith_clamp_u32(~(~46689u), _wgslsmith_mult_u32(countOneBits(u_input.c.x), ~29698u), (global1.c | 4294967295u) ^ ~global1.c));
    let var_4 = Struct_1(arg_0.a);
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))), arg_2.x, -1163f, -2225f);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global1 = Struct_2(Struct_1(select(!vec4<bool>(true, true, false, global1.a.a.x), select(select(global1.a.a, global1.a.a, vec4<bool>(false, false, global1.a.a.x, true)), vec4<bool>(global1.a.a.x, global1.a.a.x, global1.a.a.x, true), false), select(vec4<bool>(global1.a.a.x, global1.a.a.x, global1.a.a.x, global1.a.a.x), !vec4<bool>(true, false, global1.a.a.x, global1.a.a.x), !global1.a.a.x))), ~select(vec3<u32>(1u, 1u, u_input.e) | vec3<u32>(u_input.a.x, 10996u, global1.b.x), _wgslsmith_mod_vec3_u32(~u_input.a.yzw, firstTrailingBit(u_input.a.xxw)), true), global1.b.x, countOneBits(vec2<i32>(12090i & _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(39690u, 11u)], global1.d.x, -17914i), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.c, 11u)], -1i)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global1.c, 0u)), 11u)], global1.d.x >> (2140u % 32u)))));
    global2 = array<Struct_1, 28>();
    var var_0 = 1u;
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global1.d.x, -global0[_wgslsmith_index_u32(countOneBits(77457u << (global1.c % 32u)), 11u)]), reverseBits(-(~(-vec3<i32>(1i, global1.d.x, -81860i)))));
    var_0 = 1u;
    return 4294967295u;
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<u32>(global1.b.x >> (49722u % 32u), global1.b.x, func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, -1270f, 1687f, -537f)), _wgslsmith_f_op_vec4_f32(func_2(global1.a, 100f, vec2<f32>(263f, 1440f)))))) << (firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.e, global1.c), ~global1.c, abs(4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 1u, 1u), u_input.a.wzz, u_input.a.xwz))) % vec3<u32>(32u));
    global0 = array<i32, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-165f * 709f), _wgslsmith_f_op_f32(min(-913f, 2150f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(707f, 2228f)), 1763f), -982f, _wgslsmith_f_op_f32(-122f - -885f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(102f, -453f, -1699f, -367f), vec4<f32>(-485f, -1398f, -886f, 1727f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1000f + -200f), _wgslsmith_f_op_f32(1356f + -406f), 406f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.zw, var_1.zx, global1.a.a.x)), var_1.zx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wy))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) * _wgslsmith_f_op_f32(-var_2.x)), -554f, _wgslsmith_f_op_f32(round(1315f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-660f - var_2.x)))))));
    return Struct_2(Struct_1(vec4<bool>(all(global1.a.a.ww), !all(vec4<bool>(global1.a.a.x, global1.a.a.x, true, global1.a.a.x)), true | !global1.a.a.x, true)), var_0, _wgslsmith_mod_u32(var_0.x, ~((global1.b.x >> (41501u % 32u)) >> (global1.c % 32u))), -_wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(global1.d, vec2<i32>(global0[_wgslsmith_index_u32(global1.b.x, 11u)], 0i)), select(max(global1.d, vec2<i32>(820i, global0[_wgslsmith_index_u32(var_0.x, 11u)])), global1.d, !vec2<bool>(global1.a.a.x, global1.a.a.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f * -939f)));
    var var_1 = ~2237u;
    global0 = array<i32, 11>();
    let var_2 = func_1();
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-128f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2377f - -1932f)))))), -1540f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 28u)], vec3<u32>(func_4(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global1.d.x, global1.d.x, global1.d.x) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(21612i, 16008i, global1.d.x, global1.d.x), vec4<i32>(-2147483647i, -15867i, 7074i, global0[_wgslsmith_index_u32(48527u, 11u)])) | ~vec4<i32>(global1.d.x, global1.d.x, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), func_1()), global1.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, ~global1.b.x), ~1u << (~u_input.c.x % 32u))), u_input.d.x, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -9002i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-22682i, global1.d.x, global1.d.x), vec3<i32>(-9184i, 0i, global1.d.x))), abs(_wgslsmith_add_i32(global1.d.x, _wgslsmith_mod_i32(global1.d.x, global1.d.x)))));
    let var_1 = ~vec3<u32>(36227u, func_4(vec4<i32>(~var_0.d.x, -1i << (global1.c % 32u), -2147483647i, 1i), vec4<i32>(2147483647i, -global0[_wgslsmith_index_u32(u_input.e, 11u)], abs(global1.d.x), _wgslsmith_sub_i32(global1.d.x, -11074i)), Struct_2(func_1().a, ~vec3<u32>(var_0.b.x, u_input.e, 7962u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.b, global1.b.x), u_input.a.xww), firstLeadingBit(vec2<i32>(-1029i, global1.d.x)))), ~0u);
    var_0 = Struct_2(Struct_1(func_1().a.a), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_1, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 42389u, 52145u), vec3<u32>(u_input.e, 1u, global1.b.x)))), ~(var_0.b >> (vec3<u32>(66185u, 0u, 0u) % vec3<u32>(32u)))), var_0.c << ((func_1().c << (global1.b.x % 32u)) % 32u), _wgslsmith_clamp_vec2_i32(max(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 11u)], 11915i)), vec2<i32>(global1.d.x, reverseBits(global0[_wgslsmith_index_u32(0u, 11u)]))), -abs(global1.d), -countOneBits(var_0.d)));
    let var_2 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(247f, min(vec2<i32>(1i, 2147483647i), firstTrailingBit(~var_0.d)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-3699i, 62245i, 25480i), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.d.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], 1i), vec3<i32>(global1.d.x, 2147483647i, 17303i)) >> (firstLeadingBit(global1.b) % vec3<u32>(32u))) & -min(~vec3<i32>(-7085i, -43938i, global1.d.x), select(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_1.x, 11u)], global0[_wgslsmith_index_u32(var_1.x, 11u)]), vec3<i32>(global0[_wgslsmith_index_u32(global1.c, 11u)], -10758i, global1.d.x), global1.a.a.x)));
}

