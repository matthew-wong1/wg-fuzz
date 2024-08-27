struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(6827i, -23839i), vec2<i32>(-661i, -1i), vec2<i32>(-19844i, -37453i), vec2<i32>(-51768i, -46183i), vec2<i32>(1i, 3669i), vec2<i32>(1i, -1i), vec2<i32>(1i, 9054i), vec2<i32>(10644i, 2147483647i), vec2<i32>(-1i, -16374i), vec2<i32>(1i, -1i), vec2<i32>(46881i, 1i), vec2<i32>(0i, 18971i), vec2<i32>(-34159i, 49346i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-17348i, -25775i), vec2<i32>(-9410i, -1i), vec2<i32>(-19662i, 41609i), vec2<i32>(-59463i, -2587i), vec2<i32>(42906i, -32585i), vec2<i32>(2147483647i, 6339i), vec2<i32>(25936i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-46010i, 21174i), vec2<i32>(51009i, -5599i), vec2<i32>(34349i, -16027i), vec2<i32>(0i, -14146i), vec2<i32>(-121370i, 51931i), vec2<i32>(-1i, 33792i), vec2<i32>(0i, 0i));

var<private> global1: array<i32, 19> = array<i32, 19>(1129i, 1802i, 2147483647i, -1i, 13556i, -1i, -42574i, -1i, 0i, -1i, i32(-2147483648), 2147483647i, 8619i, 33492i, -1050i, 0i, 7451i, -15605i, 2147483647i);

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> vec4<i32> {
    global0 = array<vec2<i32>, 29>();
    var var_0 = 0i;
    let var_1 = 1u;
    global2 = global1[_wgslsmith_index_u32(min(max(~(~abs(u_input.a.x)), _wgslsmith_add_u32(~(var_1 >> (arg_1.a % 32u)), ~u_input.b)), _wgslsmith_clamp_u32(reverseBits(1u), ~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(11278u, 4294967295u)), var_1)), 19u)];
    var var_2 = vec2<i32>(-8503i, arg_0);
    return vec4<i32>(-var_2.x, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(select(global1[_wgslsmith_index_u32(var_1, 19u)], -1i, true) ^ ~u_input.c.x, firstTrailingBit(_wgslsmith_add_i32(arg_0, -2147483647i))), _wgslsmith_div_i32(firstTrailingBit(var_2.x) | 1i, 86i)), global1[_wgslsmith_index_u32(13065u, 19u)]);
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = func_3(~u_input.d, Struct_5(u_input.b, arg_0.b.b, ~vec3<u32>(5525u, 47361u, 4294967295u) | vec3<u32>(94520u, ~arg_0.a, u_input.a.x)));
    global0 = array<vec2<i32>, 29>();
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(min(8205i, -11029i >> (arg_0.a % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 73008i, u_input.c.x, 55356i), _wgslsmith_sub_vec4_i32(u_input.c, var_0)), ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(80128u, 19u)], 1i))), i32(-1i) * -2147483647i);
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(u_input.a.x << (21659u % 32u), 19u)], _wgslsmith_clamp_i32(var_0.x, countOneBits(var_1), 0i), ~(1i & (-5021i >> (arg_0.a % 32u))), -1i), firstTrailingBit(u_input.c));
    let var_3 = _wgslsmith_f_op_f32(-836f * 1629f);
    return select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, true))), vec4<bool>(all(vec3<bool>(false, true, true)), 1u >= arg_0.a, any(vec4<bool>(true, false, false, false)), true), vec4<bool>(true, true, true, true))), !vec4<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false)), true, true, true), all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), true | all(vec2<bool>(false, true)))));
}

fn func_1() -> Struct_5 {
    var var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(0u < u_input.b, all(vec4<bool>(true, false, true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(any(vec3<bool>(true, true, true)), all(func_2(Struct_4(u_input.a.x, Struct_2(Struct_1(-316f), Struct_1(306f))), -1530f, Struct_1(-783f), 26267u))));
    var var_1 = vec2<u32>(reverseBits(~_wgslsmith_sub_u32(u_input.a.x, 0u)), _wgslsmith_mod_u32(select(~u_input.a.x | ~5425u, u_input.a.x, all(vec2<bool>(var_0.x, false)) && true), 23250u));
    var var_2 = vec4<bool>(var_0.x, var_0.x, false, all(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true)))));
    let var_3 = Struct_1(1f);
    var_0 = vec2<bool>(var_0.x && any(!var_2.yxz), !var_2.x);
    return Struct_5(~abs(u_input.b), var_3, ~(~(~(vec3<u32>(var_1.x, u_input.a.x, var_1.x) >> (u_input.a % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~var_0.c;
    global0 = array<vec2<i32>, 29>();
    var var_2 = u_input.e & ((_wgslsmith_div_i32(28702i, ~u_input.d) ^ _wgslsmith_div_i32(0i, -2147483647i)) & ~_wgslsmith_mod_i32(43301i, -38985i >> (var_0.a % 32u)));
    var var_3 = reverseBits(abs(select(u_input.c, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 19u)], 1i, global1[_wgslsmith_index_u32(1u, 19u)], 65877i), u_input.c)), all(vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(47987u | (var_1.x | var_1.x));
}

