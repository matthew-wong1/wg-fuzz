struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = abs(select(vec4<i32>(i32(-1i) * -15484i, -_wgslsmith_mult_i32(arg_0.d.c, -1i), u_input.a.x, -10633i), _wgslsmith_mult_vec4_i32(max(vec4<i32>(1i, u_input.a.x, -1i, -32147i), ~vec4<i32>(arg_2, 14622i, arg_1, -1i)), max(min(vec4<i32>(-2147483647i, 2147483647i, 4222i, -1i), vec4<i32>(global0.c, 8062i, arg_1, u_input.a.x)), reverseBits(vec4<i32>(-1i, -26656i, arg_2, arg_2)))), false));
    let var_1 = arg_0.e.xz;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b)))), -975f, false)), 193f);
    var var_3 = -487f;
    var_3 = arg_0.d.b;
    return ~(~(~countOneBits(arg_0.a) ^ (_wgslsmith_add_u32(arg_0.a, 8252u) >> (_wgslsmith_mod_u32(1u, arg_0.c.x) % 32u))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(1u, arg_3.a), firstTrailingBit(arg_3.c.x), ~abs(reverseBits(~30199u)), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(64710u, 4294967295u) >> (arg_3.c % vec2<u32>(32u)), arg_3.c)));
    var var_1 = Struct_3(arg_0, firstTrailingBit(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(global0.c, arg_3.d.a, u_input.a.x), u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.c, -29045i, 1i), u_input.a))));
    let var_2 = Struct_3(arg_0, reverseBits(firstTrailingBit(arg_0.d.c) & 35505i));
    var var_3 = Struct_2(func_3(arg_3, _wgslsmith_sub_i32(1i, -u_input.a.x), 71455i, arg_1.b), !arg_3.e.x, vec2<u32>(countOneBits(33378u), ~var_0.x), Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) ^ global0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b - -215f), _wgslsmith_f_op_f32(-303f + var_2.a.d.b))))), _wgslsmith_dot_vec2_i32(-(u_input.a.zx & u_input.a.zx), ~vec2<i32>(u_input.a.x, 2147483647i) & select(u_input.a.yy, u_input.a.zy, arg_0.b))), select(select(select(select(vec3<bool>(true, arg_3.b, var_1.a.e.x), vec3<bool>(var_1.a.e.x, var_1.a.b, var_1.a.b), false), vec3<bool>(arg_3.e.x, false, true), var_2.a.c.x >= 13451u), !select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.a.b, true), vec3<bool>(arg_0.b, false, false)), var_2.a.e), var_2.a.e, vec3<bool>(true, !any(vec3<bool>(false, false, true)), arg_3.b)));
    var_0 = vec4<u32>(abs(~(~_wgslsmith_mult_u32(0u, arg_3.c.x))), 80307u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.a.c.x, var_2.a.a), ~vec2<u32>(var_0.x, 4294967295u)), abs(vec2<u32>(4294967295u, 6173u) << (vec2<u32>(arg_3.c.x, 4294967295u) % vec2<u32>(32u)))) ^ abs((43115u ^ var_2.a.a) & ~var_3.a), _wgslsmith_dot_vec3_u32(select(select(~vec3<u32>(24749u, var_1.a.a, var_1.a.a), reverseBits(vec3<u32>(var_1.a.c.x, arg_3.c.x, 4294967295u)), true), ~vec3<u32>(arg_0.a, var_0.x, arg_0.c.x), vec3<bool>(true, false, true)), vec3<u32>(var_2.a.c.x, _wgslsmith_sub_u32(~52577u, 64050u), ~var_3.c.x & arg_0.c.x)));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<f32> {
    let var_0 = vec4<i32>(0i, _wgslsmith_div_i32(global0.a, u_input.a.x), _wgslsmith_mod_i32(arg_0.a.d.a, global0.a), _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xy));
    let var_1 = !(!vec2<bool>(any(!arg_0.a.e), true));
    var var_2 = func_2(arg_0.a, Struct_1(reverseBits(~30001i), 1121f, 43576i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, -694f, arg_0.a.d.b, arg_1.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, -170f, arg_2.x, -456f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d.b, -660f, 304f, arg_0.a.d.b) * vec4<f32>(1860f, -376f, 1189f, 771f)))))), func_2(func_2(func_2(arg_0.a, arg_0.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -885f, 2692f, 1295f)), Struct_2(arg_0.a.a, false, arg_0.a.c, arg_0.a.d, vec3<bool>(arg_0.a.b, arg_0.a.e.x, arg_0.a.e.x))).a, Struct_1(arg_0.a.d.c, _wgslsmith_f_op_f32(max(1892f, arg_1.x)), 7852i ^ u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, global0.b, arg_0.a.d.b, -1477f), vec4<f32>(1607f, 533f, 521f, arg_2.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b, -294f, arg_2.x, 852f)))), Struct_2(func_2(arg_0.a, Struct_1(var_0.x, -1000f, var_0.x), vec4<f32>(-1179f, 2660f, 121f, global0.b), Struct_2(1000u, false, vec2<u32>(87294u, arg_0.a.a), arg_0.a.d, arg_0.a.e)).a.c.x, var_1.x, ~arg_0.a.c, Struct_1(1i, 793f, arg_0.a.d.a), vec3<bool>(false, true, false))).a, arg_0.a.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1577f, _wgslsmith_f_op_f32(638f * 244f), arg_2.x, _wgslsmith_f_op_f32(exp2(global0.b))))), Struct_2(arg_0.a.a, false, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(13324u, 25934u)), min(vec2<u32>(arg_0.a.c.x, 1u), arg_0.a.c), ~arg_0.a.c), Struct_1(-u_input.a.x, _wgslsmith_f_op_f32(-arg_1.x), -51578i), arg_0.a.e)).a).a.d;
    var_2 = func_2(Struct_2(arg_0.a.a << ((firstLeadingBit(4294967295u) & (arg_0.a.a << (arg_0.a.a % 32u))) % 32u), _wgslsmith_mult_u32(~arg_0.a.c.x, ~arg_0.a.c.x) <= 1u, arg_0.a.c, Struct_1(_wgslsmith_mod_i32(1i, countOneBits(global0.a)), arg_2.x, global0.c), func_2(func_2(Struct_2(arg_0.a.c.x, arg_0.a.e.x, arg_0.a.c, arg_0.a.d, vec3<bool>(false, true, var_1.x)), Struct_1(arg_0.b, var_2.b, global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -543f, 1000f, -669f)), arg_0.a).a, arg_0.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -1000f, -238f, arg_2.x)), func_2(Struct_2(arg_0.a.a, var_1.x, arg_0.a.c, arg_0.a.d, vec3<bool>(var_1.x, false, arg_0.a.b)), arg_0.a.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.d.b, var_2.b, -322f, 1084f))), Struct_2(arg_0.a.c.x, true, arg_0.a.c, Struct_1(var_0.x, -559f, 2147483647i), arg_0.a.e)).a).a.e), Struct_1(-66465i, _wgslsmith_f_op_f32(floor(1456f)), arg_0.a.d.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b, 1012f, -201f, 941f), vec4<f32>(409f, arg_1.x, -720f, -1652f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -2139f, 671f, -147f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d.b, var_2.b, -773f, 1044f) + vec4<f32>(-417f, 1000f, -546f, 355f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-525f, arg_1.x, arg_2.x, 797f), vec4<f32>(var_2.b, 1492f, arg_1.x, arg_2.x), vec4<bool>(true, false, var_1.x, true))))))), Struct_2(firstTrailingBit((arg_0.a.c.x >> (arg_0.a.a % 32u)) & ~0u), true, ~countOneBits(vec2<u32>(arg_0.a.c.x, arg_0.a.c.x)) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(58997u, 0u), select(arg_0.a.c, vec2<u32>(arg_0.a.a, 1u), true)), func_2(arg_0.a, func_2(func_2(arg_0.a, Struct_1(40935i, var_2.b, -2147483647i), vec4<f32>(arg_1.x, arg_2.x, arg_2.x, 102f), Struct_2(arg_0.a.a, var_1.x, arg_0.a.c, Struct_1(global0.a, var_2.b, arg_0.a.d.c), vec3<bool>(false, true, true))).a, Struct_1(u_input.a.x, var_2.b, -2147483647i), vec4<f32>(-559f, arg_0.a.d.b, global0.b, var_2.b), Struct_2(arg_0.a.c.x, arg_0.a.e.x, arg_0.a.c, Struct_1(-8388i, -754f, 23657i), arg_0.a.e)).a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -663f, 623f, -1075f))), arg_0.a).a.d, vec3<bool>(var_1.x, var_1.x && true, !(!var_1.x)))).a.d;
    global0 = arg_0.a.d;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-758f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), arg_2.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.a.c, vec2<u32>(arg_2.a.c.x, 4294967295u) << (select(arg_2.a.c, arg_3.a.c, arg_3.a.e.yx) % vec2<u32>(32u))), func_2(func_2(Struct_2(arg_3.a.a, arg_2.a.b, vec2<u32>(arg_3.a.a, arg_2.a.c.x), arg_2.a.d, arg_2.a.e), arg_2.a.d, vec4<f32>(arg_3.a.d.b, arg_0.x, arg_3.a.d.b, arg_2.a.d.b), arg_3.a).a, Struct_1(-24291i, arg_1.x, global0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_2.a.d.b, arg_1.x, 504f) - vec4<f32>(arg_3.a.d.b, arg_3.a.d.b, 1539f, -166f)), Struct_2(1u, arg_3.a.b, vec2<u32>(arg_3.a.c.x, 43780u), Struct_1(arg_2.b, arg_1.x, global0.a), vec3<bool>(false, false, true))).a.c | ~(~vec2<u32>(66380u, 11425u))), ~min(~select(arg_3.a.c, vec2<u32>(arg_3.a.a, arg_3.a.c.x), arg_3.a.b), _wgslsmith_div_vec2_u32(vec2<u32>(26685u, arg_2.a.a), arg_3.a.c) >> (vec2<u32>(1u, 74239u) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 624f, 1499f, 994f) * vec4<f32>(arg_1.x, global0.b, 1961f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1438f, arg_1.x, arg_1.x, arg_2.a.d.b) + vec4<f32>(649f, 1108f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(3335f, arg_2.a.d.b, arg_2.a.d.b, global0.b) * vec4<f32>(arg_3.a.d.b, 1000f, -691f, -926f)), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x, arg_2.a.d.b), arg_2.a.e.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, -663f, 423f, -1326f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, arg_1.x, arg_0.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.d.b, 366f, arg_0.x, -1000f))), vec4<f32>(-1097f, -296f, -1109f, arg_2.a.d.b)))))));
    global0 = arg_3.a.d;
    global0 = Struct_1(~(-_wgslsmith_mult_i32(i32(-1i) * -22233i, -arg_2.b)), _wgslsmith_f_op_f32(max(arg_2.a.d.b, _wgslsmith_f_op_f32(-arg_2.a.d.b))), -2535i);
    let var_2 = 0u;
    return ~arg_3.a.d.c & -2147483647i;
}

