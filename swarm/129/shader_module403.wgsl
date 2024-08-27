struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = 939f;
    var var_1 = vec4<bool>(true, all(arg_3.b.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) == _wgslsmith_f_op_f32(select(-478f, _wgslsmith_f_op_f32(-var_0), false)), arg_3.b.x);
    var var_2 = ~(~(~(vec2<i32>(arg_3.a, arg_3.a) >> (vec2<u32>(0u, arg_1.x) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, arg_3.a), _wgslsmith_div_vec2_i32(vec2<i32>(14615i, arg_3.a), vec2<i32>(1i, arg_3.a)))));
    var_1 = select(select(select(vec4<bool>(false, var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, arg_3.b.x)), !arg_3.b.x), vec4<bool>(var_1.x & arg_3.b.x, any(vec3<bool>(true, var_1.x, false)), var_1.x, all(var_1.ww)), vec4<bool>(!var_1.x, true, var_1.x, true)), !select(vec4<bool>(arg_3.b.x, var_1.x, arg_3.b.x, arg_3.b.x), vec4<bool>(var_1.x, false, arg_3.b.x, arg_3.b.x), true), !(!select(vec4<bool>(true, arg_3.b.x, true, true), vec4<bool>(true, var_1.x, false, false), vec4<bool>(true, false, true, false)))), select(vec4<bool>(true, any(select(vec2<bool>(var_1.x, arg_3.b.x), vec2<bool>(var_1.x, true), var_1.zz)), all(vec3<bool>(true, arg_3.b.x, arg_3.b.x)), arg_3.b.x), select(select(!vec4<bool>(true, arg_3.b.x, false, true), vec4<bool>(true, arg_3.b.x, false, arg_3.b.x), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(arg_3.b.x, arg_3.b.x, true, true), arg_3.b.x)), !(!vec4<bool>(var_1.x, arg_3.b.x, arg_3.b.x, arg_3.b.x)), arg_3.b.x), false), !select(!(!vec4<bool>(var_1.x, arg_3.b.x, var_1.x, var_1.x)), vec4<bool>(var_1.x, var_1.x, true, var_0 == -335f), any(!vec4<bool>(var_1.x, var_1.x, true, true))));
    let var_3 = arg_2.xx;
    return ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(~3263u)), u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.a;
    global0 = true;
    var var_1 = !arg_0.b.x;
    global0 = true;
    let var_2 = false == arg_0.b.x;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1510f + 236f)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(1u, u_input.b, vec4<f32>(761f, -614f, -355f, 1862f), arg_0), 58744u, max(57108u, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 38408u, 24156u) & u_input.b.wzz, reverseBits(vec3<u32>(u_input.a.x, 4294967295u, 37003u)), _wgslsmith_sub_vec3_u32(u_input.b.wwz, u_input.a.zxw))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    let var_0 = vec2<bool>(select(arg_1.x, any(select(vec3<bool>(arg_1.x, true, arg_1.x), arg_1.xwz, false)), false) & all(arg_1.xwz), all(!arg_1.yxx));
    global1 = _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, -24835i), 1i, ~1i, 2147483647i), abs(abs(vec4<i32>(2147483647i, 1i, -53601i, 2147483647i)))), _wgslsmith_mod_i32(0i, firstLeadingBit(i32(-1i) * -2323i)) | -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(-1i, 1i, -1i))));
    var var_1 = Struct_1(-(~34953i) & (~_wgslsmith_dot_vec3_i32(vec3<i32>(-66377i, -34106i, -1i), vec3<i32>(0i, -22898i, 50292i)) & abs(min(42196i, 2147483647i))), select(!vec3<bool>(true, !var_0.x, any(arg_1.yzx)), !select(select(vec3<bool>(arg_1.x, false, var_0.x), arg_1.xwz, false), vec3<bool>(false, var_0.x, var_0.x), !arg_1.zwx), arg_1.x), 54792u);
    let var_2 = vec3<bool>(1u == _wgslsmith_mult_u32(~(~arg_0.b), 22540u), any(select(!(!vec4<bool>(arg_1.x, true, var_0.x, arg_1.x)), !vec4<bool>(arg_1.x, true, true, false), any(!arg_1.yyx))), false);
    let var_3 = Struct_1(-1i, var_2, arg_0.b);
    return ~(-44533i);
}

fn func_1() -> Struct_1 {
    global0 = true;
    let var_0 = vec4<i32>(func_4(func_2(Struct_1(73756i, vec3<bool>(true, false, true), 4294967295u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(-1657f))) << (14554u % 32u), -1i, ~1i, ~5859i);
    global0 = all(vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_1 = _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(u_input.b.yzw, vec3<u32>(~4294967295u, ~u_input.b.x, u_input.a.x))), abs(u_input.a.www));
    var var_2 = -1000f;
    return Struct_1(-(~12258i), select(vec3<bool>(true, ~4363u > var_1.x, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))), vec3<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, false))), all(vec4<bool>(true, true, true, true))), var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1779f), arg_0.c);
    let var_1 = firstLeadingBit(firstLeadingBit(~(~1u)));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_add_i32(arg_0.a, 45792i)), vec3<bool>(!(true || !arg_1), arg_0.b.x, abs(arg_0.a) <= countOneBits(-1i)), countOneBits(reverseBits(15361u)));
    var var_3 = false;
    var_3 = any(!arg_0.b) && all(arg_0.b);
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global0 = arg_1;
    let var_0 = func_1();
    global0 = false;
    let var_1 = Struct_2(-705f, _wgslsmith_clamp_u32(58961u, abs(42365u), ~u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1107f)), 1000f, _wgslsmith_div_f32(arg_3.a, arg_0.a)))) - vec3<f32>(694f, _wgslsmith_f_op_f32(-899f * _wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(abs(-621f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + func_2(Struct_1(-1i, vec3<bool>(false, arg_2, arg_2), var_1.b)).a) - -1353f)));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(trunc(-1802f)), _wgslsmith_div_u32(_wgslsmith_mult_u32(93875u, u_input.a.x) << (u_input.a.x % 32u), u_input.a.x)), all(vec3<bool>(true, true, true)), true, func_5(func_1(), all(func_1().b)));
    let var_1 = vec2<f32>(-507f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-578f * var_0.a) * _wgslsmith_f_op_f32(select(-198f, var_0.a, true)))))));
    global1 = 20501i;
    var var_2 = _wgslsmith_f_op_f32(sign(2133f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - var_0.a)));
    var var_3 = countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(-27373i, 2147483647i, 1i)))) >> (max(vec3<u32>(abs(func_1().c), ~func_3(0u, u_input.b, vec4<f32>(var_1.x, var_0.a, var_1.x, var_0.a), Struct_1(-2147483647i, vec3<bool>(false, false, false), 1u)), var_0.b), u_input.b.xwx) % vec3<u32>(32u));
    var_3 = vec3<i32>(2147483647i, ~var_3.x, firstTrailingBit(~(var_3.x | -var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_3.x, var_3.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, var_3.x) | vec2<i32>(var_3.x, var_3.x), ~vec2<i32>(var_3.x, -2147483647i)), ~(~reverseBits(var_3.yy)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_0.b << (~0u % 32u), var_3.x);
}

