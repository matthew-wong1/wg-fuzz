struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_2(vec3<bool>(any(!(!vec2<bool>(arg_0.a.x, arg_1.a.x))), false, arg_1.a.x), Struct_1(vec3<bool>(any(select(vec4<bool>(false, arg_0.a.x, false, true), vec4<bool>(arg_1.a.x, false, arg_0.d.a.x, true), vec4<bool>(false, arg_1.a.x, false, arg_1.a.x))), !arg_1.a.x, true), min(~arg_0.c << (u_input.a % 32u), abs(-1i)), select(arg_1.c, arg_1.c ^ (vec4<u32>(24774u, 0u, 5170u, 16886u) >> (arg_1.c % vec4<u32>(32u))), arg_1.a.x)), min(~arg_1.b, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(-1i, arg_0.c, arg_0.c), vec3<i32>(arg_0.c, arg_1.b, -59056i), arg_0.a.x), max(-vec3<i32>(-2147483647i, arg_0.d.b, arg_1.b), vec3<i32>(-35413i, arg_0.b.b, arg_0.c) | vec3<i32>(19601i, -2147483647i, arg_0.d.b)))), Struct_1(!arg_1.a, 1i, abs(_wgslsmith_sub_vec4_u32(arg_1.c, arg_1.c) ^ (arg_1.c ^ arg_1.c))));
    var var_2 = var_1.b.a;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 18680u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.c.x, _wgslsmith_add_u32(arg_1.c.x, 1u) << (0u % 32u)), max(~max(var_1.b.c.wy, arg_2.yx), vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), arg_1.c.x))));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-342f, -664f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1230f), -255f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(181f, -482f), vec2<f32>(1910f, -556f)))), _wgslsmith_div_vec2_f32(vec2<f32>(416f, 107f), vec2<f32>(-1000f, -521f)))), vec2<f32>(_wgslsmith_f_op_f32(1858f * _wgslsmith_f_op_f32(floor(-257f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)) - _wgslsmith_f_op_f32(-1122f * _wgslsmith_f_op_f32(f32(-1f) * -1149f)))));
    return 41971u;
}

