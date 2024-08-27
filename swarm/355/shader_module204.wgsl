struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = any(!(!select(global1.yx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global1.x), vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], false)))) && ((!(!global1.x) == !(!global0[_wgslsmith_index_u32(arg_0.a, 23u)])) & (arg_1 < ~(-1i)));
    let var_1 = ~_wgslsmith_mod_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(arg_1, -2147483647i, -1i, 13583i))), ~vec4<i32>(-arg_1, -2147483647i, 1i, 40785i));
    global0 = array<bool, 23>();
    global1 = select(!(!(!select(vec3<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 23u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)]), global1.x))), vec3<bool>(any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(42938u, 23u)], var_0, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(2266u, 23u)]), var_0), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], false, false), select(vec3<bool>(var_0, false, global1.x), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], false), var_0))), var_0, var_0), var_0);
    var var_2 = false;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(u_input.a, 0u) << (u_input.c % 32u), min(~u_input.b.x, 1u), ~1u), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 38757u, arg_0.a) | vec3<u32>(u_input.c, 11426u, u_input.c), vec3<u32>(~1u, u_input.a, u_input.c)), vec3<u32>(~(~4294967295u), 0u, u_input.a)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<bool> {
    return !vec3<bool>(!(!(!global1.x)), true, global0[_wgslsmith_index_u32(~arg_2.a.a, 23u)] && false);
}

fn func_2() -> vec2<bool> {
    var var_0 = select(!(!vec3<bool>(global1.x, !global0[_wgslsmith_index_u32(1u, 23u)], true)), vec3<bool>(!(-2147483647i > select(-2147483647i, -34199i, true)), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], global1.x, global0[_wgslsmith_index_u32(u_input.c, 23u)]), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), global0[_wgslsmith_index_u32(~1u, 23u)])), !global1.x), func_3(-23887i, ~(~(~vec3<u32>(1u, 63466u, 1u))), Struct_2(Struct_1(u_input.a, -238f)), firstLeadingBit(u_input.b)));
    var var_1 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -180f), _wgslsmith_f_op_f32(round(-306f)))), 1283f))));
    var var_2 = var_1.a;
    let var_3 = max(countOneBits(vec4<i32>(max(-1i, -2000i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2778i, -2147483647i, -18486i), vec3<i32>(-11239i, 40057i, 5043i)) ^ -29302i, abs(abs(-7552i)), -1i)), firstTrailingBit(~(vec4<i32>(-1i, -68019i, 5078i, 2147483647i) >> (vec4<u32>(0u, 7601u, var_2.a, 1u) % vec4<u32>(32u)))) ^ -_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 4039i, 1i, -1051i), -vec4<i32>(-1i, 36486i, -1314i, 1i)));
    var_0 = func_3(-42118i, ~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(29341u, 20865u, var_2.a)), abs(vec3<u32>(4294967295u, u_input.c, 1u))) | ~vec3<u32>(_wgslsmith_add_u32(1u, u_input.a), var_2.a, abs(17377u)), Struct_2(Struct_1(max(abs(var_1.a.a), u_input.a), _wgslsmith_f_op_f32(-var_2.b))), min(u_input.b ^ _wgslsmith_add_vec2_u32(~u_input.b, u_input.b), u_input.b));
    return !select(!(!vec2<bool>(global1.x, global0[_wgslsmith_index_u32(1u, 23u)])), !select(select(global1.xx, vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), global1.x), select(global1.zy, vec2<bool>(global0[_wgslsmith_index_u32(var_2.a, 23u)], true), true), all(vec3<bool>(true, global1.x, false))), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    global1 = select(select(arg_3.wyw, vec3<bool>(false && global0[_wgslsmith_index_u32(max(46165u, 4294967295u), 23u)], false, false), arg_0.x), func_3(-_wgslsmith_div_i32(2430i, -1i >> (u_input.a % 32u)), abs(vec3<u32>(u_input.b.x << (18233u % 32u), 20553u, ~u_input.b.x)), Struct_2(Struct_1(4294967295u | u_input.b.x, 1000f)), ~select(select(u_input.b, u_input.b, vec2<bool>(global1.x, true)), max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, 38857u)), arg_3.x | false)), arg_3.wxy);
    global1 = !(!vec3<bool>(any(arg_3.xww), true, false));
    let var_0 = arg_3;
    var var_1 = Struct_2(Struct_1(~(~u_input.a) << (1u % 32u), 708f));
    global0 = array<bool, 23>();
    return Struct_2(Struct_1(firstTrailingBit(10253u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, 1u), u_input.b)), var_1.a.b));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(~4294967295u, arg_0.a.b));
    let var_1 = var_0;
    var var_2 = 17835i;
    let var_3 = func_4(func_3(_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, 0i, 1i, 1i), vec4<i32>(-10388i, 14091i, -3408i, 1968i)), vec4<i32>(_wgslsmith_div_i32(-27368i, -2147483647i), _wgslsmith_sub_i32(-9232i, 3693i), min(-1i, -2147483647i), _wgslsmith_sub_i32(-51727i, 1i))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, ~arg_0.a.a, ~var_1.a.a), ~(vec3<u32>(var_1.a.a, 59928u, u_input.c) & vec3<u32>(arg_1.a, arg_0.a.a, 17842u))), arg_0, vec2<u32>(4294967295u, select(_wgslsmith_sub_u32(0u, arg_1.a), 1u, global1.x | false))).xy, vec2<bool>(true, !global1.x), 838f, vec4<bool>(select(any(vec3<bool>(true, global1.x, global1.x)) & global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.a, var_1.a.a), 23u)], global1.x, true), false && global0[_wgslsmith_index_u32(4294967295u, 23u)], global1.x, true)).a;
    global1 = vec3<bool>(func_3(_wgslsmith_add_i32(firstLeadingBit(27540i) >> (func_1(Struct_1(4294967295u, var_1.a.b), 20782i) % 32u), firstLeadingBit(1i)), vec3<u32>(var_0.a.a, var_3.a, ~(~4294967295u)), func_4(vec2<bool>(any(vec4<bool>(true, true, global1.x, global1.x)), true), select(vec2<bool>(false, false), func_2(), !global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f)), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a.a, 23u)], false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, global1.x, true, global0[_wgslsmith_index_u32(var_3.a, 23u)]), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(0u, 23u)]), global1.x), select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, global0[_wgslsmith_index_u32(1u, 23u)], global1.x), global0[_wgslsmith_index_u32(25439u, 23u)]))), u_input.b & countOneBits(firstLeadingBit(u_input.b))).x, true, false);
    return StorageBuffer(arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(select(vec2<bool>(true, global0[_wgslsmith_index_u32(func_1(Struct_1(u_input.a, 1163f), -10340i), 23u)]), func_2(), global1.zx), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)]), global1.yx, !vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)])), -554f, !(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], global1.x, global1.x)))), func_4(!global1.xz, vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global1.x && global0[_wgslsmith_index_u32(u_input.c, 23u)]), _wgslsmith_div_f32(-1000f, 499f), select(select(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<bool>(true, true, true, true), !global1.x), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(30731u, 23u)], global1.x, global0[_wgslsmith_index_u32(0u, 23u)]), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], true), vec4<bool>(global1.x, false, global0[_wgslsmith_index_u32(u_input.c, 23u)], global1.x), false), any(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a, 23u)], global1.x, global0[_wgslsmith_index_u32(func_1(Struct_1(76786u, -364f), 66589i), 23u)], any(vec3<bool>(global1.x, global1.x, false))))).a);
}

