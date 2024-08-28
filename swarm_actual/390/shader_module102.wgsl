struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1111f)));
    let var_3 = _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(select(arg_1.c, arg_1.c, select(arg_1.a, arg_1.a, arg_2.a)), arg_2.c), arg_1.c);
    let var_4 = Struct_2(-947f);
    return -1474f;
}

fn func_3() -> f32 {
    var var_0 = vec2<u32>(~_wgslsmith_div_u32(u_input.d, ~106315u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11988u, u_input.d, u_input.d, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 68381u, u_input.c.x)) >> (firstTrailingBit(u_input.d) % 32u), u_input.d >> (_wgslsmith_mod_u32(4294967295u, 65693u) % 32u), ~u_input.d << (~15080u % 32u)) | firstTrailingBit(4294967295u));
    let var_1 = Struct_2(446f);
    var_0 = ~(~firstTrailingBit(u_input.c.xy));
    var var_2 = Struct_1(!(var_1.a != _wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))), abs(min(max(~vec4<i32>(u_input.b, 1i, 43816i, -2147483647i), -vec4<i32>(u_input.a, 1i, u_input.b, u_input.b)), firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a))))), (~(~vec3<i32>(61731i, u_input.b, -45060i)) | vec3<i32>(u_input.b, ~1i, reverseBits(u_input.a))) << (firstTrailingBit(u_input.c.zxx) % vec3<u32>(32u)), -abs(-4681i));
    var_0 = _wgslsmith_clamp_vec2_u32(~abs(u_input.c.zy), firstTrailingBit(vec2<u32>(max(u_input.d, 1u), _wgslsmith_sub_u32(4294967295u, u_input.c.x))), ~vec2<u32>(var_0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), u_input.c.zy), 1u)));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_2(arg_0.b);
    let var_1 = reverseBits(vec2<u32>(~(~reverseBits(4294967295u)), abs(~u_input.d)));
    let var_2 = u_input.a;
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-arg_0.b))));
    var var_3 = -1362f;
    return vec3<bool>(arg_0.e >= -1033i, true, arg_0.a);
}

