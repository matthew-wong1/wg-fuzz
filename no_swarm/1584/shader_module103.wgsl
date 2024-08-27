struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(0i, i32(-2147483648), 1i, -60665i, 26907i, i32(-2147483648), i32(-2147483648));

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(84346u, 86705u, 4294967295u, 142425u), vec4<u32>(1u, 4294967295u, 30572u, 0u), vec4<u32>(1u, 22847u, 0u, 1u), vec4<u32>(17018u, 1u, 14712u, 10903u));

var<private> global2: array<i32, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.b;
    var var_1 = select(arg_0.b, !arg_2.c.b, var_0.b);
    var var_2 = _wgslsmith_f_op_f32(-1f);
    global2 = array<i32, 4>();
    let var_3 = arg_2;
    return max(0u, ~_wgslsmith_clamp_u32(220u, 20640u, 1u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_mult_i32(abs(~global0[_wgslsmith_index_u32(arg_0.a, 7u)]), 0i);
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.c, firstLeadingBit(vec4<i32>(1i, select(-global0[_wgslsmith_index_u32(arg_0.d.x, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28711u, arg_0.c.x), 7u)], arg_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_0.d.x, 4u)], u_input.a, global0[_wgslsmith_index_u32(arg_0.d.x, 7u)]), abs(u_input.c.yxw)), i32(-1i) * -global2[_wgslsmith_index_u32(arg_0.d.x, 4u)])));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(arg_0.d.x, 4u)], Struct_1(~min(~35775u, _wgslsmith_mod_u32(26799u, 23971u)), vec3<bool>(true, any(select(arg_0.b.zx, vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(arg_0.b.x, true))), arg_0.b.x), min(abs(vec3<u32>(arg_0.a, 4294967295u, arg_0.a)), select(arg_0.c, firstLeadingBit(vec3<u32>(arg_0.a, arg_0.c.x, arg_0.c.x)), arg_0.b)), vec2<u32>(reverseBits(arg_0.a & arg_0.a), ~_wgslsmith_mod_u32(0u, 1u))), Struct_1(reverseBits(arg_0.d.x), !select(!arg_0.b, select(vec3<bool>(false, false, arg_0.b.x), vec3<bool>(arg_0.b.x, true, true), vec3<bool>(arg_0.b.x, arg_0.b.x, false)), select(vec3<bool>(true, arg_0.b.x, false), arg_0.b, arg_0.b)), ~vec3<u32>(0u, arg_0.d.x, arg_0.a) ^ arg_0.c, ~(firstLeadingBit(arg_0.c.xx) ^ ~arg_0.c.yy)), select(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), select(vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), false), true || arg_0.b.x), select(vec4<bool>(true, arg_0.b.x, false, false), !vec4<bool>(false, arg_0.b.x, false, false), vec4<bool>(arg_0.b.x, true, arg_0.b.x, true))), !(!select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), vec4<bool>(false, true, true, arg_0.b.x), arg_0.b.x)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0.d.x, 7u)] | global2[_wgslsmith_index_u32(arg_0.a, 4u)], -7656i) >= _wgslsmith_clamp_i32(978i, ~(-46181i), global0[_wgslsmith_index_u32(arg_0.c.x << (arg_0.c.x % 32u), 7u)])));
    return firstLeadingBit(_wgslsmith_div_u32(var_2.c.d.x << (_wgslsmith_sub_u32(~83779u, arg_0.c.x | arg_0.a) % 32u), ~(~34832u) ^ ~arg_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<i32> {
    global1 = array<vec4<u32>, 4>();
    global2 = array<i32, 4>();
    var var_0 = vec2<u32>(~arg_0.a, ~21487u);
    var var_1 = arg_2.c.c.x;
    let var_2 = Struct_2(~global1[_wgslsmith_index_u32(arg_2.b.d.x, 4u)], arg_0, Struct_1(abs(~(~4294967295u)), vec3<bool>(all(select(arg_1.b.yx, arg_0.b.yz, arg_2.c.b.x)), true || any(vec4<bool>(arg_2.d.x, arg_1.b.x, arg_2.d.x, true)), !(global0[_wgslsmith_index_u32(17001u, 7u)] > arg_3.x)), ~(~_wgslsmith_mod_vec3_u32(arg_2.b.c, arg_0.c)), ~vec2<u32>(~39570u, ~1u)), !(!vec4<bool>(arg_1.b.x, true, arg_0.b.x, arg_1.b.x)));
    return _wgslsmith_add_vec4_i32(firstTrailingBit(select(u_input.c ^ u_input.c, u_input.c, all(arg_0.b.yx))) >> (select(vec4<u32>(abs(8235u), 1u, 1u, 0u), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.a, 0u, 47103u), arg_2.a)), any(arg_2.d)) % vec4<u32>(32u)), vec4<i32>(-global0[_wgslsmith_index_u32(6003u, 7u)], ~(-14711i), _wgslsmith_clamp_i32(u_input.a | 1i, firstLeadingBit(global0[_wgslsmith_index_u32(1u, 7u)]), global0[_wgslsmith_index_u32(60531u, 7u)]) | 10902i, ~(~global0[_wgslsmith_index_u32(1u, 7u)] | ~global0[_wgslsmith_index_u32(1u, 7u)])));
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    global2 = array<i32, 4>();
    global2 = array<i32, 4>();
    let var_0 = vec3<f32>(1106f, 416f, _wgslsmith_f_op_f32(f32(-1f) * -1499f));
    global0 = array<i32, 7>();
    global2 = array<i32, 4>();
    return func_4(Struct_1(4294967295u, arg_0.xzy, _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 43605u, 4060u), vec3<u32>(4294967295u, 2304u, 0u)) | vec3<u32>(func_2(Struct_1(0u, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(27045u, 4294967295u, 11936u), vec2<u32>(45916u, 1u)), vec3<u32>(58614u, 15622u, 74225u), Struct_2(global1[_wgslsmith_index_u32(1u, 4u)], Struct_1(30485u, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(33u, 4294967295u, 23143u), vec2<u32>(4294967295u, 14743u)), Struct_1(45152u, vec3<bool>(arg_0.x, false, arg_0.x), vec3<u32>(1370u, 0u, 17402u), vec2<u32>(1u, 24546u)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), 1u, ~0u), vec2<u32>(func_3(Struct_1(4294967295u, arg_0.ywx, vec3<u32>(58934u, 1u, 23756u), vec2<u32>(4294967295u, 7354u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 349f) + var_0), _wgslsmith_f_op_f32(sign(-1423f))), abs(_wgslsmith_mod_u32(0u, 74203u)))), Struct_1(func_2(Struct_1(0u, select(arg_0.yyy, arg_0.yyy, vec3<bool>(arg_0.x, false, false)), firstTrailingBit(vec3<u32>(65285u, 27409u, 4004u)), vec2<u32>(55593u, 0u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4215u), vec3<u32>(40011u, 8168u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(20530u, 5897u, 1u, 4294967295u), global1[_wgslsmith_index_u32(0u, 4u)]), ~4294967295u), Struct_2(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(1u, 4u)], vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(4194u, vec3<bool>(arg_0.x, false, arg_0.x), vec3<u32>(29916u, 0u, 24983u), vec2<u32>(63539u, 1u)), Struct_1(4294967295u, vec3<bool>(arg_0.x, arg_0.x, true), vec3<u32>(36931u, 47452u, 35295u), vec2<u32>(9621u, 0u)), !vec4<bool>(true, true, true, arg_0.x))), vec3<bool>(!all(vec3<bool>(true, false, false)), all(select(arg_0.zyz, vec3<bool>(arg_0.x, true, false), vec3<bool>(false, arg_0.x, true))), all(select(arg_0.wzw, arg_0.yww, false))), vec3<u32>(_wgslsmith_mod_u32(~4294967295u, func_3(Struct_1(12269u, arg_0.zww, vec3<u32>(1u, 1u, 1000u), vec2<u32>(4294967295u, 4294967295u)), var_0, -909f)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(39319u, 63441u), vec2<u32>(0u, 62524u))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(61905u, 0u, 4294967295u, 0u)), vec4<u32>(14686u, 0u, 4294967295u, 36409u))), vec2<u32>(min(~43386u, ~4294967295u), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(62762u, 4u)], global1[_wgslsmith_index_u32(114186u, 4u)])))), Struct_2(vec4<u32>(func_3(Struct_1(1u, arg_0.yzz, vec3<u32>(4294967295u, 4684u, 60087u), vec2<u32>(14893u, 15860u)), vec3<f32>(var_0.x, -365f, 1755f), var_0.x) >> (~0u % 32u), 47364u, 0u, 1u), Struct_1(0u, arg_0.xzx, vec3<u32>(1u, 1u, 1u), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~37341u)), Struct_1(~select(4294967295u, 4294967295u, arg_0.x), vec3<bool>(arg_0.x, true, any(arg_0.xwy)), vec3<u32>(1u, ~0u, _wgslsmith_mod_u32(25398u, 95449u)), firstTrailingBit(vec2<u32>(1u, 1u))), arg_0), _wgslsmith_mod_vec2_i32(-max(u_input.c.zz, vec2<i32>(-115906i, 26429i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-56284i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(34607u, 7u)], 27565i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(19844u, 7u)] & 65668i, global0[_wgslsmith_index_u32(10678u, 7u)]), min(_wgslsmith_mod_vec2_i32(vec2<i32>(-23649i, u_input.a), vec2<i32>(-2147483647i, u_input.c.x)), u_input.c.wx))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 4>();
    var var_0 = _wgslsmith_clamp_vec4_i32(u_input.c, func_1(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), -vec4<i32>(~(~46720i), u_input.c.x, u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~7534u, ~1u), 4u)]));
    var_0 = (reverseBits(func_1(vec4<bool>(true, false, false, true)) << (global1[_wgslsmith_index_u32(abs(69906u), 4u)] % vec4<u32>(32u))) & u_input.c) | vec4<i32>(-2147483647i, -26239i >> (1u % 32u), 3979i, -(i32(-1i) * -u_input.c.x));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -1177f), -788f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1318f), -756f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1041f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(880f, 178f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -1325f)))));
    let var_3 = Struct_1(1u, !vec3<bool>(any(vec3<bool>(true, false, true)), any(vec3<bool>(false, true, false)) && any(vec2<bool>(true, true)), true & (u_input.b >= var_0.x)), _wgslsmith_add_vec3_u32(~(~abs(vec3<u32>(4294967295u, 9788u, 0u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 60277u), select(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(0u, 0u, 63080u), vec3<u32>(1u, 0u, 25707u)), vec3<bool>(true, false, false)))), countOneBits(vec2<u32>(reverseBits(reverseBits(1u)), firstLeadingBit(~563u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, _wgslsmith_clamp_i32(func_1(!(!vec4<bool>(var_3.b.x, var_3.b.x, true, false))).x, global2[_wgslsmith_index_u32(max(1u, ~_wgslsmith_sub_u32(var_3.a, var_3.a)), 4u)], ~u_input.c.x));
}

