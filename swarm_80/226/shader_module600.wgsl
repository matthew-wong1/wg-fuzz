struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    var var_0 = Struct_4(arg_1.a, select(vec4<i32>(-firstLeadingBit(u_input.c), 2147483647i, -u_input.c, 43783i), ~reverseBits(-vec4<i32>(u_input.c, -44308i, u_input.c, 2147483647i)), vec4<bool>(firstLeadingBit(15548i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, 11244i)), true & select(true, true, arg_3), (i32(-1i) * -33481i) != (u_input.c | u_input.c), arg_3)));
    var var_1 = Struct_4(var_0.a, var_0.b);
    let var_2 = -_wgslsmith_mult_vec3_i32((select(var_1.b.wyw, var_1.b.zyw, vec3<bool>(var_0.a.a.x, global0.c.x, false)) | var_1.b.xzz) ^ -var_0.b.xxy, abs(-countOneBits(var_1.b.zxy)));
    var var_3 = var_0.a;
    var var_4 = Struct_3(~abs(~var_0.a.b.x));
    return _wgslsmith_f_op_f32(max(-1291f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-928f, _wgslsmith_f_op_f32(-arg_0.x)) * arg_0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(1188f - arg_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    let var_0 = vec2<bool>(!arg_0.a.a.x, any(vec3<bool>(!global0.c.x, true, true)));
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 20939i) | _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.c), ~vec2<i32>(u_input.c, u_input.c)), vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(u_input.c, 1i)), i32(-1i) * -2147483647i), abs(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(59925i, 2147483647i)))), _wgslsmith_sub_vec2_i32(~(~vec2<i32>(0i, -18779i)), -vec2<i32>(-5674i, u_input.c) & vec2<i32>(13517i, -7207i)) >> (vec2<u32>(~u_input.b, firstLeadingBit(~global0.a.b.x)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(sign(arg_1)));
    var var_3 = global0.a;
    var_3 = arg_0.a;
    return 4294967295u & _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 27588u, countOneBits(11680u) >> ((37966u ^ var_3.b.x) % 32u)), ~(~4294967295u) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.x, 22423u, 4294967295u), var_3.b) % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~(~(~global1.x)));
    var var_1 = Struct_4(Struct_1(global0.a.a, ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.a.b.x, 1u, 4294967295u), u_input.a << (vec3<u32>(global1.x, global1.x, 40378u) % vec3<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, -18475i), vec2<i32>(-1i >> (u_input.b % 32u), u_input.c)), -u_input.c, _wgslsmith_mod_i32(~2147483647i, u_input.c) << (15337u % 32u), -42352i));
    global0 = Struct_2(global0.a, any(global0.a.a), vec2<bool>(var_1.a.a.x, var_1.a.a.x));
    var_1 = Struct_4(var_1.a, -var_1.b);
    let var_2 = Struct_3(_wgslsmith_div_u32(func_4(Struct_2(Struct_1(vec4<bool>(false, global0.b, true, true), u_input.a), !global0.a.a.x, var_1.a.a.zw), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, 278f, -927f)), Struct_2(Struct_1(vec4<bool>(false, true, global0.a.a.x, false), var_1.a.b), global0.c.x, var_1.a.a.zy), var_1.a.a, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, -802f, -1102f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-715f, -986f, 1570f) - vec3<f32>(-947f, -1260f, -1321f)), !var_1.a.a.zwy))), var_1.a.b.x));
    return Struct_2(global0.a, any(vec2<bool>(true, true)), !(!(!vec2<bool>(global0.b, global0.c.x))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0.zx;
    global0 = func_2();
    global1 = abs(~vec2<u32>(global0.a.b.x, ~0u));
    var var_1 = global0.a.b.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x);
    return Struct_1(vec4<bool>(select(select(global0.a.a.x, false, false), false, all(vec4<bool>(true, global0.c.x, true, global0.c.x))) || all(global0.a.a.zyx), -2147483647i >= _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, -3066i)), -vec2<i32>(-69913i, u_input.c)), select(global0.c.x, !(global0.b || false), func_2().c.x), false), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-386f, 403f, -107f) * vec3<f32>(-723f, 2044f, -1117f)), vec3<f32>(-1331f, -1000f, -462f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(318f, 2051f, -788f), vec3<f32>(231f, 1255f, 1235f))), vec3<f32>(1737f, -1777f, -587f)), true))));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(u_input.c, 31619i, 1i)), ~reverseBits(vec3<i32>(u_input.c, u_input.c, -39431i))), -(select(vec3<i32>(33873i, u_input.c, u_input.c), vec3<i32>(27044i, 1i, u_input.c), true) ^ vec3<i32>(u_input.c, 1i, u_input.c))), i32(-1i) * -92599i);
    var var_2 = Struct_3(~global1.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(219f, 2635f)))))) + 803f));
    global0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, var_3, var_3)) + vec3<f32>(var_3, var_3, 155f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(435f, var_3)))) < var_3, select(var_0.a.zx, select(!func_1(vec3<f32>(var_3, 242f, -1794f)).a.zy, func_1(vec3<f32>(1599f, var_3, 110f)).a.xz, var_0.a.zw), !all(func_2().a.a.zx)));
    var var_4 = Struct_3(_wgslsmith_mult_u32(~global0.a.b.x, u_input.a.x >> (global1.x % 32u)));
    global0 = func_2();
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.c, 2147483647i)), min(-vec2<i32>(-2147483647i, -8741i), vec2<i32>(u_input.c, -1i))), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, 0i), vec3<i32>(0i, -1i, u_input.c))), 0i)), i32(-1i) * -abs(14696i << (var_0.b.x % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, _wgslsmith_div_u32(var_4.a, global0.a.b.x), _wgslsmith_mult_u32(22397u, global0.a.b.x), _wgslsmith_sub_u32(545u, u_input.b)), firstTrailingBit(vec4<u32>(var_2.a >> (var_2.a % 32u), abs(0u), _wgslsmith_add_u32(global0.a.b.x, var_2.a), 64224u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1255f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-379f, 474f)) + _wgslsmith_f_op_f32(-var_3)) * _wgslsmith_div_f32(_wgslsmith_div_f32(var_3, -975f), _wgslsmith_f_op_f32(-2197f + -2422f)))));
}

