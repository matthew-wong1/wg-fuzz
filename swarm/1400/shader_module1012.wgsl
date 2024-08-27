struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~29626i >> (abs(1u) % 32u), -29583i, -26856i), abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(-39791i, -23389i), -36059i))), false, _wgslsmith_mult_u32(~(~u_input.c), u_input.a.x) >= 4294967295u, _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -4360i, 1i, 0i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = Struct_2(var_0.a, var_0.e.x, !var_0.c, true, var_0.e);
    let var_2 = var_1;
    var var_3 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_2.a, 0u, 1u), vec4<u32>(var_0.a, 13589u, 1u, 35632u)), 57778u), u_input.a.xy | u_input.b), -1i, false, true, -(~vec4<i32>(var_0.b, var_0.b ^ var_2.e.x, var_1.e.x >> (1u % 32u), var_0.b)));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -758f) - _wgslsmith_f_op_f32(1010f + -1342f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f))))));
    return ~(~var_1.a);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1275f * arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - -2520f), _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, arg_0.x, -482f, arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1814f, -538f, arg_0.x, 112f)))))))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(47771i, -1i, -6426i, -2147483647i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, -37870i, -2147483647i), vec4<i32>(52713i, -30181i, 266i, 0i), vec4<i32>(-10789i, 1i, 0i, -2147483647i))) << (vec4<u32>(~16693u << (func_3() % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, u_input.c), 1u), ~u_input.c, 1u) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -956f), 482f, 885f), -(~abs(0i)), firstTrailingBit(vec3<i32>(-firstTrailingBit(-44125i), -(0i << (0u % 32u)), -abs(-2147483647i))));
    var_0 = -var_1.d;
    var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(var_1.b.x), _wgslsmith_div_i32(var_1.d, abs(_wgslsmith_add_i32(var_1.e.x, -28157i)))), countOneBits(firstLeadingBit(-min(var_1.d, var_1.e.x))));
    var var_2 = var_1;
    return Struct_2(firstLeadingBit(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(u_input.a.x, u_input.b.x, 0u)), u_input.c, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(var_1.d ^ var_1.b.x, _wgslsmith_dot_vec2_i32(var_1.b.wz, vec2<i32>(var_2.d, 0i))), var_1.e.x), var_2.b.zzx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.c.x, -1906f, true)), 1f) > var_1.c.x, all(select(vec3<bool>(any(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true))), vec3<bool>(true, select(true, true, true), true), vec3<bool>(true, false, true))), abs(var_1.b));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(firstLeadingBit(1u << (~func_3() % 32u)), abs(arg_0.a));
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1111f - -985f), 1032f, _wgslsmith_f_op_f32(min(-1000f, 1212f))))))));
    var_1 = Struct_2(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xx, _wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(arg_1.x, arg_1.x))), 6148u), -1i, false, false, vec4<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(var_1.b, var_1.b)), -firstTrailingBit(arg_0.e.zw)), var_1.e.x ^ select(var_1.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -27139i, -1i, 52822i), vec4<i32>(var_1.b, -12798i, 13453i, 7522i)), arg_0.d), -_wgslsmith_mod_i32(arg_0.e.x << (13500u % 32u), ~arg_0.b), var_1.b));
    return Struct_2(1u, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_1.e, max(vec4<i32>(var_1.b, var_1.b, -2147483647i, arg_0.e.x), vec4<i32>(1i, var_1.b, var_1.b, var_1.e.x))), firstTrailingBit(~vec4<i32>(1i, var_1.e.x, arg_0.b, 0i))), all(vec3<bool>(!arg_0.d, var_1.c, var_1.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - -276f)))) == -553f, var_1.e);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_vec2_i32(arg_1.e.yz, arg_1.b.zz);
    let var_2 = func_4(func_2(vec3<f32>(arg_1.c.x, -806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1594f)))), select(~(~(~vec4<u32>(var_0.x, 38732u, 1u, 1u))), ~vec4<u32>(~18520u, var_0.x, var_0.x, u_input.a.x), !arg_0));
    var_1 = var_2.e.yw & arg_1.b.xy;
    var var_3 = -1467f;
    return all(select(!vec4<bool>(var_2.c, true, arg_0, arg_0), vec4<bool>(arg_0, var_2.d | arg_0, arg_1.a.x > arg_1.a.x, true), select(var_2.d && true, false, var_2.d | true))) || false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, all(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, 3629u <= (42043u >> (u_input.b.x % 32u)))));
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.b, ~vec2<u32>(u_input.a.x, ~1u) >> (firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.b, select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.a.yx, true))) % vec2<u32>(32u)));
    var_0 = select(!(!select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), var_0.x)), !vec2<bool>(!all(vec3<bool>(false, true, true)), false), all(vec2<bool>(func_1(false, Struct_1(vec4<f32>(-1000f, 1075f, -1408f, 1008f), vec4<i32>(2147483647i, 1i, -1i, 2147483647i), vec3<f32>(691f, 849f, -2128f), 22713i, vec3<i32>(-48957i, -2147483647i, 0i)), abs(0i)), var_0.x)));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(435f, 523f, -2904f))), vec3<f32>(-400f, -1811f, -574f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(197f, -1073f, -1944f), vec3<f32>(1343f, 1000f, -2367f))))))));
    var_0 = select(vec2<bool>(var_0.x, var_0.x), select(!(!vec2<bool>(var_2.c, false)), vec2<bool>(var_2.d, var_2.d), any(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_2.c)), true))), vec2<bool>(all(select(!vec3<bool>(true, false, var_2.d), !vec3<bool>(var_2.d, var_2.d, true), var_2.d)), var_2.c));
    let var_3 = -(13922i << (_wgslsmith_div_u32(47208u, u_input.c) % 32u));
    var_1 = abs(max(u_input.a.zy, _wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(1u, 80325u)), firstTrailingBit(~vec2<u32>(1u, 63013u)), max(u_input.a.zz, abs(vec2<u32>(0u, var_2.a))))));
    let var_4 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-3174f, 1380f, -1014f, -1000f), vec4<f32>(-1032f, 1225f, -461f, 1389f), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_f_op_f32(474f - -1056f), _wgslsmith_f_op_f32(f32(-1f) * -1662f), -1978f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1887f, -1449f, -550f, -179f) - vec4<f32>(1599f, 2488f, 1736f, 505f)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -countOneBits(var_2.e), firstTrailingBit(var_2.e) & (var_2.e | vec4<i32>(0i, -2147483647i, -1i, var_3))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(2325f)))), _wgslsmith_div_f32(604f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-432f, 1703f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f + _wgslsmith_f_op_f32(ceil(173f))))), var_3, vec3<i32>(var_3 >> (0u % 32u), -47463i, _wgslsmith_div_i32(var_2.e.x, ~reverseBits(var_2.e.x))));
    let var_5 = 191f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-716f, var_4.c.x, var_4.a.x, -665f), countOneBits(var_1.x), var_4.a);
}

