struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x << (143478u % 32u), min(40654i, 2147483647i), u_input.b.x, reverseBits(u_input.c)), abs(vec4<i32>(u_input.c, 0i, -50946i, u_input.b.x)) << (firstTrailingBit(vec4<u32>(20653u, 1u, u_input.a.x, 15636u)) % vec4<u32>(32u)));
    var var_1 = Struct_1(vec3<bool>(true, all(vec3<bool>(false, true, true)), true), firstLeadingBit(vec3<u32>(~min(u_input.d.x, u_input.a.x), 4294967295u, u_input.a.x)), select(vec3<bool>(-u_input.b.x >= u_input.c, !all(vec4<bool>(false, false, true, true)), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), select(all(vec2<bool>(false, true)), true, true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1635f - 1736f)), -395f))));
    let var_2 = 7653i;
    var_1 = Struct_1(var_1.c, vec3<u32>(59398u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), select(u_input.d, abs(vec2<u32>(1u, var_1.b.x)), var_1.a.x)), u_input.d.x), vec3<bool>(all(!(!var_1.c.zz)), true, any(vec4<bool>(false, false, var_1.a.x, var_1.d < -445f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-734f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d)) * _wgslsmith_f_op_f32(-867f - -2569f))) + 1010f));
    var var_3 = Struct_3(Struct_2(Struct_1(var_1.a, max(vec3<u32>(u_input.a.x, 1u, u_input.d.x), vec3<u32>(22234u, var_1.b.x, var_1.b.x)), !vec3<bool>(var_1.a.x, true, false), -263f), select(select(select(var_1.a, var_1.c, var_1.a.x), select(vec3<bool>(false, var_1.a.x, var_1.c.x), var_1.a, var_1.a), select(vec3<bool>(var_1.c.x, var_1.a.x, var_1.c.x), vec3<bool>(true, var_1.c.x, true), false)), !(!var_1.a), !(!var_1.a))), Struct_2(Struct_1(vec3<bool>(true, all(vec4<bool>(true, var_1.c.x, true, var_1.c.x)), var_1.c.x | true), var_1.b, var_1.a, var_1.d), var_1.c), -29541i);
    return -49558i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_1(vec3<bool>(u_input.c > abs(_wgslsmith_mult_i32(2147483647i, u_input.c)), true, !(u_input.d.x > u_input.a.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(28951u, arg_0.b.x)), 55107u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), u_input.d.x, ~51276u, arg_0.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, 26917u, 73193u, u_input.d.x), vec4<u32>(u_input.d.x, 2630u, 4294967295u, 36036u), vec4<u32>(u_input.a.x, arg_0.b.x, 4294967295u, 13936u)))), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -412f));
    let var_1 = var_0;
    var var_2 = false;
    var var_3 = Struct_3(Struct_2(Struct_1(vec3<bool>(any(var_1.a), !arg_0.c.x, var_1.b.x >= u_input.a.x), var_1.b, !vec3<bool>(var_1.a.x, false, false), var_1.d), !arg_0.c), Struct_2(Struct_1(var_0.c, ~(~arg_0.b), select(vec3<bool>(true, var_1.a.x, var_1.c.x), !var_0.c, false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-537f)), 1386f))), select(var_1.a, select(!vec3<bool>(false, var_1.c.x, false), !vec3<bool>(var_0.c.x, false, false), select(var_1.a, arg_0.c, false)), !(var_0.b.x >= 10331u))), _wgslsmith_sub_i32(u_input.b.x, -1i ^ func_3()));
    let var_4 = var_3.a;
    return var_3.b;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = ~7196u;
    var_0 = ~(~arg_1.a.a.b.x);
    let var_1 = !(!vec2<bool>(true, arg_1.b.b.x));
    var_0 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(~76886u, _wgslsmith_div_u32(~min(0u, 7280u), ~reverseBits(arg_1.b.a.b.x))));
    var var_2 = 1u;
    return 155f;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(!select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), ~_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, arg_3, arg_3), vec3<u32>(arg_3, 22556u, u_input.d.x)), min(min(vec3<u32>(1u, 72191u, u_input.d.x), vec3<u32>(48958u, arg_3, 0u)), firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.d.x)))), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), true), vec3<bool>(true, true, true), select(true, arg_0 < -405f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 693f), -385f))))));
    var var_1 = reverseBits(arg_2.zxw);
    let var_2 = Struct_3(func_2(Struct_1(select(vec3<bool>(false, true, false), !vec3<bool>(false, var_0.a.x, var_0.c.x), var_0.a), var_0.b, var_0.c, var_0.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-658f, -1869f), vec2<f32>(arg_1, -916f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(617f, -1218f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1600f, -345f) - vec2<f32>(-1024f, var_0.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) * vec2<f32>(var_0.d, arg_1)))), arg_1), Struct_2(Struct_1(vec3<bool>(true, all(vec3<bool>(true, var_0.c.x, true)), false), _wgslsmith_mod_vec3_u32(vec3<u32>(57750u, 43256u, u_input.d.x) ^ var_0.b, ~vec3<u32>(var_0.b.x, 56926u, 28281u)), var_0.c, _wgslsmith_f_op_f32(-arg_0)), select(!(!var_0.c), var_0.c, true)), -(i32(-1i) * -func_3()));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d))) - _wgslsmith_f_op_f32(func_4(var_2.c, var_2)));
    let var_4 = var_2.a;
    return var_4.a;
}

