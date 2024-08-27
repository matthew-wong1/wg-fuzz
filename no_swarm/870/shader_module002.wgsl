struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-1213i, -1i, 2147483647i, 376i, 38948i, 0i, -76263i, 0i, 21827i, 0i, i32(-2147483648), 14618i, -1i, -11537i, -1i, -1i, 1i, 1i, -1i, -1i, 2147483647i, -76996i, 0i, 2194i, 1i, 1i, -8948i, 13141i, 2147483647i, 1i, -8396i, -1i);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(474f, -1i, 1u), Struct_1(-268f, -1i, 61052u), Struct_1(-2107f, -1i, 92513u), Struct_1(-138f, -1i, 0u), Struct_1(303f, 26449i, 27467u), Struct_1(-294f, 2147483647i, 1u), Struct_1(299f, 2147483647i, 58017u), Struct_1(318f, 38130i, 4294967295u));

var<private> global2: array<Struct_3, 20>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4) -> vec4<bool> {
    global1 = array<Struct_1, 8>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(4294967295u, ~(~arg_1.b.c)), arg_1.a.x), 20u)];
    let var_1 = 668f;
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(980f * _wgslsmith_f_op_f32(arg_1.b.a * -568f)), 480f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1069f)))))), !(!(!(!vec2<bool>(arg_2.a, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(274f - -734f), _wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, -230f)), vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1874f, var_1), vec2<f32>(277f, 384f))))), max(1i, arg_0.x | ~_wgslsmith_div_i32(u_input.d.x, global0[_wgslsmith_index_u32(arg_1.a.x, 32u)])), -741f);
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(max(1u, ~arg_1.b.c), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(41284u, 25607u), ~22030u, _wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a))) & 32054u, 8u)];
    return vec4<bool>(select(all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(arg_2.a, var_2.b.x, false), vec3<bool>(var_2.b.x, var_2.b.x, true), true), !vec3<bool>(true, var_2.b.x, false))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1280f - var_1) * var_2.e) <= -1152f), arg_2.a || arg_2.a, arg_2.a, -1541f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(301f * arg_1.b.a), _wgslsmith_f_op_f32(abs(-133f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<u32>) -> bool {
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(~(~(u_input.b.yzx | arg_3)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(76139u, u_input.a.x, 30588u), vec3<u32>(20889u, 4294967295u, u_input.c.x)), ~vec3<u32>(arg_3.x, 74907u, 1u)), ~u_input.b.zzw, vec3<u32>(abs(u_input.c.x), firstTrailingBit(u_input.c.x), ~0u))), global1[_wgslsmith_index_u32(arg_3.x, 8u)]);
    var var_1 = countOneBits(-abs(arg_2.xy));
    var var_2 = vec2<bool>(arg_1, all(vec3<bool>(select(arg_1, arg_1, true) | (arg_1 || false), false, var_0.b.a > _wgslsmith_f_op_f32(-var_0.b.a))));
    return false;
}

fn func_2(arg_0: Struct_3) -> i32 {
    global1 = array<Struct_1, 8>();
    var var_0 = func_4(vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0.a, 32u)], global0[_wgslsmith_index_u32(arg_0.a, 32u)]), 1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.d.x, 12004i, 19974i, u_input.d.x), vec4<i32>(2147483647i, 0i, 45307i, 14920i), vec4<bool>(true, false, true, true)), vec4<i32>(28120i, u_input.e.x, -47462i, u_input.d.x))), ~(1i & _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(81628u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)])), _wgslsmith_div_i32(~reverseBits(-1i), ~2147483647i)), any(func_3(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.d.x)), -vec3<i32>(2147483647i, u_input.d.x, u_input.d.x)), Struct_2(u_input.b.zww, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a, u_input.c.x), 8u)]), Struct_4(true))), select(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-43335i, u_input.d.x, -60113i, global0[_wgslsmith_index_u32(arg_0.a, 32u)]), vec4<i32>(2147483647i, 0i, u_input.d.x, global0[_wgslsmith_index_u32(77132u, 32u)]))), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(arg_0.a, 32u)]) & 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-3341i, u_input.e.x, global0[_wgslsmith_index_u32(arg_0.a, 32u)], -27897i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.e.x, global0[_wgslsmith_index_u32(arg_0.a, 32u)], u_input.e.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(24193u, 32u)], 2147483647i, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(arg_0.a, 32u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.d.x, u_input.e.x, global0[_wgslsmith_index_u32(8687u, 32u)]))), -_wgslsmith_div_i32(u_input.d.x, u_input.e.x), -27567i), func_3(-vec3<i32>(u_input.d.x, global0[_wgslsmith_index_u32(arg_0.a, 32u)], u_input.d.x) | min(vec3<i32>(u_input.d.x, 53235i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i)), Struct_2(select(u_input.b.ywy, vec3<u32>(arg_0.a, 3990u, 20705u), vec3<bool>(false, true, true)), global1[_wgslsmith_index_u32(~u_input.b.x, 8u)]), Struct_4(select(false, true, false)))), firstLeadingBit(~firstTrailingBit(countOneBits(vec3<u32>(4784u, 76241u, 10867u)))));
    let var_1 = !(-48217i != (countOneBits(~u_input.e.x) | u_input.d.x));
    global1 = array<Struct_1, 8>();
    let var_2 = 39312u;
    return global0[_wgslsmith_index_u32(~u_input.c.x, 32u)] ^ -1i;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = true;
    global1 = array<Struct_1, 8>();
    global2 = array<Struct_3, 20>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_1.a, -794f)))))), !(!(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), arg_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_2, 823f)), _wgslsmith_f_op_f32(arg_2 * 855f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -473f))))), func_2(Struct_3(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(1031f - arg_1.a)) - _wgslsmith_f_op_f32(f32(-1f) * -2071f))));
    var var_2 = abs(vec3<i32>(reverseBits(global0[_wgslsmith_index_u32(arg_0, 32u)]), arg_1.b, ~_wgslsmith_mult_i32(var_1.d, -11778i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1015f - _wgslsmith_f_op_f32(-var_1.a.x)) - 927f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), _wgslsmith_f_op_f32(min(-1000f, 313f))), vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_1(-533f, global0[_wgslsmith_index_u32(30953u, 32u)], 1628u), -1000f, true)), -253f))), vec2<bool>(true, true), vec2<f32>(-511f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1407f, -459f, true)), _wgslsmith_div_f32(-999f, -401f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -262f))))), -2147483647i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(562f, -467f)) * -151f))), 205f)));
    global2 = array<Struct_3, 20>();
    let var_1 = Struct_4(var_0.b.x);
    let var_2 = Struct_3(_wgslsmith_div_u32(u_input.b.x, 24414u));
    global1 = array<Struct_1, 8>();
    global2 = array<Struct_3, 20>();
    global2 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(424f * var_0.c.x))), -1341f), vec2<f32>(var_0.e, var_0.e), vec2<bool>(true, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-818f * 746f))), ~min(abs(vec4<i32>(var_0.d, 2147483647i, -56746i, 2117i)), firstTrailingBit(~vec4<i32>(u_input.d.x, u_input.d.x, 1i, -24257i))), vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_div_u32(13334u, var_2.a), 5696u), ~(~abs(4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_2.a, 23729u, 48668u), u_input.b), ~vec4<u32>(0u, var_2.a, var_2.a, 4294967295u)), firstLeadingBit(u_input.b) << (vec4<u32>(54573u, var_2.a, 4631u, var_2.a) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~52749u, 68304u, u_input.c.x), u_input.b.yxw)));
}

