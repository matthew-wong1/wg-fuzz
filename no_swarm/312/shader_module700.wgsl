struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true));

var<private> global1: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    var var_0 = min(~select(abs(firstTrailingBit(arg_1.a.a)), vec4<i32>(40095i, u_input.a.x, -1i, arg_1.d.d) << (vec4<u32>(arg_1.a.b, arg_1.b.b, arg_1.a.b, arg_1.b.b) % vec4<u32>(32u)), true), ~(-arg_1.b.a));
    var var_1 = arg_1.d;
    global0 = array<vec4<bool>, 31>();
    var var_2 = Struct_1(abs(~(-vec4<i32>(arg_2, arg_2, var_0.x, 1i))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 36231u), abs(vec2<u32>(var_1.b, 66619u))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(22141u, ~arg_1.d.b, ~1u, _wgslsmith_mult_u32(var_1.b, 4294967295u)), vec4<u32>(39498u, arg_1.d.b, var_1.b, 53244u) >> (vec4<u32>(1u, 45086u, 41940u, 11340u) % vec4<u32>(32u))) % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c), arg_1.d.c)), var_1.c), 2147483647i);
    var var_3 = _wgslsmith_f_op_f32(sign(arg_0));
    return ~reverseBits(firstTrailingBit(~var_2.b)) | _wgslsmith_add_u32(~17803u, _wgslsmith_div_u32(arg_1.b.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 16951u, 4294967295u), vec3<u32>(var_1.b, var_1.b, var_2.b))) << (_wgslsmith_add_u32(~88487u, _wgslsmith_dot_vec2_u32(vec2<u32>(10947u, arg_1.a.b), vec2<u32>(52783u, 62723u))) % 32u));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> i32 {
    global0 = array<vec4<bool>, 31>();
    let var_0 = ~select(arg_0.c.b.b, ~(arg_0.c.b.b & 0u), !global1[_wgslsmith_index_u32(func_3(394f, Struct_2(arg_0.b.a, arg_0.c.b, arg_0.c.b.c, arg_0.c.b, arg_0.b.e), -arg_0.e.x, vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(arg_0.c.b.b, 1u)])), 1u)]);
    let var_1 = _wgslsmith_f_op_f32(arg_0.b.d.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.d.c.x - -309f)));
    let var_2 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(round(-294f)));
    let var_3 = (vec2<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(var_0, 97848u), _wgslsmith_sub_u32(var_0, var_0)), ~(arg_0.c.a.b >> (1u % 32u))) >> (~(reverseBits(vec2<u32>(1u, 18860u)) << ((vec2<u32>(arg_0.b.b.b, 68396u) | vec2<u32>(var_0, arg_0.b.a.b)) % vec2<u32>(32u))) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(33955u << (0u % 32u), ~1371u), vec2<u32>(var_0, 14512u)) % vec2<u32>(32u));
    return arg_0.c.b.d;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = ~reverseBits(func_2(Struct_3(arg_0.a.x, Struct_2(Struct_1(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1i), arg_0.b, arg_0.c, arg_0.d), Struct_1(vec4<i32>(13539i, -2147483647i, -3196i, -31499i), 1u, vec3<f32>(1097f, arg_0.c.x, -1232f), u_input.a.x), vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0, vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b, 1u)], global1[_wgslsmith_index_u32(arg_0.b, 1u)])), Struct_2(Struct_1(vec4<i32>(u_input.a.x, arg_0.d, u_input.a.x, -1i), 4294967295u, vec3<f32>(arg_0.c.x, arg_0.c.x, 722f), 34048i), Struct_1(vec4<i32>(-1i, u_input.a.x, arg_0.a.x, 0i), 88312u, arg_0.c, arg_0.d), vec3<f32>(arg_0.c.x, arg_0.c.x, -564f), Struct_1(arg_0.a, 54537u, arg_0.c, -21286i), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.b, 1u)])), u_input.a.x, vec2<i32>(u_input.a.x, arg_0.d)), select(16473i, arg_0.a.x, true))) ^ (_wgslsmith_dot_vec3_i32(~arg_0.a.wwz, ~(-arg_0.a.yxz)) >> (firstLeadingBit(arg_0.b) % 32u));
    var var_1 = countOneBits(1u);
    let var_2 = select(vec2<bool>((global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(12775u, arg_0.b), 1u)] != !global1[_wgslsmith_index_u32(arg_0.b, 1u)]) && (~2147483647i < arg_0.d), true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 1u)], true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(27721u, 1u)], true))));
    global0 = array<vec4<bool>, 31>();
    let var_3 = _wgslsmith_div_u32(~arg_0.b, 39066u);
    return reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b, 1u), abs(reverseBits(vec2<u32>(1u, arg_0.b)))), var_3, countOneBits(_wgslsmith_add_u32(~var_3, _wgslsmith_mod_u32(19015u, arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    let var_0 = (firstTrailingBit(~func_1(Struct_1(vec4<i32>(u_input.a.x, 0i, -2147483647i, 1i), 1u, vec3<f32>(592f, 1453f, -1714f), -34794i))) << (~vec3<u32>(max(137424u, 0u), 1u, firstLeadingBit(4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(13886u, 1u, reverseBits(_wgslsmith_mult_u32(1u, 26177u))) % vec3<u32>(32u));
    let var_1 = var_0.x;
    let var_2 = Struct_3(u_input.a.x, Struct_2(Struct_1(-(~vec4<i32>(u_input.a.x, -1i, 0i, u_input.a.x)), ~max(4294967295u, 38698u), vec3<f32>(_wgslsmith_f_op_f32(abs(-2406f)), _wgslsmith_f_op_f32(-1000f + 232f), -799f), u_input.a.x), Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 58893i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), var_1 | ~var_0.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(337f, 293f, 351f) + vec3<f32>(1772f, 307f, -621f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-459f, -1373f, 220f), vec3<f32>(1079f, -599f, 494f))))), ~u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 965f, -689f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1938f, -634f, 588f))), Struct_1(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u), vec4<u32>(var_0.x, var_0.x, var_1, var_1)) % vec4<u32>(32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(var_1, var_0.x, var_1, var_0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-923f, -452f, -1218f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, 1690f, 2622f)))), _wgslsmith_mod_i32(-47846i, ~u_input.a.x)), vec2<bool>(false, !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1, 72736u), 1u)])), Struct_2(Struct_1(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), ~firstTrailingBit(var_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1372f, 1148f, 602f), vec3<f32>(640f, -1328f, -378f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -240f) - vec3<f32>(-289f, -1081f, 1199f))), u_input.a.x), Struct_1(vec4<i32>(~(-2147483647i), u_input.a.x, -68255i, func_2(Struct_3(u_input.a.x, Struct_2(Struct_1(vec4<i32>(u_input.a.x, -19250i, u_input.a.x, u_input.a.x), 0u, vec3<f32>(-2842f, -1000f, -1455f), 733i), Struct_1(vec4<i32>(u_input.a.x, -9195i, 8489i, 40579i), 1u, vec3<f32>(-1038f, 183f, 327f), u_input.a.x), vec3<f32>(-1000f, 1497f, 413f), Struct_1(vec4<i32>(-2147483647i, 30046i, -1i, 1470i), 9172u, vec3<f32>(-769f, -360f, -105f), 1i), vec2<bool>(global1[_wgslsmith_index_u32(var_1, 1u)], global1[_wgslsmith_index_u32(var_0.x, 1u)])), Struct_2(Struct_1(vec4<i32>(u_input.a.x, -40403i, u_input.a.x, -2147483647i), 38050u, vec3<f32>(-1647f, 595f, -1613f), u_input.a.x), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), var_0.x, vec3<f32>(-1000f, 1350f, -1218f), u_input.a.x), vec3<f32>(614f, -1032f, 855f), Struct_1(vec4<i32>(45638i, u_input.a.x, 1042i, -30792i), var_0.x, vec3<f32>(991f, 1000f, 689f), u_input.a.x), vec2<bool>(false, true)), u_input.a.x, u_input.a.xy), u_input.a.x)), 55691u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, 583f, -100f)))), ~(~42005i)), vec3<f32>(776f, -469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(401f)))), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -30602i) & ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~countOneBits(var_0.x), vec3<f32>(212f, _wgslsmith_f_op_f32(-137f - 310f), -641f), -38889i), select(vec2<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(var_1, 1u)])), global1[_wgslsmith_index_u32(var_0.x, 1u)]), !vec2<bool>(global1[_wgslsmith_index_u32(27495u, 1u)], global1[_wgslsmith_index_u32(var_1, 1u)]), !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 1u)]), false))), u_input.a.x, u_input.a.xx);
    let var_3 = _wgslsmith_f_op_f32(ceil(1000f));
    var var_4 = _wgslsmith_div_i32(u_input.a.x, 73398i);
    global0 = array<vec4<bool>, 31>();
    var_4 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(12834i, 1i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 16734i, -2147483647i, var_2.b.b.a.x)), vec4<i32>(-10680i, -1i, 14276i, -13032i) ^ var_2.c.d.a), ~(u_input.a.x | 30436i)), u_input.a), -max(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-27617i, var_2.a, var_2.e.x), vec3<i32>(var_2.d, u_input.a.x, var_2.d))));
    var_4 = _wgslsmith_mod_i32(var_2.c.a.a.x, firstTrailingBit(reverseBits(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(countOneBits(~var_0.zy), vec2<u32>(var_1, 0u)), ~var_1, ~firstTrailingBit(-1i), ~(-u_input.a.x));
}

