struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(arg_3.c.x, _wgslsmith_add_u32(arg_3.c.x, arg_1.c.x >> (32323u % 32u)) << (~(arg_3.c.x | arg_1.c.x) % 32u)) >> (min(12299u, 4294967295u) % 32u);
    var var_1 = ~reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(15771i, arg_0.a, arg_1.b.x), _wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, arg_3.b.x, -1i), vec3<i32>(arg_1.b.x, u_input.a.x, u_input.b.x))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(158f + _wgslsmith_f_op_f32(arg_3.e - arg_3.e)), 2571f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(398f, -787f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(957f, arg_3.e) * vec2<f32>(arg_1.e, -504f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, 552f)), vec2<f32>(arg_1.e, arg_1.e))))));
    var var_3 = _wgslsmith_f_op_f32(min(arg_3.e, var_2.x));
    var var_4 = Struct_2(_wgslsmith_sub_i32(min(_wgslsmith_div_i32(~23004i, arg_1.b.x ^ -6676i), arg_2.x), abs(~(-1i))));
    return arg_3.a;
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(arg_0.x, true), vec4<i32>(_wgslsmith_dot_vec3_i32(-(u_input.b ^ vec3<i32>(u_input.b.x, -2147483647i, 820i)), u_input.a.wxw), firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, u_input.c) & -1i), firstLeadingBit(-(~(-2868i))), u_input.b.x), ~firstLeadingBit(vec4<u32>(1u, ~82945u, 559u, abs(1u))), ~1u, 176f);
    var var_1 = vec3<bool>(!all(!func_2(Struct_2(216i), var_0, vec2<i32>(46119i, var_0.b.x), Struct_1(var_0.a, vec4<i32>(-3302i, var_0.b.x, var_0.b.x, 21213i), vec4<u32>(1u, 4294967295u, 19660u, 42786u), var_0.d, 878f))), var_0.a.x, var_0.a.x);
    let var_2 = var_0;
    var_1 = select(!(!select(!vec3<bool>(var_2.a.x, true, false), vec3<bool>(arg_0.x, var_1.x, false), all(vec4<bool>(false, false, false, var_2.a.x)))), select(!vec3<bool>(false, true, !arg_0.x), select(!(!vec3<bool>(arg_0.x, false, false)), select(vec3<bool>(arg_0.x, true, true), select(vec3<bool>(arg_0.x, var_1.x, var_2.a.x), vec3<bool>(var_1.x, var_1.x, var_2.a.x), vec3<bool>(var_0.a.x, true, var_1.x)), !var_0.a.x), select(select(vec3<bool>(false, var_2.a.x, var_1.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, var_0.a.x, var_1.x)), vec3<bool>(var_2.a.x, true, false), var_2.a.x && var_2.a.x)), vec3<bool>(func_2(Struct_2(-2147483647i), var_2, vec2<i32>(u_input.a.x, var_2.b.x), Struct_1(vec2<bool>(arg_0.x, true), vec4<i32>(u_input.c, var_0.b.x, u_input.c, -1i), var_2.c, var_2.d, var_2.e)).x, select(func_2(Struct_2(var_0.b.x), var_0, u_input.a.xw, Struct_1(var_2.a, u_input.a, var_0.c, var_2.c.x, var_2.e)).x, true, true), select(var_2.a.x | true, var_2.a.x, false))), var_0.a.x);
    var var_3 = var_2.c.yyz;
    return select(vec2<bool>(false, func_2(Struct_2(~(-1i)), Struct_1(!arg_0, var_0.b, ~var_0.c, _wgslsmith_div_u32(var_3.x, var_3.x), -615f), var_2.b.zx, var_0).x), func_2(Struct_2(select(u_input.c, -1i, var_2.a.x) & var_2.b.x), Struct_1(vec2<bool>(true, true), select(vec4<i32>(var_2.b.x, 4761i, -1331i, 2147483647i) | vec4<i32>(var_0.b.x, 1i, u_input.c, var_0.b.x), u_input.a, select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_0.a.x, true, false, true), var_1.x)), ~vec4<u32>(0u, var_0.c.x, var_2.c.x, 4294967295u), 0u, var_2.e), vec2<i32>(0i, ~u_input.b.x), Struct_1(!select(var_2.a, arg_0, arg_0.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, 42156i, u_input.a.x, u_input.a.x)), -vec4<i32>(0i, -2147483647i, var_2.b.x, var_2.b.x)), _wgslsmith_div_vec4_u32(max(var_2.c, vec4<u32>(var_2.d, var_2.c.x, 1u, var_2.d)), vec4<u32>(39034u, var_2.c.x, 1u, var_3.x)), 1u << (var_3.x % 32u), _wgslsmith_f_op_f32(abs(var_2.e)))), true);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_1(select(!(!(!vec2<bool>(arg_0, arg_0))), func_3(!func_2(Struct_2(20928i), Struct_1(vec2<bool>(arg_0, arg_0), vec4<i32>(67640i, u_input.a.x, -1i, 0i), vec4<u32>(4294967295u, 16357u, 0u, 4294967295u), 29570u, -1000f), vec2<i32>(-2147483647i, u_input.b.x), Struct_1(vec2<bool>(false, arg_0), vec4<i32>(-34497i, u_input.b.x, u_input.c, u_input.b.x), vec4<u32>(55626u, 1u, 83991u, 21033u), 0u, 1435f))), !arg_0), ~min(u_input.a, u_input.a), vec4<u32>(~countOneBits(_wgslsmith_mod_u32(0u, 16790u)), ~4294967295u, 1u, ~(~abs(1u))), 4294967295u, _wgslsmith_f_op_f32(floor(601f)));
    let var_1 = Struct_2(~(-u_input.c ^ u_input.a.x) | _wgslsmith_mod_i32(select(var_0.b.x, 2227i, var_0.a.x) & firstTrailingBit(u_input.c), var_0.b.x));
    let var_2 = 1i;
    var var_3 = vec3<bool>(_wgslsmith_div_f32(-454f, -230f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) + _wgslsmith_f_op_f32(floor(-1611f))) - 1f), true, arg_0);
    let var_4 = var_1;
    return var_0.e;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = vec2<bool>(true, true);
    let var_2 = !select(var_1, var_1, any(!(!vec3<bool>(var_1.x, var_1.x, var_1.x))));
    var var_3 = vec3<u32>(~min(1u, ~_wgslsmith_mult_u32(0u, 4294967295u)), 4294967295u, countOneBits(1u));
    var_3 = vec3<u32>(var_3.x, select(0u, var_3.x, false), ~1u | var_3.x);
    return Struct_1(select(vec2<bool>(!func_2(Struct_2(-2147483647i), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 4725i, 1i, var_0.x), vec4<u32>(20786u, var_3.x, 31033u, 1u), var_3.x, arg_0.x), u_input.b.yx, Struct_1(vec2<bool>(false, var_1.x), u_input.a, vec4<u32>(var_3.x, var_3.x, 1053u, var_3.x), 11160u, arg_0.x)).x, any(!vec4<bool>(var_1.x, var_2.x, var_2.x, var_2.x))), vec2<bool>(func_3(vec2<bool>(false, var_2.x)).x, !(u_input.c <= 1i)), any(select(func_3(vec2<bool>(var_2.x, var_1.x)), var_2, false))), var_0, select(select(countOneBits(vec4<u32>(0u, 4294967295u, 48373u, 4294967295u)), (vec4<u32>(63701u, var_3.x, var_3.x, var_3.x) & vec4<u32>(var_3.x, 7115u, var_3.x, 22700u)) ^ firstTrailingBit(vec4<u32>(22453u, 107309u, 1u, 51655u)), false), ~select(countOneBits(vec4<u32>(0u, 41858u, 4294967295u, 21480u)), vec4<u32>(var_3.x, 4120u, var_3.x, 0u), any(vec2<bool>(var_2.x, true))), select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_2.x, var_2.x), var_1.x), !vec4<bool>(true, false, false, var_1.x)), vec4<bool>(true, false, true, all(vec3<bool>(var_2.x, var_2.x, var_1.x))), select(vec4<bool>(var_1.x, false, false, var_2.x), !vec4<bool>(false, true, true, var_1.x), true))), 0u, -421f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(false)), _wgslsmith_f_op_f32(327f - -1601f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(false)), 580f))));
    var var_1 = func_4(vec2<f32>(1016f, var_0.a.e), _wgslsmith_f_op_f32(var_0.a.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.e) * var_0.a.e)));
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, -1228f)) * vec2<f32>(var_0.a.e, 1462f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.a.e)))))).b.x);
    var_1 = var_0.a;
    var var_3 = Struct_1(!(!var_1.a), var_0.a.b, var_0.a.c, firstLeadingBit(var_0.a.c.x << (var_0.a.d % 32u)), _wgslsmith_f_op_f32(func_1(true)));
    var var_4 = var_0.a;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.e - var_0.a.e) * -1536f) * var_3.e) - _wgslsmith_div_f32(602f, _wgslsmith_f_op_f32(-var_0.a.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(false, var_0.a.a.x, var_4.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -803f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.e * var_0.a.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f) - 1623f))));
    let x = u_input.a;
    s_output = StorageBuffer(39674u, var_2.a, _wgslsmith_mult_u32(var_1.d, ~1u | var_4.c.x));
}

