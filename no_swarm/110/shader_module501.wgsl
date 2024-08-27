struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = any(select(vec2<bool>(true, (u_input.d.x > 2147483647i) && true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true));
    var var_1 = select(vec3<bool>(true, !(var_0 | var_0), var_0), vec3<bool>(var_0, all(!select(vec2<bool>(true, false), vec2<bool>(true, var_0), vec2<bool>(true, var_0))), false), any(!(!vec2<bool>(false, var_0))));
    let var_2 = !(any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, var_0, false), true), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_1.x, true, false, true), true), select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, true, var_0, var_1.x), vec4<bool>(var_0, true, var_0, true)))) || true);
    var_1 = vec3<bool>(var_0, all(!(!(!vec3<bool>(true, false, var_2)))), all(!(!(!vec4<bool>(var_1.x, true, true, var_1.x)))));
    var var_3 = reverseBits(firstTrailingBit(vec3<i32>(max(-2147483647i, u_input.d.x) ^ ~u_input.b, 1i, -16349i)));
    return all(var_1.yx);
}

fn func_2() -> i32 {
    var var_0 = func_3();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1039f, -440f, -1605f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1119f, -878f)), _wgslsmith_f_op_f32(round(-385f)), -226f, 972f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1567f, 935f, -831f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(858f, -251f, -1589f, 1645f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, -379f)), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x))), vec4<f32>(var_1.x, 737f, -1000f, var_1.x), vec4<bool>(u_input.b >= (-2841i >> (u_input.c.x % 32u)), !all(vec4<bool>(true, true, true, true)), (all(vec4<bool>(true, true, true, false)) & true) || !(var_1.x <= 760f), true)));
    let var_3 = Struct_4(true);
    var_0 = (i32(-1i) * -firstLeadingBit(_wgslsmith_clamp_i32(u_input.b, -2147483647i, 0i))) == abs(-2147483647i);
    return u_input.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = !(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    var var_2 = func_2();
    var_2 = 0i;
    var_0 = ~u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1160f, -2117f, -1234f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(877f)), -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, _wgslsmith_f_op_f32(296f * 271f), 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f + -859f) + -714f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -236f))), var_1.x && true)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1119f, -356f)))))), _wgslsmith_dot_vec3_u32(vec3<u32>(67426u, 1u, 1u), vec3<u32>(u_input.a.x, countOneBits(firstTrailingBit(u_input.a.x)), 4294967295u)), u_input.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(u_input.a.zwx & vec3<u32>(_wgslsmith_add_u32(arg_0 ^ 58806u, 8476u), ~(~25935u), _wgslsmith_div_u32(28287u, u_input.a.x) | arg_0));
    var var_1 = true;
    var var_2 = _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 393f))));
    var_0 = Struct_2(~countOneBits(max(u_input.a.xwx, u_input.a.xyz)));
    var var_3 = ~(vec4<i32>(u_input.d.x, i32(-1i) * -u_input.d.x, ~35455i & u_input.b, u_input.b) << (u_input.a % vec4<u32>(32u)));
    return Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, 980f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + 547f) + _wgslsmith_f_op_f32(arg_1.c - -1108f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, -232f, true))), 921f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -3277f, _wgslsmith_div_u32(var_0.a.x, abs(~_wgslsmith_mult_u32(u_input.a.x, 23818u))), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d, arg_1.e.x, 17768u, u_input.c.x), u_input.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    var var_0 = ~countOneBits(_wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(~u_input.c.x, ~u_input.a.x)));
    var var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(-1322i, 0i, 2147483647i, _wgslsmith_clamp_i32(1i, -32840i | u_input.b, 1i)), ~(~(~(~vec4<i32>(arg_2.d, -8029i, arg_2.d, -2147483647i)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f) * -765f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_add_i32(~(-1i), u_input.b ^ -u_input.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(94192u, func_1(1i)), Struct_4(_wgslsmith_f_op_f32(-261f + 1246f) <= _wgslsmith_f_op_f32(round(1909f))), Struct_3(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.a.x, select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), 26814i))));
    var_0 = func_2();
    var var_2 = ~((_wgslsmith_clamp_vec4_u32(u_input.a | vec4<u32>(30340u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(0u, 0u, 1u, u_input.a.x) | vec4<u32>(4598u, 34025u, u_input.c.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ vec4<u32>(4294967295u, _wgslsmith_add_u32(0u, 4294967295u), 11690u >> (u_input.c.x % 32u), ~53548u)) >> (select(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), ~abs(u_input.a), 1i != -u_input.b) % vec4<u32>(32u)));
    var var_3 = 46530u;
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.d.x >> (var_2.x % 32u), u_input.b >> ((_wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.c) | u_input.c.x) % 32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(27577i, u_input.b, -7722i, 2147483647i), vec4<i32>(u_input.d.x, 1i, -29737i, u_input.b)) & select(vec4<i32>(8366i, -1623i, u_input.d.x, 1i), vec4<i32>(-1i, u_input.d.x, u_input.d.x, 0i), false), ~(-vec4<i32>(u_input.d.x, 2147483647i, u_input.b, 0i))), _wgslsmith_sub_i32(~1i, u_input.d.x | -4085i) >> (countOneBits(~1u) % 32u), -u_input.d.x, u_input.b));
    let var_4 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(4294967295u, 21877u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, var_2.x), u_input.a.zx), true), ~abs(max(vec2<u32>(u_input.c.x, 1u), vec2<u32>(5190u, 1u)))), ~vec2<u32>(~(~1u), (1u << (var_2.x % 32u)) << (14053u % 32u)));
    var var_5 = Struct_3(vec3<bool>(any(vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, true)), true, true), _wgslsmith_dot_vec2_u32(min(abs(var_4), _wgslsmith_div_vec2_u32(vec2<u32>(var_4.x, u_input.c.x), select(var_4, vec2<u32>(var_2.x, var_4.x), false))), vec2<u32>(max(var_2.x, _wgslsmith_div_u32(49831u, var_4.x)), min(4294967295u, ~var_4.x))), select(vec3<bool>(abs(1u) <= u_input.c.x, func_3(), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)) | (_wgslsmith_add_i32(u_input.d.x, -2147483647i) >= min(1559i, -1i))), _wgslsmith_add_i32(23450i, u_input.d.x & (19849i ^ u_input.d.x)) >> (reverseBits(1u) % 32u));
    var var_6 = var_5.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_mult_vec2_u32(var_2.zz, vec2<u32>(var_4.x ^ 0u, firstTrailingBit(u_input.c.x)) & ~(~vec2<u32>(1u, 34843u))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_5.b, 14422u, 0u, 100531u), ~(~u_input.a)));
}

