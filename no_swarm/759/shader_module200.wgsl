struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.e.zwy, abs(_wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_1.a.x, var_0.a.x, var_0.b), var_0.a.ywy), ~arg_1.a.xyx)) & vec3<i32>(-abs(-20184i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.a.xyx, u_input.e.xyx), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, arg_1.a.x), vec3<i32>(-2147483647i, 1i, u_input.e.x))), 59511i));
    let var_2 = true;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_mod_i32(min(firstLeadingBit(arg_1.a.x ^ ~75i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.b, 1i), -1i)), -35576i);
    return _wgslsmith_div_vec4_i32(vec4<i32>(~countOneBits(13400i), 48004i, 2147483647i << ((u_input.a.x & _wgslsmith_mod_u32(37391u, var_3.d.x)) % 32u), 1i), u_input.e);
}

fn func_2() -> Struct_1 {
    return Struct_1(func_3((vec4<u32>(u_input.c, u_input.c, u_input.c, 19940u) | abs(vec4<u32>(u_input.c, 4294967295u, 0u, u_input.a.x))) & (vec4<u32>(54273u, u_input.c, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 1u, u_input.c, u_input.a.x) % vec4<u32>(32u))), Struct_1(vec4<i32>(reverseBits(-58465i), 1i, ~u_input.d, u_input.e.x), _wgslsmith_div_i32(-21955i & u_input.e.x, select(-20024i, 2147483647i, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1064f, 1936f, 1484f) * vec3<f32>(-725f, -638f, 881f)), reverseBits(abs(vec4<u32>(u_input.a.x, u_input.c, 44101u, 0u))), _wgslsmith_f_op_f32(sign(1704f)))), firstLeadingBit(~(-89194i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1311f, 1331f, 902f), vec3<f32>(102f, 396f, -2203f), false))) - vec3<f32>(_wgslsmith_div_f32(-764f, 897f), _wgslsmith_div_f32(-1720f, -1000f), _wgslsmith_f_op_f32(1426f + -1149f)))), abs(~vec4<u32>(4294967295u, 1u, 1u, u_input.c)) >> ((~(vec4<u32>(u_input.c, 109836u, 0u, 23802u) << (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) >> (vec4<u32>(min(146700u, u_input.a.x), ~21809u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1410f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(floor(1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1689f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, -1000f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -352f);
    var var_1 = countOneBits(u_input.e.x ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, 15597i) | _wgslsmith_mod_i32(1i, arg_0.b), -22950i & min(arg_2.x, -3217i)));
    let var_2 = all(select(!vec4<bool>(!arg_3.x, any(vec3<bool>(arg_3.x, true, true)), arg_3.x, true), select(select(vec4<bool>(false, true, arg_3.x, arg_3.x), !vec4<bool>(arg_3.x, false, true, true), true), vec4<bool>(all(vec4<bool>(false, arg_3.x, true, arg_3.x)), select(arg_3.x, false, false), u_input.a.x >= 0u, arg_3.x), any(select(vec3<bool>(true, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, true, true), vec3<bool>(true, false, arg_3.x)))), !vec4<bool>(any(vec3<bool>(arg_3.x, arg_3.x, true)), arg_3.x, all(vec4<bool>(arg_3.x, arg_3.x, true, true)), false)));
    var_1 = arg_2.x;
    let var_3 = func_2().d.x;
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>(u_input.c, 1u);
    var var_1 = ~(~var_0.x);
    let var_2 = func_4(func_2(), 0u, select(-(~u_input.b.yz), reverseBits(-vec2<i32>(0i, 1i)) & _wgslsmith_sub_vec2_i32(u_input.e.xy, -u_input.b.yx), true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(!any(vec2<bool>(true, false)), true), true));
    var_1 = _wgslsmith_mod_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(105077u, var_0.x), ~var_0)), 36781u);
    var var_3 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.yw, vec2<i32>(2211i, var_0.a.x)) | reverseBits(var_0.a.x), countOneBits(40162i) & (-9277i ^ u_input.d), 0i, -2147483647i)), u_input.e.x << (var_0.d.x % 32u), _wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1134f, var_0.c.x, 1518f))), var_0.c, select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))))))), vec4<u32>(13873u, 64664u, ~u_input.c, abs(~4294967295u)), -1395f);
    let var_2 = vec2<u32>(abs(0u), ~(~(~(var_1.d.x & 1u))));
    let var_3 = vec4<f32>(-404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1448f, var_1.c.x, true)))) - _wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(-var_0.c.x)))), var_1.c.x, _wgslsmith_f_op_f32(-var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_sub_i32(var_1.a.x << (var_1.d.x % 32u), abs(-1i)), var_0.b);
}

