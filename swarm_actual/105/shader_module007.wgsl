struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(1i, 0i, 0i, 1i), vec4<i32>(1i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 1i, 2147483647i, -1i), vec4<i32>(2147483647i, 1i, -29568i, 1i), vec4<i32>(1i, -37850i, 12007i, 21812i), vec4<i32>(-29765i, 60429i, 0i, -44075i), vec4<i32>(0i, 1i, 2147483647i, -14736i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i), vec4<i32>(-1i, 31804i, 1i, -70151i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-1i, 8070i, 0i, i32(-2147483648)));

var<private> global3: vec2<bool>;

var<private> global4: array<i32, 11> = array<i32, 11>(47246i, 7480i, 0i, -10971i, -11181i, 1i, -87398i, i32(-2147483648), 9460i, 2147483647i, -23979i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~min(3381u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 103071u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 65328u, 4294967295u)), vec3<u32>(32529u, 0u, 1u))), 1u), 23u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -312f);
    global0 = array<Struct_1, 23>();
    let var_2 = Struct_2(-min(abs(_wgslsmith_add_i32(-1i, -24859i)), 1i), Struct_1(var_0.a, (var_0.c | vec4<u32>(41545u, 6378u, 1u, var_0.c.x)) & (_wgslsmith_add_vec4_u32(var_0.c, var_0.b) ^ vec4<u32>(4294967295u, var_0.b.x, var_0.c.x, var_0.d)), _wgslsmith_clamp_vec4_u32(var_0.c, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, 25850u, 23543u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(15352u, 9559u, var_0.b.x, var_0.c.x), vec4<u32>(var_0.d, 43570u, 1u, 53349u))), vec4<u32>(var_0.d, ~var_0.b.x, _wgslsmith_clamp_u32(23272u, var_0.b.x, var_0.c.x), 1u)), firstTrailingBit(31213u >> (_wgslsmith_mult_u32(35303u, var_0.b.x) % 32u)), vec3<i32>(_wgslsmith_mod_i32(72694i, _wgslsmith_mod_i32(u_input.a.x, -61593i)), -firstLeadingBit(global4[_wgslsmith_index_u32(var_0.d, 11u)]), -63506i)), -30197i, global0[_wgslsmith_index_u32(var_0.b.x, 23u)]);
    var var_3 = vec4<u32>(_wgslsmith_clamp_u32(1u, ~0u, reverseBits(1u)), countOneBits(select(var_0.b.x, var_2.d.c.x, any(vec2<bool>(global3.x, false)))), var_2.d.b.x, abs(_wgslsmith_clamp_u32(~4294967295u, min(var_2.b.c.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(43703u, var_0.d, var_0.b.x), var_0.c.wwx))) << (var_0.b.x % 32u));
    return select(!vec2<bool>(any(!vec4<bool>(global3.x, true, false, false)), any(select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x), false))), vec2<bool>(false, false), any(!select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x))) || all(vec3<bool>(true, global3.x, true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = firstTrailingBit(vec4<u32>(~4294967295u, 4294967295u, ~arg_3.x, _wgslsmith_add_u32(~arg_3.x, arg_3.x) >> (~arg_3.x % 32u)));
    global0 = array<Struct_1, 23>();
    let var_1 = arg_3.x << (~arg_3.x % 32u);
    let var_2 = vec3<f32>(1625f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(646f))) + 573f), 1011f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1014f + 568f) - -592f)) * -903f));
    var_0 = countOneBits(~vec4<u32>(~4294967295u, _wgslsmith_mod_u32(4294967295u, var_0.x), select(arg_3.x, 4528u, true), _wgslsmith_mult_u32(var_1, arg_3.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1 ^ 28666u, ~arg_3.x, arg_3.x | var_1, arg_3.x), vec4<u32>(countOneBits(var_0.x), ~1u, firstTrailingBit(var_0.x), 4294967295u >> (0u % 32u))) % vec4<u32>(32u)));
    return !select(vec3<bool>(true, true, true), vec3<bool>(func_3(-vec3<i32>(global4[_wgslsmith_index_u32(var_1, 11u)], arg_1, -2147483647i)).x, !func_3(vec3<i32>(-5535i, global4[_wgslsmith_index_u32(var_1, 11u)], -2147483647i)).x, any(!vec3<bool>(true, false, arg_2))), !(!all(vec2<bool>(arg_2, global3.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    global2 = array<vec4<i32>, 11>();
    let var_0 = vec4<i32>(u_input.b.x, 38054i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.a.x, u_input.a.x)), abs(vec2<i32>(0i, -1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_mod_vec2_i32(u_input.b, u_input.a))), (firstTrailingBit(vec2<i32>(u_input.b.x, 53563i)) & _wgslsmith_mult_vec2_i32(u_input.b, u_input.a)) ^ u_input.a), ~2147483647i);
    let var_1 = !func_4(!func_3(vec3<i32>(var_0.x, global4[_wgslsmith_index_u32(arg_1, 11u)], 0i) | var_0.zzx), _wgslsmith_add_i32(firstLeadingBit(1i), 0i), !(true & (arg_0.x > 1u)), min(vec2<u32>(firstLeadingBit(21243u), 81580u & arg_1), _wgslsmith_mult_vec2_u32(arg_0, ~arg_0)));
    let var_2 = Struct_2(-2147483647i, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b.x, -2147483647i, 1i), var_0), -u_input.b.x), var_0.xy), reverseBits(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_0.x, arg_0.x, arg_1), vec4<u32>(44426u, 27236u, 0u, arg_0.x)))), vec4<u32>(_wgslsmith_mult_u32(~79546u, abs(0u)), arg_0.x, 1u, abs(~arg_1)), arg_0.x, ~firstLeadingBit(vec3<i32>(19567i, 57107i, var_0.x) >> (vec3<u32>(1u, 1u, 19197u) % vec3<u32>(32u)))), var_0.x, global0[_wgslsmith_index_u32(arg_1, 23u)]);
    return _wgslsmith_dot_vec4_u32(var_2.d.c, _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, arg_1 & 0u, 4294967295u, 1u), vec4<u32>(4294967295u, arg_1, 18593u, 33921u) | var_2.d.b)) | 0u;
}

