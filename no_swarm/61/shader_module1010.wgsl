struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(arg_0)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.d, 244f, 769f, arg_1.a.d) + vec4<f32>(-122f, 382f, -2012f, 353f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -255f, arg_3)))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(min(min(u_input.e, vec2<i32>(1607i, 34640i)), u_input.e << (u_input.a.yz % vec2<u32>(32u))), -u_input.e), vec2<i32>(-(u_input.b | u_input.b), u_input.e.x)), arg_1.a.c);
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-300f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(sign(arg_0))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.b.yw)))), vec4<f32>(arg_1.a.d, -1856f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * arg_3)), _wgslsmith_f_op_f32(select(-662f, arg_0.x, all(arg_1.b.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-187f))))))), select(u_input.e, _wgslsmith_mult_vec2_i32(~var_0.c, vec2<i32>(var_0.c.x, u_input.b)) & (vec2<i32>(-2147483647i, var_0.c.x) & reverseBits(vec2<i32>(0i, u_input.b))), all(!select(vec4<bool>(false, false, true, var_0.d.x), vec4<bool>(var_0.d.x, arg_1.b.c.x, false, arg_1.a.b), arg_1.a.b))), select(select(vec3<bool>(false, var_0.d.x, true), var_0.d, arg_1.b.c.x), arg_1.b.c, all(!vec4<bool>(true, true, var_0.d.x, arg_1.a.b)) || (any(var_0.d.xx) | var_0.d.x)));
    var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(472f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-669f, -1348f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(var_1.b)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(227f + -1537f), -1514f), any(var_0.d.yx))), countOneBits(u_input.e), !(!(!arg_1.b.c)));
    var var_2 = firstLeadingBit(_wgslsmith_div_i32(-_wgslsmith_add_i32(var_1.c.x, u_input.e.x << (arg_1.c.x % 32u)), -14884i));
    var var_3 = select(select(!select(var_0.d.zz, !vec2<bool>(true, arg_1.a.b), select(var_0.d.zy, var_1.d.yy, vec2<bool>(false, true))), !var_0.d.xy, var_1.b.x != arg_0.x), var_0.d.yx, vec2<bool>(var_1.d.x, _wgslsmith_f_op_f32(min(731f, _wgslsmith_f_op_f32(-536f + var_1.b.x))) > 269f));
    return vec3<bool>(any(select(!var_1.d.zz, !var_1.d.yx, vec2<bool>(var_0.d.x, true))) && (!(arg_3 > 1000f) | true), (arg_3 >= _wgslsmith_f_op_f32(max(-1342f, _wgslsmith_f_op_f32(-269f - var_0.a.x)))) && (!any(vec4<bool>(true, arg_1.a.c.x, arg_1.a.c.x, true)) && var_3.x), any(!(!select(vec4<bool>(arg_1.a.c.x, arg_1.b.b, false, var_0.d.x), vec4<bool>(true, var_1.d.x, false, var_3.x), var_3.x))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = vec4<i32>((4560i ^ arg_0.x) | abs(19591i), select(-(~u_input.e.x), firstLeadingBit(u_input.b), false), ~(abs(u_input.e.x) << (~0u % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -24584i, arg_0.x), ~vec3<i32>(-2147483647i, -15462i, arg_0.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.x, 13089i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.e.x, u_input.b, -37023i), vec4<i32>(u_input.b, arg_0.x, 9726i, u_input.b))))) & -_wgslsmith_div_vec4_i32(countOneBits(reverseBits(vec4<i32>(2147483647i, u_input.e.x, 37862i, u_input.b))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i, u_input.e.x, 1i, u_input.e.x), vec4<i32>(15975i, u_input.e.x, -68207i, u_input.e.x), vec4<bool>(true, true, true, true)), vec4<i32>(2147483647i, 9510i, -2147483647i, -22685i) & vec4<i32>(u_input.b, -2466i, 7740i, -1i)));
    let var_1 = Struct_2(Struct_1(vec4<u32>(firstLeadingBit(79770u), _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(4294967295u, u_input.a.x)), 11529u, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), u_input.d < ~(~14178u), select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, false), true), vec3<bool>(true, true, any(vec3<bool>(true, false, true)))), 504f, 34566u << (0u % 32u)), Struct_1(select(vec4<u32>(_wgslsmith_add_u32(4294967295u, 0u), 4294967295u, u_input.c.x & u_input.d, u_input.c.x ^ 1u), vec4<u32>(u_input.c.x, 1u, ~4294967295u, u_input.d), all(vec3<bool>(true, false, true))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(108f, -422f) * vec2<f32>(188f, 711f)), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.d, u_input.c.x, 0u), true, vec3<bool>(false, true, false), 1185f, 0u), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a.x), false, vec3<bool>(false, true, false), -573f, u_input.c.x), u_input.c.xxx), ~u_input.c.zx, _wgslsmith_div_f32(1359f, 1041f)), false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-754f, _wgslsmith_f_op_f32(trunc(275f))) - -285f), ~u_input.d), u_input.c.xxy);
    var var_2 = Struct_4(!(!var_1.a.c), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, u_input.e.x, 57302i, 2434i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 0i, 32577i, 40025i), vec4<i32>(-10353i, 40465i, var_0.x, var_0.x), vec4<i32>(arg_0.x, var_0.x, 2147483647i, u_input.e.x))), arg_0.x)));
    var_0 = _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, 16720i, var_0.x, u_input.e.x), vec4<i32>(var_2.b, var_2.b, var_2.b, 7690i))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, -2147483647i, 1i, var_2.b), vec4<i32>(-32085i, -2147483647i, 2147483647i, -2147483647i)), vec4<i32>(var_0.x, 6819i, var_2.b, 0i))), _wgslsmith_mod_vec4_i32(firstLeadingBit(min(vec4<i32>(u_input.e.x, 8138i, 2147483647i, 0i), vec4<i32>(var_2.b, u_input.e.x, -1i, 4395i))), vec4<i32>(arg_0.x, var_2.b, 2147483647i, ~(-1i))) >> (vec4<u32>(u_input.c.x, 1u, 37177u, 4294967295u ^ ~u_input.d) % vec4<u32>(32u)));
    var var_3 = Struct_2(var_1.b, Struct_1(var_1.a.a, false, func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.d, var_1.b.d), vec2<f32>(748f, var_1.b.d), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -795f)))), var_1, ~(vec2<u32>(u_input.c.x, var_1.c.x) & vec2<u32>(4294967295u, u_input.a.x)), 1640f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f + 2172f)))), ~u_input.d & ~abs(var_1.c.x)), _wgslsmith_add_vec3_u32(u_input.c.yxx & (select(u_input.c.yxx, u_input.a, var_2.a.x) | min(u_input.c.zzx, u_input.a)), (~vec3<u32>(var_1.b.e, u_input.a.x, 29635u) | vec3<u32>(u_input.c.x, var_1.c.x, u_input.a.x)) | ((vec3<u32>(var_1.b.a.x, var_1.a.a.x, var_1.c.x) >> (vec3<u32>(4294967295u, u_input.a.x, 61862u) % vec3<u32>(32u))) ^ firstLeadingBit(u_input.a))));
    return abs(~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(var_3.b.a, var_1.b.a), 49290u, ~27916u)) & min(vec4<u32>(~(~var_1.c.x), 22244u, 63679u, abs(var_3.c.x)), ~(~vec4<u32>(var_3.b.e, 16942u, 96812u, var_1.b.e) ^ firstLeadingBit(var_1.a.a)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = ~arg_3.e;
    var var_1 = Struct_1((arg_3.a >> (vec4<u32>(u_input.c.x, ~u_input.a.x, _wgslsmith_add_u32(0u, 0u), 110671u) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 19754u, arg_3.a.x, arg_3.e), vec4<u32>(1u, 22120u, var_0, arg_3.a.x))), func_2(vec2<i32>(arg_1.x, u_input.e.x)) & vec4<u32>(5780u, var_0, arg_3.a.x, 110495u)), (-_wgslsmith_dot_vec3_i32(vec3<i32>(-9229i, 2147483647i, arg_1.x), vec3<i32>(u_input.e.x, 1i, 13485i)) >> (~(arg_3.a.x | var_0) % 32u)) <= (i32(-1i) * -34777i), arg_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-602f)) * _wgslsmith_f_op_f32(arg_3.d + 379f))))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(u_input.a.zz, vec2<u32>(9359u, arg_3.a.x), vec2<bool>(false, arg_0.x)) ^ arg_3.a.zz, _wgslsmith_mult_vec2_u32(u_input.a.yy, ~vec2<u32>(4294967295u, arg_3.a.x))), min(vec2<u32>(_wgslsmith_sub_u32(arg_3.a.x, arg_3.e), ~var_0), u_input.c.ww)));
    var_1 = arg_3;
    var_1 = arg_3;
    var_1 = Struct_1(vec4<u32>(~(~select(arg_3.a.x, u_input.d, false)), 1u, 0u, var_0), var_1.b, select(var_1.c, select(var_1.c, vec3<bool>(arg_0.x, func_3(vec2<f32>(-1090f, 1000f), Struct_2(arg_3, arg_3, u_input.a), arg_3.a.ww, var_1.d).x, !var_1.b), all(!vec4<bool>(arg_3.c.x, true, var_1.c.x, false))), var_1.c), _wgslsmith_f_op_f32(min(-244f, 1245f)), 4294967295u);
    return vec4<i32>(min(arg_1.x, 56970i), abs(arg_1.x), arg_1.x, abs(-2541i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -996i;
    let var_1 = true;
    var_0 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.e.x), countOneBits(i32(-1i) * -13918i), u_input.b, _wgslsmith_clamp_i32(-1134i, reverseBits(-1i), _wgslsmith_clamp_i32(-4961i, u_input.b, 16901i))), func_1(vec3<bool>(var_1 && var_1, var_1, var_1), u_input.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1746f)), _wgslsmith_f_op_f32(327f * -828f))), Struct_1(max(u_input.c, u_input.c), var_1 || true, !vec3<bool>(var_1, var_1, true), _wgslsmith_f_op_f32(345f * 2071f), select(1u, u_input.a.x, var_1)))));
    let var_2 = Struct_2(Struct_1(u_input.c, any(vec2<bool>(true, true)), vec3<bool>(all(vec2<bool>(false, true)), true, select(!var_1, var_1 && false, var_1)), 178f, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, max(9737u, u_input.c.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~1u))), Struct_1(select(func_2(abs(vec2<i32>(-1i, 2147483647i))), firstLeadingBit(u_input.c) >> (~vec4<u32>(u_input.d, u_input.d, 14249u, u_input.a.x) % vec4<u32>(32u)), !vec4<bool>(var_1, var_1, true, true)), 53852u == u_input.d, vec3<bool>(!var_1, true, all(select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, false, true), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(274f, 242f, false))) * -1817f), 61120u | _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d, 1u), reverseBits(u_input.c.x))), ~_wgslsmith_sub_vec3_u32(~u_input.c.yxw, countOneBits(~u_input.c.wzz)));
    var_0 = u_input.e.x;
    let var_3 = firstLeadingBit(i32(-1i) * -22035i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(203f, var_2.a.d)), _wgslsmith_f_op_f32(floor(var_2.a.d)), var_2.b.c.x)));
    var var_5 = var_2.a.e;
    let var_6 = _wgslsmith_f_op_f32(-var_2.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_2(vec2<i32>(var_3, 5886i) & (u_input.e >> (u_input.a.xy % vec2<u32>(32u)))).x));
}

