struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 10>;

var<private> global2: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    global0 = u_input.d.x >= _wgslsmith_mod_u32(~((0u ^ arg_0.x) | ~arg_0.x), u_input.b);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) - _wgslsmith_f_op_f32(-arg_2.x))))) * _wgslsmith_f_op_f32(1f - arg_2.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, arg_2.x, 657f)) + _wgslsmith_div_vec3_f32(arg_2.zzy, vec3<f32>(501f, 1811f, -292f)))))));
    global0 = arg_1.x;
    let var_1 = Struct_1(26514u, ~(~vec4<u32>(642u, arg_0.x, 10653u, u_input.d.x) | (vec4<u32>(0u, 4294967295u, 1u, u_input.b) << (firstLeadingBit(vec4<u32>(arg_0.x, 88435u, u_input.d.x, 6660u)) % vec4<u32>(32u)))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(38431i, 2337i), -43682i, ~(-46836i)) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-67617i, 44029i, 15221i), vec3<i32>(-376i, 51714i, 15472i)) << (arg_0.x % 32u)), -1i, -1i), select(vec3<bool>(true, all(arg_1.wy), true), arg_1.zxw, arg_1.wzx));
    return var_1.b.x > min(72333u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~0u, var_1.b.x), var_1.a));
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<Struct_1, 10>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 10u)];
    global1 = array<Struct_1, 10>();
    var var_1 = var_0.c;
    global0 = ((!(var_0.c.x == -29981i) && !any(var_0.d)) | func_3(countOneBits(vec4<u32>(1u, arg_0, 4294967295u, 1u) & vec4<u32>(0u, u_input.c, var_0.b.x, 1u)), vec4<bool>(true, false, true, true), vec4<f32>(_wgslsmith_div_f32(1268f, -636f), _wgslsmith_f_op_f32(-1000f + -116f), _wgslsmith_f_op_f32(sign(1184f)), _wgslsmith_f_op_f32(-1000f - 117f)))) && any(!select(!vec4<bool>(var_0.d.x, var_0.d.x, false, false), !vec4<bool>(true, var_0.d.x, true, false), all(vec2<bool>(false, true))));
    return _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(abs(4294967295u), 60634u, 17458u)), ~select(firstLeadingBit(select(vec3<u32>(1u, 86006u, u_input.e.x), vec3<u32>(u_input.e.x, 67663u, 8542u), true)), vec3<u32>(abs(4294967295u), u_input.c, 2221u), !(!var_0.d)));
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 10>();
    var var_0 = Struct_1(reverseBits(u_input.c) | ~u_input.c, vec4<u32>(u_input.e.x | 1u, abs(u_input.e.x), u_input.b, ~(~u_input.e.x)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b, u_input.c), abs(vec4<u32>(7909u, u_input.d.x, 4294967295u, 4294967295u))), vec4<u32>(~1u, ~0u, ~0u, 16622u)) % vec4<u32>(32u)), select(-vec3<i32>(1i, 0i, 0i) >> (vec3<u32>(~30730u, func_2(u_input.c), u_input.a) % vec3<u32>(32u)), vec3<i32>(0i, 0i, 0i), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !func_3(reverseBits(vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 0u)), vec4<bool>(true, false, false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(563f, -218f, 1244f, 1558f) * vec4<f32>(1780f, 203f, 803f, 612f))), true));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, 0i) << ((vec4<u32>(1u, 52731u, 9309u, 1u) & vec4<u32>(0u, u_input.b, 4294967295u, var_0.a)) % vec4<u32>(32u)), countOneBits(countOneBits(vec4<i32>(-6113i, var_0.c.x, -4380i, var_0.c.x)))) ^ vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-19654i, var_0.c.x, 1i, 1i), vec4<i32>(-1i, 12402i, var_0.c.x, var_0.c.x)), firstTrailingBit(-8053i)), _wgslsmith_dot_vec3_i32(vec3<i32>(13500i, var_0.c.x, 2147483647i), vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c), vec3<i32>(var_0.c.x, 0i, -21669i)), _wgslsmith_mod_i32(1i, 2147483647i >> (u_input.b % 32u))), vec3<i32>(_wgslsmith_div_i32(-var_0.c.x, var_0.c.x), abs(-max(3577i, 25957i)), var_0.c.x));
    let var_2 = var_1.b.x;
    let var_3 = Struct_2(var_1.a << (vec4<u32>(4294967295u, ~var_0.a, max(u_input.e.x, 49625u), ~var_0.a) % vec4<u32>(32u)), max(firstLeadingBit(vec3<i32>(0i, _wgslsmith_sub_i32(2147483647i, var_0.c.x), var_0.c.x & 1249i)), ~_wgslsmith_sub_vec3_i32(var_1.a.zwx, max(vec3<i32>(47489i, -1i, var_0.c.x), var_1.a.zzx))));
    return -405f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(158f)) + _wgslsmith_f_op_f32(1602f + 1417f)) + -427f)), 1f);
    global1 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1029f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1114f)) * _wgslsmith_f_op_f32(269f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(150f, -1340f)), 648f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, -859f, 212f, -135f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1152f, 3133f, -125f)))))), vec4<i32>(_wgslsmith_sub_i32(~(-29339i), 10575i), firstLeadingBit(0i << (u_input.d.x % 32u)), ~2147483647i, _wgslsmith_sub_i32(~2259i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1231i, 28020i, 23855i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, -1i, 3725i), vec4<i32>(-1831i, -2147483647i, -14314i, 20444i))))), _wgslsmith_add_vec2_i32(~vec2<i32>(37352i, -9469i) << (u_input.d % vec2<u32>(32u)), min(~(vec2<i32>(-2147483647i, 50527i) << (u_input.e % vec2<u32>(32u))), vec2<i32>(1i, 1i) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)))), u_input.d);
}

