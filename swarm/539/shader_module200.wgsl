struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(3136f, 1058f, 824f, -732f, 1267f, 1394f);

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-1258f, -150f), vec2<f32>(-1000f, 516f), vec2<f32>(-477f, 1000f), vec2<f32>(-1000f, -356f), vec2<f32>(1000f, -1000f), vec2<f32>(-178f, -513f), vec2<f32>(-851f, -537f), vec2<f32>(-1000f, 775f), vec2<f32>(697f, -691f), vec2<f32>(-842f, -1196f), vec2<f32>(245f, 579f), vec2<f32>(-1000f, 983f), vec2<f32>(248f, 822f), vec2<f32>(1552f, -635f), vec2<f32>(-486f, -956f), vec2<f32>(-1000f, -389f), vec2<f32>(229f, 1912f), vec2<f32>(1000f, -1225f), vec2<f32>(-1483f, -288f), vec2<f32>(151f, -142f), vec2<f32>(420f, -1483f), vec2<f32>(284f, -1644f), vec2<f32>(-2283f, 490f), vec2<f32>(-649f, 136f), vec2<f32>(1350f, -998f), vec2<f32>(-133f, 846f), vec2<f32>(586f, -1886f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = countOneBits(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.d.x) & -3074i, u_input.a.x));
    global1 = arg_2;
    let var_1 = all(select(!vec2<bool>(arg_2, !arg_2), vec2<bool>(arg_2, !(arg_2 && true)), !(!any(vec2<bool>(true, arg_2)))));
    var_0 = arg_1;
    var var_2 = vec3<f32>(global0[_wgslsmith_index_u32(79326u, 6u)], -146f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * -1344f), _wgslsmith_div_f32(arg_0, -1479f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), arg_0))) + _wgslsmith_div_f32(-405f, -206f)));
    return _wgslsmith_div_u32(4294967295u, firstTrailingBit(~57096u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.e << (u_input.e % 32u), 0u, 14542u)), ~(~(~vec3<u32>(4294967295u, u_input.c, 0u)))), 27u)], 40062i, ~vec2<i32>(firstTrailingBit(u_input.d.x), ~42282i) & -u_input.d.xy, u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(60802u, 6u)], 1225f))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(8003u, 27u)])))) + global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(u_input.b.x, 4294967295u) | u_input.c), 27u)]));
    let var_1 = Struct_1(var_0.e, u_input.a.x, countOneBits(-_wgslsmith_sub_vec2_i32(u_input.a, -vec2<i32>(1i, u_input.d.x))), vec4<u32>(~var_0.d.x, countOneBits(~var_0.d.x), var_0.d.x, var_0.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.c, 27u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)) - global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 0u), 27u)])) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_0.e, _wgslsmith_div_vec2_f32(vec2<f32>(133f, var_0.a.x), vec2<f32>(global0[_wgslsmith_index_u32(u_input.e, 6u)], var_0.a.x)))))));
    var var_2 = all(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true)));
    let var_3 = var_1.c.x;
    let var_4 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return ~abs(_wgslsmith_dot_vec4_u32(select(var_0.d, vec4<u32>(49332u, var_0.d.x, 17909u, 32670u), vec4<bool>(var_4.x, var_4.x, false, var_4.x)), vec4<u32>(67104u, 4294967295u, 0u, 4294967295u)) >> (4294967295u % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec2<f32> {
    global1 = false || !(1u < u_input.e);
    var var_0 = vec4<u32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))), arg_0.b, -10652i > (arg_0.c.x ^ 36007i)), 36369u, ~((26190u & u_input.c) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10848u, arg_2), ~vec3<u32>(u_input.b.x, 0u, arg_2))), arg_0.d.x);
    global0 = array<f32, 6>();
    var var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-992f, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-520f, global0[_wgslsmith_index_u32(arg_0.d.x, 6u)])))), arg_0.e.x), false);
    var_0 = vec4<u32>(u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(140827u, var_0.x, u_input.c, u_input.e), ~vec4<u32>(1u, arg_0.d.x, 16608u, 4294967295u)) | func_3(), ~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 996u, arg_2), u_input.b) & (var_0.x & 4294967295u)), var_0.x);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, 344f) * global2[_wgslsmith_index_u32(4294967295u, 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_vec2_f32(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4987u, 6u)], global0[_wgslsmith_index_u32(5582u, 6u)])), firstLeadingBit(u_input.a.x), u_input.d.zx & vec2<i32>(2147483647i, u_input.a.x), vec4<u32>(28250u, 1u, 1u, u_input.c) >> (vec4<u32>(u_input.b.x, 4294967295u, u_input.e, u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.b.x, 27u)] + global2[_wgslsmith_index_u32(8957u, 27u)])), global0[_wgslsmith_index_u32(~0u, 6u)], ~25184u)))), -44968i, u_input.a, ~u_input.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(68465u, 27u)])) - vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, 27658u), 6u)], _wgslsmith_f_op_f32(min(-984f, -270f)))))));
    var var_1 = ~vec2<i32>(u_input.d.x, -377i) << (vec2<u32>(0u, ~var_0.d.x) % vec2<u32>(32u));
    let var_2 = u_input.b.xzz >> (_wgslsmith_mod_vec3_u32(var_0.d.ywz, abs(select(abs(u_input.b.xyz), select(vec3<u32>(u_input.c, u_input.b.x, 1u), vec3<u32>(var_0.d.x, var_0.d.x, 61111u), false), vec3<bool>(false, true, false)))) % vec3<u32>(32u));
    var_1 = _wgslsmith_div_vec2_i32(~var_0.c | var_0.c, ~(-vec2<i32>(3667i, -24685i)) ^ vec2<i32>(var_0.c.x, _wgslsmith_sub_i32(var_0.c.x, 39559i))) | (vec2<i32>(74473i, abs(28558i | u_input.a.x)) << (u_input.b.xw % vec2<u32>(32u)));
    var_0 = Struct_1(global2[_wgslsmith_index_u32(73765u, 27u)], var_1.x, _wgslsmith_sub_vec2_i32(u_input.d.xy, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.d.xx, var_0.c), u_input.d.yx)), ~vec4<u32>(var_0.d.x, 4294967295u, 9087u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(31561u, u_input.e, u_input.b.x, var_2.x)), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(var_0.d.x, 0u, u_input.e, var_2.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(1u, 27u)], var_0.e, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(15038u, 27u)]))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(abs(u_input.c), 27u)])))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-14392i, -30387i) >> (1u % 32u), -2147483647i, -18557i), u_input.d), _wgslsmith_div_vec2_i32(-reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), var_0.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-51097i, 2147483647i, var_1.x, 18375i), firstLeadingBit(vec4<i32>(var_0.c.x, -2147483647i, -78617i, -2147483647i))), 1i)), min(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, 0u, 1u, 4294967295u), ~vec4<u32>(17467u, 4294967295u, 11665u, var_0.d.x), vec4<bool>(true, false, false, true)), u_input.b), vec4<u32>(var_2.x, u_input.e, ~(~0u), _wgslsmith_sub_u32(countOneBits(0u), ~var_0.d.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] + global0[_wgslsmith_index_u32(31020u, 6u)]))))), var_0.a.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_0.e, -13729i, reverseBits(vec2<i32>(3058i, 1i)), ~reverseBits(u_input.b), vec2<f32>(var_0.e.x, _wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_0.e, var_1.x, var_0.c, vec4<u32>(var_2.x, u_input.c, 4294967295u, var_2.x), global2[_wgslsmith_index_u32(u_input.e, 27u)]), -1483f, u_input.e)).x)), -1283f, _wgslsmith_dot_vec2_u32(~countOneBits(u_input.b.yx), ~_wgslsmith_mod_vec2_u32(u_input.b.xy, u_input.b.yy)))), var_0.c.x, firstTrailingBit(vec2<i32>(-18518i, max(-5757i, _wgslsmith_sub_i32(var_1.x, var_0.c.x)))), vec4<u32>(4294967295u, var_0.d.x, var_2.x, ~(~(~1u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_vec2_f32(min(var_0.a, _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_2.x, 27u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 27u)]))));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, var_2.x, u_input.e), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.e.x))))));
}

