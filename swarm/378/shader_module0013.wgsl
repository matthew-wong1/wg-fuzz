struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(4294967295u, 4294967295u, 16204u, 17064u, 0u, 4294967295u, 11825u, 51498u, 35346u, 1u, 4294967295u, 10490u, 0u, 38609u, 1u, 0u, 0u, 0u, 39261u, 22991u, 53070u, 89938u, 0u, 4294967295u, 37354u, 30282u, 0u, 8646u);

var<private> global1: array<i32, 31> = array<i32, 31>(-1i, -7968i, 5337i, 1i, -13084i, 2147483647i, 26495i, 0i, 2147483647i, -1i, -1i, -12390i, 41206i, -1147i, 2147483647i, 0i, 4042i, -3193i, 1i, 2147483647i, 0i, 0i, -54319i, 0i, 0i, 0i, 0i, 1i, 24777i, 34766i, 2147483647i);

var<private> global2: array<Struct_3, 23>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global4: array<u32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(reverseBits(~vec3<i32>(-31781i, arg_0.b.a, -2147483647i)), ~firstTrailingBit(u_input.a), u_input.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(488f * arg_0.b.b), _wgslsmith_f_op_f32(arg_0.b.b * arg_0.b.b), _wgslsmith_f_op_f32(-388f + -788f), arg_0.b.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1714f, -494f, -1286f, arg_0.b.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, 536f, arg_0.b.b, 834f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.b, arg_0.b.b, arg_0.b.b, arg_0.b.b), vec4<f32>(arg_0.b.b, -1022f, 1000f, arg_0.b.b), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)))))))));
    global0 = array<u32, 28>();
    let var_2 = vec3<bool>(false, false, false);
    var var_3 = Struct_4(Struct_1(_wgslsmith_dot_vec2_i32(~var_0.yx, u_input.a.zx), _wgslsmith_f_op_f32(f32(-1f) * -1285f), _wgslsmith_mod_u32(1u, reverseBits(arg_0.c.x)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37315u, 31u)], 28u)], 28u)], 41923u, arg_0.b.d.x), arg_0.c.wzx, ~vec3<u32>(arg_1.x, global3.x, global4[_wgslsmith_index_u32(1u, 31u)]))), u_input.b.x), vec3<bool>(true, true, true), ~(~vec4<i32>(-21281i, 1i, global1[_wgslsmith_index_u32(1u, 31u)], -1i)) & ((vec4<i32>(-16458i, 21951i, 2147483647i, 0i) ^ vec4<i32>(11460i, 0i, -2147483647i, var_0.x)) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(11285u, global4[_wgslsmith_index_u32(10098u, 31u)], global4[_wgslsmith_index_u32(20764u, 31u)], 27961u), vec4<u32>(u_input.b.x, 25436u, 39770u, 25865u)) | vec4<u32>(u_input.b.x, 4294967295u, arg_0.c.x, 44u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(208f, -1930f, _wgslsmith_f_op_f32(f32(-1f) * -1431f)) + var_1.xyx));
    return vec2<u32>(_wgslsmith_mod_u32(~(~arg_0.b.d.x), 0u), 1u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_2.a, Struct_1(~15589i, -836f, max(~(~15028u), u_input.b.x), abs(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], arg_2.c.x, global4[_wgslsmith_index_u32(45312u, 31u)])), 4294967295u), arg_2.c);
    let var_1 = _wgslsmith_f_op_f32(trunc(-1000f));
    let var_2 = arg_2.a.x;
    global3 = abs(~vec2<u32>(1u, 1u)) | ~vec2<u32>(~25866u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.c.x), select(arg_1.d.yy, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], arg_1.e), false)));
    global3 = ~(~min(vec2<u32>(0u, 19815u), ~u_input.b)) << (func_3(arg_2, ~(~arg_2.b.d.yx)) % vec2<u32>(32u));
    return 1u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(abs(-arg_0.x ^ 1i), _wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_sub_u32(func_2(vec2<f32>(1000f, -243f), Struct_1(u_input.a.x, 1000f, 4294967295u, vec3<u32>(38832u, global0[_wgslsmith_index_u32(1494u, 28u)], global3.x), global3.x), global2[_wgslsmith_index_u32(91902u, 23u)]) ^ global4[_wgslsmith_index_u32(firstLeadingBit(15731u), 31u)], 51587u), (vec3<u32>(global0[_wgslsmith_index_u32(2099u, 28u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21689u, 31u)], 31u)], global4[_wgslsmith_index_u32(global3.x, 31u)]) >> (~vec3<u32>(global3.x, u_input.b.x, 10200u) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(vec3<u32>(1u, 39898u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 0u, 1u), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 28u)], 50939u))), _wgslsmith_mult_u32(4294967295u, global3.x)), Struct_1(~(u_input.c.x & global1[_wgslsmith_index_u32(max(global3.x, 1u), 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -505f) + _wgslsmith_f_op_f32(select(1472f, 258f, true)))), select(global0[_wgslsmith_index_u32(7184u | global3.x, 28u)], ~reverseBits(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 31u)]), false), ~(~(vec3<u32>(1u, global3.x, 1u) | vec3<u32>(4294967295u, 63297u, 50693u))), abs(4294967295u)));
    let var_1 = Struct_4(Struct_1(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 31u)], (arg_0.x ^ 5034i) & -2147483647i), _wgslsmith_f_op_f32(734f - var_0.b.b), func_3(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~7673u, 31u)], 23u)], ~(~u_input.b)).x, var_0.b.d, abs(~global4[_wgslsmith_index_u32(4294967295u, 31u)] & (4294967295u ^ global3.x))), vec3<bool>(true, true, true), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x | -1i, arg_0.x, var_0.a.a, -arg_0.x), vec4<i32>(var_0.b.a, 6129i, u_input.a.x, -16768i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, 1644f, var_0.b.b)), vec3<f32>(-1269f, var_0.b.b, -1543f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, var_0.b.b, 204f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, var_0.b.b, 319f) - vec3<f32>(var_0.a.b, var_0.b.b, var_0.b.b)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b, var_0.b.b)), _wgslsmith_f_op_f32(ceil(774f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.b), -849f)))));
    global3 = ~var_0.a.d.yz;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1.d, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(var_1.d, vec3<f32>(622f, -392f, -1106f))), _wgslsmith_f_op_vec3_f32(ceil(var_1.d)), true)), var_1.d)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(var_1.c.yxw, vec3<i32>(global1[_wgslsmith_index_u32(43172u, 31u)] >> (global3.x % 32u), 0i, _wgslsmith_mult_i32(var_1.c.x, 2147483647i))), var_1.d.x, 0u, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, 4294967295u, 36692u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 1u, global4[_wgslsmith_index_u32(u_input.b.x, 31u)])), _wgslsmith_mod_vec3_u32(var_0.a.d, var_0.b.d)) >> (vec3<u32>(var_0.b.e, func_2(var_1.d.yz, var_1.a, Struct_3(vec4<bool>(var_1.b.x, var_1.b.x, false, false), Struct_1(var_1.c.x, 440f, var_0.b.d.x, var_1.a.d, 1u), vec4<u32>(var_1.a.e, u_input.b.x, u_input.b.x, var_0.b.d.x))), 67442u) % vec3<u32>(32u)), 1u), Struct_1(-13240i, -614f, ~59908u, firstLeadingBit(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 28u)], 28u)], 1u)), ~firstLeadingBit(global3.x)));
    return Struct_1(-22381i, _wgslsmith_f_op_f32(1058f + var_2.x), select(var_1.a.d.x, ~(~4294967295u) | (28440u ^ global3.x), any(vec3<bool>(var_1.b.x, false, var_1.b.x))), _wgslsmith_clamp_vec3_u32((vec3<u32>(global4[_wgslsmith_index_u32(1u, 31u)], 0u, 4294967295u) << (~vec3<u32>(497u, 0u, 27207u) % vec3<u32>(32u))) ^ vec3<u32>(var_0.a.c, global0[_wgslsmith_index_u32(var_1.a.c, 28u)], func_3(global2[_wgslsmith_index_u32(100324u, 23u)], vec2<u32>(4628u, 0u)).x), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x), var_1.a.d ^ var_1.a.d), countOneBits(vec3<u32>(var_1.a.c, 1u, global4[_wgslsmith_index_u32(0u, 31u)]))), ~firstTrailingBit(var_1.a.d)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a);
    let var_1 = any(select(vec2<bool>(select(false, false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)));
    let var_2 = ~_wgslsmith_add_u32(var_0.e ^ abs(30328u), global3.x);
    global1 = array<i32, 31>();
    var var_3 = Struct_2(func_1(countOneBits(~u_input.a)), var_0);
    global1 = array<i32, 31>();
    let var_4 = select(vec3<bool>(var_1, !select(var_1, !var_1, true), var_1), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(var_1, true, var_1), true), select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, false, var_1), var_1), var_1)), false | !var_1);
    var var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.b.b)), -964f, _wgslsmith_f_op_f32(-var_3.b.b), var_0.b)))));
    global4 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -355f)), abs(func_3(global2[_wgslsmith_index_u32(global3.x & 29985u, 23u)], vec2<u32>(18525u, 0u)).x) & func_2(vec2<f32>(var_3.b.b, -2110f), func_1(u_input.a), Struct_3(vec4<bool>(true, var_4.x, var_1, var_4.x), Struct_1(-39385i, var_5.x, var_0.e, var_3.a.d, 124588u), select(vec4<u32>(global3.x, u_input.b.x, 41048u, 38128u), vec4<u32>(16633u, global3.x, var_3.a.d.x, var_2), vec4<bool>(var_1, var_1, true, var_1)))), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(var_2, 15725u, var_0.c, global3.x)), ~vec4<u32>(var_3.a.e, u_input.b.x, 0u, var_2)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_2, 1u, global4[_wgslsmith_index_u32(4294967295u, 31u)], global4[_wgslsmith_index_u32(1u, 31u)])), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(var_2, 28u)], 102390u, 4294967295u, u_input.b.x)))), 4055u, _wgslsmith_f_op_f32(min(var_5.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.b.b * var_3.a.b), -883f, true)) + _wgslsmith_f_op_f32(-2464f - -494f)))));
}

