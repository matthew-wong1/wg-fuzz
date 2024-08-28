struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec4<u32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<bool, 31>;

var<private> global2: array<i32, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    global1 = array<bool, 31>();
    global0 = array<Struct_3, 31>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, 1000f, -527f, -1000f)), global1[_wgslsmith_index_u32(select(4294967295u, abs(12561u), true), 31u)]))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_clamp_u32(36194u, 65479u, 18888u), ~1u, 0u, 1u)), vec4<u32>(1u, reverseBits(48713u), 0u, 1u) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52847u, 0u, 0u), vec3<u32>(0u, 9976u, 64596u)), firstTrailingBit(0u), ~34645u, _wgslsmith_dot_vec4_u32(vec4<u32>(27843u, 24143u, 1u, 0u), vec4<u32>(6663u, 1u, 4294967295u, 66753u))) % vec4<u32>(32u))));
    var var_1 = u_input.c.xz;
    var var_2 = -(-_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.c.x, var_1.x, u_input.d.x, -149i)), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_1.x) >> (var_0.b % vec4<u32>(32u))) ^ countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], -52923i, -2588i, u_input.a) << (var_0.b % vec4<u32>(32u)), countOneBits(vec4<i32>(35877i, 27962i, -7883i, var_1.x)))));
    return !(!select(!select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 31u)], global1[_wgslsmith_index_u32(35989u, 31u)], global1[_wgslsmith_index_u32(96263u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 31u)], false, true), false), !select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(23117u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(17257u, 31u)], global1[_wgslsmith_index_u32(var_0.b.x, 31u)], global1[_wgslsmith_index_u32(var_0.b.x, 31u)]), true), vec3<bool>(true, true, true)));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec4<u32> {
    global2 = array<i32, 4>();
    let var_0 = Struct_2(Struct_1(false), Struct_1(global1[_wgslsmith_index_u32(~(~8979u), 31u)]), global1[_wgslsmith_index_u32(~arg_1, 31u)], func_3(), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(25269u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, 0u, 4294967295u, arg_1))), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_1, 49109u, arg_1), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 8635u, 17456u, 0u), vec4<u32>(arg_1, arg_1, 54278u, arg_1)))), vec4<u32>(~arg_1, firstTrailingBit(arg_1), arg_1, reverseBits(4294967295u)) << (countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(87596u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 70706u, 1u), vec4<u32>(4428u, 10183u, 8244u, 1u))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(61589u, arg_1, 6698u, 18185u), vec4<u32>(0u, arg_1, arg_1, arg_1)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 41656u), vec2<u32>(arg_1, arg_1)), arg_1 & arg_1, arg_1)));
    let var_1 = var_0.e.x;
    let var_2 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -215f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(365f, -1527f, -145f, var_2) - vec4<f32>(-1950f, var_2, -1225f, 346f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, 1000f, 618f, -130f), vec4<f32>(var_2, -750f, -314f, 1494f), global1[_wgslsmith_index_u32(var_0.e.x, 31u)])))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(346f, 655f, var_2, var_2) * vec4<f32>(var_2, 335f, -1006f, -1163f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2) + vec4<f32>(-100f, -369f, -1208f, 915f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, var_2, var_2, -778f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, var_2, var_2, 1096f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-630f, 1000f, var_2, -1949f) - vec4<f32>(var_2, var_2, var_2, 1389f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -739f, 496f, 1285f) - vec4<f32>(var_2, 446f, var_2, 1135f))))), select(select(vec4<bool>(!global1[_wgslsmith_index_u32(9739u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], !var_0.d.x, !global1[_wgslsmith_index_u32(arg_1, 31u)]), select(select(vec4<bool>(true, var_0.c, global1[_wgslsmith_index_u32(var_0.e.x, 31u)], global1[_wgslsmith_index_u32(36599u, 31u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)], true, true), vec4<bool>(false, var_0.a.a, global1[_wgslsmith_index_u32(1u, 31u)], true)), vec4<bool>(global1[_wgslsmith_index_u32(105088u, 31u)], false, false, true), !vec4<bool>(false, var_0.b.a, false, global1[_wgslsmith_index_u32(6903u, 31u)])), vec4<bool>(true, true, false, 46953u <= var_0.e.x)), vec4<bool>(var_0.d.x, !var_0.d.x || true, any(vec3<bool>(false, var_0.b.a, true)), all(select(var_0.d, var_0.d, var_0.d))), !(!any(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(var_1, 31u)]))))));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(0u, ~var_0.e.x), _wgslsmith_dot_vec3_u32(~var_0.e.wxz, vec3<u32>(select(var_0.e.x, 9182u, false), _wgslsmith_mult_u32(1u, var_1), _wgslsmith_div_u32(var_1, var_1))), max(_wgslsmith_sub_u32(_wgslsmith_add_u32(13625u, var_0.e.x), 4294967295u), var_0.e.x)), (_wgslsmith_div_vec4_u32(var_0.e, ~vec4<u32>(var_0.e.x, var_1, var_1, var_0.e.x)) ^ ~vec4<u32>(4294967295u, 4294967295u, arg_1, 15260u)) | vec4<u32>((var_1 << (arg_1 % 32u)) & (var_1 ^ 39207u), 1u, ~28217u, var_1), abs(var_0.e));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> vec2<bool> {
    var var_0 = min(10681u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x), arg_0.x >> (1u % 32u), ~arg_0.x), func_2(-1i, arg_0.x))));
    var var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(~abs(arg_0.x), 31u)] & any(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], false))), Struct_1(false), false, !(!vec3<bool>(global1[_wgslsmith_index_u32(~69167u, 31u)], all(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 31u)], false)), global1[_wgslsmith_index_u32(~arg_0.x, 31u)])), vec4<u32>(arg_0.x, ~_wgslsmith_clamp_u32(arg_0.x & 1u, arg_0.x, 4294967295u ^ arg_0.x), ~1u, reverseBits(1173u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1102f))))));
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1668f - -1455f), -1210f), -1959f, -977f, _wgslsmith_f_op_f32(f32(-1f) * -1469f))), ~select(vec4<u32>(30348u, 4294967295u, 22480u, 59229u) | _wgslsmith_add_vec4_u32(var_1.e, vec4<u32>(arg_0.x, 16435u, 31727u, arg_0.x)), vec4<u32>(57221u, var_1.e.x, ~62657u, _wgslsmith_add_u32(70517u, 36139u)), vec4<bool>(true, true, true, true)));
    let var_4 = select(vec2<bool>(!all(!var_1.d.zz), !((u_input.d.x < -2147483647i) == false)), vec2<bool>(func_3().x, !select(any(vec2<bool>(var_1.d.x, var_1.a.a)), true, global1[_wgslsmith_index_u32(648u, 31u)])), var_1.d.zz);
    return vec2<bool>(false, !var_1.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = select(!select(select(arg_0, arg_0, 2147483647i != global2[_wgslsmith_index_u32(70134u, 4u)]), !func_3().zx, vec2<bool>(arg_1.x, arg_0.x)), vec2<bool>(false && (global1[_wgslsmith_index_u32(1u, 31u)] || (arg_0.x & arg_1.x)), min(1u, 4294967295u) < _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(6883u, 4294967295u, 3382u, 109641u)), countOneBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)))), global1[_wgslsmith_index_u32(4294967295u, 31u)]);
    global0 = array<Struct_3, 31>();
    global2 = array<i32, 4>();
    global1 = array<bool, 31>();
    var var_1 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 723f, -282f, -365f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(544f, -786f, -788f, -188f), vec4<f32>(796f, -278f, -834f, -1428f), vec4<bool>(false, arg_2, false, global1[_wgslsmith_index_u32(38088u, 31u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 352f, -2022f, 757f))))), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 44104u), vec2<u32>(0u, 11086u)), 7043u, 74698u, abs(81148u)), ~vec4<u32>(1u, abs(36770u), ~1u, 7581u)));
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_4(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(28923u, 31u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(60400u, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], false)), all(vec2<bool>(global1[_wgslsmith_index_u32(65104u, 31u)], global1[_wgslsmith_index_u32(96040u, 31u)]))), func_1(~vec2<u32>(0u, 1u), global2[_wgslsmith_index_u32(~34728u, 4u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 59996i, 12381i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, global2[_wgslsmith_index_u32(1u, 4u)]))), vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], true, false)), all(vec4<bool>(true, global1[_wgslsmith_index_u32(88908u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], false)))), func_3(), !all(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(33446u, 31u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(60217u, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(92008u, 31u)], false)))));
    global2 = array<i32, 4>();
    global0 = array<Struct_3, 31>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 499f, 1348f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1067f, 543f, 142f) - vec3<f32>(-826f, 522f, -252f))))))) * vec3<f32>(390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(min(-1054f, -1233f))) + -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(668f)) - _wgslsmith_f_op_f32(f32(-1f) * -247f)), 1049f)));
    let var_2 = firstTrailingBit(~(-countOneBits(1i >> (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + var_1.x))))), ~firstLeadingBit(~(~vec2<u32>(22486u, 55970u))), abs(~_wgslsmith_sub_u32(~1u, 1u)));
}

