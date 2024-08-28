struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: f32 = -870f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<f32, 9>();
    var var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(arg_0.e, true), arg_0.c.a <= 517f);
    let var_1 = vec2<i32>(~(abs(u_input.c) | _wgslsmith_clamp_i32(-2147483647i, u_input.c << (17444u % 32u), _wgslsmith_sub_i32(-2147483647i, 0i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.d, vec4<i32>(arg_0.d.x, -1i, 1i, 1i), vec4<i32>(arg_0.d.x, u_input.c, -72i, arg_0.d.x)), vec4<i32>(-23958i, arg_0.d.x, 1i, -2147483647i) & vec4<i32>(157i, arg_0.d.x, -11716i, 8058i)), (vec4<i32>(u_input.c, -2147483647i, -24759i, arg_0.d.x) & arg_0.d) | ~arg_0.d), -(i32(-1i) * -29675i)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-932f, -467f, 1291f), vec3<f32>(arg_0.c.a, -468f, arg_0.c.a), vec3<bool>(false, false, arg_0.e))))))), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(71483u, arg_0.a.d, max(firstLeadingBit(1u), arg_0.c.d))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1364f);
    return abs(~var_2.b.x ^ ~u_input.a);
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec3<u32>(u_input.b.x, countOneBits(0u), arg_0.b.x);
    var var_1 = arg_3;
    var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(803u, 9u)], arg_0.b.x, var_0.x, arg_0.b.x), -736f, Struct_1(1000f, 1u, u_input.b.x, 1155u), vec4<i32>(u_input.c, 1i, 13885i, 1i), false)), firstLeadingBit(arg_3.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b.x, 1u, 16087u, u_input.b.x), vec4<u32>(1u, 14642u, 4294967295u, u_input.a)), vec4<u32>(4294967295u, 25496u, arg_3.b.x, 0u))), _wgslsmith_mod_u32(1u, var_0.x), max(firstTrailingBit(~1u), arg_0.b.x >> (69112u % 32u)));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_mult_vec2_i32(reverseBits(countOneBits(~vec2<i32>(u_input.c, 2147483647i))) & reverseBits(vec2<i32>(-25375i, _wgslsmith_add_i32(u_input.c, u_input.c))), _wgslsmith_div_vec2_i32(abs(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, -2147483647i)), max(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -1i)))), -(~(vec2<i32>(-48077i, 30812i) >> (var_1.b.zz % vec2<u32>(32u))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.x), ~abs(~u_input.a), var_0.x, firstTrailingBit(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 284f)), Struct_1(-720f, var_0.x, var_1.b.x, ~1u), min(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(var_3.x, -2147483647i, -1i, u_input.c), firstLeadingBit(vec4<i32>(-1i, 0i, var_3.x, var_3.x)))), countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_3.x, var_3.x, u_input.c), vec4<i32>(56316i, var_3.x, var_3.x, 1i)))), !(true && (true && var_1.a)) || !all(!vec4<bool>(arg_2, var_1.a, false, arg_3.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~4294967295u), 9u)], _wgslsmith_f_op_f32(sign(-806f))), arg_1.b.x, ~arg_1.b.x, arg_2.b.x), _wgslsmith_f_op_f32(round(-1926f)), arg_0.a, min(vec4<i32>(-18163i >> (~arg_0.a.c % 32u), arg_0.d.x & -u_input.c, 0i, 2147483647i), _wgslsmith_mod_vec4_i32(arg_0.d, arg_0.d)), arg_0.e);
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.c.c, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -675f))));
    let var_3 = arg_1.b.x;
    global0 = array<f32, 9>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-650f, 328f, -718f, -727f))))))));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(418f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(54750u, 9u)]), true)), ~u_input.b), 432f, all(vec3<bool>(false, true, true)), Struct_3(u_input.b.x != u_input.b.x, _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.b.x, u_input.a)))), Struct_3(all(vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.a)) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(33029u, 1u, u_input.a)) % vec3<u32>(32u))), Struct_3(true | func_2(Struct_4(vec3<f32>(global0[_wgslsmith_index_u32(80435u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], 284f), u_input.b), -1271f, true, Struct_3(false, vec3<u32>(42799u, 0u, u_input.a))).e, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(20468u, 9u)], -1019f, global0[_wgslsmith_index_u32(u_input.a, 9u)], 1000f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 542f, 395f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, 504f, 1161f, 476f)))))), !(!vec4<bool>(all(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, false))))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~u_input.a, 9u)])) + func_2(Struct_4(vec3<f32>(global0[_wgslsmith_index_u32(1u, 9u)], 1795f, -2347f), u_input.b), 873f, -23402i >= u_input.c, Struct_3(true, u_input.b)).b), global0[_wgslsmith_index_u32(~(33851u >> ((4294967295u << (u_input.b.x % 32u)) % 32u)), 9u)])), global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_f32(-2044f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)] * 1044f), _wgslsmith_f_op_f32(f32(-1f) * -243f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(min(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))) + global0[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(var_0.x, u_input.a, 0u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(var_0.x, 25407u, 1u, 62571u), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), true)), 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(ceil(1260f))))), 208f));
    let var_1 = Struct_3(true, ~vec3<u32>(~u_input.a, u_input.a, firstTrailingBit(~1u)));
    let var_2 = Struct_1(-155f, 26889u, (~(10008u ^ var_1.b.x) >> (~20435u % 32u)) & 1u, abs(_wgslsmith_sub_u32(u_input.a, var_1.b.x)));
    return vec3<u32>(var_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_2.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(8325u, var_1.b.x, 10369u), var_1.b) % 32u), ~var_2.b, ~func_3(Struct_2(var_2, 772f, var_2, vec4<i32>(-36874i, u_input.c, -1i, u_input.c), true))), abs(~var_1.b)), ~var_1.b.x);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> f32 {
    let var_0 = func_2(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(arg_2.a.x, arg_2.b.x, arg_1, 0u), arg_2.a.x, Struct_1(1396f, arg_1, u_input.b.x, 4995u), vec4<i32>(u_input.c, -12359i, 17451i, u_input.c), arg_0), Struct_3(arg_0, vec3<u32>(15068u, 0u, 0u)), Struct_3(arg_0, vec3<u32>(arg_2.b.x, 43534u, u_input.b.x)))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.x)))))), _wgslsmith_f_op_f32(-343f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_f32(-1309f + -1354f))), Struct_3(arg_0, _wgslsmith_add_vec3_u32(arg_2.b, abs(vec3<u32>(29741u, 0u, 14547u))))).c;
    global1 = -495f;
    let var_1 = Struct_2(func_2(arg_2, 1104f, all(vec2<bool>(arg_0, arg_0)) | arg_0, Struct_3(!any(vec3<bool>(arg_0, false, false)), vec3<u32>(select(var_0.c, 0u, arg_0), u_input.a, abs(1u)))).c, _wgslsmith_f_op_f32(max(-1000f, arg_2.a.x)), var_0, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(1971i, -1612i, u_input.c, 1i), vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), min(vec4<i32>(2147483647i, u_input.c, -49766i, u_input.c), vec4<i32>(-2147483647i, u_input.c, u_input.c, 1i)))), countOneBits(27121u) > u_input.b.x);
    global0 = array<f32, 9>();
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1625f, var_0.a, false)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, -824f, global0[_wgslsmith_index_u32(4294967295u, 9u)]) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-140f, var_1.a.a, 1039f), arg_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(305f, var_0.a, arg_2.a.x))))))), _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(46064u, var_1.a.b, var_0.c)), abs(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.xz), arg_1)), abs(select(~u_input.b, arg_2.b, !vec3<bool>(var_1.e, arg_0, false)))));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_5(true, u_input.a, Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(116172u, 9u)], 263f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-945f, global0[_wgslsmith_index_u32(u_input.a, 9u)], 1157f))))), _wgslsmith_div_vec3_u32(~func_1(), vec3<u32>(13756u, u_input.b.x, 4294967295u) | vec3<u32>(u_input.a, 0u, u_input.b.x)))));
    var var_0 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1788f, 1371f, 2091f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2323f, 1232f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<f32>(-1684f, global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]))), false)), vec3<f32>(_wgslsmith_f_op_f32(-561f * global0[_wgslsmith_index_u32(44383u, 9u)]), 654f, _wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 9u)], 30446u, 4679u, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(global0[_wgslsmith_index_u32(u_input.a, 9u)], 0u, u_input.b.x, u_input.b.x), vec4<i32>(-32351i, u_input.c, u_input.c, -2147483647i), false), Struct_3(false, u_input.b), Struct_3(false, u_input.b))).x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(175f, 1000f, -512f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], -1040f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(89496u, 9u)], 869f, 125f), vec3<f32>(1878f, -386f, -533f))))))), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, abs(1u), ~func_3(Struct_2(Struct_1(-1433f, u_input.a, 42970u, u_input.a), global0[_wgslsmith_index_u32(20935u, 9u)], Struct_1(943f, 0u, u_input.a, u_input.b.x), vec4<i32>(u_input.c, -1i, -2147483647i, u_input.c), false)))));
    let var_1 = Struct_1(var_0.a.x, var_0.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(var_0.b), var_0.b), ~min(u_input.a, 1u)) >> ((var_0.b.x >> (0u % 32u)) % 32u), ~reverseBits(~(~u_input.a)));
    var var_2 = select(vec4<bool>((false && all(vec3<bool>(false, false, false))) && !any(vec2<bool>(true, true)), false, false & any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), true), vec4<bool>(((var_0.a.x < var_0.a.x) || true) || (_wgslsmith_f_op_f32(569f + -672f) >= _wgslsmith_f_op_f32(trunc(var_0.a.x))), select(any(vec4<bool>(true, false, true, false)), global0[_wgslsmith_index_u32(2186u, 9u)] == 118f, true) & all(vec2<bool>(true, true)), select(all(vec4<bool>(true, true, true, true)), true & (var_1.a == -2033f), !select(true, false, false)), all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true));
    var var_3 = var_1;
    let var_4 = countOneBits(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), min(vec2<i32>(2147483647i, u_input.c), vec2<i32>(15001i, -2147483647i))), ~u_input.c >> ((var_0.b.x ^ var_0.b.x) % 32u))) >> (var_3.b % 32u);
    var_2 = select(!vec4<bool>(any(!vec2<bool>(var_2.x, var_2.x)), any(vec3<bool>(var_2.x, false, false)), var_2.x, var_2.x), select(select(select(!vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, true, true, true), true), vec4<bool>(var_0.a.x == 768f, true, var_2.x | var_2.x, true), !(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), vec4<bool>(!(!var_2.x), false, var_2.x, true), select(select(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, false, var_2.x, true)), select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), select(true, var_2.x, var_2.x)), !select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, true, false, false)), var_2.x)), false);
    var var_5 = ~(~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(937f, global0[_wgslsmith_index_u32(abs(min(firstTrailingBit(var_0.b.x), 76493u)), 9u)]), vec4<f32>(1f, global0[_wgslsmith_index_u32(var_0.b.x, 9u)], -289f, _wgslsmith_f_op_f32(1874f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1456f), 2004f, false)))), ~0u, -16936i, vec4<u32>(~(~_wgslsmith_sub_u32(var_0.b.x, 4294967295u)), 13990u, ~(var_1.c & var_3.b), ~1u));
}

