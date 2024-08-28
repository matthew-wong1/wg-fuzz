struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(204f, true), 678f, Struct_1(468f, false), 2043f, vec3<f32>(1442f, 162f, -1568f)), Struct_2(Struct_1(-433f, false), -1111f, Struct_1(-235f, true), 1258f, vec3<f32>(876f, 1286f, -1757f)), Struct_2(Struct_1(-1323f, true), -2306f, Struct_1(-133f, true), 758f, vec3<f32>(-1316f, 751f, 975f)), Struct_2(Struct_1(485f, true), -631f, Struct_1(282f, false), 187f, vec3<f32>(237f, 926f, -1430f)), Struct_2(Struct_1(895f, false), 1213f, Struct_1(-920f, true), -334f, vec3<f32>(-1000f, -406f, 947f)), Struct_2(Struct_1(-917f, false), 166f, Struct_1(1000f, true), 1141f, vec3<f32>(1200f, 423f, -1473f)), Struct_2(Struct_1(863f, true), 621f, Struct_1(817f, false), 1052f, vec3<f32>(497f, 264f, 839f)), Struct_2(Struct_1(362f, true), 1000f, Struct_1(-932f, true), 1512f, vec3<f32>(2362f, -1259f, 1266f)), Struct_2(Struct_1(-814f, true), 1430f, Struct_1(-463f, true), -304f, vec3<f32>(371f, -1593f, -436f)), Struct_2(Struct_1(185f, true), -948f, Struct_1(-730f, false), 579f, vec3<f32>(2056f, 279f, -1198f)), Struct_2(Struct_1(259f, false), -820f, Struct_1(1182f, true), -522f, vec3<f32>(-171f, 1264f, -1780f)), Struct_2(Struct_1(-294f, true), -531f, Struct_1(-325f, true), 1000f, vec3<f32>(1694f, 800f, -876f)), Struct_2(Struct_1(1269f, false), 1034f, Struct_1(-377f, false), -1510f, vec3<f32>(-203f, -534f, -1259f)), Struct_2(Struct_1(-233f, false), 281f, Struct_1(1094f, false), 464f, vec3<f32>(-161f, 2219f, -1492f)), Struct_2(Struct_1(-1543f, true), -579f, Struct_1(542f, false), -262f, vec3<f32>(-933f, 223f, 1000f)), Struct_2(Struct_1(1161f, true), -1000f, Struct_1(-184f, false), 1000f, vec3<f32>(148f, 224f, -704f)), Struct_2(Struct_1(-166f, false), 871f, Struct_1(-789f, true), -1019f, vec3<f32>(1961f, -1130f, 993f)), Struct_2(Struct_1(-173f, false), -107f, Struct_1(-1196f, false), 2411f, vec3<f32>(-1189f, 1074f, -1000f)), Struct_2(Struct_1(-1316f, true), 1878f, Struct_1(815f, true), 583f, vec3<f32>(-1000f, 755f, 284f)), Struct_2(Struct_1(2655f, false), 125f, Struct_1(-1000f, true), 1000f, vec3<f32>(-1808f, -268f, -367f)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec3<bool> {
    global0 = array<Struct_2, 20>();
    var var_0 = ~(~arg_1.yx);
    let var_1 = Struct_5(!arg_0, -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(-108f * 505f);
    var_0 = arg_1.xz;
    return vec3<bool>(!select(!(!var_1.a), true, false), arg_0, all(vec4<bool>(!all(vec3<bool>(true, false, arg_0)), !var_1.a, false, true)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1259f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f - 497f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(188f)), _wgslsmith_f_op_f32(floor(2937f))))));
    global0 = array<Struct_2, 20>();
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(498f, 938f, false)), _wgslsmith_f_op_f32(abs(1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1871f + -769f), -2309f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1287f)) * _wgslsmith_f_op_f32(f32(-1f) * -1284f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(936f, -188f, -1206f, -1841f)) - vec4<f32>(2035f, -917f, 271f, 523f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(388f, 1000f, -448f, 1192f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-599f - -1358f), _wgslsmith_f_op_f32(f32(-1f) * -328f))));
    return Struct_1(_wgslsmith_f_op_f32(min(1213f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_1.x, 172f))))))), arg_1 | true);
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = func_3(min(-(~(vec4<i32>(u_input.b, -15617i, u_input.b, -703i) >> (vec4<u32>(4294967295u, 0u, 1u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_div_i32(0i, 1i), u_input.b >> (u_input.a % 32u), 1i), firstTrailingBit(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)))), true, arg_0, func_2(!(!all(vec3<bool>(false, true, true))), vec3<i32>(firstTrailingBit(-u_input.b), i32(-1i) * -10628i, _wgslsmith_sub_i32(u_input.b, u_input.b))));
    return Struct_4(Struct_3(arg_0.x, Struct_2(var_0, -662f, Struct_1(_wgslsmith_f_op_f32(-var_0.a), -1028f <= var_0.a), func_3(select(vec4<i32>(6093i, -46534i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), var_0.b), false, arg_0 | arg_0, func_2(false, vec3<i32>(69987i, 0i, -10154i))).a, vec3<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a + -1014f), -748f)), ~max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), ~vec4<u32>(77891u, u_input.a, u_input.a, 0u)), var_0), firstTrailingBit(((vec3<i32>(u_input.b, -2147483647i, -2147483647i) ^ vec3<i32>(-1i, 20198i, u_input.b)) << (vec3<u32>(0u, 1u, arg_0.x) % vec3<u32>(32u))) >> (arg_0 % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = vec3<bool>(true, true, arg_0.a.b.c.b);
    var var_1 = -2290f;
    var var_2 = !arg_0.a.b.a.b;
    var_0 = select(vec3<bool>(func_1(arg_0.a.c.xyy).a.a >= ~(32331u >> (arg_0.a.a % 32u)), all(var_0.zy), true & ((arg_0.a.b.a.b || true) && arg_0.a.b.a.b)), select(select(select(!vec3<bool>(false, arg_0.a.d.b, true), !vec3<bool>(var_0.x, var_0.x, true), true), !select(vec3<bool>(true, arg_0.a.b.a.b, arg_0.a.d.b), vec3<bool>(false, false, true), vec3<bool>(arg_0.a.d.b, var_0.x, var_0.x)), !vec3<bool>(arg_0.a.b.c.b, arg_0.a.d.b, false)), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.a.b.a.b, true, arg_0.a.d.b), -72119i >= firstTrailingBit(24564i)), false), !(!(!(!vec3<bool>(var_0.x, var_0.x, true)))));
    var var_3 = arg_0.a.c;
    return ~var_3.x;
}

