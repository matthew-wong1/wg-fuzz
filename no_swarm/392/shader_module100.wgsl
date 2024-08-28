struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    let var_0 = -_wgslsmith_add_i32(arg_0.c, 36802i) >= -firstTrailingBit(6994i);
    var var_1 = ~30547u >> (u_input.a % 32u);
    let var_2 = var_0;
    global0 = array<vec4<u32>, 12>();
    var var_3 = 1i | ((1i ^ arg_0.c) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(arg_0.b, 4294967295u), 51045u, 1u), _wgslsmith_clamp_vec3_u32(~u_input.b.zxx, u_input.b.zyy, u_input.b.yww << (u_input.b.ywz % vec3<u32>(32u)))) % 32u));
    return arg_0.b ^ 96329u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    global0 = array<vec4<u32>, 12>();
    global0 = array<vec4<u32>, 12>();
    let var_0 = vec4<i32>(9039i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, -4981i), vec2<i32>(arg_1.c, -2147483647i)), 1i), _wgslsmith_dot_vec3_i32(-(u_input.e & _wgslsmith_sub_vec3_i32(vec3<i32>(-29501i, 2147483647i, arg_1.c), vec3<i32>(u_input.e.x, 29303i, -1i))), -u_input.e), arg_1.c);
    global0 = array<vec4<u32>, 12>();
    var var_1 = Struct_1(arg_1.a, ~36658u, arg_0.c);
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - -403f) * -1096f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2335f) * _wgslsmith_f_op_f32(-1000f + 218f)), 900f, _wgslsmith_f_op_f32(round(-972f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, 746f, 452f, -1357f) - vec4<f32>(-359f, -1331f, 509f, 716f)))))));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    global0 = array<vec4<u32>, 12>();
    var var_0 = u_input.b.ww;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1420f, 124f, -1600f, -567f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1509f, 479f, 1076f, 1544f))) * _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<bool>(false, true), abs(1u), _wgslsmith_sub_i32(24218i, 0i)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), false), 25500u, max(u_input.d.x, arg_0)), ~func_3(Struct_1(vec2<bool>(true, false), 4294967295u, 0i), vec3<bool>(true, true, true))))));
    var var_2 = 443f;
    global0 = array<vec4<u32>, 12>();
    return vec2<i32>(_wgslsmith_add_i32(~min(u_input.e.x, arg_0), 2147483647i), arg_0) | _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, 0i), u_input.e.zx);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, u_input.e), firstTrailingBit(u_input.e)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, -1i, -48372i) << (select(arg_0.xwz, vec3<u32>(1u, 0u, u_input.b.x), vec3<bool>(arg_2.a.x, true, arg_2.a.x)) % vec3<u32>(32u)), ~u_input.e)) << (21150u % 32u);
    global0 = array<vec4<u32>, 12>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-456f, _wgslsmith_f_op_f32(select(920f, 617f, true)), _wgslsmith_f_op_f32(step(-678f, -1519f)))))), vec3<f32>(-1000f, 672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(357f, 1032f))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-904f * var_1.x) * _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, arg_2.a.x), arg_2.a.x), reverseBits(arg_0.x), u_input.d.x), arg_2, 1u)).x));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -995f, -767f) + vec3<f32>(var_1.x, var_1.x, var_1.x)))))));
    return arg_2.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 12>();
    let var_0 = Struct_1(func_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 32104u), 12u)], ~func_2(arg_2.x), Struct_1(vec2<bool>(true, true), u_input.a, u_input.c)), u_input.a, ~firstTrailingBit(u_input.d.x & -1i));
    let var_1 = var_0.a.x;
    let var_2 = Struct_1(func_5(~firstLeadingBit(vec4<u32>(53648u, arg_1.x, arg_1.x, arg_1.x)), u_input.d, var_0), var_0.b << ((~943u >> (u_input.b.x % 32u)) % 32u), ~arg_0.x);
    var var_3 = var_0;
    return Struct_1(!func_5(abs(vec4<u32>(arg_1.x, var_0.b, arg_1.x, 1u)), vec2<i32>(var_3.c, i32(-1i) * -1i), var_0), abs(0u), -var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2327f * -1000f), -1919f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(393f)), -1000f))), -787f));
    let var_1 = func_1(vec2<i32>(-(~(-2147483647i)), u_input.e.x), _wgslsmith_add_vec2_u32(~min(u_input.b.yz, _wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, 0u))), max(firstTrailingBit(u_input.b.yy), min(u_input.b.zy, u_input.b.yz))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(~(-1i), u_input.c), min(u_input.c, 18601i) | ~(-2147483647i)), -13698i, u_input.e.x, firstTrailingBit(abs(u_input.e.x)) & 2147483647i));
    let var_2 = _wgslsmith_div_f32(-158f, 733f);
    var var_3 = func_1(vec2<i32>(countOneBits(u_input.e.x), var_1.c), _wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(1u, ~u_input.b.x), firstTrailingBit(vec2<u32>(u_input.b.x, 2096u) & vec2<u32>(u_input.b.x, var_1.b))) ^ vec2<u32>(51534u, 1u), firstLeadingBit(_wgslsmith_sub_vec4_i32(min(abs(vec4<i32>(u_input.d.x, 23999i, 0i, -21756i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(18979i, var_1.c, u_input.d.x, -1i), vec4<i32>(0i, var_1.c, u_input.c, 2147483647i), vec4<i32>(-3625i, -13317i, var_1.c, -11763i))), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_1.c, 22149i, var_1.c), vec4<i32>(u_input.d.x, -2147483647i, var_1.c, var_1.c))))));
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, var_3.c, var_3.c, 13935i) | vec4<i32>(0i, u_input.e.x, -15736i, var_1.c), -vec4<i32>(var_3.c, u_input.d.x, 1i, u_input.e.x)), max(var_3.c, -45436i) << (4294967295u % 32u), -16492i), vec4<i32>(var_3.c << (1u % 32u), var_3.c, -46617i, 44437i | _wgslsmith_sub_i32(-2147483647i, var_3.c))), select(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, var_3.b, 0u), u_input.b.yzw)) & u_input.b.wzw, ~abs(u_input.b.xzx) & vec3<u32>(70698u, u_input.b.x, firstLeadingBit(var_1.b)), select(select(select(vec3<bool>(var_3.a.x, true, false), vec3<bool>(false, var_3.a.x, var_1.a.x), false), vec3<bool>(var_1.a.x, var_1.a.x, var_3.a.x), true), !vec3<bool>(true, var_1.a.x, var_1.a.x), false)));
}

