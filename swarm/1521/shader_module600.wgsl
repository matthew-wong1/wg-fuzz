struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 0u, 33245u), vec3<u32>(4294967295u, 53006u, 4294967295u), vec3<u32>(1u, 238u, 0u), vec3<u32>(73104u, 1u, 110417u), vec3<u32>(2320u, 0u, 4733u), vec3<u32>(17501u, 68956u, 95338u), vec3<u32>(24043u, 0u, 1u), vec3<u32>(1185u, 0u, 0u), vec3<u32>(6818u, 54514u, 1u), vec3<u32>(32130u, 27091u, 1u), vec3<u32>(58916u, 1u, 1u), vec3<u32>(54377u, 68967u, 0u), vec3<u32>(915u, 1u, 0u), vec3<u32>(113883u, 52662u, 1337u), vec3<u32>(0u, 43426u, 16538u), vec3<u32>(40651u, 1u, 0u), vec3<u32>(0u, 51777u, 4047u), vec3<u32>(9262u, 27002u, 41850u), vec3<u32>(6228u, 70226u, 4294967295u), vec3<u32>(46862u, 4294967295u, 50039u), vec3<u32>(29669u, 9901u, 2052u), vec3<u32>(73993u, 29525u, 4294967295u), vec3<u32>(32252u, 4294967295u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(44502u, 4294967295u, 4294967295u), vec3<u32>(27023u, 1u, 0u));

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> u32 {
    return ~4294967295u;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_mod_vec2_u32(firstTrailingBit(min(~u_input.a.yx, firstTrailingBit(select(vec2<u32>(arg_0.c.x, 43097u), u_input.a.zy, true)))), arg_0.b);
    let var_1 = -682f;
    let var_2 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), !global2[_wgslsmith_index_u32(var_0.x, 27u)], vec2<bool>(all(vec3<bool>(false, false, true)), true)), _wgslsmith_f_op_f32(ceil(-1094f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(744f)) - _wgslsmith_f_op_f32(-var_1))), select(select(!global2[_wgslsmith_index_u32(~arg_0.a, 27u)], !select(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec2<bool>(true, false), vec2<bool>(true, false)), !all(vec4<bool>(true, true, false, false))), select(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(var_0.x & ~arg_0.a, 27u)], all(vec4<bool>(false, false, true, false))), global2[_wgslsmith_index_u32(countOneBits((arg_0.b.x >> (var_0.x % 32u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c.x), vec2<u32>(u_input.a.x, u_input.a.x))), 27u)]), !vec2<bool>(true, 1i == countOneBits(u_input.b)));
    let var_3 = select(!select(select(!vec3<bool>(var_2.x, false, var_2.x), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), !vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(true, var_2.x, any(vec4<bool>(var_2.x, var_2.x, var_2.x, true))), !select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x))), select(!select(!vec3<bool>(false, var_2.x, false), !vec3<bool>(var_2.x, false, var_2.x), !vec3<bool>(true, var_2.x, true)), !vec3<bool>(var_2.x, false, true), vec3<bool>(!(!var_2.x), false, false)), !vec3<bool>(true, any(!global2[_wgslsmith_index_u32(26959u, 27u)]), true));
    return var_1;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1783f) - 1417f), select(true, any(vec4<bool>(false, true, true, true)), false), abs(firstTrailingBit(~vec3<i32>(-71707i, -51158i, u_input.b))), abs(vec3<u32>(arg_0.a | u_input.a.x, 0u, 4294967295u)), Struct_1(~select(28753u, 1u, true), vec2<u32>(26u, 4294967295u) >> (~vec2<u32>(21014u, arg_0.c.x) % vec2<u32>(32u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, arg_0.a, 92496u), u_input.a), _wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 26u)], global1[_wgslsmith_index_u32(arg_0.c.x, 26u)]), vec3<bool>(true, true, true)))));
    let var_1 = select(!vec2<bool>(_wgslsmith_f_op_f32(func_3(Struct_1(47574u, vec2<u32>(8319u, 0u), u_input.a))) <= _wgslsmith_f_op_f32(f32(-1f) * -737f), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), false || !(true || all(vec3<bool>(true, true, false))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1000f + 906f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-594f))));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x & func_2(Struct_2(_wgslsmith_f_op_f32(-1000f + 692f), !var_1.x, -vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(24824u, u_input.a.x, arg_0.a), vec3<u32>(u_input.a.x, 4294967295u, var_0)), Struct_1(arg_0.c.x, arg_0.b, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), var_0), 14u)];
    global0 = array<vec3<f32>, 14>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -973f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + _wgslsmith_f_op_f32(exp2(var_2.x)))), false, _wgslsmith_sub_vec3_i32(-firstTrailingBit(countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_mult_vec3_i32(select(~vec3<i32>(3409i, -1i, 25436i), abs(vec3<i32>(-22068i, u_input.b, u_input.b)), !vec3<bool>(var_1.x, true, var_1.x)), max(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, -27937i), vec3<i32>(u_input.b, u_input.b, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, u_input.b)))), vec3<u32>(_wgslsmith_mod_u32(min(29658u, ~var_0), 52304u), 39562u >> (abs(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(var_0, 4294967295u))) % 32u), u_input.a.x), Struct_1(_wgslsmith_sub_u32(4294967295u & ~arg_0.b.x, ~var_0), vec2<u32>(~u_input.a.x >> (~1u % 32u), select(~4294967295u, abs(u_input.a.x), any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), vec3<u32>(86565u, u_input.a.x, max(4294967295u, u_input.a.x) & 1u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec3<u32>, 26>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = vec4<i32>(~arg_0.c.x, -u_input.b, -24141i, ~5728i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i) >> (arg_0.d.zy % vec2<u32>(32u)), vec2<i32>(-24884i, 8354i))) | (vec4<i32>(-1i) * -abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 2978i, -1i, 33335i), vec4<i32>(4330i, u_input.b, 1i, 61260i))));
    global2 = array<vec2<bool>, 27>();
    let var_2 = ~_wgslsmith_div_u32(~883u, _wgslsmith_sub_u32(~47449u & min(u_input.a.x, arg_2.c.x), _wgslsmith_mod_u32(arg_1.a, 1u)));
    return arg_0.e;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<i32> {
    global1 = array<vec3<u32>, 26>();
    let var_0 = 1010f;
    let var_1 = func_1(Struct_1(min(arg_1.e.b.x >> (~u_input.a.x % 32u), ~0u << ((arg_1.e.a << (21919u % 32u)) % 32u)), ~arg_1.e.b, abs(min(arg_1.e.c ^ vec3<u32>(56268u, arg_1.e.c.x, u_input.a.x), vec3<u32>(arg_1.d.x, u_input.a.x, 50586u))))).e;
    global0 = array<vec3<f32>, 14>();
    global2 = array<vec2<bool>, 27>();
    return abs(abs(arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 14>();
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, _wgslsmith_sub_i32(-2147483647i, u_input.b >> (u_input.a.x % 32u)), u_input.b), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, 31067i, 58975i), vec4<i32>(16434i, 33085i, u_input.b, 1i)) >> (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(38347i, u_input.b, -2070i, 1i)))), ~15695i, _wgslsmith_mod_i32(u_input.b, ~(~u_input.b)) >> (0u % 32u));
    var_0 = func_5(vec4<bool>(false, true, true, true), Struct_2(-275f, true, abs(_wgslsmith_div_vec3_i32(vec3<i32>(8919i, var_0.x, u_input.b), vec3<i32>(var_0.x, -29983i, 23706i))), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 6907u)), func_4(func_1(Struct_1(u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), func_1(Struct_1(39627u, vec2<u32>(u_input.a.x, 17509u), u_input.a)).e, func_1(Struct_1(u_input.a.x, vec2<u32>(25969u, 44207u), vec3<u32>(1u, u_input.a.x, 0u))).e))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -1i | ~var_0.x, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, var_0.x), 0i)), vec3<i32>(-_wgslsmith_mult_i32(-6549i, 18182i), _wgslsmith_sub_i32(var_0.x, 52479i), _wgslsmith_dot_vec2_i32(vec2<i32>(20725i, -47677i), abs(vec2<i32>(-2147483647i, u_input.b)))));
    global1 = array<vec3<u32>, 26>();
    global2 = array<vec2<bool>, 27>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(0u, u_input.a.zz, global1[_wgslsmith_index_u32(0u, 26u)]))))) * -1744f)) > -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(~u_input.a.x << (_wgslsmith_clamp_u32(60381u, u_input.a.x, 0u) % 32u)), _wgslsmith_sub_u32(~735u, 3904u), _wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_add_vec2_u32(~u_input.a.xy, vec2<u32>(0u, 1u)))), var_0.yx, ~(~u_input.a.x), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(~(~vec3<i32>(46898i, u_input.b, u_input.b)), -(vec3<i32>(var_0.x, 2147483647i, u_input.b) << (global1[_wgslsmith_index_u32(1u, 26u)] % vec3<u32>(32u)))), -vec3<i32>(func_1(Struct_1(u_input.a.x, u_input.a.xx, vec3<u32>(u_input.a.x, 1u, 1u))).c.x, i32(-1i) * -1i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1871f + -374f)))) + 427f));
}

