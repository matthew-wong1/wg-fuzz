struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(-select(vec4<i32>(-20185i, i32(-1i) * -19972i, arg_0.b.a, ~arg_3.a), ~select(vec4<i32>(arg_0.b.a, -42413i, arg_0.b.a, u_input.a), vec4<i32>(arg_3.a, u_input.a, -38265i, 32959i), true), select(select(vec4<bool>(arg_0.b.b, false, arg_1, false), vec4<bool>(arg_3.b, false, arg_0.b.c.x, arg_0.b.c.x), vec4<bool>(arg_1, false, false, true)), vec4<bool>(true, true, true, arg_3.d), !arg_1)), ~vec4<i32>(reverseBits(arg_0.b.a), firstTrailingBit(-10151i), arg_0.b.a, _wgslsmith_clamp_i32(26116i, arg_3.a, -33926i)) >> (reverseBits(~vec4<u32>(arg_2.x, u_input.b.x, 19511u, arg_2.x)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(-vec2<i32>(_wgslsmith_div_i32(1i, 2134i), arg_0.b.a)), min(select(u_input.c.zx | max(vec2<i32>(arg_0.b.a, 2147483647i), var_0.zw), var_0.zw >> (firstLeadingBit(vec2<u32>(arg_2.x, arg_2.x)) % vec2<u32>(32u)), arg_0.b.c.yy), -(~var_0.xx)), _wgslsmith_add_vec2_i32(u_input.c.xx, reverseBits(~select(u_input.c.yy, vec2<i32>(1i, arg_0.b.a), arg_3.c.zx))));
    let var_2 = var_1.x;
    let var_3 = Struct_3(50000i, arg_0);
    return select(arg_0.b.c, select(var_3.b.b.c, !arg_3.c, select(select(arg_3.c, select(arg_3.c, vec3<bool>(arg_3.c.x, var_3.b.b.c.x, arg_0.b.d), arg_3.c), false), !vec3<bool>(false, arg_1, true), all(!vec4<bool>(arg_3.c.x, false, true, arg_0.b.c.x)))), !arg_0.b.c);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_mod_i32(~u_input.a, ~(~u_input.c.x)), Struct_2(-540f, Struct_1(_wgslsmith_div_i32(select(u_input.c.x, u_input.d, false), 1i), all(vec3<bool>(true, true, false)), func_3(Struct_2(-631f, Struct_1(u_input.a, false, vec3<bool>(true, false, true), true)), true, _wgslsmith_clamp_vec3_u32(vec3<u32>(14692u, 43572u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(92494u, u_input.b.x, u_input.b.x)), Struct_1(u_input.a, false, vec3<bool>(true, true, true), true)), true)));
    let var_1 = Struct_1(~var_0.a, !(!var_0.b.b.d), vec3<bool>(var_0.b.b.d, any(vec3<bool>(var_0.b.b.c.x, var_0.b.b.c.x, true & var_0.b.b.b)), !var_0.b.b.d), !(~2147483647i == ~countOneBits(var_0.b.b.a)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.a)))));
    var var_3 = select(select(!vec4<bool>(func_3(var_0.b, var_0.b.b.b, u_input.b, Struct_1(var_0.a, false, var_0.b.b.c, true)).x, !var_0.b.b.c.x, any(vec3<bool>(true, var_0.b.b.b, var_1.c.x)), 0i < var_1.a), !(!(!vec4<bool>(true, var_0.b.b.c.x, var_0.b.b.d, false))), select(vec4<bool>(var_0.b.b.c.x, false, true, false), !(!vec4<bool>(true, false, var_1.b, false)), vec4<bool>(var_0.b.b.b, var_0.b.b.d, u_input.b.x != u_input.b.x, func_3(var_0.b, true, vec3<u32>(4294967295u, 10376u, u_input.b.x), var_1).x))), !(!select(vec4<bool>(var_0.b.b.c.x, false, false, false), vec4<bool>(true, true, var_0.b.b.b, var_1.c.x), !vec4<bool>(false, var_0.b.b.d, false, false))), !select(!(!vec4<bool>(var_1.b, var_0.b.b.b, true, var_1.b)), !(!vec4<bool>(var_1.c.x, true, var_0.b.b.d, var_1.b)), var_1.d));
    let var_4 = Struct_4(all(vec4<bool>(true && all(vec4<bool>(var_0.b.b.d, var_0.b.b.c.x, var_0.b.b.c.x, var_0.b.b.d)), all(vec4<bool>(false, var_1.b, var_3.x, false)) && (u_input.b.x > 1u), !any(vec3<bool>(var_1.c.x, var_0.b.b.c.x, false)), false)), var_0.b);
    return var_4;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = true;
    var var_2 = arg_3.b.b.c;
    var var_3 = arg_1.b;
    let var_4 = Struct_3(max(_wgslsmith_mult_i32(var_3.a, 1i), -(_wgslsmith_div_i32(var_3.a, 0i) >> ((1083u & u_input.b.x) % 32u))), Struct_2(_wgslsmith_f_op_f32(-679f - 1520f), var_0.b.b));
    return func_2().b.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = !(!select(!select(vec4<bool>(arg_3.d, true, false, true), vec4<bool>(false, arg_1.b, true, false), vec4<bool>(true, arg_2.d, false, true)), !(!vec4<bool>(arg_3.c.x, true, true, arg_3.c.x)), vec4<bool>(arg_1.b, any(vec2<bool>(arg_3.b, false)), !arg_1.c.x, arg_1.d)));
    let var_1 = Struct_4(arg_3.c.x, Struct_2(_wgslsmith_f_op_f32(func_2().b.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1607f, -615f))), Struct_1(arg_2.a, arg_2.b, !(!vec3<bool>(arg_2.c.x, var_0.x, arg_1.d)), var_0.x)));
    var var_2 = arg_2;
    let var_3 = ~vec4<i32>(arg_1.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-12879i, u_input.d), vec2<i32>(25208i, arg_2.a)), -vec2<i32>(var_2.a, -2147483647i)), _wgslsmith_add_i32(1i, select(~65212i, u_input.d, true)), 1i);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f))) < _wgslsmith_f_op_f32(floor(var_1.b.a)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-369f, var_1.b.a)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-723f, var_1.b.a)), 1406f, var_0.x))), Struct_1(min(2147483647i, 21337i), arg_3.c.x, vec3<bool>(var_2.d, arg_3.d, all(vec3<bool>(true, var_0.x, true))), true)));
    return true & all(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, arg_1.c.x, arg_2.c.x), false), vec4<bool>(all(vec4<bool>(arg_1.d, true, arg_1.d, arg_2.d)), arg_3.c.x || false, var_4.b.b.a <= 65953i, var_2.d), vec4<bool>(var_2.b, false, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(select(true, false, false) & (-13350i > u_input.c.x), true, func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(21052u, u_input.b.x, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), Struct_1(2147483647i, false, vec3<bool>(true, true, false), true), func_1(171f, Struct_2(-949f, Struct_1(-15664i, true, vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), Struct_4(false, Struct_2(1489f, Struct_1(27844i, true, vec3<bool>(true, true, true), false)))), func_1(-701f, Struct_2(-1000f, Struct_1(33214i, true, vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true), Struct_4(true, Struct_2(-2564f, Struct_1(1i, false, vec3<bool>(false, false, false), true)))))), vec3<bool>(select(false, select(false, true, false), select(false, false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true), !(!any(vec4<bool>(false, true, false, false))));
    var var_1 = Struct_1(countOneBits(_wgslsmith_mod_i32(274i, u_input.d)), abs(~abs(0u)) > firstTrailingBit(abs(1u)), vec3<bool>(!any(vec3<bool>(false, false, false)) && true, all(!(!vec3<bool>(false, var_0.x, var_0.x))), func_4(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.b.x, 34678u, u_input.b.x), vec4<u32>(24862u, u_input.b.x, u_input.b.x, 38652u), vec4<u32>(1u, u_input.b.x, 0u, 4294967295u)), func_2().b.b, func_1(-519f, func_2().b, select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, var_0.x), false), Struct_4(false, Struct_2(998f, Struct_1(u_input.a, false, vec3<bool>(var_0.x, true, var_0.x), false)))), Struct_1(u_input.a ^ u_input.c.x, func_3(Struct_2(-700f, Struct_1(1i, false, vec3<bool>(false, var_0.x, true), false)), true, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), Struct_1(1i, true, vec3<bool>(var_0.x, var_0.x, true), true)).x, func_3(Struct_2(2792f, Struct_1(-2147483647i, var_0.x, vec3<bool>(var_0.x, false, var_0.x), true)), false, u_input.b, Struct_1(u_input.a, var_0.x, vec3<bool>(var_0.x, true, false), var_0.x)), var_0.x))), var_0.x);
    var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1894f, -206f))), 1f), 1f), func_2().b, vec3<bool>(true, any(!vec4<bool>(false, var_0.x, false, false)) & var_1.c.x, any(func_1(-1328f, func_2().b, var_1.c, func_2()).c)), Struct_4(var_0.x, func_2().b));
    let var_2 = Struct_1(~firstLeadingBit(var_1.a), true, var_1.c, true);
    var var_3 = Struct_4(false, func_2().b);
    var var_4 = _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b.zz, vec2<u32>(53962u, u_input.b.x) ^ vec2<u32>(1u, u_input.b.x)), ~u_input.b.yz), firstTrailingBit(vec2<u32>(~(u_input.b.x ^ 18843u), ~(u_input.b.x << (u_input.b.x % 32u)))));
    var_3 = Struct_4(false, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(724f, -1000f)))), var_3.b.a)), var_3.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1665f)) + 372f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f))));
}

