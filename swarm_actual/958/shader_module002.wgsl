struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 26>;

var<private> global3: i32 = -1i;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_3.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-795f, global1.b), vec2<f32>(-653f, arg_3.b), global0[_wgslsmith_index_u32(0u, 28u)]))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -294f)))));
    var var_2 = arg_0;
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(1u, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(17607u, 39462u, arg_0, 10123u), vec4<u32>(arg_0, u_input.a, u_input.a, 64544u)) & 2613u)), 1u, u_input.d);
    global2 = array<f32, 26>();
    return select(vec4<u32>(countOneBits(31707u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.c.x, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(var_3.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(44853u, arg_0, 4294967295u, 13020u)), countOneBits(vec4<u32>(arg_0, var_3.x, arg_0, 1u)))), ~(~(4294967295u << (u_input.d % 32u))), _wgslsmith_clamp_u32(abs(u_input.d), ~countOneBits(var_3.x), arg_0)), ~(~vec4<u32>(max(u_input.d, u_input.d), ~62387u, 1u, u_input.c.x)), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)] && global0[_wgslsmith_index_u32(41160u, 28u)], !any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 28u)], global0[_wgslsmith_index_u32(arg_0, 28u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(53637u, 28u)], global0[_wgslsmith_index_u32(arg_0, 28u)], true))));
}