fn func_1() -> Struct_3 {
    var var_0 = ~(~_wgslsmith_add_u32(0u, reverseBits(23158u)) << ((~_wgslsmith_sub_u32(4294967295u, 16193u) & firstTrailingBit(19204u)) % 32u));
    global0 = Struct_1(_wgslsmith_mult_i32(func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), -1000f), _wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_2(0u, false, vec2<u32>(1u, 4294967295u), Struct_1(-1i, global0.b, global0.a), vec3<bool>(true, true, false)), Struct_1(-1i, global0.b, global0.c), vec4<f32>(global0.b, 123f, global0.b, -915f), Struct_2(24734u, false, vec2<u32>(1u, 21196u), Struct_1(global0.a, 1000f, 1i), vec3<bool>(false, false, false))), vec2<f32>(136f, global0.b), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, -1413f))))), Struct_3(func_2(Struct_2(0u, true, vec2<u32>(31865u, 0u), Struct_1(41058i, -976f, -7415i), vec3<bool>(true, false, true)), Struct_1(global0.a, -1000f, 1830i), vec4<f32>(global0.b, -475f, global0.b, -534f), Struct_2(1u, true, vec2<u32>(1u, 4294967295u), Struct_1(global0.c, global0.b, u_input.a.x), vec3<bool>(false, false, true))).a, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), Struct_3(func_2(Struct_2(76562u, false, vec2<u32>(28555u, 4294967295u), Struct_1(1i, global0.b, u_input.a.x), vec3<bool>(false, true, false)), Struct_1(u_input.a.x, 574f, 1i), vec4<f32>(1000f, global0.b, 2086f, global0.b), Struct_2(4294967295u, true, vec2<u32>(0u, 64257u), Struct_1(u_input.a.x, global0.b, global0.a), vec3<bool>(false, true, false))).a, _wgslsmith_mult_i32(u_input.a.x, 0i))), -u_input.a.x), -369f, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c, u_input.a.x, global0.a, global0.a), vec4<i32>(u_input.a.x, global0.a, -33106i, -648i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(global0.a, -67046i, 2147483647i, u_input.a.x), vec4<i32>(-17180i, global0.c, global0.c, -1i)))));
    let var_1 = u_input.a;
    var_0 = select(0u, 1u, func_2(Struct_2(4294967295u, true, vec2<u32>(1u, 1u), func_2(func_2(Struct_2(31382u, true, vec2<u32>(1u, 30345u), Struct_1(var_1.x, global0.b, -2147483647i), vec3<bool>(true, true, true)), Struct_1(25294i, -425f, 47946i), vec4<f32>(471f, 1476f, global0.b, -498f), Struct_2(1u, true, vec2<u32>(4294967295u, 34152u), Struct_1(u_input.a.x, -1000f, global0.a), vec3<bool>(false, false, true))).a, Struct_1(26010i, global0.b, 0i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, -1427f, global0.b) * vec4<f32>(-488f, global0.b, global0.b, global0.b)), func_2(Struct_2(41518u, false, vec2<u32>(8091u, 55525u), Struct_1(10572i, 1102f, 33853i), vec3<bool>(true, true, true)), Struct_1(-8771i, global0.b, global0.c), vec4<f32>(-1203f, global0.b, global0.b, 114f), Struct_2(4294967295u, false, vec2<u32>(4294967295u, 13294u), Struct_1(global0.a, global0.b, global0.c), vec3<bool>(false, true, true))).a).a.d, vec3<bool>(true, true, true)), func_2(func_2(Struct_2(22285u, false, vec2<u32>(0u, 97038u), Struct_1(-1i, global0.b, u_input.a.x), vec3<bool>(false, false, true)), Struct_1(-57136i, 429f, global0.c), vec4<f32>(global0.b, global0.b, -2365f, -1532f), Struct_2(0u, false, vec2<u32>(45825u, 3245u), Struct_1(global0.c, 1209f, -3945i), vec3<bool>(true, false, false))).a, Struct_1(0i, _wgslsmith_f_op_f32(ceil(global0.b)), -var_1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(988f, global0.b, 186f, -1091f) - vec4<f32>(global0.b, global0.b, -1065f, global0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, -822f, global0.b, 179f) + vec4<f32>(-2250f, global0.b, -694f, 748f)), vec4<bool>(true, true, true, true))), Struct_2(0u, false, vec2<u32>(1u, 1u), func_2(Struct_2(0u, false, vec2<u32>(9989u, 0u), Struct_1(u_input.a.x, global0.b, 8031i), vec3<bool>(true, true, true)), Struct_1(2682i, global0.b, -30871i), vec4<f32>(1111f, -246f, global0.b, -237f), Struct_2(44207u, false, vec2<u32>(34219u, 68588u), Struct_1(0i, global0.b, var_1.x), vec3<bool>(false, false, true))).a.d, select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))).a.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b, global0.b)) + _wgslsmith_f_op_f32(ceil(336f))), func_2(Struct_2(4294967295u, false, vec2<u32>(1u, 25946u), Struct_1(global0.c, global0.b, var_1.x), vec3<bool>(true, true, true)), func_2(Struct_2(4294967295u, true, vec2<u32>(0u, 4294967295u), Struct_1(66964i, 1971f, global0.a), vec3<bool>(true, false, false)), Struct_1(-34959i, global0.b, -2147483647i), vec4<f32>(global0.b, 710f, global0.b, global0.b), Struct_2(0u, true, vec2<u32>(1u, 0u), Struct_1(30904i, -698f, -15703i), vec3<bool>(true, false, false))).a.d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2048f, 1193f, global0.b, global0.b), vec4<f32>(global0.b, global0.b, 1826f, global0.b))), Struct_2(4294967295u, true, vec2<u32>(1u, 9671u), Struct_1(var_1.x, 856f, 12087i), vec3<bool>(true, false, true))).a.d.b, _wgslsmith_f_op_f32(-1f)), Struct_2(65239u, true, min(countOneBits(vec2<u32>(84921u, 4294967295u)), abs(vec2<u32>(0u, 19001u))), Struct_1(1i, _wgslsmith_f_op_f32(select(global0.b, 2044f, false)), 0i), vec3<bool>(true, false, true))).a.b);
    global0 = func_2(Struct_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(63847u, 23040u, 1u, 41743u), true), vec4<u32>(1u, 1u, 1u, 1u)), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1355u, 19140u)), countOneBits(vec2<u32>(1u, 1u))), func_2(func_2(func_2(Struct_2(18030u, false, vec2<u32>(1u, 0u), Struct_1(var_1.x, 2688f, 1i), vec3<bool>(true, false, true)), Struct_1(var_1.x, global0.b, 24963i), vec4<f32>(global0.b, -486f, global0.b, global0.b), Struct_2(38767u, false, vec2<u32>(1u, 0u), Struct_1(-3226i, 749f, 507i), vec3<bool>(false, false, false))).a, Struct_1(-26185i, global0.b, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, 334f, 561f)), func_2(Struct_2(1u, false, vec2<u32>(81740u, 1467u), Struct_1(u_input.a.x, 996f, var_1.x), vec3<bool>(false, true, false)), Struct_1(24497i, global0.b, global0.c), vec4<f32>(-171f, -1598f, global0.b, -1508f), Struct_2(16620u, true, vec2<u32>(1u, 6563u), Struct_1(u_input.a.x, -573f, global0.a), vec3<bool>(true, false, false))).a).a, Struct_1(func_5(vec2<f32>(global0.b, -816f), vec3<f32>(846f, 2210f, global0.b), Struct_3(Struct_2(68718u, true, vec2<u32>(50669u, 32610u), Struct_1(-30059i, -632f, -2147483647i), vec3<bool>(false, true, false)), u_input.a.x), Struct_3(Struct_2(7275u, false, vec2<u32>(4294967295u, 25785u), Struct_1(var_1.x, global0.b, global0.a), vec3<bool>(true, false, false)), -2147483647i)), func_2(Struct_2(19525u, false, vec2<u32>(0u, 17366u), Struct_1(var_1.x, -1640f, -12434i), vec3<bool>(false, true, false)), Struct_1(global0.c, global0.b, -4759i), vec4<f32>(-655f, global0.b, global0.b, 389f), Struct_2(12040u, false, vec2<u32>(4294967295u, 104316u), Struct_1(-1519i, global0.b, u_input.a.x), vec3<bool>(false, false, true))).a.d.b, 1i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -976f), -1000f, _wgslsmith_f_op_f32(-global0.b), 1397f), func_2(func_2(Struct_2(32425u, true, vec2<u32>(50539u, 4294967295u), Struct_1(2147483647i, global0.b, global0.c), vec3<bool>(true, false, true)), Struct_1(-1i, 1526f, 28820i), vec4<f32>(350f, global0.b, 1000f, 932f), Struct_2(1u, false, vec2<u32>(4214u, 0u), Struct_1(-2147483647i, -335f, 585i), vec3<bool>(true, true, false))).a, func_2(Struct_2(1u, true, vec2<u32>(1u, 31925u), Struct_1(16317i, global0.b, u_input.a.x), vec3<bool>(true, true, false)), Struct_1(u_input.a.x, global0.b, 1i), vec4<f32>(1247f, 1283f, 1000f, -1000f), Struct_2(10495u, false, vec2<u32>(0u, 20132u), Struct_1(u_input.a.x, global0.b, 0i), vec3<bool>(false, false, true))).a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, 926f, global0.b)), Struct_2(0u, false, vec2<u32>(1u, 52826u), Struct_1(-1i, 515f, 35107i), vec3<bool>(false, false, false))).a).a.d, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), func_2(func_2(func_2(Struct_2(19115u, true, vec2<u32>(0u, 1u), Struct_1(2147483647i, 387f, u_input.a.x), vec3<bool>(true, true, false)), func_2(Struct_2(1u, true, vec2<u32>(0u, 4294967295u), Struct_1(global0.c, global0.b, var_1.x), vec3<bool>(false, true, true)), Struct_1(global0.a, global0.b, -2147483647i), vec4<f32>(-648f, global0.b, global0.b, -1670f), Struct_2(10797u, false, vec2<u32>(1u, 1u), Struct_1(var_1.x, -936f, u_input.a.x), vec3<bool>(false, true, false))).a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.b, global0.b)), Struct_2(13608u, true, vec2<u32>(2469u, 22616u), Struct_1(u_input.a.x, global0.b, 59328i), vec3<bool>(true, false, true))).a, Struct_1(_wgslsmith_sub_i32(-1i, global0.c), _wgslsmith_div_f32(-1242f, -1223f), ~var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, 150f, global0.b))), func_2(Struct_2(29856u, true, vec2<u32>(86767u, 69495u), Struct_1(0i, global0.b, var_1.x), vec3<bool>(false, true, false)), func_2(Struct_2(37562u, true, vec2<u32>(4294967295u, 32146u), Struct_1(var_1.x, global0.b, -34210i), vec3<bool>(false, false, false)), Struct_1(-1i, global0.b, -2147483647i), vec4<f32>(-1654f, 766f, global0.b, 1472f), Struct_2(4294967295u, true, vec2<u32>(0u, 1u), Struct_1(-37570i, 1459f, 18214i), vec3<bool>(false, false, false))).a.d, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(386f, global0.b, -277f, 259f))), Struct_2(1u, true, vec2<u32>(3393u, 1u), Struct_1(var_1.x, global0.b, var_1.x), vec3<bool>(false, false, false))).a).a, Struct_1(countOneBits(18060i), -833f, min(u_input.a.x, global0.c) << (countOneBits(4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -218f, global0.b, global0.b)), vec4<f32>(global0.b, global0.b, 224f, -1262f), true)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 714f, global0.b, -435f)), vec4<f32>(-704f, global0.b, -1425f, -1436f))), func_2(func_2(Struct_2(4294967295u, true, vec2<u32>(9768u, 1u), Struct_1(u_input.a.x, global0.b, u_input.a.x), vec3<bool>(true, false, false)), Struct_1(0i, global0.b, var_1.x), vec4<f32>(-552f, global0.b, global0.b, global0.b), Struct_2(4294967295u, false, vec2<u32>(70367u, 4294967295u), Struct_1(var_1.x, global0.b, var_1.x), vec3<bool>(true, true, true))).a, Struct_1(~var_1.x, _wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_sub_i32(-1i, 1i)), vec4<f32>(global0.b, _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(max(1000f, -1445f)), func_2(Struct_2(4294967295u, false, vec2<u32>(0u, 0u), Struct_1(4833i, global0.b, 2147483647i), vec3<bool>(false, false, false)), Struct_1(global0.a, 960f, 0i), vec4<f32>(1181f, -475f, -1000f, global0.b), Struct_2(1u, false, vec2<u32>(1u, 0u), Struct_1(-14578i, 1426f, global0.a), vec3<bool>(true, true, false))).a.d.b), Struct_2(select(4294967295u, 65227u, false), true, ~vec2<u32>(8235u, 81004u), Struct_1(2147483647i, 156f, u_input.a.x), vec3<bool>(true, true, true))).a).a.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 343f, global0.b, -1720f) + vec4<f32>(global0.b, global0.b, global0.b, global0.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, -123f, global0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 1317f, global0.b, global0.b)))))), Struct_2(14729u, false, ~(~abs(vec2<u32>(1596u, 44900u))), func_2(func_2(Struct_2(6931u, false, vec2<u32>(55489u, 0u), Struct_1(37789i, 1254f, var_1.x), vec3<bool>(true, false, false)), Struct_1(-1i, global0.b, 6678i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1029f, 1490f, global0.b, global0.b)), Struct_2(22791u, true, vec2<u32>(64885u, 17033u), Struct_1(global0.c, global0.b, global0.a), vec3<bool>(false, true, false))).a, Struct_1(_wgslsmith_mult_i32(2147483647i, u_input.a.x), _wgslsmith_f_op_f32(-global0.b), max(2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, global0.b, 515f, 394f) + vec4<f32>(global0.b, -1334f, 1425f, 1456f))), func_2(func_2(Struct_2(3497u, true, vec2<u32>(0u, 12655u), Struct_1(13077i, global0.b, 2147483647i), vec3<bool>(true, true, true)), Struct_1(global0.a, -1087f, 1i), vec4<f32>(-2440f, 359f, global0.b, -1608f), Struct_2(1u, true, vec2<u32>(1u, 22686u), Struct_1(var_1.x, global0.b, -1i), vec3<bool>(true, true, false))).a, func_2(Struct_2(0u, false, vec2<u32>(54943u, 1u), Struct_1(7998i, -932f, 0i), vec3<bool>(true, true, true)), Struct_1(0i, -1000f, global0.a), vec4<f32>(global0.b, global0.b, global0.b, global0.b), Struct_2(50940u, false, vec2<u32>(23373u, 0u), Struct_1(var_1.x, global0.b, -1i), vec3<bool>(false, false, false))).a.d, vec4<f32>(-524f, global0.b, global0.b, -904f), Struct_2(23444u, true, vec2<u32>(14466u, 58628u), Struct_1(-2147483647i, 1000f, 9206i), vec3<bool>(true, true, true))).a).a.d, !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)))).a.d;
    return func_2(Struct_2(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(361u, 53079u), vec2<u32>(0u, 1u))) & 0u, true, firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, global0.a), 1i), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_mult_i32(i32(-1i) * -7773i, var_1.x | u_input.a.x)), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), func_2(Struct_2(max(1u, ~1u), func_2(Struct_2(4508u, true, vec2<u32>(0u, 1u), Struct_1(u_input.a.x, 1000f, var_1.x), vec3<bool>(false, false, true)), Struct_1(0i, 2008f, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, 2208f, global0.b, -1128f) + vec4<f32>(global0.b, global0.b, 1834f, global0.b)), func_2(Struct_2(1u, true, vec2<u32>(24272u, 36545u), Struct_1(0i, global0.b, var_1.x), vec3<bool>(true, true, false)), Struct_1(u_input.a.x, global0.b, 2147483647i), vec4<f32>(global0.b, global0.b, global0.b, global0.b), Struct_2(38812u, true, vec2<u32>(1u, 1u), Struct_1(1i, global0.b, 2147483647i), vec3<bool>(true, true, false))).a).a.b, ~vec2<u32>(6012u, 4294967295u), func_2(func_2(Struct_2(42951u, true, vec2<u32>(1u, 54585u), Struct_1(global0.c, -634f, -1i), vec3<bool>(false, false, true)), Struct_1(-49741i, global0.b, global0.a), vec4<f32>(-1829f, global0.b, -429f, 286f), Struct_2(4294967295u, true, vec2<u32>(4294967295u, 4294967295u), Struct_1(var_1.x, -998f, 0i), vec3<bool>(false, true, true))).a, Struct_1(64712i, -167f, var_1.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, global0.b, global0.b, global0.b))), Struct_2(81899u, false, vec2<u32>(48176u, 76937u), Struct_1(var_1.x, global0.b, var_1.x), vec3<bool>(false, false, false))).a.d, vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)), Struct_1(i32(-1i) * -2702i, _wgslsmith_f_op_f32(-global0.b), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(341f, global0.b, -1000f, 1102f), vec4<f32>(global0.b, -332f, global0.b, global0.b))) + vec4<f32>(global0.b, global0.b, global0.b, 1659f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f)))), Struct_2(~(~40126u), !(2324i > u_input.a.x), ~vec2<u32>(42495u, 21088u), func_2(func_2(Struct_2(0u, false, vec2<u32>(81478u, 37095u), Struct_1(-1i, 1152f, -1i), vec3<bool>(true, false, true)), Struct_1(u_input.a.x, -1000f, 1i), vec4<f32>(global0.b, global0.b, global0.b, -1115f), Struct_2(4294967295u, false, vec2<u32>(98227u, 0u), Struct_1(-34196i, global0.b, 0i), vec3<bool>(true, false, false))).a, func_2(Struct_2(1u, true, vec2<u32>(12171u, 0u), Struct_1(var_1.x, -335f, u_input.a.x), vec3<bool>(false, true, true)), Struct_1(-41205i, -490f, -5076i), vec4<f32>(2638f, -1000f, 1540f, global0.b), Struct_2(1u, true, vec2<u32>(7915u, 4294967295u), Struct_1(-3022i, global0.b, -1i), vec3<bool>(true, true, false))).a.d, vec4<f32>(global0.b, global0.b, global0.b, global0.b), Struct_2(44727u, false, vec2<u32>(6095u, 1u), Struct_1(5979i, 937f, 0i), vec3<bool>(true, true, false))).a.d, vec3<bool>(true, true, true))).a.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.b, global0.b, -330f))))), vec4<f32>(func_2(Struct_2(56241u, true, vec2<u32>(45091u, 0u), Struct_1(var_1.x, 125f, 1i), vec3<bool>(false, true, true)), Struct_1(23792i, 444f, -1i), vec4<f32>(global0.b, global0.b, global0.b, global0.b), Struct_2(50198u, false, vec2<u32>(4294967295u, 4294967295u), Struct_1(-40264i, global0.b, global0.a), vec3<bool>(true, true, true))).a.d.b, _wgslsmith_div_f32(-1912f, _wgslsmith_f_op_f32(step(-974f, global0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -554f))), global0.b))), Struct_2(_wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(45599u, 12377u), vec2<u32>(15137u, 0u)), vec2<u32>(72157u, 5226u), true), vec2<u32>(_wgslsmith_sub_u32(79365u, 23971u), 4294967295u)), all(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true)), abs(vec2<u32>(31059u, firstTrailingBit(0u))), func_2(func_2(func_2(Struct_2(69051u, false, vec2<u32>(0u, 8626u), Struct_1(0i, global0.b, 1i), vec3<bool>(false, true, true)), Struct_1(var_1.x, -1000f, 4250i), vec4<f32>(global0.b, -575f, global0.b, 245f), Struct_2(82843u, false, vec2<u32>(0u, 0u), Struct_1(37808i, global0.b, u_input.a.x), vec3<bool>(true, true, true))).a, Struct_1(global0.a, global0.b, -1i), vec4<f32>(global0.b, 950f, global0.b, global0.b), func_2(Struct_2(5180u, false, vec2<u32>(64178u, 24009u), Struct_1(var_1.x, 1000f, 21374i), vec3<bool>(true, false, false)), Struct_1(8198i, global0.b, 51553i), vec4<f32>(1029f, global0.b, global0.b, 818f), Struct_2(1u, true, vec2<u32>(1u, 31718u), Struct_1(var_1.x, 929f, -16198i), vec3<bool>(false, true, true))).a).a, func_2(Struct_2(0u, true, vec2<u32>(7242u, 1u), Struct_1(47292i, 767f, global0.c), vec3<bool>(false, false, false)), Struct_1(16930i, 494f, u_input.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b, 879f, 1428f, 411f), vec4<f32>(global0.b, -292f, -1673f, 1608f)), Struct_2(44394u, true, vec2<u32>(4294967295u, 37025u), Struct_1(var_1.x, global0.b, 2147483647i), vec3<bool>(false, false, true))).a.d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(step(global0.b, -838f)), _wgslsmith_f_op_f32(-global0.b)), Struct_2(4993u, true, vec2<u32>(1u, 1u), Struct_1(24188i, global0.b, global0.a), vec3<bool>(true, true, true))).a.d, !vec3<bool>(false, all(vec3<bool>(true, true, false)), select(false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_1(0i, 920f, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.zx, _wgslsmith_clamp_vec2_i32(countOneBits(u_input.a.yy), ~u_input.a.yy, vec2<i32>(2147483647i, var_0.b) >> (var_0.a.c % vec2<u32>(32u))))));
    var var_1 = Struct_3(func_1().a, 115148i);
    let var_2 = Struct_3(var_1.a, 2147483647i);
    let var_3 = _wgslsmith_clamp_u32(0u << ((firstLeadingBit(~0u) << (var_0.a.c.x % 32u)) % 32u), ~var_0.a.a, var_2.a.a);
    let var_4 = all(vec4<bool>(select(false, var_2.a.b, false), func_1().a.b, !((30303u | var_2.a.c.x) == var_1.a.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 495f, -1504f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, 455f, 252f), vec3<f32>(106f, 1949f, -561f), false)), vec3<bool>(var_1.a.e.x, var_0.a.e.x, var_1.a.e.x)))))), ~var_0.a.d.c, ~firstTrailingBit(4294967295u), var_1.b);
}