fn func_1(arg_0: f32) -> Struct_2 {
    return Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(15620u, 11u)], u_input.a.x), ~(-31253i), global4[_wgslsmith_index_u32(~4294967295u, 11u)], global4[_wgslsmith_index_u32(~57716u, 11u)]), -reverseBits(vec4<i32>(-6689i, -1i, u_input.b.x, u_input.b.x))), ~(-abs(u_input.a.x))), Struct_1(vec2<i32>(u_input.a.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(7374u, 2165u, 41251u), vec3<u32>(461u, 8596u, 38072u)), vec3<u32>(1u, 42446u, 36979u)), 11u)]), ~(~(~vec4<u32>(89310u, 4294967295u, 14700u, 65392u))), ~select(firstTrailingBit(vec4<u32>(33139u, 100619u, 36126u, 13740u)), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(false, true, false, global3.x)), max(4294967295u, firstLeadingBit(1u)), -(~vec3<i32>(u_input.a.x, -1121i, 0i))), -countOneBits(u_input.b.x), Struct_1(u_input.b, _wgslsmith_add_vec4_u32(min(vec4<u32>(75236u, 36775u, 1u, 4249u), vec4<u32>(4294967295u, 20502u, 14712u, 1u)), vec4<u32>(1u, abs(0u), 96851u, _wgslsmith_div_u32(37193u, 4294967295u))), vec4<u32>(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 2474u, 0u))), 3117u, func_2(vec2<u32>(1u, 1u), 67341u, !vec3<bool>(global3.x, global3.x, false)), 1u), reverseBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 62512u), 0u)), abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, global4[_wgslsmith_index_u32(10347u, 11u)]), vec3<i32>(global4[_wgslsmith_index_u32(1u, 11u)], 2147483647i, 74840i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 4277i), vec3<i32>(-26664i, u_input.b.x, u_input.b.x)), countOneBits(9380i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(165f), vec2<bool>(false, any(vec3<bool>(true, global3.x | true, !global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(668f - -1238f), _wgslsmith_f_op_f32(f32(-1f) * -327f)) + _wgslsmith_div_f32(926f, _wgslsmith_f_op_f32(f32(-1f) * -1363f))) + 1138f), Struct_2(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, -12526i), u_input.b.x), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-608f, -1698f, global3.x)) - -1207f)).b, -1i, Struct_1(-vec2<i32>(16886i, u_input.a.x), countOneBits(vec4<u32>(0u, 0u, 0u, 0u)), ~vec4<u32>(4608u, 0u, 8127u, 1u), 2008u, ~func_1(285f).d.e)), vec3<bool>(all(vec4<bool>(true, global3.x & global3.x, global3.x, false)), !global3.x, select(!global3.x, !(!global3.x), true)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_mod_u32(var_0.d.d.b.x, 0u), _wgslsmith_dot_vec3_u32(var_0.a.d.c.yyx, vec3<u32>(0u, 16460u, var_0.a.b.d)), max(var_0.a.b.b.x, 7440u), ~var_0.a.d.b.x)), vec4<u32>(~(var_0.d.b.d | var_0.d.d.b.x), 69572u, 10642u, ~var_0.a.b.d)), ~1u), 11u)];
    let var_2 = Struct_3(all(select(func_4(select(var_0.e.xy, vec2<bool>(true, true), global3.x), u_input.a.x, !global3.x, ~var_0.d.d.b.ww), var_0.e, false)), ~firstTrailingBit((vec2<u32>(var_0.a.b.c.x, var_0.d.b.d) | var_0.a.b.b.wz) | var_0.d.b.b.xw));
    var var_3 = Struct_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2034f)))), !(!vec2<bool>(true, var_2.a)), _wgslsmith_f_op_f32(var_0.c + -1576f), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), select(func_4(vec2<bool>(true, var_0.b.x), max(-var_0.a.c, var_1.x), var_0.e.x || (global3.x & var_0.e.x), ~vec2<u32>(22369u, 0u)), vec3<bool>(!var_0.e.x, -7187i >= -var_0.d.b.e.x, !func_3(vec3<i32>(0i, -13235i, global4[_wgslsmith_index_u32(var_0.d.d.b.x, 11u)])).x), var_2.a | var_0.e.x));
    var var_4 = Struct_3(!var_2.a, vec2<u32>(var_3.a.b.c.x, var_0.a.d.b.x) >> (firstLeadingBit(abs(var_0.a.b.b.wz)) % vec2<u32>(32u)));
    var var_5 = min(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(var_1.x, var_0.a.d.a.x, 2147483647i), vec3<i32>(global4[_wgslsmith_index_u32(var_2.b.x, 11u)], var_1.x, var_3.d.a)), var_0.a.b.e), var_1.wzw), countOneBits(abs(abs(vec3<i32>(var_3.a.c, var_1.x, 2147483647i))))), ~_wgslsmith_div_i32(0i, var_3.d.d.a.x));
    var_3 = Struct_4(func_1(-364f), var_0.e.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-477f)), _wgslsmith_f_op_f32(-var_0.c))) - 1f), Struct_2((i32(-1i) * -27921i) | (-2147483647i << (var_0.d.b.c.x % 32u)), func_1(var_3.c).b, global4[_wgslsmith_index_u32(var_0.d.d.b.x, 11u)], var_3.a.d), var_3.e);
    var_3 = Struct_4(func_1(1000f), func_4(var_3.b, abs(max(~var_0.d.a, ~var_1.x)), any(!select(var_3.e, vec3<bool>(false, true, true), var_3.e)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_3.d.d.b.x) ^ 1u, var_3.a.b.d)).yz, -1513f, var_0.a, vec3<bool>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1763f) >= _wgslsmith_f_op_f32(ceil(1000f)), any(vec3<bool>(any(vec4<bool>(false, global3.x, true, true)), true, true))));
    let var_6 = Struct_1(vec2<i32>(var_0.d.c, min(-(~1i), global4[_wgslsmith_index_u32(~1u, 11u)])), _wgslsmith_div_vec4_u32(~(vec4<u32>(1u, var_3.d.d.b.x, var_0.a.d.b.x, 9773u) & vec4<u32>(0u, 0u, 25328u, var_4.b.x)), vec4<u32>(_wgslsmith_add_u32(abs(60311u), ~var_0.a.d.b.x), abs(_wgslsmith_mod_u32(4294967295u, 4584u)), ~50503u, ~0u)), ~vec4<u32>(~abs(var_3.d.b.b.x), ~(~var_4.b.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_0.d.d.d), var_2.b.x >> (1u % 32u)), firstTrailingBit(select(var_0.d.d.c.x, var_3.d.d.c.x, false))), ~var_2.b.x, ~_wgslsmith_mod_vec3_i32(var_0.d.d.e, ~(~var_3.d.d.e)));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_div_vec2_i32(~var_6.a, -var_6.a) >> (select(~var_3.a.b.c.zw, vec2<u32>(var_0.a.b.b.x, var_4.b.x) << (vec2<u32>(var_6.c.x, 7007u) % vec2<u32>(32u)), vec2<bool>(true, var_2.a)) % vec2<u32>(32u))));
}

