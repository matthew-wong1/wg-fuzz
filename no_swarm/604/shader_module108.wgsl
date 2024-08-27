struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 33940u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 10636u, 0u, 51218u), vec4<u32>(global1.x ^ global0.x, 18439u, ~25916u, global0.x)), reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.x, 1u, u_input.b), vec4<u32>(0u, global0.x, global1.x, global1.x)), ~vec4<u32>(global1.x, global0.x, global0.x, global0.x)))) ^ (~vec4<u32>(~global0.x, u_input.b, 4294967295u, firstLeadingBit(global1.x)) & vec4<u32>(~firstLeadingBit(global1.x), ~1u, ~global0.x, global0.x));
    var var_0 = true;
    let var_1 = vec2<u32>(~abs(global1.x), 0u);
    let var_2 = Struct_2(Struct_1(vec2<bool>(all(vec4<bool>(false, false, false, true)), true), -1364f, _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(1u, 19972u, 23754u, 41661u)), ~vec4<u32>(u_input.a.x, 37741u, 68696u, u_input.b) | ~vec4<u32>(0u, 16538u, u_input.a.x, 119515u)), ~reverseBits(~vec3<u32>(var_1.x, global1.x, 25211u)), _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(37914u, 35069u, 45034u, global1.x), vec4<u32>(4294967295u, 1u, 52230u, var_1.x)), firstTrailingBit(vec4<u32>(var_1.x, 89570u, 0u, 0u))))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(808f)))))), ~(abs(vec4<u32>(19254u, u_input.a.x, 4294967295u, global1.x)) & vec4<u32>(1u, u_input.a.x, 4975u, 35137u)), ~vec3<u32>(min(32935u, 0u), 58034u, u_input.b), global0.x), (max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(6124i, -2147483647i, 21186i, 168i), vec4<i32>(-2147483647i, 2147483647i, 6979i, -2147483647i))) | ~(-2147483647i)) > -2147483647i, Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(step(309f, _wgslsmith_f_op_f32(trunc(-757f)))), abs(~countOneBits(vec4<u32>(var_1.x, 106374u, global0.x, global0.x))), global0.yyx, global1.x), vec4<u32>(~0u, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1.x, 1u, 1u, u_input.a.x)), vec4<u32>(46520u, 941u, 43394u, 98974u)), _wgslsmith_clamp_u32(~11599u, 30633u, 12857u), countOneBits(11634u)));
    global0 = vec4<u32>(~(~(59101u ^ var_2.e.x)), abs(u_input.b), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 70852u, var_2.e.x, global1.x), vec4<u32>(global0.x, 1u, 1u, u_input.a.x)), ~1u & ~global0.x), 1u));
    return var_2.a.c.wx;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = arg_0.e;
    global0 = vec4<u32>(max(~_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), vec2<u32>(global0.x, u_input.a.x) >> (arg_0.e.yy % vec2<u32>(32u))), 1276u), firstLeadingBit(u_input.a.x), global0.x, global1.x);
    global1 = firstTrailingBit(~min(func_3(), reverseBits(~global0.xz)));
    global0 = arg_0.b.c;
    let var_0 = arg_1.xyy;
    return vec2<bool>(false, !(arg_2.x < arg_2.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> StorageBuffer {
    global0 = vec4<u32>(~3291u, 1u, ~u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(68622u, arg_0, ~0u, ~4294967295u), ~countOneBits(vec4<u32>(13070u, arg_1, global0.x, global1.x))) % 32u), arg_1);
    var var_0 = select(u_input.a & (_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a), u_input.a >> (global0.zw % vec2<u32>(32u))) ^ vec2<u32>(~67713u, 1347u)), global0.xy << ((~(~global0.xz) | ~u_input.a) % vec2<u32>(32u)), select(arg_2.yx, select(arg_2.zz, !func_2(Struct_2(Struct_1(arg_2.yz, 1548f, vec4<u32>(1u, global0.x, arg_1, 63797u), vec3<u32>(u_input.b, 37350u, arg_1), 41571u), Struct_1(arg_2.zx, -1302f, vec4<u32>(36555u, global0.x, 36798u, arg_1), global0.yyy, 29649u), false, Struct_1(arg_2.zx, 1960f, vec4<u32>(global0.x, arg_0, u_input.b, u_input.b), global0.zyw, global1.x), vec4<u32>(1u, u_input.a.x, global1.x, arg_1)), vec4<f32>(-126f, 2257f, -789f, 594f), vec3<i32>(-2147483647i, 1i, -2147483647i)), abs(arg_0) > (arg_0 << (1u % 32u))), arg_2.x && true));
    global1 = ~_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(23041u, global0.x)), max(abs(~global0.wy), u_input.a));
    var_0 = u_input.a;
    var var_1 = Struct_4(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -30128i, -75072i), vec3<i32>(2147483647i, 21128i, 8361i), vec3<i32>(-1i, -2147483647i, -1i))), vec3<i32>(~14704i, -1i, firstTrailingBit(0i)), firstTrailingBit(select(vec3<i32>(2147483647i, 27134i, 25801i), vec3<i32>(-34854i, -26941i, -2147483647i), arg_2.x))), select(vec3<i32>(1i, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 23218i))), ~vec3<i32>(1i, 1i, 1i), false)));
    return StorageBuffer(func_3().x, abs(vec4<u32>(global0.x, _wgslsmith_div_u32(global1.x, global1.x) | u_input.a.x, ~global0.x, firstTrailingBit(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(!(!all(vec3<bool>(false, false, false))), false), vec2<bool>(true, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))), !(!vec2<bool>(22909u <= global0.x, all(vec3<bool>(false, false, false)))));
    global1 = u_input.a;
    let x = u_input.a;
    s_output = func_1(~global0.x, ~_wgslsmith_add_u32(4294967295u, 0u) << (countOneBits(u_input.b) % 32u), select(!(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, false), true)), vec3<bool>(true, true, any(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)))), !(!select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x)))));
}

