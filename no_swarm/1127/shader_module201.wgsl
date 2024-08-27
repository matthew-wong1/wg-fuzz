struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 7>;

var<private> global2: array<u32, 7> = array<u32, 7>(4294967295u, 4294967295u, 1u, 26384u, 1u, 0u, 1u);

var<private> global3: vec4<i32> = vec4<i32>(0i, 1i, i32(-2147483648), -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(select(arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(520f, -1574f, -106f), arg_0.b, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))))), !select(vec3<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), arg_0.d == arg_1.x), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    global2 = array<u32, 7>();
    let var_0 = select(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(-749f)) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10988u, 7u)]), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(false, all(vec3<bool>(true, false, false)) & true, true)), vec3<bool>(select(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)), all(vec2<bool>(true, true))), true, true), select(vec3<bool>((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46230u, 7u)], 7u)], 7u)] & arg_1.x) > _wgslsmith_mult_u32(arg_0.d, 0u), false, true), vec3<bool>(select(select(true, false, true), true, true), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_1 = Struct_3(((u_input.a | max(u_input.a, global3.x)) << (max(35218u, ~global2[_wgslsmith_index_u32(0u, 7u)]) % 32u)) > _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(18060i, -37518i), ~arg_0.e), ~(u_input.b & u_input.b)), 114f, Struct_2(-2147483647i, -629f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 7u)]) - -438f), vec3<f32>(global1[_wgslsmith_index_u32(arg_2, 7u)], _wgslsmith_f_op_f32(select(-518f, 304f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mod_i32(select(-12456i, u_input.a, false), -38123i), ~(~arg_2), ~firstTrailingBit(-1i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, -1i), global3.yz) << (vec2<u32>(~arg_1.x, 40790u) % vec2<u32>(32u)), arg_0));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i ^ arg_0.e, 15815i), ~(global3.wx & (vec2<i32>(global3.x, -35542i) ^ vec2<i32>(arg_0.e, 1i)))) << ((~vec2<u32>(34112u << (var_1.c.e.d % 32u), var_1.c.c.d) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(41136u, 1u)), max(var_1.c.c.d, arg_2)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -285f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(~(~(~0u)), ((0u << (1u % 32u)) << ((arg_1.c.c.d ^ arg_1.c.c.d) % 32u)) ^ global2[_wgslsmith_index_u32(arg_1.c.c.d & ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72060u, 7u)], 7u)], 7u)]), global2[_wgslsmith_index_u32(~88362u, 7u)], 1u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.c.c.d, 7u)] ^ 79065u, 7u)], 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-541f, global0.x, -168f), _wgslsmith_f_op_vec3_f32(round(arg_1.c.e.b))) * _wgslsmith_f_op_vec3_f32(abs(arg_0.wwz))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 7u)]) - arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global0.x, arg_1.c.e.b, -2147483647i, 4294967295u, arg_2.x), vec4<u32>(var_0.x, arg_1.c.e.d, 61656u, 4294967295u), global2[_wgslsmith_index_u32(4562u, 7u)])))), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1043f)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - var_1.x), arg_0.x), any(vec4<bool>(true, false, arg_1.a, false)))) - _wgslsmith_f_op_f32(func_3(Struct_1(2146f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 7u)], var_1.x, -1982f))), arg_2.x, abs(var_0.x), u_input.b.x), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, global2[_wgslsmith_index_u32(67477u, 7u)], arg_1.c.e.d, 4294967295u), vec4<u32>(arg_1.c.c.d, arg_1.c.c.d, 26606u, 1316u))), 0u))), arg_1.b, -523f);
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<f32> {
    let var_0 = ~37050u;
    let var_1 = Struct_1(710f, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(662f, arg_0), 1f, 345f, _wgslsmith_f_op_f32(f32(-1f) * -570f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-225f, global0.x, 240f, global1[_wgslsmith_index_u32(4294967295u, 7u)])))), Struct_3(!select(true, true, true), _wgslsmith_f_op_f32(arg_0 - global1[_wgslsmith_index_u32(1u, 7u)]), Struct_2(~1i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(153f, vec3<f32>(global1[_wgslsmith_index_u32(38084u, 7u)], global0.x, arg_0), global3.x, var_0, global3.x), ~u_input.b, Struct_1(1000f, vec3<f32>(global1[_wgslsmith_index_u32(0u, 7u)], -1000f, global1[_wgslsmith_index_u32(18912u, 7u)]), 30697i, 14052u, global3.x))), ~_wgslsmith_add_vec2_i32(u_input.b, u_input.b) >> (vec2<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(arg_1, 7u)], 4294967295u), _wgslsmith_add_u32(41641u, var_0)) % vec2<u32>(32u)))), -2147483647i, ~(arg_1 >> ((var_0 | 7110u) % 32u)), u_input.a);
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, firstTrailingBit(14437i)), 10524i, firstLeadingBit(-3467i), countOneBits(min(1i, -49853i))), -min(~vec4<i32>(-20030i, u_input.b.x, global3.x, global3.x), firstTrailingBit(vec4<i32>(21808i, u_input.b.x, 0i, -1i)))));
    let var_3 = var_1.e;
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1332f + global0.x), -728f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), -1568f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(global0.x, 1003f, -208f, arg_0), Struct_3(true, arg_0, Struct_2(var_2.x, var_1.b.x, Struct_1(690f, vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 7u)], -415f, var_1.b.x), 1i, var_1.d, -2147483647i), global3.zw, Struct_1(global0.x, vec3<f32>(var_1.a, arg_0, -1066f), -5350i, 8190u, -52405i))), ~var_2.yx)).xz * global0.yz)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(-1497f, 2748f, 1319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(563f, var_1.b, -26071i, 51066u, 1i), vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(84529u, 7u)], 4294967295u), var_0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, var_4.x, -896f, var_1.a), vec4<f32>(1000f, -1327f, global1[_wgslsmith_index_u32(4294967295u, 7u)], 1353f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 7u)], global0.x, var_1.b.x, arg_0))))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false)))));
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> Struct_3 {
    var var_0 = reverseBits(global2[_wgslsmith_index_u32(~max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(1u, 7u)])), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72328u, 7u)], 7u)], global2[_wgslsmith_index_u32(1u, 7u)])), 7u)], firstLeadingBit(global2[_wgslsmith_index_u32(~1u, 7u)])), 7u)]);
    var_0 = ~(~global2[_wgslsmith_index_u32(~(~2084u), 7u)]);
    var var_1 = 1f;
    let var_2 = false;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0)))));
    return Struct_3(_wgslsmith_f_op_f32(round(global0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -986f), arg_1.a.x, Struct_2(-arg_1.b, global0.x, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(168f, 128f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, arg_1.a.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)]), arg_1.a.zyz)), arg_1.b, 1u, min(global3.x ^ u_input.b.x, _wgslsmith_clamp_i32(-1i, u_input.c, 16699i))), vec2<i32>(-_wgslsmith_sub_i32(arg_1.b, global3.x), -_wgslsmith_sub_i32(u_input.c, arg_1.b)), Struct_1(global0.x, arg_1.a.zww, arg_1.b, ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6468u, 1u), vec2<u32>(1u, 1u)), 7u)], u_input.a & ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 7>();
    var var_0 = func_4(_wgslsmith_f_op_f32(abs(global0.x)), Struct_5(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6663u, global2[_wgslsmith_index_u32(4294967295u, 7u)], 3085u, 1u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 7u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26880u, 7u)], 7u)], 7u)], 2262u)), 7u)] + _wgslsmith_div_f32(808f, global0.x)), firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70472u, 7u)], 7u)], 7u)], 7u)]) ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39501u, 7u)], 7u)], 7u)], 7u)])), 2147483647i));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-215f, 563f)), _wgslsmith_f_op_f32(f32(-1f) * -1839f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - global1[_wgslsmith_index_u32(53932u, 7u)]) - _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(1741f, 1592f, global1[_wgslsmith_index_u32(13201u, 7u)], -1000f), Struct_3(var_0.a, global0.x, Struct_2(1i, -1583f, Struct_1(global1[_wgslsmith_index_u32(var_0.c.e.d, 7u)], vec3<f32>(var_0.c.e.a, -1319f, -855f), -28762i, 87468u, u_input.b.x), vec2<i32>(1i, var_0.c.d.x), var_0.c.c)), vec2<i32>(var_0.c.e.e, u_input.b.x))).x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_1(-1007f, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.e.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.c.d, 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36060u, 7u)], 7u)], 7u)], 5413u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19053u, 7u)], 7u)], 7u)], var_0.c.c.d, var_0.c.e.d, 0u)), global2[_wgslsmith_index_u32(var_0.c.e.d, 7u)] << (1u % 32u)))).zzz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1662f, 425f, 403f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.c.b - vec3<f32>(-119f, global1[_wgslsmith_index_u32(0u, 7u)], var_0.b)) * vec3<f32>(-380f, global1[_wgslsmith_index_u32(80959u, 7u)], global0.x)))));
    let var_2 = var_0.a;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(sign(global0.x)), var_0.c.c.d >> (42308u % 32u))).x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(var_1.x, var_0.c.b))))) * _wgslsmith_f_op_vec4_f32(func_1(-451f, var_0.c.e.d << (_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(48154u, 7u)] ^ global2[_wgslsmith_index_u32(14205u, 7u)], var_0.c.c.d) % 32u))).zzx);
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(38841u, 7u)], _wgslsmith_div_f32(914f, _wgslsmith_div_f32(1000f, global0.x)), 469f), var_0.c.c.b)), var_0.c.c.b));
    var var_3 = Struct_5(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(func_3(Struct_1(global0.x, var_0.c.c.b, firstTrailingBit(var_0.c.a), 15948u, -1i), vec4<u32>(global2[_wgslsmith_index_u32(abs(26236u), 7u)], ~global2[_wgslsmith_index_u32(4294967295u, 7u)], ~global2[_wgslsmith_index_u32(30701u, 7u)], select(var_0.c.c.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], var_0.a)), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.c.c.d, global2[_wgslsmith_index_u32(10985u, 7u)]), var_0.c.e.d))), _wgslsmith_f_op_f32(max(315f, var_1.x)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(var_0.c.e.d, 4294967295u)), 7u)]))), _wgslsmith_div_i32(_wgslsmith_div_i32(~1i, countOneBits(1i)), firstLeadingBit(var_0.c.c.e)));
    var_0 = func_4(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(55095u & ~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_0.c.c.d, 7u)], 17578u), 7u)]), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(var_3.a)), _wgslsmith_f_op_vec4_f32(-var_3.a)))), min(_wgslsmith_sub_i32(~var_0.c.d.x, global3.x << (4294967295u % 32u)), ~_wgslsmith_add_i32(u_input.c, 2147483647i))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1847f))))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.e.d, 7u)], 7u)]), vec2<u32>(global2[_wgslsmith_index_u32(0u, 7u)], 64508u))), firstTrailingBit(vec2<u32>(firstTrailingBit(1u), global2[_wgslsmith_index_u32(reverseBits(var_0.c.c.d), 7u)]))), var_0.c.e.b.yz, var_1.x);
}

