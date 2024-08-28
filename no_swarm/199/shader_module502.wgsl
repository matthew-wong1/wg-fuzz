struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, u_input.c.x, 4294967295u, 0u) ^ ~u_input.c), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), false), firstTrailingBit(~(~(-u_input.a.x))), -752f, u_input.c);
    var var_1 = Struct_1(abs(~_wgslsmith_clamp_vec4_u32(var_0.e, var_0.e, var_0.a)) ^ firstTrailingBit(u_input.c), vec3<bool>(false, !var_0.b.x, true), ~_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.c, u_input.a.x), _wgslsmith_clamp_i32(20030i, -30876i, var_0.c))), var_0.d, u_input.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.d)), var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.d)), -897f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d, var_1.d, -1363f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d, var_1.d, var_0.d))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1747f, -1000f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(var_1.d * var_1.d), -1014f), true))));
    let var_3 = ~(~u_input.b);
    let var_4 = Struct_1(max(~countOneBits(var_0.a >> (var_0.e % vec4<u32>(32u))), select(~var_0.a, vec4<u32>(0u, 63894u, 4294967295u, var_1.e.x), var_1.b.x)), vec3<bool>(!(_wgslsmith_div_f32(var_1.d, 1946f) < _wgslsmith_div_f32(457f, var_1.d)), var_1.b.x, var_0.b.x), _wgslsmith_clamp_i32(~abs(var_1.c), u_input.a.x, countOneBits(_wgslsmith_sub_i32(reverseBits(var_0.c), var_1.c << (var_0.a.x % 32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.d)))))), countOneBits(var_1.e & max(var_0.e, var_0.e)) >> (~min(abs(vec4<u32>(9082u, u_input.c.x, 4294967295u, 50782u)), ~vec4<u32>(var_0.e.x, var_0.a.x, 14241u, 80136u)) % vec4<u32>(32u)));
    return max(_wgslsmith_mult_vec4_u32(var_1.e, firstTrailingBit(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, var_0.e.x, var_1.e.x), vec4<u32>(0u, u_input.c.x, var_1.a.x, 30143u)), firstTrailingBit(var_4.a), vec4<bool>(false, var_4.b.x, true, false)))), vec4<u32>(1u, _wgslsmith_clamp_u32(44410u, 1u, _wgslsmith_clamp_u32(~var_4.e.x, ~u_input.c.x, _wgslsmith_sub_u32(var_0.e.x, var_4.a.x))), var_0.e.x, ~u_input.c.x));
}

