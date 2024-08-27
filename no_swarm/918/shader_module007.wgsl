struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    global1 = vec4<u32>(_wgslsmith_mod_u32(global2.a, max(4294967295u, 1u)), global2.a, ~(~global1.x), firstTrailingBit(1u));
    let var_0 = Struct_4(_wgslsmith_clamp_u32(~global2.a >> (global2.a % 32u), ~(~global1.x), abs((global2.a >> (50906u % 32u)) >> (global2.a % 32u))), -reverseBits(global2.b), _wgslsmith_div_i32(firstTrailingBit(arg_1), _wgslsmith_div_i32(global2.c, u_input.a)));
    var var_1 = Struct_2(803f, !(!select(!vec3<bool>(false, arg_0, false), !vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, true))), !all(!(!vec4<bool>(arg_0, false, arg_0, arg_0))));
    let var_2 = vec3<f32>(var_1.a, _wgslsmith_f_op_f32(abs(-963f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-228f, _wgslsmith_f_op_f32(var_1.a * var_1.a))), 774f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-554f)))))));
    let var_3 = global1.x;
    return 0u;
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(57081u, global1.x, global1.x, global2.a) << (vec4<u32>(42156u, 1u, 19650u, 1u) % vec4<u32>(32u)), ~vec4<u32>(global1.x, global1.x, 1u, global2.a)), ~(vec4<u32>(global2.a, 82321u, global2.a, global1.x) ^ vec4<u32>(39466u, 83181u, global1.x, 66048u))), min(~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(global1.x, global2.a, global2.a, global2.a), vec4<u32>(31512u, global1.x, global2.a, 12116u)), reverseBits(vec4<u32>(global2.a, 31701u, global2.a, 6402u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.x, global1.x, global2.a), vec4<u32>(global1.x, global1.x, 4294967295u, global1.x))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.a, ~78555u, 85695u), _wgslsmith_sub_vec4_u32(max(vec4<u32>(14521u, 0u, global1.x, global2.a), vec4<u32>(4391u, global2.a, global2.a, global1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 45434u, global2.a, global2.a), vec4<u32>(global1.x, 1u, global2.a, 4294967295u), vec4<u32>(21481u, global1.x, 26497u, global2.a))))), vec4<u32>(4294967295u, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(49987u, global1.x)), _wgslsmith_sub_u32(min(0u, global1.x), firstTrailingBit(1065u))), ~4294967295u, global2.a));
    global2 = Struct_4(0u >> (countOneBits(~(0u | global2.a)) % 32u), vec3<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, countOneBits(u_input.b)), -_wgslsmith_dot_vec4_i32(vec4<i32>(20222i, global2.c, u_input.a, -1i), vec4<i32>(u_input.a, global2.c, u_input.b, -1077i))), _wgslsmith_dot_vec2_i32(global2.b.zx, global2.b.xy)), ~(-1i | u_input.a));
    global0 = array<vec3<u32>, 10>();
    var var_1 = vec3<u32>(~min(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30176u, global2.a, 8867u), vec3<u32>(var_0.x, 45366u, var_0.x)), _wgslsmith_mult_u32(var_0.x, 36879u)), global2.a), select(13235u | (global2.a ^ (var_0.x & global1.x)), ~(~global2.a), !arg_0.x), 84437u);
    global1 = ~(vec4<u32>(0u, var_0.x, 0u, ~var_1.x) >> (vec4<u32>(max(var_0.x, global2.a), select(var_0.x, global2.a, arg_0.x), var_1.x, ~4294967295u) % vec4<u32>(32u))) << ((~vec4<u32>(~4294967295u, ~4294967295u, abs(var_1.x), 4294967295u) ^ max(max(vec4<u32>(4294967295u, var_1.x, 51071u, 119677u) << (vec4<u32>(global1.x, var_1.x, global1.x, 25490u) % vec4<u32>(32u)), ~vec4<u32>(var_1.x, 4294967295u, 84082u, global2.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, 69980u, global2.a, 1u), vec4<u32>(70476u, global1.x, global2.a, var_1.x)))) % vec4<u32>(32u));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.wx, reverseBits(reverseBits(countOneBits(vec2<u32>(40384u, global2.a))))), 10u)];
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = ~vec4<u32>(max(~global2.a, ~(~22865u)), global1.x & func_2(true, -u_input.a), 0u, 31449u);
    global1 = ~vec4<u32>(4294967295u, firstLeadingBit(~arg_0) ^ ~_wgslsmith_div_u32(arg_0, 75038u), ~firstTrailingBit(1u), ~arg_0 ^ global2.a);
    let var_0 = vec2<u32>(58572u, _wgslsmith_dot_vec3_u32(global1.zzw, func_3(vec3<bool>(true, any(vec2<bool>(false, true)), true))));
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 10u)];
    var var_2 = select(global1.wz, vec2<u32>(0u, 4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1078f, 1378f) - _wgslsmith_f_op_f32(max(325f, 685f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(526f - -824f), 998f)));
    return Struct_3(Struct_2(-741f, vec3<bool>(true, true, true), false), ~max(1u, ~func_2(false, global2.c)), Struct_2(_wgslsmith_f_op_f32(-1f), select(vec3<bool>(false, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(false, arg_0 == arg_0, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_clamp_u32(~16714u >> (_wgslsmith_div_u32(4294967295u, global1.x) % 32u), global2.a, global1.x & 39892u));
    var var_1 = abs(global2.b);
    global0 = array<vec3<u32>, 10>();
    var var_2 = Struct_1(max(global2.b.xz, ~vec2<i32>(-1i, global2.b.x << (0u % 32u))), select(var_0.c.b, select(var_0.c.b, var_0.a.b, var_0.c.b), false), ~var_0.b, (abs(~vec4<u32>(global2.a, global2.a, 1u, 30006u)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, var_0.b, 1u, global1.x), vec4<u32>(2110u, var_0.b, global1.x, 4294967295u))) ^ ~vec4<u32>(reverseBits(global1.x), 44365u, global2.a, countOneBits(var_0.b)));
    global1 = abs(select(vec4<u32>(abs(var_2.c), _wgslsmith_add_u32(1u, 0u), 4294967295u, reverseBits(33917u)), vec4<u32>(global1.x, ~(~global2.a), global2.a, 1u), true));
    global2 = Struct_4(0u, global2.b, reverseBits(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.a, var_0.a.a, var_0.c.a, -1093f))))), vec4<f32>(var_0.a.a, 321f, func_1(4294967295u).a.a, _wgslsmith_f_op_f32(abs(var_0.c.a))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1093f, var_0.c.a, 2153f, -2138f), vec4<f32>(547f, 174f, var_0.a.a, 863f)))))), _wgslsmith_dot_vec2_i32(global2.b.xz ^ abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_2.a.x, global2.c))), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(var_1.yz, var_2.a)) & _wgslsmith_clamp_vec2_i32(var_1.zy, select(global2.b.zz, global2.b.xx, true), _wgslsmith_add_vec2_i32(vec2<i32>(global2.c, 1i), vec2<i32>(var_2.a.x, u_input.a)))), ~(i32(-1i) * -1i), _wgslsmith_f_op_f32(trunc(var_0.c.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.a))))), var_0.a.a));
}

