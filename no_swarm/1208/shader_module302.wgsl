struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = ~(vec3<u32>(5388u, u_input.c.x, 15130u) & ~countOneBits(vec3<u32>(u_input.d.x, 1u, 37442u)));
    var var_1 = Struct_2(true, vec2<bool>(arg_0.a, arg_0.a), u_input.d.x, select(select(select(vec4<bool>(arg_0.a, true, arg_0.a, true), select(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, true), arg_0.a), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), select(vec4<bool>(arg_0.a, true, false, false), select(vec4<bool>(false, true, arg_0.a, arg_0.a), vec4<bool>(false, false, arg_0.a, true), true), any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), any(vec3<bool>(true, arg_0.a, arg_0.a)))), vec4<bool>(all(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)), true, !(!arg_0.a), false), all(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a), false))), !select(vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, arg_0.a))), !select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), true), !(!vec2<bool>(arg_0.a, false))));
    var var_2 = Struct_3(Struct_1(arg_0.a), Struct_2(any(var_1.d), var_1.d.yx, 15340u, !var_1.d, vec2<bool>(select(arg_0.a, !var_1.b.x, false), var_1.e.x)), Struct_1(select(!all(vec4<bool>(arg_0.a, false, false, true)), true, arg_0.a)));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1065f, -426f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -637f)))), 158f, _wgslsmith_f_op_f32(410f - -621f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-1000f + -2067f))), vec4<f32>(_wgslsmith_div_f32(-543f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(695f)), _wgslsmith_f_op_f32(select(550f, 1111f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -487f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1874f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f))), 628f));
    let var_4 = -_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(u_input.a, -1i, u_input.a, 40429i), vec4<i32>(u_input.a, -6007i, 20018i, u_input.a), arg_0.a), vec4<i32>(u_input.b << (20596u % 32u), firstLeadingBit(u_input.b), 9132i, 2147483647i), select(vec4<i32>(u_input.b, 1i, 46978i, 606i), vec4<i32>(-33923i, 0i, u_input.a, u_input.a), vec4<bool>(false, false, arg_0.a, true)) >> (_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_clamp_u32(~countOneBits(1u), 1u | var_0.x, ~(~1u)), 52629u, 0u, ~_wgslsmith_mod_u32(10096u << (var_0.x % 32u), 6063u)) % vec4<u32>(32u));
    return abs(abs(~vec4<i32>(-20005i, 1i, u_input.b, 0i))) << (u_input.c % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1718f + 296f)))) * -907f)));
    var var_1 = -(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-57745i, u_input.b, -49072i, -6542i), vec4<i32>(29901i, -61949i, u_input.a, u_input.b)), func_3(arg_0)), vec4<i32>(reverseBits(20335i), 0i & u_input.b, u_input.b, u_input.b)) | ~(-vec4<i32>(u_input.b, 1i, 1i, -10998i)));
    var_1 = max(firstLeadingBit((_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, var_1.x, 9074i, u_input.a), vec4<i32>(var_1.x, 0i, 2147483647i, var_1.x)) | max(vec4<i32>(-31264i, -37273i, -2147483647i, var_1.x), vec4<i32>(var_1.x, 16847i, -34012i, var_1.x))) & vec4<i32>(0i, 1i, u_input.a, 34737i << (0u % 32u))), vec4<i32>(var_1.x | _wgslsmith_dot_vec2_i32(var_1.yw, vec2<i32>(0i, -1i)), firstLeadingBit(~_wgslsmith_mod_i32(u_input.b, var_1.x)), 0i, (_wgslsmith_add_i32(-37059i, 1i) >> (~4294967295u % 32u)) | ((var_1.x << (u_input.c.x % 32u)) << (u_input.d.x % 32u))));
    let var_2 = any(vec3<bool>(true, arg_0.a, true)) && arg_1.a;
    var var_3 = Struct_2(true || any(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_2, arg_2.x), select(vec3<bool>(var_2, arg_2.x, false), vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(var_2, true, arg_1.a)))), !arg_2, 39112u, select(select(vec4<bool>(true, !var_2, any(vec4<bool>(arg_0.a, false, false, false)), true), !(!vec4<bool>(false, false, true, arg_2.x)), !all(vec3<bool>(false, false, true))), vec4<bool>(all(select(vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_1.a, arg_1.a, false), arg_0.a)), arg_2.x, any(select(arg_2, arg_2, false)), true), all(vec3<bool>(var_2 & arg_1.a, true, true))), vec2<bool>(any(!vec3<bool>(arg_0.a, arg_1.a, arg_2.x)), !var_2));
    return var_1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = ~countOneBits(~(vec2<i32>(u_input.b, u_input.a) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 40933u), vec2<u32>(u_input.c.x, arg_3.b.c)) % vec2<u32>(32u))));
    var var_1 = -13174i;
    var_0 = max(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), -vec2<i32>(_wgslsmith_add_i32(1i, var_0.x), abs(2147483647i))), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-23747i, var_0.x), vec2<i32>(u_input.a, var_0.x), -vec2<i32>(-4512i, 34840i)), ~vec2<i32>(24162i, 2147483647i), arg_3.b.b) << (vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(4294967295u, arg_3.b.c | 54085u)) % vec2<u32>(32u)));
    var_1 = _wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(2147483647i, var_0.x, 30238i, -2147483647i) >> (reverseBits(vec4<u32>(54334u, 56346u, u_input.c.x, 0u)) % vec4<u32>(32u)))), vec4<i32>(u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.b, var_0.x)), var_0.x >> (_wgslsmith_sub_u32(arg_3.b.c, 0u) % 32u), ~u_input.b << (arg_3.b.c % 32u)) | vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(9692i, var_0.x, var_0.x, -12751i), vec4<i32>(8839i, var_0.x, 40461i, 1487i)), -vec4<i32>(-2147483647i, 23498i, 16863i, 0i)), ~_wgslsmith_div_i32(10218i, -1i), firstLeadingBit(u_input.a)));
    let var_2 = arg_2;
    return _wgslsmith_mult_vec3_i32(vec3<i32>(abs(1i), var_0.x, func_2(Struct_1(all(vec2<bool>(false, arg_2))), arg_3.a, arg_3.b.d.yz)), firstTrailingBit(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(0i, u_input.b, 51552i)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -47627i, -1i), vec3<i32>(var_0.x, u_input.a, 53964i))) & func_3(Struct_1(var_2)).wyy));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(arg_2.x | (i32(-1i) * -arg_3.x), ~func_3(Struct_1(false)).x);
    var var_1 = Struct_3(Struct_1(~arg_1 < (1u ^ (74357u << (u_input.d.x % 32u)))), Struct_2(1u == arg_1, vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true), arg_1, !vec4<bool>(false, all(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, true, true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), Struct_1(arg_2.x >= _wgslsmith_add_i32(24218i, firstTrailingBit(arg_2.x))));
    var var_2 = !(!var_1.b.d);
    var_1 = Struct_3(Struct_1(true), Struct_2(var_1.c.a, vec2<bool>(false, select(var_1.b.a, false, false)), select(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(45578u, 26475u, 0u), u_input.c.wxw), all(vec4<bool>(true, true, true, var_2.x))), vec4<bool>(true, arg_0 != arg_0, var_2.x, true || all(var_1.b.d)), var_1.b.d.yy), Struct_1(true));
    var_1 = Struct_3(var_1.a, Struct_2(_wgslsmith_f_op_f32(281f + -1479f) < arg_0, vec2<bool>(true || var_2.x, any(var_1.b.d)), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_1.b.c), 1u), !vec4<bool>(var_1.b.a, true, any(vec2<bool>(false, var_2.x)), true), var_1.b.e), Struct_1(var_1.c.a));
    return var_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = -854f;
    var var_1 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1146f + arg_1.x) - _wgslsmith_f_op_f32(max(var_0, var_0))) * -546f), arg_2.x)));
    return ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.c.zz >> (vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u)), ~u_input.d), ~select(vec2<u32>(1u, 10699u), reverseBits(u_input.c.ww), select(vec2<bool>(arg_0.a, false), arg_0.d.zx, vec2<bool>(arg_2.x, true))));
}