fn func_2() -> i32 {
    let var_0 = ~u_input.c.zw;
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(65221u, 12410u, var_0.x, var_0.x)), func_3()), abs(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)) << (~vec4<u32>(37282u, 1u, u_input.c.x, 2010u) % vec4<u32>(32u)), ~firstTrailingBit(u_input.c)), vec4<u32>(~max(63038u, u_input.c.x), var_0.x, 65132u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 0u), u_input.c))), !vec3<bool>(!(u_input.c.x >= u_input.c.x), all(vec3<bool>(true, true, true)), true), i32(-1i) * -(~53782i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(-546f - 215f)))), (u_input.c << (u_input.c % vec4<u32>(32u))) >> (~(~abs(u_input.c)) % vec4<u32>(32u)));
    let var_2 = Struct_1(abs(vec4<u32>(~func_3().x, u_input.c.x & countOneBits(var_0.x), u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(40149u, u_input.c.x), ~8735u, firstTrailingBit(var_1.e.x)))), !(!vec3<bool>(any(vec2<bool>(false, var_1.b.x)), var_1.b.x, false)), -45928i, _wgslsmith_f_op_f32(f32(-1f) * -710f), vec4<u32>(countOneBits(_wgslsmith_div_u32(133879u, var_0.x)), min(min(13779u, func_3().x), ~16073u), abs(var_0.x), var_0.x));
    var var_3 = -24052i;
    var var_4 = var_1.e;
    return var_1.c >> (u_input.c.x % 32u);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3.c;
    return _wgslsmith_dot_vec4_i32(~(~max(-vec4<i32>(u_input.a.x, 0i, arg_3.c, 62948i), vec4<i32>(-32900i, 2147483647i, 29588i, 0i))), ~vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -2147483647i), vec3<i32>(arg_3.c, arg_3.c, arg_2)), arg_2, -1i) << (~(~vec4<u32>(u_input.c.x, u_input.c.x, 1u, arg_1)) % vec4<u32>(32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = -1i;
    let var_1 = arg_1;
    var var_2 = arg_1;
    var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(func_3().x, arg_1.e.x, var_2.a.x, 1u), firstTrailingBit(countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)))), !(!vec3<bool>(arg_1.b.x, any(vec4<bool>(false, false, var_1.b.x, false)), true)), var_2.c, _wgslsmith_div_f32(1231f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2118f)), _wgslsmith_f_op_f32(floor(arg_1.d)), var_1.b.x)), 686f)), ~arg_1.a);
    return var_1.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = func_5(func_4(arg_0.b.x, ~reverseBits(_wgslsmith_mult_u32(arg_0.a.x, arg_0.e.x)), arg_0.c, Struct_1(u_input.c, !arg_1.b, _wgslsmith_sub_i32(func_2(), abs(arg_1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_f32(round(var_0.d)), true)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.a.x, 48408u, arg_0.e.x, arg_0.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 84109u, 92950u), vec4<u32>(1u, u_input.c.x, var_0.a.x, 62143u))))), Struct_1(~(~u_input.c << (vec4<u32>(17370u, var_0.a.x, arg_1.a.x, 9462u) % vec4<u32>(32u))), var_0.b, _wgslsmith_mult_i32(~(-5726i), 0i), -1076f, select(~(~var_0.a), u_input.c, arg_1.b.x)));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~(~(~arg_1.a.x)), ~_wgslsmith_mult_u32(var_0.e.x, ~0u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, func_3().x), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_2, 29111u), u_input.c.x), 66480u), _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(~arg_1.e.xyz, func_3().yyx)), _wgslsmith_mult_u32(arg_2, 4294967295u), ~var_0.e.x), ~1u);
    var var_3 = -u_input.a;
    var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e.x, ~arg_2, 1u, 0u), firstTrailingBit(arg_0.a)) | reverseBits(u_input.c);
    return vec4<bool>((func_5(1i, var_0) | (true || any(var_0.b.yx))) & arg_1.b.x, var_0.b.x, !any(select(arg_1.b.yz, vec2<bool>(arg_1.b.x, true), !vec2<bool>(var_0.b.x, var_0.b.x))), !(~(1i & var_3.x) > -22586i));
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_3.e;
    let var_1 = arg_3;
    var var_2 = arg_0.zy;
    var_2 = !(!select(arg_3.b.yx, select(arg_0.yx, select(vec2<bool>(arg_3.b.x, var_2.x), arg_0.yz, false), vec2<bool>(arg_3.b.x, true)), !(!arg_3.b.zy)));
    var_2 = !arg_0.zx;
    return vec2<bool>(any(var_1.b.yy), arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<bool>(true, (any(vec2<bool>(true, true)) && false) || true, true, any(select(func_1(Struct_1(u_input.c, vec3<bool>(true, true, true), 6540i, 2175f, vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x)), Struct_1(u_input.c, vec3<bool>(false, false, false), 0i, -131f, vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x), vec4<bool>(false, false, true, false), true))), (1u & ~abs(u_input.c.x)) | abs(u_input.c.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-780f, _wgslsmith_f_op_f32(round(-443f)), _wgslsmith_f_op_f32(select(-340f, 1040f, select(false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-345f, -1827f)))))), Struct_1(u_input.c, func_1(Struct_1(u_input.c ^ u_input.c, vec3<bool>(true, true, true), -9667i, _wgslsmith_div_f32(-4604f, -962f), ~vec4<u32>(6339u, u_input.c.x, u_input.c.x, 0u)), Struct_1(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 7113u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), ~u_input.a.x, 573f, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 125557u, u_input.c.x), vec4<u32>(u_input.c.x, 77488u, 5368u, 0u))), ~(~24487u)).xwx, ~(-14647i), _wgslsmith_f_op_f32(step(-1453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-777f, -564f)) - -1116f))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 4294967295u), vec4<u32>(65033u, 8706u, u_input.c.x, 26327u)) & u_input.c));
    var_0 = !vec2<bool>(var_0.x, var_0.x);
    var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.c.zwz, ~u_input.c.xzx), ~_wgslsmith_div_u32(u_input.c.x, 0u)), _wgslsmith_mult_u32(u_input.c.x, 1u), 1u, select(u_input.c.x, u_input.c.x | (1u << (u_input.c.x % 32u)), true)), select(vec3<bool>(u_input.a.x == select(u_input.b.x, u_input.a.x, var_0.x), true, any(vec2<bool>(var_0.x, false)) && true), vec3<bool>(func_1(Struct_1(u_input.c, vec3<bool>(false, false, true), 42641i, 1000f, u_input.c), Struct_1(u_input.c, vec3<bool>(var_0.x, var_0.x, var_0.x), 3875i, 384f, vec4<u32>(1u, 0u, 0u, 106241u)), firstTrailingBit(33541u)).x, var_0.x, all(vec2<bool>(var_0.x, var_0.x))), !vec3<bool>(var_0.x, !var_0.x, true)), u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(3125f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-288f)))), 628f)), firstTrailingBit(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(67186u, 33621u, 4294967295u, 0u)) | vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), u_input.c)));
    var var_2 = var_1.a.x;
    let var_3 = reverseBits(~select(0u, abs(1u), var_1.b.x));
    var var_4 = !(!var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(true, _wgslsmith_mod_u32(firstTrailingBit(var_1.a.x) << (34336u % 32u), _wgslsmith_mod_u32(func_3().x, min(u_input.c.x, 49690u))), func_4(true, _wgslsmith_div_u32(u_input.c.x, func_3().x), firstLeadingBit(~u_input.b.x), Struct_1(vec4<u32>(u_input.c.x, 44662u, 1u, 1578u), var_1.b, i32(-1i) * -2147483647i, var_1.d, vec4<u32>(var_1.e.x, 27177u, var_3, var_1.a.x))), Struct_1(vec4<u32>(1u, 1u, abs(var_1.a.x), ~var_1.a.x), func_1(Struct_1(vec4<u32>(var_3, 9927u, var_3, u_input.c.x), vec3<bool>(var_0.x, true, true), u_input.a.x, var_1.d, vec4<u32>(var_3, u_input.c.x, 1u, 10705u)), Struct_1(vec4<u32>(38492u, 31691u, 1u, var_3), var_1.b, -8852i, -725f, vec4<u32>(var_1.e.x, var_3, 1u, u_input.c.x)), var_1.e.x).xxw, countOneBits(31470i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * var_1.d)), abs(vec4<u32>(var_3, 0u, 0u, var_1.e.x)))), vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, min(4294967295u, 18472u)), 0u) >> (reverseBits((var_1.e.xw & u_input.c.xy) | vec2<u32>(var_1.e.x, u_input.c.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(-1270f, _wgslsmith_f_op_f32(-1204f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-256f, 414f, true)))), -188f != _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(var_1.d))))));
}

