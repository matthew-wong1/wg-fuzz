struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_4;

var<private> global2: f32 = 568f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec4<f32> {
    global2 = -193f;
    var var_0 = Struct_5(u_input.c.x, Struct_4(global1.a, _wgslsmith_div_vec4_f32(global1.a.a, _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(global1.a.a * vec4<f32>(-379f, -779f, 1000f, -1254f))))));
    let var_1 = var_0.b.a.a.x;
    global1 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * -853f)), 1214f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x * 598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.a.x))), select(!var_0.b.a.b, select(select(vec4<bool>(var_0.b.a.b.x, var_0.b.a.b.x, true, global1.a.b.x), vec4<bool>(var_0.b.a.b.x, var_0.b.a.b.x, var_0.b.a.b.x, true), var_0.b.a.b.x), vec4<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x, global1.a.b.x), var_0.b.a.b), select(!global1.a.b, vec4<bool>(true, false, true, true), !var_0.b.a.b.x))), _wgslsmith_f_op_vec4_f32(floor(var_0.b.a.a)));
    global2 = _wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f) * global1.b.x), _wgslsmith_div_f32(var_0.b.b.x, 622f)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1.a.a - global1.b)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-250f + global1.b.x) - var_0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + -171f) * _wgslsmith_f_op_f32(sign(-390f))), _wgslsmith_f_op_f32(-1f)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    var var_0 = arg_2;
    return global1.b.x;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2()), vec4<bool>(!global1.a.b.x, all(global1.a.b.zxx), true, ~_wgslsmith_clamp_i32(39975i, 1i, -7838i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), -u_input.c.yy)));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.b.zxz, all(global1.a.b.wy), ~vec3<u32>(106207u, 0u, 37063u), var_0.b.x)) - _wgslsmith_f_op_vec4_f32(func_2()).x), var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * global1.a.a.x), _wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(f32(-1f) * -1023f))))), vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b) | vec3<u32>(u_input.b, 5730u, u_input.b), firstLeadingBit(vec3<u32>(6251u, 35480u, u_input.a))) >= firstLeadingBit(u_input.b), true, true, !(!(4294967295u == u_input.a))));
    var var_1 = Struct_5(~u_input.c.x, Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(906f, global1.a.a.x, 116f, var_0.a.x) * vec4<f32>(1323f, var_0.a.x, global1.b.x, 1000f)))), vec4<bool>(true, false, !global1.a.b.x, any(var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(473f, var_0.a.x, var_0.a.x, 689f) * global1.b) + _wgslsmith_div_vec4_f32(global1.a.a, var_0.a)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-299f + 833f), _wgslsmith_f_op_f32(max(global1.b.x, -1866f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.a.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-555f, var_0.a.x) + _wgslsmith_f_op_f32(-global1.a.a.x)), global1.b.x) - var_1.b.b.zx)));
    let var_3 = vec2<i32>(min(-_wgslsmith_mod_i32(var_1.a, 13865i), 0i), 22546i) ^ countOneBits(_wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.c.xw, u_input.c.wy), -u_input.c.wy));
    return -var_1.a;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: bool) -> vec2<u32> {
    var var_0 = ((firstLeadingBit(_wgslsmith_mod_vec2_u32(arg_2.yy, arg_2.yy)) ^ (vec2<u32>(u_input.b, arg_2.x) & ~vec2<u32>(4294967295u, arg_2.x))) | vec2<u32>(arg_2.x, _wgslsmith_sub_u32(30657u, arg_2.x & 0u))) & _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~49176u, ~arg_2.x), 14290u >> (arg_2.x % 32u)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.xx ^ vec2<u32>(20190u, 1u), arg_2.zz), vec2<u32>(~224u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.x), vec2<u32>(arg_2.x, 1u)))));
    global2 = -1192f;
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 21925i, -7726i), ~u_input.c.ywy, firstLeadingBit(u_input.c.wxw)), vec3<i32>(-1i) * -vec3<i32>(arg_1.x, arg_1.x, 13522i)) | vec3<i32>(u_input.c.x, -38634i, ~(-30043i)));
    var var_2 = ~99151u;
    let var_3 = vec2<i32>(arg_0, _wgslsmith_mod_i32(-max(~var_1.a.x, ~2147483647i), _wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(arg_0, u_input.c.x)), -u_input.c.x, abs(0i))));
    return firstLeadingBit(vec2<u32>(1u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.a.wz);
    var var_1 = global1.a;
    var var_2 = func_4(_wgslsmith_sub_i32(firstTrailingBit(52024i), _wgslsmith_sub_i32(u_input.c.x, -func_1())), vec2<i32>(2147483647i, max(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(39262i, u_input.c.x, u_input.c.x)), reverseBits(u_input.c.yxx)), abs(_wgslsmith_mult_i32(1i, u_input.c.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 16387u, u_input.b >> (u_input.a % 32u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(6859u, u_input.b, u_input.b), vec3<u32>(u_input.a, 28341u, u_input.a)) % vec3<u32>(32u)), firstLeadingBit(abs(vec3<u32>(106049u, u_input.a, 1u)))), !(!global1.a.b.x));
    var var_3 = vec3<bool>(false, !var_1.b.x, true);
    var var_4 = vec3<bool>(!any(global1.a.b), false, var_1.b.x);
    var var_5 = u_input.c.yz;
    var_5 = u_input.c.xw;
    var var_6 = ~(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(~31561i, -(~(-vec4<i32>(1952i, u_input.c.x, u_input.c.x, var_5.x))), u_input.c, var_0.x, ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, var_2.x)), abs(firstTrailingBit(vec3<u32>(68017u, 27697u, 4294967295u)))));
}