fn func_2(arg_0: Struct_5) -> f32 {
    let var_0 = false;
    let var_1 = ~abs(u_input.a);
    let var_2 = var_1;
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~var_2, 1u) << (u_input.a % 32u), 11168u), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(107167u, 7044u), vec2<u32>(u_input.a, 30186u) >> (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u))), arg_0.a.b.d.c.zy) & arg_0.a.b.d.c.zz);
    var_3 = ~vec2<u32>(~(~arg_0.a.b.b.c.x), func_3(Struct_2(arg_0.a.b.a, arg_0.a.b.b, min(-2147483647i, arg_0.a.b.d.b), arg_0.a.b.d), Struct_1(vec3<bool>(arg_0.a.b.b.a.x, var_0, false), -arg_0.a.b.c, vec4<u32>(1u, var_1, arg_0.b, var_1)), ~countOneBits(arg_0.a.b.b.c.xyx)));
    return arg_0.c;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(1i, 1i, 1i)), ~(vec3<i32>(-1i) * -vec3<i32>(-1i, 30225i, 2147483647i))) >> (u_input.a % 32u);
    let var_1 = firstTrailingBit(countOneBits(~firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-9246i, var_0, -16531i), vec3<i32>(var_0, -41367i, var_0)))));
    var var_2 = vec4<bool>(true, true, true, true);
    var_2 = select(!(!(!(!vec4<bool>(true, false, var_2.x, var_2.x)))), !vec4<bool>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -219f) > _wgslsmith_f_op_f32(func_2(Struct_5(Struct_4(vec4<f32>(-796f, -832f, 756f, 2089f), Struct_2(var_2.zzz, Struct_1(vec3<bool>(var_2.x, true, true), -66134i, vec4<u32>(u_input.a, 90949u, u_input.a, 1u)), 22982i, Struct_1(vec3<bool>(true, true, true), var_0, vec4<u32>(u_input.a, u_input.a, u_input.a, 46258u))), vec4<f32>(1000f, 549f, -405f, -1260f)), u_input.a, -136f))), var_2.x & any(vec3<bool>(false, var_2.x, false)), true), select(all(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, var_2.x, var_2.x), var_2.x)) & (true & !var_2.x), false, all(vec2<bool>(true, !var_2.x))));
    var_2 = !select(!select(select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, false), true), select(vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, false), var_2.x), !vec4<bool>(var_2.x, var_2.x, true, true)), select(!(!vec4<bool>(true, true, var_2.x, var_2.x)), vec4<bool>(any(var_2.xw), false, var_2.x, false), true), true);
    return Struct_3(Struct_1(vec3<bool>(any(vec4<bool>(var_2.x, var_2.x, var_2.x, false)) || any(var_2.wz), true, !(var_2.x && var_2.x)), max(1562i, 2147483647i >> (u_input.a % 32u)) ^ 1i, select(countOneBits(~vec4<u32>(u_input.a, 233u, 4294967295u, u_input.a)), ~vec4<u32>(2560u, 4294967295u, 4294967295u, u_input.a), true)), select(var_2.xy, vec2<bool>(firstLeadingBit(u_input.a) <= 49217u, true), vec2<bool>(true, !var_2.x)), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_1.x, 8545i, -2147483647i, -2147483647i)), vec4<i32>(-31013i, var_1.x, 0i, 0i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, var_0, 1i, var_0), countOneBits(vec4<i32>(var_0, var_1.x, -7002i, var_0))), ~firstTrailingBit(vec4<i32>(var_1.x, -2147483647i, 46221i, var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(func_2(Struct_5(Struct_4(vec4<f32>(-1129f, 595f, -1276f, -959f), Struct_2(vec3<bool>(true, false, var_2.x), Struct_1(vec3<bool>(true, var_2.x, var_2.x), 33534i, vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a)), var_1.x, Struct_1(vec3<bool>(false, var_2.x, var_2.x), -19836i, vec4<u32>(u_input.a, u_input.a, u_input.a, 77568u))), vec4<f32>(160f, -356f, 2049f, 767f)), 1u, 122f))), _wgslsmith_f_op_f32(max(-693f, _wgslsmith_f_op_f32(-830f * -1095f))), _wgslsmith_f_op_f32(f32(-1f) * -664f))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.c.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-326f)) * arg_1.d.x);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 851f, 432f, -1190f)))) * arg_1.d) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.x, -1859f, arg_1.d.x, arg_1.d.x), _wgslsmith_f_op_vec4_f32(arg_1.d + vec4<f32>(165f, -350f, 422f, arg_1.d.x)), true)), _wgslsmith_f_op_vec4_f32(exp2(arg_1.d)))), Struct_2(vec3<bool>(true, arg_1.a.a.x, !arg_1.b.x != true), Struct_1(!vec3<bool>(arg_1.b.x, false, false), -12159i, _wgslsmith_mult_vec4_u32(arg_1.a.c, arg_1.a.c)), -1i, arg_1.a), arg_1.d);
    var_1 = -685f;
    let var_3 = arg_1;
    return func_1().a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16844u;
    let var_1 = -1000f;
    let var_2 = Struct_1(vec3<bool>(false, true, false), -countOneBits(func_4(-6868i, func_1(), func_1().a)), vec4<u32>(4294967295u, 1u, countOneBits(~u_input.a), u_input.a));
    var_0 = ~_wgslsmith_mult_u32(0u, ~(~2973u));
    var_0 = ~(~1u);
    var var_3 = _wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f))) + _wgslsmith_f_op_f32(-var_1)));
    var_3 = var_1;
    let var_4 = ~(-(~vec4<i32>(0i, var_2.b, 17565i, 53775i) << (var_2.c % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, abs(_wgslsmith_sub_vec2_u32(var_2.c.xz, ~var_2.c.xx)));
}

