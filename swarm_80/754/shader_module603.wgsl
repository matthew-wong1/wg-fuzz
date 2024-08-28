struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_2(u_input.c.xy, _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(arg_0.a, 0u))), arg_0.b.yx));
    let var_1 = !(!vec4<bool>(arg_3.x, false, arg_3.x, (u_input.c.x & arg_0.c.x) < ~u_input.b));
    var var_2 = vec2<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_0.d));
    let var_3 = !arg_1.x;
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(202f, -1104f))) - _wgslsmith_f_op_vec2_f32(-arg_2.xx));
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 694f, arg_0.b.x, -889f)), vec4<f32>(-279f, arg_0.b.x, arg_0.b.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.a.x), _wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_div_f32(1000f, -588f), _wgslsmith_f_op_f32(757f * 1586f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, 1362f))), arg_0.a.x, 665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.b.x)))))));
    var var_1 = !vec4<bool>(select(31819u <= u_input.a.x, false || arg_1.x, arg_0.c.x > 12001i) || func_1(Struct_3(u_input.a.x, vec3<u32>(1u, 4294967295u, 14962u), vec4<i32>(u_input.b, arg_0.c.x, -20642i, 36391i), var_0.x), !vec3<bool>(arg_0.d.x, true, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, var_0.x, arg_0.a.x) + arg_0.b), select(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x), vec4<bool>(false, true, arg_1.x, arg_1.x), arg_0.d.x)), arg_1.x, arg_0.d.x, arg_0.d.x);
    var_1 = select(select(!vec4<bool>(arg_0.c.x != 0i, arg_0.d.x, true, true), vec4<bool>(select(true && arg_1.x, arg_0.d.x, false), var_1.x, !(false | var_1.x), true & !arg_0.d.x), select(select(select(vec4<bool>(arg_0.d.x, arg_1.x, true, false), vec4<bool>(var_1.x, false, var_1.x, true), arg_1.x), !vec4<bool>(arg_0.d.x, arg_0.d.x, false, arg_0.d.x), arg_1.x), select(!vec4<bool>(var_1.x, var_1.x, arg_0.d.x, arg_1.x), select(vec4<bool>(var_1.x, false, true, arg_0.d.x), vec4<bool>(var_1.x, var_1.x, arg_0.d.x, true), true), !vec4<bool>(arg_0.d.x, false, false, false)), vec4<bool>(!var_1.x, arg_1.x, true, true))), select(vec4<bool>(select(false, true, arg_1.x) & var_1.x, !select(var_1.x, arg_1.x, false), arg_0.d.x, any(vec2<bool>(false, arg_1.x))), !(!select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, false, false, var_1.x), false)), false), !(!(!arg_1.x)) | (func_1(Struct_3(u_input.a.x, vec3<u32>(64218u, u_input.a.x, 4294967295u), vec4<i32>(-1i, arg_0.c.x, -437i, u_input.c.x), -401f), select(arg_0.d, vec3<bool>(false, false, false), true), _wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(-559f, -2239f, -1000f)), vec4<bool>(var_1.x, arg_0.d.x, false, var_1.x)) || true));
    let var_2 = u_input.c.x;
    var_1 = vec4<bool>(!(!(!var_1.x)), !(any(!var_1.xyy) & !any(arg_0.d.xx)), _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f * _wgslsmith_f_op_f32(arg_0.a.x * -1189f)) + var_0.x), var_1.x);
    return select(arg_0.d.xx, select(arg_1, select(select(vec2<bool>(arg_1.x, var_1.x), arg_1, select(vec2<bool>(false, arg_0.d.x), var_1.ww, arg_1.x)), arg_1, arg_0.d.yz), !select(vec2<bool>(arg_0.d.x, var_1.x), !vec2<bool>(arg_1.x, false), vec2<bool>(true, var_1.x))), !vec2<bool>(arg_0.d.x, var_1.x));
}

