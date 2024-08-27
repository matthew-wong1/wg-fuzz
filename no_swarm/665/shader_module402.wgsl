struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1332f);
    var var_1 = Struct_5(vec2<bool>(false, true), Struct_3(countOneBits(vec4<u32>(arg_1.a, 23614u, arg_1.a, 13387u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(21259u, 6579u, arg_1.a, arg_1.a), vec4<u32>(1u, u_input.a, u_input.a, arg_1.a), vec4<u32>(6916u, u_input.b, 4834u, 9222u)) % vec4<u32>(32u))), ~(-vec4<i32>(1i, 1i, 1i, 1i)), reverseBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 11674u, 4294967295u), 1u, 4294967295u))), arg_1.b.a.a.x);
    let var_2 = var_1.b.a.xz;
    global1 = array<Struct_2, 25>();
    var var_3 = any(arg_1.b.a.a.xz);
    return 653f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> bool {
    global1 = array<Struct_2, 25>();
    global1 = array<Struct_2, 25>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-261f, 340f), Struct_4(3564u, global1[_wgslsmith_index_u32(10104u, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)]))))) + _wgslsmith_f_op_f32(sign(-195f))), -618f);
    global0 = array<bool, 19>();
    var var_1 = ~(arg_1 >> (select(_wgslsmith_mult_u32(~arg_1, arg_1), abs(90027u), !global0[_wgslsmith_index_u32(~32294u, 19u)]) % 32u));
    return global0[_wgslsmith_index_u32(min(arg_1, ~(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(15101u, 63378u, u_input.c)), min(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(0u, 7680u, arg_0))) >> (1u % 32u))), 19u)];
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>) -> Struct_5 {
    global1 = array<Struct_2, 25>();
    return Struct_5(!select(!(!arg_0.a.b), vec2<bool>(select(global0[_wgslsmith_index_u32(u_input.a, 19u)], true, true), arg_1), true), Struct_3(reverseBits(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)) | vec4<u32>(u_input.b, 32211u, _wgslsmith_mod_u32(u_input.b, u_input.a), abs(u_input.a)), vec4<i32>(_wgslsmith_div_i32(-3403i, -42951i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(59207i, -2447i, 0i, -34369i), vec4<i32>(1i, 1i, 1i, 1i)), min(~(-2147483647i), 15941i)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 21628u), vec3<u32>(u_input.b, 0u, u_input.b)))), true);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> Struct_4 {
    global0 = array<bool, 19>();
    let var_0 = Struct_2(Struct_1(vec4<bool>(arg_0.a.x, !all(vec2<bool>(global0[_wgslsmith_index_u32(65615u, 19u)], global0[_wgslsmith_index_u32(arg_1.a.x, 19u)])), true, func_2(18303u, arg_1.a.x, vec3<bool>(arg_0.a.x, false, global0[_wgslsmith_index_u32(2080u, 19u)]), arg_0.a)), arg_0.a));
    var var_1 = arg_1.c.x;
    var_1 = 108801u;
    return Struct_4(4294967295u, Struct_2(var_0.a), Struct_2(Struct_1(!select(var_0.a.a, vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 19u)], false), global0[_wgslsmith_index_u32(58485u, 19u)]), select(vec2<bool>(true, true), vec2<bool>(false, true), 23524u == u_input.c))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = -1i;
    var var_1 = func_5(func_4(global1[_wgslsmith_index_u32(7674u, 25u)], any(vec3<bool>(true, func_2(41785u, 14599u, vec3<bool>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(6317u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(6391u, 19u)])), func_2(arg_0.x, 0u, vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(40340u, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)]), vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-737f, -751f, -475f, _wgslsmith_f_op_f32(trunc(661f))))), func_4(Struct_2(Struct_1(vec4<bool>(true, true, false, false), func_4(global1[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)], vec4<f32>(-711f, -1000f, -391f, -2107f)).a)), any(!select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(74974u, 19u)], true), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1077f, _wgslsmith_f_op_f32(-873f * 856f), -597f, _wgslsmith_f_op_f32(f32(-1f) * -2341f)) + vec4<f32>(_wgslsmith_f_op_f32(abs(351f)), _wgslsmith_f_op_f32(ceil(1000f)), 1f, _wgslsmith_f_op_f32(-1334f + -986f)))).b);
    var_1 = Struct_4(min(u_input.c, (var_1.a & 4294967295u) ^ var_1.a) << (var_1.a % 32u), Struct_2(func_5(func_4(global1[_wgslsmith_index_u32(4294967295u, 25u)], func_4(global1[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(19582u, 19u)], vec4<f32>(-852f, 1285f, -1102f, -1162f)).a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, 120f, -164f, 118f) * vec4<f32>(253f, -364f, -897f, -903f))), Struct_3(func_4(Struct_2(var_1.b.a), var_1.b.a.b.x, vec4<f32>(1729f, -1000f, 462f, 180f)).b.a, vec4<i32>(-1i, 2147483647i, 0i, -21675i) >> (vec4<u32>(u_input.c, 3210u, 4469u, 0u) % vec4<u32>(32u)), abs(arg_0))).b.a), Struct_2(func_5(func_4(global1[_wgslsmith_index_u32(~4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 19u)] && global0[_wgslsmith_index_u32(62820u, 19u)], _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1034f, -1000f, 725f), vec4<f32>(228f, -1647f, 381f, -131f)))), func_4(func_5(Struct_5(var_1.b.a.a.zw, Struct_3(vec4<u32>(arg_0.x, arg_0.x, u_input.b, 78780u), vec4<i32>(44360i, -10112i, 2147483647i, 1i), arg_0), false), Struct_3(vec4<u32>(116324u, 37171u, 4294967295u, arg_0.x), vec4<i32>(-2326i, -2147483647i, -4594i, -1i), arg_0)).b, true, _wgslsmith_div_vec4_f32(vec4<f32>(1859f, 1996f, 1000f, -179f), vec4<f32>(-241f, 932f, -1109f, -140f))).b).b.a));
    var var_2 = (false | (all(var_1.c.a.b) & global0[_wgslsmith_index_u32(var_1.a, 19u)])) && (~13274u >= (firstLeadingBit(func_4(Struct_2(var_1.b.a), var_1.c.a.a.x, vec4<f32>(658f, 257f, 523f, -428f)).b.a.x) ^ u_input.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-994f, 265f)))))));
    return var_1.b.a.a;
}

