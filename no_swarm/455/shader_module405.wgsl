struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(i32(-2147483648), 14575u, false, vec4<u32>(0u, 7772u, 1u, 801u), vec2<i32>(0i, 0i)), Struct_1(-1i, 4294967295u, false, vec4<u32>(0u, 69982u, 8689u, 33446u), vec2<i32>(83416i, 2147483647i)), Struct_1(1i, 1u, true, vec4<u32>(4294967295u, 1805u, 0u, 4294967295u), vec2<i32>(0i, -59554i)), Struct_1(36639i, 4294967295u, true, vec4<u32>(0u, 0u, 66127u, 4294967295u), vec2<i32>(-1i, 197i)), Struct_1(-20562i, 35259u, true, vec4<u32>(55883u, 12676u, 1219u, 42532u), vec2<i32>(-1i, 34612i)), Struct_1(41962i, 17654u, true, vec4<u32>(41599u, 0u, 4294967295u, 1417u), vec2<i32>(-33382i, 17026i)), Struct_1(16103i, 19276u, false, vec4<u32>(0u, 4294967295u, 1u, 81788u), vec2<i32>(40i, 32051i)), Struct_1(1i, 0u, false, vec4<u32>(4294967295u, 1210u, 0u, 4294967295u), vec2<i32>(-1i, 0i)), Struct_1(-1i, 0u, true, vec4<u32>(0u, 4294967295u, 46306u, 25426u), vec2<i32>(i32(-2147483648), 3821i)));

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(0u, 55529u, 0u, 19752u), vec4<u32>(70185u, 21701u, 45447u, 0u), vec4<u32>(15909u, 19004u, 82095u, 37088u), vec4<u32>(1u, 4294967295u, 31750u, 9356u), vec4<u32>(1u, 0u, 0u, 21558u), vec4<u32>(1u, 27704u, 0u, 51118u), vec4<u32>(19450u, 0u, 2955u, 24957u), vec4<u32>(4294967295u, 4294967295u, 25023u, 82548u), vec4<u32>(30977u, 0u, 9328u, 0u), vec4<u32>(16276u, 4294967295u, 1925u, 41426u), vec4<u32>(4294967295u, 0u, 21171u, 29920u), vec4<u32>(47489u, 1u, 4294967295u, 37285u), vec4<u32>(1u, 12916u, 1u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = select(select(!vec2<bool>(all(vec3<bool>(false, true, true)), true), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(564f, 265f)) * _wgslsmith_f_op_f32(463f - -729f)) == -1180f), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 1u)];
    global1 = array<u32, 24>();
    var var_2 = max(var_1.b, 12177u);
    var_2 = ~u_input.e.x;
    return ~(~(~(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(134u, var_1.b), 14u)] >> ((vec4<u32>(24052u, 4294967295u, 67094u, u_input.d.x) ^ vec4<u32>(60800u, 38233u, var_1.b, var_1.b)) % vec4<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_2, 1>();
    let var_0 = Struct_1(1i, u_input.a, true, abs(func_3() & (vec4<u32>(1460u, u_input.d.x, 0u, u_input.a) ^ global3[_wgslsmith_index_u32(u_input.d.x, 14u)])) << (vec4<u32>(49755u, ~global1[_wgslsmith_index_u32(0u << (0u % 32u), 24u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(57823u, 24u)], u_input.e.x) << (vec3<u32>(20707u, 8927u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2846u, 24u)], 24u)]) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(0u, 24u)], 0u, 29164u))), 0u) % vec4<u32>(32u)), countOneBits(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 8874i, 26224i), vec3<i32>(-66235i, -2147483647i, -32834i)), _wgslsmith_add_i32(u_input.b, u_input.c.x))));
    var var_1 = var_0.e.x;
    let var_2 = var_0.e.x;
    var var_3 = 2147483647i;
    return Struct_1(var_0.a, 56427u, var_0.c, ~_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(1u, 14u)], ~vec4<u32>(var_0.b, 35992u, u_input.d.x, 0u)), countOneBits(min(firstTrailingBit(~vec2<i32>(-2147483647i, 27144i)), -vec2<i32>(var_2, -1i))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global2 = array<Struct_2, 1>();
    var var_1 = 4294967295u;
    let var_2 = all(select(!(!vec2<bool>(arg_0.c, var_0.c)), !select(select(vec2<bool>(false, false), vec2<bool>(false, arg_0.c), arg_0.c), vec2<bool>(true, true), all(vec3<bool>(arg_0.c, false, arg_0.c))), true));
    let var_3 = max(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -35788i, -1i, -9387i), vec4<i32>(0i, -16021i, -1i, -2147483647i) >> (var_0.d % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, arg_0.e.x, u_input.b, func_2().a), ~(vec4<i32>(u_input.b, -3994i, 2147483647i, 0i) << (var_0.d % vec4<u32>(32u))) >> (arg_0.d % vec4<u32>(32u))));
    return Struct_1(_wgslsmith_div_i32(arg_0.e.x, ~abs(-1i)) | ~(-35344i), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.b, 4294967295u, var_0.b), ~var_0.b), any(select(vec2<bool>(true, arg_0.c), select(vec2<bool>(false, true), vec2<bool>(var_2, var_2), !vec2<bool>(arg_0.c, true)), !vec2<bool>(true, var_0.c))), var_0.d, _wgslsmith_add_vec2_i32(~var_0.e, _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-2147483647i, var_0.a), ~vec2<i32>(var_0.e.x, -46152i)), reverseBits(vec2<i32>(-16383i, arg_0.a) ^ var_3.wy), var_3.yy)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(arg_1.a, ~arg_1.b);
    global2 = array<Struct_2, 1>();
    let var_1 = select(true, false, any(select(select(!vec2<bool>(arg_1.a, arg_0), vec2<bool>(var_0.a, arg_1.a), var_0.a), select(!vec2<bool>(arg_0, false), !vec2<bool>(true, arg_1.a), true), false)));
    var var_2 = arg_2.x;
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(~1u)), 9u)];
    return func_4(func_2());
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    global3 = array<vec4<u32>, 14>();
    let var_0 = vec2<u32>(1u, ~u_input.e.x) & arg_1.d.xz;
    let var_1 = global2[_wgslsmith_index_u32((min(_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(arg_1.b, u_input.d.x, 1u)), _wgslsmith_mult_u32(func_2().b, arg_1.d.x)) << (func_4(Struct_1(-u_input.b, var_0.x, arg_0.x, global3[_wgslsmith_index_u32(var_0.x, 14u)], arg_1.e)).b % 32u)) | ~_wgslsmith_mod_u32(1u, ~25886u), 1u)];
    let var_2 = -abs(firstTrailingBit(_wgslsmith_sub_i32(i32(-1i) * -12377i, 1i)));
    global0 = array<Struct_1, 9>();
    return firstLeadingBit(vec4<i32>(~min(firstTrailingBit(60181i), min(1i, u_input.c.x)), var_2, i32(-1i) * -25449i, 21615i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 24>();
    var var_0 = _wgslsmith_sub_vec4_i32(~(-((vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -57438i) ^ vec4<i32>(u_input.c.x, 6283i, u_input.c.x, u_input.c.x)) >> (~global3[_wgslsmith_index_u32(u_input.a, 14u)] % vec4<u32>(32u)))), reverseBits(func_5(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, all(vec3<bool>(true, true, true))), func_1(true, global2[_wgslsmith_index_u32(~1u, 1u)], vec2<i32>(-36649i, 30689i), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], 24u)]), 2359f)));
    let var_1 = true;
    global1 = array<u32, 24>();
    var var_2 = u_input.e.x;
    global0 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-550f, -1000f)), 166f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2040f, -372f)), 2309f, 2196f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, -1692f, 1166f, 1292f) * vec4<f32>(1029f, -781f, 488f, 381f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(384f, -1800f, 2132f, -1000f) - vec4<f32>(-1310f, 200f, 365f, 603f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(497f, 710f, 1461f, -414f))))));
}

