struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.c;
    var_0 = u_input.c;
    let var_1 = 7157u;
    var var_2 = true;
    let var_3 = Struct_1(-reverseBits(firstLeadingBit(arg_0.c.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.zx, abs(vec2<i32>(arg_1, u_input.d))), _wgslsmith_mult_vec2_i32(~(-vec2<i32>(arg_0.c.a.x, -1i)), var_0.wy)), _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, _wgslsmith_mult_u32(~23805u, _wgslsmith_sub_u32(var_1, 4294967295u))), u_input.e.ww), select(select(select(vec2<bool>(false, true), arg_0.c.d, !arg_0.c.d), arg_2.xx, arg_2.x), !select(!vec2<bool>(arg_0.a, false), !vec2<bool>(true, arg_0.b), true), select(!(!arg_2.yy), vec2<bool>(any(vec2<bool>(true, false)), true), !arg_2.yx)));
    return Struct_1(-abs(select(countOneBits(var_3.a), vec3<i32>(-1i, 2147483647i, arg_0.c.b), var_3.d.x)), -firstTrailingBit(countOneBits(arg_0.c.b | -1i)), 1u, select(arg_2.yy, vec2<bool>(!any(vec4<bool>(arg_0.c.d.x, arg_0.c.d.x, arg_0.a, false)), arg_0.c.d.x), !(!arg_2.yy)));
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = Struct_2(Struct_1(select(select(-u_input.c.zzw, vec3<i32>(-1i, u_input.c.x, -45065i), vec3<bool>(true, true, true)), u_input.c.wwy, all(vec3<bool>(false, false, false))), ~max(u_input.c.x, abs(u_input.d)), arg_0, vec2<bool>(true, true)), vec3<u32>(max(~select(0u, arg_1, false), reverseBits(_wgslsmith_add_u32(u_input.a.x, u_input.a.x))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(73869u, 4294967295u, u_input.a.x, arg_0), vec4<u32>(0u, 12502u, arg_1, 4294967295u)), firstLeadingBit(u_input.a.x << (1u % 32u))), 0u), func_2(Struct_3(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, false, true)), Struct_1(~u_input.c.zxx, 1496i, 105181u, vec2<bool>(true, true))), _wgslsmith_div_i32(-28933i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.d, u_input.c.x)), u_input.c.wz)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    var var_1 = var_0.c.d.x;
    let var_2 = Struct_3(arg_1 >= arg_1, true, Struct_1(vec3<i32>(var_0.c.b << (arg_1 % 32u), u_input.d, u_input.d << (12247u % 32u)) ^ ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -7890i, -15223i), vec3<i32>(-19694i, 2147483647i, var_0.a.a.x), var_0.c.a), -3677i, u_input.e.x, !(!select(var_0.a.d, var_0.c.d, var_0.c.d.x))));
    var_1 = var_0.c.d.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(937f, 540f, -568f, -467f))) * vec4<f32>(330f, -838f, 1371f, -1121f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-660f, -592f, -715f, -1229f) - vec4<f32>(-564f, -620f, -405f, -162f))))))));
    return var_0.a.a.x;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    let var_0 = 1u;
    var var_1 = func_2(Struct_3(true | arg_0, -260f == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-841f + arg_2), 1000f)), Struct_1(vec3<i32>(_wgslsmith_div_i32(arg_1.x, arg_1.x), arg_1.x & 1i, u_input.c.x), -max(2147483647i, arg_1.x), ~1u, vec2<bool>(arg_0 & false, any(vec2<bool>(true, false))))), ~(~(-11998i)), !vec3<bool>(arg_0, !(!arg_0), true));
    var var_2 = -firstLeadingBit(-countOneBits(u_input.b));
    var var_3 = vec2<i32>(func_3(4294967295u, ~var_0), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.a.x, var_1.a.x) ^ abs(_wgslsmith_add_vec2_i32(u_input.c.zx, vec2<i32>(1479i, u_input.b))), ~_wgslsmith_div_vec2_i32(arg_1.xz >> (vec2<u32>(var_1.c, 17703u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_1.yy, vec2<i32>(-5964i, 1i)))));
    var_3 = ~(~var_1.a.yy) >> (u_input.a.zz % vec2<u32>(32u));
    return 1u;
}

