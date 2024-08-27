struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(6087u, 4294967295u), vec2<u32>(1051u, 1u), vec2<u32>(0u, 103328u), vec2<u32>(25233u, 37748u), vec2<u32>(45785u, 7607u), vec2<u32>(0u, 4294967295u), vec2<u32>(30127u, 1u), vec2<u32>(1u, 0u), vec2<u32>(58028u, 0u), vec2<u32>(0u, 28245u), vec2<u32>(36589u, 7950u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 34320u), vec2<u32>(4294967295u, 55510u), vec2<u32>(0u, 45223u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 32792u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 5414u), vec2<u32>(4294967295u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(true, vec3<u32>(4294967295u, 15106u, 41732u), -1242f, vec2<bool>(true, false));

var<private> global3: vec3<i32> = vec3<i32>(-21410i, -35703i, -11443i);

var<private> global4: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_0.c;
    var_1 = arg_0.c;
    let var_2 = arg_0.c;
    var var_3 = arg_0;
    return arg_0.c;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = reverseBits(global3.x) ^ -2147483647i;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_2.c))), arg_3)), 29349u, func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, arg_3) - vec2<f32>(2067f, arg_3))), _wgslsmith_div_u32(~20908u, _wgslsmith_mult_u32(arg_2.b.x, 23019u)), arg_2, u_input.b.zxw), arg_1), _wgslsmith_div_vec3_i32(u_input.b.yxw, vec3<i32>(-39908i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, global0.x) & vec2<i32>(-2147483647i, -1i)), firstLeadingBit(24399i))));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(~var_0), var_1.d.x), var_1.d.zz);
    let var_3 = min(var_1.d, var_1.d);
    let var_4 = Struct_3(var_1.a, 1u, Struct_1(all(arg_2.d), vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.d.x), _wgslsmith_div_u32(23051u, u_input.d.x) & global2.b.x, abs(_wgslsmith_add_u32(36253u, global2.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.c + arg_2.c))), global2.d), vec3<i32>(min(var_1.d.x, i32(-1i) * -u_input.a), -8019i, -1i));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> vec3<i32> {
    var var_0 = global0.x;
    global0 = arg_1.d;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(126f)), _wgslsmith_f_op_f32(select(1083f, -1134f, arg_0.c.d.x)))) - arg_1.a), 1u, Struct_1(arg_0.c.b.x >= ~_wgslsmith_dot_vec2_u32(arg_1.c.b.zx, vec2<u32>(24506u, arg_1.b)), arg_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.c)))), global2.d), vec3<i32>(~(~abs(-18724i)), ~(-5617i), ~(firstTrailingBit(global0.x) | min(global3.x, 2147483647i))));
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-arg_1.a), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c.b.x, global2.b.x, arg_1.b, 0u), ~reverseBits(vec4<u32>(arg_0.c.b.x, u_input.d.x, var_1.b, arg_0.c.b.x))), 38816u), arg_0.c, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(16836i, global3.x), _wgslsmith_dot_vec2_i32(global0.xx & arg_1.d.xz, firstLeadingBit(vec2<i32>(arg_0.a, -31980i))), _wgslsmith_mod_i32(u_input.a, firstTrailingBit(-2147483647i))), abs(var_1.d ^ ~u_input.b.zxw)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-236f, -1225f, -877f) * vec3<f32>(-740f, arg_0.c.c, 526f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 894f, var_1.a.x), vec3<f32>(-2344f, var_1.a.x, arg_1.c.c))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -127f)), _wgslsmith_f_op_f32(max(-761f, arg_0.c.c)), 1000f))) * vec3<f32>(arg_0.c.c, global2.c, _wgslsmith_f_op_f32(f32(-1f) * -2186f))));
    return vec3<i32>(_wgslsmith_mult_i32(-(~(i32(-1i) * -34i)), _wgslsmith_clamp_i32(-_wgslsmith_div_i32(-45106i, -9801i), select(1i, min(var_1.d.x, 2147483647i), true), ~var_1.d.x)), ~_wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(global3.x, -45338i), 42853i), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, abs(4953i), arg_1.d.x), -2147483647i));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> bool {
    global0 = ((countOneBits(u_input.b.xxy | vec3<i32>(global3.x, u_input.b.x, -1i)) ^ vec3<i32>(1i, ~16859i, 0i)) << (vec3<u32>(arg_0, global2.b.x, 7696u) % vec3<u32>(32u))) & func_4(Struct_2(abs(22768i), _wgslsmith_add_u32(abs(u_input.c.x), global2.b.x), func_3(func_2(Struct_3(arg_1, arg_0, Struct_1(true, global2.b, arg_1.x, vec2<bool>(false, false)), u_input.b.xzz), u_input.d.x), ~global2.b.x, func_2(Struct_3(vec2<f32>(-370f, global2.c), 50194u, Struct_1(global2.d.x, vec3<u32>(arg_0, 45704u, 7029u), -1237f, global2.d), vec3<i32>(global0.x, global3.x, 32440i)), 60345u), _wgslsmith_f_op_f32(step(arg_1.x, -793f))), !vec3<bool>(global2.a, false, global2.d.x)), Struct_3(arg_1, ~u_input.c.x << (~30944u % 32u), Struct_1(false, global2.b, _wgslsmith_f_op_f32(sign(arg_1.x)), global2.d), countOneBits(_wgslsmith_sub_vec3_i32(u_input.b.www, u_input.b.www))), global2.d.x);
    global1 = array<vec2<u32>, 23>();
    var var_0 = firstLeadingBit(global3.xy);
    global0 = _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(select(abs(u_input.b.yyw), abs(vec3<i32>(0i, u_input.a, 0i)), all(global2.d)), vec3<i32>(_wgslsmith_add_i32(-22487i, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 1i), global3.xx), firstLeadingBit(u_input.a)))), countOneBits(select(-u_input.b.yxz, u_input.b.zzw, !global2.a)));
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(587f, global2.c)), -1779f)), arg_1.x), 4294967295u, func_2(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1)), _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(arg_1.x, 1130f))), arg_0, Struct_1(true, vec3<u32>(arg_0, 75397u, 121203u), arg_1.x, !global2.d), _wgslsmith_mult_vec3_i32(u_input.b.wzw, u_input.b.wzw)), 0u), func_4(Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 1i), min(global3.x, -33594i)), arg_0, Struct_1(false, global2.b, -1067f, !vec2<bool>(global2.d.x, true)), vec3<bool>(true, false, all(vec2<bool>(global2.d.x, true)))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.c)), _wgslsmith_f_op_f32(-global2.c)), firstTrailingBit(arg_0 >> (27438u % 32u)), Struct_1(global2.d.x, global2.b, -902f, vec2<bool>(global2.d.x, global2.d.x)), u_input.b.xyx), select(global2.d.x, global2.a, all(vec2<bool>(false, true)) == true)));
    return !global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(!(!any(!vec3<bool>(false, global2.d.x, true))), global2.b, _wgslsmith_f_op_f32(max(621f, 459f)), vec2<bool>(func_1(global2.b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c, 796f), vec2<f32>(635f, global2.c))))), true));
    let var_0 = Struct_2(_wgslsmith_add_i32(-2147483647i, global3.x), global2.b.x, func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(741f, global2.c) - vec2<f32>(1544f, global2.c))), 25025u, func_3(func_3(Struct_1(true, global2.b, -190f, vec2<bool>(global2.a, global2.a)), global2.b.x, Struct_1(global2.a, vec3<u32>(global2.b.x, 56121u, global2.b.x), global2.c, vec2<bool>(false, true)), global2.c), 1u, Struct_1(global2.d.x, vec3<u32>(u_input.c.x, 33717u, global2.b.x), -730f, global2.d), _wgslsmith_f_op_f32(-global2.c)), u_input.b.yxx), 4869u), select(select(!(!vec3<bool>(global2.d.x, false, global2.d.x)), select(!vec3<bool>(false, global2.d.x, true), vec3<bool>(true, global2.a, global2.d.x), select(vec3<bool>(true, global2.a, false), vec3<bool>(false, global2.d.x, global2.a), vec3<bool>(global2.d.x, global2.d.x, global2.a))), !select(vec3<bool>(false, false, false), vec3<bool>(false, global2.d.x, global2.d.x), vec3<bool>(false, global2.a, global2.d.x))), !select(vec3<bool>(global2.a, false, true), select(vec3<bool>(true, false, true), vec3<bool>(global2.a, global2.a, true), true), select(vec3<bool>(global2.a, global2.d.x, global2.d.x), vec3<bool>(true, global2.d.x, global2.a), global2.a)), global2.b.x >= _wgslsmith_add_u32(7663u, abs(global2.b.x))));
    let var_1 = var_0;
    var var_2 = -firstLeadingBit(_wgslsmith_dot_vec2_i32(~global3.zz, global3.yx)) & u_input.a;
    let var_3 = ((false | var_0.d.x) | (all(vec4<bool>(global2.d.x, var_1.d.x, true, var_1.d.x)) | false)) && true;
    var var_4 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~(~0u), ~(var_1.b & 18770u), _wgslsmith_clamp_u32(59365u, ~19717u, _wgslsmith_dot_vec4_u32(vec4<u32>(28112u, u_input.d.x, 22536u, var_0.b), vec4<u32>(14934u, 4294967295u, global2.b.x, 71200u)))), (countOneBits(vec4<u32>(var_0.b, 41977u, global2.b.x, 30491u)) >> (firstLeadingBit(vec4<u32>(4294967295u, 40920u, 1u, 2351u)) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, var_0.c.b.x, 4294967295u), vec4<u32>(global2.b.x, global2.b.x, var_1.c.b.x, 16260u) | vec4<u32>(var_0.c.b.x, u_input.d.x, 77u, u_input.c.x))), max(~vec4<u32>(u_input.d.x, var_0.b, u_input.d.x, u_input.d.x) ^ select(vec4<u32>(var_1.c.b.x, 66402u, 10971u, 63110u), vec4<u32>(global2.b.x, global2.b.x, var_0.c.b.x, var_0.c.b.x), vec4<bool>(var_3, var_1.c.a, var_1.c.d.x, global2.a)), countOneBits(vec4<u32>(var_0.c.b.x, var_1.c.b.x, global2.b.x, 881u))) & (max(vec4<u32>(1u, 69086u, 23836u, 69927u), ~vec4<u32>(global2.b.x, 38241u, var_1.b, 80613u)) | vec4<u32>(0u, 1u, ~global2.b.x, 4294967295u)));
    let var_5 = ~(~(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(var_4.wy, vec2<u32>(26017u, global2.b.x)), vec2<u32>(var_0.c.b.x, 4294967295u)) >> (~global2.b.zx % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, global2.c, _wgslsmith_div_f32(-420f, var_1.c.c), var_0.c.c)))), u_input.b, (~max(u_input.d.x, 4120u) >> (var_4.x % 32u)) ^ u_input.d.x);
}

