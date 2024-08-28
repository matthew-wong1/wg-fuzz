struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(0u, vec4<u32>(1u, 1u, 1u, 0u), 1i, i32(-2147483648)), Struct_1(0u, vec4<u32>(32556u, 0u, 147205u, 22610u), -50308i, 25662i), Struct_1(7737u, vec4<u32>(3621u, 1868u, 76194u, 1u), -22897i, 2147483647i), Struct_1(1u, vec4<u32>(1u, 1u, 9957u, 15077u), i32(-2147483648), -67833i), Struct_1(0u, vec4<u32>(55314u, 4294967295u, 1u, 4294967295u), 2147483647i, -40225i), Struct_1(4294967295u, vec4<u32>(48466u, 15208u, 12849u, 49354u), i32(-2147483648), 7838i), Struct_1(16002u, vec4<u32>(14653u, 0u, 37942u, 8281u), 0i, -15693i), Struct_1(46709u, vec4<u32>(4294967295u, 22315u, 1u, 4294967295u), 1i, -37151i), Struct_1(1u, vec4<u32>(0u, 1u, 4294967295u, 1u), -24698i, 47092i), Struct_1(56748u, vec4<u32>(29850u, 40727u, 0u, 0u), 0i, -930i), Struct_1(55893u, vec4<u32>(44383u, 1u, 2614u, 1u), 1i, -19974i), Struct_1(1u, vec4<u32>(38740u, 1u, 0u, 97321u), 0i, i32(-2147483648)), Struct_1(31222u, vec4<u32>(0u, 69711u, 4294967295u, 76086u), 5970i, -1i), Struct_1(29416u, vec4<u32>(50519u, 0u, 4294967295u, 34011u), 0i, -81640i), Struct_1(26494u, vec4<u32>(12721u, 4294967295u, 0u, 1u), i32(-2147483648), 1i), Struct_1(14513u, vec4<u32>(0u, 50189u, 8544u, 22644u), 0i, 0i), Struct_1(0u, vec4<u32>(1u, 5446u, 1u, 1u), 0i, -19699i));

var<private> global1: array<Struct_4, 20>;

