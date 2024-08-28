struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 22>;

var<private> global2: vec3<f32> = vec3<f32>(-158f, -2168f, 773f);

var<private> global3: array<f32, 3> = array<f32, 3>(805f, -194f, 491f);

var<private> global4: Struct_1 = Struct_1(-24522i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2050f, 1442f, _wgslsmith_f_op_f32(round(-415f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1285f, global3[_wgslsmith_index_u32(u_input.a, 3u)], -1026f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-730f, -135f, global2.x)))))), vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -518f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(24775u, 3u)], global2.x)))))), vec3<f32>(-1631f, _wgslsmith_f_op_f32(f32(-1f) * -1856f), _wgslsmith_f_op_f32(1313f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_1 = ~_wgslsmith_add_i32(~(-u_input.d.x), 19097i);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b ^ global4.a, 1i, firstTrailingBit(u_input.d.x) >> (u_input.a % 32u)), ~(vec3<i32>(u_input.b, global4.a, u_input.d.x) << (vec3<u32>(u_input.a, 1u, u_input.c) % vec3<u32>(32u))) << (u_input.e % vec3<u32>(32u))));
    let var_3 = global1[_wgslsmith_index_u32(max(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~26103u, ~u_input.c, 1u, 24333u), vec4<u32>(1u, 3731u, ~0u, u_input.a >> (u_input.a % 32u)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(select(u_input.a, u_input.c, true), ~1u)), abs(0u))), 22u)];
    let var_4 = u_input.b;
    return ~(~_wgslsmith_add_u32(abs(countOneBits(4294967295u)), u_input.e.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = u_input.e.x;
    let var_1 = any(select(!vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, false, false, true))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, any(vec2<bool>(false, false)), true))));
    global1 = array<Struct_1, 22>();
    var var_2 = true;
    let var_3 = global1[_wgslsmith_index_u32(u_input.e.x, 22u)];
    return ~(~max(vec4<u32>(func_3(), reverseBits(u_input.c), abs(85253u), ~u_input.a), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 3348u, 27601u, u_input.e.x), vec4<u32>(2723u, u_input.a, u_input.e.x, 1u), vec4<u32>(11909u, 20285u, 10695u, arg_0)), vec4<u32>(1u, arg_0, arg_0, arg_0))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = ~(~arg_1.yy) ^ max(select(arg_1.yy, max(_wgslsmith_sub_vec2_u32(u_input.e.yy, u_input.e.zz), ~vec2<u32>(arg_1.x, 61716u)), vec2<bool>(true, all(vec3<bool>(false, true, false)))), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), ~u_input.e.xz, u_input.e.yy), ~(~u_input.e.yy)));
    global4 = Struct_1(arg_3.a);
    let var_1 = Struct_1(abs(~(-arg_0.a)));
    let var_2 = vec2<f32>(-607f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global2.x, -899f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(254f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 3u)]) + _wgslsmith_f_op_f32(489f * -440f))))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-897f, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.wyz, arg_2.ywy)) * arg_2.yyx), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), arg_2.zxw))));
    return 23303i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    global0 = _wgslsmith_mult_i32(func_5(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.a), 22u)], func_4(func_3(), Struct_1(u_input.b), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2.a, 1148i, u_input.d.x)), vec3<i32>(arg_0.a, arg_0.a, global4.a) | vec3<i32>(u_input.b, arg_2.a, arg_2.a)), Struct_1(~(-32823i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(arg_1.x, 666f, global2.x, -2035f))))), arg_2), _wgslsmith_mod_i32(-_wgslsmith_div_i32(-1i, arg_2.a), -2147483647i) ^ ~(-6826i));
    var var_0 = Struct_1(~arg_2.a);
    let var_1 = _wgslsmith_div_f32(-2299f, _wgslsmith_f_op_f32(-988f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 3u)] * -318f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, global3[_wgslsmith_index_u32(u_input.a, 3u)], global2.x, -474f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global3[_wgslsmith_index_u32(0u, 3u)], 1799f), vec4<f32>(-520f, global2.x, 812f, -1347f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(394f, 417f, 1044f, global2.x) + vec4<f32>(global2.x, -1000f, global3[_wgslsmith_index_u32(u_input.e.x, 3u)], global3[_wgslsmith_index_u32(91370u, 3u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(1u, 3u)], -1918f, global2.x, global3[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1326f, global2.x, global3[_wgslsmith_index_u32(18526u, 3u)], global3[_wgslsmith_index_u32(81382u, 3u)])))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(546f, global2.x)), _wgslsmith_f_op_f32(min(-941f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(-1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(703f, 1649f, var_0.x) * vec3<f32>(global3[_wgslsmith_index_u32(899u, 3u)], -525f, global3[_wgslsmith_index_u32(u_input.e.x, 3u)])), Struct_1(2147483647i), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global2.x, -543f, -642f), vec4<f32>(-1771f, var_0.x, var_0.x, global2.x)))) * _wgslsmith_f_op_f32(floor(-1718f)))))));
    var var_2 = vec2<i32>(u_input.d.x, i32(-1i) * -(u_input.b << (u_input.e.x % 32u)));
    global3 = array<f32, 3>();
    var var_3 = global2.x;
    return Struct_1(-reverseBits(min(func_5(global1[_wgslsmith_index_u32(u_input.a, 22u)], vec4<u32>(37566u, u_input.e.x, u_input.c, 4294967295u), var_0, global1[_wgslsmith_index_u32(u_input.e.x, 22u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(287i, 2147483647i), u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-10197i);
    var var_1 = func_1();
    global3 = array<f32, 3>();
    let var_2 = func_1();
    var var_3 = var_2;
    var_1 = var_2;
    global3 = array<f32, 3>();
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1116f, global2.x, -985f, -1403f), vec4<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 3u)], 1160f, 399f, 1097f), vec4<bool>(true, true, false, true))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 3u)])), 157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e.x, 3u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -805f, -189f, _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(1u, 3u)], global2.x))))), !select(vec4<bool>(19476u <= u_input.e.x, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), !any(vec2<bool>(false, false)))));
    var var_5 = Struct_1(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, 2147483647i), u_input.d), _wgslsmith_add_vec2_i32(-u_input.d, vec2<i32>(0i, var_1.a)) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(13222i, 29676i), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, countOneBits(0u), vec3<u32>(~30102u, countOneBits(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(15976u, u_input.e.x, u_input.e.x) >> (u_input.e % vec3<u32>(32u)))), ~u_input.c), vec4<i32>(-1i, ~abs(_wgslsmith_div_i32(var_0.a, var_2.a)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(countOneBits(global4.a), 1i), i32(-1i) * -1i), _wgslsmith_sub_i32(-15231i | var_5.a, _wgslsmith_mod_i32(var_3.a, -2147483647i)) | _wgslsmith_mod_i32(-2147483647i, u_input.b)), var_5.a);
}

