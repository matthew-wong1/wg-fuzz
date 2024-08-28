struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: Struct_4,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(-807f), Struct_4(-208f), Struct_4(-314f), Struct_4(659f), Struct_4(414f), Struct_4(-1000f), Struct_4(-134f), Struct_4(1382f), Struct_4(-380f), Struct_4(416f), Struct_4(585f), Struct_4(703f), Struct_4(-2029f), Struct_4(-173f), Struct_4(926f), Struct_4(315f), Struct_4(626f), Struct_4(-366f), Struct_4(417f), Struct_4(366f), Struct_4(625f), Struct_4(-376f), Struct_4(-311f), Struct_4(-1295f), Struct_4(531f), Struct_4(554f), Struct_4(1680f), Struct_4(230f), Struct_4(1225f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec2<f32> {
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1410f - -576f) - _wgslsmith_f_op_f32(step(1051f, -1896f))), 123f)) * vec2<f32>(1000f, _wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-900f)))))));
}

fn func_2(arg_0: bool) -> Struct_5 {
    let var_0 = Struct_5(1u, vec3<i32>(-1i) * -max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<i32>(0i, u_input.a.x, u_input.b.x)), global0[_wgslsmith_index_u32(~max(~4915u, max(u_input.c.x, u_input.c.x) ^ (u_input.c.x >> (36415u % 32u))), 29u)], Struct_4(407f), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(-513f * 868f))))));
    var var_1 = 6550i;
    global0 = array<Struct_4, 29>();
    var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(select(!vec4<bool>(false, arg_0, false, arg_0), select(!vec4<bool>(arg_0, true, true, true), !vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, arg_0, true, false)), !arg_0), u_input.a.x)), vec2<f32>(var_0.c.a, var_0.c.a)));
    return var_0;
}

fn func_1(arg_0: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f * 281f))), all(vec4<bool>(true, true, false, false)))));
    global0 = array<Struct_4, 29>();
    var var_1 = Struct_2(max(_wgslsmith_div_vec3_u32(~(~u_input.c.yzx), vec3<u32>(0u, _wgslsmith_mod_u32(0u, u_input.c.x), 1u)), ~u_input.c.xzx));
    let var_2 = var_1.a.x;
    let var_3 = func_2(true);
    return vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_3.b.x, u_input.b.x, 0i)), -vec3<i32>(78786i, var_3.b.x, u_input.a.x)) | 10729i, -u_input.b.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, 10187i), ~vec4<i32>(0i, u_input.a.x, u_input.b.x, var_3.b.x)) | max(vec4<i32>(34165i, 1i, -32108i, u_input.b.x), vec4<i32>(-2147483647i, 42629i, -40155i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b.x, 41393i, 11264i, u_input.a.x) << (u_input.c % vec4<u32>(32u)), vec4<i32>(-2147483647i, 2147483647i, var_3.b.x, firstLeadingBit(47241i)))), 82736i);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> Struct_5 {
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    let var_0 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-763f, _wgslsmith_f_op_f32(f32(-1f) * -2139f)) * 1284f) * -1859f));
    let var_2 = Struct_2(firstTrailingBit(vec3<u32>(~func_2(false).a, (u_input.c.x ^ 1u) ^ select(u_input.c.x, 1u, false), u_input.c.x)));
    return Struct_5(reverseBits(~_wgslsmith_sub_u32(var_2.a.x, u_input.c.x)), max(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.b.x, arg_1), u_input.a.x) & -vec3<i32>(27741i, -2147483647i, 2147483647i), arg_0.zxw), global0[_wgslsmith_index_u32(~(~select(firstTrailingBit(33561u), u_input.c.x, var_0)), 29u)], Struct_4(783f), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1124f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.a.x, 31536i, 2147483647i)), func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-418f, 1497f), _wgslsmith_div_f32(-432f, 401f)))), ~u_input.a.x ^ func_2(true).b.x);
    var var_1 = vec3<i32>(0i, -u_input.a.x, u_input.a.x);
    var var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 60329u), u_input.c.wx)), u_input.c.wz) << (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.xw, u_input.c.wz, u_input.c.wz), reverseBits(u_input.c.xx)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, u_input.c.x) << (u_input.c.zx % vec2<u32>(32u)), abs(u_input.c.zz)), ~(u_input.c.wx << (u_input.c.xy % vec2<u32>(32u)))), ~reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1497u, var_0.a), u_input.c.wy))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.a, var_0.e.a, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(var_0.e.a, 1000f, false))), -1000f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1055f, 1000f, 1279f, 949f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, var_0.e.a, -998f, var_0.d.a) + vec4<f32>(-124f, 335f, -531f, var_0.d.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-169f, -271f, var_0.c.a, 268f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.a, var_0.d.a, 295f, var_0.d.a), vec4<f32>(var_0.d.a, 1627f, -1042f, 1229f))))))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, any(vec2<bool>(true, true)), true), vec4<bool>(all(vec2<bool>(true, true)), true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))))));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    var_1 = -vec3<i32>(-2147483647i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(7383i, -2147483647i, u_input.a.x, 33115i) << (u_input.c % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.b.x, -16387i, u_input.a.x), vec4<i32>(-1i, 2147483647i, 1i, 13832i)))), _wgslsmith_add_i32(~reverseBits(0i), 2147483647i));
    var var_4 = _wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1176f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(var_3.x).x, var_1.x, 39371i) ^ select(~(var_0.b ^ vec3<i32>(var_1.x, 45388i, u_input.b.x)), ~var_0.b << (vec3<u32>(95085u, 0u, var_2.x) % vec3<u32>(32u)), vec3<bool>(true, true, true)), vec2<u32>(max(u_input.c.x, _wgslsmith_mod_u32(abs(u_input.c.x), ~var_0.a)), var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_3.wyw, _wgslsmith_div_vec3_f32(var_3.zwz, vec3<f32>(-534f, -592f, -438f)))))), firstLeadingBit(~var_2.x), var_0.b);
}

