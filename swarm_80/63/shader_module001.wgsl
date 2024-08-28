struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-321f, 935f, 1137f, 950f), vec4<f32>(1152f, -496f, -773f, 1224f), vec4<f32>(-782f, 345f, 449f, 195f), vec4<f32>(-754f, 2113f, -200f, -421f), vec4<f32>(-1083f, -1689f, -953f, 910f), vec4<f32>(560f, -1131f, 371f, 834f), vec4<f32>(1000f, 818f, 1073f, 1904f), vec4<f32>(630f, -192f, -834f, -247f));

var<private> global2: i32 = 27048i;

var<private> global3: array<f32, 9> = array<f32, 9>(-725f, 469f, 293f, 470f, -2690f, -1552f, -109f, -1092f, 1000f);

var<private> global4: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(~u_input.b, ~u_input.b | vec3<u32>(~firstLeadingBit(arg_0.a), arg_0.c, u_input.b.x));
    let var_1 = Struct_2(false && all(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.a, 9u)] > -1675f, true, !arg_0.b)), vec3<u32>(26961u, 4294967295u, ~(~14661u)), ~(~(-u_input.a)), vec3<u32>(_wgslsmith_add_u32(firstLeadingBit(61793u), ~reverseBits(31299u)), var_0.x, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.xy))));
    global3 = array<f32, 9>();
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.b.yy, ~_wgslsmith_clamp_vec2_u32(max(var_1.d.xx, _wgslsmith_div_vec2_u32(var_1.d.yz, vec2<u32>(8643u, 0u))), vec2<u32>(countOneBits(1u), var_0.x), abs(select(vec2<u32>(1u, var_0.x), u_input.b.yy, true))));
    global3 = array<f32, 9>();
    return ~1u;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~u_input.c, 10445i << (u_input.b.x % 32u)), vec2<i32>(~(-countOneBits(-43002i)), _wgslsmith_dot_vec2_i32(u_input.a, countOneBits(reverseBits(vec2<i32>(u_input.c, -66883i))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~func_3(Struct_4(4294967295u, false, 0u)), 9u)])));
    var var_2 = !select(vec3<bool>(!all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true), select(vec3<bool>(0u >= u_input.b.x, any(vec2<bool>(true, false)), true), vec3<bool>(true, true, true), true));
    var var_3 = true;
    var var_4 = ((firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, var_0, var_0, -2147483647i))) >> (~min(vec4<u32>(u_input.b.x, u_input.b.x, 20023u, 91524u), vec4<u32>(10766u, u_input.b.x, 50843u, u_input.b.x)) % vec4<u32>(32u))) >> (max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 62087u, u_input.b.x, 32052u), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u)), ~0u, select(u_input.b.x, u_input.b.x, true), u_input.b.x), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 125438u, u_input.b.x), vec4<u32>(46717u, 39350u, 35724u, 16327u), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), vec4<u32>(0u, 38750u, u_input.b.x, 46706u), _wgslsmith_mult_vec4_u32(vec4<u32>(40990u, 31360u, 1u, 11627u), vec4<u32>(38147u, 4294967295u, u_input.b.x, 13032u)))) % vec4<u32>(32u))) & abs(-vec4<i32>(-1i, u_input.c, 15591i, u_input.a.x) << (select(max(vec4<u32>(59378u, 23515u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), ~vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x), all(vec3<bool>(var_2.x, var_2.x, false))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1885f - global3[_wgslsmith_index_u32(~countOneBits(1u), 9u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 9u)]), true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1923f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    let var_0 = ~u_input.c;
    var var_1 = u_input.c;
    global0 = array<Struct_3, 19>();
    var_1 = ~(-u_input.a.x);
    var var_2 = Struct_3(vec4<bool>(!(!any(vec2<bool>(true, false))), any(vec3<bool>(true, true, true)), false, true), Struct_1(true, 16207i, arg_0.x, select(vec3<bool>(u_input.b.x < u_input.b.x, select(true, false, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, false), false), vec3<bool>(all(vec2<bool>(false, true)), true, true))), ~4294967295u, abs(~vec3<u32>(u_input.b.x, 0u, select(1u, 71479u, false))), Struct_2(any(vec3<bool>(false, true, true)), ~abs(vec3<u32>(u_input.b.x, 0u, 4294967295u)), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, var_0), u_input.a)), u_input.b));
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1362f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(26154u, 9u)])))) * _wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1077f, -483f)) * _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(16577u, 9u)]))), 425f, -527f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 9u)], _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 378f))))), vec3<bool>(any(vec2<bool>(true, true)), true, true))), _wgslsmith_div_f32(-138f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)])), global3[_wgslsmith_index_u32(~u_input.b.x, 9u)]))))));
    let var_1 = Struct_2(false, max(~vec3<u32>(84624u, 0u, u_input.b.x) ^ u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, ~4294967295u), _wgslsmith_mult_vec3_u32(countOneBits(u_input.b), vec3<u32>(1u, u_input.b.x, u_input.b.x)))), min(vec2<i32>(45023i, 1i), -vec2<i32>(-u_input.c, u_input.a.x | 33582i)), vec3<u32>(~u_input.b.x, 58229u, ~u_input.b.x) | _wgslsmith_mod_vec3_u32(u_input.b, reverseBits(vec3<u32>(u_input.b.x, 16118u, u_input.b.x))));
    let var_2 = ~(~(vec3<u32>(~var_1.b.x, _wgslsmith_div_u32(var_1.b.x, 27915u), ~var_1.b.x) << ((_wgslsmith_add_vec3_u32(var_1.b, vec3<u32>(0u, u_input.b.x, 4294967295u)) | abs(u_input.b)) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(27712u, 9u)], _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, u_input.b.x, u_input.b.x), vec4<u32>(56574u, 0u, var_2.x, 4294967295u)), 9u)]))) + global3[_wgslsmith_index_u32(max(~4294967295u, ~7846u << (var_2.x % 32u)), 9u)])));
    global1 = array<vec4<f32>, 8>();
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    global3 = array<f32, 9>();
    let var_0 = !(all(!(!vec4<bool>(arg_1.a, true, arg_0.a, arg_2.d.x))) | arg_2.d.x);
    var var_1 = Struct_3(select(!vec4<bool>(!arg_1.a, all(vec3<bool>(arg_2.d.x, true, var_0)), all(vec2<bool>(arg_1.a, false)), !arg_2.a), !vec4<bool>(arg_2.d.x, false, false || var_0, any(arg_2.d.xx)), select(!select(vec4<bool>(false, arg_1.a, arg_1.a, var_0), vec4<bool>(true, arg_0.a, false, true), var_0), !vec4<bool>(false, arg_1.a, arg_1.a, arg_2.d.x), var_0)), arg_2, arg_1.b.x, ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_1.d, vec3<u32>(arg_1.d.x, 4294967295u, 25670u) | arg_1.d), select(arg_0.d, u_input.b, any(arg_2.d))), func_1());
    var_1 = Struct_3(!select(vec4<bool>(true, arg_0.a, true, false), var_1.a, vec4<bool>(true, var_0 && var_0, func_1().a, true)), Struct_1(arg_1.c.x > arg_1.c.x, _wgslsmith_sub_i32(countOneBits(u_input.a.x), firstTrailingBit(countOneBits(u_input.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c * global3[_wgslsmith_index_u32(arg_1.d.x, 9u)]) - -2032f))), arg_2.d), arg_0.b.x, vec3<u32>(~_wgslsmith_div_u32(~arg_1.d.x, ~u_input.b.x), (8244u ^ countOneBits(u_input.b.x)) & ~50961u, var_1.e.d.x), arg_0);
    var var_2 = Struct_4(~u_input.b.x, select(countOneBits(2147483647i) == var_1.b.b, all(!var_1.a), -730f > _wgslsmith_f_op_f32(-877f + var_1.b.c)) & any(var_1.a.zwz), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(~1u, 0u, 0u)), func_1().b));
    return StorageBuffer(-firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, var_1.b.b, arg_0.c.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c.x, var_1.e.c.x, 2147483647i, var_1.b.b), vec4<i32>(arg_0.c.x, 18914i, u_input.c, arg_0.c.x)))), abs(_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_1.e.c.x, -2147483647i, -2147483647i, 1i), firstTrailingBit(vec4<i32>(arg_0.c.x, var_1.e.c.x, 28535i, 0i))), countOneBits(vec4<i32>(arg_0.c.x, -23420i, -449i, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c, -280f, 472f) * vec3<f32>(620f, arg_2.c, 450f)) + vec3<f32>(183f, arg_2.c, 338f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1310f, 1467f)) - vec2<f32>(global3[_wgslsmith_index_u32(100383u, 9u)], -420f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    global2 = u_input.a.x;
    var var_0 = false;
    var var_1 = Struct_4(u_input.b.x, false == (1258f > _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(842f, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b.x, 9u)]))))), u_input.b.x);
    global2 = 33036i;
    let x = u_input.a;
    s_output = func_5(func_1(), func_1(), Struct_1(var_1.b, 0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.a, 1u), 9u)], 118f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 9u)] - global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, var_1.a), 9u)]))), !select(!vec3<bool>(var_1.b, var_1.b, true), !vec3<bool>(false, var_1.b, var_1.b), !vec3<bool>(var_1.b, false, true))));
}

