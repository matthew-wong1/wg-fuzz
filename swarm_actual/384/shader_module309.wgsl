struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = vec4<bool>(false, arg_0.a && arg_0.a, true, any(select(vec3<bool>(any(vec3<bool>(arg_0.a, false, false)), arg_0.a, !arg_0.a), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, true, true)), vec3<bool>(923f >= arg_0.b.c.x, arg_0.a, true))));
    var var_1 = ~arg_1.b.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(arg_1.b.d.zy, vec2<f32>(arg_0.b.d.x, _wgslsmith_div_f32(-2488f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(select(arg_1.b.d.x, -258f, arg_0.a))))))));
    var var_3 = Struct_2(arg_0.b.d.x, arg_0.b, ~arg_0.b.e.x);
    var var_4 = vec4<bool>(any(select(vec4<bool>(-1312f == arg_0.b.d.x, arg_0.a & arg_0.a, false, true), vec4<bool>(!var_0.x, select(var_0.x, arg_0.a, false), true, all(vec2<bool>(arg_0.a, var_0.x))), select(!vec4<bool>(arg_0.a, false, false, var_0.x), vec4<bool>(true, false, var_0.x, false), true))), all(vec4<bool>(any(!var_0.yy), false, all(select(vec4<bool>(arg_0.a, true, true, arg_0.a), vec4<bool>(var_0.x, var_0.x, false, true), false)), arg_0.a)), true, arg_1.b.b.x <= ~(~_wgslsmith_dot_vec2_u32(var_3.b.b.ww, vec2<u32>(1u, var_3.b.b.x))));
    return abs(firstLeadingBit(var_3.b.b));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = Struct_1(arg_0.b.b.x, _wgslsmith_mult_vec4_u32(func_3(Struct_4(false, arg_0.b), Struct_2(_wgslsmith_f_op_f32(floor(1000f)), Struct_1(arg_0.b.b.x, arg_0.b.b, arg_0.b.d.yyw, vec4<f32>(-1000f, 618f, arg_0.b.d.x, -1000f), arg_0.b.e), arg_0.c)), arg_0.b.b), vec3<f32>(arg_0.a, -538f, 530f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1632f - arg_0.a))), arg_0.b.d.x, arg_0.b.d.x), arg_0.b.e & vec3<i32>(u_input.a.x, u_input.a.x, ~firstTrailingBit(-35698i)));
    var var_1 = Struct_4(true && any(vec2<bool>(u_input.a.x > -36020i, true)), Struct_1(~(~var_0.a), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, 1747f)), _wgslsmith_f_op_f32(max(-2232f, -125f)), -531f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.x, arg_0.b.d.x, -435f, var_0.d.x), var_0.d)))))), -(abs(vec3<i32>(u_input.a.x, var_0.e.x, u_input.a.x)) >> (select(var_0.b.wwz, arg_0.b.b.zyx, vec3<bool>(true, true, true)) % vec3<u32>(32u)))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.e.yx, var_0.e.yx), u_input.a.x);
    var var_3 = Struct_3(!(!(!select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, false, true), var_1.a))));
    var_3 = Struct_3(!select(vec4<bool>(false, var_0.b.x > var_0.a, var_1.a, true), select(!var_3.a, !var_3.a, vec4<bool>(false, var_3.a.x, true, true)), vec4<bool>(var_3.a.x, all(vec4<bool>(var_3.a.x, var_3.a.x, var_1.a, var_1.a)), true, all(var_3.a.wz))));
    return any(vec4<bool>(var_3.a.x && (-607f != _wgslsmith_f_op_f32(ceil(-1385f))), all(var_3.a.zxx), var_1.a, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = 4294967295u;
    var_0 = 9380u;
    var_0 = 92680u;
    var var_1 = arg_0.a | 0u;
    let var_2 = arg_1.b.zyy;
    return !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, func_2(Struct_2(1689f, Struct_1(1u, arg_3, vec3<f32>(-1000f, arg_1.c.x, 2087f), vec4<f32>(arg_1.d.x, -1148f, arg_1.d.x, 1000f), arg_1.e), arg_1.e.x)), all(vec3<bool>(false, true, true)), true), vec4<bool>(true, false, true, true), func_2(Struct_2(arg_1.d.x, arg_0, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(!(!func_1(Struct_1(4294967295u, vec4<u32>(0u, 24764u, 52354u, 0u), vec3<f32>(271f, 515f, 355f), vec4<f32>(233f, 1000f, -1670f, -1785f), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), Struct_1(52692u, vec4<u32>(0u, 57306u, 4294967295u, 1u), vec3<f32>(-1109f, -140f, 826f), vec4<f32>(-1011f, 1000f, -1671f, 463f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(-2147483647i, 0i, -38074i), vec4<u32>(47575u, 6136u, 1u, 4294967295u)))), ~1u != ~firstTrailingBit(0u));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(-(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a) & (u_input.a & vec2<i32>(-2147483647i, 14700i))), ~abs(vec2<i32>(2147483647i, u_input.a.x))));
    var_0 = select(select(select(vec2<bool>(false, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec2<bool>(true, true), -u_input.a.x == ~(-53620i)), !func_1(Struct_1(0u, vec4<u32>(0u, 13098u, 1u, 0u), vec3<f32>(-1195f, -776f, -750f), vec4<f32>(-397f, -452f, 348f, -692f), vec3<i32>(u_input.a.x, u_input.a.x, var_1)), Struct_1(21969u, vec4<u32>(9290u, 56008u, 77434u, 6878u), vec3<f32>(1275f, -756f, 2276f), vec4<f32>(758f, -719f, -498f, 735f), vec3<i32>(1i, var_1, -21130i)), vec3<i32>(40768i, var_1, 1i), vec4<u32>(1u, 1u, 1u, 1u)).zz, var_0.x), func_1(Struct_1(45714u, vec4<u32>(~35825u, ~4294967295u, max(67930u, 1u), firstLeadingBit(69304u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3311f, 100f, 481f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, -888f, -1478f))), vec4<f32>(1f, 1f, 1f, 1f), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.a.x, 0i, 0i), vec4<i32>(var_1, var_1, -1i, u_input.a.x)), u_input.a.x)), Struct_1(~firstLeadingBit(1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, 29451u, 1009u), countOneBits(vec4<u32>(1u, 0u, 0u, 0u)), ~vec4<u32>(41571u, 18086u, 88098u, 5072u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, -156f, 164f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1019f, -476f, -1452f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(456f, -1162f, -515f, -1000f), vec4<f32>(-1897f, 799f, 458f, 1000f))), ~vec3<i32>(35419i, u_input.a.x, 40032i)), min(select(-vec3<i32>(1i, var_1, var_1), _wgslsmith_mult_vec3_i32(vec3<i32>(-21827i, var_1, -2147483647i), vec3<i32>(var_1, var_1, var_1)), false), vec3<i32>(firstLeadingBit(u_input.a.x), select(-1i, 19093i, true), var_1)), ~vec4<u32>(~1u, 31792u, 1u, func_3(Struct_4(var_0.x, Struct_1(40619u, vec4<u32>(14425u, 4294967295u, 4294967295u, 4294967295u), vec3<f32>(-562f, -740f, -1917f), vec4<f32>(861f, 1045f, 1918f, -1000f), vec3<i32>(u_input.a.x, 25966i, -2147483647i))), Struct_2(1951f, Struct_1(22301u, vec4<u32>(92199u, 32228u, 25961u, 4294967295u), vec3<f32>(712f, -1000f, -658f), vec4<f32>(629f, -696f, 538f, -1000f), vec3<i32>(var_1, 19979i, -1i)), -2147483647i)).x)).wy, true & !(!select(true, var_0.x, true)));
    var var_2 = Struct_3(func_1(Struct_1(37366u, vec4<u32>(5129u, _wgslsmith_dot_vec3_u32(vec3<u32>(49623u, 34978u, 6612u), vec3<u32>(13514u, 23332u, 26358u)), ~0u, 51172u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, -148f, 425f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, 2677f, -161f, 820f))), vec3<i32>(39931i | var_1, _wgslsmith_clamp_i32(-11191i, -2147483647i, -49984i), 1i)), Struct_1(29204u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2643u, 17913u, 1u), vec4<u32>(96536u, 17115u, 53803u, 16498u)) % 32u), vec4<u32>(~4294967295u, 1u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(1373f - 724f), -328f, -261f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(697f, 1000f, -1711f, -616f)))), vec3<i32>(var_1, ~14348i, u_input.a.x)), max(-(vec3<i32>(31005i, 0i, var_1) & vec3<i32>(u_input.a.x, var_1, 9885i)), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(var_1, -1i, -41142i)), min(vec3<i32>(0i, 35200i, var_1), vec3<i32>(2147483647i, var_1, 2147483647i)))), max(vec4<u32>(select(0u, 55618u, true), 1u, reverseBits(92879u), _wgslsmith_dot_vec3_u32(vec3<u32>(23855u, 40982u, 9695u), vec3<u32>(16416u, 10202u, 15610u))), vec4<u32>(1u, ~1u, func_3(Struct_4(false, Struct_1(127678u, vec4<u32>(4294967295u, 0u, 4294967295u, 37595u), vec3<f32>(1184f, -481f, 908f), vec4<f32>(-1760f, 132f, -1332f, 627f), vec3<i32>(u_input.a.x, var_1, u_input.a.x))), Struct_2(-1562f, Struct_1(4294967295u, vec4<u32>(0u, 1u, 0u, 11130u), vec3<f32>(-561f, -501f, -1700f), vec4<f32>(863f, -1823f, 850f, 625f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -15367i)).x, 1u))));
    var_2 = Struct_3(vec4<bool>(!var_0.x, var_2.a.x, true, var_0.x));
    let var_3 = !var_2.a.ww;
    let var_4 = Struct_3(!func_1(Struct_1(_wgslsmith_mod_u32(54216u, 46188u), vec4<u32>(1u, 1u, 1u, 1u), vec3<f32>(1000f, -1216f, 1760f), vec4<f32>(-528f, 616f, -1529f, -1000f), vec3<i32>(var_1, -2449i, 0i) >> (vec3<u32>(4294967295u, 66880u, 1u) % vec3<u32>(32u))), Struct_1(7406u, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1665f, 1000f, -1657f, -661f))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-31307i, var_1, u_input.a.x), vec3<i32>(var_1, var_1, u_input.a.x), vec3<i32>(u_input.a.x, 7715i, 34418i))), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(var_1, -18987i, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 31349u, 23174u))));
    var var_5 = false;
    var var_6 = select(~countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 13551u, 31848u), select(vec3<u32>(48130u, 0u, 11706u), vec3<u32>(22877u, 0u, 51434u), var_2.a.zyw))), vec3<u32>(func_3(Struct_4(all(vec3<bool>(false, var_2.a.x, var_3.x)), Struct_1(17637u, vec4<u32>(0u, 43928u, 0u, 0u), vec3<f32>(132f, -2084f, -1580f), vec4<f32>(172f, 568f, 1163f, -803f), vec3<i32>(var_1, -42665i, -2147483647i))), Struct_2(_wgslsmith_f_op_f32(max(1125f, 765f)), Struct_1(7492u, vec4<u32>(1u, 21903u, 30338u, 4294967295u), vec3<f32>(-695f, -121f, 833f), vec4<f32>(232f, -939f, 603f, 1268f), vec3<i32>(var_1, 0i, 22588i)), -var_1)).x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(~vec4<u32>(32331u, 5056u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), var_0.x || true)), 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, var_4.a.x, false, false)), false), select(vec3<bool>(!var_2.a.x, var_4.a.x, false), vec3<bool>(!var_2.a.x, var_4.a.x, select(var_4.a.x, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_6.x, var_6.x, 4294967295u), ~countOneBits(vec3<u32>(var_6.x, var_6.x, 0u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1000f + -740f), _wgslsmith_f_op_f32(sign(-848f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-343f, -1672f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(select(783f, -559f, false))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(237f, 197f) * vec2<f32>(-3433f, 436f))))), _wgslsmith_clamp_u32(~0u, ~0u, 0u) <= ~(~var_6.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f)))), _wgslsmith_mult_i32(0i, 1i));
}

