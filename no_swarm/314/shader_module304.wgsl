struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_5(~(~_wgslsmith_sub_i32(u_input.c.x, u_input.a)), Struct_3(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xx & u_input.b.xy, u_input.b.zy), _wgslsmith_mult_u32(59007u | u_input.b.x, 71919u)), max(~4294967295u, ~1u), vec3<bool>((arg_0.a.x | arg_0.a.x) | all(vec4<bool>(false, true, arg_0.a.x, true)), select(!arg_0.a.x, !arg_0.a.x, any(vec3<bool>(arg_0.a.x, true, arg_0.a.x))), !(arg_0.a.x & true))), Struct_3(~vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x | u_input.b.x), ~firstLeadingBit(select(0u, 27425u, arg_0.a.x)), select(arg_0.a, arg_0.a, !(u_input.b.x != u_input.b.x))), all(!select(select(vec4<bool>(true, arg_0.a.x, false, true), vec4<bool>(arg_0.a.x, true, true, false), false), select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)), any(vec3<bool>(false, arg_0.a.x, arg_0.a.x)))));
    var var_1 = select(abs(var_0.c.b | ~(var_0.b.b & 0u)), 39889u, false & (all(select(vec2<bool>(var_0.b.c.x, arg_0.a.x), arg_0.a.xx, true)) || select(!var_0.d, !var_0.c.c.x, var_0.c.c.x)));
    var var_2 = Struct_1(~(~(vec3<i32>(16951i, 2147483647i, 63770i) << (vec3<u32>(var_0.c.a.x, 0u, u_input.b.x) % vec3<u32>(32u)))), vec4<bool>(true, 1u < u_input.b.x, (countOneBits(-2147483647i) & ~var_0.a) >= 38187i, all(!(!vec4<bool>(false, arg_0.a.x, false, false)))), _wgslsmith_clamp_vec3_u32(u_input.b >> (~vec3<u32>(var_0.c.a.x, u_input.b.x, 15277u) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.a.x, var_0.b.a.x, 4294967295u), vec3<u32>(u_input.b.x, 33962u, var_0.b.a.x), vec3<u32>(32618u, 24747u, 0u) | u_input.b), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 0u << (0u % 32u)), 0u, ~reverseBits(79911u))));
    let var_3 = 1i;
    var_2 = Struct_1(u_input.c, select(select(var_2.b, !vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), var_2.b), !vec4<bool>(true & var_2.b.x, !var_2.b.x, all(var_2.b), true), true), vec3<u32>(70105u, ~var_2.c.x, var_0.c.b));
    return select(!var_2.b.wxz, vec3<bool>(true, var_2.b.x, true), vec3<bool>(arg_0.a.x & any(select(var_2.b, var_2.b, false)), ~(i32(-1i) * -11438i) >= var_0.a, !select(arg_0.a.x, var_2.b.x, var_2.b.x)));
}

