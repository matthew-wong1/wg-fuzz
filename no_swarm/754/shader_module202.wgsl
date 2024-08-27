struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-8286i, -29906i, 20039i, -38572i);

var<private> global1: Struct_1 = Struct_1(-1i, vec4<u32>(1u, 4294967295u, 2365u, 8008u), 871u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(abs(global0.x), _wgslsmith_mod_i32(u_input.c, -1i)) | ~global0.x, vec4<u32>(u_input.b.x, ~global1.b.x, u_input.b.x, ~firstLeadingBit(global1.c)), global1.b.x & 41116u), Struct_1(1i, vec4<u32>(18678u, ~_wgslsmith_clamp_u32(92187u, 4294967295u, u_input.b.x), u_input.b.x, ~(14034u >> (u_input.b.x % 32u))), 4294967295u));
    let var_1 = vec4<f32>(-1458f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1000f)))), -459f, _wgslsmith_f_op_f32(f32(-1f) * -1481f));
    var var_2 = true;
    var_2 = true;
    var var_3 = var_0;
    return firstLeadingBit(~1u ^ var_3.b.c) != 40923u;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> u32 {
    global1 = Struct_1(~0i, global1.b, min(_wgslsmith_dot_vec2_u32(~(arg_0.yx & vec2<u32>(0u, u_input.b.x)), vec2<u32>(~global1.b.x, ~global1.c)), _wgslsmith_mod_u32(abs(4294967295u), ~1u)));
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, ~global0.x, ~0i), -(global0.wwy >> (vec3<u32>(0u, arg_0.x, 48525u) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(global0.yxw, select(vec3<i32>(-1i, 0i, 1i), vec3<i32>(-27125i, 1i, global0.x), false))), u_input.b, global1.c);
    global1 = Struct_1(21928i, vec4<u32>(u_input.b.x, ~min(reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 50369u), vec3<u32>(15988u, 4294967295u, 14091u))), u_input.b.x, 21840u), u_input.b.x);
    var var_0 = Struct_1(max(select(global1.a, countOneBits(56066i), func_3()), global0.x), u_input.b, 1u);
    var var_1 = var_0.a;
    return abs(_wgslsmith_dot_vec2_u32(var_0.b.wx << (~countOneBits(u_input.b.xx) % vec2<u32>(32u)), ~vec2<u32>(~global1.c, u_input.b.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(global0.yxz, global0.wyz) << (max(_wgslsmith_mult_u32(arg_2.x, u_input.b.x), _wgslsmith_mult_u32(arg_2.x, 7073u)) % 32u), vec4<u32>(~1u, reverseBits(_wgslsmith_mod_u32(global1.c, 67208u)), u_input.b.x, ~_wgslsmith_dot_vec4_u32(global1.b, u_input.b)), func_2(~vec3<u32>(0u, 4294967295u, global1.b.x), -1495f, false)), Struct_1(436i, ~(~(vec4<u32>(4294967295u, arg_2.x, u_input.b.x, global1.c) ^ vec4<u32>(global1.c, arg_2.x, arg_2.x, global1.c))), 1u));
    let var_1 = ~(~_wgslsmith_mod_u32(~var_0.a.c, u_input.b.x));
    var var_2 = vec3<u32>(1u, 4294967295u, ~(~((u_input.b.x << (4294967295u % 32u)) & abs(4294967295u))));
    global1 = var_0.a;
    let var_3 = !(!(!select(vec4<bool>(false, false, false, false), !vec4<bool>(false, arg_3.x, arg_3.x, true), !arg_3.x)));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(~38008i, -33265i, 0i, -3323i), vec4<i32>(global1.a, _wgslsmith_mod_i32(1740i, global0.x), global0.x >> (18074u % 32u), global0.x), vec4<i32>(-global1.a ^ ~global1.a, 32296i, _wgslsmith_div_i32(abs(-29394i), -34827i), _wgslsmith_clamp_i32(-2147483647i, ~5007i, 31883i))) << (vec4<u32>(~0u, select(~(~u_input.b.x), var_0.b.b.x, true), ~_wgslsmith_mult_u32(var_0.a.c, var_1), _wgslsmith_sub_u32(var_2.x, 109883u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (-(~vec4<i32>(-15171i, global0.x, -22223i, u_input.a.x)) ^ -select(func_1(vec4<f32>(-1552f, 224f, -1293f, 449f), -1511f, u_input.b.xyy, vec2<bool>(true, true)), abs(vec4<i32>(-14285i, global0.x, -23860i, u_input.d)), vec4<bool>(true, true, true, true))) | vec4<i32>(min(-_wgslsmith_sub_i32(global0.x, global1.a), -2147483647i), ~select(1i, global1.a, true), ~_wgslsmith_div_i32(-2147483647i & global1.a, firstTrailingBit(global0.x)), 4799i);
    global0 = min(vec4<i32>(_wgslsmith_sub_i32(49760i, -22659i) | -global0.x, abs(-839i), 296i, -22370i) ^ ~(~vec4<i32>(global1.a, 0i, -2147483647i, 41527i) ^ (vec4<i32>(u_input.c, global1.a, -2147483647i, global1.a) & vec4<i32>(23634i, u_input.a.x, u_input.d, global0.x))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1137f)), 291f, _wgslsmith_f_op_f32(-147f - 699f), -885f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(884f, -599f))))), ~u_input.b.zxx, vec2<bool>(true, 0u != ~u_input.b.x)));
    var var_0 = Struct_1(global1.a, u_input.b, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.b.x, 33532u), vec2<u32>(28958u, 17947u)), ~1u));
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(global0.x, global0.x, -4287i, global1.a) & vec4<i32>(-18647i, -1i, u_input.a.x, 0i), -vec4<i32>(global0.x, 20311i, -17480i, 0i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -2147483647i, var_0.a, 22201i), vec4<i32>(33452i, 1i, -22559i, 16380i), vec4<i32>(20960i, -1i, u_input.a.x, global0.x))) & vec4<i32>(2147483647i, global1.a, ~(-1i), -31615i), ~vec4<i32>(-global0.x, global1.a, ~(-19903i), global0.x));
    var var_2 = i32(-1i) * -global1.a;
    let var_3 = vec3<bool>(true, func_3(), true);
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, -1i, var_1.x), ~vec3<i32>(2147483647i, -1i, var_1.x)) & vec3<i32>(global0.x, global0.x, -4465i), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(var_0.a, var_1.x, global0.x)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, -1000f, -2008f, 1783f) + vec4<f32>(1549f, -472f, 311f, 1528f)), 979f, vec3<u32>(33681u, 20015u, 0u) | global1.b.xzw, !var_3.zy).zxx)), vec4<u32>(_wgslsmith_add_u32(53220u, firstLeadingBit(var_0.b.x)), ~40983u, ~(select(u_input.b.x, 4294967295u, false) >> (~4294967295u % 32u)), reverseBits(~4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u ^ var_0.c, 0u), _wgslsmith_sub_vec2_u32(~global1.b.wz, global1.b.yz)) ^ 69181u);
    var var_4 = Struct_1(firstTrailingBit(-1i) ^ abs(-22692i), vec4<u32>(3255u >> (reverseBits(max(var_0.b.x, u_input.b.x)) % 32u), min(firstTrailingBit(~u_input.b.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.x, 5114u), ~global1.c)), 45787u, ~reverseBits(var_0.c)), 31470u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(18745u, var_4.b.x, 22977u)), ~(~var_4.b.wyx)), ~var_0.a);
}