fn func_1() -> Struct_2 {
    var var_0 = !vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2676f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(-1005f), Struct_1(true, -483f, vec4<i32>(u_input.a, -1i, u_input.a, -27696i), vec3<i32>(3459i, u_input.b, u_input.a), u_input.b), Struct_1(false, -841f, vec4<i32>(u_input.b, u_input.b, u_input.a, -60142i), vec3<i32>(2147483647i, -1i, 35862i), 107i)))), true, false);
    var_0 = !func_4(Struct_1(any(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, false, false))), _wgslsmith_f_op_f32(func_3()), firstLeadingBit(vec4<i32>(69296i, u_input.b, u_input.b, u_input.b) << (u_input.c % vec4<u32>(32u))), reverseBits(vec3<i32>(u_input.a, u_input.b, u_input.b)) | vec3<i32>(u_input.a, 1i, u_input.b), countOneBits(0i) >> (abs(u_input.d) % 32u)), Struct_2(_wgslsmith_f_op_f32(func_3())), false);
    var_0 = !vec3<bool>(var_0.x, !var_0.x, var_0.x);
    let var_1 = u_input.c.wy;
    var_0 = select(func_4(Struct_1(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(143f)))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1i, -19400i, 1i), vec4<i32>(15726i, u_input.a, u_input.a, -2147483647i)) >> (vec4<u32>(107691u, u_input.d, 1u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, 1i), firstTrailingBit(vec3<i32>(-14270i, -22231i, 2147483647i))), min(_wgslsmith_add_i32(u_input.a, 26335i), 0i << (0u % 32u))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f), 537f)), all(vec3<bool>(var_0.x, any(vec3<bool>(var_0.x, false, true)), true))), func_4(Struct_1(true, -396f, vec4<i32>(reverseBits(-2147483647i), u_input.b, u_input.b, u_input.a), ~(~vec3<i32>(1i, 1i, -1i)), 0i), Struct_2(_wgslsmith_f_op_f32(select(1530f, _wgslsmith_f_op_f32(-704f * -1000f), true))), true), true);
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(439f, -1002f))))));
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1647f))))) * -1507f);
    let var_1 = vec4<i32>(max(-18599i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-4137i, ~u_input.a, 4554i, max(u_input.a, -33472i)), vec4<i32>(u_input.b & ~u_input.b, u_input.b, u_input.b, u_input.b)), u_input.b, firstTrailingBit(select(u_input.b, u_input.b, !all(vec2<bool>(false, false)))));
    let var_2 = Struct_1(!arg_1.x == any(select(arg_3, select(arg_3, vec4<bool>(false, arg_3.x, true, arg_3.x), false), any(vec3<bool>(true, arg_1.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1274f - arg_2.a))))), var_1, var_1.yyz, var_1.x);
    let var_3 = var_2;
    var var_4 = var_2;
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = func_1();
    var var_1 = arg_1.c;
    let var_2 = vec2<u32>(min(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zw) << (u_input.c.x % 32u)), _wgslsmith_mult_u32(max(abs(57055u), ~1u), ~(~u_input.c.x)) >> (_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.d, 4294967295u, 0u)), ~select(u_input.c.zyw, u_input.c.ywz, arg_1.a)) % 32u));
    var_1 = countOneBits(~_wgslsmith_clamp_vec4_i32(arg_1.c, -vec4<i32>(0i, -21506i, -1i, u_input.b), -arg_1.c & arg_1.c));
    var var_3 = arg_0.c;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(~(u_input.a | u_input.b), -1i) & select(1i, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c.x, 1u), u_input.c) < _wgslsmith_mod_u32(u_input.d, u_input.d)), reverseBits(_wgslsmith_mod_i32((i32(-1i) * -56436i) << (_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.d) % 32u), 1i)), -func_6(func_5(-1274f, select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_1(), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), func_5(_wgslsmith_f_op_f32(213f + 585f), vec2<bool>(true, true), Struct_2(-169f), vec4<bool>(false, false, true, true)), false));
    var var_1 = vec2<i32>(1i & _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), var_0.xy, -var_0.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.b), var_0.zz) & min(var_0.xx, var_0.xx)), ~abs(_wgslsmith_add_i32(2147483647i, -1i) >> (min(26867u, 0u) % 32u)));
    var_1 = _wgslsmith_sub_vec2_i32(max(-_wgslsmith_sub_vec2_i32(var_0.zz, var_0.xx ^ vec2<i32>(var_0.x, var_1.x)), reverseBits(vec2<i32>(var_0.x, -5621i)) << (vec2<u32>(reverseBits(u_input.d), 1u) % vec2<u32>(32u))), var_0.xy >> (u_input.c.wz % vec2<u32>(32u)));
    let var_2 = vec2<i32>(~_wgslsmith_sub_i32(-1i << (u_input.d % 32u), u_input.b), func_5(_wgslsmith_f_op_f32(-1486f + func_5(-381f, vec2<bool>(true, false), Struct_2(-911f), vec4<bool>(false, false, true, false)).b), func_4(Struct_1(false, -1000f, vec4<i32>(var_0.x, var_1.x, var_0.x, var_0.x), var_0, -43467i), func_1(), true).zx, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1375f)), vec4<bool>(true, var_0.x != var_0.x, true, true)).c.x) ^ reverseBits(_wgslsmith_mult_vec2_i32(var_0.zx ^ (vec2<i32>(u_input.b, 26543i) & var_0.zz), _wgslsmith_add_vec2_i32(countOneBits(var_0.xy), var_0.yz)));
    let var_3 = func_1();
    var_1 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, -29823i), var_2.x), -10764i & _wgslsmith_mult_i32(-2147483647i, var_2.x))), var_0.xy);
    let var_4 = -301f;
    let var_5 = Struct_1(false, _wgslsmith_f_op_f32(min(var_4, -535f)), vec4<i32>(func_5(-341f, select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), var_3, vec4<bool>(true, u_input.c.x <= u_input.c.x, true, func_5(-310f, vec2<bool>(true, true), Struct_2(var_3.a), vec4<bool>(false, true, false, true)).a)).e, ~var_0.x, var_1.x, _wgslsmith_dot_vec2_i32(func_5(-615f, vec2<bool>(true, true), var_3, vec4<bool>(false, false, true, false)).d.yx & ~var_2, vec2<i32>(var_0.x, var_0.x | -4017i))), var_0, var_0.x);
    var_1 = var_0.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(firstTrailingBit(var_5.c.x) << (u_input.d % 32u), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 1i, var_1.x), vec3<i32>(var_5.e, var_1.x, u_input.a)))), u_input.c.x);
}

