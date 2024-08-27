struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-113f, -1409f, 394f, -1841f, -1297f, -1432f, 728f, -1000f, 155f, 645f, 1170f, 1978f, -972f, -1269f, -741f, 914f, -1967f, -595f, -179f);

var<private> global1: array<bool, 15>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 0u, 90836u);

var<private> global3: array<bool, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = var_1;
    var_2 = var_0;
    var_2 = Struct_1(!(var_0.c < ~_wgslsmith_dot_vec2_u32(global2.yy, global2.zz)), 862f, firstTrailingBit(~1u), 416i);
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~reverseBits(abs(vec4<u32>(0u, 4294967295u, var_0.c, 35633u))), max(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global2.x, arg_1.c, global2.x, 4294967295u)), firstTrailingBit(vec4<u32>(102796u, var_0.c, var_1.c, 2515u))), ~select(vec4<u32>(4294967295u, 9340u, var_1.c, arg_1.c), vec4<u32>(var_0.c, 4294967295u, var_0.c, 12843u), true))), vec4<u32>(min(var_0.c, _wgslsmith_mult_u32(~var_2.c, _wgslsmith_mod_u32(18422u, var_1.c))), firstLeadingBit(_wgslsmith_clamp_u32(countOneBits(1u), 84131u, var_0.c)), arg_1.c, ~global2.x)), 12u)];
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = any(select(vec4<bool>(all(vec3<bool>(true, true, true)), arg_1.d == -71839i, false, func_3(-31793i >> (arg_1.c % 32u), arg_1, _wgslsmith_mult_vec2_i32(vec2<i32>(-2430i, arg_0), vec2<i32>(22194i, -1i)))), select(!(!vec4<bool>(arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 15u)], false, arg_1.a)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(global2.x, 15u)], arg_1.a), !vec4<bool>(arg_1.a, global1[_wgslsmith_index_u32(arg_1.c, 15u)], arg_1.a, false)), select(vec4<bool>(global3[_wgslsmith_index_u32(global2.x, 12u)], global3[_wgslsmith_index_u32(7489u, 12u)], global3[_wgslsmith_index_u32(arg_1.c, 12u)], true), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(arg_1.c, 12u)], global3[_wgslsmith_index_u32(arg_1.c, 12u)]), global1[_wgslsmith_index_u32(0u, 15u)] && false)), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.c, 15u)], all(vec3<bool>(false, global1[_wgslsmith_index_u32(global2.x, 15u)], global1[_wgslsmith_index_u32(arg_1.c, 15u)])), _wgslsmith_mult_i32(1i, 1i) >= u_input.a, global1[_wgslsmith_index_u32(arg_1.c, 15u)])));
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-850f, arg_1.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - -916f)))), ~_wgslsmith_clamp_u32(arg_1.c, arg_1.c, 33564u), ~38360i);
    let var_2 = ~(-2147483647i);
    global0 = array<f32, 19>();
    let var_3 = 165f;
    return max(_wgslsmith_sub_u32(firstTrailingBit(firstTrailingBit(8572u)) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 63554u), global2.x) % 32u), 1u << (global2.x % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36579u, arg_1.c) & ~vec2<u32>(var_1.c, 21723u), global2.yz), var_1.c));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global3 = array<bool, 12>();
    global2 = _wgslsmith_sub_vec3_u32(arg_0.zxz, arg_0.xzw);
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-(~arg_2.d), i32(-1i) * -arg_2.d) << (~(vec2<u32>(35562u, 0u) & global2.zx) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -10151i, select(u_input.a, arg_2.d, arg_3.x), select(arg_2.d, -200i, false)), vec4<i32>(arg_2.d, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.d, -1i), vec3<i32>(0i, 5457i, arg_2.d)), 1i, -24361i)), _wgslsmith_dot_vec2_i32(min(-vec2<i32>(u_input.a, arg_2.d), vec2<i32>(arg_2.d, u_input.a)), _wgslsmith_add_vec2_i32(-vec2<i32>(arg_2.d, arg_2.d), select(vec2<i32>(-12966i, u_input.a), vec2<i32>(arg_2.d, arg_2.d), false)))));
    global0 = array<f32, 19>();
    let var_1 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(f32(-1f) * -405f)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 19u)])))), -1341f)), -253f, ~(~(~arg_0.x)), -arg_2.d | -33294i);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_4(~vec4<u32>(1u, global2.x, 1u, max(1u, global2.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, global2.x) | ~vec4<u32>(1u, 0u, 1920u, global2.x), vec4<u32>(abs(global2.x), func_2(u_input.a, Struct_1(false, global0[_wgslsmith_index_u32(global2.x, 19u)], 4294967295u, -1i)), 1u, 0u)) % vec4<u32>(32u)), _wgslsmith_add_u32(~_wgslsmith_sub_u32(1u, firstTrailingBit(13480u)), ~(~global2.x)), Struct_1(!(!(4294967295u <= global2.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(48499u, abs(64071u & global2.x)), 19u)], 1u, firstTrailingBit(-2147483647i)), vec3<bool>(true, false & ((global0[_wgslsmith_index_u32(4294967295u, 19u)] > global0[_wgslsmith_index_u32(global2.x, 19u)]) || (global2.x >= global2.x)), !((true & global1[_wgslsmith_index_u32(global2.x, 15u)]) || false)));
    let var_1 = func_4(_wgslsmith_div_vec4_u32(~(vec4<u32>(4294967295u, 31427u, 4294967295u, 4294967295u) & min(vec4<u32>(global2.x, 41414u, var_0.c, var_0.c), vec4<u32>(global2.x, 77708u, var_0.c, 0u))), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 4294967295u, 1u, var_0.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(17966u, var_0.c, var_0.c, global2.x), vec4<u32>(77143u, 30201u, global2.x, 44604u)))), ~(abs(firstTrailingBit(1u)) >> (abs(max(global2.x, 4294967295u)) % 32u)), func_4(~reverseBits(vec4<u32>(0u, var_0.c, 1u, global2.x) & vec4<u32>(var_0.c, 1u, 78185u, 37589u)), abs(func_4(reverseBits(vec4<u32>(global2.x, 4294967295u, global2.x, var_0.c)), global2.x, func_4(vec4<u32>(37204u, 43535u, global2.x, 27963u), 4294967295u, Struct_1(true, 883f, global2.x, u_input.a), vec3<bool>(global3[_wgslsmith_index_u32(var_0.c, 12u)], global1[_wgslsmith_index_u32(global2.x, 15u)], true)), select(vec3<bool>(true, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(var_0.c, 12u)]), false)).c), Struct_1(func_4(min(vec4<u32>(var_0.c, 1476u, 4294967295u, global2.x), vec4<u32>(1u, global2.x, 24794u, var_0.c)), countOneBits(62886u), func_4(vec4<u32>(var_0.c, 14155u, 1u, var_0.c), 26298u, Struct_1(global1[_wgslsmith_index_u32(global2.x, 15u)], global0[_wgslsmith_index_u32(5480u, 19u)], global2.x, 73150i), vec3<bool>(var_0.a, global1[_wgslsmith_index_u32(22626u, 15u)], true)), vec3<bool>(false, global3[_wgslsmith_index_u32(global2.x, 12u)], global3[_wgslsmith_index_u32(var_0.c, 12u)])).a, global0[_wgslsmith_index_u32(31398u, 19u)], 4294967295u, 53517i), vec3<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 15u)], false), vec2<bool>(true, global3[_wgslsmith_index_u32(var_0.c, 12u)]), vec2<bool>(false, true))), global3[_wgslsmith_index_u32(var_0.c, 12u)], !var_0.a)), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_0.c, 15u)]));
    var var_2 = Struct_1(true, 1232f, firstTrailingBit(8768u) >> (~var_0.c % 32u), 2633i);
    var_2 = func_4(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.c, global2.x, 0u, global2.x) >> (vec4<u32>(54391u, var_2.c, 33594u, global2.x) % vec4<u32>(32u))), vec4<u32>((var_2.c & var_2.c) ^ (var_0.c << (var_0.c % 32u)), ~(~global2.x), ~var_1.c, ~1u)), abs(global2.x), func_4(~(~firstLeadingBit(vec4<u32>(4294967295u, 1u, var_2.c, var_1.c))), abs(~var_1.c), func_4(min(abs(vec4<u32>(var_2.c, 16827u, var_0.c, var_1.c)), ~vec4<u32>(var_0.c, 42369u, 4294967295u, var_0.c)), _wgslsmith_dot_vec2_u32(global2.zx, vec2<u32>(48912u, global2.x) | global2.zz), Struct_1(!var_2.a, var_0.b, firstLeadingBit(77530u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(var_1.d, -21197i))), select(select(vec3<bool>(var_1.a, false, global1[_wgslsmith_index_u32(global2.x, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1.c, 15u)], var_1.a, global3[_wgslsmith_index_u32(global2.x, 12u)]), true), !vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(5185u, 15u)]), var_0.b < global0[_wgslsmith_index_u32(51169u, 19u)])), vec3<bool>(all(vec3<bool>(var_2.a, false, false)), true, func_4(abs(vec4<u32>(global2.x, 4294967295u, 1u, var_1.c)), select(var_1.c, 4294967295u, false), var_1, !vec3<bool>(false, global3[_wgslsmith_index_u32(71472u, 12u)], var_0.a)).a)), !vec3<bool>((var_0.c << (var_1.c % 32u)) == ~77038u, all(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.c, 15u)], var_2.a)), _wgslsmith_clamp_u32(1u, 0u, var_1.c) > ~var_2.c));
    var_0 = var_1;
    return StorageBuffer(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1618f, var_2.b, -1807f, -1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-639f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, 456f, false))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(vec4<u32>(var_1.c, 0u, 39564u, 1u), 46376u, Struct_1(var_2.a, 786f, global2.x, var_2.d), vec3<bool>(global1[_wgslsmith_index_u32(40562u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], var_1.a)).c, 0u), 19u)], _wgslsmith_f_op_f32(981f - _wgslsmith_f_op_f32(f32(-1f) * -646f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 12>();
    global3 = array<bool, 12>();
    let x = u_input.a;
    s_output = func_1();
}

