struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec3<i32>(i32(-2147483648), -18101i, 2147483647i), 0u, 37608u, vec4<i32>(1i, -1i, -30955i, 2147483647i));

var<private> global1: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(1531f, -1793f, -1000f, -2830f), vec4<f32>(741f, 136f, 2125f, -646f), vec4<f32>(-427f, -931f, -1000f, 166f), vec4<f32>(-744f, -2093f, 1000f, -412f), vec4<f32>(-353f, 1837f, 843f, -345f), vec4<f32>(337f, -637f, 1404f, -1255f), vec4<f32>(-1434f, -2076f, -691f, -942f), vec4<f32>(-1000f, -1141f, 108f, 1619f), vec4<f32>(1027f, -176f, -1553f, 285f), vec4<f32>(2784f, -535f, -1448f, 244f), vec4<f32>(619f, -2187f, 1000f, 384f), vec4<f32>(-1414f, 1241f, 703f, 1102f), vec4<f32>(1246f, -319f, -388f, 1000f), vec4<f32>(-1825f, 1000f, 1000f, -736f), vec4<f32>(1000f, -238f, -1158f, 333f), vec4<f32>(1212f, -908f, 237f, -1306f), vec4<f32>(364f, -1364f, -2029f, -501f));

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-24804i, i32(-2147483648), i32(-2147483648), 1i), true);

var<private> global3: array<Struct_3, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32((~(~vec4<u32>(global0.d, 70550u, 35050u, global0.d)) | reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.c, 91144u, 1u), vec4<u32>(global0.c, 47565u, 26732u, u_input.b.x)))) >> (vec4<u32>(~27063u, _wgslsmith_mod_u32(4294967295u, global0.c), global0.c, _wgslsmith_clamp_u32(4294967295u, ~23198u, min(4294967295u, 36754u))) % vec4<u32>(32u)), ~(~abs(vec4<u32>(u_input.b.x, 25200u, global0.d, global0.d)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, 1u, 1u, global0.d), select(vec4<u32>(global0.d, u_input.c, u_input.b.x, u_input.c), vec4<u32>(16887u, u_input.b.x, u_input.b.x, global0.c), vec4<bool>(true, global2.b, global2.b, false))) % vec4<u32>(32u))));
    global1 = array<vec4<f32>, 17>();
    let var_1 = Struct_2(1i);
    let var_2 = Struct_1(global2.a.x, -vec3<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-19908i, u_input.a.x, global2.a.x, global0.b.x), global2.a), vec4<i32>(0i, var_1.a, -2147483647i, -37318i)), countOneBits(1i)), u_input.c, (~firstTrailingBit(global0.d) & ~global0.d) << (_wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 1062u), _wgslsmith_mult_u32(global0.c, 1u) >> (u_input.b.x % 32u)) % 32u), vec4<i32>(_wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec4_i32(global2.a, u_input.e)), (var_1.a & _wgslsmith_mod_i32(-2147483647i, 79499i)) << ((26501u & u_input.c) % 32u), 1i, 0i));
    global3 = array<Struct_3, 5>();
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global0.d, 12473u, global0.d), vec4<u32>(65573u, u_input.c, global0.d, 76809u)) << (vec4<u32>(1u, 1u, global0.d, 11375u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(40557u, 20656u, 4294967295u, global0.d), _wgslsmith_div_vec4_u32(vec4<u32>(global0.d, global0.d, 14242u, global0.c), vec4<u32>(1u, global0.d, global0.d, 28094u)))), ~firstLeadingBit(~vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c))), vec4<u32>(abs(23921u), _wgslsmith_mod_u32(func_3(-1404f), u_input.c), _wgslsmith_clamp_u32(u_input.b.x, global0.c, global0.d) >> (61925u % 32u), ~u_input.c) >> (vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 74822u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, 1u, global0.c, u_input.b.x), vec4<u32>(0u, 4294967295u, 4455u, 27455u))), ~77040u ^ ~u_input.c, ~12975u) % vec4<u32>(32u)));
    global2 = global3[_wgslsmith_index_u32(countOneBits(48126u), 5u)];
    let var_1 = Struct_2(1i);
    global2 = Struct_3(_wgslsmith_sub_vec4_i32(-firstTrailingBit(global2.a), global0.e) ^ -global2.a, !global2.b);
    let var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(14568i, 0i), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.a.x), vec2<i32>(u_input.a.x, 36492i)), 19309i, -2147483647i)), ~(-(vec3<i32>(global2.a.x, -2147483647i, 2147483647i) & ~u_input.d)), 4294967295u, u_input.c, vec4<i32>(-1i, _wgslsmith_add_i32(-20475i, _wgslsmith_mult_i32(firstLeadingBit(1i), ~var_1.a)), 2147483647i ^ u_input.e.x, 1i));
    return Struct_2(global2.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: f32) -> vec4<i32> {
    global1 = array<vec4<f32>, 17>();
    return u_input.e;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = !(!vec3<bool>(all(vec3<bool>(false, arg_1, true)), all(vec2<bool>(true, true)), global0.d == 1u));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(global0.b.x, arg_0), global2.a.x & arg_2.a), global0.e.wx), -u_input.d.x);
    var var_2 = arg_2.e.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.c, global0.c, 48440u)), vec3<u32>(~arg_2.c, _wgslsmith_sub_u32(u_input.c, 32436u), u_input.b.x & 1u)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))) % 32u);
    var_2 = abs(-(~u_input.a.x));
    var var_3 = arg_3;
    return Struct_2(-63932i);
}

