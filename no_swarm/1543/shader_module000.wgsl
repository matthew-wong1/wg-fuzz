struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<f32>;

var<private> global2: i32 = -45670i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = global1.yz;
    var var_1 = Struct_5(~u_input.d.zx, global1.x, Struct_4(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), u_input.d.zy, Struct_1(vec2<bool>(true, true), -u_input.d.x & firstLeadingBit(37821i), _wgslsmith_mult_u32(global0.x, 1u), 2147483647i), reverseBits(-2147483647i)));
    var var_2 = firstTrailingBit(u_input.b);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -1323f), vec3<f32>(global1.x, 1071f, 2072f), var_1.c.c.a.x))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_f_op_f32(global1.x - -1286f), _wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(f32(-1f) * -955f))) + vec3<f32>(_wgslsmith_div_f32(357f, var_0.x), global1.x, -2506f)));
    let var_3 = ~(~reverseBits(abs(vec3<u32>(global0.x, 13439u, 62084u) ^ vec3<u32>(65648u, 0u, var_1.c.c.c))));
    return ~(-abs(u_input.d.x));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> i32 {
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, -2147483647i), u_input.b);
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = vec2<i32>(func_4(_wgslsmith_f_op_f32(select(-1643f, _wgslsmith_f_op_f32(-arg_0), true)), Struct_4(Struct_2(vec3<bool>(false, true, true)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.b) | vec2<i32>(u_input.b, u_input.b)), Struct_1(vec2<bool>(true, true), u_input.b ^ u_input.d.x, countOneBits(0u), 0i), _wgslsmith_clamp_i32(~u_input.b, func_3(), u_input.d.x))), max(func_4(_wgslsmith_f_op_f32(-1f), Struct_4(Struct_2(vec3<bool>(false, true, false)), u_input.d.yy, Struct_1(vec2<bool>(false, false), -2147483647i, 0u, u_input.d.x), _wgslsmith_sub_i32(2147483647i, u_input.b))), u_input.b));
    var_0 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.d.yy, vec2<i32>(2147483647i, 22283i)), ~select(u_input.d.zz, firstLeadingBit(vec2<i32>(var_0.x, 0i)), vec2<bool>(true, true)));
    var var_1 = Struct_3(Struct_1(vec2<bool>((4294967295u | u_input.e.x) < ~1u, global1.x <= arg_0), max(var_0.x, ~(~25382i)), global0.x ^ 33988u, select(_wgslsmith_mod_i32(var_0.x, firstTrailingBit(0i)), -2147483647i, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))), Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), false), 2147483647i, ~16076u >> ((abs(1u) << (~u_input.a % 32u)) % 32u), -(i32(-1i) * -1i) ^ countOneBits(~u_input.d.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1099f)) * arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -893f), -713f, var_1.b.a.x)))));
    var var_3 = u_input.e;
    return 1i;
}

fn func_1() -> StorageBuffer {
    let var_0 = -1i;
    let var_1 = u_input.d.xx & (vec2<i32>(u_input.b, func_2(440f, _wgslsmith_f_op_f32(-759f - 253f))) >> (global0.zz % vec2<u32>(32u)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, -709f, -280f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1084f, global1.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1766f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-695f, global1.x, -1000f))))));
    return StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_f_op_f32(690f - global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.x)))), global1.x)), global1.x), -((var_1.x >> (~u_input.e.x % 32u)) << (abs(global0.x) % 32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(max(-338f, global1.x)), _wgslsmith_f_op_f32(-global1.x))))), min(max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 0i) << (vec2<u32>(u_input.c, 50729u) % vec2<u32>(32u)), u_input.d.yx), -_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), u_input.d.zy)), ~abs(-u_input.d.xy)), min(max(vec4<u32>(_wgslsmith_mod_u32(global0.x, 4294967295u), _wgslsmith_mod_u32(4294967295u, global0.x), firstLeadingBit(0u), global0.x), ~vec4<u32>(global0.x, 0u, 48984u, global0.x)), ~(abs(vec4<u32>(global0.x, 1u, u_input.c, 0u)) >> ((vec4<u32>(131586u, u_input.a, global0.x, 62466u) >> (vec4<u32>(global0.x, u_input.e.x, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(-1420f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1.x)))), global1.x);
    let x = u_input.a;
    s_output = func_1();
}

