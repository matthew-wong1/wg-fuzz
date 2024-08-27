struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: vec3<u32> = vec3<u32>(91308u, 14601u, 5753u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    let var_0 = arg_0.yxz;
    var var_1 = _wgslsmith_f_op_f32(1768f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 548f))) - 106f));
    global0 = array<vec2<i32>, 3>();
    let var_2 = any(!vec3<bool>(_wgslsmith_f_op_f32(step(901f, -224f)) > -983f, true, false));
    global1 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(~arg_1.x, 2250u, 1u)), arg_1.xyx ^ ~vec3<u32>(arg_1.x, ~global1.x, 1u));
    return 376f;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global1 = min(~u_input.a.xxw, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yxx, ~vec3<u32>(4294967295u, 14747u, 9441u)), _wgslsmith_clamp_vec3_u32(u_input.a.yzy & (u_input.a.zyy >> (u_input.a.xwz % vec3<u32>(32u))), ~(u_input.a.xyz | u_input.a.wxx), select(u_input.a.ywz & u_input.a.www, u_input.a.yzx << (u_input.a.wyw % vec3<u32>(32u)), arg_2.c.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1921f, arg_0) * vec3<f32>(arg_0, 781f, 346f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(623f, arg_0, 230f), vec3<f32>(arg_2.a, arg_1.x, 421f)))), vec3<bool>(any(vec2<bool>(true, arg_2.c.x)), any(arg_2.c.zxz), !arg_2.c.x)))));
    global0 = array<vec2<i32>, 3>();
    global1 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(12917u & u_input.a.x, ~4294967295u, abs(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d, arg_2.d), global1.yx)), ~abs(~u_input.a)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.wxw, u_input.a.wyz), global1.x, u_input.a.x) | _wgslsmith_mult_u32(103149u, _wgslsmith_mult_u32(u_input.a.x << (global1.x % 32u), 2703u)));
    var var_1 = arg_2.c;
    return _wgslsmith_div_u32(firstTrailingBit(~reverseBits(_wgslsmith_div_u32(arg_2.d, global1.x))), 11926u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = all(arg_0.a.c);
    let var_1 = Struct_2(arg_2, arg_2, arg_0.c);
    let var_2 = var_1;
    let var_3 = 0i;
    let var_4 = vec4<u32>(~0u, _wgslsmith_mult_u32(1u, u_input.a.x), ~58180u << ((abs(max(arg_1.x, 1215u)) ^ ~var_1.b.d) % 32u), ~(_wgslsmith_mult_u32(1u, 39142u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), arg_1.zx) % 32u)) >> (reverseBits(_wgslsmith_sub_u32(~4933u, 81896u)) % 32u));
    return !select(vec4<bool>(true, firstTrailingBit(1i) != -1i, true, arg_2.c.x), !(!vec4<bool>(var_2.b.c.x, true, arg_0.a.c.x, arg_2.c.x)), select(!vec4<bool>(true, arg_0.b.c.x, arg_2.c.x, true), var_2.b.c, select(select(vec4<bool>(false, var_2.a.c.x, false, var_2.b.c.x), vec4<bool>(var_1.b.c.x, arg_0.b.c.x, true, arg_0.b.c.x), arg_2.c.x), vec4<bool>(arg_0.a.c.x, var_1.b.c.x, false, true), false)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = !vec4<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), true, false, !select(false, false, true) != (all(vec2<bool>(true, true)) | true));
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global1.x, u_input.a.x), 1u, u_input.a.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 54518u, _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(27905u, global1.x))), abs(abs(arg_0.zzy))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0, ~vec4<u32>(global1.x, u_input.a.x, 32609u, global1.x), var_0.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(468f - 355f)))), -2540f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1104f, 875f)))));
    var var_2 = global1.x;
    global0 = array<vec2<i32>, 3>();
    return !func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1442f), reverseBits(vec3<i32>(-15286i, -52562i, -1i)), vec4<bool>(var_0.x, false, false, true), _wgslsmith_mod_u32(4294967295u, 19306u)), Struct_1(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), vec3<i32>(1i, 1i, 1i), !var_0, ~global1.x), var_1), vec4<u32>(func_3(-298f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), Struct_1(var_1.x, vec3<i32>(0i, 0i, -2147483647i), vec4<bool>(var_0.x, true, true, var_0.x), 0u)), global1.x, arg_0.x, _wgslsmith_add_u32(global1.x, 0u)), Struct_1(1000f, ~vec3<i32>(1i, 1i, 1i), var_0, func_3(var_1.x, vec3<f32>(903f, var_1.x, var_1.x), Struct_1(var_1.x, vec3<i32>(36493i, 0i, -11368i), var_0, u_input.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~(vec4<i32>(-17443i, 61378i, -1i, 32133i) >> (arg_0 % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = array<vec2<i32>, 3>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1446f)), vec3<i32>(-2147483647i, arg_0.b.x, 1i), arg_0.c, _wgslsmith_dot_vec2_u32(~(~global1.yx), ~u_input.a.xx)), Struct_1(arg_0.a, arg_0.b, vec4<bool>(arg_0.c.x, all(!vec2<bool>(arg_0.c.x, false)), !(!arg_0.c.x), arg_0.c.x), ~firstLeadingBit(~u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1016f, arg_0.a) - vec2<f32>(-917f, 1000f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<u32>(~abs(global1.x), 17029u)) & firstLeadingBit(~(~(~vec2<u32>(114035u, u_input.a.x))));
    var var_1 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(115f))))), ~(-vec3<i32>(1i, 1i, 1i)), select(func_1(vec4<u32>(global1.x, global1.x, 0u, u_input.a.x) << (vec4<u32>(global1.x, 0u, 0u, 1u) % vec4<u32>(32u))), func_4(Struct_2(Struct_1(811f, vec3<i32>(-2147483647i, 4783i, -2147483647i), vec4<bool>(false, true, true, false), 77888u), Struct_1(933f, vec3<i32>(-5019i, 48040i, -2147483647i), vec4<bool>(true, true, true, true), 40030u), vec2<f32>(1093f, 390f)), ~vec4<u32>(3742u, 29882u, 0u, global1.x), Struct_1(1000f, vec3<i32>(-1i, -48613i, -1i), vec4<bool>(false, true, false, false), u_input.a.x), -vec4<i32>(41146i, -3340i, 61507i, 2190i)), vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(firstLeadingBit(u_input.a.x), global1.x, ~global1.x, 10789u))), !all(vec2<bool>(true, true)));
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(-var_1.a), ~var_1.b, !vec4<bool>(var_1.c.x, true == var_1.c.x, true, any(var_1.c)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), false);
    var var_3 = _wgslsmith_dot_vec3_i32(var_1.b, -vec3<i32>(var_2.b.x, (var_2.b.x << (var_0.x % 32u)) ^ ~(-36229i), var_1.b.x));
    let var_4 = i32(-1i) * -34939i;
    global0 = array<vec2<i32>, 3>();
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-1365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f - -963f) - var_1.a)), -1785f, select(min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.b.x, -1i), var_2.b), var_1.b.x), _wgslsmith_sub_vec2_i32(~vec2<i32>(6487i, var_1.b.x), _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(26995u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), ~var_2.b.yy, true | !all(vec2<bool>(var_5.c.x, var_2.c.x))));
}

