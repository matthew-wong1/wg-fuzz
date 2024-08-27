struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1123f;

var<private> global1: array<i32, 20>;

var<private> global2: array<Struct_4, 10>;

var<private> global3: vec3<i32> = vec3<i32>(35210i, -1i, -1i);

var<private> global4: array<i32, 13> = array<i32, 13>(3398i, -17061i, 56868i, -83650i, -31810i, 18121i, -49532i, 1i, -1i, -36744i, -32983i, -4628i, i32(-2147483648));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_5, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_5(arg_2.a, arg_2.b, arg_2.c, arg_2.d);
    return Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a.c.a, arg_2.b, 1u, 4294967295u), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, u_input.c, arg_2.b, 0u), vec4<u32>(1u, 20524u, 87118u, arg_2.a.a), var_0.d), ~vec4<u32>(u_input.c, 0u, arg_2.a.a, arg_2.a.b.a))), var_0.a.b.b, _wgslsmith_f_op_f32(round(-147f)), min(-vec4<i32>(7787i, reverseBits(arg_0.x), arg_0.x, 0i), u_input.d));
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_2(~_wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -1i, global3.x), vec3<i32>(12171i, global1[_wgslsmith_index_u32(21305u, 20u)], -41999i)), ~vec3<i32>(1i, arg_0.c.d.x, 0i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(69228u, arg_0.c.a, 1u), u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(-415f)), Struct_5(arg_0, _wgslsmith_sub_u32(min(10476u, 4294967295u) | _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.a, arg_0.b.a, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 0u, arg_0.b.a), vec3<u32>(u_input.a.x, 1u, 4294967295u))), select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), ~u_input.a.x > (~5203u ^ u_input.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.c - 503f)))).b;
    let var_1 = Struct_1(_wgslsmith_sub_u32(arg_0.a, u_input.c), firstTrailingBit(vec3<i32>(0i, -global4[_wgslsmith_index_u32(4294967295u, 13u)], ~(~2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(209f, -187f)), -493f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.c)))))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.xx, min(global3.xx, var_0.yz)), 2147483647i, _wgslsmith_div_i32(i32(-1i) * -44219i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(44573u, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)])), 2147483647i) >> (~vec4<u32>(_wgslsmith_mult_u32(u_input.c, 4294967295u), 76235u, 31808u, 29799u) % vec4<u32>(32u)));
    let var_2 = ~_wgslsmith_div_vec3_i32(min(func_2(max(arg_0.b.b, u_input.d.wxx), _wgslsmith_f_op_f32(f32(-1f) * -1520f), Struct_5(Struct_3(29541u, Struct_1(57028u, u_input.d.www, 994f, vec4<i32>(21911i, -1i, global1[_wgslsmith_index_u32(var_1.a, 20u)], -52213i)), var_1), 4294967295u, vec2<bool>(true, false), false), -600f).d.wyw, u_input.d.xyz), abs(vec3<i32>(~28545i, _wgslsmith_mod_i32(arg_0.b.d.x, -2147483647i), 0i)));
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c.c, var_1.c))), 1520f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c, -388f), vec2<f32>(arg_0.b.c, arg_0.c.c)))))));
    return arg_0.b;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = max(~(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(19497u, arg_1, 179660u, arg_1)), arg_2.e, firstLeadingBit(arg_2.e)) ^ countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 45896u, 4294967295u), vec4<u32>(arg_2.e.x, arg_1, 1u, arg_1), arg_2.e))), vec4<u32>(firstLeadingBit(1u), firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(arg_2.e, arg_2.e), ~(~u_input.c)));
    let var_1 = Struct_5(Struct_3(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1, max(arg_2.a.a, var_0.x)), abs(~u_input.c)), arg_2.a, func_3(Struct_3(min(u_input.c, 30281u), func_2(vec3<i32>(global1[_wgslsmith_index_u32(16146u, 20u)], 0i, arg_0), arg_2.a.c, Struct_5(Struct_3(0u, arg_2.a, arg_2.a), 0u, vec2<bool>(true, false), false), arg_2.b.c), func_2(u_input.d.xzw, arg_2.a.c, Struct_5(Struct_3(0u, Struct_1(0u, u_input.d.yxz, arg_2.b.c, arg_2.a.d), arg_2.a), 39326u, vec2<bool>(arg_2.c, arg_2.c), arg_2.c), 299f)))), 4682u, select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(arg_2.c, arg_2.c), arg_2.c), true), !vec2<bool>(all(vec4<bool>(true, arg_2.c, false, arg_2.c)), true), !vec2<bool>(true, arg_2.c)), false);
    var_0 = vec4<u32>(firstTrailingBit(68716u), ~(~abs(arg_2.d << (arg_1 % 32u))), ~0u | abs(var_1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(9263u, _wgslsmith_add_u32(reverseBits(var_0.x), 4294967295u), ~func_3(var_1.a).a), abs(vec3<u32>(~arg_2.e.x, 24092u ^ var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(3111u, 6802u), vec2<u32>(4294967295u, arg_2.d))))));
    let var_2 = -1405f != _wgslsmith_f_op_f32(func_2(func_2(vec3<i32>(1i, var_1.a.b.d.x, -1i), -1000f, var_1, 488f).d.xww >> (abs(vec3<u32>(1u, var_0.x, var_1.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.c)), var_1, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.c.c)) + _wgslsmith_div_f32(var_1.a.c.c, 1739f))));
    global2 = array<Struct_4, 10>();
    return Struct_2(func_2(vec3<i32>(global3.x, -1172i, 11827i), _wgslsmith_f_op_f32(step(2984f, -1280f)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.c.c)))), func_3(Struct_3(_wgslsmith_div_u32(reverseBits(u_input.a.x), 113491u), func_2(func_3(Struct_3(0u, arg_2.a, Struct_1(16037u, vec3<i32>(var_1.a.c.b.x, -40152i, -18374i), 1283f, arg_2.b.d))).b, _wgslsmith_f_op_f32(f32(-1f) * -557f), var_1, var_1.a.b.c), func_2(var_1.a.c.d.xzz, _wgslsmith_f_op_f32(floor(-248f)), Struct_5(Struct_3(42430u, var_1.a.c, var_1.a.c), var_1.a.a, var_1.c, true), arg_2.b.c))), true, _wgslsmith_add_u32(~(~var_0.x), _wgslsmith_add_u32(arg_1 >> (3712u % 32u), 14261u) | u_input.a.x), _wgslsmith_div_vec4_u32(arg_2.e, vec4<u32>(arg_1, ~4294967295u, ~arg_1, 8263u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(4294967295u, _wgslsmith_mult_vec3_i32(u_input.d.yyw, select(vec3<i32>(-2147483647i, abs(51458i), -27702i), _wgslsmith_mod_vec3_i32(u_input.d.yyy >> (vec3<u32>(4294967295u, 1u, 30257u) % vec3<u32>(32u)), vec3<i32>(-25194i, 2147483647i, global4[_wgslsmith_index_u32(24577u, 13u)])), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -423f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-464f - 263f), -628f))))), u_input.d);
    global2 = array<Struct_4, 10>();
    let var_1 = func_1(_wgslsmith_mult_i32(-firstLeadingBit(-14922i), var_0.b.x) & u_input.b.x, ~(~3623u << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.a.x, var_0.a), vec3<u32>(4294967295u, 1u, 31118u), false), ~u_input.a) % 32u)), Struct_2(var_0, var_0, !(!all(vec3<bool>(true, false, false))), abs(u_input.c), vec4<u32>(~u_input.c, abs(19125u & u_input.c), _wgslsmith_add_u32(u_input.a.x, u_input.c), u_input.a.x)));
    global3 = vec3<i32>(max(min(global4[_wgslsmith_index_u32(~u_input.a.x | (u_input.a.x & 1u), 13u)], -14434i), _wgslsmith_sub_i32(1i, -6497i)), u_input.b.x, 0i);
    let var_2 = global2[_wgslsmith_index_u32(var_0.a, 10u)];
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global4[_wgslsmith_index_u32(1u, 13u)], 49748u, Struct_2(var_0, Struct_1(var_2.d.x, vec3<i32>(global4[_wgslsmith_index_u32(1u, 13u)], global3.x, u_input.d.x), 2345f, u_input.d), true, func_2(vec3<i32>(global1[_wgslsmith_index_u32(var_0.a, 20u)], -43832i, 0i), 335f, Struct_5(Struct_3(var_1.a.a, Struct_1(u_input.c, vec3<i32>(-52204i, 2147483647i, 248i), var_1.b.c, vec4<i32>(-29001i, var_1.a.b.x, u_input.d.x, global1[_wgslsmith_index_u32(var_1.b.a, 20u)])), Struct_1(0u, u_input.d.wxw, var_1.b.c, vec4<i32>(-12220i, var_0.b.x, -30626i, -23577i))), var_2.d.x, vec2<bool>(false, true), true), 116f).a, var_1.e)).b.c - _wgslsmith_f_op_f32(func_2(var_1.a.d.wzy, _wgslsmith_f_op_f32(-1274f + -1406f), Struct_5(Struct_3(96021u, Struct_1(u_input.c, var_0.b, -1116f, u_input.d), var_0), 4294967295u, vec2<bool>(true, false), false), var_1.a.c).c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c)), -1640f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(600f, var_2.c.x, -1321f))) * vec3<f32>(-1193f, 890f, var_1.a.c))))), firstTrailingBit(var_0.a), func_2(-_wgslsmith_sub_vec3_i32(vec3<i32>(global3.x, 2147483647i, u_input.b.x), vec3<i32>(-2465i, u_input.d.x, global1[_wgslsmith_index_u32(var_1.a.a, 20u)])), 207f, Struct_5(Struct_3(var_2.b, var_1.a, func_2(vec3<i32>(2147483647i, -2147483647i, global4[_wgslsmith_index_u32(23109u, 13u)]), var_2.c.x, Struct_5(Struct_3(var_1.d, var_0, Struct_1(var_0.a, var_1.a.d.xyw, 153f, vec4<i32>(-2147483647i, global3.x, global3.x, global1[_wgslsmith_index_u32(1u, 20u)]))), var_1.b.a, vec2<bool>(true, true), false), var_2.c.x)), _wgslsmith_dot_vec3_u32(var_1.e.ywz | vec3<u32>(2892u, 56318u, u_input.c), ~var_2.d), !(!vec2<bool>(var_1.c, var_1.c)), true), var_2.c.x).b.yz, _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c.x - 700f))))), func_2(firstTrailingBit(vec3<i32>(-4229i, 8707i, -1i)), _wgslsmith_div_f32(var_1.a.c, -133f), Struct_5(Struct_3(u_input.a.x, Struct_1(11939u, vec3<i32>(1i, var_1.b.b.x, 1i), -195f, u_input.d), var_1.b), var_2.d.x, vec2<bool>(var_1.c, true), true), -1000f).c >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-773f))))));
}

