struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = vec4<f32>(1295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.e))))), var_0.e, var_0.e);
    global1 = array<vec2<f32>, 10>();
    var var_2 = 26635u;
    let var_3 = Struct_1(select(vec3<bool>(arg_0.c.x, !any(vec3<bool>(arg_0.b, arg_0.c.x, arg_0.c.x)), false), vec3<bool>(!all(var_0.c), true, any(vec2<bool>(arg_0.b, arg_0.a.x))), !any(vec3<bool>(true, true, true))), (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.e), -857f)) < var_1.x) && true, !var_0.c, i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_mod_i32(-16472i, 2249i), 2147483647i << (u_input.a % 32u)), arg_0.e);
    return !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-191f)) * _wgslsmith_f_op_f32(-var_3.e)) >= arg_0.e, !(!var_3.a.x), !(var_0.c.x | (var_3.d > 15695i)), !(63320i > _wgslsmith_add_i32(15677i, var_3.d)));
}

fn func_2() -> vec3<bool> {
    global0 = false;
    global1 = array<vec2<f32>, 10>();
    let var_0 = Struct_1(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true)), true, !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(Struct_1(vec3<bool>(false, true, true), true, vec4<bool>(true, true, false, true), 37329i, 929f)), vec4<bool>(any(vec2<bool>(false, true)), 0u == u_input.a, false, true)), -14229i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2707f + 1282f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-979f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -163f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1552f - 1000f))))));
    global1 = array<vec2<f32>, 10>();
    var var_1 = (_wgslsmith_div_vec2_i32(countOneBits(firstTrailingBit(u_input.b.zz)), vec2<i32>(8884i, ~var_0.d)) & _wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.b.xx, u_input.b.zx), ~vec2<i32>(u_input.b.x, -16795i))) & u_input.b.xz;
    return !vec3<bool>(any(func_3(Struct_1(var_0.c.zwy, false, vec4<bool>(false, true, var_0.b, var_0.c.x), u_input.b.x, var_0.e)).yzy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e - var_0.e))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-208f, var_0.e, var_0.c.x))), (948f != _wgslsmith_div_f32(var_0.e, 1102f)) && true);
}

fn func_1() -> i32 {
    var var_0 = -(i32(-1i) * -u_input.b.x);
    global0 = true;
    global1 = array<vec2<f32>, 10>();
    global1 = array<vec2<f32>, 10>();
    var var_1 = !select(func_2(), vec3<bool>(select(true, true, true), true, func_3(Struct_1(vec3<bool>(true, false, true), true, vec4<bool>(false, false, false, false), u_input.b.x, -1000f)).x), func_2());
    return select(-32255i, -26857i, all(!var_1.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(35654u, 4964u, 6466u) & vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(u_input.a, u_input.a, 97544u))));
    global0 = _wgslsmith_clamp_i32(u_input.b.x, -u_input.b.x, func_1()) < 31986i;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(737f, -104f, 143f, -750f) - vec4<f32>(-1000f, -1096f, -1062f, 1175f)) + vec4<f32>(118f, 296f, -463f, 692f)) * vec4<f32>(_wgslsmith_f_op_f32(round(239f)), -1000f, _wgslsmith_f_op_f32(289f - -1246f), 1355f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-996f, -106f, -470f, 259f), vec4<f32>(-781f, -395f, -579f, 594f)))) - vec4<f32>(-479f, -964f, 645f, _wgslsmith_f_op_f32(-1076f * -585f)))))));
    var var_2 = firstLeadingBit(-(~vec2<i32>(2171i, u_input.b.x) << (_wgslsmith_sub_vec2_u32(var_0.yx, select(var_0.zx, var_0.xy, false)) % vec2<u32>(32u))));
    let var_3 = Struct_1(!func_2(), u_input.a >= u_input.a, vec4<bool>(true, !(!(-2147483647i >= u_input.b.x)), false, true), -16714i, var_1.x);
    var_2 = u_input.b.xz;
    var var_4 = 1248f;
    global1 = array<vec2<f32>, 10>();
    var var_5 = Struct_1(var_3.c.zxw, !(!(all(var_3.c) && var_3.c.x)), vec4<bool>(any(func_3(Struct_1(vec3<bool>(false, var_3.c.x, var_3.a.x), true, vec4<bool>(true, var_3.a.x, false, false), 1i, 1000f))), var_3.c.x, func_3(var_3).x, var_3.a.x), 66510i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(u_input.a >> (u_input.a % 32u), u_input.a, 1u, ~var_0.x)), -672f, i32(-1i) * -(~37446i));
}

