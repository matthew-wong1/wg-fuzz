struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec4<u32>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-1274f, 635f);

var<private> global1: array<f32, 28>;

var<private> global2: u32 = 20032u;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(57673i, 1i, -1i, 1i), vec4<i32>(-1i, -24845i, 0i, -46563i), vec4<i32>(-26949i, 2147483647i, 109432i, 2278i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> vec3<u32> {
    global1 = array<f32, 28>();
    let var_0 = _wgslsmith_dot_vec2_i32(arg_1.a.zy, ~u_input.b & ~(-firstLeadingBit(vec2<i32>(arg_1.b.a.x, -1i))));
    let var_1 = Struct_5(arg_1.e.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, global0[_wgslsmith_index_u32(arg_0.x, 2u)], global1[_wgslsmith_index_u32(arg_0.x, 28u)], 1396f)) + vec4<f32>(-662f, global1[_wgslsmith_index_u32(78707u, 28u)], -715f, 1008f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, -656f, global0[_wgslsmith_index_u32(arg_0.x, 2u)], arg_1.b.b)))), Struct_1(global3[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_div_f32(-1307f, global1[_wgslsmith_index_u32(countOneBits(~37093u), 28u)]), arg_1.d, any(select(!vec4<bool>(arg_1.e.x, false, false, false), vec4<bool>(true, true, arg_1.e.x, arg_1.d), !vec4<bool>(arg_1.b.e, false, true, true))), (true && arg_1.b.c) || arg_1.b.d));
    var var_2 = -select(max(-48945i, var_1.c.a.x), ~_wgslsmith_div_i32(~u_input.b.x, _wgslsmith_sub_i32(var_1.c.a.x, 1i)), arg_1.d);
    var var_3 = _wgslsmith_f_op_f32(ceil(-146f));
    return max(firstTrailingBit(arg_0) ^ abs(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, u_input.a, u_input.a), vec4<u32>(1u, u_input.c, 1u, arg_0.x)), _wgslsmith_add_u32(u_input.a, u_input.a))), ~(~_wgslsmith_sub_vec3_u32(~arg_0, vec3<u32>(u_input.c, arg_0.x, u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32((_wgslsmith_mult_i32(arg_0.a.x, arg_0.a.x) >> (_wgslsmith_add_u32(4294967295u, 0u) % 32u)) << (0u % 32u), abs(-abs(arg_0.a.x))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_clamp_i32(1i, arg_0.a.x, 2339i >> (arg_1.x % 32u))), abs(arg_0.a.x)));
    var var_1 = Struct_2(arg_0, arg_0, !(!arg_0.c), arg_0.d || all(select(vec3<bool>(arg_0.c, true, false), select(vec3<bool>(arg_0.e, arg_0.e, arg_0.e), vec3<bool>(arg_0.d, false, true), vec3<bool>(true, arg_0.d, false)), true)), global0[_wgslsmith_index_u32(4294967295u & reverseBits(_wgslsmith_div_u32(~24561u, ~arg_1.x)), 2u)]);
    var_1 = Struct_2(var_1.a, Struct_1(var_1.b.a, 910f, true, false, arg_0.e | all(vec2<bool>(true, true))), true, !arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(688f)) - _wgslsmith_f_op_f32(-541f + global0[_wgslsmith_index_u32(arg_1.x, 2u)])))));
    global3 = array<vec4<i32>, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, global0[_wgslsmith_index_u32(0u, 2u)], arg_0.b, global0[_wgslsmith_index_u32(4294967295u, 2u)]) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2098f, 471f, var_1.e, global0[_wgslsmith_index_u32(6806u, 2u)]))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1032f, var_1.e, arg_0.b))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1074f - var_1.b.b)), -1182f, arg_0.b, _wgslsmith_f_op_f32(step(456f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-125f + arg_0.b), _wgslsmith_f_op_f32(ceil(arg_0.b))))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), 1365f));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec2<u32> {
    var var_0 = Struct_4(global3[_wgslsmith_index_u32(u_input.a, 3u)], Struct_3(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -11466i, u_input.b.x), global3[_wgslsmith_index_u32(14519u, 3u)]), -105243i, -u_input.b.x), Struct_1(~(vec4<i32>(-2147483647i, u_input.b.x, 1520i, -23948i) >> (vec4<u32>(9723u, 3064u, u_input.a, 15734u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 28u)] - -609f), false, ~u_input.a >= 33807u, false), _wgslsmith_f_op_f32(func_4(Struct_1(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), arg_1, u_input.b.x <= u_input.b.x, true, -2147483647i == u_input.b.x), func_3(vec3<u32>(133273u, u_input.a, u_input.a) >> (vec3<u32>(0u, 0u, 33004u) % vec3<u32>(32u)), Struct_3(vec3<i32>(2147483647i, 0i, -1i), Struct_1(vec4<i32>(u_input.b.x, -26872i, u_input.b.x, -2147483647i), global0[_wgslsmith_index_u32(17266u, 2u)], false, true, false), arg_1, false, vec3<bool>(false, false, true))))), all(vec2<bool>(true, all(vec2<bool>(false, false)))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), true)), vec4<u32>(1u, u_input.c, abs(_wgslsmith_add_u32(u_input.a, ~u_input.a)), _wgslsmith_mod_u32(select(_wgslsmith_div_u32(5951u, u_input.c), 4294967295u, true), 63001u)), 442f, Struct_2(Struct_1(vec4<i32>(u_input.b.x, -2147483647i, -17087i, 24753i) ^ abs(vec4<i32>(-2147483647i, -2147483647i, 1i, u_input.b.x)), -690f, true, false, true), Struct_1(_wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(58915u, 3u)], vec4<i32>(1i, 0i, 39314i, -1i)) | global3[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 2u)])), true, !all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), true | !all(vec4<bool>(false, false, false, true)), all(vec2<bool>(any(vec2<bool>(false, true)), false)), arg_1));
    let var_1 = Struct_5(select(vec2<bool>(!(true != var_0.b.e.x), var_0.b.b.d), select(vec2<bool>(var_0.e.d, var_0.e.d), vec2<bool>(true, var_0.b.e.x), vec2<bool>(false, true)), select(vec2<bool>(arg_1 < -128f, any(vec3<bool>(var_0.e.b.d, var_0.e.a.c, var_0.b.e.x))), select(var_0.b.e.zy, var_0.b.e.zx, vec2<bool>(true, var_0.b.e.x)), vec2<bool>(any(vec4<bool>(var_0.e.a.c, false, false, true)), true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(20164u, 2u)], global1[_wgslsmith_index_u32(var_0.c.x, 28u)], 1249f, var_0.b.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.c.x, 28u)], -200f, -134f, -1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(-770f - 296f), _wgslsmith_f_op_f32(min(1205f, var_0.d)), var_0.e.b.b, var_0.e.b.b)))), Struct_1(global3[_wgslsmith_index_u32(~4294967295u, 3u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c.x & 41455u, 2u)] - 1492f)), var_0.b.e.x, select(var_0.e.a.c, var_0.b.b.c, -1i < var_0.e.a.a.x), true | !var_0.b.e.x));
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    var var_2 = Struct_3(vec3<i32>(firstTrailingBit(-(i32(-1i) * -11803i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -2147483647i, reverseBits(var_0.b.a.x)), _wgslsmith_mod_i32(var_1.c.a.x, u_input.b.x)), 2147483647i), Struct_1(vec4<i32>(min(-18555i, 46534i) >> (var_0.c.x % 32u), 77156i, ~33553i, var_1.c.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.e.b.b, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), all(select(vec3<bool>(var_0.e.a.e, var_1.a.x, var_1.c.d), var_0.b.e, select(vec3<bool>(false, var_0.e.a.c, var_0.b.d), var_0.b.e, vec3<bool>(false, var_1.a.x, var_1.c.d)))), all(vec2<bool>(false, !var_1.c.e)), var_1.c.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1558f)))))), !var_0.b.d, !vec3<bool>(true, any(!var_0.b.e), all(vec3<bool>(false, false, true))));
    return _wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(firstLeadingBit(u_input.c), ~17463u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, var_0.c.x), var_0.c.x) << (~_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.c.x), vec2<u32>(var_0.c.x, 0u)) % vec2<u32>(32u)), ~vec2<u32>(~u_input.a, 1u), var_0.c.zy >> (var_0.c.ww % vec2<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = arg_0.wx;
    let var_1 = _wgslsmith_sub_vec2_u32(~(~(vec2<u32>(u_input.a, 26366u) | vec2<u32>(u_input.c, u_input.a))), select(~vec2<u32>(20358u, 0u) >> (firstLeadingBit(vec2<u32>(u_input.c, 9056u)) % vec2<u32>(32u)), vec2<u32>(~u_input.a, u_input.a), !select(vec2<bool>(false, true), vec2<bool>(false, true), false))) | (((firstLeadingBit(vec2<u32>(u_input.c, 7790u)) << (func_2(vec2<f32>(-1423f, var_0.x), -170f) % vec2<u32>(32u))) | vec2<u32>(1u, u_input.a << (0u % 32u))) ^ (vec2<u32>(~1u, firstLeadingBit(51590u)) ^ ~vec2<u32>(u_input.a, 1u)));
    var var_2 = global1[_wgslsmith_index_u32(abs(~(~max(~0u, ~var_1.x))), 28u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(min(var_0, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -136f) * _wgslsmith_f_op_vec2_f32(sign(var_0)))))));
    global2 = ~u_input.a;
    return _wgslsmith_f_op_f32(trunc(var_0.x)) < _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec2<bool>(all(vec4<bool>(all(vec3<bool>(false, false, true)), true, false, true)), all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, true), func_1(vec4<f32>(518f, 1393f, global1[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(u_input.c, 2u)]))))), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, 4294967295u, u_input.a) << (vec3<u32>(28142u, 46546u, 4294967295u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a, 4294967295u, u_input.c) % vec3<u32>(32u)), vec3<u32>(4294967295u, func_2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 2u)], 303f), global0[_wgslsmith_index_u32(u_input.a, 2u)]).x, 10374u)), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(500f, 1299f)))), 777f, -1000f), Struct_1(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12843u), vec2<u32>(u_input.a, u_input.a)), 27910u)), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.c), 2u)], true, true, !all(vec2<bool>(true, true))));
    let var_1 = u_input.b.x;
    var var_2 = Struct_5(vec2<bool>(!(!var_0.c.e), !any(!vec4<bool>(true, var_0.c.d, false, var_0.c.e))), vec4<f32>(-1016f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f + 211f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(1016f))), 1000f), Struct_1(var_0.c.a, var_0.b.x, true, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(-1517f, -1585f, -1261f, var_0.c.b)))), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-2205f, var_0.c.b, -1394f, var_0.b.x), vec4<f32>(var_0.b.x, var_0.c.b, global0[_wgslsmith_index_u32(u_input.a, 2u)], -185f)))));
    var var_3 = true;
    var var_4 = var_0.a.x;
    let var_5 = var_2.c.a;
    var var_6 = select(select(!select(select(vec3<bool>(var_2.a.x, var_2.a.x, var_0.c.c), vec3<bool>(var_2.c.e, true, var_2.c.d), vec3<bool>(false, false, false)), !vec3<bool>(var_2.a.x, var_2.c.d, var_0.c.e), var_2.c.c), !vec3<bool>(all(var_2.a), !var_0.c.d, var_2.c.d), all(vec2<bool>(true, var_0.c.d))), select(select(vec3<bool>(true && var_0.c.d, all(var_2.a), any(vec4<bool>(false, var_2.c.c, var_0.c.c, var_2.a.x))), vec3<bool>(true, true, true), false), vec3<bool>(all(select(vec4<bool>(var_2.c.d, var_0.a.x, false, var_2.c.d), vec4<bool>(false, true, var_0.a.x, var_2.a.x), vec4<bool>(false, true, var_2.c.d, true))), !var_0.a.x, true), select(select(select(vec3<bool>(false, var_0.c.c, true), vec3<bool>(false, true, var_0.c.c), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(var_0.c.c, true, true), vec3<bool>(var_2.a.x, true, true), true)), select(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(var_2.a.x, false, var_2.a.x), vec3<bool>(false, true, false)), select(vec3<bool>(true, var_2.c.d, false), vec3<bool>(true, true, true), false), select(vec3<bool>(var_2.a.x, var_2.a.x, true), vec3<bool>(false, false, true), true)), true)), select(!(!select(vec3<bool>(var_0.a.x, var_0.c.c, var_2.c.e), vec3<bool>(true, false, var_2.a.x), false)), select(vec3<bool>(var_2.c.d, false, var_0.a.x), !select(vec3<bool>(var_0.c.c, false, var_2.a.x), vec3<bool>(true, var_2.c.c, var_0.a.x), var_0.a.x), var_0.c.c), true));
    let var_7 = countOneBits(min(1i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(var_2.c.a.x, var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a >> (~0u % 32u)), var_7 | var_1, _wgslsmith_f_op_vec3_f32(-var_0.b.xxy), ~reverseBits(vec2<u32>(0u, u_input.a)), select(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(66075u, 17446u, 0u, 4149u), vec4<u32>(16807u, 1u, 23297u, u_input.c))), vec4<u32>(~2023u, 1u, 40155u, u_input.c) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 31002u, 0u, 4294967295u), abs(vec4<u32>(4294967295u, u_input.a, 0u, u_input.c))), var_0.a.x));
}

