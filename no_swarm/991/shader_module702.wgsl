struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(38391u, 0u, 4294967295u, 0u);

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_1(vec2<i32>(3143i, 17888i))), Struct_4(Struct_1(vec2<i32>(-16800i, -18468i))), Struct_4(Struct_1(vec2<i32>(2147483647i, 20983i))), Struct_4(Struct_1(vec2<i32>(0i, 1i))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.a.x - -650f), arg_0.c.a.x, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_div_f32(-998f, arg_0.c.a.x)), _wgslsmith_f_op_f32(min(-371f, arg_0.c.a.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b, 496f, arg_0.b, 1654f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, arg_0.b, arg_0.b, arg_0.b)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, arg_0.b, arg_0.b, arg_0.b))))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-15738i, arg_0.a.a.x), vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 1i)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_0.c.b.a.x), vec2<i32>(u_input.a, 0i), arg_0.c.c.a), arg_0.c.c.a ^ arg_0.a.a)));
    let var_2 = var_1.a;
    var var_3 = Struct_1(-firstLeadingBit(select(~vec2<i32>(var_1.a.a.x, var_2.a.x), var_1.a.a, vec2<bool>(true, true))));
    let var_4 = var_1.a;
    return !select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(false, true, false, false))), true), vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), !any(vec2<bool>(true, false))), vec2<bool>(true, true));
}

fn func_2() -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1381f + _wgslsmith_f_op_f32(trunc(-756f))) - 203f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(449f * -849f), -2030f, all(vec2<bool>(false, false)))))));
    let var_2 = func_3(Struct_3(Struct_1(vec2<i32>(_wgslsmith_mult_i32(1i, 1i), _wgslsmith_mult_i32(u_input.a, 10579i))), var_1.x, Struct_2(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(-var_1.x)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-7593i, u_input.a), vec2<i32>(2147483647i, 17586i))), Struct_1(vec2<i32>(44719i, -2147483647i) | vec2<i32>(0i, var_0)))));
    let var_3 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(126f)))))));
    return vec4<u32>(global0.x, firstTrailingBit(abs(~_wgslsmith_mult_u32(global0.x, 1u))), 83005u, select(abs(global0.x), ~18513u, var_2.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_u32(~func_2() & vec4<u32>(~0u, arg_0.x, max(0u, arg_0.x), global0.x), firstLeadingBit(select(vec4<u32>(arg_0.x, global0.x, arg_0.x, global0.x), vec4<u32>(global0.x, 38356u, 4294967295u, global0.x), false) & vec4<u32>(16303u, 4294967295u, global0.x, global0.x))) & vec4<u32>(0u | select(arg_0.x, global0.x, all(vec4<bool>(false, arg_2, arg_2, arg_2))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(13131u, 4294967295u, arg_0.x, global0.x) | vec4<u32>(43097u, arg_0.x, 1u, arg_0.x), ~vec4<u32>(global0.x, global0.x, arg_0.x, arg_0.x)), 4294967295u, ~0u);
    var var_1 = ~_wgslsmith_mult_u32(1u, min(9637u, 0u));
    var var_2 = true;
    var_2 = true;
    let var_3 = arg_1.c.c;
    return _wgslsmith_mod_u32(~1u >> (~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 72287u, arg_0.x, 50183u)), ~vec4<u32>(52270u, 4294967295u, 74782u, arg_0.x)) % 32u), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(global0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 1u, global0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.x, 0u), global0.zzx)), ~(~global0.x)), global0.x, firstLeadingBit(_wgslsmith_add_u32(global0.x, reverseBits(global0.x))));
    global0 = ~(~(firstTrailingBit(vec4<u32>(1u, 4724u, 40827u, global0.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.x, 25474u, 4294967295u), vec4<u32>(global0.x, 4294967295u, 111942u, 61327u)) % vec4<u32>(32u)))) | vec4<u32>(_wgslsmith_dot_vec3_u32(global0.yzx, global0.xww), _wgslsmith_mult_u32(global0.x, _wgslsmith_add_u32(global0.x, 1u)), global0.x, ~(func_1(vec2<u32>(4294967295u, 0u), Struct_3(Struct_1(vec2<i32>(24139i, -40711i)), -459f, Struct_2(vec4<f32>(-1187f, -770f, 1373f, -337f), Struct_1(vec2<i32>(u_input.a, u_input.a)), Struct_1(vec2<i32>(u_input.a, 2147483647i)))), true) ^ global0.x));
    global0 = abs((vec4<u32>(_wgslsmith_add_u32(global0.x, 31371u), ~global0.x, func_1(global0.yy, Struct_3(Struct_1(vec2<i32>(-2147483647i, u_input.a)), -1000f, Struct_2(vec4<f32>(-904f, 1453f, -749f, -1366f), Struct_1(vec2<i32>(u_input.a, u_input.a)), Struct_1(vec2<i32>(-1i, u_input.a)))), true), 29928u) >> (reverseBits(~vec4<u32>(47631u, global0.x, 13751u, global0.x)) % vec4<u32>(32u))) << ((~vec4<u32>(global0.x, global0.x, 14646u, 0u) | ~min(vec4<u32>(4294967295u, 69011u, global0.x, 1u), vec4<u32>(global0.x, global0.x, 4294967295u, 3110u))) % vec4<u32>(32u)));
    var var_0 = vec2<u32>(abs(~(~global0.x)), global0.x);
    var_0 = global0.xw;
    var_0 = vec2<u32>(58449u, 1u | ~_wgslsmith_clamp_u32(var_0.x, firstLeadingBit(global0.x), func_2().x));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_sub_i32(~u_input.a, 27528i)), ~abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(52838i, 0i, -40969i, -31227i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i))), vec2<f32>(-2013f, 984f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-283f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-374f)))) + -868f));
}

