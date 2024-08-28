struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 2>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1228i, vec3<bool>(true, false, true)), Struct_1(0i, vec3<bool>(true, true, false)), Struct_1(0i, vec3<bool>(true, true, false)), Struct_1(-16874i, vec3<bool>(false, true, true)), Struct_1(-47398i, vec3<bool>(true, true, false)), Struct_1(1i, vec3<bool>(false, true, false)), Struct_1(1i, vec3<bool>(true, true, false)), Struct_1(-1i, vec3<bool>(false, false, false)), Struct_1(2147483647i, vec3<bool>(true, false, true)), Struct_1(-46418i, vec3<bool>(false, false, false)), Struct_1(0i, vec3<bool>(true, false, false)), Struct_1(0i, vec3<bool>(false, true, false)), Struct_1(i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(-1i, vec3<bool>(true, false, true)), Struct_1(-1i, vec3<bool>(true, true, true)), Struct_1(1i, vec3<bool>(true, true, false)), Struct_1(2147483647i, vec3<bool>(true, true, false)), Struct_1(0i, vec3<bool>(false, false, true)), Struct_1(i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(11509i, vec3<bool>(true, true, true)), Struct_1(6979i, vec3<bool>(false, false, true)), Struct_1(2974i, vec3<bool>(false, false, true)), Struct_1(-1i, vec3<bool>(true, true, true)), Struct_1(4774i, vec3<bool>(true, false, false)), Struct_1(-11840i, vec3<bool>(true, false, true)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(0u, min(38889u, 1u)), max(~1u, 1u), ~firstTrailingBit(0u)), ~vec3<u32>(~4294967295u, _wgslsmith_add_u32(0u, 11678u), 0u)) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(14927u, 4294967295u, 15728u)), ~(~vec3<u32>(21158u, 81133u, 1u))), countOneBits(~abs(4294967295u)), 0u);
    var var_1 = (~(var_0 | ~var_0) ^ _wgslsmith_sub_u32(~50749u, _wgslsmith_mult_u32(~var_0, var_0 | var_0))) < ~1u;
    let var_2 = (vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, 37669i, u_input.b) ^ vec4<i32>(26923i, arg_0.a, arg_0.a, -14458i), ~vec4<i32>(arg_0.a, 4849i, -40346i, arg_0.a))) & _wgslsmith_mod_vec4_i32(~vec4<i32>(-19007i, arg_0.a >> (0u % 32u), arg_0.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, ~(-2147483647i), arg_0.a, min(u_input.c.x, arg_0.a)), max(max(vec4<i32>(2147483647i, -2901i, arg_0.a, arg_0.a), vec4<i32>(474i, arg_0.a, arg_0.a, -1740i)), -vec4<i32>(arg_0.a, arg_0.a, 20737i, u_input.a))));
    global1 = array<vec3<u32>, 2>();
    global0 = ~max(abs(var_0), _wgslsmith_add_u32(~select(var_0, var_0, global2.x), _wgslsmith_mod_u32(61792u, ~58740u)));
    return _wgslsmith_dot_vec4_i32(select(~vec4<i32>(var_2.x & u_input.c.x, abs(u_input.c.x), _wgslsmith_dot_vec3_i32(var_2.zxy, vec3<i32>(0i, -2147483647i, var_2.x)), -4691i), -(~vec4<i32>(arg_0.a, 2147483647i, 0i, var_2.x)), true), min(vec4<i32>(1i | arg_0.a, 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.xzy, var_2.xzz), var_2.zwz), i32(-1i) * -776i), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~var_2, vec4<i32>(1i, -2786i, arg_0.a, var_2.x)), var_2)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    global3 = array<Struct_1, 25>();
    global1 = array<vec3<u32>, 2>();
    global3 = array<Struct_1, 25>();
    let var_0 = ~vec2<i32>(arg_0.d.x, func_3(global3[_wgslsmith_index_u32(~1u, 25u)]));
    global3 = array<Struct_1, 25>();
    return 18588u;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = !(!select(vec3<bool>(arg_2.a, any(vec4<bool>(true, false, global2.x, false)), !var_0.b.x), arg_0.c.b, vec3<bool>(false, global2.x, true)));
    let var_2 = abs(~40923u);
    let var_3 = arg_0.a.a << ((_wgslsmith_dot_vec2_u32(~(~arg_1.wz), arg_1.wz) | _wgslsmith_mult_u32(var_2, ~1u)) % 32u);
    let var_4 = Struct_4(Struct_3(false, select(!arg_2.b, vec4<bool>(select(false, var_1.x, false), false | arg_2.b.x, false, arg_1.x == 4294967295u), var_0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, 664f, var_0.c.x), vec3<f32>(var_0.c.x, 555f, -489f), false)) * var_0.c), arg_2.c)), Struct_3(global2.x, vec4<bool>(all(!vec4<bool>(false, var_0.a, false, arg_0.b.b.x)), arg_0.a.b.x, any(select(arg_2.b.wzz, vec3<bool>(false, false, arg_2.b.x), true)), all(!arg_0.b.b)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - _wgslsmith_f_op_f32(arg_2.c.x + 798f)), _wgslsmith_f_op_f32(var_0.c.x + arg_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), Struct_3(global2.x, vec4<bool>(select(true, all(var_0.b), true), false, true, arg_0.a.b.x), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-869f, var_0.c.x)))), _wgslsmith_div_f32(arg_2.c.x, -1057f), arg_2.c.x)), u_input.c);
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = ~abs(3996u);
    let var_1 = vec4<bool>(arg_3.c.b.x, false, true, arg_1.b.x);
    var var_2 = max(~(~46041u), ~_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(22831u, 68282u, 0u), vec3<u32>(4294967295u, 50500u, 16389u))), reverseBits(countOneBits(0u))));
    var var_3 = _wgslsmith_clamp_i32(48692i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-1057i, -15888i), 2147483647i), _wgslsmith_div_i32(abs(arg_2.d.x), u_input.c.x >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(78785u, 28584u), 0u) % 32u)));
    let var_4 = arg_2.a;
    return global3[_wgslsmith_index_u32(~(~21367u), 25u)];
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> i32 {
    global0 = 21069u;
    var var_0 = Struct_2(func_5(arg_0.b.a <= ~abs(-152i), func_4(arg_0, vec4<u32>(arg_1 | arg_1, _wgslsmith_mult_u32(arg_1, arg_1), arg_1 & arg_1, func_2(Struct_4(Struct_3(global2.x, vec4<bool>(arg_0.c.b.x, true, global2.x, global2.x), vec3<f32>(-1067f, arg_2, arg_2)), Struct_3(global2.x, vec4<bool>(global2.x, global2.x, false, false), vec3<f32>(-293f, -620f, arg_2)), Struct_3(true, vec4<bool>(global2.x, global2.x, global2.x, arg_0.c.b.x), vec3<f32>(arg_2, arg_2, arg_2)), u_input.c))), Struct_3(false, vec4<bool>(false, global2.x, arg_0.c.b.x, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(904f, arg_2, 375f)))), Struct_4(func_4(Struct_2(Struct_1(u_input.c.x, arg_0.c.b), Struct_1(u_input.b, arg_0.c.b), arg_0.c), firstLeadingBit(vec4<u32>(arg_1, 105195u, arg_1, arg_1)), func_4(Struct_2(Struct_1(u_input.b, vec3<bool>(true, true, global2.x)), arg_0.c, Struct_1(u_input.a, vec3<bool>(true, global2.x, true))), vec4<u32>(arg_1, arg_1, arg_1, arg_1), Struct_3(global2.x, vec4<bool>(true, false, false, global2.x), vec3<f32>(-160f, -1295f, -704f)))), Struct_3(true, select(vec4<bool>(false, arg_0.b.b.x, true, global2.x), vec4<bool>(false, global2.x, true, arg_0.c.b.x), vec4<bool>(false, true, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-366f, 663f, 1749f)))), Struct_3(true, func_4(arg_0, vec4<u32>(38324u, arg_1, 0u, 18606u), Struct_3(true, vec4<bool>(false, global2.x, arg_0.b.b.x, global2.x), vec3<f32>(arg_2, -1225f, arg_2))).b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))), -abs(vec2<i32>(2147483647i, -35722i))), Struct_4(Struct_3(arg_2 > arg_2, select(vec4<bool>(global2.x, arg_0.c.b.x, arg_0.b.b.x, arg_0.c.b.x), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, arg_0.a.b.x), vec4<bool>(false, arg_0.c.b.x, global2.x, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))), func_4(arg_0, ~vec4<u32>(963u, 13315u, 14860u, 31083u), func_4(arg_0, vec4<u32>(arg_1, arg_1, 4294967295u, arg_1), Struct_3(global2.x, vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, arg_0.a.b.x, false), vec3<f32>(arg_2, -156f, -302f)))), func_4(Struct_2(Struct_1(arg_0.a.a, arg_0.c.b), Struct_1(0i, vec3<bool>(global2.x, true, global2.x)), Struct_1(-42646i, vec3<bool>(arg_0.c.b.x, true, global2.x))), abs(vec4<u32>(0u, 44196u, arg_1, arg_1)), Struct_3(false, vec4<bool>(true, arg_0.a.b.x, arg_0.c.b.x, true), vec3<f32>(-816f, arg_2, -1000f))), u_input.c)), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.a, -2147483647i), u_input.c), vec2<i32>(3151i, u_input.c.x)) & -(i32(-1i) * -5049i), vec3<bool>(true, false, arg_2 <= _wgslsmith_f_op_f32(max(-200f, arg_2)))), global3[_wgslsmith_index_u32(~(arg_1 << (_wgslsmith_mod_u32(arg_1, arg_1 | 4294967295u) % 32u)), 25u)]);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(abs(_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(arg_1, 2u)], global1[_wgslsmith_index_u32(10342u, 2u)]))), vec3<u32>(6870u, ~78254u, 1u)), ~16957u, arg_1, _wgslsmith_mult_u32(1u, arg_1 ^ 1u));
    global3 = array<Struct_1, 25>();
    var var_2 = arg_2;
    return ~var_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u, 7572u)), ~0u << ((~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(38716u, 2u)], vec3<u32>(16916u, 55148u, 4294967295u)) ^ _wgslsmith_add_u32(22195u, 0u)) % 32u));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(-2452f, _wgslsmith_f_op_f32(f32(-1f) * -173f), -1911f))));
    var var_1 = reverseBits(_wgslsmith_clamp_vec2_i32(u_input.c << (vec2<u32>(_wgslsmith_mult_u32(4294967295u, 1u), abs(4294967295u)) % vec2<u32>(32u)), u_input.c, -vec2<i32>(-37079i, firstTrailingBit(u_input.b))));
    var_1 = (vec2<i32>(~29567i, u_input.c.x) & vec2<i32>(~(-72184i), _wgslsmith_div_i32(func_1(Struct_2(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(36245u, 25u)]), 1u, 437f), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.x), vec2<i32>(-24121i, -2147483647i))))) & select(u_input.c, vec2<i32>(countOneBits(firstTrailingBit(1i)), 5134i), global2.yx);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(u_input.b, vec3<bool>(true, false, global2.x)), Struct_1(54473i, vec3<bool>(global2.x, true, global2.x)), global3[_wgslsmith_index_u32(1u, 25u)]), vec4<u32>(1u, 1u, 1u, 1u), Struct_3(false, vec4<bool>(true, global2.x, global2.x, global2.x), vec3<f32>(-1028f, 294f, var_0.x))).c.x + 1022f)));
    var var_3 = vec4<i32>(u_input.a, countOneBits(countOneBits(u_input.b)), u_input.c.x, 1i);
    let var_4 = all(!select(!func_5(false, Struct_3(true, vec4<bool>(false, true, true, true), vec3<f32>(var_2.x, 359f, -590f)), Struct_4(Struct_3(false, vec4<bool>(global2.x, true, false, global2.x), var_2.yzz), Struct_3(global2.x, vec4<bool>(false, global2.x, global2.x, true), vec3<f32>(var_0.x, var_2.x, 1067f)), Struct_3(global2.x, vec4<bool>(false, false, global2.x, false), vec3<f32>(var_0.x, var_2.x, var_0.x)), var_3.zz), Struct_4(Struct_3(global2.x, vec4<bool>(true, global2.x, global2.x, global2.x), vec3<f32>(var_2.x, -321f, 445f)), Struct_3(global2.x, vec4<bool>(false, false, true, global2.x), var_2.yxz), Struct_3(true, vec4<bool>(false, global2.x, true, global2.x), var_2.ywx), vec2<i32>(var_1.x, var_1.x))).b, select(select(vec3<bool>(false, false, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, false)), !vec3<bool>(global2.x, global2.x, true), true), select(vec3<bool>(global2.x, global2.x, true), select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, false, false), global2.x), vec3<bool>(false, global2.x, false))));
    var var_5 = Struct_4(func_4(Struct_2(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(max(27248u, firstLeadingBit(17686u)), 25u)]), vec4<u32>(_wgslsmith_sub_u32(abs(4294967295u), 0u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(26260u, 0u, 1u), ~20418u), abs(17844u), 3401u), func_4(Struct_2(global3[_wgslsmith_index_u32(reverseBits(36981u), 25u)], func_5(var_4, Struct_3(true, vec4<bool>(true, global2.x, false, false), vec3<f32>(-157f, -1490f, var_2.x)), Struct_4(Struct_3(var_4, vec4<bool>(var_4, global2.x, var_4, true), vec3<f32>(487f, -1407f, var_2.x)), Struct_3(false, vec4<bool>(global2.x, global2.x, true, var_4), var_2.zwy), Struct_3(false, vec4<bool>(var_4, false, true, true), var_2.wxx), u_input.c), Struct_4(Struct_3(global2.x, vec4<bool>(global2.x, true, var_4, global2.x), vec3<f32>(-1331f, var_0.x, 1076f)), Struct_3(true, vec4<bool>(true, false, global2.x, true), var_2.zwz), Struct_3(true, vec4<bool>(var_4, var_4, var_4, global2.x), vec3<f32>(var_2.x, 142f, var_0.x)), vec2<i32>(var_1.x, 1i))), func_5(global2.x, Struct_3(false, vec4<bool>(global2.x, var_4, global2.x, var_4), var_2.xxx), Struct_4(Struct_3(global2.x, vec4<bool>(var_4, var_4, global2.x, global2.x), vec3<f32>(-296f, var_2.x, var_2.x)), Struct_3(false, vec4<bool>(true, true, global2.x, true), var_2.wxw), Struct_3(false, vec4<bool>(false, true, var_4, true), var_2.yzy), vec2<i32>(var_1.x, var_3.x)), Struct_4(Struct_3(global2.x, vec4<bool>(global2.x, true, global2.x, false), vec3<f32>(113f, var_2.x, var_0.x)), Struct_3(true, vec4<bool>(global2.x, true, false, global2.x), vec3<f32>(627f, 1643f, 632f)), Struct_3(global2.x, vec4<bool>(var_4, true, false, global2.x), var_2.wwz), var_3.zy))), ~max(vec4<u32>(0u, 1u, 25381u, 42353u), vec4<u32>(1u, 4294967295u, 4294967295u, 28719u)), Struct_3(func_4(Struct_2(Struct_1(0i, vec3<bool>(var_4, var_4, global2.x)), Struct_1(2147483647i, vec3<bool>(false, true, global2.x)), global3[_wgslsmith_index_u32(14740u, 25u)]), vec4<u32>(2400u, 32322u, 27238u, 24913u), Struct_3(true, vec4<bool>(global2.x, global2.x, var_4, true), vec3<f32>(-917f, var_0.x, var_2.x))).b.x, !vec4<bool>(global2.x, var_4, true, false), var_2.wxy))), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x)))) == var_0.x, vec4<bool>(global2.x, var_4, all(!vec4<bool>(true, true, true, var_4)), var_4), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.ywy, vec3<f32>(var_2.x, 2037f, -443f), global2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1291f, 1975f) - vec3<f32>(var_2.x, 1022f, -368f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, 295f, var_0.x)))), func_4(Struct_2(Struct_1(var_1.x >> (1039u % 32u), vec3<bool>(global2.x, var_4, true)), global3[_wgslsmith_index_u32(~1u, 25u)], func_5(!var_4, Struct_3(true, vec4<bool>(false, false, true, global2.x), var_2.zwz), Struct_4(Struct_3(global2.x, vec4<bool>(var_4, true, true, global2.x), var_2.xxz), Struct_3(global2.x, vec4<bool>(var_4, true, global2.x, false), vec3<f32>(-940f, var_2.x, -1147f)), Struct_3(false, vec4<bool>(false, var_4, var_4, global2.x), vec3<f32>(var_2.x, -277f, 133f)), vec2<i32>(var_3.x, 1i)), Struct_4(Struct_3(false, vec4<bool>(var_4, true, false, var_4), var_2.wzx), Struct_3(true, vec4<bool>(global2.x, var_4, var_4, true), var_2.wzx), Struct_3(var_4, vec4<bool>(false, var_4, var_4, false), var_2.ywz), u_input.c))), ~reverseBits(~vec4<u32>(0u, 65627u, 0u, 0u)), Struct_3(true, !func_4(Struct_2(Struct_1(u_input.b, vec3<bool>(false, false, false)), Struct_1(-70197i, vec3<bool>(false, false, false)), Struct_1(-1577i, vec3<bool>(false, true, global2.x))), vec4<u32>(4417u, 0u, 0u, 35569u), Struct_3(global2.x, vec4<bool>(false, global2.x, var_4, var_4), vec3<f32>(917f, 397f, var_2.x))).b, vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(round(var_2.x))))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(var_5.d.x, ~var_5.d.x)), 5346i));
}

