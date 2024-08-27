struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: Struct_2 = Struct_2(true);

var<private> global2: Struct_1;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global4: f32 = -145f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_3(abs(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(global3.x, global3.x)), ~vec2<u32>(arg_0, global3.x), vec2<u32>(39652u, arg_0)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), ~vec2<u32>(12579u, arg_0)))), 81589u & arg_0, ~max(_wgslsmith_dot_vec2_i32(global2.b.yw, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(global2.b.x, -2147483647i))), ~(-global2.b.x)), ~((global2.b ^ vec4<i32>(u_input.d.x, -110i, u_input.c.x, -1i)) | (-global2.b >> (select(vec4<u32>(arg_0, 11996u, global3.x, 46110u), vec4<u32>(arg_0, arg_0, arg_0, 86114u), global1.a) % vec4<u32>(32u)))), Struct_1(vec4<f32>(895f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.c.x + -1316f))), 766f, _wgslsmith_f_op_f32(floor(global2.c.x))), vec4<i32>(1i, ~(-1i), -30622i, 2147483647i), _wgslsmith_f_op_vec4_f32(ceil(global2.c)), !(!global0[_wgslsmith_index_u32(58104u, 6u)])));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(-var_0.e.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(527f)) - -1000f)) + _wgslsmith_f_op_f32(exp2(global2.a.x))));
    var var_1 = Struct_2(!(firstLeadingBit(u_input.c.x) <= -global2.b.x));
    var var_2 = var_0.a;
    var var_3 = Struct_2(true);
    return abs(_wgslsmith_div_u32(select(firstTrailingBit(1u) & ~17526u, _wgslsmith_mod_u32(~var_2.x, ~1u), true), countOneBits(1u) ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global3.x, global3.x), _wgslsmith_div_u32(var_0.a.x, var_2.x), ~var_2.x)));
}

fn func_2() -> vec2<u32> {
    global4 = -1309f;
    var var_0 = -582f;
    let var_1 = vec2<u32>(func_3(max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 18826u), vec3<u32>(11242u, global3.x, 75540u)), global3.x)), global3.x) ^ vec2<u32>(global3.x, 0u);
    global4 = _wgslsmith_f_op_f32(min(-966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-564f, _wgslsmith_div_f32(_wgslsmith_div_f32(225f, global2.a.x), _wgslsmith_f_op_f32(-global2.c.x)))))));
    global3 = ~var_1;
    return vec2<u32>(1u | ~(~var_1.x), abs(select(~global3.x, func_3(var_1.x), false)) & var_1.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(arg_1 * 983f), _wgslsmith_f_op_f32(-1311f * arg_1), _wgslsmith_f_op_f32(arg_1 - 1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, arg_1, arg_2.x, global2.c.x) + arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(arg_2)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, arg_1, arg_1, global2.c.x))), true)))), u_input.d, global2.c, !(true || all(vec3<bool>(true, arg_0.a, global1.a))));
    global4 = _wgslsmith_f_op_f32(673f * arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(-global2.a.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1)), -785f)) - -497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1270f)))) + _wgslsmith_f_op_f32(arg_2.x - -1037f)), global2.c.x, var_1);
    global1 = Struct_2(global2.d);
    return Struct_2(arg_0.a);
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = vec3<i32>(-1i) * -(vec3<i32>(~u_input.a, -2147483647i, _wgslsmith_add_i32(u_input.a, 2147483647i)) | u_input.b.wwy);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(313f + _wgslsmith_f_op_f32(-global2.a.x)), global2.c.x, -647f, global2.a.x))), ~reverseBits(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(-1i, -63529i, u_input.a, global2.b.x))) | select(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.d), 43694i, global2.b.x >> (128526u % 32u)), u_input.b, vec4<bool>(!arg_0.a, arg_0.a, any(vec3<bool>(global2.d, true, false)), 11215u != global3.x)), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(1656f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.a.x, 904f)), _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(-global2.a.x), -1029f), !(!any(vec4<bool>(false, arg_0.a, global1.a, false))));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.x, 0u), vec3<u32>(4294967295u, global3.x, 0u)), ~(~global3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(33598u, global3.x), vec2<u32>(global3.x, 4294967295u))), ~global3.x), ~(_wgslsmith_mult_vec2_u32(~vec2<u32>(global3.x, global3.x), countOneBits(vec2<u32>(global3.x, 15921u))) | ((vec2<u32>(global3.x, 30773u) | vec2<u32>(global3.x, 8123u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global3.x, global3.x)) % vec2<u32>(32u)))));
    let var_3 = ~abs(_wgslsmith_clamp_u32(max(5648u, var_2.x) & (var_2.x & var_2.x), 40783u, var_2.x));
    var var_4 = -2147483647i;
    return var_1.c.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_5(func_4(Struct_2(global1.a | false), global2.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.c.x, global2.c.x, 610f)), global2.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, -556f, global2.c.x), global2.a))), _wgslsmith_dot_vec2_u32(func_2(), firstTrailingBit(vec2<u32>(global3.x, 34063u))))));
    var_0 = global2.c.x;
    var var_1 = Struct_1(global2.c, global2.b, global2.a, false);
    var var_2 = _wgslsmith_mod_i32(abs(global2.b.x | u_input.b.x), 1i);
    let var_3 = func_4(func_4(Struct_2(var_1.d), -470f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) * global2.c), _wgslsmith_f_op_vec4_f32(global2.c + var_1.a)), min(4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global3.x), global3.x))), -1349f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(-364f, 100f, -352f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, var_1.c.x, 197f, global2.c.x), vec4<f32>(275f, global2.a.x, var_1.a.x, global2.c.x))), all(!vec4<bool>(var_1.d, false, false, global1.a)))), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.c.x * global2.c.x))), _wgslsmith_div_f32(-922f, global2.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a.x * var_1.a.x), -221f))))), 0u);
    return vec3<i32>(-3934i, _wgslsmith_add_i32(u_input.c.x, ~var_1.b.x), -global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    var var_0 = countOneBits(func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(global2.c.x + 860f), -933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1992f - global2.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1003f + 1303f) + _wgslsmith_f_op_f32(-global2.c.x))), -300f, _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-136f, _wgslsmith_f_op_f32(global2.c.x * 596f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f - -199f)))));
    var var_2 = 0u << (_wgslsmith_add_u32(~56069u, global3.x) % 32u);
    let var_3 = ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global3.x, 4294967295u, firstTrailingBit(global3.x))), countOneBits(vec3<u32>(_wgslsmith_mult_u32(13120u, global3.x), 1u, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(countOneBits(global2.b.x))));
}

