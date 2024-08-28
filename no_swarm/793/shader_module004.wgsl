struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec4<i32>(-1i, 0i, 488i, i32(-2147483648)), 2147483647i), Struct_2(vec4<i32>(34259i, 8669i, 0i, -37486i), 27651i), Struct_2(vec4<i32>(-75410i, i32(-2147483648), -24028i, 33392i), 1i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> i32 {
    global1 = array<Struct_2, 3>();
    var var_0 = 47063u;
    let var_1 = Struct_4(min(_wgslsmith_mult_vec3_i32(firstTrailingBit(arg_0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, arg_0.c), arg_0.a)), arg_0.a), true, _wgslsmith_div_i32(countOneBits(min(17517i, arg_0.a.x)) | (abs(arg_0.a.x) | _wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a)), arg_0.c));
    let var_2 = Struct_2(~vec4<i32>(_wgslsmith_sub_i32(arg_0.c >> (4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.c, arg_0.c), var_1.a)), -49604i, countOneBits(var_1.c), 2147483647i), var_1.a.x | ~(-arg_0.a.x << (~0u % 32u)));
    var var_3 = Struct_4(var_1.a, any(vec2<bool>(arg_0.b & var_1.b, var_1.a.x <= arg_0.a.x)) || arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-28102i, max(arg_0.c, 25679i), var_2.a.x | var_1.a.x, -var_2.b), firstTrailingBit(vec4<i32>(1i, var_1.a.x, var_1.a.x, var_2.b) ^ var_2.a)) << (u_input.a % 32u));
    return abs(5801i);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = Struct_2(vec4<i32>(1i, arg_1, -arg_1, 11481i), ~_wgslsmith_add_i32(666i, ~36514i));
    var var_1 = ~(vec3<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(4142u, u_input.a, 44103u, 63967u))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(49089u, u_input.a, 54086u), vec3<u32>(45108u, 4294967295u, u_input.a)), vec3<u32>(u_input.a, 39835u, u_input.a)), ~(~58787u), u_input.a) % vec3<u32>(32u)));
    var_1 = vec3<u32>(47658u, u_input.a, ~var_1.x | u_input.a);
    global0 = array<Struct_4, 22>();
    var_0 = Struct_2(var_0.a, _wgslsmith_mult_i32(var_0.a.x, func_3(Struct_4(var_0.a.yyy, true, arg_2))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    global0 = array<Struct_4, 22>();
    global1 = array<Struct_2, 3>();
    let var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(2317f - _wgslsmith_f_op_f32(step(236f, -1096f))) >= _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(-1812f)), select(1i, -1i, false), 35569i << (arg_1 % 32u))), false), !vec2<bool>(true && all(vec2<bool>(false, false)), true), false);
    return Struct_1(vec3<u32>(~((17310u ^ arg_0.a.x) >> (arg_0.a.x % 32u)), arg_1, arg_0.a.x << (0u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) - arg_0.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: i32) -> vec4<bool> {
    global0 = array<Struct_4, 22>();
    let var_0 = select(vec4<bool>(1983u < _wgslsmith_mod_u32(u_input.a, ~u_input.a), select(false, true, all(vec2<bool>(true, true))), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), false), !vec4<bool>((arg_1.x != arg_1.x) & true, true, true, 9877u <= arg_1.x), false);
    global0 = array<Struct_4, 22>();
    let var_1 = 31737u;
    let var_2 = vec2<i32>(-9414i, _wgslsmith_mult_i32(i32(-1i) * -1i, firstLeadingBit(arg_3)));
    return !select(select(vec4<bool>(!var_0.x, any(var_0.yz), any(var_0.xyx), var_0.x && true), vec4<bool>(var_0.x, true, var_0.x, !var_0.x), select(!var_0, var_0, var_0.x & var_0.x)), vec4<bool>(all(var_0) && true, any(vec2<bool>(var_0.x, var_0.x)), false, var_0.x), !select(!var_0, select(var_0, var_0, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(vec3<u32>(40833u, ~u_input.a, ~u_input.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(539f, -873f, 431f, -1326f))))), u_input.a), vec3<u32>(abs(~(~u_input.a)), ~u_input.a, ~abs(38783u) ^ ~(u_input.a ^ u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f * _wgslsmith_f_op_f32(2307f - _wgslsmith_div_f32(279f, -121f)))), i32(-1i) * -(~2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1086f)))) - 466f));
    global0 = array<Struct_4, 22>();
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(u_input.a, 3u)], 1i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -1001f, 1000f), vec3<f32>(var_1, var_1, var_1), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 1203f, -201f))))))), Struct_2(vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(13611u, 26310u, u_input.a, 72137u) % vec4<u32>(32u)), -1i));
    let var_3 = Struct_1(firstLeadingBit(abs(vec3<u32>(1u | u_input.a, ~u_input.a, u_input.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.x, var_1, 1000f, -545f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_2.c.x, -1129f, -336f), vec4<f32>(-195f, 402f, -353f, 232f), vec4<bool>(var_0.x, true, var_0.x, false)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1787f), _wgslsmith_f_op_f32(sign(-2260f)), -1000f, -198f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-676f + _wgslsmith_f_op_f32(min(-1951f, var_2.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 * -710f))), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(var_2.b, -30152i, 2147483647i, var_2.a.a.x))) >> (abs(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(min(-vec4<i32>(var_2.b, var_2.b, var_2.a.a.x, 30042i), vec4<i32>(3053i, -2147483647i, -6978i, 30334i)), -reverseBits(vec4<i32>(-23533i, var_2.a.a.x, var_2.a.b, var_2.b)), var_2.d.a)), ~(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(var_2.a.a, vec4<i32>(var_2.a.b, 1i, var_2.b, 0i)), vec4<i32>(var_2.d.a.x, var_2.b, -2147483647i, var_2.d.b))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(547f, -215f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1579f)))))), var_3.b.x, _wgslsmith_f_op_f32(var_3.b.x + var_1)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32((var_2.d.a << (vec4<u32>(59076u, 4294967295u, 1u, 6128u) % vec4<u32>(32u))) & vec4<i32>(var_2.a.b, var_2.a.b, var_2.b, 0i), var_2.d.a), ~vec4<i32>(-45377i, -var_2.a.b, -65415i, 0i)));
}

