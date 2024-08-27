struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(598f)), 464f))))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1812f + var_0.a));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -201f);
    var var_3 = var_0.b.a.zzz;
    let var_4 = vec2<i32>(~(~0i), -firstLeadingBit(u_input.c.x) >> (2736u % 32u));
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    global0 = 446f;
    global0 = _wgslsmith_f_op_f32(round(767f));
    let var_0 = any(vec4<bool>(true, 62058i >= (u_input.d.x << (_wgslsmith_div_u32(0u, 5666u) % 32u)), true, any(vec3<bool>(false, false, false)) || all(vec3<bool>(true, true, true))));
    global0 = arg_1;
    let var_1 = vec3<bool>(var_0, var_0, !(_wgslsmith_f_op_f32(min(-1575f, 135f)) >= _wgslsmith_f_op_f32(exp2(arg_2.a))));
    return _wgslsmith_div_u32(~(1u << (~_wgslsmith_div_u32(6100u, u_input.a.x) % 32u)), ~(firstTrailingBit(select(arg_0.b, 32055u, true)) & arg_0.a.x));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(443f, -923f, -1269f), vec3<f32>(-1683f, 600f, 908f)))))));
    global0 = _wgslsmith_f_op_f32(func_1(func_1(Struct_1(vec4<u32>(4657u, u_input.e.x, u_input.e.x, u_input.a.x) & u_input.a, func_3(Struct_1(u_input.a, u_input.e.x), var_0.x, Struct_2(-913f, Struct_1(vec4<u32>(16034u, 35752u, u_input.a.x, u_input.e.x), u_input.e.x)), vec4<i32>(15960i, 1i, -62025i, -1i)))).b).a + 924f);
    let var_1 = func_1(func_1(Struct_1(vec4<u32>(func_1(Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, u_input.a.x, u_input.e.x), u_input.e.x)).b.a.x, 19473u, 38540u >> (u_input.b % 32u), ~u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.xyw, u_input.e.zwx & u_input.a.xwz))).b);
    let var_2 = Struct_1(~u_input.a, ~0u);
    let var_3 = var_1;
    return var_1.b.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(exp2(arg_0)), true))), !(arg_3.a == -458f))), arg_3.b);
    var var_1 = vec3<u32>(~max(11202u, var_0.b.b), 1u, _wgslsmith_dot_vec3_u32(var_0.b.a.zwx, arg_1.a.zwz));
    let var_2 = !vec3<bool>(true, true, _wgslsmith_f_op_f32(971f - _wgslsmith_f_op_f32(max(arg_3.a, 1184f))) >= _wgslsmith_f_op_f32(sign(arg_0)));
    var var_3 = all(var_2);
    var_0 = arg_3;
    return -(~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, arg_2), ~2147483647i, _wgslsmith_mult_i32(arg_2, 0i)), max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, -22720i, u_input.c.x), vec3<i32>(-10792i, 10480i, 1i)), vec3<i32>(u_input.d.x, 13680i, u_input.c.x) | vec3<i32>(-15263i, u_input.d.x, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -17616i;
    var var_1 = func_1(Struct_1(vec4<u32>(~u_input.b, u_input.e.x << ((4294967295u & u_input.b) % 32u), ~_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), u_input.a.x ^ u_input.a.x)), reverseBits(~min(1u, u_input.e.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.a) - _wgslsmith_f_op_f32(var_1.a * -969f)))));
    var var_3 = ~max(~vec3<i32>(-2161i, _wgslsmith_sub_i32(-2147483647i, -2147483647i), u_input.c.x | -2147483647i), _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-12778i, 41729i, -59545i), vec3<i32>(-1i, u_input.c.x, -2147483647i))), vec3<i32>(0i, u_input.d.x, _wgslsmith_clamp_i32(1i, -58962i, u_input.c.x))));
    var_3 = func_4(-712f, Struct_1(u_input.e, func_2()), var_3.x, func_1(func_1(Struct_1(u_input.a, ~150922u)).b));
    var_3 = firstTrailingBit(-countOneBits(vec3<i32>(40312i, 2147483647i, -7143i) >> (vec3<u32>(0u, var_1.b.a.x, 32442u) % vec3<u32>(32u)))) & ~vec3<i32>(var_3.x, -u_input.c.x, -var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(var_3.x & _wgslsmith_mult_i32(var_3.x, var_3.x)), var_1.b.a.wy, vec3<u32>(var_1.b.b, ~var_1.b.a.x, var_1.b.a.x ^ (countOneBits(u_input.e.x) << (var_1.b.b % 32u))), var_1.b.b);
}