fn func_4(arg_0: u32) -> vec3<i32> {
    let var_0 = true;
    let var_1 = ~1u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1644f + -1561f) - _wgslsmith_f_op_f32(round(-1118f))), 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1024f, -738f))))), _wgslsmith_f_op_f32(-1668f * _wgslsmith_f_op_f32(select(1738f, 644f, var_0 | true))));
    var var_3 = Struct_2(Struct_1(~vec3<i32>(~(-4664i), u_input.d, 16513i), _wgslsmith_add_i32(-u_input.b, _wgslsmith_dot_vec3_i32(u_input.c.wwz & u_input.c.xzz, vec3<i32>(u_input.c.x, 74832i, u_input.d))), ~1u, func_2(Struct_3(var_0, true, func_2(Struct_3(var_0, false, Struct_1(u_input.c.zzy, u_input.c.x, u_input.a.x, vec2<bool>(var_0, true))), u_input.b, vec3<bool>(true, false, true))), u_input.c.x, !(!vec3<bool>(var_0, true, true))).d), ~_wgslsmith_mod_vec3_u32(select(firstLeadingBit(vec3<u32>(17199u, arg_0, 0u)), u_input.e.xwy, true), u_input.a.yyw), Struct_1(u_input.c.xwz ^ vec3<i32>(1i, u_input.d, abs(0i)), firstLeadingBit(_wgslsmith_mult_i32(-u_input.d, -2147483647i)), arg_0, func_2(Struct_3(!var_0, !var_0, Struct_1(vec3<i32>(24588i, u_input.c.x, u_input.d), u_input.c.x, 28433u, vec2<bool>(var_0, var_0))), 0i, select(vec3<bool>(var_0, true, true), !vec3<bool>(true, var_0, true), !vec3<bool>(var_0, var_0, true))).d));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-915f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-784f, -196f, true)), -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-345f, -638f))))) * 195f);
    return func_2(Struct_3(!var_3.c.d.x, func_2(Struct_3(true, func_2(Struct_3(var_3.c.d.x, true, Struct_1(u_input.c.xzw, 84538i, 4294967295u, var_3.a.d)), -2147483647i, vec3<bool>(var_0, var_0, false)).d.x, func_2(Struct_3(false, var_3.a.d.x, var_3.a), 3437i, vec3<bool>(false, false, var_0))), 1i, !select(vec3<bool>(false, true, var_0), vec3<bool>(var_3.c.d.x, true, var_0), vec3<bool>(true, false, true))).d.x, func_2(Struct_3(var_3.c.d.x, true || var_0, func_2(Struct_3(var_0, true, var_3.a), u_input.b, vec3<bool>(false, false, var_3.c.d.x))), 25240i, select(!vec3<bool>(var_3.a.d.x, var_3.a.d.x, var_0), vec3<bool>(var_0, var_3.c.d.x, true), !vec3<bool>(true, var_0, true)))), ~u_input.d, !select(select(vec3<bool>(true, false, var_3.c.d.x), vec3<bool>(var_3.c.d.x, true, var_3.a.d.x), false), select(!vec3<bool>(var_3.a.d.x, false, true), select(vec3<bool>(true, var_0, true), vec3<bool>(false, var_3.c.d.x, var_0), false), select(vec3<bool>(var_0, var_0, var_3.c.d.x), vec3<bool>(false, var_0, var_3.c.d.x), vec3<bool>(false, false, var_3.a.d.x))), !var_0 | var_0)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~vec3<u32>(u_input.e.x, reverseBits(_wgslsmith_add_u32(~48448u, ~u_input.a.x)), 4294967295u);
    var var_2 = func_4(var_1.x >> (func_1((1i << (var_1.x % 32u)) > (u_input.d & 12895i), ~vec4<i32>(24359i, 6455i, u_input.d, -2147483647i) & _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(16384i, -26786i, -1i, -22050i)), 936f) % 32u));
    var var_3 = Struct_2(func_2(Struct_3(true, true, func_2(Struct_3(true, false, Struct_1(u_input.c.yxz, 21154i, u_input.e.x, vec2<bool>(true, false))), _wgslsmith_mod_i32(1i, 1i), vec3<bool>(true, true, false))), -27002i | -u_input.c.x, vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true)), u_input.e.yxx ^ ~_wgslsmith_mult_vec3_u32(~vec3<u32>(12818u, 33994u, var_1.x), firstTrailingBit(vec3<u32>(var_1.x, 44460u, var_1.x))), func_2(Struct_3(true, true, Struct_1(abs(u_input.c.zwz), ~1i, 1u, vec2<bool>(false, true))), var_2.x ^ var_2.x, select(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), vec3<bool>(true, true, true), true)));
    var_0 = var_3.a.d.x;
    var var_4 = _wgslsmith_mult_i32(1i, func_2(Struct_3(!all(var_3.c.d), !(!var_3.a.d.x), func_2(Struct_3(var_3.a.d.x, true, Struct_1(var_3.a.a, -8834i, 0u, vec2<bool>(true, false))), select(0i, var_3.c.a.x, true), !vec3<bool>(false, true, var_3.c.d.x))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-18312i, ~2147483647i), var_3.a.a.x, var_2.x), select(!select(vec3<bool>(false, var_3.c.d.x, false), vec3<bool>(var_3.a.d.x, true, var_3.a.d.x), vec3<bool>(true, true, var_3.a.d.x)), select(select(vec3<bool>(var_3.a.d.x, var_3.c.d.x, false), vec3<bool>(false, var_3.a.d.x, var_3.c.d.x), vec3<bool>(false, var_3.c.d.x, false)), vec3<bool>(false, true, var_3.c.d.x), !vec3<bool>(false, var_3.c.d.x, var_3.c.d.x)), vec3<bool>(func_2(Struct_3(var_3.c.d.x, false, var_3.c), -23399i, vec3<bool>(var_3.a.d.x, var_3.a.d.x, var_3.c.d.x)).d.x, var_3.a.d.x, false))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1267f, 1f), u_input.e.x);
}

