struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec2<u32>(49424u, 27461u)), vec4<f32>(296f, 782f, 419f, -2098f), false), Struct_2(Struct_1(vec2<u32>(59475u, 4294967295u)), vec4<f32>(-813f, 1595f, -479f, -2581f), false), Struct_2(Struct_1(vec2<u32>(33150u, 50281u)), vec4<f32>(1198f, -2453f, -150f, -585f), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec4<f32>(340f, -1000f, -1668f, -133f), true), Struct_2(Struct_1(vec2<u32>(1u, 1u)), vec4<f32>(883f, -312f, 1046f, -1100f), true), Struct_2(Struct_1(vec2<u32>(80680u, 1787u)), vec4<f32>(2057f, -1289f, 636f, -338f), true), Struct_2(Struct_1(vec2<u32>(666u, 51451u)), vec4<f32>(465f, -425f, 1113f, -702f), true), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u)), vec4<f32>(1607f, 2163f, -488f, 2006f), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec4<f32>(482f, -603f, 2135f, -1329f), true), Struct_2(Struct_1(vec2<u32>(0u, 1u)), vec4<f32>(-193f, 1941f, 296f, 121f), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 8523u)), vec4<f32>(1131f, 231f, 377f, 491f), false), Struct_2(Struct_1(vec2<u32>(10159u, 25096u)), vec4<f32>(352f, -572f, 1402f, -1000f), false), Struct_2(Struct_1(vec2<u32>(0u, 6055u)), vec4<f32>(-1464f, 235f, 110f, 1000f), false), Struct_2(Struct_1(vec2<u32>(37207u, 0u)), vec4<f32>(-106f, -188f, 945f, -518f), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 14909u)), vec4<f32>(-654f, -781f, -823f, 479f), true), Struct_2(Struct_1(vec2<u32>(5540u, 4294967295u)), vec4<f32>(-1856f, -104f, 346f, 1132f), true), Struct_2(Struct_1(vec2<u32>(1u, 1754u)), vec4<f32>(538f, 1337f, 1329f, -638f), true), Struct_2(Struct_1(vec2<u32>(1u, 3253u)), vec4<f32>(1062f, -2560f, -347f, -1112f), true), Struct_2(Struct_1(vec2<u32>(3814u, 11074u)), vec4<f32>(850f, 1846f, 639f, -538f), false), Struct_2(Struct_1(vec2<u32>(77109u, 4294967295u)), vec4<f32>(-167f, -1000f, 233f, -586f), true), Struct_2(Struct_1(vec2<u32>(0u, 1u)), vec4<f32>(-288f, 883f, 1000f, -187f), true), Struct_2(Struct_1(vec2<u32>(40023u, 0u)), vec4<f32>(-1258f, -339f, -848f, -2076f), false), Struct_2(Struct_1(vec2<u32>(23321u, 55302u)), vec4<f32>(-354f, 645f, -1000f, 128f), false), Struct_2(Struct_1(vec2<u32>(69972u, 0u)), vec4<f32>(192f, -907f, -1287f, 1000f), true), Struct_2(Struct_1(vec2<u32>(1u, 27030u)), vec4<f32>(-912f, 474f, -1111f, 1216f), true), Struct_2(Struct_1(vec2<u32>(0u, 64589u)), vec4<f32>(-796f, -619f, -1307f, -131f), true), Struct_2(Struct_1(vec2<u32>(66785u, 1u)), vec4<f32>(-1508f, 824f, -1134f, 132f), true), Struct_2(Struct_1(vec2<u32>(0u, 45012u)), vec4<f32>(655f, 1460f, 3088f, 237f), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 80215u)), vec4<f32>(654f, 629f, -569f, 1234f), true));

var<private> global1: array<bool, 24>;

