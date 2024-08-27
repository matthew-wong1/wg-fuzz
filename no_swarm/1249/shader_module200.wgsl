struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(21582u, 12024u, 20450u, 16096u, 4294967295u, 44849u, 4294967295u, 1u, 105748u, 1u, 42934u, 5103u, 12720u, 240u, 0u, 93769u, 42088u, 26968u, 44512u, 4294967295u, 1u, 41755u, 85364u, 5696u, 8630u, 4294967295u, 28181u, 102221u, 8200u, 68586u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> bool {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_0 = Struct_4(u_input.e.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-23204i, -arg_0), ~u_input.d.yz));
    var var_1 = Struct_4(24054i, -53752i << ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, 1u, 0u) >> (vec4<u32>(28724u, u_input.a, 4294967295u, arg_2.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, arg_2.x, global0[_wgslsmith_index_u32(1u, 30u)], 29881u)) >> (global0[_wgslsmith_index_u32(1u, 30u)] % 32u)) % 32u));
    global0 = array<u32, 30>();
    return arg_1.x;
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_0 = select(select(select(vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, false))), vec2<bool>(true, true), true), vec2<bool>(false, true), any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true)), vec2<bool>(true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)))), vec2<bool>(true, true)), false);
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_i32(u_input.c.x | u_input.e.x, _wgslsmith_mult_i32(u_input.e.x, u_input.b)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), abs(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], arg_0.x))) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), 1f), -522f, false)), select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, any(vec4<bool>(var_0.x, false, var_0.x, false)) | var_0.x, any(vec4<bool>(var_0.x, true, false, false)), all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, false), true))), !any(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, false), var_0.x))), firstLeadingBit(reverseBits(vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), u_input.a))), ~arg_0);
    var var_2 = Struct_3(u_input.e.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1194f, var_1.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, 1491f, true)) - _wgslsmith_f_op_f32(325f - var_1.b)), -570f))), Struct_1(-1i, var_1.b, select(vec4<bool>(all(vec3<bool>(false, var_0.x, var_0.x)), true, true, true), select(!var_1.c, select(var_1.c, vec4<bool>(false, var_1.c.x, var_1.c.x, var_0.x), var_0.x), all(var_1.c.xy)), !select(vec4<bool>(true, false, false, false), var_1.c, var_0.x)), ~_wgslsmith_mod_vec2_u32(max(var_1.d, vec2<u32>(32139u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(53731u, var_1.e.x), arg_0.ww)), _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(u_input.a), ~4294967295u, 4294967295u, _wgslsmith_add_u32(1u, arg_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(3782u, arg_0.x, 0u, var_1.d.x), vec4<u32>(8539u, 2825u, 42582u, 60358u)))), _wgslsmith_dot_vec3_u32(var_1.e.zww, select(vec3<u32>(u_input.a, var_1.e.x & var_1.e.x, ~0u), abs(vec3<u32>(arg_0.x, 11924u, arg_0.x) << (var_1.e.xzz % vec3<u32>(32u))), true && all(var_1.c.yz))));
    return _wgslsmith_add_i32(2147483647i, u_input.c.x);
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<u32, 30>();
    let var_0 = vec4<bool>(true || (~(u_input.a ^ u_input.a) <= _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(32203u, 30u)], u_input.a))), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, false), true)) && func_2(~849i, select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false), abs(vec2<u32>(35019u, 1u))), true, !(!((1u ^ global0[_wgslsmith_index_u32(1u, 30u)]) >= 1u)));
    var var_1 = true & (func_3(~(~vec4<u32>(17764u, u_input.a, 0u, u_input.a))) >= func_3(~abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))));
    let var_2 = ~vec4<u32>(abs(_wgslsmith_clamp_u32(u_input.a, 14589u, 13720u)) & 0u, ~global0[_wgslsmith_index_u32(select(abs(u_input.a), u_input.a, var_0.x & var_0.x), 30u)], u_input.a, ~global0[_wgslsmith_index_u32(~4294967295u, 30u)]);
    var var_3 = var_2;
    return ~_wgslsmith_add_i32(-2147483647i, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i, i32(-1i) * -(u_input.c.x & u_input.e.x), func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -23226i, u_input.c.x, u_input.e.x), vec4<i32>(-2147483647i, u_input.d.x, 1i, u_input.b))) & -2147483647i) >> (_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(u_input.a, 1u, u_input.a))), ~vec3<u32>(~0u, u_input.a | u_input.a, global0[_wgslsmith_index_u32(abs(u_input.a), 30u)]), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<u32>(0u, 52317u, 4294967295u, 0u)), ~global0[_wgslsmith_index_u32(2559u, 30u)], ~4294967295u) >> (vec3<u32>(u_input.a, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(33482u, 30u)]), u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = -u_input.c;
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.c.x, var_0.x), firstLeadingBit(vec4<i32>(u_input.b, -15209i, var_0.x, u_input.d.x))) >> (firstLeadingBit(~u_input.a) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -646f), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true))), all(vec4<bool>(false, true, true, true))), ~vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], u_input.a), u_input.a), ~vec4<u32>(25120u, ~global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(11132u, 30u)]), 30u)], 1725u)), vec3<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), u_input.a <= u_input.a)), true, any(vec4<bool>(false, true, true, false))), u_input.d.x, Struct_1(_wgslsmith_div_i32(~u_input.b, u_input.b ^ -39940i), -1024f, vec4<bool>(1i <= var_0.x, true, true, true), _wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a))), ~(~vec2<u32>(65893u, 8309u))), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(5880u, 30u)], u_input.a, 49728u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10721u, 30u)], 30u)])))));
    var_0 = vec3<i32>(var_1.c, var_0.x << (4294967295u % 32u), _wgslsmith_sub_i32(var_0.x, countOneBits(var_1.a.a))) & u_input.c;
    let var_2 = Struct_3(-2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b, var_1.d.b, var_1.d.b)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1608f, -1021f, -478f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1163f, -1205f, 295f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.b)), -310f, _wgslsmith_f_op_f32(-var_1.d.b)))), -1379f, var_1.a, u_input.a >> ((u_input.a ^ select(var_1.a.d.x >> (var_1.a.d.x % 32u), ~1u, true)) % 32u));
    var var_3 = var_2.d.a;
    var_0 = -(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-56957i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-893f, 1419f, 1000f, 711f), vec4<f32>(var_1.a.b, var_1.d.b, -1814f, var_2.d.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, -1768f, var_1.a.b, -659f) + vec4<f32>(var_1.d.b, -154f, 680f, var_1.d.b))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.b, 186f, 908f, -552f), vec4<f32>(var_2.d.b, 678f, var_2.d.b, -518f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, var_2.c, var_1.d.b) + vec4<f32>(-1314f, 832f, 233f, var_1.d.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.b, var_1.d.b, 182f, -311f) + vec4<f32>(var_2.c, -769f, var_2.d.b, var_1.a.b)), !var_1.a.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(171f, var_2.b.x, -485f, var_2.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(472f, -944f, var_1.d.b, 432f)))))), vec4<i32>(-24557i, reverseBits(var_2.d.a), 2147483647i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(~(-2147483647i), abs(2147483647i), 2147483647i))), i32(-1i) * -abs(-var_1.c));
}

