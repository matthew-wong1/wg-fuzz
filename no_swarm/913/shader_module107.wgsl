struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(13444u, 903f, -1206f, vec4<i32>(i32(-2147483648), 2375i, 0i, 7472i)), Struct_1(4294967295u, -526f, 1218f, vec4<i32>(-1i, i32(-2147483648), 2147483647i, -43358i)), Struct_1(4294967295u, -1088f, -1413f, vec4<i32>(57066i, i32(-2147483648), 67782i, 0i)), Struct_1(1u, 1975f, -1985f, vec4<i32>(57968i, -1i, -1893i, -1i)), Struct_1(78093u, 1612f, 1854f, vec4<i32>(-7167i, 1i, 37352i, i32(-2147483648))), Struct_1(1u, -1350f, -584f, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 1i)), Struct_1(0u, -1158f, -1014f, vec4<i32>(70454i, i32(-2147483648), -56334i, 15837i)), Struct_1(0u, -1000f, 1278f, vec4<i32>(-15191i, i32(-2147483648), -20585i, -61292i)), Struct_1(4294967295u, -2321f, 1530f, vec4<i32>(1i, -33611i, -11590i, 13713i)), Struct_1(87204u, 1638f, 389f, vec4<i32>(37755i, -16346i, 2147483647i, 0i)), Struct_1(1u, 805f, 233f, vec4<i32>(2740i, 2147483647i, 29559i, -4992i)), Struct_1(23302u, 215f, 1000f, vec4<i32>(0i, 2147483647i, 0i, 2147483647i)), Struct_1(35884u, 1525f, 981f, vec4<i32>(i32(-2147483648), -8436i, -1i, 1i)), Struct_1(0u, -142f, -550f, vec4<i32>(1i, i32(-2147483648), -24734i, 21423i)), Struct_1(37923u, -1000f, -1918f, vec4<i32>(-1i, -39250i, -38626i, 1i)), Struct_1(0u, 418f, 873f, vec4<i32>(0i, 1i, -9458i, 56842i)), Struct_1(66717u, 2196f, -671f, vec4<i32>(-9145i, -15890i, -2052i, -1i)), Struct_1(4514u, 1802f, 258f, vec4<i32>(-35481i, 0i, i32(-2147483648), -35824i)), Struct_1(4294967295u, -222f, -831f, vec4<i32>(-34555i, 2147483647i, i32(-2147483648), 1i)), Struct_1(3889u, 1517f, -708f, vec4<i32>(-1i, -1i, -15219i, i32(-2147483648))), Struct_1(4967u, -1320f, 2355f, vec4<i32>(i32(-2147483648), 1i, 1i, -50883i)), Struct_1(0u, 100f, 703f, vec4<i32>(2147483647i, 2147483647i, -64742i, 1i)), Struct_1(0u, -242f, 475f, vec4<i32>(-1i, 13756i, 1i, -14691i)), Struct_1(1u, -229f, 975f, vec4<i32>(i32(-2147483648), i32(-2147483648), 6556i, i32(-2147483648))), Struct_1(0u, 610f, -764f, vec4<i32>(0i, 34174i, 1i, 13207i)));

var<private> global1: array<u32, 28>;

var<private> global2: array<f32, 3> = array<f32, 3>(1354f, 880f, -1264f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> i32 {
    return _wgslsmith_add_i32(u_input.b.x, ~arg_0);
}

fn func_2(arg_0: u32) -> Struct_4 {
    global2 = array<f32, 3>();
    var var_0 = ~(u_input.b.x >> (arg_0 % 32u));
    var var_1 = Struct_2(u_input.b.x, -_wgslsmith_div_i32(func_3(-2331i, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_0, 3u)])), global1[_wgslsmith_index_u32(arg_0, 28u)] << (4294967295u % 32u)), -10277i), select(vec3<bool>(-7768i != (u_input.a | -1i), true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), true));
    let var_2 = vec3<bool>(var_1.c.x, var_1.c.x, _wgslsmith_div_u32(firstLeadingBit(arg_0 << (1530u % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(64493u, 1u))) < 42534u);
    let var_3 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4686u, 3u)]);
    return Struct_4(reverseBits(~vec3<u32>(_wgslsmith_mult_u32(4294967295u, arg_0), 1u << (arg_0 % 32u), 43223u)), Struct_1(abs(abs(~global1[_wgslsmith_index_u32(6442u, 28u)])), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(54168u, 3u)])) + _wgslsmith_f_op_f32(min(-544f, var_3)))), -_wgslsmith_mult_vec4_i32(min(vec4<i32>(-42186i, 1i, var_1.a, -2147483647i), vec4<i32>(var_1.a, 2147483647i, var_1.b, var_1.a)), vec4<i32>(-2147483647i, -1i, u_input.b.x, 39896i) >> (vec4<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)))), vec2<u32>(_wgslsmith_div_u32(~19944u, ~22363u) >> (firstLeadingBit(~global1[_wgslsmith_index_u32(1u, 28u)]) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, 28308u), firstTrailingBit(vec3<u32>(arg_0, 62134u, global1[_wgslsmith_index_u32(4294967295u, 28u)]))) | ~0u));
}

fn func_1() -> f32 {
    let var_0 = func_2(0u);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.a, 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 73477u, 61676u), vec4<u32>(4294967295u, 0u, 0u, var_0.b.a)), max(~vec4<u32>(global1[_wgslsmith_index_u32(42159u, 28u)], 1u, 19225u, var_0.c.x), abs(vec4<u32>(global1[_wgslsmith_index_u32(50945u, 28u)], 4294967295u, var_0.a.x, 1u)))), global1[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)], var_0.c.x << (4294967295u % 32u)), 25u)];
    let var_2 = vec4<f32>(-1346f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(268f + 1343f))), var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-175f + var_0.b.c), _wgslsmith_div_f32(var_0.b.b, -839f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-759f)) - var_1.c))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_2)) - var_2);
    var var_4 = select(select(vec4<bool>(select(false, true, true), any(vec2<bool>(false, true)), false, any(vec2<bool>(true, true))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !vec4<bool>(all(vec4<bool>(false, false, true, false)), false, var_0.b.d.x <= -2147483647i, any(vec3<bool>(false, true, true)))), select(vec4<bool>(true, max(var_1.d.x, -7922i) == 28848i, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), !(true || any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_1.a, 3u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 28>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)] >> (global1[_wgslsmith_index_u32(29500u, 28u)] % 32u), 28u)], ~global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], 0u), 4294967295u >> (global1[_wgslsmith_index_u32(4294967295u, 28u)] % 32u))), 30418u) | (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 0u)) << (~countOneBits(abs(67929u)) % 32u)), 28u)];
    global1 = array<u32, 28>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1380f);
    var var_2 = 25319u;
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1156f, var_1, -960f, var_1))), vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41775u, 28u)], 3u)], 1783f)), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(32517u, 3u)])), _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1847f, 1048f, -232f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(627f, 662f, -1324f, -583f), vec4<f32>(1846f, 2129f, var_1, -647f), vec4<bool>(false, true, false, true))), any(vec3<bool>(true, false, false))))))), ~firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 21417u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37717u, 28u)], 28u)], 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), vec2<u32>(global1[_wgslsmith_index_u32(46821u, 28u)], 8719u)), ~77805u)));
}

