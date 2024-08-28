struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1070f, Struct_1(vec2<i32>(-1i, 36819i), vec2<bool>(true, false), vec2<u32>(1u, 37251u), vec3<i32>(2147483647i, 1i, -1i)), Struct_1(vec2<i32>(-1i, 0i), vec2<bool>(false, true), vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 2147483647i, -1i)));

var<private> global1: array<i32, 26>;

var<private> global2: bool;

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 13374i);

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    return global0.c;
}

fn func_3() -> i32 {
    global3 = global0.b.d.xz;
    let var_0 = global0.b;
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0.a)))), global0.c, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, -270f, 256f, -1194f)))) - vec4<f32>(-1638f, _wgslsmith_f_op_f32(ceil(-1143f)), 127f, global0.a))));
    var var_1 = var_0.d.x;
    var var_2 = -127f;
    return 37011i & global4.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))), Struct_1(vec2<i32>(-(~global4.x), arg_0.d.b.a.x ^ func_3()), !select(vec2<bool>(arg_0.d.c.b.x, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, global0.c.b.x), arg_0.d.b.b.x)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.c, arg_1.c) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0.d.b.c.x), vec2<u32>(52025u, u_input.a.x)) % vec2<u32>(32u)), abs(vec2<u32>(arg_1.c.x, arg_0.a.x))), select(abs(vec3<i32>(global3.x, global0.b.a.x, 20662i)), global4.wyx, !vec3<bool>(false, global0.b.b.x, true)) ^ arg_0.d.c.d), Struct_1(arg_1.d.zx, global0.b.b, abs(arg_1.c), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_add_i32(-17610i, global1[_wgslsmith_index_u32(34516u, 26u)]), 22527i), _wgslsmith_add_vec3_i32(global4.yyy, firstLeadingBit(arg_1.d)))));
    let var_1 = arg_0.d.c;
    var var_2 = arg_0;
    var var_3 = 309f;
    global3 = -_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(arg_0.d.c.a, select(var_0.b.d.yx, vec2<i32>(global3.x, 43517i), arg_0.d.b.b.x)), -global4.zy);
    return -global4.xw;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_3(global0.c.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, 107f)) * 705f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f * _wgslsmith_f_op_f32(trunc(global0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -545f)), -38464i, Struct_2(global0.a, Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, 4925i, global0.b.d.x, 1i), vec4<i32>(-36062i, global0.c.a.x, global4.x, arg_0.d.x)), global0.b.a.x << (33414u % 32u)), vec2<bool>(any(vec2<bool>(global0.b.b.x, true)), global0.c.b.x && global0.c.b.x), u_input.a, global4.xzy), arg_0));
    var var_1 = ~u_input.a.x;
    global4 = ~vec4<i32>(-53128i & global1[_wgslsmith_index_u32(arg_0.c.x | 0u, 26u)], abs(func_3()), -func_1(vec4<f32>(1592f, -437f, global0.a, global0.a)).d.x, -20774i);
    let var_2 = Struct_2(_wgslsmith_div_f32(1243f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.a)) - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f + 2415f) * _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(886f, 739f, 398f, -1549f))) + vec4<f32>(var_0.d.a, var_0.d.a, -767f, -757f)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-var_0.b)))));
    global0 = Struct_2(global0.a, var_0.d.c, var_2.b);
    return arg_0.d.yy;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    global3 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~(-vec2<i32>(arg_2.a.x, 29933i)), ~arg_3.a), min(vec2<i32>(arg_0.b.a.x, select(-1i, 0i, arg_3.b.x)), arg_0.b.a)), vec2<i32>(~14025i, abs(-func_3())));
    let var_0 = global0.b.a.x;
    let var_1 = true;
    var var_2 = all(!vec3<bool>(var_1, true, false));
    global3 = ~global0.c.d.zz;
    return vec2<i32>(~_wgslsmith_mult_i32(arg_2.d.x, select(global0.c.a.x, func_1(vec4<f32>(276f, -1816f, 291f, global0.a)).d.x, global1[_wgslsmith_index_u32(42607u, 26u)] != global1[_wgslsmith_index_u32(arg_2.c.x, 26u)])), func_2(Struct_3(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 68502u), vec2<u32>(arg_2.c.x, arg_3.c.x)), vec4<f32>(712f, 1154f, _wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(-global0.a)), ~2147483647i, arg_0), Struct_1(vec2<i32>(-global0.b.d.x, arg_3.d.x >> (23009u % 32u)), global0.b.b, ~countOneBits(global0.b.c), vec3<i32>(arg_0.b.d.x, global4.x, arg_2.d.x))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f)), func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, global0.a, -1191f, 130f)))), global0.b), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(862f, 208f, global0.a, global0.a), vec4<f32>(-207f, -1069f, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(309f, global0.a, global0.a, -457f))))))).b.x, Struct_1(func_4(Struct_1(func_2(Struct_3(vec2<u32>(21781u, 92760u), vec4<f32>(global0.a, global0.a, -447f, 1660f), global3.x, Struct_2(global0.a, Struct_1(global0.c.a, global0.c.b, vec2<u32>(global0.b.c.x, global0.c.c.x), vec3<i32>(26046i, 18877i, global4.x)), global0.b)), global0.c), select(global0.c.b, global0.c.b, global0.b.b.x), abs(u_input.a), global4.wxw), u_input.a.x), !(!global0.b.b), reverseBits(firstTrailingBit(vec2<u32>(u_input.a.x, 4294967295u)) << (select(u_input.a, global0.b.c, vec2<bool>(false, global0.b.b.x)) % vec2<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(global0.c.a.x, global4.x), 2147483647i, global4.x)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global0.a, global0.a, -1000f), vec4<f32>(1293f, global0.a, global0.a, -593f))), select(vec4<bool>(global0.c.b.x, true, global0.b.b.x, false), vec4<bool>(true, false, false, global0.c.b.x), false))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1118f), global0.a), vec3<f32>(756f, _wgslsmith_f_op_f32(sign(754f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f * global0.a))), vec3<bool>(!global0.c.b.x, global0.c.b.x, global0.b.b.x))));
    let var_1 = global0.b;
    let var_2 = func_2(Struct_3(firstLeadingBit(global0.c.c << (max(global0.c.c, var_1.c) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1018f, -1000f, global0.a))), -14838i, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, global0.a)) - _wgslsmith_f_op_f32(628f - var_0.x)), Struct_1(~vec2<i32>(global0.c.d.x, -77436i), select(global0.b.b, vec2<bool>(false, true), vec2<bool>(true, global0.c.b.x)), u_input.a >> (vec2<u32>(95126u, 32483u) % vec2<u32>(32u)), vec3<i32>(11990i, global1[_wgslsmith_index_u32(0u, 26u)], 55159i)), global0.c)), Struct_1((abs(var_1.a) & -vec2<i32>(global0.b.a.x, global1[_wgslsmith_index_u32(19547u, 26u)])) | vec2<i32>(1i, 0i), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-311f, 284f, global0.a, -218f), vec4<f32>(415f, 288f, 1329f, -915f))))).b, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.c.x, 1u, 42156u, global0.b.c.x), vec4<u32>(24986u, var_1.c.x, 1u, u_input.a.x)), ~u_input.a.x), u_input.a.x), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(-25978i, global4.x, -54458i)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-66725i, 19066i, global3.x, 5763i), vec4<i32>(var_1.a.x, global1[_wgslsmith_index_u32(0u, 26u)], -1i, global3.x)), global0.c.a.x | 0i))));
    global4 = ~firstTrailingBit(vec4<i32>(global4.x, -22726i << (var_1.c.x % 32u), _wgslsmith_add_i32(global3.x, global0.c.d.x), 0i) & ~vec4<i32>(global0.b.a.x, 10420i, -22607i, global3.x));
    let var_3 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f))), global0.a), reverseBits(~(vec3<u32>(u_input.a.x, global0.b.c.x, 84381u) ^ vec3<u32>(global0.b.c.x, global0.c.c.x, 45075u)) | abs(vec3<u32>(1917u, var_1.c.x, u_input.a.x) << (vec3<u32>(global0.c.c.x, var_1.c.x, var_1.c.x) % vec3<u32>(32u)))), ~(firstLeadingBit(~vec3<u32>(var_1.c.x, global0.b.c.x, 15917u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, 12466u, 21826u) >> (vec3<u32>(global0.c.c.x, 48109u, 1u) % vec3<u32>(32u)), ~vec3<u32>(0u, global0.c.c.x, 13747u)) % vec3<u32>(32u))), -4900i);
}

