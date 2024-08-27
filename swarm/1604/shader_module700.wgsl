struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<bool> {
    let var_0 = any(select(vec4<bool>(arg_0, true, all(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, arg_0), false)), select(arg_0, arg_0, arg_0)), !select(vec4<bool>(false, arg_0, true, arg_0), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_0)), true), select(true, true, arg_0)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - vec3<f32>(_wgslsmith_f_op_f32(1077f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -498f))), 1466f));
    let var_2 = Struct_1(arg_1 ^ _wgslsmith_mult_u32(max(~53579u, ~arg_1), arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1069f), select(select(!(!vec4<bool>(true, arg_0, true, var_0)), select(!vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, var_0, var_0, false), any(vec3<bool>(arg_0, arg_0, true))), false), select(vec4<bool>(any(vec4<bool>(false, true, true, true)), false, select(var_0, false, false), true), !(!vec4<bool>(var_0, true, var_0, arg_0)), vec4<bool>(arg_1 > 49081u, arg_0, all(global0[_wgslsmith_index_u32(arg_1, 1u)]), any(vec2<bool>(arg_0, var_0)))), true), u_input.c, _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.yyx, u_input.a.zzx), vec3<i32>(u_input.b.x, 2147483647i, u_input.d)) >> (~_wgslsmith_clamp_u32(27180u, 24296u, 4294967295u) % 32u)));
    let var_3 = ~arg_1;
    let var_4 = var_2;
    return !var_4.c.xxw;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> bool {
    global0 = array<vec2<bool>, 1>();
    var var_0 = arg_0.d.yy;
    var_0 = min(vec2<u32>(10479u, arg_0.d.x), vec2<u32>(min(arg_0.a, arg_1), var_0.x));
    global0 = array<vec2<bool>, 1>();
    let var_1 = func_3(true, abs(abs(1u)));
    return (!(!arg_2) || any(vec4<bool>(true, true, true, true))) || (_wgslsmith_add_u32(3843u, ~arg_3.x) < ~(~52227u));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-586f, _wgslsmith_f_op_f32(min(933f, -500f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(391f + _wgslsmith_f_op_f32(round(-594f))), _wgslsmith_div_f32(-321f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1293f * -2114f), _wgslsmith_f_op_f32(trunc(394f)))))));
    let var_1 = Struct_1(~firstTrailingBit(3587u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f + -1000f) + _wgslsmith_f_op_f32(-569f - 1154f))))), select(select(vec4<bool>(true, arg_1, arg_1, arg_1), !vec4<bool>(arg_1, true, true, arg_1), false), !(!vec4<bool>(true, false, arg_1, true)), !select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, false, false, arg_1))), abs(select(vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 52145u, u_input.c.x), u_input.c.x, u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), u_input.c ^ u_input.c, select(!vec4<bool>(false, arg_1, false, arg_1), select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, true, false, arg_1), true), select(vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, false, true, arg_1), arg_1)))), ~(~abs(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.b))));
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_1.d.zw, var_1.d.wz), _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 73607u), ~var_1.a), ~(~0u)), var_1.a << (_wgslsmith_mult_u32(u_input.c.x, ~13621u) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + 136f) + var_1.b), 1000f), select(select(!vec4<bool>(var_1.c.x, var_1.c.x, true, false), var_1.c, true), var_1.c, var_1.c), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_1.a, 1u, u_input.c.x, var_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.d.x, var_1.a), vec4<u32>(u_input.c.x, var_1.d.x, u_input.c.x, u_input.c.x))), ~vec4<u32>(4294967295u, 26120u, var_1.a, 62456u)), vec4<u32>(4294967295u, 45355u, ~u_input.c.x, var_1.d.x)), 28370i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~2147483647i;
    let var_1 = arg_0.c.x;
    let var_2 = var_1;
    var var_3 = func_4(firstTrailingBit(-vec2<i32>(arg_0.e, arg_0.e)), !func_2(arg_0, arg_0.a, any(vec4<bool>(var_1, arg_0.c.x, false, true)), vec4<u32>(25426u, arg_0.d.x, ~u_input.c.x, _wgslsmith_div_u32(arg_0.a, u_input.c.x))));
    var_0 = u_input.d;
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<bool>(true, select(true & !(arg_3.e > arg_3.e), all(vec3<bool>(all(vec2<bool>(arg_3.c.x, arg_3.c.x)), false, select(arg_3.c.x, true, true))), arg_3.c.x));
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_3.b));
    var var_2 = Struct_1(39600u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(func_4(arg_2.xy, arg_3.c.x).b, arg_3.b)))))), arg_3.c, reverseBits(vec4<u32>(31362u, arg_1.x, ~arg_3.a, reverseBits(u_input.c.x & 4294967295u))), arg_2.x >> (arg_3.a % 32u));
    var_2 = arg_3;
    var_2 = arg_3;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 1>();
    let var_0 = func_5(u_input.c.x, select(_wgslsmith_mult_vec3_u32(u_input.c.zzw, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 22583u, u_input.c.x), u_input.c.xxy)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(20362u, 40328u, 39827u)), _wgslsmith_mult_u32(u_input.c.x, 50027u))), !(_wgslsmith_f_op_f32(abs(247f)) == _wgslsmith_f_op_f32(func_1(Struct_1(0u, 262f, vec4<bool>(true, true, true, false), vec4<u32>(0u, 4294967295u, 107690u, u_input.c.x), u_input.a.x))))), _wgslsmith_div_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(20993i, u_input.d, u_input.e.x, u_input.d), vec4<i32>(-23289i, u_input.b.x, u_input.e.x, -46662i))), -1i, -1i, reverseBits(select(-8359i, u_input.b.x, true))), u_input.b), func_4(reverseBits(-u_input.b.wy) | vec2<i32>(u_input.d, u_input.e.x ^ 0i), true));
    global0 = array<vec2<bool>, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(271f, 1655f))) * vec2<f32>(-237f, 660f))), vec2<f32>(1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f * 1161f))), global0[_wgslsmith_index_u32(u_input.c.x, 1u)]))));
    let var_2 = u_input.b;
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(764f, -667f)));
    let var_3 = ~firstLeadingBit(-u_input.a.ywy);
    let var_4 = !vec3<bool>(~_wgslsmith_mod_u32(16821u, 128681u) > max(_wgslsmith_div_u32(u_input.c.x, 49973u), 0u), any(func_3(true, firstTrailingBit(u_input.c.x))), any(func_3(false, firstLeadingBit(u_input.c.x)).yy));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -688f) - vec2<f32>(var_1.x, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(var_1.x * 783f), _wgslsmith_f_op_f32(step(-504f, var_1.x))), select(!var_4.xz, !vec2<bool>(var_4.x, true), func_3(false, u_input.c.x).x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1459f, var_1.x) + vec2<f32>(var_1.x, var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1517f, _wgslsmith_div_u32(1u, ~65154u), ~u_input.c.x, 147f, var_2.xx);
}