fn func_5(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = func_1(arg_0.c.yyy).a;
    let var_1 = var_0.a;
    let var_2 = var_0.b.c;
    return select(select(!vec3<bool>(select(var_0.d.b, true, false), true, true), select(!(!vec3<bool>(arg_0.d.b, true, false)), !(!vec3<bool>(true, arg_0.d.b, true)), !arg_0.d.b), select(vec3<bool>(any(vec3<bool>(true, true, var_0.d.b)), var_2.b, all(vec3<bool>(var_0.d.b, false, arg_0.d.b))), select(vec3<bool>(true, var_2.b, false), vec3<bool>(var_0.d.b, var_0.b.a.b, true), !vec3<bool>(arg_0.b.c.b, false, false)), false)), select(vec3<bool>(any(vec3<bool>(false, true, var_0.b.c.b)) | (true || arg_0.d.b), all(select(vec4<bool>(false, arg_0.b.c.b, true, true), vec4<bool>(arg_0.b.a.b, var_0.d.b, var_2.b, true), vec4<bool>(false, false, true, true))), func_3(vec4<i32>(u_input.b, 79144i, u_input.b, u_input.b), any(vec4<bool>(true, false, false, true)), ~vec3<u32>(var_1, 1u, 0u), vec3<bool>(false, false, false)).b), select(vec3<bool>(true, func_3(vec4<i32>(17218i, u_input.b, -2147483647i, -2147483647i), var_2.b, vec3<u32>(var_1, u_input.a, 19537u), vec3<bool>(var_2.b, arg_0.d.b, false)).b, true), vec3<bool>(!var_0.d.b, var_2.b, any(vec2<bool>(var_2.b, true))), false), true), (true != any(!vec3<bool>(var_0.b.c.b, var_2.b, false))) | true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(~35128u, global0[_wgslsmith_index_u32(4294967295u << (func_4(func_1(vec3<u32>(4294967295u, 4294967295u, 80093u)), 16688u) % 32u), 20u)], abs(vec4<u32>(u_input.a, u_input.a, ~0u, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-726f))), !(u_input.a <= 4294967295u))));
    global0 = array<Struct_2, 20>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(-635f, 875f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f + -189f)) - func_3(vec4<i32>(u_input.b, 1i, -1058i, u_input.b), true, _wgslsmith_div_vec3_u32(vec3<u32>(30581u, u_input.a, 1u), vec3<u32>(63995u, 2183u, u_input.a)), vec3<bool>(var_0.x, var_0.x, false)).a) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 496f), _wgslsmith_f_op_f32(-332f + 1000f))), func_1(vec3<u32>(u_input.a, u_input.a, 8555u) ^ vec3<u32>(48117u, 35705u, u_input.a)).a.d.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -490f))) + _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1068f + -1181f) - _wgslsmith_f_op_f32(min(-480f, -1561f))), true))));
    global0 = array<Struct_2, 20>();
    let var_2 = 14878u;
    global0 = array<Struct_2, 20>();
    var var_3 = vec2<u32>(~u_input.a, u_input.a << (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 4294967295u, var_2), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_2, 1u, u_input.a, 1u)), countOneBits(vec4<u32>(u_input.a, u_input.a, var_2, u_input.a)))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-11557i, 0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(~firstTrailingBit(4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, u_input.a, 68014u, 4294967295u), vec4<u32>(1u, var_2, u_input.a, u_input.a))), ~var_2), -(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(2147483647i, -2147483647i, 1i, u_input.b)) << (abs(~vec4<u32>(var_2, var_3.x, u_input.a, var_2)) % vec4<u32>(32u))), -1i);
}

