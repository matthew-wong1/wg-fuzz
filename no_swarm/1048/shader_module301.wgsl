struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(2147483647i, -42483i, -3258i), vec3<i32>(1249i, i32(-2147483648), -56774i), vec3<i32>(1i, -7265i, -13408i), vec3<i32>(1i, -9707i, -1i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 0i, -41987i), vec3<i32>(22291i, -1i, i32(-2147483648)), vec3<i32>(0i, 1i, 15936i), vec3<i32>(-1i, -4613i, -1717i), vec3<i32>(1i, -1i, 3917i), vec3<i32>(0i, 27576i, -1i), vec3<i32>(-12040i, i32(-2147483648), 2147483647i), vec3<i32>(-5392i, 4046i, -69580i), vec3<i32>(45320i, 1i, -6815i), vec3<i32>(31295i, 8780i, -10222i), vec3<i32>(-1i, -58124i, -50636i), vec3<i32>(-33485i, -67287i, -41090i), vec3<i32>(1i, i32(-2147483648), 11045i), vec3<i32>(-1i, 15679i, 0i), vec3<i32>(i32(-2147483648), -53104i, 2147483647i), vec3<i32>(59191i, 0i, 2012i), vec3<i32>(27601i, -29819i, 0i), vec3<i32>(35832i, 13761i, -2787i), vec3<i32>(i32(-2147483648), -1i, 71545i), vec3<i32>(24403i, i32(-2147483648), 0i), vec3<i32>(0i, -18339i, 2144i), vec3<i32>(i32(-2147483648), 53645i, 130i), vec3<i32>(2222i, -18890i, 2627i), vec3<i32>(-24945i, -16821i, 49966i), vec3<i32>(6793i, i32(-2147483648), 47988i));

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(572f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1522f)))))) * 158f);
    global1 = select(select(~(~vec3<u32>(1u, u_input.a, global1.x)), ~_wgslsmith_div_vec3_u32(~arg_0.wwy, abs(arg_0.zwx)), true), vec3<u32>(44403u, select(~countOneBits(1u), global1.x, true), ~_wgslsmith_dot_vec2_u32(arg_0.wy, _wgslsmith_clamp_vec2_u32(arg_0.wx, arg_0.xy, vec2<u32>(arg_0.x, 11970u)))), select(any(vec3<bool>(false, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true) && any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var var_2 = Struct_2(Struct_1(~max(vec4<u32>(arg_0.x, 4294967295u, u_input.a, global1.x), arg_0)));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-435f, -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f))), _wgslsmith_f_op_f32(-1211f * 281f)));
    return !vec4<bool>(true, !(!any(vec3<bool>(true, true, true))), all(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = select(func_3(select(_wgslsmith_mod_vec4_u32(max(vec4<u32>(arg_0.a.a.x, 62347u, 5365u, 0u), arg_0.a.a), vec4<u32>(global1.x, arg_0.a.a.x, 1u, 1u)), ~vec4<u32>(arg_0.a.a.x, 0u, arg_0.a.a.x, global1.x) >> (arg_0.a.a % vec4<u32>(32u)), vec4<bool>(true, true, true, all(vec2<bool>(false, true)))), 1u), !select(func_3(_wgslsmith_div_vec4_u32(arg_0.a.a, vec4<u32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_mult_u32(u_input.a, global1.x)), vec4<bool>(true, arg_0.a.a.x == u_input.a, true, select(false, false, false)), any(vec2<bool>(false, true))), func_3(vec4<u32>(arg_0.a.a.x, 66329u, _wgslsmith_mod_u32(4294967295u, max(arg_0.a.a.x, arg_0.a.a.x)), ~(~4294967295u)), abs(select(arg_0.a.a.x, ~1u, true))));
    let var_1 = !vec2<bool>(true, var_0.x);
    global0 = array<vec3<i32>, 30>();
    global1 = arg_0.a.a.wyy;
    var var_2 = ~(-11384i);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global1 = firstLeadingBit(vec3<u32>(global1.x, _wgslsmith_sub_u32(1u, arg_1.a.a.x) ^ ((arg_0.a.a.x >> (global1.x % 32u)) << (abs(global1.x) % 32u)), func_2(func_2(func_2(Struct_2(Struct_1(vec4<u32>(51529u, arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x)))))).a.a.x));
    let var_0 = ~(vec2<i32>(-1i) * -vec2<i32>(~(-2147483647i), arg_2));
    let var_1 = any(!vec3<bool>(true, 0i < countOneBits(arg_2), (-45649i << (arg_1.a.a.x % 32u)) != var_0.x));
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.a.a.x, 30738u), vec3<u32>(u_input.a, 30440u, arg_1.a.a.x << (global1.x % 32u))) ^ countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.a, 20369u, global1.x)), vec3<u32>(36567u, u_input.a, 46132u) << (vec3<u32>(18116u, arg_1.a.a.x, 0u) % vec3<u32>(32u))), ~(~arg_0.a.a.xwz)));
    global0 = array<vec3<i32>, 30>();
    return Struct_1(func_2(func_2(arg_0)).a.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = !(!vec2<bool>(true, !all(vec4<bool>(true, false, false, false))));
    var var_1 = max(1i, -_wgslsmith_sub_i32(1i & firstTrailingBit(1i), 1i));
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, select(true, true, true)), all(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x))));
    return Struct_2(func_2(arg_0).a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1269f, 2178f, true))), _wgslsmith_f_op_f32(-1f)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(402f, -1803f, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(416f * -1136f)))))));
    var var_1 = Struct_4(max(func_4(func_5(func_5(Struct_2(arg_0.a), vec2<u32>(arg_0.a.a.x, arg_1.a), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, arg_0.a.a.x, 41242u))), arg_0.a), global1.xy, arg_0, Struct_1(arg_0.a.a)), arg_0, min(firstLeadingBit(arg_1.b), _wgslsmith_div_i32(2147483647i, -2147483647i))).a.x, 32280u), firstTrailingBit(-firstLeadingBit(_wgslsmith_sub_i32(arg_1.b, arg_1.d))), ~select(-2147483647i, ~arg_1.d, true), -arg_1.b);
    let var_2 = ~0u;
    var_1 = Struct_4(max(1u, ~_wgslsmith_mult_u32(31346u, 1u)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(-var_1.c), select(24520i >> (arg_0.a.a.x % 32u), _wgslsmith_clamp_i32(arg_1.b, 6817i, var_1.c), true)), var_1.d), 1201i, 2147483647i);
    var_1 = Struct_4(~(~(u_input.a ^ ~4294967295u)), -(var_1.d | (_wgslsmith_dot_vec2_i32(vec2<i32>(-31637i, -19288i), vec2<i32>(46800i, 32935i)) >> (func_5(Struct_2(Struct_1(arg_0.a.a)), vec2<u32>(var_1.a, global1.x), Struct_2(arg_0.a), Struct_1(vec4<u32>(5429u, u_input.a, 41525u, global1.x))).a.a.x % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 0i, select(-11476i, var_1.b, true), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, var_1.d), -25160i)), vec4<i32>(-20504i, arg_1.b, ~(-1i), ~39774i) | -countOneBits(vec4<i32>(arg_1.c, var_1.d, arg_1.d, var_1.d))), countOneBits(-firstLeadingBit(_wgslsmith_mod_i32(var_1.d, var_1.b))));
    return arg_0;
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = func_6(func_5(Struct_2(func_4(func_2(Struct_2(Struct_1(vec4<u32>(27395u, 4294967295u, global1.x, 4294967295u)))), Struct_2(Struct_1(vec4<u32>(4294967295u, global1.x, 4294967295u, 1u))), _wgslsmith_div_i32(0i, 5824i))), abs(~global1.yz), func_2(func_2(func_2(Struct_2(Struct_1(vec4<u32>(54872u, global1.x, 16033u, global1.x)))))), Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u, 69309u), select(u_input.a, u_input.a, false), ~global1.x, reverseBits(u_input.a)))), Struct_4(firstLeadingBit(abs(1u)), _wgslsmith_clamp_i32(-2147483647i, 21709i, -_wgslsmith_mod_i32(-1i, -13820i)), -1i, ~1i));
    let var_1 = Struct_4(var_0.a.a.x, 1i, -27040i, -1i);
    global0 = array<vec3<i32>, 30>();
    global1 = ~_wgslsmith_add_vec3_u32(func_6(Struct_2(Struct_1(var_0.a.a)), var_1).a.a.zzz, firstLeadingBit(var_0.a.a.zyz));
    var var_2 = Struct_3(0u, !(!vec2<bool>(true, 0u < u_input.a)));
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, -673f, -1000f, 723f))), vec4<f32>(_wgslsmith_f_op_f32(-993f + 419f), 1000f, _wgslsmith_f_op_f32(593f - -156f), -1345f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(round(1000f)))), -815f, 868f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) + _wgslsmith_f_op_f32(sign(1325f))), -1795f, -257f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1492f)))))), true));
    let var_1 = Struct_2(Struct_1(vec4<u32>(43590u, ~0u, 0u | global1.x, global1.x) ^ func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(760f, var_0.x, var_0.x, -963f) * vec4<f32>(-913f, var_0.x, var_0.x, var_0.x)))));
    var var_2 = vec4<bool>(true, true, true, true);
    var_2 = vec4<bool>(false, false, all(vec4<bool>(all(!vec3<bool>(var_2.x, var_2.x, true)), false, false, false && var_2.x)), var_2.x);
    global0 = array<vec3<i32>, 30>();
    var var_3 = select(vec2<bool>(var_2.x, var_2.x), select(select(!(!vec2<bool>(var_2.x, false)), func_3(~vec4<u32>(14657u, 0u, u_input.a, global1.x), func_4(var_1, var_1, 2092i).a.x).wz, select(var_2.xz, select(var_2.xz, var_2.yx, var_2.x), var_2.wy)), var_2.wz, !var_2.yw), var_2.yx);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.a.a);
}

