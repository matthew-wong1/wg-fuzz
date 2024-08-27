struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 34260u), 0i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(17753u, 26026u, 5657u), 45641i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(45589u, 0u, 4294967295u), -13641i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(74001u, 1u, 84322u), -24934i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 1u, 4294967295u), 0i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 0u, 1u), 16911i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 0u, 31179u), 1i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(88368u, 1u, 51901u), 2147483647i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 47100u), 1i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(36363u, 12818u, 0u), 2147483647i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 66106u, 0u), 0i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 1u, 4294967295u), -26288i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(48262u, 45939u, 1u), -33316i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u), 16820i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 1u, 42556u), 0i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(34826u, 46282u, 1u), -71510i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(109791u, 27877u, 1u), 0i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(93668u, 31598u, 1u), -42169i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u), 1i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), -54630i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 14768u, 57827u), 1i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(90317u, 1u, 1u), 1i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 62803u), 2147483647i)), vec2<bool>(false, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 0u, 3185u), 47360i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(9507u, 0u, 17155u), 1i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(5556u, 52594u, 1u), 22743i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(104852u, 1u, 66688u), -49751i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(64536u, 1u, 4294967295u), 1i)), vec2<bool>(false, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(61697u, 35065u, 1u), -3007i)), vec2<bool>(true, false))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u), 2147483647i)), vec2<bool>(true, true))), Struct_4(Struct_3(Struct_2(Struct_1(vec3<u32>(6068u, 0u, 30790u), -1i)), vec2<bool>(true, false))));

