struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.wxy), arg_2.b.c));
    var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-651f, var_0.x, arg_1.b)));
    var var_1 = 2147483647i;
    let var_2 = arg_2.b;
    var var_3 = vec4<u32>(u_input.a, reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), select(~vec2<u32>(47475u, u_input.a), vec2<u32>(51956u, 0u) | vec2<u32>(1u, u_input.a), true))), ~u_input.a, _wgslsmith_mod_u32(u_input.a, reverseBits(u_input.a >> (~34282u % 32u))));
    return all(vec3<bool>(false, true, true && any(vec2<bool>(false, false))));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = arg_0.a.b;
    var_0 = select(1u, abs(_wgslsmith_add_u32(4294967295u, ~u_input.a)) << (u_input.a % 32u), all(vec3<bool>(true, func_3(vec4<f32>(var_1.c.x, 674f, arg_0.a.d, var_1.b), var_1, Struct_2(var_1.a.x, Struct_1(vec3<i32>(var_1.a.x, u_input.b, var_1.a.x), 839f, arg_0.a.b.c), vec2<i32>(13444i, 1i), arg_0.a.b.c.x)), true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(241f, -1223f, select(false, false, true)))))), -143f);
    return vec3<u32>(~0u, firstTrailingBit(6327u), ~4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = u_input.a;
    var_0 = ~_wgslsmith_clamp_u32(12996u, ~(~_wgslsmith_div_u32(6510u, u_input.a)), select(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 1u))), ~71919u & u_input.a, !(!arg_1.x)));
    var var_1 = arg_1.x;
    var_0 = ~1u;
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(~u_input.a, u_input.a, u_input.a), min(max(firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, 0u)), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, 1u, 31552u))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(20050u, u_input.a, u_input.a)), countOneBits(vec3<u32>(u_input.a, 0u, 19124u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 63773u, u_input.a), vec3<u32>(1u, u_input.a, 37925u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 1u), vec4<u32>(u_input.a, 4294967295u, 19298u, u_input.a)), u_input.a, ~0u) >> (~vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), abs(func_2(Struct_3(Struct_2(-1i, Struct_1(arg_0.xxx, -1528f, vec3<f32>(-152f, -290f, -191f)), vec2<i32>(-4385i, u_input.d), -791f), vec2<i32>(u_input.d, -1i), 1i)))) ^ vec3<u32>(73143u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 8319u), reverseBits(4294967295u))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1883f)) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1083f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-652f, 800f)))), _wgslsmith_f_op_f32(f32(-1f) * -218f))), vec4<f32>(634f, 1f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2489f, -959f)) - _wgslsmith_f_op_f32(f32(-1f) * -664f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var var_1 = vec3<i32>(u_input.b, u_input.b, firstTrailingBit(min(u_input.c, 0i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, -913f, 537f, 255f))), _wgslsmith_f_op_vec4_f32(func_1(-reverseBits(vec4<i32>(23654i, -36772i, u_input.b, -40508i)), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)))));
    let var_3 = vec3<bool>(false, ~u_input.a <= u_input.a, func_3(vec4<f32>(_wgslsmith_f_op_f32(max(-883f, _wgslsmith_f_op_f32(max(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1376f, -533f))), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -159f)), Struct_1(-vec3<i32>(2437i, -25201i, -10086i) >> (func_2(Struct_3(Struct_2(-17116i, Struct_1(vec3<i32>(-5129i, u_input.c, -1i), -735f, vec3<f32>(-2369f, var_2.x, -1936f)), var_1.xz, var_2.x), var_1.zy, var_1.x)) % vec3<u32>(32u)), -296f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(u_input.d, -21096i, -23430i, var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))).xyx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 778f, 895f))))), Struct_2(-33597i, Struct_1(-vec3<i32>(1i, -18677i, u_input.c), _wgslsmith_f_op_f32(trunc(var_2.x)), var_2.yxy), vec2<i32>(var_1.x, 2147483647i), -1692f)));
    var_0 = select(select(!(!var_3.xx), var_3.yz, !vec2<bool>(!var_0.x, false)), vec2<bool>(var_3.x, var_0.x), vec2<bool>(true, countOneBits(u_input.d) <= abs(min(u_input.b, -51679i))));
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_div_i32(countOneBits(select(-61399i, 21345i, true)), 22549i), var_1.x, var_1.x ^ -min(2147483647i, 21282i)), var_2.x, vec3<f32>(-252f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(-var_1.x, _wgslsmith_mult_i32(21198i, u_input.d), _wgslsmith_mult_i32(u_input.b, var_1.x), ~u_input.c), vec4<bool>(false, select(true, false, false), var_3.x | true, true))).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -269f)))), var_2.x)));
}

