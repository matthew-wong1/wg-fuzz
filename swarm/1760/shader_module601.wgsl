struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, false, true, true, true, false, true, false, true, true, true, false, true, false, false, false, true, false, true, false, true, true, false, false, true, true, true, false, false, true, true);

var<private> global1: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(173f, -535f, -403f, 232f), vec4<f32>(-1049f, 298f, -259f, 1000f), vec4<f32>(-1000f, -348f, 244f, 421f), vec4<f32>(-1000f, -208f, -348f, -1757f), vec4<f32>(200f, -135f, -507f, 1476f), vec4<f32>(-1096f, -1574f, 867f, -427f), vec4<f32>(1224f, -1227f, -592f, -1004f), vec4<f32>(667f, -1000f, 1794f, -212f), vec4<f32>(906f, -1019f, 286f, 1050f), vec4<f32>(412f, -162f, -752f, -309f), vec4<f32>(462f, -1620f, -1986f, 285f), vec4<f32>(-170f, 854f, -345f, 210f), vec4<f32>(-385f, 198f, 524f, 631f), vec4<f32>(-228f, -159f, -157f, 833f), vec4<f32>(1663f, -1519f, 399f, 323f), vec4<f32>(451f, -1907f, -1898f, 563f), vec4<f32>(-483f, 1000f, 272f, 640f), vec4<f32>(1180f, 214f, -457f, 916f));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<i32, 15>;