fn func_1() -> i32 {
    global3 = array<Struct_3, 5>();
    var var_0 = func_5(-u_input.a.x, true, Struct_1(abs((global0.b.x ^ global2.a.x) & (i32(-1i) * -5706i)), _wgslsmith_add_vec3_i32(global2.a.yxw, min(vec3<i32>(global2.a.x, -2147483647i, u_input.e.x), vec3<i32>(global0.e.x, 0i, -2147483647i))), ~_wgslsmith_sub_u32(u_input.c, global0.d | 0u), ~(~1u), max(func_4(func_2(Struct_2(64268i)), !vec3<bool>(true, true, global2.b), vec3<i32>(u_input.e.x, global2.a.x, -43190i), _wgslsmith_f_op_f32(min(1000f, 256f))), min(vec4<i32>(global0.b.x, global0.a, global0.e.x, 2147483647i), global0.e | vec4<i32>(global2.a.x, 49569i, u_input.e.x, global2.a.x)))), -503f);
    var_0 = Struct_2(global0.a);
    global1 = array<vec4<f32>, 17>();
    var var_1 = Struct_1(9090i, u_input.d, ~1u >> (_wgslsmith_mod_u32(~4294967295u, countOneBits(u_input.c)) % 32u), ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b >> (u_input.b % vec2<u32>(32u))) ^ ~1u, _wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(-1i, -10417i, min(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-548i, var_0.a), vec2<i32>(52161i, -45942i))), _wgslsmith_sub_i32(global0.b.x & var_0.a, -1i)), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(global2.a.x, -1i), -2147483647i, 1i, ~u_input.d.x))));
    return _wgslsmith_div_i32(0i, 7234i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec2<bool>(any(vec4<bool>(global2.b, false, true, global2.b)), global2.b)) | (-2147483647i > -func_1());
    global2 = Struct_3(vec4<i32>(29975i, -15970i, global2.a.x, ~(-(0i << (u_input.b.x % 32u)))), global2.b);
    global2 = Struct_3(-vec4<i32>(-(u_input.d.x ^ -34097i), global2.a.x, global0.b.x, 1i), var_0);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1555f))));
    let var_2 = Struct_1(-1555i, (vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, global0.a), global2.a.ww), func_4(Struct_2(2147483647i), vec3<bool>(global2.b, global2.b, global2.b), global0.e.zwz, 678f).x, -2147483647i) << (vec3<u32>(~1u, 4294967295u, abs(global0.c)) % vec3<u32>(32u))) << (select(vec3<u32>(u_input.c, ~0u, u_input.b.x), vec3<u32>(4294967295u, ~0u, _wgslsmith_sub_u32(20086u, 9718u)), !select(vec3<bool>(var_0, false, true), vec3<bool>(true, true, false), true)) % vec3<u32>(32u)), reverseBits(firstTrailingBit(_wgslsmith_add_u32(43600u, 35863u))), u_input.c, vec4<i32>(~(-1i), u_input.a.x, global2.a.x, func_4(Struct_2(u_input.a.x), !vec3<bool>(true, global2.b, true), countOneBits(global0.e.xzw), _wgslsmith_f_op_f32(abs(-161f))).x) >> (firstTrailingBit(vec4<u32>(u_input.c, ~u_input.c, select(9980u, u_input.c, var_0), 4294967295u)) % vec4<u32>(32u)));
    var var_3 = true;
    global3 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global2.a.x, global0.a, var_2.b.x));
}