fn func_6(arg_0: vec2<u32>) -> StorageBuffer {
    var var_0 = Struct_2(~(_wgslsmith_sub_i32(u_input.a, 25954i) ^ u_input.a) <= ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(12153i, u_input.a)) ^ ~u_input.a), !func_4(1f, u_input.d.x, ~min(vec3<i32>(-2147483647i, u_input.a, -1i), vec3<i32>(u_input.a, 6829i, u_input.b)), -vec3<i32>(-1i, 1i, -643i)).e, func_5(Struct_2(-37721i != countOneBits(u_input.a), vec2<bool>(all(vec4<bool>(true, false, false, true)), true), u_input.c.x, vec4<bool>(true, true, arg_0.x < 26598u, any(vec4<bool>(false, false, true, false))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -373f), 0u, vec3<i32>(0i, 2147483647i, u_input.b), func_1(vec3<bool>(true, true, true), Struct_1(false), true, Struct_3(Struct_1(true), Struct_2(true, vec2<bool>(true, true), u_input.d.x, vec4<bool>(false, false, true, true), vec2<bool>(false, false)), Struct_1(false)))).b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-779f, -1350f), vec2<f32>(-984f, 1039f)))))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.a, u_input.b)), -vec2<i32>(u_input.a, u_input.b))).x, !vec4<bool>(func_4(_wgslsmith_f_op_f32(trunc(-489f)), _wgslsmith_clamp_u32(arg_0.x, 87896u, 4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, -2147483647i), vec3<i32>(u_input.a, -44640i, u_input.b)), func_3(Struct_1(false)).wxz).e.x, true, true, !all(vec4<bool>(false, false, false, false))), !select(vec2<bool>(false, any(vec4<bool>(true, true, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(745f, -977f, -622f, 862f) - vec4<f32>(-1191f, 1017f, 497f, -359f)))));
    var_0 = Struct_2(any(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1085f))), 22111u, ~vec3<i32>(1i, u_input.b, -2147483647i) | _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -1i), vec3<i32>(-15826i, 0i, u_input.a)), vec3<i32>(~u_input.a, _wgslsmith_add_i32(-30949i, 9738i), reverseBits(2147483647i))).d.xzw), vec2<bool>(false, any(vec4<bool>(true, true, !var_0.a, var_0.a))), arg_0.x & _wgslsmith_sub_u32(4294967295u, firstLeadingBit(4294967295u)), func_4(var_1.x, abs(u_input.c.x), -vec3<i32>(-u_input.b, u_input.a & 5789i, 33079i), func_3(Struct_1(arg_0.x < 25502u)).xyx).d, var_0.b);
    return StorageBuffer(var_1.x, var_1.yz, _wgslsmith_f_op_f32(f32(-1f) * -1000f), max(vec4<u32>(arg_0.x | ~u_input.c.x, ~4294967295u, 9657u, _wgslsmith_mod_u32(44518u, arg_0.x) >> (~arg_0.x % 32u)), vec4<u32>(~max(u_input.c.x, u_input.c.x), ~u_input.c.x, ~u_input.d.x, (var_0.c | var_0.c) >> (~var_0.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x << (u_input.d.x % 32u);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -547f), -1061f));
    let var_3 = Struct_1(var_1);
    let var_4 = select(vec2<bool>(var_3.a, true), select(!select(vec2<bool>(true, false), select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_3.a), vec2<bool>(var_1, var_1)), any(vec4<bool>(var_3.a, true, var_3.a, var_1))), vec2<bool>(true, all(vec2<bool>(true, var_3.a))), true), true);
    let var_5 = false;
    var var_6 = ~1u;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1067f);
    let x = u_input.a;
    s_output = func_6(func_5(func_4(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(-661f, -954f))), var_0, _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, 2147483647i, u_input.b), ~vec3<i32>(-31970i, 0i, u_input.b)), abs(func_1(vec3<bool>(false, var_1, false), var_3, true, Struct_3(var_3, Struct_2(var_1, vec2<bool>(true, true), 8979u, vec4<bool>(true, var_5, var_3.a, var_5), vec2<bool>(var_3.a, var_3.a)), var_3)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1148f, _wgslsmith_f_op_f32(abs(1768f)))), vec3<bool>(true, var_5, _wgslsmith_div_f32(1165f, 316f) == _wgslsmith_f_op_f32(select(1654f, -984f, var_1))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-7822i, u_input.b, u_input.a, -1i), -vec4<i32>(1i, -30854i, -1i, u_input.b)), min(27856i, 13494i) >> (~u_input.d.x % 32u))));
}

