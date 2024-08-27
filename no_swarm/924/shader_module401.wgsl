struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(1i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(2658i), Struct_3(-25934i), Struct_3(3475i), Struct_3(1i), Struct_3(28053i), Struct_3(-1i), Struct_3(1i), Struct_3(0i), Struct_3(-39725i), Struct_3(-16001i), Struct_3(10046i), Struct_3(1i), Struct_3(3395i));

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(8543u, 1u, 1u, 4294967295u), vec4<u32>(0u, 0u, 32922u, 4294967295u), vec4<u32>(28347u, 4294967295u, 84339u, 40771u), vec4<u32>(12532u, 34377u, 0u, 21086u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(4294967295u, 2648u, 1u, 4294967295u), vec4<u32>(0u, 87456u, 4294967295u, 52628u), vec4<u32>(1u, 4294967295u, 51063u, 28528u), vec4<u32>(48085u, 62968u, 12028u, 57776u), vec4<u32>(130120u, 0u, 19584u, 1u), vec4<u32>(1u, 21592u, 8785u, 4294967295u), vec4<u32>(94293u, 12653u, 4294967295u, 4294967295u), vec4<u32>(22579u, 1u, 0u, 6828u), vec4<u32>(3241u, 0u, 1u, 15329u), vec4<u32>(0u, 47629u, 1u, 0u), vec4<u32>(51048u, 0u, 4294967295u, 4294967295u), vec4<u32>(23589u, 22033u, 4294967295u, 59559u), vec4<u32>(4294967295u, 48180u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 1655u));

var<private> global3: array<bool, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = Struct_3(29753i << (arg_2.b.x % 32u));
    global3 = array<bool, 17>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.a, 1u, arg_2.b.x) >> ((global2[_wgslsmith_index_u32(u_input.a, 19u)] & global2[_wgslsmith_index_u32(arg_2.b.x, 19u)]) % vec4<u32>(32u))) & ~abs(firstTrailingBit(global2[_wgslsmith_index_u32(25593u, 19u)])), _wgslsmith_div_vec4_u32(reverseBits(arg_2.b), vec4<u32>(~arg_2.b.x, ~10769u, _wgslsmith_clamp_u32(arg_2.b.x, 1u, 45835u), _wgslsmith_dot_vec4_u32(arg_2.b, vec4<u32>(0u, 0u, 16967u, arg_2.b.x)))) ^ arg_2.b), 16u)];
    var var_2 = max(~1i, var_1.a);
    var var_3 = any(select(vec4<bool>(global3[_wgslsmith_index_u32(countOneBits(~0u), 17u)], true || all(vec4<bool>(true, arg_1.x, arg_1.x, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a, 1i, 53039i), vec4<i32>(1i, var_0.a, var_0.a, var_1.a)) < -10669i, false), !(!vec4<bool>(false, false, arg_1.x, true)), vec4<bool>(true, true, -var_0.a >= (11615i >> (u_input.a % 32u)), (u_input.a >> (u_input.a % 32u)) < ~84498u)));
    return _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(0i, -2147483647i, -_wgslsmith_div_i32(-1i, 1i), ~_wgslsmith_div_i32(-1i, var_1.a))), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.a, var_0.a, 0i), -vec4<i32>(var_0.a, var_0.a, var_1.a, -1i))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    global0 = array<Struct_3, 16>();
    let var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-27324i, arg_1.a, 14456i), vec3<i32>(arg_1.a, 5761i, 38145i))), arg_1.a, ~arg_1.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.a, 45800i), 0i)), abs(vec4<i32>(arg_1.a, -arg_1.a, arg_1.a, 0i) & vec4<i32>(2147483647i, 1i, _wgslsmith_div_i32(-2147483647i, arg_1.a), abs(-1i))));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(select(0u, _wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_mult_u32(27181u, _wgslsmith_mult_u32(arg_0.b.x, 11272u))), global3[_wgslsmith_index_u32(arg_0.b.x, 17u)]), 16u)], firstTrailingBit(~u_input.a));
    var var_2 = var_1.b;
    var var_3 = Struct_1(true, ~abs(abs(func_3(vec4<f32>(-1037f, arg_2.x, arg_0.c.x, 402f), vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.b, 17u)], true), arg_0))));
    return -1188f;
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1251f)), -792f) - vec2<f32>(_wgslsmith_f_op_f32(1906f * 1048f), _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(2022f, 1371f, 1000f, 114f), global2[_wgslsmith_index_u32(u_input.a, 19u)], vec4<f32>(1529f, 812f, 2562f, -1000f)), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec3<f32>(-1094f, 296f, -1000f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, _wgslsmith_div_f32(-274f, _wgslsmith_f_op_f32(f32(-1f) * -1049f)), _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1224f, -1793f, 1578f, 1392f), vec4<f32>(285f, 912f, var_1.x, 1363f), arg_0)), vec4<u32>(0u, u_input.a, 0u, 30089u) >> (global2[_wgslsmith_index_u32(u_input.a, 19u)] % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -636f))), Struct_3(arg_1 << (4294967295u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(step(-366f, var_1.x)), _wgslsmith_div_f32(132f, -201f), 385f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(-1072f, 477f)), _wgslsmith_f_op_f32(var_1.x * -1276f), _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(962f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -936f, var_1.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, var_1.x, 594f), vec4<f32>(-441f, 845f, var_1.x, 395f))))), vec4<f32>(-1000f, var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(892f + -275f))), var_1.x))));
    global2 = array<vec4<u32>, 19>();
    global0 = array<Struct_3, 16>();
    return vec2<bool>(any(!vec4<bool>(select(global3[_wgslsmith_index_u32(1u, 17u)], true, true), true, var_2.x <= -364f, select(false, true, global3[_wgslsmith_index_u32(83033u, 17u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!func_1(true, 2147483647i)));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1762f)), -228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2126f, -210f))), _wgslsmith_div_f32(-1839f, _wgslsmith_f_op_f32(615f - _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(1423f, -421f, -282f, 1000f), vec4<u32>(5969u, 4294967295u, u_input.a, u_input.a), vec4<f32>(-817f, -2152f, 1780f, -1000f)), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec3<f32>(134f, -330f, 1843f)))))), global2[_wgslsmith_index_u32(4294967295u, 19u)] | global2[_wgslsmith_index_u32(u_input.a ^ ~4294967295u, 19u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(774f, -965f, -1000f, -806f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1218f, -657f, 102f, -2288f) - vec4<f32>(-1911f, 1793f, 202f, 807f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(872f, -431f, 704f, 1173f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1635f, 2348f, 671f, 107f))))))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~4294967295u), _wgslsmith_div_u32(1u, 1u ^ ~u_input.a)), 17u)];
    var var_3 = u_input.a;
    var var_4 = Struct_3(-35141i);
    let var_5 = var_1;
    var_0 = vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, select(var_1.b.x, var_5.b.x, false), var_1.b.x & var_5.b.x, 64530u), var_5.b), 17u)], true);
    let var_6 = !(!select(func_1(true, reverseBits(var_4.a)), !(!vec2<bool>(global3[_wgslsmith_index_u32(6834u, 17u)], var_0.x)), (true || global3[_wgslsmith_index_u32(var_5.b.x, 17u)]) || (true & var_0.x)));
    let var_7 = ~2107u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1071f))) * 1574f)), _wgslsmith_div_i32(1i, 1i & (var_4.a << (var_7 % 32u))) & var_4.a, (-6137i & _wgslsmith_sub_i32(~0i, var_4.a)) | (max(~var_4.a, var_4.a) << (31467u % 32u)));
}

