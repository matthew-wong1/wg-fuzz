struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> f32 {
    let var_0 = vec3<u32>(u_input.a << (~u_input.a % 32u), u_input.a, 4294967295u);
    var var_1 = ~var_0.x;
    let var_2 = Struct_2(true, u_input.c);
    let var_3 = select(arg_2.xy, arg_3, arg_3);
    let var_4 = 1u;
    return 1705f;
}

fn func_3() -> i32 {
    var var_0 = Struct_2(!any(vec3<bool>(true, true, true)), u_input.c);
    var_0 = Struct_2(any(vec4<bool>(var_0.a, var_0.a, all(vec2<bool>(false, var_0.a)), true)) || true, u_input.c);
    var var_1 = Struct_2(true, ~(-(~u_input.c) << (firstLeadingBit(vec3<u32>(u_input.a, u_input.d, u_input.a)) % vec3<u32>(32u))));
    let var_2 = min(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(var_0.b.x, var_0.b.x, u_input.c.x), _wgslsmith_mult_vec3_i32(~vec3<i32>(5769i, 1i, var_1.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 3642i, 29007i), vec3<i32>(0i, var_1.b.x, 46391i)))), var_0.b), vec3<i32>(~29137i, _wgslsmith_add_i32(var_0.b.x, select(-2147483647i, 6311i, true)), var_1.b.x));
    var_0 = Struct_2(var_1.a || all(vec3<bool>(true && var_1.a, all(vec4<bool>(var_1.a, true, true, true)), true)), u_input.c);
    return _wgslsmith_sub_i32(var_2.x, -var_2.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(false, ~(vec3<i32>(15172i, u_input.b, -14392i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, 1434i), vec3<i32>(u_input.c.x, u_input.c.x, 1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1981f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1170f, 513f)), Struct_2(!(!(!arg_1)), vec3<i32>(u_input.b | -u_input.c.x, ~23728i, u_input.b)));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(var_0.d.b.x, u_input.b), u_input.b, var_0.d.b.x, var_0.a.b.x);
    let var_2 = Struct_1(any(!(!(!vec4<bool>(false, var_0.d.a, false, arg_1)))), vec2<i32>(var_0.a.b.x, _wgslsmith_sub_i32(1201i, _wgslsmith_div_i32(var_0.a.b.x, -15154i))));
    var_1 = vec4<i32>(func_3(), 33265i, ~var_0.a.b.x, countOneBits(-23007i >> (min(_wgslsmith_sub_u32(39228u, u_input.d), u_input.a) % 32u)));
    var_1 = _wgslsmith_mult_vec4_i32(-select(~vec4<i32>(-2147483647i, u_input.c.x, var_2.b.x, -1i), countOneBits(-vec4<i32>(u_input.c.x, 68769i, 18905i, 2147483647i)), select(!vec4<bool>(false, false, var_2.a, var_2.a), !vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), arg_1)), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c, var_0.a.b), func_3(), min(var_0.a.b.x, var_0.d.b.x), min(var_2.b.x, var_0.d.b.x)));
    return var_0.d;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f) * -105f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f + 1022f) + 1175f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f * -112f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-338f, -2570f) - _wgslsmith_f_op_f32(f32(-1f) * -1349f))), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2200f * _wgslsmith_div_f32(192f, 1871f)))) - 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstTrailingBit(1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -408f), -1130f, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec2<bool>(true, all(vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(sign(339f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)), var_0.x, 289f, var_0.x);
    var var_2 = 5721u;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(i32(-1i) * -40416i, vec4<bool>(true, false, true, false), func_2(vec4<f32>(var_1.x, var_0.x, -375f, -1060f), false), u_input.d & u_input.a)) * -935f)), -1679f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(-2147483647i, vec4<bool>(true, true, true, 1i < u_input.c.x), Struct_2(func_2(vec4<f32>(var_0.x, var_1.x, 334f, var_1.x), true).a, u_input.c), 0u)))), -161f);
    let var_3 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0.x, var_1.x) * vec4<f32>(1537f, -200f, 689f, var_0.x)), vec4<f32>(var_0.x, var_1.x, 1000f, 680f), u_input.b == 80222i))), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.x, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, 1975f, -770f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-186f, var_0.x, -267f, var_0.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1598f, 689f, 1446f, var_1.x))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -639f)))), var_0.x, func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 1046f, var_0.x, -160f)))), vec4<f32>(443f, -309f, 1f, 739f)), true));
    let x = u_input.a;
    s_output = StorageBuffer(13463i);
}