var<private> global2: array<vec4<f32>, 19>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    let var_0 = abs(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-1293i, u_input.b.x)));
    var var_1 = vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(16505i, -2147483647i, 38284i, 1i), -vec4<i32>(var_0, 30428i, arg_1.c, -22277i)), arg_2.a.b) ^ -arg_0.b;
    global2 = array<vec4<f32>, 19>();
    var var_2 = 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.d.x, max(1u, arg_2.b.a)), 1u, arg_1.b.x), arg_1.b.wwz);
    global0 = array<Struct_1, 17>();
    return -2147483647i;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: vec3<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d, u_input.d), ~vec4<u32>(5328u, u_input.d.x, 25955u, u_input.e)), reverseBits(1u)), 20u)];
    return func_3(arg_0, Struct_1(4294967295u, u_input.d, var_0.b.d, -arg_0.b.x), global1[_wgslsmith_index_u32(reverseBits(u_input.e), 20u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    global1 = array<Struct_4, 20>();
    let var_0 = Struct_4(Struct_2(true, _wgslsmith_add_i32(-2147483647i, 1i), arg_1, -188f), Struct_1(arg_1.b.x, select(_wgslsmith_add_vec4_u32(arg_1.b, vec4<u32>(4294967295u, arg_1.b.x, arg_3.b.x, 51294u)) | vec4<u32>(43000u, 48830u, u_input.e, arg_1.a), ~vec4<u32>(1u, 0u, u_input.e, 0u), arg_2), 1i, 31303i), arg_1);
    global0 = array<Struct_1, 17>();
    var var_1 = countOneBits(vec3<i32>(_wgslsmith_sub_i32(reverseBits(24532i), arg_0 & arg_1.c), -2147483647i, u_input.c));
    var_1 = select(vec3<i32>(~1i, -1i, u_input.b.x), vec3<i32>(func_2(Struct_5(vec3<i32>(1182i, -17767i, 2147483647i), vec3<i32>(var_0.b.c, var_0.b.d, arg_0)), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2)), vec3<i32>(var_1.x, var_0.c.c, -23665i)), -77693i, -(1i & var_1.x)) ^ _wgslsmith_div_vec3_i32(-firstTrailingBit(vec3<i32>(arg_0, u_input.c, u_input.b.x)), ~vec3<i32>(27950i, arg_1.c, 22601i)), !(!(select(var_0.a.a, var_0.a.a, arg_2) | (arg_3.a == u_input.d.x))));
    return Struct_4(Struct_2(any(vec4<bool>(var_0.a.a & arg_2, arg_2 && true, var_0.a.d != var_0.a.d, all(vec3<bool>(arg_2, true, var_0.a.a)))), _wgslsmith_clamp_i32(~25576i, 2147483647i, -u_input.a), var_0.a.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(786f, _wgslsmith_f_op_f32(var_0.a.d * var_0.a.d))))), Struct_1(53014u, firstTrailingBit(_wgslsmith_mod_vec4_u32(arg_1.b, var_0.a.c.b)) >> (reverseBits(vec4<u32>(u_input.e, u_input.e, 4294967295u, arg_1.a) | arg_1.b) % vec4<u32>(32u)), var_1.x, 0i >> (~(~arg_3.b.x) % 32u)), Struct_1(arg_3.b.x, ~u_input.d, max(~(10594i & arg_0), i32(-1i) * -3761i), 0i));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = -func_3(Struct_5(vec3<i32>(u_input.c, arg_0.c.d, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.d, u_input.b.x, -1i), vec3<i32>(33991i, 0i, -2147483647i))), func_4(arg_0.a.c.d & u_input.c, Struct_1(30258u, arg_0.a.c.b, u_input.b.x, arg_0.b.c), all(vec4<bool>(false, true, arg_0.a.a, true)), Struct_3(u_input.d.x, vec2<u32>(u_input.d.x, 4294967295u))).a.c, Struct_4(func_4(arg_0.b.c, Struct_1(12511u, vec4<u32>(56061u, u_input.d.x, arg_0.b.a, u_input.d.x), arg_0.c.c, u_input.c), true, Struct_3(21149u, u_input.d.zx)).a, func_4(arg_0.a.b, Struct_1(99285u, arg_0.b.b, 1i, 2147483647i), arg_0.a.a, Struct_3(1u, arg_0.c.b.wy)).b, global0[_wgslsmith_index_u32(4294967295u, 17u)])) != 0i;
    let var_1 = Struct_5(vec3<i32>(_wgslsmith_div_i32(-1i, 33242i), arg_0.a.c.d, u_input.c), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 1i, -1i), vec4<i32>(-1188i, 1525i, -852i, 1i)), firstLeadingBit(u_input.a)), -min(vec3<i32>(1i, -1i, u_input.b.x), vec3<i32>(u_input.c, 14599i, u_input.a)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-411f * 221f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_div_f32(-120f, -166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-265f, arg_0.a.d, arg_0.a.a)) + _wgslsmith_f_op_f32(-arg_0.a.d))), arg_0.a.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-987f)) - _wgslsmith_f_op_f32(-1f)))));
    var var_3 = !(!select(!vec4<bool>(true, true, arg_0.a.a, true), select(!vec4<bool>(true, arg_0.a.a, false, arg_0.a.a), vec4<bool>(arg_0.a.a, arg_0.a.a, false, false), !vec4<bool>(false, false, arg_0.a.a, true)), select(select(vec4<bool>(arg_0.a.a, arg_0.a.a, true, arg_0.a.a), vec4<bool>(arg_0.a.a, arg_0.a.a, false, arg_0.a.a), vec4<bool>(arg_0.a.a, false, false, true)), !vec4<bool>(arg_0.a.a, arg_0.a.a, true, arg_0.a.a), all(vec2<bool>(arg_0.a.a, arg_0.a.a)))));
    var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d * _wgslsmith_f_op_f32(616f + -940f))) < -744f, arg_0.a.a, !(!var_3.x), arg_0.a.a);
    return func_4(_wgslsmith_div_i32(~(~max(u_input.a, -5626i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.b.xx, select(vec2<i32>(-2147483647i, u_input.a), var_1.b.xx, var_3.x)), vec2<i32>(-12729i, ~(-2147483647i)))), Struct_1(u_input.d.x, vec4<u32>(~arg_0.b.b.x, 0u, ~func_4(arg_0.a.b, arg_0.b, arg_0.a.a, Struct_3(0u, vec2<u32>(4294967295u, 14320u))).c.a, 34993u), arg_0.c.d, _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(2147483647i, var_1.b.x))), var_3.x, Struct_3(_wgslsmith_mod_u32(20169u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 1u, u_input.e), arg_0.a.c.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.a, _wgslsmith_sub_u32(31746u, 29029u)), _wgslsmith_sub_vec2_u32(u_input.d.yy & vec2<u32>(1u, 48201u), arg_0.a.c.b.wy)))).a.c;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(!select(true, true, arg_0.c < (0i ^ arg_0.d)), _wgslsmith_mult_i32(arg_0.d, arg_0.d), func_5(func_4(_wgslsmith_sub_i32(func_2(Struct_5(vec3<i32>(arg_0.c, -1i, u_input.c), vec3<i32>(-33236i, -1i, arg_0.c)), vec2<bool>(false, true), vec3<i32>(arg_0.c, arg_0.d, 1i)), -u_input.a), arg_0, true, Struct_3(u_input.d.x, countOneBits(vec2<u32>(58014u, arg_0.b.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f - 320f))))));
    let var_1 = func_4(func_2(Struct_5(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(18884i, u_input.b.x, -19877i), vec3<i32>(var_0.c.d, 2147483647i, u_input.a))), select(~vec3<i32>(-2147483647i, arg_0.d, arg_0.d), vec3<i32>(-14202i, u_input.a, 14443i), var_0.a)), vec2<bool>(!all(vec3<bool>(true, var_0.a, var_0.a)), true), vec3<i32>(u_input.b.x, -_wgslsmith_div_i32(-1i, var_0.c.c), ~func_5(Struct_4(Struct_2(true, 1i, Struct_1(2193u, var_0.c.b, -27066i, var_0.c.c), var_0.d), var_0.c, Struct_1(var_0.c.b.x, u_input.d, u_input.a, -2147483647i))).d)), Struct_1(_wgslsmith_add_u32(~6410u, var_0.c.b.x), vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 1u), vec3<u32>(0u, u_input.d.x, arg_0.a)), _wgslsmith_div_u32(arg_0.b.x, ~u_input.d.x), abs(~arg_0.b.x)), 0i | var_0.b, -2147483647i << ((u_input.d.x | ~0u) % 32u)), false, Struct_3(var_0.c.a, arg_0.b.wz)).a;
    var var_2 = _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2087f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, var_0.d) + -765f))));
    var var_3 = Struct_3(4294967295u, ~vec2<u32>(~0u, _wgslsmith_mod_u32(var_1.c.b.x << (7936u % 32u), 0u)));
    var_3 = Struct_3(var_3.a, vec2<u32>(arg_0.a, func_5(func_4(-3068i, arg_0, true, Struct_3(55872u, vec2<u32>(var_3.a, u_input.d.x)))).b.x));
    return abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, func_2(Struct_5(vec3<i32>(var_0.b, var_0.c.c, 37676i), vec3<i32>(1i, -7712i, var_1.c.c)), !vec2<bool>(var_1.a, false), vec3<i32>(2147483647i, -2147483647i, u_input.c)), arg_0.c, _wgslsmith_add_i32(abs(-29455i), -1i | u_input.b.x)), vec4<i32>(-1i, -6616i, -abs(2147483647i), func_5(func_4(var_1.c.d, var_0.c, false, Struct_3(u_input.e, var_3.b))).c)));
}

