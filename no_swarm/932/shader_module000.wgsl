struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_2(vec3<i32>(-_wgslsmith_div_i32(2147483647i, u_input.c), 2147483647i, 2148i) >> ((~reverseBits(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x)) << (~(vec3<u32>(3105u, u_input.b.x, 3539u) & vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(~u_input.c), Struct_1(~u_input.a.xx, any(select(vec4<bool>(false, arg_0.x, true, true), !vec4<bool>(arg_0.x, false, arg_0.x, false), any(vec4<bool>(false, arg_0.x, true, false)))), arg_0.x, u_input.a.zy, countOneBits(vec3<i32>(_wgslsmith_mult_i32(47710i, u_input.c), u_input.c, u_input.c))), vec3<bool>(true != any(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), arg_0.x)), !arg_0.x, !any(select(vec2<bool>(false, true), arg_0.xx, arg_0.yx))));
    var_0 = Struct_2(-vec3<i32>(i32(-1i) * -20831i, abs(-40040i << (var_0.c.a.x % 32u)), 1i), -_wgslsmith_div_i32(var_0.c.e.x, _wgslsmith_mod_i32(~476i, u_input.c)), Struct_1(vec2<u32>(var_0.c.d.x, 1u), var_0.c.c, !any(select(vec4<bool>(true, false, false, var_0.d.x), vec4<bool>(true, false, false, var_0.c.b), vec4<bool>(false, false, true, arg_0.x))), ~vec2<u32>(u_input.a.x, firstLeadingBit(0u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.c, firstTrailingBit(u_input.c), 1i), firstLeadingBit(vec3<i32>(31580i, 28182i, var_0.a.x)) << (~u_input.a % vec3<u32>(32u)))), select(vec3<bool>(var_0.d.x, any(select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, true, true, var_0.c.c), false)), var_0.d.x), vec3<bool>(!arg_0.x, all(select(vec4<bool>(arg_0.x, var_0.c.b, arg_0.x, true), vec4<bool>(false, arg_0.x, false, arg_0.x), true)), var_0.d.x), !arg_0.x));
    var var_1 = Struct_1(~reverseBits(var_0.c.a) << (abs(min(_wgslsmith_mod_vec2_u32(vec2<u32>(40550u, var_0.c.a.x), u_input.a.xz), countOneBits(vec2<u32>(u_input.a.x, 0u)))) % vec2<u32>(32u)), select(all(!select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(true, var_0.c.b, false, var_0.c.b), var_0.d.x)), true, arg_0.x), true && any(!arg_0.zx), var_0.c.d, vec3<i32>(i32(-1i) * -(i32(-1i) * -7890i), countOneBits(_wgslsmith_sub_i32(-33859i, ~0i)), _wgslsmith_add_i32(max(abs(-1i), countOneBits(var_0.c.e.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.c, var_0.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -26457i, -45967i), vec3<i32>(u_input.c, 90437i, 2147483647i), var_0.c.e)))));
    var var_2 = !(!var_1.c);
    var_2 = var_1.c;
    return _wgslsmith_mult_i32(u_input.c >> ((_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c.d.x, var_0.c.d.x, 11760u), vec4<u32>(u_input.b.x, u_input.a.x, var_0.c.d.x, 15036u)), ~4294967295u, 50785u) & var_1.d.x) % 32u), ~(~(-2147483647i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(2147483647i, 966i, ~_wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.c, func_3(vec3<bool>(true, true, false))), firstTrailingBit(-2147483647i) & countOneBits(66302i)));
    var var_1 = 341f;
    let var_2 = arg_1.x;
    var var_3 = -1i;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-653f + -850f), _wgslsmith_f_op_f32(f32(-1f) * -284f))))));
    return Struct_2(-min(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, -18901i, u_input.c) >> (u_input.a % vec3<u32>(32u)), select(vec3<i32>(var_0, u_input.c, 30538i), vec3<i32>(u_input.c, -10011i, u_input.c), false)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(69636i, u_input.c, var_0)), abs(vec3<i32>(var_0, u_input.c, 67759i)))), var_0, Struct_1(vec2<u32>(max(0u, 71842u), arg_0.x), true, true, vec2<u32>(_wgslsmith_sub_u32(u_input.b.x & 35523u, ~13142u), var_2), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(67676i, u_input.c, u_input.c)), -(~vec3<i32>(u_input.c, 1i, 0i)))), select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(func_2(~u_input.a.yy, vec3<u32>(~(u_input.a.x << (u_input.a.x % 32u)), 0u, max(reverseBits(1u), 1u))), _wgslsmith_div_vec2_u32(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(75946u, u_input.b.x), vec2<u32>(53708u, 51307u), vec2<u32>(4294967295u, 81480u)) | ~vec2<u32>(24103u, u_input.a.x)), func_2(vec2<u32>(u_input.a.x ^ 0u, 39584u), _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.a), vec3<u32>(0u, u_input.b.x, u_input.a.x))).c.a), func_2(max(vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.a.yx), _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a.x), reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37565u, 0u, 17357u), vec4<u32>(u_input.b.x, 20057u, 25059u, u_input.b.x))), _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, 54740u)) | select(vec3<u32>(55967u, 0u, 0u), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), true))).c, Struct_2(abs(max(reverseBits(vec3<i32>(u_input.c, 0i, 2147483647i)), -vec3<i32>(u_input.c, -1i, -41111i))), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 1i, u_input.c, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, -82141i, -34193i), vec4<i32>(-19601i, u_input.c, u_input.c, u_input.c)))), Struct_1(~u_input.b.xx, false, all(vec2<bool>(true, true)), vec2<u32>(4294967295u << (u_input.b.x % 32u), 0u), min(vec3<i32>(u_input.c, 5911i, u_input.c), vec3<i32>(u_input.c, u_input.c, -1i)) << (countOneBits(u_input.b) % vec3<u32>(32u))), vec3<bool>(false, true, true)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_clamp_vec3_i32(~var_0.d.c.e, var_0.c.e, vec3<i32>(min(u_input.c, 2147483647i), i32(-1i) * -24604i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.e.x, -28309i, u_input.c, var_0.c.e.x), vec4<i32>(1i, u_input.c, var_0.c.e.x, u_input.c)))), -13966i, func_2(vec2<u32>(u_input.a.x, u_input.a.x), vec3<u32>(38966u, 49060u, ~var_0.a.c.a.x)).c, !func_2(u_input.b.xz, u_input.b).d), u_input.a.zx, var_0.c, func_2(u_input.b.zz, u_input.b));
    var_0 = var_1;
    var_0 = Struct_3(var_1.a, ~_wgslsmith_mult_vec2_u32(~(~var_0.d.c.a), ~_wgslsmith_mult_vec2_u32(u_input.a.zz, var_0.c.d)), Struct_1(u_input.b.xx, !all(!vec3<bool>(var_0.c.c, var_0.c.b, true)), u_input.c != ~(-5638i & u_input.c), abs(abs(countOneBits(var_0.a.c.a))), _wgslsmith_sub_vec3_i32(var_0.c.e, vec3<i32>(-23390i, -8035i, 2147483647i)) << (vec3<u32>(42400u, reverseBits(21659u), _wgslsmith_dot_vec2_u32(u_input.b.xy, var_0.d.c.a)) % vec3<u32>(32u))), func_2(vec2<u32>(2020u & var_0.c.d.x, _wgslsmith_add_u32(~121363u, 0u << (var_1.d.c.a.x % 32u))), max(u_input.a, ~vec3<u32>(u_input.b.x, 15813u, 28178u)) << ((~u_input.b & ~vec3<u32>(4294967295u, 4294967295u, var_0.b.x)) % vec3<u32>(32u))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-586f, 445f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1695f, -545f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1413f, -252f)) * vec2<f32>(430f, -995f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, -2147f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(798f, 501f)))))))), var_1.a.d);
    return func_2(firstTrailingBit(var_1.d.c.d), ~u_input.a << (~u_input.b % vec3<u32>(32u))).c;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<i32>(~(-_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, -23326i), select(-20547i, u_input.c, arg_0.c))), arg_0.e.x, (func_2(vec2<u32>(71423u, 0u), ~u_input.a).a.x << (_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(u_input.b.x, 2945u)) % 32u)) | _wgslsmith_clamp_i32(-countOneBits(u_input.c), ~4117i, abs(-arg_0.e.x)), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1647f * _wgslsmith_f_op_f32(sign(-909f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f * -1979f)))));
    let var_2 = arg_0.a;
    var_0 = vec4<i32>(-u_input.c, _wgslsmith_sub_i32(u_input.c, _wgslsmith_mult_i32(u_input.c, arg_0.e.x)), arg_0.e.x, ~abs(u_input.c));
    var_0 = firstLeadingBit(min(-_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, 12123i, -39596i, arg_0.e.x)), ~vec4<i32>(-1i, arg_0.e.x, 42422i, arg_0.e.x)), -(-vec4<i32>(arg_0.e.x, -1i, var_0.x, 0i) << ((vec4<u32>(u_input.a.x, arg_0.a.x, var_2.x, u_input.b.x) << (vec4<u32>(var_2.x, 30494u, 1u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    return -276f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<i32>(u_input.c, _wgslsmith_sub_i32(16497i, select(u_input.c, _wgslsmith_sub_i32(u_input.c, 44037i), any(vec4<bool>(true, false, false, true)))), 0i, u_input.c), vec4<u32>(19392u, _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x) << (64289u % 32u), 0u, u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(abs(196f)), _wgslsmith_f_op_f32(func_4(func_1()))), -7622i);
}

