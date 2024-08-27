struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(4294967295u), Struct_3(7514u), Struct_3(1u));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<f32>(561f, 384f, 318f, 462f)), vec3<i32>(i32(-2147483648), -1i, 21842i), Struct_1(vec4<f32>(-922f, 460f, 1764f, -742f))), Struct_2(Struct_1(vec4<f32>(-758f, 451f, -699f, 866f)), vec3<i32>(2147483647i, 25809i, -17198i), Struct_1(vec4<f32>(1823f, -892f, 1077f, 323f))), Struct_2(Struct_1(vec4<f32>(-1201f, -648f, -657f, -847f)), vec3<i32>(2147483647i, -1i, -72604i), Struct_1(vec4<f32>(450f, 141f, 1160f, 975f))), Struct_2(Struct_1(vec4<f32>(-657f, -811f, -529f, 223f)), vec3<i32>(-1i, -1i, 1i), Struct_1(vec4<f32>(266f, 632f, -312f, 333f))), Struct_2(Struct_1(vec4<f32>(-504f, 288f, -163f, -1419f)), vec3<i32>(2147483647i, 36569i, 11485i), Struct_1(vec4<f32>(521f, -1000f, 474f, -1000f))), Struct_2(Struct_1(vec4<f32>(-1029f, 3123f, 540f, -814f)), vec3<i32>(-30528i, -24829i, -1i), Struct_1(vec4<f32>(-2581f, 286f, 118f, -777f))), Struct_2(Struct_1(vec4<f32>(-1418f, -2190f, 499f, 1811f)), vec3<i32>(2147483647i, -14104i, 2147483647i), Struct_1(vec4<f32>(1721f, 433f, 1494f, 842f))), Struct_2(Struct_1(vec4<f32>(1000f, 3041f, 691f, -1000f)), vec3<i32>(10099i, 0i, 20596i), Struct_1(vec4<f32>(148f, 476f, 1000f, -395f))), Struct_2(Struct_1(vec4<f32>(-386f, 589f, -448f, -931f)), vec3<i32>(43003i, -4979i, 28745i), Struct_1(vec4<f32>(1216f, 100f, -1000f, -1032f))), Struct_2(Struct_1(vec4<f32>(-107f, -107f, -569f, 1398f)), vec3<i32>(-1134i, -33203i, 29670i), Struct_1(vec4<f32>(944f, -1309f, 2659f, -1248f))), Struct_2(Struct_1(vec4<f32>(249f, 803f, -2294f, -2249f)), vec3<i32>(-8891i, i32(-2147483648), 14871i), Struct_1(vec4<f32>(-694f, 482f, -1000f, -184f))), Struct_2(Struct_1(vec4<f32>(1579f, 176f, 149f, 324f)), vec3<i32>(2147483647i, i32(-2147483648), 34347i), Struct_1(vec4<f32>(-861f, 991f, -1956f, 185f))), Struct_2(Struct_1(vec4<f32>(870f, 1626f, -984f, 1033f)), vec3<i32>(0i, 2147483647i, -1i), Struct_1(vec4<f32>(-1330f, -205f, 350f, 1070f))), Struct_2(Struct_1(vec4<f32>(1000f, -141f, 1945f, 642f)), vec3<i32>(2147483647i, 1i, 0i), Struct_1(vec4<f32>(230f, -475f, -125f, -464f))), Struct_2(Struct_1(vec4<f32>(1659f, 309f, 306f, 1039f)), vec3<i32>(57314i, -1i, 1i), Struct_1(vec4<f32>(-1578f, -281f, -2021f, -1163f))), Struct_2(Struct_1(vec4<f32>(-1313f, 372f, 550f, 470f)), vec3<i32>(-5965i, -11161i, 2147483647i), Struct_1(vec4<f32>(1171f, -115f, -266f, 1000f))), Struct_2(Struct_1(vec4<f32>(-742f, 1998f, -871f, 1357f)), vec3<i32>(i32(-2147483648), 17911i, 34553i), Struct_1(vec4<f32>(-476f, -1059f, -565f, -1010f))), Struct_2(Struct_1(vec4<f32>(-844f, -970f, 1058f, -945f)), vec3<i32>(2147483647i, 2147483647i, 18192i), Struct_1(vec4<f32>(-276f, 1528f, -417f, -1475f))), Struct_2(Struct_1(vec4<f32>(215f, 129f, 487f, -1109f)), vec3<i32>(-972i, 37149i, -1i), Struct_1(vec4<f32>(-1683f, -503f, -147f, -1207f))), Struct_2(Struct_1(vec4<f32>(282f, -327f, -2433f, 3039f)), vec3<i32>(827i, i32(-2147483648), 16398i), Struct_1(vec4<f32>(687f, -2217f, -1000f, -567f))));

var<private> global3: vec4<bool>;

