struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    global0 = array<bool, 6>();
    let var_0 = _wgslsmith_div_i32(~1i, _wgslsmith_dot_vec3_i32(-min(~arg_0.zzx, arg_0.wyz), arg_0.xzw));
    var var_1 = u_input.a <= (u_input.a << (~u_input.a % 32u));
    var var_2 = Struct_3(u_input.a, vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a, 6u)], ((i32(-1i) * -26556i) > u_input.b.x) | (_wgslsmith_f_op_f32(-899f * -1519f) > _wgslsmith_f_op_f32(sign(-943f)))));
    var_1 = var_2.b.x;
    return -(-32482i & u_input.b.x);
}

fn func_2() -> vec4<u32> {
    var var_0 = u_input.a;
    global0 = array<bool, 6>();
    var var_1 = ~abs(vec4<i32>(1i, func_3(-vec4<i32>(16588i, u_input.b.x, u_input.b.x, -10335i), global0[_wgslsmith_index_u32(0u, 6u)]), u_input.b.x, 36761i));
    global0 = array<bool, 6>();
    var var_2 = Struct_2(_wgslsmith_add_vec2_u32(~(~vec2<u32>(52151u, u_input.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 490u), vec2<u32>(29424u, 31573u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), firstLeadingBit(vec2<u32>(1u, u_input.a))) ^ vec2<u32>(u_input.a, reverseBits(40176u))), Struct_1(u_input.b.x < 26414i, ~vec3<i32>(~2065i, ~u_input.b.x, var_1.x), !(true && any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 6u)])))), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, 1i, -18188i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 55658i, var_1.x), vec3<i32>(8874i, 2147483647i, u_input.b.x))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 33454i, u_input.b.x), -vec3<i32>(u_input.b.x, var_1.x, 1i))), all(vec2<bool>(select(global0[_wgslsmith_index_u32(1u, 6u)], false, false), true))), vec3<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 39646u, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u))), ~_wgslsmith_mult_u32(u_input.a, 1u)), 1u, ~u_input.a), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 6u)], ~(-reverseBits(var_1.www)), !all(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], false))));
    return ~_wgslsmith_mod_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, var_2.a.x, 54349u) << (vec4<u32>(22522u, 1u, u_input.a, 0u) % vec4<u32>(32u)), vec4<u32>(15727u, var_2.a.x, 1u, 13271u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u) ^ vec4<u32>(var_2.d.x, 4294967295u, 20775u, 74209u)), ~firstTrailingBit(vec4<u32>(var_2.d.x, u_input.a, u_input.a, 73755u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 6>();
    let var_0 = Struct_2(vec2<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 8451u, 76508u)), Struct_1(!any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(18404u, 6u)], true)), _wgslsmith_clamp_vec3_i32(arg_3.b, arg_3.b, select(arg_0.yww, vec3<i32>(arg_3.b.x, arg_0.x, -16655i), select(vec3<bool>(false, arg_3.c, true), vec3<bool>(false, arg_2.b.x, arg_3.c), arg_3.a))), true || !(!arg_2.b.x)), arg_3, ~(~(~(~vec3<u32>(u_input.a, 31495u, 7458u)))), Struct_1(true, -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.xxz, arg_0.yxx, arg_3.b), arg_0.wwx | arg_0.zyw), true));
    var var_1 = true;
    global0 = array<bool, 6>();
    let var_2 = Struct_1(4294967295u <= arg_1, max(vec3<i32>(2147483647i, ~func_3(arg_0, var_0.b.a), -(~arg_3.b.x)), ~(~vec3<i32>(2147483647i, 1i, var_0.b.b.x))), global0[_wgslsmith_index_u32(~var_0.a.x, 6u)]);
    return ~(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(arg_1, 4294967295u)), arg_1));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<bool, 6>();
    let var_0 = _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1539f), true));
    var var_1 = func_4(-(vec4<i32>(-1i, ~u_input.b.x, u_input.b.x, ~(-7113i)) << (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(19841u, u_input.a, u_input.a, 30082u)), func_2()) % vec4<u32>(32u))), firstLeadingBit(firstLeadingBit(min(~u_input.a, ~u_input.a))), Struct_3(39825u, select(select(!vec2<bool>(global0[_wgslsmith_index_u32(36451u, 6u)], global0[_wgslsmith_index_u32(22817u, 6u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(59810u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], false), global0[_wgslsmith_index_u32(51166u, 6u)])), select(vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)]), !vec2<bool>(global0[_wgslsmith_index_u32(38599u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], true)))), Struct_1(!all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 6u)], true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(134102u, 6u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)]))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1i, u_input.b.x), vec3<i32>(1939i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-12081i, u_input.b.x, 2147483647i), vec3<i32>(4075i, -2147483647i, u_input.b.x)) << (vec3<u32>(12381u, u_input.a, u_input.a) % vec3<u32>(32u))), true));
    global0 = array<bool, 6>();
    let var_2 = !select(select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(20952u, 6u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(38042u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(37246u, 6u)])), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<u32>(18263u, 4294967295u, u_input.a, u_input.a)), 6u)]), select(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(8176u, 6u)], true)), select(vec2<bool>(global0[_wgslsmith_index_u32(29262u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)]), false), true), vec2<bool>(any(vec4<bool>(true, false, true, false)), true)), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4805u, 6u)], false)), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)]), arg_0 <= arg_0), !global0[_wgslsmith_index_u32(0u, 6u)]);
    return Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(!any(vec3<bool>(global0[_wgslsmith_index_u32(6744u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], true)) & any(var_2), ~firstLeadingBit(countOneBits(vec3<i32>(-26435i, -7704i, u_input.b.x))), true), Struct_1(_wgslsmith_div_u32(12666u, select(u_input.a, u_input.a, true)) >= 4294967295u, _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(-13257i), abs(u_input.b.x), -u_input.b.x), vec3<i32>(~2147483647i, ~1i, 28144i)), true | !any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 6u)], false))), _wgslsmith_clamp_vec3_u32(~(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(19104u, u_input.a, u_input.a), true) | ~vec3<u32>(62680u, 4294967295u, u_input.a)), ~(~(~vec3<u32>(24601u, u_input.a, 59444u))), vec3<u32>(min(~u_input.a, 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 39914u, 47883u, u_input.a), ~vec4<u32>(u_input.a, 0u, u_input.a, 0u)), u_input.a)), Struct_1(false, -reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) ^ vec3<i32>(1i, 1i, u_input.b.x), var_2.x));
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    global0 = array<bool, 6>();
    return StorageBuffer(vec2<u32>(u_input.a, min(52164u, 1u)) ^ (vec2<u32>(u_input.a, 3505u >> (u_input.a % 32u)) & ~_wgslsmith_mod_vec2_u32(arg_0.d.yx, arg_0.a)), u_input.b, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let x = u_input.a;
    s_output = func_5(func_1(1f));
}

