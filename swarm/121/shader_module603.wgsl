struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 56758i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global1 = -firstLeadingBit(-2147483647i);
    var var_0 = arg_1;
    var var_1 = ~(-(abs(u_input.c) ^ u_input.c));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2315f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(684f + _wgslsmith_f_op_f32(max(-236f, 873f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 1242f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(478f)))) * -1207f));
    var var_3 = func_2();
    return ~(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(-2147483647i, 12252i, u_input.d, -11891i)), -vec4<i32>(u_input.c.x, -51742i, var_1.x, -1165i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-18196i, 31624i, 1i, 0i), vec4<i32>(-16364i, u_input.c.x, -2147483647i, u_input.d))) << (firstLeadingBit(abs(vec4<u32>(4294967295u, 51398u, u_input.b.x, u_input.a.x)) | ~vec4<u32>(0u, 1u, u_input.a.x, 27743u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = u_input.b.x;
    let var_1 = 5078i & arg_2.x;
    let var_2 = Struct_1(-379f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1435f - arg_1.b), _wgslsmith_f_op_f32(max(1543f, arg_0)))))));
    let var_3 = !func_2();
    var var_4 = var_3;
    return !select(!vec4<bool>(all(vec2<bool>(var_3, true)), select(var_3, true, var_3), var_3, any(vec3<bool>(true, var_3, true))), select(vec4<bool>(any(vec2<bool>(var_3, true)), !var_3, var_3, false), select(select(vec4<bool>(true, var_3, false, var_3), vec4<bool>(true, var_3, false, var_3), vec4<bool>(var_3, var_3, var_3, var_3)), !vec4<bool>(true, false, var_3, var_3), select(vec4<bool>(false, var_3, false, var_3), vec4<bool>(var_3, var_3, false, false), vec4<bool>(true, var_3, true, false))), var_3), !(!all(vec3<bool>(var_3, var_3, var_3))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> bool {
    global0 = arg_1.x;
    let var_0 = !vec2<bool>(!func_2(), select(-arg_2.x < -arg_2.x, _wgslsmith_f_op_f32(trunc(2115f)) > _wgslsmith_f_op_f32(f32(-1f) * -1520f), all(vec3<bool>(true, false, arg_0.x))));
    let var_1 = Struct_1(-487f, -2495f);
    let var_2 = select(func_4(var_1.a, var_1, func_3(Struct_1(_wgslsmith_f_op_f32(floor(108f)), -1764f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -729f), var_1.b)), var_1), func_4(var_1.b, Struct_1(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(f32(-1f) * -145f)), _wgslsmith_f_op_f32(-var_1.b)), vec4<i32>(~(-1018i), 19550i, _wgslsmith_sub_i32(-1i, 17618i), ~u_input.d), var_1), !select(!func_4(-500f, Struct_1(var_1.a, var_1.b), vec4<i32>(u_input.c.x, -2147483647i, arg_2.x, -23090i), Struct_1(var_1.a, -1828f)), vec4<bool>(true | arg_0.x, true, var_0.x, arg_0.x), vec4<bool>(all(vec4<bool>(arg_0.x, arg_1.x, arg_1.x, false)), -516f < var_1.b, true, true)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))))));
    return all(vec3<bool>(all(var_2), var_0.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - 837f), true))), _wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(286f - 737f), _wgslsmith_f_op_f32(f32(-1f) * -522f)) - _wgslsmith_f_op_f32(f32(-1f) * -1721f))));
    global0 = var_0.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b)))) * var_0.b);
    var var_1 = ~u_input.a;
    var var_2 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(func_1(vec2<bool>(true, true), vec2<bool>(true, false), vec2<i32>(u_input.c.x, u_input.c.x)), var_0.a == var_0.a)));
    var_2 = !(!(!select(vec2<bool>(true, false), vec2<bool>(true, var_2.x), select(vec2<bool>(false, true), vec2<bool>(var_2.x, true), true))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 536f), var_0.b);
    var_2 = select(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1191f), Struct_1(var_3.a, var_0.a), min(vec4<i32>(0i << (0u % 32u), -10968i, -u_input.c.x, u_input.c.x), reverseBits(func_3(Struct_1(-401f, 203f), Struct_1(var_3.b, 1414f)))), Struct_1(_wgslsmith_div_f32(-1096f, _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)))).yw, !(!select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, true), any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), vec2<bool>(!func_4(-1683f, Struct_1(1655f, -2024f), vec4<i32>(0i, -19444i, 0i, -79673i), Struct_1(var_0.a, var_0.b)).x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_f_op_f32(trunc(-640f)), ~_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.c.zx, vec2<i32>(1i, 0i)), u_input.c.yy), _wgslsmith_sub_i32(_wgslsmith_mod_i32(43738i, ~u_input.c.x ^ ~u_input.c.x), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, -1i, 18425i, -1i), vec4<i32>(u_input.c.x, u_input.d, 2147483647i, 11773i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1341f, _wgslsmith_f_op_f32(f32(-1f) * -724f))));
}