var<private> global4: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 4294967295u, 4371u, 1u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 31981u, 0u, 16011u), vec4<u32>(35547u, 1u, 64136u, 1u), vec4<u32>(24353u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(4294967295u, 0u, 64457u, 24918u), vec4<u32>(1u, 33287u, 72409u, 26483u), vec4<u32>(1u, 0u, 0u, 13561u), vec4<u32>(1u, 1u, 27446u, 2109u), vec4<u32>(52531u, 29444u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(30013u, 1u, 0u, 0u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(20215u, 49026u, 20762u, 17123u), vec4<u32>(4294967295u, 5976u, 0u, 24745u), vec4<u32>(56091u, 26290u, 0u, 3931u), vec4<u32>(81622u, 4294967295u, 4294967295u, 34572u), vec4<u32>(0u, 4294967295u, 80904u, 27393u), vec4<u32>(53429u, 1u, 0u, 40201u), vec4<u32>(56577u, 0u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(130736u, 1u, 78054u, 0u), vec4<u32>(16659u, 4294967295u, 1370u, 40849u), vec4<u32>(49962u, 1u, 0u, 13799u), vec4<u32>(1u, 5622u, 1u, 120759u), vec4<u32>(4294967295u, 0u, 55177u, 22568u), vec4<u32>(0u, 1u, 42504u, 8268u), vec4<u32>(58514u, 0u, 16357u, 53691u), vec4<u32>(40194u, 46509u, 14370u, 0u), vec4<u32>(4294967295u, 11696u, 45239u, 4294967295u), vec4<u32>(1u, 46333u, 0u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_1.xy * vec2<f32>(_wgslsmith_f_op_f32(1381f * 907f), arg_0.b));
    var var_1 = Struct_1(~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.a.x, arg_2.x, u_input.a.x, arg_0.a.x), ~vec4<i32>(arg_0.a.x, global3[_wgslsmith_index_u32(u_input.b, 15u)], arg_2.x, -13155i)), vec2<i32>(-1i) * -vec2<i32>(arg_2.x, -27630i), vec2<u32>(~_wgslsmith_sub_u32(~0u, 154508u), ~reverseBits(37299u) | arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -416f))))));
    var var_2 = Struct_1(vec4<i32>(firstTrailingBit(arg_0.a.x), _wgslsmith_div_i32(arg_0.a.x, 1i), 0i, _wgslsmith_dot_vec3_i32(~(-u_input.a), -u_input.a)), select(abs(arg_0.a), arg_2, select(select(!vec2<bool>(global2.x, global2.x), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global2.x), select(vec2<bool>(true, global2.x), vec2<bool>(false, global2.x), false)), select(select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, true), global0[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(false, true), var_1.c.x < u_input.b), vec2<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], true))))), ~max(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x, 0u), arg_3), ~(~vec2<u32>(4294967295u, 1u))), -315f);
    var var_3 = Struct_3(_wgslsmith_mult_vec2_i32(~(u_input.a.xy | vec2<i32>(var_2.a.x, 10347i)), vec2<i32>(-(var_2.b.x ^ arg_2.x), _wgslsmith_mod_i32(u_input.a.x, -global3[_wgslsmith_index_u32(48885u, 15u)]))), -1471f);
    global3 = array<i32, 15>();
    return !select(~(~u_input.b) >= var_2.c.x, all(select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global2.x, true), vec3<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.b, 31u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 31u)], global2.x, global0[_wgslsmith_index_u32(var_2.c.x, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(11769u, 31u)], false), false))), global0[_wgslsmith_index_u32(~firstLeadingBit(~29259u), 31u)]);
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.a.yy;
    let var_1 = select(~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 76794u), vec3<u32>(u_input.b, 49670u, 57078u)), _wgslsmith_add_vec3_u32(vec3<u32>(31118u, 35747u, 79499u), vec3<u32>(4294967295u, u_input.b, u_input.b)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, u_input.b, 75598u) << (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 8778u, u_input.b)) % vec3<u32>(32u)), reverseBits(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.b, u_input.b, 34393u), vec3<u32>(u_input.b, 66601u, u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 18443u)), vec3<u32>(14512u, u_input.b, u_input.b)))), !(!global0[_wgslsmith_index_u32(reverseBits(u_input.b), 31u)]));
    let var_2 = Struct_1(vec4<i32>(var_0.x, var_0.x, 28633i, -2147483647i), vec2<i32>(_wgslsmith_mod_i32(~28408i, ~23260i) & -global3[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 15u)], select(69314i, ~abs(-65905i), !(u_input.b != u_input.b))), var_1.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(609f))));
    var var_3 = vec4<bool>(func_3(Struct_3(-(u_input.a.xz & var_2.a.wx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1630f - var_2.d) + _wgslsmith_f_op_f32(min(var_2.d, -1757f)))), vec3<f32>(-1000f, -659f, -497f), ~(~select(u_input.a.zz, u_input.a.xx, vec2<bool>(true, global2.x))), min(_wgslsmith_div_vec2_u32(abs(var_2.c), vec2<u32>(u_input.b, var_2.c.x)), firstTrailingBit(select(var_1.yy, vec2<u32>(5234u, 20894u), true)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.yz, var_2.c), 31u)], global2.x, global2.x & !(!select(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(77418u, 31u)], true)));
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~var_2.c.x, 33598u), 15u)] & var_2.b.x;
    return _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(~u_input.a, countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, 16504i), _wgslsmith_sub_vec3_i32(var_2.a.yxz, vec3<i32>(var_0.x, var_2.a.x, var_0.x)))), -u_input.a));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 15u)], 16036i, 2147483647i, global3[_wgslsmith_index_u32(144717u, 15u)]), -vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 15u)], 17358i, -31647i, global3[_wgslsmith_index_u32(u_input.b, 15u)])), reverseBits(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x, ~(-20649i)), _wgslsmith_add_vec3_i32(func_2(), select(u_input.a, vec3<i32>(global3[_wgslsmith_index_u32(1u, 15u)], u_input.a.x, 8599i), vec3<bool>(false, global2.x, global2.x)))), firstTrailingBit(18723i)), _wgslsmith_mod_vec2_i32(u_input.a.xx << (vec2<u32>(~26744u, u_input.b) % vec2<u32>(32u)), u_input.a.yy), vec2<u32>(~(~(u_input.b << (u_input.b % 32u))), ~u_input.b & (~4294967295u >> (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f) * _wgslsmith_f_op_f32(step(-936f, -270f))) - -1000f)));
    var var_1 = Struct_2(var_0, -54944i, vec2<f32>(1268f, var_0.d), vec3<i32>(-33343i, -(~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.b, 15u)], 0i)), u_input.a.x), var_0);
    let var_2 = abs(global4[_wgslsmith_index_u32(~(~45258u), 32u)]);
    let var_3 = -57926i;
    global0 = array<bool, 31>();
    return Struct_1(vec4<i32>(var_1.a.b.x, 1i, 1i, 54149i), vec2<i32>(~(-global3[_wgslsmith_index_u32(u_input.b, 15u)]) << (abs(var_1.e.c.x) % 32u), global3[_wgslsmith_index_u32(4294967295u, 15u)] >> (reverseBits(0u) % 32u)), firstTrailingBit(var_1.a.c >> (~var_1.a.c % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_1.a.d)), var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(567f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d - -468f), _wgslsmith_div_f32(var_0.d, var_0.d))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1092f)) - _wgslsmith_f_op_f32(var_0.d * 1732f)))), !global2.x)));
}