fn func_2() -> vec4<u32> {
    var var_0 = ~(~(~(~u_input.c.x) << (u_input.d % 32u)));
    let var_1 = Struct_1(u_input.b.x, 1083f, -390f, -global1.d >> (vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.d) >> (4294967295u % 32u), u_input.c.x, countOneBits(_wgslsmith_mult_u32(u_input.d, u_input.d))) % vec3<u32>(32u)));
    var var_2 = global1.a;
    var var_3 = !any(select(vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a, 28u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false), !vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)])));
    let var_4 = Struct_1(_wgslsmith_dot_vec3_i32((global1.d >> (vec3<u32>(u_input.d, 57951u, 1u) % vec3<u32>(32u))) >> (min(vec3<u32>(u_input.d, u_input.a, u_input.c.x), vec3<u32>(35469u, 0u, 0u)) % vec3<u32>(32u)), global1.d) ^ -19683i, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(min(4294967295u, 1946u) >> (u_input.d % 32u)), 26u)]), _wgslsmith_f_op_f32(1263f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.c))))))), vec3<i32>(-1i) * -global1.d);
    return abs(select(((vec4<u32>(914u, 0u, 7848u, u_input.d) | vec4<u32>(u_input.d, u_input.a, u_input.a, u_input.d)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 4294967295u, 62238u), vec4<u32>(21572u, u_input.a, u_input.a, 34981u)) % vec4<u32>(32u))) << (vec4<u32>(~u_input.d, u_input.c.x, 0u, ~4294967295u) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(u_input.c.x, 4294967295u, u_input.a, 0u)) & func_3(_wgslsmith_clamp_u32(47766u, 1u, u_input.c.x), firstTrailingBit(vec3<i32>(33138i, u_input.b.x, global1.d.x)), var_4, var_1), global0[_wgslsmith_index_u32(u_input.a, 28u)]));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.c), -2361f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-248f, -1421f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(18227u, 26u)], -433f), vec2<f32>(1756f, 1002f), vec2<bool>(false, false))))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 26u)], -826f)))), vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b)))))));
    let var_1 = arg_1;
    let var_2 = u_input.c;
    let var_3 = select(vec4<bool>(true, false && !(true & global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), true | (global0[_wgslsmith_index_u32(u_input.d, 28u)] & (global0[_wgslsmith_index_u32(4294967295u, 28u)] || false)), true), vec4<bool>(global1.d.x >= var_1.a, global0[_wgslsmith_index_u32(u_input.d, 28u)], -1i < _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, -14734i), u_input.b), u_input.b), _wgslsmith_add_u32(~48796u, u_input.d >> (arg_2.x % 32u)) > _wgslsmith_div_u32(abs(arg_0.x), ~4294967295u)), !vec4<bool>((u_input.c.x <= u_input.c.x) || global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(119772u, arg_2.x), 28u)], 27763u < var_2.x, global0[_wgslsmith_index_u32(77818u, 28u)] || select(global0[_wgslsmith_index_u32(10242u, 28u)], false, true), global0[_wgslsmith_index_u32(~reverseBits(11428u), 28u)]));
    global1 = Struct_1(firstTrailingBit(-firstTrailingBit(24030i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - var_0.x)), 1565f, max(~firstTrailingBit(vec3<i32>(var_1.a, -11815i, u_input.b.x)), vec3<i32>(12083i, -15098i, firstTrailingBit(var_1.a))));
    return ~vec4<u32>(2479u, arg_2.x, arg_2.x << (abs(u_input.a >> (u_input.c.x % 32u)) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, var_2.x, arg_0.x), func_3(86167u, vec3<i32>(4414i, u_input.b.x, -49314i), arg_1, Struct_1(-26231i, 146f, 894f, vec3<i32>(56191i, global1.d.x, 2147483647i)))), ~_wgslsmith_div_vec4_u32(arg_0, arg_0)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.d, u_input.d, u_input.c.x) | _wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, u_input.d, u_input.a, 2428u)), func_2()), vec4<u32>(select(4294967295u | u_input.d, select(u_input.d, 39208u, global0[_wgslsmith_index_u32(1459u, 28u)]), u_input.d == 40204u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c), vec2<u32>(u_input.d, u_input.a) << (u_input.c % vec2<u32>(32u))), ~(~u_input.a), _wgslsmith_div_u32(func_3(0u, global1.d, Struct_1(19716i, 1848f, 415f, global1.d), Struct_1(5635i, global2[_wgslsmith_index_u32(0u, 26u)], -1372f, global1.d)).x, 0u))), Struct_1(-2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(37632u, 26u)]))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.c)))), ~firstLeadingBit(vec3<i32>(global1.d.x, 18273i, u_input.b.x)) << (min(vec3<u32>(u_input.a, 57089u, 98139u) << (vec3<u32>(13447u, u_input.d, 1u) % vec3<u32>(32u)), abs(vec3<u32>(18062u, u_input.c.x, 66479u))) % vec3<u32>(32u))), select(u_input.c, ~_wgslsmith_sub_vec2_u32(u_input.c >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 23908u), vec2<u32>(5075u, u_input.c.x))), !(!(!global0[_wgslsmith_index_u32(51358u, 28u)]))));
    let var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.d, var_0.x, 0u) ^ u_input.c.x, 8481u, 29836u), ~(~(~u_input.c.x))), 26u)] + global2[_wgslsmith_index_u32(~min(~(~83749u), var_0.x), 26u)]);
    let var_2 = firstLeadingBit(~vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(45810u), countOneBits(var_0.x)), abs(65960u >> (var_0.x % 32u))));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(~(~global1.a), -2147483647i, 11915i), ~(~global1.d & vec3<i32>(u_input.b.x, u_input.b.x, 18526i))), global2[_wgslsmith_index_u32(var_0.x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 26u)], global1.b)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 14111i), global1.d) & (vec3<i32>(-1i) * -global1.d));
    let var_4 = var_0.x;
    return Struct_1(_wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.b.x, -1i), vec4<i32>(-24554i, global1.d.x, -39203i, global1.a), vec4<i32>(u_input.b.x, 0i, global1.a, var_3.a)), firstLeadingBit(select(vec4<i32>(var_3.d.x, 2147483647i, -50951i, -9506i), vec4<i32>(3956i, 52346i, 13760i, u_input.b.x), vec4<bool>(true, global0[_wgslsmith_index_u32(53288u, 28u)], true, true))), vec4<bool>(all(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])), true, true, true)), ~(abs(vec4<i32>(global1.d.x, 1i, global1.a, 22045i)) & (vec4<i32>(1i, -22556i, var_3.d.x, 1i) | vec4<i32>(u_input.b.x, var_3.a, u_input.b.x, global1.d.x)))), 1721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_div_f32(var_3.c, var_3.b)))))), ~max(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.a, u_input.b.x, -13099i), ~var_3.d), max(select(vec3<i32>(6556i, 0i, u_input.b.x), vec3<i32>(17446i, 1i, global1.a), vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 28u)], global0[_wgslsmith_index_u32(1u, 28u)])), global1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-675f, global1.b))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.yy, ~max(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(77508u, u_input.d, u_input.d), vec3<u32>(u_input.c.x, u_input.a, u_input.c.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.d, 26u)], -203f)), -343f, true)), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 26u)] * 1036f), _wgslsmith_f_op_f32(step(-963f, global1.c)), all(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], true, true))))))));
}