fn func_6(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = -282f;
    let var_1 = Struct_2(func_5(Struct_5(func_4(func_5(Struct_5(arg_2.xy, Struct_3(vec4<u32>(14036u, u_input.c, 0u, u_input.b), vec4<i32>(2147483647i, -1i, 1i, -31321i), vec3<u32>(u_input.c, u_input.b, u_input.c)), true), Struct_3(vec4<u32>(15401u, 0u, u_input.b, 4294967295u), vec4<i32>(-24301i, 0i, 1i, -11031i), vec3<u32>(u_input.b, 1u, u_input.b))).b, all(arg_2.ywz), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1078f, arg_1, arg_1, 2991f)))).a, func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.c), 25u)], any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 19u)], arg_2.x)), vec4<f32>(-1778f, arg_1, arg_1, arg_1)).b, any(arg_2)), Struct_3(countOneBits(max(vec4<u32>(u_input.a, u_input.a, 82077u, 24450u), vec4<u32>(u_input.b, u_input.b, 0u, 30232u))), max(min(vec4<i32>(0i, 64571i, 0i, 1i), vec4<i32>(2147483647i, 62663i, 21035i, 39844i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-14482i, 47262i, -2147483647i, -1i), vec4<i32>(-25600i, 42605i, 19607i, -18293i))), ~vec3<u32>(61910u, u_input.c, 70442u))).c.a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f - 559f)))) * _wgslsmith_f_op_f32(-arg_1));
    let var_2 = Struct_2(func_5(func_4(var_1, all(arg_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1637f, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, 216f, 1580f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -526f, 2243f, 1145f)))), Struct_3(firstLeadingBit(~vec4<u32>(15225u, u_input.c, 0u, u_input.a)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, -47922i), vec4<i32>(-30352i, -2147483647i, 43959i, 1i))), ~(~vec3<u32>(4294967295u, 1u, 16173u)))).c.a);
    let var_3 = Struct_5(var_1.a.b, Struct_3(_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(u_input.c, 0u, u_input.b, u_input.c)), min(~vec4<u32>(u_input.c, 32143u, u_input.a, u_input.c), abs(vec4<u32>(24547u, u_input.b, 7378u, u_input.b)))), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-54441i, -3707i, 0i, 0i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -33534i, -1i), vec4<i32>(21560i, -1i, -2147483647i, -1i), vec4<i32>(-36171i, 0i, 36498i, -13308i))), select(vec3<u32>(u_input.c, u_input.c, ~33318u), vec3<u32>(112246u, ~u_input.c, 46138u), true)), false);
    return !(!vec4<bool>(var_1.a.a.x, !any(var_2.a.a.zxw), any(vec2<bool>(false, var_1.a.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(108943u, var_3.b.a.x), 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<bool>(true, true), _wgslsmith_f_op_f32(-1271f * 1436f), func_1(vec3<u32>(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(75114u, 71200u, 71396u, 63973u), vec4<u32>(47754u, 4294967295u, 4294967295u, 1u)), u_input.c)));
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -1081f, 316f, vec2<i32>(2147483647i, firstLeadingBit(select(min(2147483647i, 2147483647i), 0i, func_1(vec3<u32>(u_input.c, 0u, u_input.b)).x))), _wgslsmith_f_op_f32(1647f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(363f - -477f))), _wgslsmith_f_op_f32(1393f + -645f))));
}

