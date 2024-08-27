struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    global0 = vec3<i32>(13812i, u_input.a, -1i);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = ~vec3<i32>(-22237i, -2147483647i ^ _wgslsmith_sub_i32(64314i, _wgslsmith_sub_i32(global0.x, u_input.c.x)), 77445i);
    global0 = vec3<i32>(~(-global0.x & reverseBits(u_input.c.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-u_input.a, ~global0.x, 1i), u_input.a), -abs(~global0.x)) << ((vec3<u32>(select(~48145u, ~0u, u_input.b.x == 9082u), u_input.b.x, reverseBits(u_input.b.x)) << (reverseBits(firstLeadingBit(select(u_input.b.wxw, u_input.b.yxx, vec3<bool>(true, true, true)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1778f, 2131f), vec2<f32>(1f, 1f)) - vec2<f32>(-2361f, var_0));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0, var_1.x) - vec3<f32>(var_1.x, -181f, 1827f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -482f) - vec3<f32>(var_1.x, var_0, var_0)), true)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-563f, var_0, -953f), vec3<f32>(var_0, -516f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, var_1.x, -2426f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1809f, var_1.x)));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(242f + 405f), -1147f, _wgslsmith_f_op_f32(floor(-1085f))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1222f, 554f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(547f - -285f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(u_input.b.x))))))));
    let var_1 = -(vec2<i32>(firstLeadingBit(u_input.c.x), 18530i << (1u % 32u)) ^ -_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, global0.x), firstTrailingBit(u_input.c.xz)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1120f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 1521f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(trunc(var_0.x)))));
    return -5075i;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = -_wgslsmith_clamp_i32(u_input.c.x, global0.x, ~func_2(0u & u_input.b.x));
    var var_1 = firstTrailingBit(min(1u, 24424u));
    global0 = -(vec3<i32>(53588i, -u_input.c.x ^ global0.x, ~0i) | vec3<i32>(-(0i << (u_input.b.x % 32u)), u_input.a, _wgslsmith_sub_i32(func_2(arg_1), min(global0.x, global0.x))));
    var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) * -115f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(u_input.b.x)).x)), -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1470f))))));
    return Struct_2(Struct_1(abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(5i, 24022i, global0.x, global0.x), vec4<i32>(u_input.c.x, global0.x, global0.x, global0.x)))), abs(-44864i), _wgslsmith_add_vec3_i32(u_input.c, select(firstTrailingBit(u_input.c), u_input.c, !vec3<bool>(arg_0, arg_0, arg_0))), u_input.b.xyx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1401f, -279f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(795f, 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(-877f, 1471f), vec2<f32>(-2143f, -908f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1123f, 1233f), vec2<f32>(-1000f, 633f))))))), Struct_1(~max(vec4<i32>(77398i, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(global0.x, global0.x, global0.x, -2147483647i)), global0.x, u_input.c, ~reverseBits(min(vec3<u32>(4294967295u, arg_1, arg_1), u_input.b.zwz))), 77863i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    let var_0 = func_1(false, u_input.b.x);
    var var_1 = firstLeadingBit(~(~firstTrailingBit(var_0.a.d.xx)));
    global0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.c.c, vec3<i32>(-var_0.a.b, u_input.a & countOneBits(-1i), firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, global0.x, 0i))), vec3<i32>(u_input.a, global0.x, -(i32(-1i) * -69697i))), vec3<i32>(-_wgslsmith_div_i32(-10562i, -2147483647i), -global0.x, 15321i ^ (0i ^ global0.x)) << (_wgslsmith_mod_vec3_u32(var_0.a.d, u_input.b.wzz) % vec3<u32>(32u)), abs(u_input.c));
    global0 = vec3<i32>(-(~_wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(1i, u_input.c.x), var_0.d ^ 0i)), _wgslsmith_mult_i32(-36588i, var_0.c.a.x), _wgslsmith_sub_i32(1i, ~_wgslsmith_clamp_i32(min(var_0.d, 35286i), ~var_0.a.b, ~(-23683i))));
    let var_2 = u_input.b;
    var var_3 = false;
    var var_4 = Struct_2(Struct_1(var_0.a.a, i32(-1i) * -1i, firstLeadingBit(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(var_0.c.c.x, -80857i, u_input.c.x)), var_0.a.c, var_0.a.a.wwy | vec3<i32>(15652i, global0.x, u_input.c.x))), (var_0.a.d | var_2.wwx) | var_0.c.d), var_0.b, var_0.a, var_0.d);
    var var_5 = vec4<i32>(-1i) * -min(func_1(true, ~0u).a.a, func_1(true, 74954u >> (var_1.x % 32u)).c.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, vec2<i32>(select(0i, var_5.x, all(vec2<bool>(true, false))), 1i) >> (~var_2.xy % vec2<u32>(32u)));
}

