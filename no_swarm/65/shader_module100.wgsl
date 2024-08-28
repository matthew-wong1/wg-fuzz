struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(9153i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)), ~vec2<i32>(-2147483647i, 2147483647i)), 2147483647i, 1i) | vec4<i32>(1i, 1i, 1i, 1i), ~select(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 62143i, -35642i, -18615i), vec4<i32>(-2147483647i, 1330i, 42251i, -2147483647i)), select(vec4<i32>(-25721i, -1i, -2147483647i, -7125i), vec4<i32>(17423i, -2337i, 27013i, 1i), vec4<bool>(true, true, true, false))), -vec4<i32>(2147483647i, 0i, -16668i, 0i), false));
    let var_1 = Struct_4(Struct_2(Struct_1(abs(vec3<i32>(var_0, var_0, -766i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(105f * 243f))), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 789u)) << (min(vec4<u32>(u_input.a, u_input.a, u_input.a, 26007u), vec4<u32>(9158u, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(127f, -1223f)), var_0), _wgslsmith_mult_u32(~1u, 1u)));
    global0 = array<vec3<i32>, 4>();
    var var_2 = -79426i;
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a.a.b, var_1.a.a.d.x, true)), var_1.a.a.d.x, 362f, var_1.a.a.b) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(583f, -1909f, var_1.a.a.b, var_1.a.a.b) - vec4<f32>(var_1.a.a.d.x, var_1.a.a.d.x, 1116f, var_1.a.a.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, var_1.a.a.d.x, -184f, var_1.a.a.b) - vec4<f32>(var_1.a.a.d.x, var_1.a.a.d.x, -148f, -1600f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1524f, -655f, -460f, var_1.a.a.d.x), vec4<f32>(var_1.a.a.d.x, var_1.a.a.d.x, -1032f, var_1.a.a.d.x)))), vec4<bool>(any(vec2<bool>(false, false)), true, var_1.a.a.a.x != var_1.a.a.a.x, 14708u >= var_1.a.b)))), Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(28313u, 4u)], var_1.a.a.a), 162f, _wgslsmith_div_vec4_u32(var_1.a.a.c, var_1.a.a.c), var_1.a.a.d, firstTrailingBit(var_0)), abs(~var_1.a.b)), vec2<u32>(~17278u, 1u ^ var_1.a.b), var_1.a.a.b, var_1.a), Struct_1(var_1.a.a.a, -1054f, abs(~vec4<u32>(48908u, u_input.a, u_input.a, 4294967295u)), var_1.a.a.d, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.a.a.e, 1i), -1i, ~(-9736i)) & ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -28611i, -2147483647i, var_0), vec4<i32>(-2147483647i, -24130i, 2147483647i, var_0))), var_1.a.a.a, Struct_3(var_1.a, vec2<u32>(_wgslsmith_add_u32(92573u, 14242u), max(~29495u, u_input.a)), _wgslsmith_f_op_f32(-1656f + -1398f), Struct_2(var_1.a.a, _wgslsmith_add_u32(0u, u_input.a))));
    return -23731i;
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_div_i32(~(-9664i), _wgslsmith_mult_i32(-1i | func_3(), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-2147483647i, -1i)), ~min(vec2<i32>(-7323i, -2147483647i), vec2<i32>(10632i, -21954i)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(676f)) + _wgslsmith_f_op_f32(round(-965f))))));
    let var_2 = Struct_3(Struct_2(Struct_1(firstTrailingBit(vec3<i32>(-2150i, var_0, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f + -2449f)), ~(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u) | vec4<u32>(33375u, 54238u, 9340u, 30558u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(731f)), _wgslsmith_f_op_f32(-1000f * -2107f)), firstTrailingBit(var_0)), firstLeadingBit(u_input.a)), ~(~(~vec2<u32>(44551u, 0u)) ^ min(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(16418u, 4294967295u)), ~vec2<u32>(0u, 0u))), -1000f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 4u)], -878f, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 5370u, 11834u, u_input.a), vec4<u32>(u_input.a, 0u, 37016u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 11556u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, -784f)), var_0), ~select(firstTrailingBit(u_input.a), _wgslsmith_mult_u32(u_input.a, 1u), var_0 <= 21855i)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, -477f, var_2.c, 321f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(634f, var_2.d.a.b, -470f, var_2.c), vec4<f32>(var_2.a.a.b, 1131f, var_2.a.a.d.x, var_2.a.a.d.x), vec4<bool>(false, false, false, false))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1647f, var_2.c, -1027f, var_2.d.a.b)))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-102f - var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.d.a.b, 1658f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1622f, 463f)))), var_2, Struct_1(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(21818u, u_input.a)), 4u)], vec3<i32>(2147483647i, var_2.a.a.e, select(var_2.d.a.e, 1923i, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.a.b) * var_2.d.a.b)), ~(var_2.a.a.c << (select(vec4<u32>(var_2.d.a.c.x, var_2.b.x, u_input.a, 42506u), var_2.d.a.c, vec4<bool>(true, false, false, false)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-var_2.d.a.d), abs(-var_2.a.a.a.x)), _wgslsmith_mult_vec3_i32(~(global0[_wgslsmith_index_u32(99328u, 4u)] << (var_2.a.a.c.xwz % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(~33723i, var_0), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 47194i, var_0), vec4<i32>(var_0, var_2.d.a.e, -27206i, -2147483647i)), -(~70245i))), var_2);
    return vec3<i32>(firstLeadingBit(countOneBits(var_0)) & 1i, var_0, var_0);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_3 {
    var var_0 = countOneBits(select(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(48916u, u_input.a), vec2<u32>(4294967295u, u_input.a)), u_input.a), vec3<u32>(16407u, 0u, u_input.a), true));
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    var_0 = ~vec3<u32>(_wgslsmith_add_u32(u_input.a, ~(~27931u)), u_input.a, ~65757u);
    var_0 = ~vec3<u32>(u_input.a, ~(~(18530u & u_input.a)), countOneBits(1u));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(abs(global0[_wgslsmith_index_u32(var_0.x, 4u)]), func_2()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(800f + -391f), _wgslsmith_f_op_f32(f32(-1f) * -197f))), abs(~vec4<u32>(0u, u_input.a, 1u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(599f, 119f), vec2<f32>(576f, -363f)))), arg_2 | -arg_2), u_input.a ^ var_0.x), min(firstLeadingBit(var_0.xy | _wgslsmith_mod_vec2_u32(var_0.zy, var_0.yy)), firstTrailingBit(firstTrailingBit(var_0.zx))), 1240f, Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(var_0.x, 4u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -181f))), ~vec4<u32>(var_0.x, 1u, 4294967295u, 103519u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1014f, -681f)))), abs(89036i)), u_input.a << (~1u % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    global0 = array<vec3<i32>, 4>();
    let var_0 = Struct_4(arg_0.d);
    let var_1 = vec3<u32>(53505u, ~(~_wgslsmith_div_u32(41817u, arg_0.a.a.c.x)) | abs(max(func_1(false, true, arg_0.d.a.e).d.b, ~50212u)), 55272u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(459f, -344f, -662f, arg_0.d.a.d.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 194f, var_0.a.a.d.x, var_0.a.a.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.b, arg_0.a.a.d.x, -2449f, 1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(361f, 1302f, -1659f, 420f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(978f, -1000f, var_0.a.a.b, var_0.a.a.b) + vec4<f32>(-923f, -1986f, var_0.a.a.d.x, -1199f)))))));
    var var_3 = select(vec3<bool>(true, true, true), !vec3<bool>(true, any(vec2<bool>(false, false)), (i32(-1i) * -2147483647i) >= select(arg_0.a.a.a.x, 0i, false)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    return func_1(!(!any(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, false, false), false))), !all(vec3<bool>(true, !var_3.x, var_3.x)), _wgslsmith_clamp_i32(0i, var_0.a.a.e, 17300i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -224f, -385f, 883f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1206f, 1273f, 1284f, -996f)))) + vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) * 620f), 1243f, _wgslsmith_f_op_f32(min(-905f, 1465f)), -2135f)));
    var var_1 = 1u;
    let var_2 = func_4(func_1(!any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)), false, ~(-10899i) << (u_input.a % 32u)), _wgslsmith_mod_u32(0u & u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_2.b, func_1(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !any(vec2<bool>(true, true)), 0i).b), var_2.d.a.c, 0u, _wgslsmith_div_f32(func_4(Struct_3(Struct_2(Struct_1(vec3<i32>(23131i, var_2.d.a.e, var_2.a.a.e), 890f, var_2.a.a.c, var_2.a.a.d, 1i), var_2.b.x), vec2<u32>(u_input.a, 32186u) << (var_2.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(var_2.d.a.d.x)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_2.a.a.c.x, 4u)], -1081f, vec4<u32>(1u, 0u, 58415u, var_2.b.x), vec2<f32>(105f, 1975f), var_2.d.a.a.x), 0u)), select(~u_input.a, 16624u, false)).a.a.b, 295f));
}

