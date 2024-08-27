struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(926f, -1839f, -242f, 1219f), vec4<f32>(726f, -260f, -1133f, -1894f), vec4<f32>(-664f, 403f, -974f, -859f), vec4<f32>(999f, 1368f, -729f, 582f), vec4<f32>(1546f, 1697f, -1118f, 132f), vec4<f32>(-919f, -1039f, -302f, 1000f), vec4<f32>(-804f, 484f, -713f, -235f), vec4<f32>(-1031f, -876f, -282f, -1401f), vec4<f32>(629f, 2168f, -589f, 139f), vec4<f32>(-424f, 2756f, -1521f, 1718f), vec4<f32>(917f, 380f, 1037f, 360f), vec4<f32>(-1787f, -1525f, -255f, -1197f), vec4<f32>(-738f, 1447f, 839f, 1886f), vec4<f32>(1570f, 1095f, -652f, -334f), vec4<f32>(-633f, -624f, 865f, -2167f), vec4<f32>(-861f, 1064f, 919f, 240f), vec4<f32>(770f, -488f, -675f, 414f), vec4<f32>(-177f, -1333f, 1267f, 3572f), vec4<f32>(1364f, -389f, 2694f, -134f), vec4<f32>(-139f, -955f, 1234f, -1106f), vec4<f32>(147f, -1517f, -273f, 807f));

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> vec2<i32> {
    global0 = array<vec4<f32>, 21>();
    global1 = max(_wgslsmith_mult_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 1u, 4294967295u, 0u), vec4<u32>(90071u, arg_1.c.b.x, 21909u, 23459u)) & abs(4294967295u)), ~reverseBits(_wgslsmith_add_u32(arg_3, 1u))), ~_wgslsmith_sub_u32(1u, select(~1u, arg_1.c.b.x, arg_1.c.a.x)));
    global0 = array<vec4<f32>, 21>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-245f, _wgslsmith_f_op_f32(f32(-1f) * -740f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f - -535f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1244f, -104f))));
    let var_1 = arg_1.c.a.x;
    return min(-countOneBits(vec2<i32>(arg_1.d.x, -1i)), vec2<i32>(_wgslsmith_mod_i32(countOneBits(countOneBits(26238i)), arg_1.d.x), firstTrailingBit(_wgslsmith_mod_i32(arg_1.d.x, arg_2))));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = !vec4<bool>(all(vec4<bool>(-606f >= arg_1, u_input.c.x == 1i, select(false, arg_0, arg_0), false == arg_0)), arg_0, arg_0, arg_0);
    var var_1 = u_input.e;
    let var_2 = vec3<u32>(reverseBits(0u), 10121u, u_input.a) | ~vec3<u32>(max(u_input.b.x, u_input.b.x), u_input.b.x, u_input.b.x);
    var var_3 = -1000f;
    var var_4 = Struct_3(var_2, Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zy, func_3(25136u, Struct_2(u_input.c, arg_0, Struct_1(var_0.zz, var_2.zz), vec4<i32>(u_input.d, u_input.c.x, -48074i, -1i)), u_input.c.x, u_input.b.x)), ~2147483647i, -2147483647i), false, Struct_1(vec2<bool>(all(vec4<bool>(var_0.x, true, true, true)), arg_0), _wgslsmith_mod_vec2_u32(~vec2<u32>(12608u, var_2.x), var_2.yz)), abs(vec4<i32>(u_input.c.x, 79585i, u_input.c.x, u_input.c.x) >> (~vec4<u32>(u_input.a, var_2.x, u_input.a, 20080u) % vec4<u32>(32u)))), vec4<f32>(arg_1, arg_1, 410f, 513f), (u_input.c.x & u_input.d) == -2147483647i);
    return Struct_2(abs(vec3<i32>(u_input.d << (4294967295u % 32u), ~u_input.d, -1i)) << ((var_4.a << (vec3<u32>(_wgslsmith_div_u32(u_input.a, var_2.x), 0u, _wgslsmith_mult_u32(0u, 51263u)) % vec3<u32>(32u))) % vec3<u32>(32u)), any(select(vec2<bool>(var_4.d, var_0.x), vec2<bool>(false, any(vec4<bool>(var_0.x, var_4.b.b, true, var_0.x))), false || any(vec2<bool>(var_0.x, var_0.x)))), Struct_1(var_4.b.c.a, select(u_input.b.zw, (vec2<u32>(var_4.b.c.b.x, var_4.b.c.b.x) ^ u_input.b.zz) & vec2<u32>(0u, var_2.x), select(select(var_0.x, arg_0, arg_0), var_0.x, select(true, var_4.b.c.a.x, var_0.x)))), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 21960i, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, u_input.d)), -11956i, -2147483647i, ~0i) >> (~(~(~vec4<u32>(0u, 0u, var_2.x, var_2.x))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>) -> bool {
    global0 = array<vec4<f32>, 21>();
    let var_0 = !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = func_2(!any(!var_0) && var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1f)));
    global1 = ~(~u_input.a);
    return all(select(vec4<bool>(var_1.c.a.x, true, all(vec3<bool>(false, var_1.b, true)), false), !select(!vec4<bool>(true, var_1.b, var_0.x, true), vec4<bool>(var_1.c.a.x, var_1.b, false, true), false), _wgslsmith_f_op_f32(-arg_1) <= -1000f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<bool>) -> StorageBuffer {
    global1 = firstLeadingBit(arg_0.c.b.x);
    let var_0 = !vec4<bool>(true, ~_wgslsmith_div_u32(u_input.b.x, u_input.a) > min(u_input.b.x, arg_0.c.b.x & 0u), !(!select(false, true, arg_1.x)), !(!(!arg_0.c.a.x)));
    var var_1 = reverseBits(vec2<i32>(arg_0.a.x, 4084i << (1u % 32u)) << (u_input.b.ww % vec2<u32>(32u)));
    global0 = array<vec4<f32>, 21>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, -519f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, 820f))))), any(select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(false, false, false), vec3<bool>(arg_2.x, arg_0.b, true))))));
    return StorageBuffer(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.b.wzy, ~vec3<u32>(u_input.e, u_input.b.x, 34741u)), 1u), reverseBits(_wgslsmith_dot_vec3_u32(u_input.b.yyy, _wgslsmith_mult_vec3_u32(u_input.b.wwz, vec3<u32>(u_input.a, 49725u, 6000u)))) | (_wgslsmith_div_u32(_wgslsmith_add_u32(38748u, 83936u), max(1u, 29541u)) << (0u % 32u)), ~u_input.b & vec4<u32>(~1u, ~arg_0.c.b.x, _wgslsmith_sub_u32(0u >> (0u % 32u), u_input.a), _wgslsmith_mod_u32(abs(18390u), _wgslsmith_add_u32(0u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.c.x);
    global0 = array<vec4<f32>, 21>();
    let var_1 = true;
    var var_2 = 1f;
    let var_3 = vec2<bool>(var_1, any(!vec2<bool>(var_1, !var_1)));
    let x = u_input.a;
    s_output = func_4(Struct_2(u_input.c, func_1(vec2<i32>(64178i, u_input.d) << (u_input.b.ww % vec2<u32>(32u)), _wgslsmith_f_op_f32(-364f * _wgslsmith_f_op_f32(-1206f - 655f)), vec2<u32>(u_input.e, 2468u)), func_2(true, -379f).c, vec4<i32>(0i, func_3(11696u, Struct_2(u_input.c, var_3.x, Struct_1(vec2<bool>(true, false), u_input.b.zx), vec4<i32>(var_0, 0i, var_0, var_0)), 19194i, u_input.e).x, 1i, u_input.c.x) | ~select(vec4<i32>(var_0, var_0, -26023i, 1i), vec4<i32>(8600i, var_0, 2147483647i, var_0), vec4<bool>(false, var_1, false, var_1))), vec3<bool>(var_1, any(!select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(true, var_3.x, true, var_3.x), var_3.x)), 14762u < _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 102094u)), abs(u_input.b.xw))), vec3<bool>(any(vec3<bool>(!var_1, any(var_3), !var_1)), all(select(!vec4<bool>(var_1, false, var_3.x, true), select(vec4<bool>(var_1, var_3.x, false, true), vec4<bool>(var_3.x, var_1, var_3.x, var_3.x), var_1), func_2(var_3.x, 294f).c.a.x)), func_1(u_input.c.zy, _wgslsmith_f_op_f32(min(-289f, -1001f)), ~(vec2<u32>(u_input.a, 60818u) ^ u_input.b.zy))));
}

