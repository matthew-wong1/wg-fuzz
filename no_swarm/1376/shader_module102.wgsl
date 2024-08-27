struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 100260u), vec2<u32>(1u, 43847u), vec2<u32>(0u, 4294967295u), vec2<u32>(40033u, 2666u), vec2<u32>(0u, 58057u), vec2<u32>(1u, 12879u), vec2<u32>(46347u, 65581u), vec2<u32>(4294967295u, 0u), vec2<u32>(18369u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(16823u, 4294967295u), vec2<u32>(14901u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 10766u), vec2<u32>(34701u, 0u), vec2<u32>(31020u, 3351u), vec2<u32>(19047u, 0u), vec2<u32>(16334u, 45740u), vec2<u32>(22470u, 36373u), vec2<u32>(4294967295u, 14977u), vec2<u32>(1u, 106280u), vec2<u32>(49110u, 19948u), vec2<u32>(24015u, 1u), vec2<u32>(18096u, 1u), vec2<u32>(67150u, 4294967295u), vec2<u32>(0u, 39480u));

var<private> global1: array<Struct_5, 4>;

var<private> global2: array<vec3<bool>, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<i32> {
    return vec4<i32>(~(-_wgslsmith_clamp_i32(~(-58475i), 0i, u_input.c.x)), _wgslsmith_add_i32(~arg_0, firstLeadingBit(_wgslsmith_add_i32(-1i, -63185i))), abs(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-2147483647i, arg_0))) << (21396u % 32u)), -(arg_0 >> (((arg_1 << (arg_1 % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(46297u, arg_1, arg_1), vec3<u32>(4294967295u, u_input.a.x, 18463u))) % 32u)));
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-516f, 1014f), vec2<f32>(-956f, arg_1)))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -401f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -535f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 373f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1828f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1013f, -1640f), arg_1)), _wgslsmith_f_op_f32(946f + arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(min(-1000f, arg_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1006f)))))), !(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_mod_vec4_i32(-func_3(1i, arg_0) & _wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, -18255i, u_input.c.x), vec4<i32>(-2147483647i, 0i, u_input.d, -33557i)), ~vec4<i32>(-u_input.d, u_input.d, ~1i, firstLeadingBit(-2147483647i))), vec3<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2144f + -313f) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-arg_1))), 1232f));
    global2 = array<vec3<bool>, 23>();
    let var_1 = all(select(select(select(select(vec4<bool>(var_0.c, var_0.c, true, var_0.c), vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, false, var_0.c, false)), select(vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, true, false, var_0.c), false), var_0.c), !select(vec4<bool>(var_0.c, false, false, var_0.c), vec4<bool>(true, var_0.c, true, var_0.c), var_0.c), select(!vec4<bool>(var_0.c, true, false, true), vec4<bool>(var_0.c, false, false, var_0.c), true)), select(select(vec4<bool>(true, var_0.c, false, false), !vec4<bool>(var_0.c, true, var_0.c, true), true), !vec4<bool>(var_0.c, false, var_0.c, true), true && all(vec2<bool>(var_0.c, var_0.c))), true));
    global0 = array<vec2<u32>, 28>();
    let var_2 = Struct_2(!(18769u > reverseBits(u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.b.x)))), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.e, var_0.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 306f, var_0.a.x) - vec3<f32>(arg_1, arg_1, var_0.b.x)))), vec3<bool>(!all(vec4<bool>(false, var_0.c, false, var_0.c)), any(!vec4<bool>(var_1, true, var_0.c, var_0.c)), true)), select(vec4<bool>(-var_0.d.x >= -37282i, all(!global2[_wgslsmith_index_u32(77272u, 23u)]), false, any(select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(var_0.c, var_1, var_0.c, var_1), vec4<bool>(true, var_0.c, var_1, var_1)))), !(!select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_0.c, true, false, var_1), false)), vec4<bool>((var_0.d.x > u_input.c.x) || var_1, var_1, !(u_input.c.x < 99348i), !(var_1 || var_1))), vec3<u32>(arg_0, _wgslsmith_div_u32(arg_0, u_input.b), 59340u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(var_0.e.x - -1489f))))));
    return var_0.d.x;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = func_2(select(min(33389u, 4294967295u), 62263u, 4048i < u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f - 597f) + _wgslsmith_f_op_f32(f32(-1f) * -1981f)));
    let var_2 = firstLeadingBit(u_input.b);
    let var_3 = Struct_4(vec2<f32>(-221f, -852f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-671f, _wgslsmith_div_f32(-168f, -1000f), _wgslsmith_f_op_f32(step(-205f, 588f)), _wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(548f, 793f, 1631f, -1464f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(983f, -1000f, 514f, 1848f) - vec4<f32>(1851f, -639f, 3003f, -2011f)) - vec4<f32>(_wgslsmith_f_op_f32(-885f - 1681f), -725f, _wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(f32(-1f) * -676f))))), select(all(global2[_wgslsmith_index_u32(4294967295u, 23u)]), !any(vec4<bool>(true, false, false, true)), var_2 != (u_input.a.x & 1u)), (vec4<i32>(u_input.c.x, u_input.d, reverseBits(u_input.c.x), 0i) & (-vec4<i32>(2147483647i, -17468i, u_input.c.x, u_input.d) >> (u_input.a % vec4<u32>(32u)))) << (min(~select(u_input.a, u_input.a, false), _wgslsmith_mult_vec4_u32(vec4<u32>(41936u, var_2, u_input.b, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.a.x, 36134u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-587f, 182f, 1157f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, -245f, 726f)))))));
    var var_4 = Struct_1(377f, any(vec2<bool>(var_3.c, var_3.c)), var_3.e, !global2[_wgslsmith_index_u32(max(0u, min(57697u, 64973u)), 23u)]);
    return Struct_1(501f, var_3.c, var_3.b.yyw, select(!vec3<bool>(true, all(var_4.d.yz), false), vec3<bool>(true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(893f)), !(!(_wgslsmith_add_i32(u_input.d, 2147483647i) != (i32(-1i) * -8713i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, 1057f, 586f) * vec3<f32>(3222f, -795f, -1530f)))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(global2[_wgslsmith_index_u32(10755u, 23u)], vec3<bool>(false, false, true), false))));
    var_1 = func_1();
    let var_2 = _wgslsmith_div_vec2_u32(~global0[_wgslsmith_index_u32(countOneBits(reverseBits(firstTrailingBit(4294967295u))), 28u)], ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.b)), u_input.a.zx));
    var_0 = _wgslsmith_dot_vec3_i32(select(~(-vec3<i32>(-11655i, 2147483647i, 0i)), ~u_input.c, !(!var_1.d.x)), vec3<i32>(-1i) * -(vec3<i32>(2147483647i, -2147483647i, 28383i) >> (u_input.a.yxz % vec3<u32>(32u)))) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_2.x, 0u, var_2.x), u_input.a)), 4294967295u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(var_2.x, var_2.x, 4294967295u) | vec3<u32>(36302u, max(45372u, 4294967295u), 30816u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-2673f, var_1.a)), -518f, _wgslsmith_f_op_f32(min(926f, 573f)), _wgslsmith_f_op_f32(exp2(var_1.a)))))));
}