var<private> global1: array<bool, 5>;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(32227u, 1u, 35137u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 12632u, 1u), vec3<u32>(32066u, 54828u, 69626u), vec3<u32>(4294967295u, 39250u, 1u), vec3<u32>(72268u, 0u, 45151u), vec3<u32>(4294967295u, 73425u, 65085u), vec3<u32>(4294967295u, 4294967295u, 16896u), vec3<u32>(16323u, 1u, 35203u), vec3<u32>(4294967295u, 4294967295u, 50362u), vec3<u32>(35127u, 1u, 1u), vec3<u32>(0u, 13102u, 61678u));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(79408u, 73584u, 17369u), 0i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = select(vec2<bool>(any(!(!vec4<bool>(global3.x, false, global1[_wgslsmith_index_u32(1u, 5u)], false))), !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b & 4294967295u, u_input.b | u_input.b), 5u)]), select(select(vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(global4.a.x, 5u)], false)), global1[_wgslsmith_index_u32(~u_input.b, 5u)]), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), !(!global3.x)), vec2<bool>((5723i <= u_input.a) || any(vec2<bool>(global3.x, false)), any(select(vec3<bool>(global1[_wgslsmith_index_u32(global4.a.x, 5u)], false, global3.x), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), global1[_wgslsmith_index_u32(u_input.b, 5u)]))), !vec2<bool>(false, all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 5u)], global3.x)))), vec2<bool>(global3.x, !global3.x));
    global3 = !vec2<bool>(var_0.x | !(global1[_wgslsmith_index_u32(global4.a.x, 5u)] && true), true);
    var var_1 = Struct_2(Struct_1(global2[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.b, 12u)], global4.a) >> (40485u % 32u)) << (select(global4.a.x & 36087u, global4.a.x << (u_input.b % 32u), all(vec2<bool>(true, var_0.x))) % 32u), 12u)], global4.b));
    let var_2 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), countOneBits(vec2<i32>(global4.b, u_input.a))));
    var var_3 = global4.a;
    return all(select(vec3<bool>(!any(var_0), _wgslsmith_mult_i32(u_input.a, 1i) >= max(var_2.x, var_2.x), global3.x), vec3<bool>(true, true, true), !vec3<bool>(true, any(vec3<bool>(false, global3.x, var_0.x)), true)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_5 {
    global3 = arg_3.yz;
    global0 = array<Struct_4, 31>();
    var var_0 = Struct_1(abs(~(vec3<u32>(u_input.b, 0u, 0u) & (vec3<u32>(global4.a.x, u_input.b, 4294967295u) << (global4.a % vec3<u32>(32u))))), (select(_wgslsmith_sub_i32(2147483647i, 0i), _wgslsmith_mult_i32(arg_1.x, 1i), func_3()) & -1i) << (u_input.b % 32u));
    global4 = Struct_1(vec3<u32>(u_input.b, 1u, u_input.b), select(2147483647i, min(_wgslsmith_mult_i32(-11497i & arg_1.x, _wgslsmith_mod_i32(global4.b, arg_1.x)), ~(-1i)), all(!arg_3)));
    let var_1 = true;
    return Struct_5(~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, u_input.b, 65719u, 0u), vec4<u32>(1u, global4.a.x, var_0.a.x, var_0.a.x))), ~vec4<u32>(u_input.b, u_input.b, 25990u, var_0.a.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(353f))) + 637f), arg_0, select(vec2<bool>(false, false), !(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], arg_1)), !(!select(vec2<bool>(global3.x, global1[_wgslsmith_index_u32(global4.a.x, 5u)]), vec2<bool>(arg_1, true), true))), !(!(!select(vec3<bool>(true, arg_1, false), vec3<bool>(global1[_wgslsmith_index_u32(19416u, 5u)], false, false), false))));
    let var_1 = u_input.b & ~u_input.b;
    let var_2 = 1443f;
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    return select(vec3<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(arg_1, false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(32403u, 5u)], global1[_wgslsmith_index_u32(30145u, 5u)])), all(vec4<bool>(global3.x, false, global1[_wgslsmith_index_u32(var_1, 5u)], true)))), !arg_1), vec3<bool>(true, true, 1i >= _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1130i, u_input.a), _wgslsmith_add_i32(-41195i, global4.b))), select(vec3<bool>(arg_1, var_1 >= 4294967295u, all(vec3<bool>(global1[_wgslsmith_index_u32(var_1, 5u)], false, false))), !select(!vec3<bool>(false, global1[_wgslsmith_index_u32(26496u, 5u)], global1[_wgslsmith_index_u32(30787u, 5u)]), select(vec3<bool>(false, arg_1, global3.x), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.a, 5u)], arg_1), vec3<bool>(true, global3.x, arg_1)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1088f + _wgslsmith_f_op_f32(-731f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-680f)), _wgslsmith_f_op_f32(f32(-1f) * -527f)))), 1000f);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~_wgslsmith_mod_u32(~global4.a.x, ~global4.a.x)), _wgslsmith_clamp_vec2_u32(select(max(global4.a.zz, global4.a.zy) << (global4.a.yz % vec2<u32>(32u)), ~max(vec2<u32>(u_input.b, 80874u), vec2<u32>(59730u, u_input.b)), vec2<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(global4.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)])))), vec2<u32>(firstTrailingBit(global4.a.x) ^ ~0u, ~(~1951u)), global4.a.xx));
    var var_2 = select(!select(vec3<bool>(true, true, true), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 5u)], global3.x)), !(!vec3<bool>(global3.x, global1[_wgslsmith_index_u32(var_1, 5u)], global1[_wgslsmith_index_u32(24165u, 5u)]))), select(func_1(vec3<i32>(-global4.b, _wgslsmith_add_i32(-1i, global4.b), ~u_input.a), global3.x & any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], true, global1[_wgslsmith_index_u32(var_1, 5u)], global1[_wgslsmith_index_u32(3527u, 5u)]))), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(countOneBits(max(_wgslsmith_clamp_u32(global4.a.x, 4294967295u, var_1), var_1)), 5u)]), vec3<bool>(func_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a, -37856i, -1i), vec3<i32>(u_input.a, global4.b, -44116i), abs(vec3<i32>(5868i, u_input.a, 1i))), !(global3.x & global1[_wgslsmith_index_u32(72239u, 5u)])).x, true == func_3(), global4.a.x >= ~var_1));
    let var_3 = Struct_2(Struct_1(global4.a, ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, -18611i), vec2<i32>(global4.b, u_input.a)), reverseBits(vec2<i32>(-32983i, u_input.a)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -1272f) * _wgslsmith_f_op_f32(select(-328f, _wgslsmith_div_f32(-1089f, 206f), true && global1[_wgslsmith_index_u32(0u, 5u)])))) <= -587f;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(u_input.a ^ u_input.a, 2147483647i, -2147483647i, countOneBits(var_3.a.b << (1u % 32u))), vec4<i32>(_wgslsmith_add_i32(1i, min(global4.b, var_3.a.b)), var_3.a.b, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(9270i, -22208i), vec2<i32>(var_3.a.b, 1i))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(global4.b, 2147483647i, var_3.a.b), vec3<i32>(1i, -11868i, var_3.a.b)), reverseBits(vec3<i32>(-2147483647i, 7738i, u_input.a))))));
}

