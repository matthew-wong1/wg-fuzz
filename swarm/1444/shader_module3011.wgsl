struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = array<bool, 23>();
    let var_0 = ~firstTrailingBit(abs(vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = array<vec4<bool>, 1>();
    var var_1 = u_input.b;
    global0 = array<bool, 23>();
    return ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_0.x, 36787u), _wgslsmith_add_u32(countOneBits(1u), countOneBits(1u)));
}

fn func_2() -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, ~10349u, 1u, 1u), select(vec4<u32>(1u, _wgslsmith_add_u32(0u, 4294967295u), 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), true)));
    global0 = array<bool, 23>();
    let var_1 = Struct_2(Struct_1(i32(-1i) * -12305i, vec2<i32>(u_input.a | u_input.a, u_input.b.x >> (var_0.x % 32u)) >> (vec2<u32>(firstLeadingBit(var_0.x), 1u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(~74469u, ~var_0.x), func_3()), _wgslsmith_f_op_f32(f32(-1f) * -884f), _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), Struct_1(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -1i)), -vec2<i32>(0i, 1i)), ~_wgslsmith_mod_vec2_u32(var_0.ww, vec2<u32>(var_0.x, var_0.x)) << (~_wgslsmith_mod_vec2_u32(var_0.xy, vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)), -261f, reverseBits(min(~vec4<i32>(u_input.b.x, 30225i, -4402i, u_input.b.x), -u_input.b))), u_input.a, Struct_1(u_input.b.x, u_input.b.wz, vec2<u32>(_wgslsmith_mod_u32(~var_0.x, countOneBits(30979u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.zx) ^ ~110295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(189f)), _wgslsmith_f_op_f32(floor(564f)))) - -944f), select(_wgslsmith_mult_vec4_i32(countOneBits(u_input.b), ~vec4<i32>(u_input.b.x, -30271i, u_input.a, 10201i)), u_input.b, vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(59087u, var_0.x), var_0.wy), 23u)], true && global0[_wgslsmith_index_u32(var_0.x, 23u)], true, global0[_wgslsmith_index_u32(39983u, 23u)]))), vec3<i32>(-3465i, i32(-1i) * -1688i, -45830i));
    global0 = array<bool, 23>();
    let var_2 = var_1.e.x;
    return Struct_2(var_1.b, var_1.b, u_input.b.x, var_1.a, vec3<i32>(-27898i, reverseBits(~firstLeadingBit(u_input.b.x)), -u_input.b.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = 4294967295u >> (0u % 32u);
    var var_1 = u_input.b.x >> (~(~4294967295u) % 32u);
    var var_2 = func_2();
    let var_3 = u_input.a;
    var var_4 = Struct_1(-(~(-_wgslsmith_mod_i32(0i, var_2.c))), -u_input.b.xw, vec2<u32>(var_2.a.c.x, ~var_2.d.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(311f, arg_0.x)) - var_2.b.d))), reverseBits(u_input.b & var_2.a.e));
    return !(!select(!arg_1, !select(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 23u)], true), vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, true)), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)]), select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false), vec2<bool>(false, true)), vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(8837u, 23u)]), func_1(vec4<f32>(456f, -537f, 1400f, 218f), vec2<bool>(false, false))), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4404u, 23u)], global0[_wgslsmith_index_u32(8846u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(29888u, 23u)]), global0[_wgslsmith_index_u32(56592u, 23u)]), true)), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~178341u), ~(~vec2<u32>(25140u, 55886u)), max(firstTrailingBit(vec2<u32>(1u, 6254u)), ~vec2<u32>(4294967295u, 28256u)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-136f, 550f, -907f, -1000f), vec4<f32>(-1000f, 1573f, -404f, -652f))), select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], false), select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(4982u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(17502u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(22986u, 23u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(343f)), 1f)))), 54161i);
    let var_1 = func_2().b;
    var var_2 = (~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b.x, 38879u, 1u), vec4<u32>(4294967295u, 0u, var_1.c.x, 1997u)), vec4<u32>(4294967295u, 11663u, var_1.c.x, var_1.c.x) << (vec4<u32>(4294967295u, var_1.c.x, 18291u, var_1.c.x) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(10290u, var_1.c.x, 1u, var_0.b.x), ~vec4<u32>(var_1.c.x, 18984u, 24685u, 78767u)) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(12959u, 1u, var_0.b.x, var_0.b.x), vec4<u32>(var_1.c.x, 32424u, 0u, var_0.b.x), ~vec4<u32>(47303u, var_1.c.x, 30109u, 4294967295u)), abs(countOneBits(vec4<u32>(4294967295u, var_1.c.x, var_1.c.x, var_1.c.x)))), abs(vec4<u32>(func_2().a.c.x, ~var_1.c.x, 4294967295u, var_1.c.x))) % vec4<u32>(32u));
    var var_3 = 1u;
    var var_4 = !var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(var_0.d + var_0.d)), u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, 1u), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x, var_0.b.x), var_0.b) << (var_1.c % vec2<u32>(32u)))), var_1.d);
}

