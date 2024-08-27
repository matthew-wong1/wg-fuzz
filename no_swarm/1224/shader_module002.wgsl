struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: bool) -> bool {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~arg_0, reverseBits(10455u)), _wgslsmith_div_u32(~_wgslsmith_div_u32(71097u, arg_1), 67544u)), 0u);
    let var_1 = u_input.b.x;
    let var_2 = vec4<i32>(var_1, _wgslsmith_sub_i32(~(-37750i) ^ ~firstLeadingBit(var_1), ~(~u_input.a.x ^ u_input.b.x)), 24775i, ~(firstLeadingBit(2147483647i) << (0u % 32u)) << (1u % 32u));
    let var_3 = true;
    let var_4 = Struct_3(vec3<bool>(var_3, true, all(!(!vec4<bool>(true, var_3, false, false)))), vec2<bool>(!var_3 || var_3, _wgslsmith_dot_vec4_i32(vec4<i32>(13806i, u_input.a.x, -10037i, 58402i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, var_1, var_2.x, -9305i), var_2, vec4<i32>(u_input.a.x, var_1, var_1, var_2.x))) == u_input.b.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1189f * _wgslsmith_f_op_f32(-arg_2))) > arg_2);
    return any(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_3, true, var_3, var_3), true), vec4<bool>(true, var_4.a.x, var_4.d, true), var_3 && var_3)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec2<bool>(false, false)))));
    var var_1 = Struct_4(Struct_1(!select(select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(true, false, false, true), var_0), vec4<bool>(var_0, var_0, true, false), false), _wgslsmith_sub_i32(-30270i & u_input.a.x, u_input.b.x) | 38804i, vec2<u32>(0u, _wgslsmith_div_u32(firstTrailingBit(4294967295u), select(47890u, 4294967295u, var_0))), ~(~(~vec4<u32>(48976u, 1u, 54412u, 1u)))), Struct_3(select(select(select(vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, var_0), var_0), vec3<bool>(true, true, var_0), vec3<bool>(var_0, false, var_0)), vec3<bool>(true, all(vec4<bool>(var_0, false, false, false)), var_0), !(!var_0)), select(select(select(vec2<bool>(true, true), vec2<bool>(var_0, true), vec2<bool>(false, true)), vec2<bool>(false, var_0), !var_0), vec2<bool>(true, var_0), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), false)), _wgslsmith_div_u32(firstLeadingBit(1u), 4294967295u) > firstTrailingBit(20955u), any(select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, var_0)))), _wgslsmith_div_u32(60066u, _wgslsmith_mod_u32(~(~1u), 21645u)), _wgslsmith_sub_vec3_i32(u_input.b.yyw, _wgslsmith_mod_vec3_i32(-vec3<i32>(-16098i, arg_0.x, arg_0.x), -vec3<i32>(73304i, -32716i, arg_0.x))), Struct_2(Struct_1(vec4<bool>(var_0 & false, func_1(4294967295u, 63271u, 315f, var_0), func_1(4294967295u, 0u, 340f, var_0), var_0), min(-6871i, arg_0.x) | u_input.a.x, firstTrailingBit(select(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), true)), ~abs(vec4<u32>(7526u, 1u, 4294967295u, 4009u))), ~(_wgslsmith_mod_u32(13491u, 1u) << (0u % 32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, 151f)))), Struct_1(!vec4<bool>(false, true, true, var_0), _wgslsmith_sub_i32(countOneBits(2147483647i), 6209i), ~(~vec2<u32>(1u, 0u)), ~countOneBits(vec4<u32>(57781u, 1u, 4294967295u, 1952u)))));
    let var_2 = Struct_3(!vec3<bool>(var_0, !select(var_1.e.a.a.x, var_1.a.a.x, true), true), select(vec2<bool>(false, any(var_1.e.a.a.wzw)), !var_1.a.a.xw, vec2<bool>(true, true)), var_0, all(select(select(select(var_1.e.a.a.yyy, vec3<bool>(true, var_1.e.d.a.x, var_1.b.a.x), vec3<bool>(var_0, var_0, var_1.e.d.a.x)), !vec3<bool>(var_1.a.a.x, var_1.a.a.x, var_1.e.d.a.x), var_1.a.a.zwx), var_1.e.a.a.wxw, true)));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.c, _wgslsmith_mod_u32(var_1.c, var_1.e.d.d.x), var_1.c, 9959u), ~(~select(vec4<u32>(89110u, 54041u, var_1.c, 6161u), vec4<u32>(var_1.a.c.x, var_1.c, 41957u, var_1.e.d.c.x), vec4<bool>(true, var_0, true, false)))), _wgslsmith_div_vec4_u32(~var_1.a.d, _wgslsmith_div_vec4_u32(~max(var_1.e.d.d, vec4<u32>(var_1.c, var_1.e.a.d.x, 1u, 42389u)), var_1.a.d ^ ~var_1.e.a.d)));
    var_1 = Struct_4(Struct_1(vec4<bool>(!(44741u <= var_3.x), any(!vec3<bool>(false, true, var_0)), false, var_1.b.a.x), _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(arg_0.x, arg_0.x)), countOneBits(arg_0) & ~vec2<i32>(-45550i, 2147483647i)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c, 0u), var_1.a.d.wy)), ~(~vec4<u32>(4294967295u, var_3.x, var_3.x, 20494u))), Struct_3(var_1.a.a.wwy, select(var_1.b.a.xx, vec2<bool>(all(var_2.a), !var_2.d), vec2<bool>(var_2.a.x, !var_1.b.c)), any(var_2.b), false), ~(abs(1u) >> (_wgslsmith_mod_u32(~42871u, 0u << (var_3.x % 32u)) % 32u)), ~u_input.b.zxw, Struct_2(Struct_1(select(!var_1.e.a.a, vec4<bool>(false, var_0, var_1.b.b.x, false), var_2.a.x && var_1.e.d.a.x), countOneBits(u_input.a.x), var_1.e.d.c, _wgslsmith_mult_vec4_u32(~var_1.e.a.d, ~var_1.a.d)), abs(_wgslsmith_dot_vec3_u32(~var_1.a.d.zyy, countOneBits(var_1.a.d.xxz))), _wgslsmith_f_op_vec2_f32(-var_1.e.c), Struct_1(!vec4<bool>(true, var_1.e.d.a.x, true, false), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec2_i32(arg_0, u_input.b.ww)), select(var_1.e.a.c << (vec2<u32>(1u, 11223u) % vec2<u32>(32u)), ~var_3.yy, all(var_1.e.d.a)), vec4<u32>(5268u, var_3.x, 23110u, var_3.x) | vec4<u32>(28605u, 4294967295u, 47125u, 101287u))));
    return _wgslsmith_dot_vec3_i32(~(~vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, var_1.a.b, 1i), var_1.d.x, ~44880i)), ~vec3<i32>(abs(arg_0.x) >> (~var_3.x % 32u), u_input.a.x, -abs(u_input.a.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = -vec4<i32>(firstTrailingBit(-4789i), u_input.a.x, -1i, u_input.b.x | countOneBits(u_input.b.x));
    var var_1 = Struct_1(select(select(!(!vec4<bool>(arg_3.x, arg_0.x, false, false)), vec4<bool>(all(arg_0.yx), arg_3.x, arg_0.x & arg_0.x, false), any(select(arg_0, vec4<bool>(false, true, arg_3.x, true), false))), select(select(arg_0, arg_0, false || arg_0.x), arg_0, arg_0), arg_0), u_input.b.x, arg_2, ~(~(~(~vec4<u32>(33094u, 0u, arg_2.x, arg_2.x)))));
    var_0 = vec4<i32>(-(2147483647i << (max(36195u, ~arg_2.x) % 32u)), u_input.b.x, firstLeadingBit(~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 11931i, u_input.b.x, -1i), vec4<i32>(var_0.x, u_input.a.x, var_1.b, 1i)))), func_3(firstLeadingBit(~abs(u_input.a.xx))));
    let var_2 = abs(vec2<i32>(select(abs(-1i), u_input.a.x, _wgslsmith_add_i32(u_input.b.x, var_0.x) < ~(-2147483647i)), var_1.b));
    let var_3 = Struct_4(Struct_1(vec4<bool>(!(var_1.c.x >= var_1.d.x), arg_3.x, any(!arg_0), true), reverseBits(-_wgslsmith_clamp_i32(u_input.a.x, var_2.x, 1i)), ~vec2<u32>(22753u, var_1.c.x) & ~(~arg_2), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.c.x, arg_2.x, 4294967295u, 4294967295u), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, abs(var_1.d.x)))), Struct_3(select(select(vec3<bool>(arg_3.x, true, var_1.a.x), vec3<bool>(true, true, false), !arg_3.x), select(arg_0.wzz, select(var_1.a.yyz, arg_3, vec3<bool>(var_1.a.x, true, false)), select(arg_0.zyx, vec3<bool>(arg_0.x, arg_0.x, true), arg_3)), arg_0.zyx), select(vec2<bool>(arg_0.x, -2147483647i >= var_1.b), vec2<bool>(true, any(vec3<bool>(false, var_1.a.x, arg_3.x))), true), true, arg_0.x), 10836u, ~(vec3<i32>(var_2.x, 46334i, 1i) << (abs(~vec3<u32>(4294967295u, 39428u, 1u)) % vec3<u32>(32u))), Struct_2(Struct_1(select(var_1.a, arg_0, arg_3.x), 6655i, ~var_1.d.yz & (vec2<u32>(var_1.d.x, 0u) >> (arg_2 % vec2<u32>(32u))), vec4<u32>(~arg_2.x, _wgslsmith_clamp_u32(arg_2.x, arg_2.x, 28802u), 43617u, ~0u)), _wgslsmith_clamp_u32(1u, max(arg_2.x, arg_2.x), 1u) & (abs(8740u) >> ((arg_2.x | arg_2.x) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-567f, arg_1.x))))), Struct_1(select(arg_0, !vec4<bool>(arg_0.x, arg_0.x, false, var_1.a.x), arg_0.x & arg_3.x), _wgslsmith_mod_i32(var_2.x & u_input.b.x, var_0.x), reverseBits(vec2<u32>(1u, 1u)), var_1.d)));
    return var_1.a.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), func_2(vec4<bool>(true, select(true, true, true), true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, 100f)) - vec2<f32>(-345f, 279f))), _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(31909u, 30421u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 30564u))), vec2<u32>(~0u, ~771u)), vec3<bool>(true, false, any(vec4<bool>(true, true, false, false)) && func_1(61015u, 28744u, -257f, true))), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), false), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_add_u32(countOneBits(4294967295u), 1u);
    var var_2 = Struct_3(vec3<bool>(_wgslsmith_mod_i32(u_input.b.x, ~1i) != 0i, false, any(!vec2<bool>(var_0.x, var_0.x))), vec2<bool>(var_0.x, !select(any(vec4<bool>(false, true, var_0.x, var_0.x)), any(vec3<bool>(var_0.x, var_0.x, true)), var_0.x && var_0.x)), ~(-2147483647i) != (-_wgslsmith_dot_vec4_i32(u_input.b, u_input.a) << (~(~1u) % 32u)), true);
    let var_3 = abs(~(select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), var_2.b) | vec2<u32>(1u, 1u)));
    var var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(11005u, 26079u, var_3.x), vec3<u32>(0u, var_3.x, var_3.x)) | ~vec3<u32>(var_3.x, 63364u, 34493u)) >> (vec3<u32>(min(var_3.x, var_3.x), 1u, 30342u) % vec3<u32>(32u)), ~(~vec3<u32>(var_3.x, 4294967295u, 3682u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.x, var_3.x, 4294967295u) ^ vec3<u32>(4294967295u, var_3.x, var_3.x), ~vec3<u32>(var_3.x, var_3.x, var_3.x))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~select(23548u, 15506u, var_2.b.x) | 4294967295u, 10213u, abs(min(1u, 4294967295u) << (1u % 32u)), 71336u), reverseBits(~(~(~(-28550i)))), 16683i ^ min((u_input.b.x << (46096u % 32u)) ^ ~26706i, 1i), _wgslsmith_clamp_i32(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.a.x), ~2147483647i), max(u_input.b.x, _wgslsmith_add_i32(-22599i, u_input.a.x >> (0u % 32u))), u_input.b.x), reverseBits(-u_input.b));
}

