struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-339f, true), Struct_1(160f, true), Struct_1(-2306f, true), Struct_1(1175f, false), Struct_1(570f, false), Struct_1(-1583f, true), Struct_1(1307f, false));

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: array<f32, 5>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<f32>) -> u32 {
    let var_0 = arg_1.c.a.x;
    global2 = array<f32, 5>();
    let var_1 = arg_1.a.x > 30050i;
    let var_2 = Struct_4(_wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(min(var_0, 0i), 2147483647i >> (u_input.a.x % 32u), -1302i, _wgslsmith_mod_i32(-9612i, 43759i))) << (select(~firstLeadingBit(vec4<u32>(0u, u_input.a.x, arg_0.x, 45115u)), ~(~vec4<u32>(65274u, u_input.a.x, arg_0.x, arg_0.x)), select(vec4<bool>(false, var_1, true, var_1), global1[_wgslsmith_index_u32(1u, 18u)], arg_1.c.a.x >= arg_1.c.a.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.c.x + arg_2.x)))))), arg_1.c);
    let var_3 = Struct_5(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, arg_0.x), 0u, 1u, arg_0.x) >> (~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1280u, ~18764u, firstLeadingBit(28679u)) % vec4<u32>(32u)), select(global1[_wgslsmith_index_u32(u_input.a.x >> (arg_0.x % 32u), 18u)], select(!select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(true, var_1, false, true), global1[_wgslsmith_index_u32(arg_0.x, 18u)]), select(vec4<bool>(false, false, var_1, false), !global1[_wgslsmith_index_u32(4294967295u, 18u)], false), false), vec4<bool>(var_1, true, true, var_1)), arg_1.c.b);
    return _wgslsmith_mult_u32(45378u, var_3.a.x << (max(u_input.a.x, ~(~47739u)) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = select(~arg_2.b.b.x, min(arg_0.b.x, ~_wgslsmith_clamp_i32(~(-33576i), -1i, firstTrailingBit(arg_2.b.b.x))), !(select(true, false, all(global1[_wgslsmith_index_u32(arg_1, 18u)])) || true));
    global1 = array<vec4<bool>, 18>();
    global1 = array<vec4<bool>, 18>();
    var var_1 = ~(((~arg_1 << (arg_1 % 32u)) & abs(4294967295u)) ^ u_input.a.x);
    var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-select(firstLeadingBit(vec3<i32>(arg_2.a.x, arg_2.b.a.x, 1i)), min(vec3<i32>(arg_0.a.x, arg_2.b.a.x, arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.b.x, arg_0.b.x)), vec3<bool>(true, true, true)), -(-vec3<i32>(arg_2.b.a.x, arg_0.a.x, arg_0.a.x) & vec3<i32>(0i, -1i, arg_0.b.x))), arg_0.a.x);
    return ~_wgslsmith_mult_vec2_i32(~(~vec2<i32>(arg_0.b.x, arg_0.a.x)), vec2<i32>(~arg_0.a.x, -24967i)) ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(-arg_2.a.x, arg_0.a.x | arg_0.a.x), select(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), arg_2.b.b), _wgslsmith_add_vec2_i32(~vec2<i32>(0i, -2147483647i), firstTrailingBit(vec2<i32>(0i, -2147483647i))), false && (arg_2.c.x <= global2[_wgslsmith_index_u32(0u, 5u)])));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(vec2<i32>(-1i, _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(45595i, 41199i, 32170i) & (i32(-1i) * -2147483647i))), Struct_2(func_4(Struct_2(vec2<i32>(2147483647i, 1i), vec2<i32>(-10740i, -28844i)), func_3(u_input.a, Struct_4(vec4<i32>(19027i, -29645i, -2147483647i, 4121i), global2[_wgslsmith_index_u32(u_input.a.x, 5u)], Struct_3(vec2<i32>(-10371i, -2147483647i), Struct_2(vec2<i32>(0i, 31162i), vec2<i32>(-49977i, 0i)), vec4<f32>(-1985f, -1462f, -1676f, global2[_wgslsmith_index_u32(4294967295u, 5u)]))), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(2575u, 5u)])), Struct_3(vec2<i32>(-1i, -9569i), Struct_2(vec2<i32>(-1i, -17505i), vec2<i32>(2147483647i, 31103i)), vec4<f32>(2151f, global2[_wgslsmith_index_u32(16028u, 5u)], 572f, global2[_wgslsmith_index_u32(u_input.a.x, 5u)]))) ^ abs(~vec2<i32>(-1i, 0i)), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-53444i, 23134i, -1i), vec3<i32>(44508i, -6531i, -38662i)), ~(-2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1021f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(21563u, 5u)])), global2[_wgslsmith_index_u32(~u_input.a.x, 5u)], global2[_wgslsmith_index_u32(countOneBits(2784u), 5u)])))));
    var var_1 = select(!select(vec2<bool>(true, 1u >= u_input.a.x), vec2<bool>(true, true), true), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), false), !vec2<bool>(any(vec2<bool>(false, false)), false), true), vec2<bool>(true, true));
    var_0 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, i32(-1i) * -17494i), _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0.a.x), vec2<i32>(var_0.b.a.x, var_0.a.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(var_0.b.b.x, 2147483647i)) & (vec2<i32>(var_0.a.x, -698i) & var_0.b.b))), Struct_2(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a.x, var_0.a.x), var_0.a), ~2842i), vec2<i32>(-1i) * -var_0.a), _wgslsmith_f_op_vec4_f32(abs(var_0.c)));
    var var_2 = min(-max(reverseBits(vec3<i32>(var_0.b.b.x, var_0.b.b.x, -2147483647i)) << (vec3<u32>(37611u, u_input.a.x, 87020u) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(28004i, -2147483647i, 2147483647i), vec3<i32>(0i, var_0.a.x, var_0.a.x)))), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-41328i, var_0.a.x, 36367i) & vec3<i32>(37142i, 38283i, var_0.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.b.x, var_0.a.x, 18762i), vec3<i32>(var_0.a.x, 25633i, 16319i)))));
    global0 = array<Struct_1, 7>();
    return -(~(-var_2.x));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = -vec2<i32>(-1i, func_2());
    global2 = array<f32, 5>();
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_1.x, u_input.a.x), vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(892u, arg_1.x, 35533u, 80470u), vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_add_u32(0u, 16283u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(105694u, min(1u, firstLeadingBit(50239u)), u_input.a.x), ~(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, arg_1.x, u_input.a.x)) ^ vec3<u32>(4294967295u, u_input.a.x, 91124u))));
    return !vec3<bool>(all(vec3<bool>(false, any(vec2<bool>(false, true)), any(vec3<bool>(false, arg_2.b, arg_2.b)))), true & arg_2.b, ((21384u ^ u_input.a.x) <= ~arg_1.x) & arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(any(global1[_wgslsmith_index_u32(~0u, 18u)]), true & any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-270f - global2[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 5u)])), ~(u_input.a | u_input.a), Struct_1(_wgslsmith_f_op_f32(round(-955f)), select(false, true, true))));
    var var_1 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(-13272i), -2147483647i, min(-1i, 2147483647i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(8034i, -40979i, 22816i), min(vec3<i32>(1i, -70964i, 33389i), vec3<i32>(60803i, 2147483647i, 32664i)), vec3<i32>(1i, 1i, 1i))) & -_wgslsmith_mult_vec3_i32(max(~vec3<i32>(44627i, 48101i, -9801i), -vec3<i32>(-30512i, -21619i, 1i)), vec3<i32>(0i, abs(24529i), _wgslsmith_div_i32(-1i, 1i)));
    var var_2 = !select(var_0.x, any(!var_0.xy) && var_0.x, !(!(u_input.a.x < 4294967295u)));
    global1 = array<vec4<bool>, 18>();
    var var_3 = Struct_5(~(~select(select(vec4<u32>(1u, u_input.a.x, 4294967295u, 69249u), vec4<u32>(57110u, u_input.a.x, 5115u, 1u), false), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 14796u)), !global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), global1[_wgslsmith_index_u32(~(~4294967295u), 18u)], Struct_2(min(vec2<i32>(_wgslsmith_div_i32(-2147483647i, 55161i), abs(-2147483647i)), vec2<i32>(1i, -2147483647i) | var_1.xz), _wgslsmith_add_vec2_i32(~(vec2<i32>(var_1.x, 1i) >> (u_input.a % vec2<u32>(32u))), -(~var_1.zz))));
    let var_4 = Struct_4(vec4<i32>(1i >> (u_input.a.x % 32u), firstLeadingBit(var_1.x), -(~var_1.x), 27438i), _wgslsmith_f_op_f32(round(-1000f)), Struct_3(~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_3.c.b.x), vec2<i32>(37274i, var_3.c.b.x)), var_3.c.a), var_3.c, _wgslsmith_div_vec4_f32(vec4<f32>(787f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3.a.x, 5u)]), -1201f, global2[_wgslsmith_index_u32(~0u, 5u)]), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_3.a.x, 5u)], -858f, -659f, global2[_wgslsmith_index_u32(18502u, 5u)]) * vec4<f32>(global2[_wgslsmith_index_u32(var_3.a.x, 5u)], global2[_wgslsmith_index_u32(15923u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)])))))));
    var_1 = select(-abs(var_4.a.xww) | var_4.a.xwz, reverseBits(vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -78674i, _wgslsmith_mod_i32(var_3.c.b.x, var_4.a.x)), _wgslsmith_div_i32(countOneBits(-48257i), 64920i), -_wgslsmith_dot_vec3_i32(var_4.a.yyw, vec3<i32>(var_4.c.a.x, -35027i, var_4.a.x)))), var_3.b.x);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~firstLeadingBit(_wgslsmith_div_vec3_i32(max(var_4.a.xwz, vec3<i32>(-2000i, var_1.x, -2147483647i)), -var_4.a.wyy)), u_input.a.x | 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1282f + var_4.c.c.x), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)]))), 191f))));
}