fn func_1() -> vec4<f32> {
    var var_0 = func_5(-1621f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)), _wgslsmith_f_op_f32(func_4(u_input.b.x, Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x), vec3<bool>(false, false, true), -489f), vec3<bool>(false, true, false)), func_2(Struct_1(vec3<bool>(false, true, false), vec3<u32>(10062u, u_input.a.x, 1u), vec3<bool>(true, false, false), 182f), vec2<f32>(1228f, -2785f), 354f), min(u_input.c, -48436i))))), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(-7894i), func_3(), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(18647i, 36222i), u_input.b)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.c, 7020i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.c, u_input.b.x, u_input.b.x), vec4<i32>(22606i, -37822i, 0i, -2147483647i), vec4<i32>(0i, -1i, u_input.c, u_input.c))), vec4<i32>(~u_input.c, _wgslsmith_div_i32(-1i, 2147483647i), u_input.c, u_input.c)), ~vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.b.x), 1i, reverseBits(u_input.b.x), u_input.b.x)), ~(~countOneBits(u_input.d.x)));
    let var_1 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_4(-2147483647i, Struct_3(Struct_2(Struct_1(var_0.a, vec3<u32>(u_input.d.x, 80886u, 1u), var_0.c, var_0.d), vec3<bool>(false, var_0.a.x, false)), Struct_2(Struct_1(var_0.c, vec3<u32>(var_0.b.x, 4294967295u, u_input.a.x), vec3<bool>(var_0.c.x, false, var_0.a.x), 1264f), var_0.a), -1i))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) - _wgslsmith_f_op_f32(-var_0.d)), ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(17601i, u_input.c, 1i, u_input.c)), -(vec4<i32>(u_input.c, 56124i, u_input.b.x, 0i) | vec4<i32>(u_input.b.x, 0i, u_input.c, -52i))), var_0.b.x).c.xz;
    var var_2 = max(firstTrailingBit(~(firstLeadingBit(u_input.d.x) & ~4294967295u)), u_input.d.x);
    let var_3 = Struct_3(Struct_2(Struct_1(var_0.a, vec3<u32>(func_5(404f, var_0.d, vec4<i32>(4369i, 4332i, 2147483647i, 8421i), 19300u).b.x, _wgslsmith_sub_u32(117117u, 0u), var_0.b.x >> (9298u % 32u)), !var_0.c, var_0.d), vec3<bool>(func_2(func_2(Struct_1(var_0.a, vec3<u32>(u_input.d.x, var_0.b.x, u_input.a.x), vec3<bool>(var_0.c.x, var_1.x, true), var_0.d), vec2<f32>(var_0.d, var_0.d), -682f).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, var_0.d)), -207f).b.x, !var_1.x != any(vec4<bool>(var_1.x, false, true, var_1.x)), !all(vec2<bool>(var_1.x, false)))), func_2(Struct_1(vec3<bool>(!var_1.x, all(vec3<bool>(false, true, var_0.c.x)), true), ~select(var_0.b, var_0.b, vec3<bool>(var_0.c.x, true, var_0.a.x)), vec3<bool>(false, !var_0.a.x, true), var_0.d), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))), -2094f), u_input.c);
    var var_4 = var_3.b.a;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.a.d, _wgslsmith_f_op_f32(abs(-1108f)), var_3.b.a.d, func_5(_wgslsmith_f_op_f32(-var_0.d), func_2(Struct_1(vec3<bool>(var_4.c.x, var_0.c.x, var_1.x), var_0.b, vec3<bool>(var_4.c.x, var_3.a.b.x, var_4.c.x), -1464f), _wgslsmith_f_op_vec2_f32(vec2<f32>(254f, 525f) + vec2<f32>(-1516f, var_3.a.a.d)), _wgslsmith_f_op_f32(var_4.d - var_3.b.a.d)).a.d, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.c, 5019i, -2147483647i, -1i), vec4<i32>(u_input.b.x, var_3.c, var_3.c, var_3.c))), ~(20591u & var_3.b.a.b.x)).d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(184f, -929f)) * _wgslsmith_f_op_f32(func_4(u_input.b.x, var_3))), var_3.a.a.d, var_0.d, _wgslsmith_div_f32(var_0.d, var_4.d))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = vec4<u32>(~(~arg_0.x), ~11470u, select(countOneBits(_wgslsmith_sub_u32(firstTrailingBit(u_input.d.x), ~arg_0.x)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_0.x, arg_0.x) & vec2<u32>(arg_0.x, 43742u)), u_input.a), select(true, false, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)))), 1u);
    var_0 = vec4<u32>(func_2(Struct_1(vec3<bool>(true, true, true), vec3<u32>(arg_0.x, arg_0.x, 5275u) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 60847u, arg_0.x), arg_0), vec3<bool>(true, any(vec2<bool>(false, true)), true), arg_1.x), arg_1.wy, _wgslsmith_f_op_f32(abs(506f))).a.b.x, 90955u, _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(~arg_0.zx, _wgslsmith_add_vec2_u32(u_input.d, arg_0.zy))), select(func_5(-2105f, 1000f, vec4<i32>(20592i, 1i, -1i, u_input.b.x), var_0.x).b.x >> (reverseBits(4294967295u) % 32u), firstLeadingBit(select(arg_0.x, u_input.a.x, true)), any(vec2<bool>(false, false)))), ~var_0.x);
    var_0 = select(~(vec4<u32>(_wgslsmith_add_u32(0u, var_0.x), 1u, ~arg_0.x, 1u) << (vec4<u32>(abs(u_input.a.x), 95684u, abs(var_0.x), max(var_0.x, var_0.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(max(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.d.x, 0u, var_0.x, u_input.a.x), vec4<u32>(1u, 4294967295u, arg_0.x, 4294967295u), vec4<bool>(true, false, true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.d.x, var_0.x, 142495u), vec4<u32>(0u, 4294967295u, 0u, u_input.a.x))), ~select(vec4<u32>(19564u, u_input.d.x, 0u, 40185u), vec4<u32>(u_input.d.x, 105609u, 4294967295u, u_input.d.x), vec4<bool>(true, false, true, false))), vec4<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 0u), ~var_0.x, max(_wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x), ~_wgslsmith_clamp_u32(var_0.x, u_input.a.x, u_input.d.x))), true);
    var_0 = ~(~vec4<u32>(arg_0.x, 12112u, firstTrailingBit(1u), _wgslsmith_clamp_u32(arg_0.x, 1u, 0u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 27059u, 36193u), countOneBits(0u), u_input.d.x, func_5(arg_1.x, arg_1.x, arg_2, 26258u).b.x), vec4<u32>(u_input.a.x, 37989u, 1u, _wgslsmith_div_u32(var_0.x, u_input.d.x)), ~vec4<u32>(27868u, var_0.x, 46752u, 1u)) % vec4<u32>(32u)));
    let var_1 = func_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1523f, 328f))), arg_1.x, ~_wgslsmith_div_vec4_i32(-vec4<i32>(0i, 18528i, arg_2.x, -30581i), -arg_2), abs(37951u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 1682f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.ww, vec2<f32>(164f, 600f), func_5(2584f, 438f, arg_2, 21796u).a.zz)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1229f, arg_1.x))), _wgslsmith_f_op_vec2_f32(-arg_1.yz)))), 778f);
    return Struct_3(Struct_2(var_1.a, func_2(func_5(_wgslsmith_f_op_f32(var_1.a.d + -462f), 785f, arg_2, 24240u), arg_1.zw, _wgslsmith_div_f32(func_2(var_1.a, arg_1.zz, 1400f).a.d, 216f)).a.a), func_2(Struct_1(func_2(Struct_1(vec3<bool>(false, false, var_1.a.a.x), vec3<u32>(var_0.x, 1u, 4294967295u), vec3<bool>(var_1.a.a.x, true, true), 987f), vec2<f32>(1258f, arg_1.x), var_1.a.d).b, vec3<u32>(17942u, 0u, 0u), var_1.b, arg_1.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1389f * arg_1.x) + 1354f), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.a.d)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.d + 739f), _wgslsmith_f_op_f32(ceil(arg_1.x)))))), 100i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_6(vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x << (84085u % 32u)), 17160u)), _wgslsmith_f_op_vec4_f32(func_1()), vec4<i32>(u_input.b.x, var_0, -_wgslsmith_clamp_i32(-4331i, -6328i, -var_0), 2421i));
    let var_2 = Struct_2(Struct_1(func_5(var_1.b.a.d, 545f, ~(vec4<i32>(var_1.c, var_1.c, var_1.c, 40473i) << (vec4<u32>(var_1.b.a.b.x, var_1.b.a.b.x, var_1.a.a.b.x, 1u) % vec4<u32>(32u))), func_5(var_1.a.a.d, _wgslsmith_f_op_f32(-var_1.a.a.d), min(vec4<i32>(u_input.c, var_0, 1i, -19263i), vec4<i32>(1i, u_input.b.x, 19902i, u_input.c)), ~72980u).b.x).a, min(var_1.a.a.b, var_1.b.a.b), select(!var_1.a.a.a, !var_1.a.a.a, func_2(var_1.b.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-586f, 610f)), 335f).b.x), var_1.a.a.d), !(!vec3<bool>(any(vec2<bool>(false, true)), var_1.b.b.x & var_1.b.a.a.x, var_1.b.a.c.x)));
    var var_3 = vec2<bool>((!(!var_2.a.c.x) || !all(vec4<bool>(var_1.b.a.a.x, var_2.b.x, var_1.b.a.a.x, var_1.a.b.x))) || var_1.a.a.c.x, true);
    let var_4 = func_6(~var_2.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-111f))), 771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(558f)), -637f)))), vec4<i32>(1i, 1i, firstLeadingBit(_wgslsmith_mult_i32(var_1.c, 24888i)), -27411i));
    var var_5 = firstLeadingBit(-(~_wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, var_4.c, u_input.b.x), vec3<i32>(31404i, var_1.c, -856i), vec3<bool>(false, false, var_1.a.b.x)), select(vec3<i32>(u_input.b.x, -2147483647i, 0i), vec3<i32>(var_4.c, var_4.c, var_4.c), vec3<bool>(true, var_1.b.a.c.x, var_3.x)))));
    let var_6 = Struct_1(var_1.b.b, vec3<u32>(_wgslsmith_clamp_u32(0u, var_2.a.b.x, var_2.a.b.x), firstTrailingBit(select(_wgslsmith_add_u32(u_input.d.x, 22663u), _wgslsmith_clamp_u32(var_2.a.b.x, var_2.a.b.x, var_2.a.b.x), var_1.c >= var_1.c)), 63875u), func_2(var_4.a.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.d))), var_2.a.d).a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.d), _wgslsmith_f_op_f32(913f + var_4.a.a.d))) * -393f));
    var_1 = func_6(vec3<u32>(func_2(Struct_1(func_5(339f, 133f, vec4<i32>(-9931i, var_1.c, var_0, u_input.b.x), u_input.a.x).c, vec3<u32>(var_1.b.a.b.x, var_2.a.b.x, var_1.a.a.b.x), var_1.a.a.c, _wgslsmith_f_op_f32(-var_1.a.a.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.a.d, var_4.b.a.d))), var_2.a.d).a.b.x, ~_wgslsmith_add_u32(1u >> (var_2.a.b.x % 32u), 1u), 4494u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a.d, -1034f, -587f, 981f) + vec4<f32>(-645f, -263f, var_2.a.d, var_4.b.a.d)))))), ~reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -5192i, var_4.c, var_5.x), vec4<i32>(var_1.c, 66077i, 2147483647i, 48496i))));
    var var_7 = Struct_3(var_4.b, Struct_2(Struct_1(select(vec3<bool>(var_2.b.x, var_4.b.a.c.x, var_2.a.c.x), func_5(-1913f, 1948f, vec4<i32>(var_5.x, var_4.c, -45481i, var_5.x), var_1.b.a.b.x).c, any(vec4<bool>(true, true, true, var_6.c.x))), var_6.b, vec3<bool>(-763f > var_6.d, var_4.b.b.x, any(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.d, var_2.a.d)))), func_6(vec3<u32>(~var_1.b.a.b.x, _wgslsmith_mult_u32(var_2.a.b.x, 1u), 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.a.d, var_4.b.a.d, var_1.a.a.d, var_1.b.a.d)))), select(vec4<i32>(u_input.b.x, -11989i, 0i, 2147483647i), vec4<i32>(54506i, -7475i, var_5.x, -58446i), vec4<bool>(var_6.a.x, false, var_6.a.x, var_3.x)) ^ max(vec4<i32>(var_4.c, var_0, var_4.c, u_input.b.x), vec4<i32>(-18727i, 0i, u_input.c, 0i))).a.b), -89800i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(5652u) ^ select(var_1.b.a.b.x << (var_2.a.b.x % 32u), ~var_6.b.x, true)), firstTrailingBit(vec4<i32>(0i, i32(-1i) * -1i, 850i, ~var_5.x)) >> (min(~(vec4<u32>(var_2.a.b.x, var_2.a.b.x, var_4.a.a.b.x, var_4.b.a.b.x) >> (vec4<u32>(var_7.b.a.b.x, 56059u, 8439u, var_7.b.a.b.x) % vec4<u32>(32u))), vec4<u32>(var_1.a.a.b.x ^ var_7.a.a.b.x, var_1.a.a.b.x, ~0u, var_4.a.a.b.x)) % vec4<u32>(32u)));
}