fn func_2(arg_0: vec4<u32>) -> Struct_5 {
    var var_0 = select(vec2<bool>(false, !any(vec4<bool>(true, true, true, true))), !select(select(vec2<bool>(true, true), func_3(Struct_1(vec3<f32>(-408f, 121f, -1136f), vec3<f32>(133f, -874f, -783f), u_input.c.zwz, vec3<bool>(true, true, false)), vec2<bool>(true, false)), all(vec3<bool>(false, false, true))), vec2<bool>(true, true), func_1(Struct_3(u_input.a.x, vec3<u32>(10230u, u_input.a.x, 1u), vec4<i32>(-2147483647i, 2147483647i, u_input.b, 23842i), -1000f), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1762f, 777f, 183f))), vec4<bool>(true, true, true, true))), vec2<bool>(true, true));
    let var_1 = u_input.c.x;
    let var_2 = -42112i;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(988f, -1499f, -2519f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2072f, 158f, 312f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -1159f, 103f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -271f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2073f - -585f))), -875f));
    var var_4 = _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-238f, _wgslsmith_div_f32(var_3.x, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f * -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_3.x) * -1414f)))));
    return Struct_5(~arg_0.x, min(u_input.b, abs(-u_input.c.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> u32 {
    var var_0 = Struct_3(abs(~_wgslsmith_div_u32(~arg_2.a, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_3, arg_2.a, 4294967295u), vec3<u32>(firstLeadingBit(1u), arg_3, u_input.a.x << (0u % 32u))) >> (select(~(vec3<u32>(arg_2.a, u_input.a.x, u_input.a.x) << (vec3<u32>(arg_3, 35857u, arg_3) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, arg_2.a, u_input.a.x), vec3<u32>(arg_2.a, 74930u, u_input.a.x)) >> (countOneBits(vec3<u32>(arg_3, 0u, u_input.a.x)) % vec3<u32>(32u)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)) % vec3<u32>(32u)), vec4<i32>(min(arg_1, -arg_1), arg_1, max(33910i, arg_1), ~(-1i)) >> (vec4<u32>(65945u, 1u, arg_3, arg_3) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(573f)), _wgslsmith_f_op_f32(abs(-1160f)))))));
    var_0 = Struct_3(18093u ^ select(_wgslsmith_mult_u32(~4294967295u, var_0.b.x), 1u, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~35178u, ~var_0.b.x), arg_2.a), 1u), max(abs(vec4<i32>(-35776i, u_input.b, 1i, ~(-37071i))), ~((u_input.c | vec4<i32>(-2147483647i, arg_0.x, var_0.c.x, 1i)) & var_0.c)), var_0.d);
    let var_1 = ~reverseBits(vec2<u32>(min(var_0.a, arg_3) << (_wgslsmith_mod_u32(arg_3, arg_3) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_3, arg_2.a), func_2(vec4<u32>(0u, 13010u, var_0.b.x, 91215u)).a)));
    var_0 = Struct_3(~1u, firstLeadingBit(firstTrailingBit(var_0.b)), vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, arg_1, 0i), vec4<i32>(0i, arg_1, arg_0.x, arg_2.b)), var_0.c.x), firstLeadingBit(_wgslsmith_add_i32(u_input.b, -arg_2.b)), _wgslsmith_sub_i32(-arg_0.x, _wgslsmith_mult_i32(arg_1, _wgslsmith_div_i32(arg_1, arg_1))), firstTrailingBit(_wgslsmith_mod_i32(-arg_0.x, 12745i))), var_0.d);
    var var_2 = 1003f;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = all(vec4<bool>(!(!any(vec2<bool>(false, false))), func_1(Struct_3(_wgslsmith_sub_u32(1u, u_input.a.x), abs(vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec4<i32>(u_input.b, u_input.b, -20786i, -4472i), _wgslsmith_f_op_f32(-569f + 2661f)), vec3<bool>(true, u_input.a.x <= 2727u, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, -263f, -1525f))), vec4<bool>(true, false, true, true)), true, true));
    let var_1 = Struct_4(vec2<u32>(func_4(vec3<i32>(u_input.c.x, 1i << (u_input.a.x % 32u), -30715i), _wgslsmith_add_i32(u_input.c.x, 7698i) & _wgslsmith_mod_i32(-13341i, u_input.c.x), func_2(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)), _wgslsmith_div_u32(u_input.a.x, ~13501u)), ~u_input.a.x), vec2<bool>(true, true), abs(_wgslsmith_clamp_vec4_u32(reverseBits(select(vec4<u32>(u_input.a.x, 30045u, u_input.a.x, 39492u), vec4<u32>(45368u, 48587u, u_input.a.x, u_input.a.x), false)), ~(~vec4<u32>(u_input.a.x, 13263u, u_input.a.x, u_input.a.x)), max(vec4<u32>(u_input.a.x, 43818u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(40041u, u_input.a.x, u_input.a.x, 38978u)))), ~(~(vec2<u32>(9034u, 0u) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, 51160u)) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2486f, 433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(426f))), (u_input.c.x | u_input.c.x) <= (u_input.c.x >> (u_input.a.x % 32u)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(449f, 862f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, -799f)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(138f + 1561f), _wgslsmith_f_op_f32(ceil(-2088f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1180f, 341f)), vec2<bool>(var_1.b.x, func_1(Struct_3(var_1.a.x, vec3<u32>(var_1.d.x, u_input.a.x, 1u), u_input.c, -314f), vec3<bool>(false, true, true), vec3<f32>(509f, -1000f, -2106f), vec4<bool>(false, false, true, true))))))));
    var var_4 = ~countOneBits(vec4<i32>(2147483647i, max(abs(-45572i), -u_input.c.x), reverseBits(-2147483647i | u_input.c.x), u_input.c.x));
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~firstLeadingBit(vec4<u32>(30037u, u_input.a.x, 0u, 4294967295u))), var_3.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1076f, 3134f)) + vec3<f32>(-233f, _wgslsmith_f_op_f32(-var_3.x), var_3.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -362f, _wgslsmith_div_f32(446f, var_3.x)))));
}