var<private> global4: array<i32, 27> = array<i32, 27>(1i, 14831i, -5454i, 17892i, -1i, -31307i, -31673i, 27293i, 0i, -11372i, 0i, -1i, -1i, -44315i, -1i, -71002i, -14716i, -38093i, i32(-2147483648), 24969i, i32(-2147483648), -43583i, -1i, i32(-2147483648), -7876i, 3989i, 49803i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> f32 {
    global1 = array<Struct_3, 3>();
    global4 = array<i32, 27>();
    global3 = !(!(!vec4<bool>(any(vec2<bool>(false, arg_3.x)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(43082u, 4u)], true)), true, !arg_3.x)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.c.a))));
    var var_1 = _wgslsmith_f_op_f32(307f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1398f))) * 697f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-531f, arg_0.c.a.x), arg_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) * -641f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec2<f32> {
    global1 = array<Struct_3, 3>();
    let var_0 = global3.xwz;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 255f, 1016f, arg_0.x)))))), reverseBits(arg_1.yyx), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)) - _wgslsmith_f_op_f32(floor(-606f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(957f, arg_0.x, -1127f, -1622f)), vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(0u, 27u)], global4[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(vec4<f32>(137f, -1000f, arg_0.x, -776f))), ~u_input.b, ~vec4<u32>(13081u, 0u, u_input.b, 0u), global3.xx)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - 2340f))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * -1254f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1531f, -617f) + var_1.c.a.xxz) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(arg_0.x * var_2)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(arg_0.zxy, _wgslsmith_f_op_vec3_f32(-var_1.c.a.wzy))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.a.x, var_1.c.a.x, var_2))), all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(40709u, 4u)], false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 4u)], global3.x, false), var_0.x))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f + -388f)), 1172f);
}

fn func_2(arg_0: f32) -> vec4<f32> {
    let var_0 = vec3<u32>(~1u, u_input.a >> (54504u % 32u), 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(arg_0, -1158f, -583f, 171f)), vec3<i32>(0i, -52894i, -2147483647i), Struct_1(vec4<f32>(119f, 1931f, arg_0, arg_0))), 65361u, abs(vec4<u32>(1u, 57717u, u_input.a, 0u)), global3.zz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -164f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(161f, 1143f)))), _wgslsmith_f_op_f32(-1458f * _wgslsmith_f_op_f32(trunc(-744f)))), vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 27u)], -9919i | select(global4[_wgslsmith_index_u32(u_input.a & 1u, 27u)], abs(global4[_wgslsmith_index_u32(1u, 27u)]), global0[_wgslsmith_index_u32(var_0.x, 4u)]), ~global4[_wgslsmith_index_u32(u_input.b, 27u)], ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 33482u), vec2<u32>(60757u, u_input.a), var_0.xy)), 27u)])));
    global0 = array<bool, 4>();
    var var_2 = abs(0i);
    global4 = array<i32, 27>();
    return vec4<f32>(_wgslsmith_div_f32(var_1.x, 1315f), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_1.x) * 269f))), var_1.x, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(abs(417f))))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_u32(u_input.a, ~(~u_input.b));
    global1 = array<Struct_3, 3>();
    var var_1 = global1[_wgslsmith_index_u32(select(reverseBits(min(0u, countOneBits(0u))), u_input.a, true), 3u)];
    var var_2 = max(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 4294967295u, var_0), vec3<u32>(var_0, 0u, var_1.a) >> (vec3<u32>(1u, 4294967295u, u_input.b) % vec3<u32>(32u))), ~vec3<u32>(var_0, var_1.a, 0u)), ~(~vec3<u32>(~2701u, 25952u >> (u_input.a % 32u), _wgslsmith_mult_u32(u_input.b, var_1.a))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1283f, 1000f, 1000f, -534f) * vec4<f32>(-746f, 602f, 215f, 943f)))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(583f + 1000f))), var_3.a.x, all(vec3<bool>(any(vec3<bool>(false, true, false)), !global3.x, !global0[_wgslsmith_index_u32(4294967295u, 4u)])) | true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(56235u, 0u) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(35043u, u_input.b, u_input.b)) % 32u), 27u)], abs(global4[_wgslsmith_index_u32(u_input.b, 27u)]));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 211f)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -395f) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1165f * 393f)))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -338f), -727f)))).x));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -444f))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_1.a), vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 27u)], -8797i, -2147483647i), Struct_1(vec4<f32>(120f, -244f, var_1.a.x, var_1.a.x))), ~u_input.a, vec4<u32>(18297u, u_input.a, 1u, u_input.a) >> (vec4<u32>(13041u, 4294967295u, u_input.a, u_input.b) % vec4<u32>(32u)), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)]))), var_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1000f, var_1.a.x, var_1.a.x))))))));
    var_1 = Struct_1(var_1.a);
    var var_2 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), 19530u), ~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-vec2<i32>(global4[_wgslsmith_index_u32(var_2.a, 27u)], global4[_wgslsmith_index_u32(var_2.a, 27u)]), vec2<i32>(global4[_wgslsmith_index_u32(48797u, 27u)], global4[_wgslsmith_index_u32(var_2.a, 27u)])) | vec2<i32>(global4[_wgslsmith_index_u32(~u_input.a >> (1u % 32u), 27u)], ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53833u, u_input.b, var_2.a), vec3<u32>(var_2.a, u_input.b, 0u)), 27u)]));
}

