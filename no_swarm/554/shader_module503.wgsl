struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<u32>(801u, 0u, 25048u, 1u)), Struct_2(vec4<u32>(4294967295u, 0u, 0u, 62401u)), Struct_2(vec4<u32>(7682u, 1u, 18521u, 4294967295u)), Struct_2(vec4<u32>(1u, 4294967295u, 44083u, 60961u)), Struct_2(vec4<u32>(49432u, 13843u, 21965u, 18281u)), Struct_2(vec4<u32>(50674u, 9215u, 4294967295u, 52057u)), Struct_2(vec4<u32>(44488u, 17720u, 48199u, 37649u)), Struct_2(vec4<u32>(0u, 20173u, 4294967295u, 33911u)), Struct_2(vec4<u32>(154495u, 7514u, 83495u, 0u)), Struct_2(vec4<u32>(15994u, 1u, 1u, 4294967295u)), Struct_2(vec4<u32>(1u, 17637u, 4294967295u, 26876u)), Struct_2(vec4<u32>(0u, 28770u, 29968u, 12934u)), Struct_2(vec4<u32>(0u, 0u, 1u, 63065u)), Struct_2(vec4<u32>(1u, 17403u, 107969u, 1u)), Struct_2(vec4<u32>(4294967295u, 11219u, 0u, 4294967295u)), Struct_2(vec4<u32>(1u, 1u, 58849u, 4294967295u)), Struct_2(vec4<u32>(0u, 31514u, 0u, 0u)), Struct_2(vec4<u32>(36795u, 41024u, 0u, 14394u)), Struct_2(vec4<u32>(77244u, 22746u, 0u, 25271u)), Struct_2(vec4<u32>(0u, 0u, 49653u, 4294967295u)), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_2(vec4<u32>(26177u, 1u, 20134u, 26142u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 21744u)), Struct_2(vec4<u32>(0u, 9730u, 1u, 1u)), Struct_2(vec4<u32>(0u, 59459u, 0u, 54631u)), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 0u)), Struct_2(vec4<u32>(0u, 32022u, 33658u, 33577u)), Struct_2(vec4<u32>(86057u, 4294967295u, 6192u, 38222u)));

var<private> global1: f32 = -395f;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1u, vec2<f32>(-2785f, 1531f), -16521i, vec2<bool>(false, false), 10877i), Struct_1(1u, vec2<f32>(-1926f, -216f), 77746i, vec2<bool>(false, true), 1i));

