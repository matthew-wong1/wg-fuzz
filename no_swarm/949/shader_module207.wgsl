struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec3<u32> {
    var var_0 = 1u;
    let var_1 = 55116u;
    var var_2 = select(select(select(vec4<bool>(any(vec3<bool>(false, true, false)), true, any(vec2<bool>(false, false)), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, true)), select(true, true, true)), vec4<bool>(true, any(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), (4294967295u & arg_1.x) == arg_1.x), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(2254f + -108f) > _wgslsmith_f_op_f32(round(719f)))), vec4<bool>(false, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true), select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), u_input.a > 7385i), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, var_1 > 4294967295u))));
    var var_3 = vec4<i32>(-(-u_input.c >> (_wgslsmith_add_u32(4781u, _wgslsmith_mult_u32(arg_1.x, 0u)) % 32u)), 2147483647i, -22029i, countOneBits(_wgslsmith_mult_i32(~(~(-8073i)), _wgslsmith_mod_i32(24413i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, arg_0.x), vec4<i32>(-2147483647i, 46163i, u_input.c, arg_0.x))))));
    let var_4 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 1827i)), firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~var_3.yz, abs(vec2<i32>(arg_0.x, -19532i))), _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_0.x, var_3.x), countOneBits(vec2<i32>(arg_0.x, u_input.c))))));
    return min(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(71064u, var_1, var_1), vec3<u32>(4294967295u, 43521u, 0u)), vec3<u32>(34863u, ~56387u, 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(abs(var_1), 122593u, abs(u_input.b)), ~vec3<u32>(~u_input.d.x, firstTrailingBit(var_1), arg_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, -1858f) - vec2<f32>(1278f, -1035f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2239f, -1403f)))), !vec3<bool>(any(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x)), any(vec2<bool>(true, arg_0.a.x)), arg_0.c.x != arg_1.x), _wgslsmith_div_f32(506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1348f)) - _wgslsmith_div_f32(257f, 806f))), Struct_1(!(!arg_0.a), _wgslsmith_clamp_vec4_i32(arg_0.b << (vec4<u32>(64683u, arg_1.x, u_input.b, 0u) % vec4<u32>(32u)), arg_0.b | arg_0.b, arg_0.b), arg_0.c)), false);
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-20458i, _wgslsmith_div_i32(-8997i, ~u_input.a)) >> ((vec2<u32>(~4294967295u, 12425u ^ arg_1.x) ^ func_3(arg_0.b.zz, _wgslsmith_mult_vec2_u32(u_input.d, arg_0.c.yz)).zy) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.d.b.x & 3542i, _wgslsmith_mult_i32(arg_0.b.x, arg_0.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(17099i, var_0.a.d.b.x), vec2<i32>(-18206i, var_0.a.d.b.x) ^ var_0.a.d.b.xz)), var_0.a.d.b.ww));
    let var_2 = !arg_0.a;
    let var_3 = all(vec3<bool>(true, true, true));
    let var_4 = _wgslsmith_f_op_f32(-var_0.a.a.x);
    return vec2<u32>(~1u, abs(~min(arg_1.x, arg_0.c.x)) >> ((abs(arg_1.x) >> (_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(1516u, var_0.a.d.c.x)) % 32u)) % 32u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = arg_2;
    var var_1 = func_4(Struct_1(!vec4<bool>(false, true, arg_1.a.x, true), _wgslsmith_mod_vec4_i32(arg_1.b, -vec4<i32>(arg_1.b.x, arg_1.b.x, 50915i, arg_1.b.x)), func_3(-vec2<i32>(-2147483647i, arg_1.b.x), vec2<u32>(firstTrailingBit(arg_0), ~40823u))), vec2<u32>(arg_1.c.x >> (0u % 32u), u_input.d.x));
    let var_2 = arg_1.b.wzy;
    return _wgslsmith_sub_u32(var_1.x, ~firstLeadingBit(arg_1.c.x));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = arg_2;
    var var_1 = select(vec3<bool>(var_0.x != (~var_0.x ^ 5350u), all(vec4<bool>(any(vec3<bool>(arg_3, arg_3, true)), true, true, all(vec3<bool>(true, arg_3, arg_3)))), true), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, arg_3, false)), vec3<bool>(false, true, arg_3), !select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, arg_3, arg_3), true)), select(select(!vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(true, true, true), vec3<bool>(arg_3, arg_3, arg_3)), false), vec3<bool>(!arg_3, any(vec3<bool>(arg_3, true, false)), arg_3), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_3), false), select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3), vec3<bool>(true, false, false)), false)), !select(!vec3<bool>(false, arg_3, arg_3), select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, true, false), vec3<bool>(false, arg_3, true)), arg_3)), !select(select(select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, arg_3, false), false), select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(false, true, arg_3), vec3<bool>(true, arg_3, false)), true), !vec3<bool>(false, arg_3, false), true));
    var_0 = vec2<u32>(~4294967295u | _wgslsmith_dot_vec2_u32(func_3(vec2<i32>(arg_1, arg_1), u_input.d).zy, ~vec2<u32>(var_0.x, 4294967295u)), u_input.d.x);
    let var_2 = Struct_1(vec4<bool>(true, var_1.x, any(select(vec3<bool>(arg_3, var_1.x, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, arg_3), arg_3), select(vec3<bool>(arg_3, false, false), vec3<bool>(false, arg_3, false), vec3<bool>(false, arg_3, arg_3)))), !arg_3), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1, 5052i, arg_1, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(25638i, u_input.a, arg_1, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(37159i, u_input.a, u_input.a, -2147483647i), vec4<i32>(2147483647i, arg_1, 24574i, u_input.a)))), vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x & arg_0, u_input.b), 4294967295u), 4294967295u));
    var_0 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 0u) << ((u_input.d | var_2.c.yy) % vec2<u32>(32u)), ~vec2<u32>(3864u, 10040u) >> (_wgslsmith_mult_vec2_u32(var_2.c.yz, arg_2) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, 1687f, 2637f, _wgslsmith_f_op_f32(756f * -1064f)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(func_5(46050u, -7985i, vec2<u32>(u_input.b, 4294967295u), true)).x), _wgslsmith_f_op_f32(arg_0.x - -177f)), select(vec3<bool>(select(false, true, true), true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), false), arg_0.x, Struct_1(vec4<bool>(true, true, true, true), select(vec4<i32>(u_input.c, 1i, -1i, -6258i), vec4<i32>(1i, 3977i, -44591i, 2147483647i), true), firstLeadingBit(vec3<u32>(arg_2, 4294967295u, arg_2)))), any(vec4<bool>(!all(vec3<bool>(true, false, false)), !any(vec3<bool>(false, true, true)), true, true)));
    var var_1 = var_0.a.d.a;
    var var_2 = var_1.x;
    var_2 = (u_input.c != -74954i) != (_wgslsmith_dot_vec3_i32(vec3<i32>(51684i, 0i, -2147483647i) >> (~vec3<u32>(1u, arg_2, 41277u) % vec3<u32>(32u)), var_0.a.d.b.zyy) != -29068i);
    return var_0.a;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(func_6(_wgslsmith_f_op_vec4_f32(func_5(~func_2(u_input.d.x, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(u_input.a, 1i, -55167i, -42500i), vec3<u32>(u_input.b, u_input.d.x, u_input.b)), vec3<f32>(-1014f, 141f, 580f)), abs(_wgslsmith_sub_i32(u_input.a, 0i)), ~(~u_input.d), true)), vec2<i32>(~(-2118i), _wgslsmith_sub_i32(u_input.a, u_input.a)) & (min(vec2<i32>(u_input.a, -5400i), vec2<i32>(u_input.a, -1i)) << (_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(22543u, 1u)) % vec2<u32>(32u))), ~u_input.b), true);
    return 1193f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -30681i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -908f), 1457f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-894f))), -1937f)) * -994f));
    var var_2 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(646f, -559f, 562f, -622f), vec4<f32>(var_1.x, 129f, var_1.x, var_1.x), vec4<bool>(true, false, true, true)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 329f, 249f, -398f))))))), _wgslsmith_mod_vec2_i32(vec2<i32>(20023i, -2147483647i), vec2<i32>(_wgslsmith_div_i32(var_0 | u_input.c, _wgslsmith_div_i32(u_input.a, 22963i)), u_input.a)), 4294967295u).d;
    let var_3 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-358f, -285f, var_1.x, -353f))))), -(vec2<i32>(-1i) * -var_2.b.yz), _wgslsmith_clamp_u32(var_2.c.x >> (reverseBits(~8287u) % 32u), var_2.c.x, ~countOneBits(~1u))).d;
    var_2 = Struct_1(!vec4<bool>(all(vec3<bool>(var_3.a.x, var_2.a.x, var_3.a.x)), var_2.a.x, !(!var_3.a.x), true), vec4<i32>(2147483647i, 36576i, var_3.b.x, var_2.b.x), func_6(_wgslsmith_f_op_vec4_f32(func_5(~1u, _wgslsmith_clamp_i32(6424i, -2147483647i, var_0), countOneBits(u_input.d), func_6(vec4<f32>(911f, -796f, -1132f, var_1.x), var_3.b.zz, 0u).d.a.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, var_2.b.x), var_3.b.ww), _wgslsmith_clamp_i32(26188i, u_input.a, var_3.b.x)), countOneBits(var_3.c.x) | _wgslsmith_add_u32(var_2.c.x, 11323u)).d.c ^ var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(var_1.x - var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, 1825f, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, -1670f, var_1.x)) + vec4<f32>(var_1.x, -1095f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(func_5(var_3.c.x, -((u_input.a & 32728i) >> (func_4(Struct_1(var_2.a, vec4<i32>(-2147483647i, -76454i, var_3.b.x, 34863i), vec3<u32>(u_input.d.x, 1u, 0u)), vec2<u32>(var_2.c.x, 25614u)).x % 32u)), max(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.c.x, 0u), u_input.d), ~var_2.c.xx), firstLeadingBit(var_3.c.yx)), !(!(!var_3.a.x)))).x, select(var_3.c.xy, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_2.c.x), vec2<u32>(var_3.c.x, var_2.c.x), u_input.d), vec2<bool>(true, true)) >> ((_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, var_2.c.yy), ~u_input.d) >> (min(var_2.c.zx, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

