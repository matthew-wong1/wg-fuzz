struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    let var_0 = Struct_4(u_input.a);
    global0 = array<Struct_4, 4>();
    let var_1 = true;
    let var_2 = _wgslsmith_add_i32(var_0.a, 27031i);
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(step(1603f, -1687f));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = array<Struct_4, 4>();
    let var_0 = arg_2.yz;
    global0 = array<Struct_4, 4>();
    let var_1 = select(vec2<bool>(arg_1.c.c.x, !(true | arg_1.a.c.x)), select(select(!(!vec2<bool>(arg_1.a.b.x, true)), !select(arg_1.e.c, vec2<bool>(false, true), true), true | !arg_0.a.b.x), arg_1.a.b.xz, select(false, all(vec3<bool>(false, false, true)), arg_0.e.b.x || arg_1.c.c.x) & arg_0.e.c.x), !(!arg_0.a.c));
    var var_2 = arg_1.e.b;
    return firstLeadingBit(vec3<i32>(arg_0.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(-32438i, arg_0.b)), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.b), vec2<i32>(u_input.a, 2147483647i))), arg_1.b));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.d.xy, arg_1.d.wz, true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_div_f32(arg_1.d.x, -685f))))));
    let var_1 = arg_0;
    global0 = array<Struct_4, 4>();
    var var_2 = Struct_2(arg_1, max(-23826i, u_input.a >> (_wgslsmith_dot_vec4_u32(reverseBits(arg_1.e), arg_1.e ^ vec4<u32>(u_input.b.x, 5490u, arg_1.e.x, 7215u)) % 32u)), Struct_1(vec2<u32>(~64022u, u_input.e), vec3<bool>(arg_1.b.x, any(arg_1.b), any(!arg_1.b.zy)), vec2<bool>(true, !arg_1.b.x), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1156f, -617f)) - var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(943f, 193f)) * _wgslsmith_f_op_f32(abs(-603f)))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.e.xyx, select(arg_1.e.xzy, arg_1.e.zwz, false)), ~_wgslsmith_div_u32(4294967295u, arg_1.a.x), ~_wgslsmith_sub_u32(0u, arg_1.e.x), abs(arg_1.a.x) ^ u_input.b.x)), _wgslsmith_f_op_f32(max(arg_1.d.x, arg_1.d.x)), arg_1);
    var_2 = Struct_2(var_2.c, _wgslsmith_mult_i32(23447i, var_1.x) & min(-35384i, _wgslsmith_mod_i32(1i, var_2.b) >> (1u % 32u)), Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.c.e.x, 36896u), vec2<u32>(var_2.e.a.x, 11285u)), vec2<u32>(reverseBits(var_2.c.a.x), _wgslsmith_sub_u32(15276u, 3188u))), !select(var_2.e.b, var_2.a.b, var_2.e.b), select(vec2<bool>(var_2.c.b.x || false, var_2.c.b.x), vec2<bool>(all(vec2<bool>(var_2.a.b.x, arg_1.c.x)), arg_1.b.x | var_2.c.b.x), _wgslsmith_f_op_f32(func_1(u_input.b, arg_1.a.x)) > 1000f), arg_1.d, vec4<u32>(arg_1.a.x, _wgslsmith_mult_u32(4294967295u, abs(var_2.e.a.x)), var_2.e.e.x, ~(u_input.e >> (arg_1.e.x % 32u)))), -558f, var_2.c);
    return u_input.a << (~u_input.e % 32u);
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_4, 4>();
    global0 = array<Struct_4, 4>();
    global0 = array<Struct_4, 4>();
    var var_0 = Struct_4(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d, u_input.c), vec2<i32>(19787i, u_input.a), vec2<bool>(false, false)) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-48637i, u_input.d)), vec2<i32>(u_input.c >> (17594u % 32u), ~u_input.d)));
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(func_4(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-16430i, u_input.a, 0i)), func_3(Struct_2(Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<f32>(602f, 387f, 857f, 583f), vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.b.x)), -1114i, Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), vec3<bool>(true, true, true), vec2<bool>(true, false), vec4<f32>(516f, 443f, 1450f, -262f), vec4<u32>(u_input.e, 12548u, u_input.e, 1u)), -924f, Struct_1(vec2<u32>(u_input.b.x, 0u), vec3<bool>(true, true, true), vec2<bool>(true, false), vec4<f32>(-302f, -289f, -1590f, -1019f), vec4<u32>(0u, 0u, 32292u, 35699u))), Struct_2(Struct_1(vec2<u32>(u_input.e, u_input.b.x), vec3<bool>(false, true, true), vec2<bool>(false, false), vec4<f32>(1223f, -1000f, -138f, 1370f), vec4<u32>(u_input.e, u_input.b.x, 6229u, u_input.e)), -1i, Struct_1(u_input.b, vec3<bool>(false, true, true), vec2<bool>(false, false), vec4<f32>(478f, 584f, 1366f, -277f), vec4<u32>(44022u, u_input.e, 74753u, 70770u)), -990f, Struct_1(vec2<u32>(u_input.e, 4294967295u), vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<f32>(1172f, -998f, -614f, 356f), vec4<u32>(u_input.e, 37870u, 104799u, u_input.e))), vec4<f32>(-406f, 322f, -282f, -451f))), Struct_1(~u_input.b, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, -1666f, 655f, 1371f)), select(vec4<u32>(33811u, 4294967295u, 0u, 54010u), vec4<u32>(38595u, 0u, 4294967295u, u_input.b.x), true))), u_input.a), _wgslsmith_mod_vec2_i32(~(select(vec2<i32>(0i, 0i), vec2<i32>(11076i, -56996i), vec2<bool>(false, false)) << (vec2<u32>(28486u, 1u) % vec2<u32>(32u))), vec2<i32>(var_0.a, -7276i)));
    return select(vec3<bool>(false, var_0.a >= 2147483647i, true), select(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.e)) >= _wgslsmith_clamp_u32(u_input.e, u_input.b.x, 22699u), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true)))), !vec3<bool>(any(vec2<bool>(false, false)), true, false)), true && any(vec3<bool>(false, true, all(vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec2<bool>(730f != _wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, u_input.e), 1u)), firstTrailingBit(1u) == _wgslsmith_div_u32(1u, 98530u)));
    let var_1 = Struct_1(~u_input.b, select(func_2(), vec3<bool>(true, var_0, var_0 & var_0), any(select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, var_0, true, false), !vec4<bool>(true, var_0, var_0, false)))), vec2<bool>(var_0, !(all(vec2<bool>(true, false)) || false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(870f, -1085f, -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1563f, 247f))))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.e, 0u, u_input.b.x), vec4<u32>(u_input.e, 13054u, u_input.e, 1u)), vec4<u32>(0u, 4294967295u, 1u, 35782u)), ~vec4<u32>(u_input.e, u_input.b.x, u_input.b.x, 0u)) ^ vec4<u32>(1u, reverseBits(reverseBits(4294967295u)), u_input.e, ~19334u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x)), _wgslsmith_f_op_f32(floor(1129f)))) - var_1.d.zw);
    let var_3 = vec3<i32>(select(u_input.d, select(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -10031i, 1i, 36749i), vec4<i32>(0i, 23085i, u_input.d, 228i))), -u_input.c << (~6449u % 32u), var_1.c.x), select(all(var_1.b), true, !(!var_1.b.x))), 2147483647i, -_wgslsmith_div_i32(u_input.c & 0i, i32(-1i) * -1i) >> (~4294967295u % 32u));
    var var_4 = vec4<f32>(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 910f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(var_2.x - var_2.x)))))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f - 1880f) - _wgslsmith_f_op_f32(var_2.x * var_2.x))))), 675f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(var_3.zx, var_3.xx)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))), var_4.x, _wgslsmith_dot_vec4_u32(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 53320u, 28075u), vec4<u32>(u_input.b.x, 49069u, var_1.e.x, u_input.b.x))), vec4<u32>(var_1.a.x, ~_wgslsmith_div_u32(u_input.b.x, var_1.a.x), var_1.a.x, var_1.a.x)));
}