fn func_6(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2305f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_6(Struct_5(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, u_input.c, -2147483647i)), ~vec3<i32>(-1i, 78367i, u_input.a)), vec3<i32>(33339i, u_input.b.x, -u_input.b.x)), select(abs(func_1(global0[_wgslsmith_index_u32(min(u_input.e, 36548u), 17u)])), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 42299i, min(0i, 61688i)), firstLeadingBit(select(vec4<i32>(26321i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, -18895i, u_input.c, -61198i), true))), vec4<bool>(true, any(vec2<bool>(false, true)), true, false)), vec3<bool>(func_4(~u_input.b.x, Struct_1(17992u, u_input.d, 49654i, u_input.c), false, Struct_3(4294967295u, u_input.d.zw)).a.d < _wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(f32(-1f) * -945f)), (u_input.e << (u_input.e % 32u)) <= ~38377u, all(vec2<bool>(all(vec4<bool>(false, false, false, true)), false)))));
    var_0 = _wgslsmith_f_op_f32(trunc(-307f));
    var var_1 = Struct_3(func_5(global1[_wgslsmith_index_u32(u_input.d.x & _wgslsmith_div_u32(u_input.d.x, u_input.e), 20u)]).a ^ u_input.e, vec2<u32>(~19357u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u >> (u_input.e % 32u), ~0u, abs(74021u)), ~(~u_input.d))));
    let var_2 = (vec2<i32>(~u_input.a >> (var_1.b.x % 32u), -1i) & vec2<i32>(max(_wgslsmith_sub_i32(u_input.b.x, 1i), ~u_input.a), _wgslsmith_div_i32(-37244i, func_4(-19289i, Struct_1(1u, vec4<u32>(1u, 24473u, u_input.e, var_1.a), u_input.b.x, u_input.a), false, Struct_3(var_1.a, var_1.b)).a.c.d))) | u_input.b;
    var var_3 = max(vec4<i32>((i32(-1i) * -var_2.x) >> (~(68578u >> (1u % 32u)) % 32u), 0i, var_2.x, ~(-func_3(Struct_5(vec3<i32>(u_input.a, 3880i, -33378i), vec3<i32>(-1i, 0i, var_2.x)), Struct_1(u_input.e, u_input.d, u_input.c, 60771i), global1[_wgslsmith_index_u32(var_1.b.x, 20u)]))), vec4<i32>(u_input.c << (countOneBits(22777u) % 32u), 1i, var_2.x, _wgslsmith_add_i32(var_2.x, func_3(Struct_5(vec3<i32>(u_input.c, var_2.x, 71040i), vec3<i32>(-24481i, var_2.x, 1i)), Struct_1(1u, u_input.d, 41360i, -2147483647i), func_4(var_2.x, Struct_1(4294967295u, u_input.d, var_2.x, var_2.x), false, Struct_3(var_1.a, vec2<u32>(var_1.b.x, var_1.a)))))));
    var_1 = Struct_3(abs(min(firstLeadingBit(u_input.d.x) & firstLeadingBit(0u), ~(~var_1.b.x))), select(_wgslsmith_mod_vec2_u32(u_input.d.wz, _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1.a, var_1.a), var_1.b, true), var_1.b)), vec2<u32>(var_1.b.x, _wgslsmith_clamp_u32(6969u, 0u, 0u)) | select(u_input.d.wx ^ vec2<u32>(var_1.b.x, 26576u), ~u_input.d.zy, true), vec2<bool>(true, true)));
    var var_4 = ~(~vec4<u32>(select(_wgslsmith_mult_u32(var_1.b.x, var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 49757u, 43137u), u_input.d.ywy), true), ~36602u, 1u, u_input.d.x));
    var var_5 = -2578f;
    let var_6 = vec2<f32>(1f, -345f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~var_1.b.x, var_4.x) | u_input.d.wzw, ~_wgslsmith_add_u32(21545u, 45027u));
}

