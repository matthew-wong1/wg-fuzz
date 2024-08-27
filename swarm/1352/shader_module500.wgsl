struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2979i), vec4<i32>(29738i, -10439i, 2147483647i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 0i, 40410i), vec4<i32>(0i, 16029i, 0i, -36319i), vec4<i32>(i32(-2147483648), 20007i, 2295i, -20359i), vec4<i32>(-8107i, 36136i, 70342i, 2147483647i), vec4<i32>(0i, 0i, 38556i, 17635i), vec4<i32>(1i, 0i, -33559i, -24268i), vec4<i32>(26019i, -45784i, -7337i, 4656i), vec4<i32>(2167i, 59201i, 8957i, i32(-2147483648)), vec4<i32>(10017i, 0i, -1i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 34462i, -7598i), vec4<i32>(-44316i, -1i, -11932i, 65239i), vec4<i32>(33544i, 2147483647i, -19107i, 18506i), vec4<i32>(-24757i, i32(-2147483648), 1i, -3488i), vec4<i32>(3491i, 0i, 21290i, 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = 501f;
    let var_1 = Struct_1(vec2<i32>(1i, ~(-_wgslsmith_add_i32(2147483647i, u_input.a.x))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-116f)));
    global0 = array<bool, 19>();
    var_0 = _wgslsmith_f_op_f32(step(-364f, -1254f));
    return Struct_1(_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.a.zy, var_1.a), var_1.a) >> (max(_wgslsmith_add_vec2_u32(u_input.c.xz | vec2<u32>(arg_1, 76435u), abs(vec2<u32>(0u, arg_1))), u_input.c.yz) % vec2<u32>(32u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec3<u32> {
    let var_0 = Struct_3(-_wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_1, arg_1, 1i, -9212i), global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), _wgslsmith_sub_vec4_i32(~global1[_wgslsmith_index_u32(65068u, 16u)], vec4<i32>(13791i, u_input.b.x, u_input.a.x, 2638i))), Struct_2(func_2(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 3777u), vec4<u32>(1u, 22720u, 58372u, u_input.c.x)))));
    return vec3<u32>(6291u, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 106211u, u_input.c.x), vec3<u32>(0u, 4294967295u, 33168u)), vec3<u32>(u_input.c.x, ~u_input.c.x, 70328u)), abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(13582u, u_input.c.x), vec2<u32>(u_input.c.x, 0u)), u_input.c.xy)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = arg_1.b;
    var var_1 = u_input.c.xy;
    let var_2 = true;
    var var_3 = ~countOneBits(_wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 24985u, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, var_1.x)), _wgslsmith_add_u32(13559u, var_1.x)), 9710u));
    global1 = array<vec4<i32>, 16>();
    return (reverseBits(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-31051i, arg_1.b.a.a.x, -12210i) << (vec3<u32>(arg_0.x, var_1.x, u_input.c.x) % vec3<u32>(32u)), arg_1.a.xyy)) | u_input.a) & (vec3<i32>(-1i) * -firstLeadingBit(u_input.a));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    var var_0 = func_2(u_input.c.x, ~78829u);
    var var_1 = firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(0u, arg_0 & arg_0))) << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(min(arg_0, ~u_input.c.x), ~_wgslsmith_clamp_u32(4294967295u, 1u, arg_0), u_input.c.x), 1u) % 32u);
    let var_2 = _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(~arg_0 ^ u_input.c.x, 16u)] & global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x | ~arg_0), 16u)], _wgslsmith_mod_vec4_i32(-global1[_wgslsmith_index_u32(arg_0, 16u)], vec4<i32>(select(-27125i, arg_1.x, true), arg_1.x, countOneBits(i32(-1i) * -27506i), ~_wgslsmith_add_i32(u_input.a.x, -20574i))));
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(-31264i, u_input.b.x & (i32(-1i) * -6487i), 21234i), func_4(countOneBits(func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1467f, -1262f))), 1i)), Struct_3(var_2, Struct_2(Struct_1(var_2.yw)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = 466f;
    let var_1 = func_2(_wgslsmith_dot_vec2_u32(abs(arg_0), vec2<u32>(u_input.c.x, ~(4294967295u & arg_0.x))), abs(arg_0.x)).a.x;
    let var_2 = func_2(8692u, arg_0.x);
    let var_3 = Struct_2(Struct_1(vec2<i32>(~(1i >> (arg_0.x % 32u)), -2147483647i)));
    global0 = array<bool, 19>();
    return Struct_3(global1[_wgslsmith_index_u32(1u, 16u)] ^ _wgslsmith_div_vec4_i32(max(vec4<i32>(var_2.a.x, 8777i, var_3.a.a.x, u_input.b.x) << (vec4<u32>(u_input.c.x, 42931u, 1496u, u_input.c.x) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(~(~arg_0.x), 16u)]), Struct_2(Struct_1(max(vec2<i32>(-1i, var_3.a.a.x), vec2<i32>(0i, -1i)) << (arg_0 % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 1i);
    let var_1 = 1000f;
    global1 = array<vec4<i32>, 16>();
    var var_2 = Struct_3(countOneBits(-vec4<i32>(-2147483647i, _wgslsmith_mult_i32(var_0.x, -2147483647i), _wgslsmith_add_i32(-2147483647i, u_input.b.x), ~(-1i))), Struct_2(Struct_1(u_input.a.xz)));
    let var_3 = 843i;
    var_2 = func_5(~u_input.c.yz, ~15255u < _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c.x, 1u, 29514u), vec3<u32>(u_input.c.x, 27799u, 54507u), vec3<bool>(true, true, false)), u_input.c), vec3<u32>(1u, reverseBits(29943u), 0u)), vec3<i32>(abs(_wgslsmith_div_i32(-34335i, var_3)) ^ _wgslsmith_div_i32(~(-22959i), countOneBits(var_2.b.a.a.x)), var_2.b.a.a.x, ((-32121i & var_3) & func_1(u_input.c.x, vec3<i32>(u_input.a.x, var_3, u_input.a.x))) << (~u_input.c.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(exp2(var_1))), var_1), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2445f, 795f, _wgslsmith_f_op_f32(var_1 + 815f)))))), _wgslsmith_mod_i32(var_2.a.x, 3799i), 31202u, _wgslsmith_mult_vec3_i32(abs(u_input.a), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.x, 1i, 41038i), func_5(u_input.c.zz, true, var_2.a.yzy).a.www), ~var_2.a.zxw | vec3<i32>(25352i, var_0.x, 0i))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - var_1)));
}

