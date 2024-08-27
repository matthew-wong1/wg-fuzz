struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-38506i, i32(-2147483648)), 1u, 38466u);

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(105f, -2267f, -1424f, -276f), vec4<f32>(423f, 115f, -816f, 2420f), vec4<f32>(-1000f, 533f, -984f, -134f), vec4<f32>(804f, 977f, -1457f, -249f), vec4<f32>(454f, -1336f, -2111f, -1409f), vec4<f32>(-351f, -561f, 450f, 118f), vec4<f32>(446f, 211f, 958f, -1042f), vec4<f32>(-1246f, 1337f, 1105f, -873f));

var<private> global2: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false));

var<private> global3: array<vec3<bool>, 7>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~21605u, arg_0.a.b, _wgslsmith_div_u32(arg_0.b.c, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global0.b, global0.c)), vec2<u32>(arg_0.a.b, 4294967295u)))), ~(~(~vec3<u32>(global0.b, 1u, 4294967295u))));
    let var_1 = ~0u;
    let var_2 = !select(select(global3[_wgslsmith_index_u32(1863u, 7u)], !global3[_wgslsmith_index_u32(~var_1, 7u)], vec3<bool>(true, false, true)), !(!(!global3[_wgslsmith_index_u32(global0.c, 7u)])), global3[_wgslsmith_index_u32(~(~var_0.x), 7u)]);
    global3 = array<vec3<bool>, 7>();
    var var_3 = arg_0.b;
    return select(1u, 1u, !var_2.x) | abs(1u);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = ~(~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 0i, 10754i, arg_0)));
    global1 = array<vec4<f32>, 8>();
    global2 = array<vec4<bool>, 5>();
    let var_1 = Struct_2(Struct_1((select(vec2<i32>(2147483647i, global0.a.x), u_input.a, false) ^ ~u_input.a) | ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, arg_2), vec2<i32>(2147483647i, global0.a.x)), ~(func_3(Struct_2(Struct_1(vec2<i32>(1i, 1i), 36832u, 39297u), Struct_1(vec2<i32>(17339i, var_0.x), 69096u, global0.b), 1i), -5981i, Struct_1(var_0.wy, 36390u, global0.b)) ^ 33463u), _wgslsmith_sub_u32((global0.c | global0.b) >> (0u % 32u), (0u ^ global0.b) | ~global0.c)), Struct_1(~select(var_0.zw | vec2<i32>(-1i, 4207i), var_0.zx, all(global2[_wgslsmith_index_u32(69398u, 5u)])), abs(~global0.b), firstLeadingBit(_wgslsmith_add_u32(global0.b | global0.c, ~4294967295u))), -17552i);
    global2 = array<vec4<bool>, 5>();
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-2037f + 258f), -1055f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1965f - _wgslsmith_f_op_f32(-1914f - -2183f)) * 1f), 1000f)));
    let var_1 = arg_0;
    return Struct_1(countOneBits(~select(~vec2<i32>(arg_1, var_1.b.a.x), func_2(u_input.a.x, 2147483647i, -41314i, -9539i).a, vec2<bool>(true, true))), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b, 0u, 0u, arg_0.b.b), vec4<u32>(arg_0.a.b, var_1.a.c, arg_0.b.b, 0u)) >> (~4294967295u % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.c, 631u), vec2<u32>(arg_0.a.b, var_1.b.c), vec2<u32>(29739u, 39699u)), abs(vec2<u32>(arg_0.a.b, var_1.b.b))))), _wgslsmith_div_u32(~func_2(-var_1.c, -11215i, -u_input.a.x, firstLeadingBit(u_input.a.x)).c, _wgslsmith_mod_u32(arg_0.a.c, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1844u, arg_0.b.c), vec2<u32>(0u, var_1.b.c))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(!(-59186i >= u_input.a.x), any(global3[_wgslsmith_index_u32(global0.b, 7u)]), any(arg_0.xx), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + -139f))));
    global0 = func_4(Struct_2(func_2(abs(global0.a.x), global0.a.x, u_input.a.x & 16735i, 1i), func_2(-_wgslsmith_sub_i32(u_input.a.x, global0.a.x), 1i, -12518i, i32(-1i) * -1i), -13209i), i32(-1i) * -1i);
    let var_2 = Struct_3(Struct_2(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 73205i), -vec3<i32>(u_input.a.x, -1i, 16479i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 21916i, global0.a.x), vec3<i32>(u_input.a.x, global0.a.x, u_input.a.x), vec3<i32>(global0.a.x, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, 19050i, u_input.a.x)), _wgslsmith_dot_vec2_i32(abs(global0.a), -u_input.a), countOneBits(_wgslsmith_mod_i32(-2147483647i, 1i))), Struct_1(global0.a, ~global0.c, 88615u), global0.a.x), 0i, _wgslsmith_add_vec4_i32((-vec4<i32>(global0.a.x, 34107i, 2147483647i, 2147483647i) ^ min(vec4<i32>(1i, global0.a.x, 1567i, global0.a.x), vec4<i32>(1i, -1i, u_input.a.x, 43400i))) | vec4<i32>(global0.a.x, _wgslsmith_clamp_i32(u_input.a.x, -10152i, u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, -23790i, 5924i), u_input.a.x), vec4<i32>(5257i, ~global0.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(global0.a, u_input.a)) & (_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, -1i, global0.a.x, global0.a.x), vec4<i32>(0i, global0.a.x, 2147483647i, u_input.a.x)) | (vec4<i32>(u_input.a.x, 1i, 1i, -16990i) >> (vec4<u32>(global0.c, 81718u, global0.b, 1u) % vec4<u32>(32u))))), var_0.zy, func_2(_wgslsmith_mult_i32(select(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), _wgslsmith_mult_i32(u_input.a.x, 14013i), arg_0.x), global0.a.x), -9165i, -28253i, _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, global0.a.x)));
    return Struct_1(vec2<i32>(firstLeadingBit(max(i32(-1i) * -1i, _wgslsmith_sub_i32(global0.a.x, 0i))), u_input.a.x), _wgslsmith_mult_u32(global0.c, 50687u), 125058u);
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    global2 = array<vec4<bool>, 5>();
    global2 = array<vec4<bool>, 5>();
    global4 = _wgslsmith_mod_i32(max(0i, -_wgslsmith_dot_vec2_i32(reverseBits(u_input.a), u_input.a)), 1i);
    global1 = array<vec4<f32>, 8>();
    var var_0 = vec4<bool>(true, all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false)), any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(true, true))));
    return vec2<bool>(true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_5(func_1(select(vec3<bool>(true, true, false), global3[_wgslsmith_index_u32(35404u, 7u)], vec3<bool>(false, false, false)), vec3<f32>(229f, _wgslsmith_f_op_f32(trunc(1466f)), _wgslsmith_f_op_f32(sign(-571f))))));
    var var_1 = Struct_2(Struct_1(vec2<i32>(40429i, -u_input.a.x), ~(~reverseBits(global0.c)), 0u), func_1(global3[_wgslsmith_index_u32(global0.b, 7u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(308f)) - _wgslsmith_f_op_f32(1000f + 182f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1778f), _wgslsmith_f_op_f32(f32(-1f) * -178f)), -511f)), _wgslsmith_dot_vec2_i32(~(~(vec2<i32>(global0.a.x, 0i) | vec2<i32>(global0.a.x, global0.a.x))), (countOneBits(vec2<i32>(global0.a.x, u_input.a.x)) << (abs(vec2<u32>(47100u, global0.c)) % vec2<u32>(32u))) | -vec2<i32>(u_input.a.x, global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_1(select(select(global3[_wgslsmith_index_u32(global0.b, 7u)], global3[_wgslsmith_index_u32(global0.b, 7u)], true), !global3[_wgslsmith_index_u32(11108u, 7u)], !var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(520f, -736f, -241f))))).a.x, min(-36041i, u_input.a.x), 1i, 29994i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(12015i, 28115i, 42678i, 7012i) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -25564i), vec4<i32>(global0.a.x, -17647i, var_1.c, global0.a.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, var_1.a.a.x, var_1.a.a.x, -2147483647i), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 2147483647i))), 760f);
}