var<private> global2: f32 = 276f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> vec2<f32> {
    global2 = arg_2;
    global1 = array<bool, 24>();
    global2 = _wgslsmith_f_op_f32(round(arg_1));
    var var_0 = u_input.e.x;
    let var_1 = select(select(select(select(!vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(85819u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(arg_0.x, arg_0.x, true, false)), vec4<bool>(false, all(arg_0), false & arg_0.x, arg_0.x), !select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], true, true, global1[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(true, true, false, arg_0.x))), select(vec4<bool>(!arg_0.x, true, arg_0.x, !global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false, global1[_wgslsmith_index_u32(u_input.d, 24u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 24u)], arg_0.x, false), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 24u)], true, global1[_wgslsmith_index_u32(4294967295u, 24u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(71338u, 24u)], global1[_wgslsmith_index_u32(u_input.e.x, 24u)], true, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 24u)], global1[_wgslsmith_index_u32(1526u, 24u)], global1[_wgslsmith_index_u32(25100u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), arg_0.x), any(vec3<bool>(true, false, true))), vec4<bool>(true, any(arg_0), global1[_wgslsmith_index_u32(u_input.d, 24u)] | arg_0.x, true)), any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(57769u, 24u)], true, global1[_wgslsmith_index_u32(11007u, 24u)]), true), select(vec4<bool>(arg_0.x, arg_0.x, true, global1[_wgslsmith_index_u32(u_input.c, 24u)]), vec4<bool>(arg_0.x, false, true, global1[_wgslsmith_index_u32(u_input.d, 24u)]), global1[_wgslsmith_index_u32(4301u, 24u)])))), select(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(25783u, 24u)], arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, false, global1[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.e.x, 24u)], arg_0.x, false)), vec4<bool>(arg_0.x, true, arg_0.x, false), true), !(!select(vec4<bool>(arg_0.x, true, arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 24u)]), vec4<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(9499u, 24u)], false), arg_0.x)), vec4<bool>(all(select(vec2<bool>(true, arg_0.x), vec2<bool>(true, true), true)), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c, u_input.e.x), 24u)], select(u_input.e.x < u_input.c, true, true), !global1[_wgslsmith_index_u32(max(4294967295u, u_input.e.x), 24u)])), global1[_wgslsmith_index_u32(countOneBits(~(~(u_input.d >> (u_input.b % 32u)))), 24u)]);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(trunc(-1862f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, arg_2)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_2) + vec2<f32>(arg_2, arg_2))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b, 24u)];
    var var_1 = _wgslsmith_mult_u32(~arg_0.x, _wgslsmith_clamp_u32(124440u, 4294967295u & max(u_input.c, 4294967295u), arg_0.x)) >> (_wgslsmith_div_u32(arg_1, u_input.d >> (1u % 32u)) % 32u);
    var var_2 = -1627f;
    var_2 = -301f;
    global1 = array<bool, 24>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(func_3(!vec3<bool>(global1[_wgslsmith_index_u32(min(u_input.d, 21626u), 24u)], any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(272f)))), _wgslsmith_f_op_f32(trunc(1266f)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), select(vec3<i32>(-22628i, 1i, -2147483647i), vec3<i32>(-1i, 0i, -48353i), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 24u)], true))) & (~vec3<i32>(-28080i, u_input.a, 25130i) & vec3<i32>(28757i, u_input.a, u_input.a)))), Struct_1(firstLeadingBit(~(vec2<u32>(u_input.c, u_input.d) ^ u_input.e.xz))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = !all(!vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false, global1[_wgslsmith_index_u32(3900u, 24u)], false)), global1[_wgslsmith_index_u32(reverseBits(0u), 24u)], !global1[_wgslsmith_index_u32(938u, 24u)]));
    var var_1 = arg_0;
    var var_2 = func_2(arg_2, 1u);
    var var_3 = Struct_2(func_2(vec2<u32>(arg_1.x, ~4294967295u), ~15471u).b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-611f, _wgslsmith_f_op_f32(arg_0 * -1805f), _wgslsmith_f_op_f32(1285f + var_2.a.x), arg_0))))), (~(~arg_1.x) << ((var_2.b.a.x >> (select(8402u, arg_2.x, var_0) % 32u)) % 32u)) == ~firstLeadingBit(25715u));
    let var_4 = func_2(var_2.b.a, _wgslsmith_dot_vec2_u32(u_input.e.zx, ~var_2.b.a));
    return _wgslsmith_mod_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.a), -vec3<i32>(u_input.a, u_input.a, 53929i))), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(reverseBits(u_input.a), _wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(max(-10425i, 161i), _wgslsmith_mod_i32(u_input.a, -20031i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a) >> (u_input.e.xx % vec2<u32>(32u))))), (_wgslsmith_div_i32(func_1(188f, u_input.e.yzx, vec2<u32>(u_input.c, 0u)), 5705i) & -u_input.a) | -abs(u_input.a), firstTrailingBit(abs(u_input.a)));
    let var_1 = func_2(u_input.e.ww, u_input.d);
    global1 = array<bool, 24>();
    var var_2 = u_input.a;
    var var_3 = u_input.e & vec4<u32>(abs(~1u), u_input.e.x, _wgslsmith_sub_u32(firstTrailingBit(var_1.b.a.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_1.b.a.x), vec3<u32>(u_input.d, 4294967295u, 4294967295u)), _wgslsmith_clamp_u32(u_input.d >> (var_1.b.a.x % 32u), 4294967295u, countOneBits(u_input.c))), var_1.b.a.x | var_1.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, 1000f, 830f), vec3<f32>(-889f, var_1.a.x, -997f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1403f, 804f, var_1.a.x))))), true)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.a.x, _wgslsmith_add_u32(51049u, u_input.b), countOneBits(u_input.d), ~0u) & u_input.e, select(firstTrailingBit(~vec4<u32>(var_1.b.a.x, 41734u, var_1.b.a.x, 5638u)), ~(~vec4<u32>(var_1.b.a.x, u_input.e.x, var_3.x, 1659u)), select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(73402u, 24u)], global1[_wgslsmith_index_u32(39463u, 24u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(41674u, 24u)], true, global1[_wgslsmith_index_u32(var_3.x, 24u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(4610u, 24u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(var_3.x, 24u)], global1[_wgslsmith_index_u32(44069u, 24u)], global1[_wgslsmith_index_u32(46719u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)])), global1[_wgslsmith_index_u32(~var_1.b.a.x, 24u)]))), _wgslsmith_div_u32(30483u, 1u), vec2<u32>(~(~func_2(u_input.e.xy, u_input.e.x).b.a.x), _wgslsmith_div_u32(abs(~35375u), 4294967295u)), u_input.e.yyy ^ max(u_input.e.ywz, vec3<u32>(~4294967295u, var_1.b.a.x << (var_3.x % 32u), 1u)));
}