fn func_2() -> u32 {
    var var_0 = Struct_3(vec2<u32>(u_input.b.x, 4294967295u), ~max(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(26304u, 1u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))) >> (u_input.b.x % 32u), select(vec3<bool>(true, false, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -13888i, u_input.c.x), vec4<i32>(u_input.a, 0i, 71177i, u_input.a)) <= (u_input.a & -49143i)), select(func_3(Struct_2(vec3<bool>(true, false, true), vec4<f32>(209f, -996f, -386f, -1229f))), vec3<bool>(false, select(false, false, true), all(vec3<bool>(true, true, false))), true), !any(func_3(Struct_2(vec3<bool>(true, false, true), vec4<f32>(-1405f, 119f, 852f, -992f))))));
    var var_1 = var_0.c;
    var_1 = select(var_0.c, !var_0.c, vec3<bool>(any(vec4<bool>(55347u <= u_input.b.x, var_0.c.x, all(vec2<bool>(true, var_0.c.x)), func_3(Struct_2(var_0.c, vec4<f32>(-826f, 624f, 1956f, 937f))).x)), true && (any(vec3<bool>(var_1.x, false, true)) | all(vec4<bool>(false, false, false, var_1.x))), ~(~u_input.c.x) >= u_input.c.x));
    var var_2 = firstTrailingBit(~u_input.c.x);
    var var_3 = -724f;
    return var_0.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.a, arg_1.b, firstLeadingBit(min(~vec3<u32>(4294967295u, 53037u, 0u), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.b.x, 488u)), abs(u_input.b)))));
    var var_1 = vec3<i32>(2147483647i, arg_1.a.x, select(_wgslsmith_add_i32(-(~arg_1.a.x), var_0.a.x), var_0.a.x, !(!any(vec4<bool>(arg_1.b.x, false, var_0.b.x, arg_1.b.x)))));
    let var_2 = -var_0.a.x;
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_add_i32(var_1.x, -9749i), -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(arg_1.a.x, var_0.a.x) | var_0.a.xx)), vec4<bool>(!all(!vec3<bool>(var_0.b.x, true, false)), !any(vec2<bool>(true, false)), var_0.b.x, all(vec4<bool>(true, false && arg_1.b.x, false, false && var_0.b.x))), ~arg_0);
    var_1 = ~var_3.a;
    return select(!arg_1.b.zy, vec2<bool>(false, true), var_0.b.x);
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) - _wgslsmith_f_op_f32(173f + -345f))) - 586f));
    let var_1 = func_4(vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), func_2()), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, u_input.b.x), reverseBits(reverseBits(u_input.b.zz)))), Struct_1(u_input.c, !(!(!vec4<bool>(arg_0.a.x, true, false, false))), ~u_input.b << (u_input.b % vec3<u32>(32u))));
    let var_2 = Struct_3(firstTrailingBit(~u_input.b.yy), ~_wgslsmith_clamp_u32(u_input.b.x, func_2(), u_input.b.x), select(arg_0.a, !vec3<bool>(false, true, !arg_0.a.x), vec3<bool>(true, false, true)));
    let var_3 = 3213i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(22685i, -1i, func_1(Struct_2(vec3<bool>(false, true, true), vec4<f32>(_wgslsmith_f_op_f32(262f * 1578f), 1547f, -546f, _wgslsmith_f_op_f32(f32(-1f) * -800f)))));
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~60494u), u_input.b.x);
    var var_2 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false)), vec2<bool>(true, true), !func_3(Struct_2(vec3<bool>(false, false, true), vec4<f32>(-246f, -777f, 548f, 348f))).zz));
    var var_3 = _wgslsmith_mult_u32(~(u_input.b.x ^ ~15786u), 19336u) | ~u_input.b.x;
    let var_4 = Struct_5(_wgslsmith_mod_i32(~(-u_input.a) << (u_input.b.x % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.zy, u_input.c.zz), -vec2<i32>(14201i, u_input.c.x)), 38538i, ~var_0.x ^ _wgslsmith_sub_i32(var_0.x, 1i))), Struct_3(u_input.b.xy, max(var_1.x, ~abs(50087u)), vec3<bool>(true, !(var_0.x < var_0.x), var_2.x)), Struct_3(vec2<u32>(~_wgslsmith_div_u32(var_1.x, u_input.b.x), u_input.b.x), var_1.x, select(select(select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, var_2.x, true), var_2.x), select(vec3<bool>(false, var_2.x, false), vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, false, false)), var_2.x), select(!vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, true, var_2.x)), !vec3<bool>(var_2.x, false, true)), any(vec3<bool>(true, false, false)) | var_2.x)), (u_input.c.x << (firstLeadingBit(0u) % 32u)) <= min(func_1(Struct_2(vec3<bool>(false, false, false), vec4<f32>(-819f, -1428f, -1000f, 645f))), abs(-7680i)));
    var var_5 = Struct_4(Struct_2(var_4.b.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1231f, -1000f, -352f, 622f) * vec4<f32>(-1035f, -2557f, 615f, 1462f)) - vec4<f32>(630f, 506f, -1522f, -836f)), vec4<f32>(1515f, _wgslsmith_f_op_f32(f32(-1f) * -2022f), _wgslsmith_f_op_f32(1019f + 1892f), -733f)))), _wgslsmith_mod_i32(var_0.x, 12389i), u_input.c.xy);
    let var_6 = select(!(!var_5.a.a), var_4.c.c, vec3<bool>(false, all(var_4.b.c), var_4.a >= ~_wgslsmith_mult_i32(0i, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mult_i32(firstLeadingBit(6990i), _wgslsmith_add_i32(u_input.c.x, countOneBits(u_input.c.x))));
}

