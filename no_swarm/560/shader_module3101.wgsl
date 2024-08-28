struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(round(-381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(363f, _wgslsmith_f_op_f32(exp2(arg_0.b.a))), 1171f, all(vec2<bool>(false, arg_0.c)))) - arg_1.b.a), 1515f);
    return any(!select(!select(vec2<bool>(arg_1.c, arg_0.c), vec2<bool>(true, arg_0.b.e.b.x), arg_1.c), vec2<bool>(false, arg_0.b.c.c.x & arg_1.b.c.b.x), vec2<bool>(false || arg_0.c, arg_0.b.e.a.x)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_2(global0.x, Struct_1(vec4<bool>((u_input.a < arg_0.a.d.x) & false, arg_1.b.c.b.x, arg_1.c, any(vec3<bool>(false, arg_0.a.a.x, arg_0.a.a.x))), select(select(select(vec3<bool>(arg_0.a.c.x, arg_0.a.a.x, arg_1.b.b.a.x), arg_0.a.a.wwy, arg_0.a.b.x), !arg_1.b.c.a.xwy, !vec3<bool>(true, arg_1.b.b.c.x, arg_0.a.b.x)), arg_0.a.b, arg_0.a.a.x), arg_0.a.c, arg_0.a.d), arg_0.a, arg_1.a, arg_0.a);
    global0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(579f, arg_1.b.a, global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -569f, global0.x)))))));
    global0 = vec3<f32>(arg_1.b.a, var_0.a, _wgslsmith_f_op_f32(exp2(arg_1.b.a)));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.b.a, arg_1.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f - arg_1.b.a) - -1460f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a, _wgslsmith_f_op_f32(-1896f * global0.x), 1042f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1050f, var_0.a, _wgslsmith_f_op_f32(sign(-1000f)))))));
    return ~arg_1.a & 2147483647i;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_mult_vec2_u32(firstLeadingBit(~vec2<u32>(1u, ~0u)), _wgslsmith_clamp_vec2_u32(arg_1.a.d.zz & ~arg_1.a.d.xz, firstLeadingBit(vec2<u32>(25005u, u_input.a & 4294967295u)), _wgslsmith_sub_vec2_u32(arg_1.a.d.yx, ~(~vec2<u32>(4294967295u, arg_1.a.d.x)))));
    let var_1 = func_1(Struct_4(func_3(arg_1, Struct_4(20961i, Struct_2(arg_0.x, Struct_1(vec4<bool>(false, arg_1.a.c.x, false, true), vec3<bool>(false, false, arg_1.a.b.x), arg_1.a.b.yx, vec4<u32>(26731u, u_input.a, arg_1.a.d.x, 4294967295u)), Struct_1(arg_1.a.a, arg_1.a.b, arg_1.a.a.yx, arg_1.a.d), -39233i, Struct_1(arg_1.a.a, vec3<bool>(arg_1.a.c.x, false, true), vec2<bool>(false, arg_1.a.b.x), arg_1.a.d)), arg_1.a.b.x & true)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), Struct_1(!vec4<bool>(false, arg_1.a.b.x, arg_1.a.c.x, true), vec3<bool>(true, arg_1.a.b.x, false), arg_1.a.c, arg_1.a.d), arg_1.a, _wgslsmith_div_i32(~(-3285i), 1i), Struct_1(!vec4<bool>(arg_1.a.b.x, arg_1.a.c.x, arg_1.a.a.x, false), !arg_1.a.b, vec2<bool>(arg_1.a.c.x, true), vec4<u32>(u_input.a, 8738u, u_input.a, 0u))), true), Struct_4(min(-52324i, -1i), Struct_2(-1430f, Struct_1(!vec4<bool>(arg_1.a.a.x, true, false, true), vec3<bool>(arg_1.a.b.x, arg_1.a.b.x, true), !arg_1.a.b.zy, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.d.x, 36617u, 22676u, var_0.x), arg_1.a.d)), arg_1.a, 1i, arg_1.a), true), arg_1.a);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1939f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-130f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -467f))) - _wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = firstLeadingBit(vec3<i32>(-2147483647i, max(1i, ~(~(-51873i))), select(func_3(Struct_3(arg_1.a), Struct_4(-38213i, Struct_2(-277f, Struct_1(vec4<bool>(arg_1.a.b.x, var_1, arg_1.a.b.x, true), arg_1.a.b, arg_1.a.c, vec4<u32>(19087u, arg_1.a.d.x, 1u, 9651u)), arg_1.a, -23511i, arg_1.a), false)), 1i, true)));
    let var_3 = Struct_2(-1214f, Struct_1(!vec4<bool>(arg_1.a.c.x, arg_1.a.b.x, false, any(arg_1.a.c)), !(!select(arg_1.a.a.zyz, vec3<bool>(false, true, var_1), vec3<bool>(true, arg_1.a.b.x, var_1))), arg_1.a.a.zz, arg_1.a.d), arg_1.a, -1i, arg_1.a);
    return !all(arg_1.a.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 68103u, 718u), vec3<u32>(7257u, 51170u, u_input.a)), vec3<u32>(4294967295u, u_input.a, u_input.a))));
    var var_1 = true;
    var var_2 = Struct_2(global0.x, Struct_1(vec4<bool>(true, abs(var_0.x) >= ~u_input.a, any(vec3<bool>(true, true, true)), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec2<bool>(func_1(Struct_4(16885i, Struct_2(global0.x, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), vec2<bool>(false, false), vec4<u32>(var_0.x, var_0.x, var_0.x, 45491u)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<u32>(u_input.a, 0u, 52730u, u_input.a)), -21423i, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<u32>(u_input.a, var_0.x, u_input.a, 0u))), true), Struct_4(2147483647i, Struct_2(global0.x, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), vec2<bool>(false, true), vec4<u32>(var_0.x, u_input.a, 1u, 11975u)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec2<bool>(false, true), vec4<u32>(0u, u_input.a, u_input.a, 61462u)), -21980i, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<u32>(4294967295u, var_0.x, 837u, var_0.x))), true), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), vec2<bool>(false, true), vec4<u32>(0u, 1u, 4294967295u, var_0.x))) == false, func_2(vec2<f32>(-356f, -1265f), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, true, false), vec2<bool>(false, true), vec4<u32>(var_0.x, 20300u, var_0.x, 15246u)))) || true), firstTrailingBit(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)))), Struct_1(!vec4<bool>(false, true, true, any(vec2<bool>(false, true))), !vec3<bool>(func_2(global0.xx, Struct_3(Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<u32>(u_input.a, 4294967295u, 37706u, var_0.x)))), true, select(false, false, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec3<bool>(false, true, false)) & true), ~(vec4<u32>(u_input.a, var_0.x, 1u, 1u) << (abs(vec4<u32>(u_input.a, var_0.x, var_0.x, 4294967295u)) % vec4<u32>(32u)))), ~(~(-(-20842i >> (u_input.a % 32u)))), Struct_1(select(vec4<bool>(any(vec2<bool>(true, false)), func_1(Struct_4(-2194i, Struct_2(global0.x, Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec2<bool>(false, false), vec4<u32>(1312u, 43892u, var_0.x, 7888u)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 1u, u_input.a)), -1318i, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, true, true), vec2<bool>(false, false), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), false), Struct_4(2147483647i, Struct_2(1682f, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), vec2<bool>(true, false), vec4<u32>(var_0.x, 82691u, 1u, 20197u)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), vec2<bool>(false, true), vec4<u32>(var_0.x, var_0.x, u_input.a, 4294967295u)), 1895i, Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), vec2<bool>(false, false), vec4<u32>(var_0.x, u_input.a, var_0.x, u_input.a))), false), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), vec2<bool>(true, false), vec4<u32>(15371u, 3147u, var_0.x, u_input.a))), true, any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true), !vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec4<u32>(7675u, 112134u, var_0.x, _wgslsmith_div_u32(4294967295u, abs(11040u)))));
    var var_3 = 23003i;
    let var_4 = Struct_4(i32(-1i) * -(1i << (var_2.e.d.x % 32u)), Struct_2(-754f, Struct_1(select(select(vec4<bool>(false, var_2.c.b.x, true, var_2.b.a.x), vec4<bool>(true, var_2.b.b.x, var_2.b.a.x, var_2.e.a.x), true), vec4<bool>(false, var_2.c.b.x, var_2.e.c.x, false), !vec4<bool>(false, false, var_2.c.c.x, var_2.c.c.x)), vec3<bool>(false, !var_2.b.a.x, true), select(vec2<bool>(false, true), var_2.e.a.zx, select(vec2<bool>(var_2.b.b.x, false), var_2.e.b.yx, var_2.c.a.xy)), ~vec4<u32>(u_input.a, 33223u, var_2.c.d.x, var_2.c.d.x)), Struct_1(!select(var_2.b.a, var_2.e.a, vec4<bool>(false, var_2.b.a.x, var_2.c.a.x, var_2.b.a.x)), select(vec3<bool>(var_2.b.c.x, true, var_2.e.b.x), !var_2.c.b, any(vec4<bool>(var_2.b.c.x, false, false, true))), vec2<bool>(var_2.c.c.x && var_2.e.c.x, var_2.e.a.x), var_2.c.d), ~(-var_2.d), var_2.e), (~var_0.x << (14217u % 32u)) > abs(31092u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.b.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.a - var_4.b.a) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, var_2.a) - _wgslsmith_div_f32(275f, -748f))), firstTrailingBit((select(vec3<i32>(2147483647i, -1i, var_4.b.d), vec3<i32>(var_2.d, -53870i, -2147483647i), var_4.b.b.b) & ~vec3<i32>(-26077i, 2147483647i, var_2.d)) & -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2627i), vec3<i32>(74372i, -2147483647i, var_4.a))), firstLeadingBit(1i));
}

