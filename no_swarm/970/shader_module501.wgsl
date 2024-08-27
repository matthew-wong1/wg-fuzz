struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_1(420f, vec2<u32>(u_input.e.x, u_input.e.x), countOneBits(firstLeadingBit(-max(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, arg_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1405f, 1336f)) - _wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2917f + -2003f)))) * 117f));
    var var_1 = arg_0;
    let var_2 = arg_0;
    return vec4<bool>(true, var_1.b | (var_0.d == -1000f), any(arg_1.xz), any(!select(arg_1, arg_1, arg_1)) & true);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.e.x >> (u_input.d.x % 32u);
    var_0 = u_input.e.x & ~u_input.e.x;
    let var_1 = !any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true)));
    var_0 = u_input.d.x;
    var var_2 = func_3(Struct_2(_wgslsmith_add_i32(8603i, u_input.b), all(!vec4<bool>(var_1, var_1, var_1, var_1)) | (var_1 && (52410u == u_input.e.x))), select(vec4<bool>(var_1 && true, true, true, any(vec2<bool>(true, true))), select(!select(vec4<bool>(true, var_1, false, var_1), vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(false, false, var_1, true)), !vec4<bool>(var_1, var_1, false, var_1), false), vec4<bool>(any(vec3<bool>(false, var_1, true)), var_1, !(false && var_1), all(!vec4<bool>(var_1, var_1, false, false)))));
    return Struct_1(-688f, _wgslsmith_div_vec2_u32(u_input.d.wz, select(u_input.e.zz, ~vec2<u32>(u_input.d.x, u_input.e.x), vec2<bool>(any(var_2.wyz), select(var_2.x, false, var_2.x)))), _wgslsmith_add_vec2_i32((countOneBits(vec2<i32>(u_input.c, 40773i)) << (u_input.e.yz % vec2<u32>(32u))) >> (u_input.e.xx % vec2<u32>(32u)), reverseBits(vec2<i32>(abs(-17048i), u_input.b))), 1f);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = arg_2;
    let var_1 = ~vec2<u32>(~func_2().b.x, _wgslsmith_dot_vec4_u32(u_input.d, u_input.e & u_input.e)) << (_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(37783u, arg_1.x) << (arg_1.wy % vec2<u32>(32u))), u_input.e.wx, u_input.d.zx) % vec2<u32>(32u));
    var var_2 = select(vec3<u32>(18472u, ~1u, max(var_1.x, 67255u)), vec3<u32>(arg_1.x, 1u, max(u_input.e.x, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a)) != _wgslsmith_div_f32(arg_2.a, var_0.d));
    var_2 = u_input.d.xyz;
    let var_3 = vec2<i32>(-_wgslsmith_mod_i32(var_0.c.x, firstTrailingBit(33706i)), var_0.c.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d + 378f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2574f)) * var_0.a), -139f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(679f, _wgslsmith_div_f32(-1002f, var_0.a), _wgslsmith_f_op_f32(1146f * 175f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, arg_2.d, arg_2.d) + vec3<f32>(arg_2.a, var_0.a, var_0.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1263f, arg_2.a, 403f) + vec3<f32>(608f, var_0.d, -1404f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1311f, arg_2.a, -694f) + vec3<f32>(-974f, -1417f, var_0.d)))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1304f)), _wgslsmith_f_op_f32(sign(-818f)), _wgslsmith_f_op_f32(var_0.d - arg_2.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.d, 1000f, arg_2.d))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-889f, -1000f, arg_2.a)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(~0u, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.d.x, 1u, 1u), u_input.e), func_2(), select(firstTrailingBit(vec4<i32>(1i, u_input.a, -54503i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(14873i, u_input.b, 0i, u_input.b), vec4<i32>(u_input.c, 11776i, 2147483647i, u_input.a), vec4<i32>(-1i, -2147483647i, 30842i, 2147483647i)), any(vec2<bool>(false, true))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1384f, -685f, 899f)), _wgslsmith_div_vec3_f32(vec3<f32>(1236f, 1051f, -787f), vec3<f32>(-732f, -1022f, 1000f))))))));
    let var_1 = Struct_2(37449i, false);
    var var_2 = var_1.a;
    var_2 = var_1.a;
    var_2 = ~(~_wgslsmith_mult_i32(var_1.a << (abs(0u) % 32u), -2147483647i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f - 1205f)))), u_input.e.zw, vec2<i32>(-u_input.a, u_input.c | _wgslsmith_mult_i32(1i, u_input.a)), _wgslsmith_f_op_f32(518f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = _wgslsmith_div_i32(51002i, 16930i);
    let var_2 = true;
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1231f, -170f, var_0.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 520f, 917f)))))));
    let var_5 = -2016f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec4_i32(vec4<i32>(5358i, -1i, var_3.c.x, 28480i) ^ vec4<i32>(0i, 1i, 0i, -30193i), -(~vec4<i32>(var_0.c.x, -13200i, u_input.b, 1i))), select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-45664i, var_1, 34625i, u_input.b), vec4<i32>(u_input.c, -55239i, var_1, u_input.a)), vec4<i32>(1i, 1i, var_3.c.x, 1i)), ~vec4<i32>(var_0.c.x, var_0.c.x, -1242i, 14519i), var_2)), _wgslsmith_f_op_f32(exp2(var_0.d)), vec3<i32>(-16624i, var_0.c.x, ~(-16377i)) | -select(vec3<i32>(46971i, 1i, var_0.c.x), vec3<i32>(28245i, -2147483647i, 0i), true), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -546f));
}

