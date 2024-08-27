struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 5>;

var<private> global2: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(277f, vec2<i32>(50359i, 79665i), -1483i), Struct_5(1637f, vec2<i32>(1i, 28913i), 2147483647i), Struct_5(-338f, vec2<i32>(-1i, 2147483647i), 66865i), Struct_5(1122f, vec2<i32>(-26611i, -1564i), 0i), Struct_5(-649f, vec2<i32>(-17768i, -1i), 0i), Struct_5(-425f, vec2<i32>(-34698i, 2147483647i), 80516i), Struct_5(-1012f, vec2<i32>(-1i, -1i), 1i), Struct_5(1000f, vec2<i32>(14180i, i32(-2147483648)), 2147483647i), Struct_5(-613f, vec2<i32>(42928i, -29436i), -1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1903f, -1470f) + -806f), -716f)), 146f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1028f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-830f + 472f), _wgslsmith_f_op_f32(f32(-1f) * -167f))) + -2133f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.x, var_0.x, 577f))))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(731f * var_0.x), -146f, 863f)) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 581f, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-936f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1207f)) + var_0.x), 222f));
    let var_1 = ~firstTrailingBit(max(max(~1u, 1u), firstTrailingBit(1u)));
    var var_2 = vec4<u32>(63120u, var_1, 0u, _wgslsmith_div_u32(abs(var_1), ~1u));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 237f)), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(2138f * 884f), true))))), var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-922f - var_0.x), 918f))), -380f);
    return (~u_input.a.x >> (var_2.x % 32u)) & -1i;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec3<bool> {
    global1 = array<Struct_4, 5>();
    let var_0 = global1[_wgslsmith_index_u32(~1u, 5u)];
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x >> (~var_0.c % 32u), 0i), func_3() ^ _wgslsmith_dot_vec2_i32(arg_1.xy, var_0.a.b));
    global0 = !(1u >= var_0.a.c);
    var var_2 = max(firstLeadingBit(-vec4<i32>(arg_1.x, arg_1.x, var_1, arg_1.x) | (vec4<i32>(-10807i, arg_1.x, var_1, var_0.a.a) | vec4<i32>(-696i, u_input.a.x, arg_1.x, var_1))), -vec4<i32>(var_1, countOneBits(0i), func_3(), var_1)) & vec4<i32>(max(0i, arg_1.x), -((var_1 >> (var_0.a.c % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_0.a.b.x, 25904i), u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), vec2<i32>(-26970i, -1i)), select(-2147483647i, arg_1.x, arg_0), ~arg_1.x, ~var_1), vec4<i32>(u_input.a.x, u_input.a.x, ~arg_1.x, 19512i)), ~1i);
    return vec3<bool>(any(!vec2<bool>(false == arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, false)))), true, arg_0);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = !all(func_2(all(vec2<bool>(true, true)), _wgslsmith_sub_vec3_i32(~u_input.a.wyx, vec3<i32>(32636i, 2147483647i, arg_1.x))));
    let var_1 = Struct_4(arg_3, arg_2.x, 30146u);
    let var_2 = -1000f;
    let var_3 = vec3<f32>(-1102f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-252f + _wgslsmith_f_op_f32(max(-1650f, var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, arg_0.x), -982f)) - _wgslsmith_div_f32(var_1.b, arg_0.x)));
    var_0 = func_2(!(u_input.a.x <= _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1.x, u_input.a.x), -1i)), reverseBits(~countOneBits(u_input.a.xzy))).x;
    return _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -37909i), i32(-1i) * -_wgslsmith_mod_i32(1i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(-1i, u_input.a.yy, 1u, firstLeadingBit(u_input.a.ww) >> (~vec2<u32>(10007u, 7672u) % vec2<u32>(32u))), max(26563u, 85866u) >> (1u % 32u), Struct_1(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, 1002f) + vec2<f32>(-355f, 1312f)), countOneBits(u_input.a.wx), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -710f, 536f, -1690f), vec4<f32>(2031f, -362f, -399f, 737f))), Struct_1(-2147483647i, u_input.a.yz, 0u, u_input.a.zw)), vec2<i32>(abs(-27616i), u_input.a.x ^ 1i), 1u, vec2<i32>(u_input.a.x, u_input.a.x) ^ min(u_input.a.yz, vec2<i32>(1i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1195f, -1000f, 557f))))), vec3<bool>(select(true, false, true), all(func_2(all(vec3<bool>(false, true, true)), -vec3<i32>(-2147483647i, -50994i, 8787i)).yx), !any(func_2(true, vec3<i32>(u_input.a.x, -34984i, 1i)).xx)));
    global0 = false;
    global2 = array<Struct_5, 9>();
    global1 = array<Struct_4, 5>();
    var var_1 = ~((vec3<u32>(11747u, 42152u, 4294967295u) ^ reverseBits(vec3<u32>(1u, var_0.a.b, var_0.a.a.c))) | ~(~vec3<u32>(var_0.a.c.c, var_0.a.b, 4294967295u))) >> ((~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(63372u, var_0.a.b, 42613u), vec3<u32>(4294967295u, var_0.a.b, var_0.a.a.c)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.c, var_0.a.b, 1u, var_0.a.c.c), vec4<u32>(var_0.a.c.c, var_0.a.a.c, 4132u, var_0.a.b))) >> (vec3<u32>(~var_0.a.b | (var_0.a.a.c | var_0.a.c.c), min(var_0.a.a.c, countOneBits(var_0.a.a.c)), var_0.a.c.c) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = array<Struct_4, 5>();
    let var_2 = Struct_3(Struct_2(Struct_1(func_3(), var_0.a.a.b, var_1.x, -vec2<i32>(u_input.a.x, u_input.a.x)), var_1.x, var_0.a.c, var_0.a.d), func_2(any(vec3<bool>(all(vec2<bool>(false, var_0.b.x)), !var_0.b.x, var_0.b.x)), vec3<i32>(-(~u_input.a.x), ~0i, _wgslsmith_mult_i32(max(u_input.a.x, 1i), 1i))));
    var_1 = abs(_wgslsmith_mult_vec3_u32(select(~(~vec3<u32>(4294967295u, 32988u, var_1.x)), vec3<u32>(0u, var_1.x, 0u), select(select(vec3<bool>(var_0.b.x, var_2.b.x, var_0.b.x), var_2.b, false), var_2.b, !var_0.b.x)), firstLeadingBit(vec3<u32>(var_1.x, ~59080u, var_1.x))));
    var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_i32(var_2.a.c.b.x, 19573i), vec2<i32>(u_input.a.x, var_2.a.a.d.x) >> (~var_1.xx % vec2<u32>(32u)), countOneBits(abs(var_0.a.c.c)), ~(-vec2<i32>(-2147483647i, 35984i))), 16491u, Struct_1(~var_0.a.c.b.x, reverseBits(_wgslsmith_add_vec2_i32(var_2.a.c.d, u_input.a.xy)), ~81965u << (var_2.a.a.c % 32u), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(var_0.a.a.d.x, u_input.a.x)), vec2<i32>(0i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(min(var_0.a.d.x, 750f)), 159f, 417f))), !var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_clamp_vec4_i32(abs(~_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.a.b.x, u_input.a.x, var_2.a.a.b.x, 2147483647i), u_input.a)), abs(select(u_input.a | vec4<i32>(45181i, u_input.a.x, var_0.a.c.b.x, var_0.a.c.d.x), u_input.a, any(vec2<bool>(true, true)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.a.a.a, var_2.a.a.a), var_2.a.c.a), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -16908i, -52501i) >> (vec3<u32>(0u, var_1.x, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(13816i, u_input.a.x, u_input.a.x), vec3<i32>(var_2.a.c.a, u_input.a.x, 0i))), _wgslsmith_sub_i32(-2147483647i, var_0.a.c.a), -2147483647i)));
}