var<private> global3: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_1 = vec2<u32>(0u, ~firstTrailingBit(var_0.a));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), -1408f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-399f * arg_0.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1090f, arg_1) * 361f))), arg_0.b.x, arg_1);
    let var_3 = reverseBits(_wgslsmith_mult_u32(var_0.a, ~select(~9508u, var_1.x, false)));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(select(arg_0.b.x, arg_0.b.x, arg_0.d.x)))), !(u_input.a.x <= 2147483647i))))));
    return ~(~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(13783u, 18391u, 48577u, 1u), vec4<u32>(1137u, 15196u, 0u, var_3), vec4<bool>(true, false, false, false)), vec4<u32>(countOneBits(0u), 1u, 0u, var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<bool>) -> f32 {
    let var_0 = countOneBits(-(-u_input.a.x | u_input.a.x));
    var var_1 = select(-vec4<i32>(firstLeadingBit(-2147483647i), ~2147483647i, ~(~2147483647i), firstTrailingBit(u_input.a.x)), ~_wgslsmith_add_vec4_i32(~(vec4<i32>(u_input.a.x, 1i, 61601i, -13978i) << (arg_0.a % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 21713i, u_input.a.x, u_input.a.x), vec4<i32>(40412i, -41615i, 2147483647i, 1i), vec4<i32>(-17668i, -32993i, u_input.a.x, -5246i)), select(vec4<i32>(u_input.a.x, var_0, -9483i, u_input.a.x), vec4<i32>(var_0, u_input.a.x, -5328i, u_input.a.x), arg_3.x))), arg_3);
    var var_2 = firstTrailingBit(vec2<u32>(func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2, arg_2, abs(arg_2)), 2u)], arg_1.x), 1457u));
    let var_3 = 6271u;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1371f, arg_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 1000f))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-709f)), 1257f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.x, -1000f)) - 1984f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~1u, 28u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -695f, -370f, 1218f))), ~func_3(Struct_1(86230u, vec2<f32>(-314f, -426f), -1i, vec2<bool>(true, true), arg_1.x), 874f), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))))), _wgslsmith_div_f32(191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-297f)) * -898f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-769f + 708f), 690f, 1441f, _wgslsmith_f_op_f32(1056f - 2155f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, 1581f, _wgslsmith_f_op_f32(step(-764f, var_0.x))))))));
    var var_2 = _wgslsmith_add_vec3_u32(~firstTrailingBit(reverseBits(vec3<u32>(60219u, 15118u, 24084u))), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(0u, 68104u, 0u))) | _wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(21401u, 0u, 4294967295u)), vec3<u32>(1u, 1u, 1u))));
    var_2 = firstTrailingBit(~select(reverseBits(vec3<u32>(var_2.x, 1u, 5340u) & vec3<u32>(0u, var_2.x, 8486u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u)), ~vec3<u32>(29764u, var_2.x, 18577u)), vec3<bool>(true, true, true)));
    global0 = array<Struct_2, 28>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, -786f, var_0.x != var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(996f))), var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(143f, 2262f, -1578f, 502f), vec4<f32>(-1550f, 108f, var_0.x, 213f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, var_1.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, -1743f, 429f)))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)))) - vec4<f32>(121f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1145f) * _wgslsmith_f_op_f32(var_1.x + var_1.x)) + -1116f)));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> i32 {
    global1 = -145f;
    var var_0 = 2147483647i;
    global2 = array<Struct_1, 2>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(706f))), 1113f);
    let var_2 = vec4<i32>(u_input.a.x << (arg_3.a.x % 32u), firstLeadingBit(-27673i), -2147483647i, -36973i);
    return 1i;
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global1 = -608f;
    var var_0 = any(vec3<bool>(true, true, true)) & select(!any(vec3<bool>(true, true, true)), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, false, true, false))), true);
    let var_1 = vec3<i32>(1i, abs(reverseBits(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 38842i, u_input.a.x), vec3<i32>(-69878i, u_input.a.x, -22788i)), _wgslsmith_f_op_vec4_f32(func_2(u_input.a, vec2<i32>(-22720i, u_input.a.x))), -1130f, global0[_wgslsmith_index_u32(0u, 28u)]))), -64638i);
    var var_2 = vec3<bool>(true, any(vec2<bool>(true, max(49138u, arg_0.a.x) == _wgslsmith_dot_vec2_u32(arg_0.a.zy, arg_0.a.xz))), true);
    let var_3 = vec3<bool>(false, !var_2.x, true);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(step(-467f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -471f), -1230f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-834f, -1000f, -557f) - vec3<f32>(353f, -1304f, -1613f))) - vec3<f32>(-1325f, _wgslsmith_f_op_f32(ceil(500f)), _wgslsmith_f_op_f32(-292f - 270f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u));
    let var_1 = 4294967295u;
    global0 = array<Struct_2, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-386f, 1523f, -1151f, 455f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -290f, -2414f, -158f), vec4<f32>(-1057f, -1676f, 196f, 1704f)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-434f, -1220f, 451f, -1207f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(724f, -859f, -110f, -116f) * vec4<f32>(-1000f, 293f, 1774f, -448f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-753f, -187f, -1843f, -1701f))))));
    let x = u_input.a;
    s_output = func_1(Struct_2(~max(select(vec4<u32>(70256u, var_0.x, var_1, var_0.x), vec4<u32>(4294967295u, 30109u, var_1, var_0.x), vec4<bool>(false, false, true, false)), vec4<u32>(var_0.x, var_0.x, 1u, 1u) ^ vec4<u32>(1u, var_1, 4294967295u, 51771u))));
}

