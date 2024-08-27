struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> vec2<i32> {
    let var_0 = ~global2.e.x;
    global1 = _wgslsmith_sub_i32(-(~17766i), 2147483647i);
    var var_1 = 3393u;
    var_1 = select(select(~arg_0, ~select(max(u_input.b.x, 4294967295u), ~u_input.b.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(627f - 1149f)) >= global2.d.x), 3950u, arg_2.x);
    var var_2 = select(arg_2.xyx, !vec3<bool>(!(!arg_2.x), !arg_2.x, 4294967295u <= u_input.a), !vec3<bool>((u_input.b.x << (arg_0 % 32u)) < _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(arg_0, u_input.b.x)), false, true));
    return vec2<i32>(~abs((arg_3 | arg_3) >> (26054u % 32u)), -firstLeadingBit(-17094i));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = arg_0.a;
    return ~(~(~reverseBits(u_input.c.yz))) << (countOneBits(abs(u_input.c.zx)) % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    global0 = array<vec4<bool>, 10>();
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(29789i, -global2.a), 25457i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.e.x, 2147483647i), _wgslsmith_div_vec2_i32(-global2.e.zy, global2.e.zz >> (arg_0 % vec2<u32>(32u)))), firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(-20125i, -52637i), 2147483647i))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(func_5(func_4(Struct_3(!vec3<bool>(global2.b, global2.b, global2.b), 1u, _wgslsmith_f_op_f32(-897f - -470f), func_3(u_input.a, global2.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global2.a), -57398i), global2.d.yy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-253f, global2.d.x))))), _wgslsmith_clamp_u32(1u, u_input.b.x, 4294967295u) <= 12091u, 2147483647i, vec4<f32>(global2.d.x, 1410f, -1459f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -478f)))), global2.e >> (vec3<u32>(39523u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), vec2<u32>(24586u, u_input.a))), _wgslsmith_sub_u32(u_input.c.x ^ 22170u, 1u)) % vec3<u32>(32u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(233f - -1047f)), var_0.d.x)))), _wgslsmith_f_op_f32(2517f + _wgslsmith_f_op_f32(global2.d.x * _wgslsmith_f_op_f32(477f + 1f))), _wgslsmith_f_op_f32(sign(-1918f)), -2163f);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(global2.d))));
    var var_3 = func_4(Struct_3(select(select(select(vec3<bool>(global2.b, true, true), vec3<bool>(global2.b, true, var_0.b), vec3<bool>(false, false, global2.b)), vec3<bool>(true, global2.b, global2.b), true), vec3<bool>(false, var_0.b, all(vec3<bool>(global2.b, global2.b, global2.b))), vec3<bool>(all(vec2<bool>(true, global2.b)), !var_0.b, global2.b)), ~u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * _wgslsmith_f_op_f32(floor(global2.d.x))), _wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(1407f - 1000f))), ~_wgslsmith_clamp_vec2_i32(-var_0.e.yy, ~vec2<i32>(-1i, -11479i), select(global2.e.yx, vec2<i32>(var_0.e.x, global2.a), vec2<bool>(false, true))), -3859i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-global2.d.x), all(vec2<bool>(var_0.b, var_0.b)))), 1213f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) - var_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -564f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f)), -612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, 603f) * _wgslsmith_f_op_f32(max(global2.d.x, -1371f))) - _wgslsmith_f_op_f32(f32(-1f) * -1415f)), 1f) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-378f, 233f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) - -602f), -1026f, _wgslsmith_f_op_f32(-965f + _wgslsmith_f_op_f32(min(var_2.x, -1110f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1841f, var_0.d.x, var_1.x, -401f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, global2.d.x, 1466f, 349f) * vec4<f32>(var_0.d.x, 835f, 1912f, 616f))))));
    return reverseBits(reverseBits(26689u << (~max(var_3.x, var_3.x) % 32u)));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> u32 {
    global1 = -arg_0.d.x >> (~27722u % 32u);
    let var_0 = -192f;
    global0 = array<vec4<bool>, 10>();
    var var_1 = arg_0;
    let var_2 = ~var_1.b;
    return u_input.c.x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(global2.e.x, -2147483647i);
    var var_1 = abs(firstTrailingBit(var_0));
    global1 = global2.c;
    var var_2 = func_6(Struct_3(vec3<bool>(all(vec2<bool>(global2.b, false)), false, !global2.b), func_2(), global2.d.x, vec2<i32>(func_5(_wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(0u, u_input.b.x)), -510f), abs(~var_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(11878i, -8863i, 13283i), vec3<i32>(var_0.x, var_0.x, global2.c)), -vec3<i32>(global2.c, global2.a, var_1.x)), ~(-global2.e))), !any(select(vec2<bool>(global2.b, false), vec2<bool>(global2.b, true), !vec2<bool>(true, global2.b))), Struct_2(Struct_1(global2.c, global2.b, 7054i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global2.d)) * vec4<f32>(152f, -3574f, global2.d.x, global2.d.x)), max(global2.e, global2.e)), !(!(!global2.b)), Struct_1(var_0.x, !(global2.d.x >= global2.d.x), abs(_wgslsmith_sub_i32(var_0.x, -46446i)), global2.d, vec3<i32>(func_5(u_input.c.xx, 709f), var_1.x ^ global2.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-54353i, 3189i, var_1.x), global2.e)))));
    global2 = Struct_1(57795i, global2.b, func_5(firstTrailingBit(u_input.b.xy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f + _wgslsmith_f_op_f32(f32(-1f) * -467f)) + global2.d.x)), global2.d, global2.e);
    return Struct_1(-(-firstTrailingBit(global2.c) >> ((_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yx) >> (u_input.a % 32u)) % 32u)), false, -44260i, global2.d, vec3<i32>(countOneBits(global2.a), global2.e.x, global2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(~(i32(-1i) * -1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-815f - 1929f) + _wgslsmith_f_op_f32(f32(-1f) * -349f)))) < 485f, global2.a, global2.d, global2.e);
    global2 = Struct_1(_wgslsmith_div_i32(-1i, global2.a), any(global0[_wgslsmith_index_u32(u_input.a, 10u)]), ~(~0i), _wgslsmith_f_op_vec4_f32(global2.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, global2.d.x, global2.d.x, global2.d.x))) * global2.d)), global2.e);
    var var_0 = func_1();
    global1 = ~var_0.a;
    global1 = global2.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~min(vec4<i32>(50027i, global2.a, global2.e.x, -14956i), vec4<i32>(global2.c, var_0.c, global2.e.x, var_0.c))), (~vec4<i32>(var_0.c, 30684i, 32379i, -58851i) | ~vec4<i32>(global2.a, var_0.e.x, var_0.a, var_0.a)) >> (vec4<u32>(_wgslsmith_mult_u32(1u, 32287u), u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u))), u_input.b.x);
}

