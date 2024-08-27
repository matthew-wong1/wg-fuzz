struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> f32 {
    global0 = array<vec4<u32>, 8>();
    let var_0 = min(_wgslsmith_dot_vec4_u32(vec4<u32>(4740u, _wgslsmith_dot_vec3_u32(arg_2.a.wxy, vec3<u32>(arg_2.e.a, 65345u, global1.a)) ^ _wgslsmith_dot_vec2_u32(arg_2.a.xx, arg_2.a.zw), min(u_input.b & 4294967295u, ~26273u), 0u), global0[_wgslsmith_index_u32(~firstLeadingBit(global1.a), 8u)]), ~(_wgslsmith_div_u32(arg_2.e.a | 16225u, 4294967295u) >> ((max(u_input.d.x, 4294967295u) | u_input.b) % 32u)));
    let var_1 = Struct_1(var_0, ~firstTrailingBit(vec2<i32>(35297i, ~1i)), true, global1.b, _wgslsmith_f_op_vec2_f32(arg_2.e.e + _wgslsmith_div_vec2_f32(vec2<f32>(-130f, arg_1), _wgslsmith_f_op_vec2_f32(-global1.e))));
    var var_2 = ~vec4<i32>(_wgslsmith_div_i32(global1.d.x, var_1.b.x << (27811u % 32u)), -20384i, i32(-1i) * -18802i, ~var_1.d.x | firstLeadingBit(0i)) & vec4<i32>(arg_2.e.d.x, max(-24740i, abs(arg_2.e.d.x)), min(u_input.c.x | ~2147483647i, var_1.b.x), ~var_1.d.x);
    var_2 = ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.c.x, 25626i, global1.b.x, global1.d.x) << (vec4<u32>(4934u, 63420u, var_1.a, 10868u) % vec4<u32>(32u))), max(vec4<i32>(_wgslsmith_add_i32(arg_2.e.b.x, var_1.d.x), -34370i << (u_input.b % 32u), ~(-2147483647i), 1i), vec4<i32>(_wgslsmith_add_i32(127i, global1.b.x), var_1.d.x, arg_2.e.d.x, min(u_input.a, 72729i))));
    return _wgslsmith_f_op_f32(round(arg_0));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global1 = Struct_1(_wgslsmith_mod_u32(91949u, u_input.d.x), abs(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(u_input.a, u_input.c.x)), vec2<i32>(u_input.a, 100827i))) ^ global1.b, arg_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1206f), -vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(global1.d.x, 2147483647i)), u_input.c.x ^ -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x - arg_0.x)))), global1.e.x));
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_clamp_u32(global1.a, global1.a, global1.a)), max(~4294967295u, _wgslsmith_mod_u32(u_input.b, reverseBits(u_input.d.x)))), 8u)], vec2<bool>(true, _wgslsmith_f_op_f32(func_3(351f, global1.e.x, Struct_3(global0[_wgslsmith_index_u32(u_input.b, 8u)], vec2<bool>(true, global1.c), global1.c, vec3<bool>(global1.c, global1.c, false), Struct_1(global1.a, vec2<i32>(u_input.a, global1.b.x), true, global1.d, vec2<f32>(global1.e.x, global1.e.x))))) <= -115f), global1.c, vec3<bool>(any(vec3<bool>(global1.c, global1.c || true, global1.c)), false, all(!select(vec4<bool>(false, global1.c, true, global1.c), vec4<bool>(global1.c, false, false, false), vec4<bool>(false, global1.c, true, global1.c)))), Struct_1(~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a), vec2<u32>(u_input.d.x, global1.a)) & ~0u), _wgslsmith_add_vec2_i32(reverseBits(global1.d), firstTrailingBit(global1.d)) & (vec2<i32>(-1i) * -vec2<i32>(global1.b.x, 20546i)), any(select(!vec3<bool>(global1.c, true, global1.c), vec3<bool>(global1.c, true, global1.c), all(vec4<bool>(global1.c, global1.c, false, false)))), reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, -5439i, 13139i), vec4<i32>(u_input.c.x, -2147483647i, -22238i, 1i)), max(u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wz))));
    global0 = array<vec4<u32>, 8>();
    global0 = array<vec4<u32>, 8>();
    var var_1 = global1.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-296f))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = -_wgslsmith_add_i32(reverseBits(u_input.c.x), ~u_input.a);
    var_0 = 80195i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-723f, 860f))) - 811f) + _wgslsmith_f_op_f32(min(global1.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.e.x, global1.e.x), _wgslsmith_f_op_f32(func_2(vec4<f32>(global1.e.x, 536f, global1.e.x, -868f)))))))) + _wgslsmith_f_op_f32(global1.e.x - global1.e.x));
    var var_2 = 1u;
    global1 = Struct_1(_wgslsmith_mod_u32(1u, abs(~1u)) & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(35040u, 8u)], ~vec4<u32>(u_input.d.x, 7937u, 1u, global1.a)), select(~u_input.b, global1.a & 32777u, all(vec2<bool>(true, false)))), -countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global1.b, vec2<i32>(u_input.c.x, arg_0)), -vec2<i32>(arg_0, global1.d.x))), all(select(vec2<bool>(global1.c != global1.c, false), vec2<bool>(global1.c, u_input.a <= 57798i), any(select(vec4<bool>(true, true, global1.c, false), vec4<bool>(false, true, false, global1.c), global1.c)))), global1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.e.x, -2280f), _wgslsmith_f_op_f32(abs(global1.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.e.x), -3500f))));
    return Struct_2(u_input.d.x, Struct_1(1u, (-u_input.c >> ((vec2<u32>(59665u, 43115u) << (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u))) >> (reverseBits(vec2<u32>(u_input.d.x, 1u)) % vec2<u32>(32u)), true, select(u_input.c, countOneBits(select(vec2<i32>(0i, 52890i), vec2<i32>(-1i, u_input.a), global1.c)), select(select(vec2<bool>(true, global1.c), vec2<bool>(global1.c, global1.c), true), vec2<bool>(true, global1.c), true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e), _wgslsmith_f_op_vec2_f32(ceil(global1.e)))))), Struct_1(33974u, global1.b, (~global1.a ^ 42368u) < 25146u, ~global1.d, vec2<f32>(global1.e.x, global1.e.x)), abs(global1.b.x & 14855i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-global1.d.x);
    var_0 = Struct_2(countOneBits(_wgslsmith_clamp_u32(~45862u, ~var_0.c.a, 4294967295u)) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.c.a, 8965u), abs(4294967295u)) % 32u), func_1(var_0.d).c, var_0.b, -2147483647i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.e.x, 732f)) - _wgslsmith_f_op_f32(var_0.b.e.x * 994f)), _wgslsmith_f_op_f32(f32(-1f) * -397f), Struct_3(vec4<u32>(global1.a, 1u, u_input.b, 38564u) ^ global0[_wgslsmith_index_u32(40181u, 8u)], vec2<bool>(global1.c, false), !var_0.c.c, select(vec3<bool>(false, global1.c, false), vec3<bool>(global1.c, var_0.b.c, true), vec3<bool>(false, true, false)), func_1(var_0.c.b.x).c)))));
    var var_2 = Struct_4(_wgslsmith_mult_i32(var_0.d, -40175i));
    global0 = array<vec4<u32>, 8>();
    var var_3 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, 0u | global1.a), (u_input.d ^ ~u_input.d) & vec2<u32>(var_0.b.a, 1u)), vec2<u32>(_wgslsmith_add_u32(abs(global1.a), global1.a), ~firstLeadingBit(u_input.b ^ u_input.d.x)), select(all(!(!vec4<bool>(global1.c, false, var_0.c.c, false))), func_1(-(-49418i ^ global1.d.x)).c.c, any(!vec4<bool>(global1.c, false, false, var_0.b.c))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, -1i), ~(vec2<i32>(2147483647i, 0i) >> (vec2<u32>(global1.a, 16619u) % vec2<u32>(32u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.e.x)) - 771f)));
}

