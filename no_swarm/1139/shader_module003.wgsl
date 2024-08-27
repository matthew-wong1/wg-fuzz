struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(0u, 79216u), vec2<u32>(46718u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(96038u, 43994u), vec2<u32>(18474u, 49783u));

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = Struct_2(arg_1.a.d, arg_1.a.b, 1i, arg_1.a.d);
    return _wgslsmith_mult_u32(global2.a.x, 4294967295u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = any(!(!vec3<bool>(true, arg_0 || arg_0, arg_0 || arg_0)));
    global2 = Struct_1(global2.a);
    let var_1 = vec4<u32>(func_3(global1[_wgslsmith_index_u32(52864u, 22u)], Struct_3(Struct_2(375f, -13433i, -34728i, 1000f), _wgslsmith_mod_i32(-29769i, abs(u_input.c.x)), u_input.a.x, -(u_input.c.x >> (0u % 32u))), all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, true, arg_0, true), arg_0), true))), 114751u, 6634u, _wgslsmith_sub_u32(~arg_1, 41366u));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-36013i, -16507i), ~vec2<i32>(u_input.c.x, u_input.c.x)), -u_input.c) ^ vec2<i32>(~max(u_input.c.x, u_input.c.x), _wgslsmith_div_i32(u_input.b, u_input.c.x) | 1745i), -u_input.c);
    let var_3 = Struct_4(var_1.x, Struct_1(vec3<u32>(_wgslsmith_clamp_u32(arg_1, _wgslsmith_sub_u32(47023u, global2.a.x), 1u), ~var_1.x, arg_1)), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-u_input.c, ~u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -40189i, u_input.c.x, 2147483647i), vec4<i32>(-1i, 25051i, u_input.b, 2147483647i)) ^ 22560i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b)) & _wgslsmith_div_i32(-13872i, u_input.b)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(abs(1i), ~(-46624i)), -_wgslsmith_div_vec2_i32(u_input.c, u_input.c)), ~(-(u_input.c & u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-799f, 118f), _wgslsmith_f_op_f32(select(626f, -835f, arg_0)), _wgslsmith_f_op_f32(-108f - -447f))))));
    return ~4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(-523f));
    var var_1 = Struct_4(24472u, Struct_1(~(~_wgslsmith_sub_vec3_u32(global2.a, global2.a))), 1i, _wgslsmith_div_i32(-abs(-47576i), _wgslsmith_mod_i32(1i, ~min(arg_1.x, u_input.c.x))), arg_3.zzy);
    let var_2 = arg_3.xxz;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.x, var_2.x))));
    var var_4 = Struct_4(u_input.a.x | 21274u, var_1.b, ~firstLeadingBit(u_input.b), ~_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-25506i, 2147483647i), u_input.c), _wgslsmith_mult_i32(arg_1.x, 1i)), -42234i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_3.zzw)) + vec3<f32>(var_2.x, 205f, arg_3.x))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(-vec2<i32>(reverseBits(countOneBits(-47148i)), _wgslsmith_div_i32(u_input.b, -u_input.b)), vec3<i32>(1i >> (func_2(true, ~global2.a.x, abs(4294967295u)) % 32u), ~_wgslsmith_mult_i32(reverseBits(-8850i), 0i), -68620i), ~(u_input.a.x & max(1u, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-968f, -1343f, 763f, -518f), vec4<f32>(-312f, -753f, -1262f, 862f))))))));
    let var_1 = arg_1.a;
    global0 = array<vec2<u32>, 5>();
    global2 = arg_1;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)), u_input.b, arg_2 >> (0u % 32u), var_0.x);
    return reverseBits(-u_input.b);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_1 {
    global2 = Struct_1(global2.a);
    var var_0 = Struct_4(u_input.a.x, Struct_1(reverseBits(vec3<u32>(u_input.a.x, ~arg_1.c, 2115u << (1u % 32u)))), _wgslsmith_div_i32(_wgslsmith_div_i32(func_1(vec3<u32>(20225u, 4294967295u, 47012u), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), min(arg_0, arg_1.d)), func_1(global2.a, Struct_1(global2.a), countOneBits(u_input.c.x))), 17651i), max(arg_1.a.b, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(1218f * arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) - arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_1.a.a))) + _wgslsmith_f_op_vec3_f32(select(arg_2.yww, arg_2.zzw, vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.a.b, func_1(global2.a >> (vec3<u32>(u_input.a.x, 4294967295u, 30322u) % vec3<u32>(32u)), var_0.b, arg_0)), _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b, arg_0, arg_1.b), vec3<i32>(2147483647i, -18023i, var_0.c)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.c.x), vec3<i32>(16830i, arg_1.b, u_input.c.x)))) | _wgslsmith_clamp_i32(firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 11419i, arg_0, u_input.b), vec4<i32>(arg_1.b, var_0.c, arg_1.d, u_input.b)))), select(arg_0, 7514i, firstTrailingBit(-30356i) <= (-77227i ^ var_0.c)), _wgslsmith_add_i32(u_input.c.x ^ var_0.d, var_0.c));
    let var_2 = _wgslsmith_mod_i32(-1i, -(~arg_0));
    let var_3 = ~(~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(min(u_input.a, vec2<u32>(1u, 5321u)), ~global0[_wgslsmith_index_u32(global2.a.x, 5u)]), vec2<u32>(u_input.a.x << (arg_1.c % 32u), ~u_input.a.x)));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(174f * _wgslsmith_f_op_f32(abs(-1000f)));
    global0 = array<vec2<u32>, 5>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a.x, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 68125u, 0u, global2.a.x)), ~vec4<u32>(u_input.a.x, global2.a.x, 0u, global2.a.x)))), 5u)];
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(step(-213f, _wgslsmith_f_op_f32(-849f + 431f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-772f, -145f)))) - 2551f);
    let var_2 = func_5(~(-_wgslsmith_clamp_i32(u_input.c.x, func_1(global2.a, Struct_1(vec3<u32>(1u, var_1.x, global2.a.x)), u_input.b), u_input.c.x)), Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) - -1085f), 52710i, 0i, -1734f), u_input.c.x, abs(global2.a.x), select(0i | u_input.b, abs(reverseBits(-2147483647i)), true)), vec4<f32>(_wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(701f)))), _wgslsmith_f_op_f32(1898f * 115f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1578f + 277f) * -1040f) + _wgslsmith_f_op_f32(630f * -1489f)), _wgslsmith_f_op_f32(424f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-542f)) - -415f))));
    var_1 = var_2.a.xy;
    let var_3 = vec4<bool>(!(true || any(vec4<bool>(false, true, true, true))), true, !(1u > select(abs(var_1.x), 5536u, all(vec4<bool>(true, false, true, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

