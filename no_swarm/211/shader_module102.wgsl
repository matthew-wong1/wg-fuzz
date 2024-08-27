struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(abs(arg_0.xz), max(arg_0.zz, vec2<i32>(arg_0.x, 1i)) ^ arg_0.xw), true), Struct_1(-35860i, true), arg_0.x, abs(firstLeadingBit(_wgslsmith_clamp_i32(arg_0.x, abs(47051i), 0i))));
    let var_1 = Struct_3(u_input.b, !select(!select(vec2<bool>(true, false), vec2<bool>(var_0.b.b, var_0.b.b), vec2<bool>(false, var_0.a.b)), vec2<bool>(all(vec2<bool>(var_0.b.b, false)), any(vec2<bool>(var_0.b.b, false))), vec2<bool>(false, true)), min(~(arg_0 >> (firstLeadingBit(vec4<u32>(u_input.a, 25445u, 23881u, 20221u)) % vec4<u32>(32u))), firstLeadingBit(arg_0)), vec3<i32>(~firstLeadingBit(arg_0.x), 3843i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 25367i, 8244i), arg_0.xwz))) ^ vec3<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(-2147483647i, -51909i, 0i)), -38842i, var_0.a.a), var_0.a.b);
    let var_2 = Struct_3(abs(var_1.a | ~vec4<u32>(var_1.a.x, u_input.b.x, var_1.a.x, 4294967295u)), select(!select(select(vec2<bool>(false, var_0.a.b), vec2<bool>(var_1.e, var_0.a.b), var_0.b.b), select(vec2<bool>(true, false), var_1.b, var_1.b.x), var_1.b), var_1.b, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.a.b, var_0.b.b, true, true), vec4<bool>(var_0.a.b, true, var_0.a.b, false))))), ~var_1.c, reverseBits(countOneBits(var_1.c.wxy) << (vec3<u32>(0u, u_input.a, var_1.a.x) % vec3<u32>(32u))) & abs(~var_1.c.xxx | arg_0.wxw), false);
    var var_3 = var_2;
    var var_4 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~abs(var_2.a.yx)), vec2<u32>(max(1u, 1u), countOneBits(var_1.a.x)));
    return vec4<u32>(_wgslsmith_div_u32(u_input.a, var_2.a.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(~(var_1.a.zw >> (var_3.a.wz % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a.x, 41214u, 4294967295u), var_1.a), u_input.b.x))), firstTrailingBit(~var_1.a.x << (~(~var_1.a.x) % 32u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 45637u, 4294967295u, var_2.a.x), u_input.b) << (18698u % 32u), min(~_wgslsmith_div_u32(var_2.a.x, var_3.a.x), 18392u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = vec3<u32>(~(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_2.a.x, 70890u), _wgslsmith_add_u32(16543u, arg_2.a.x)) << (0u % 32u)), _wgslsmith_mult_u32(20025u, 21330u) | countOneBits((4294967295u ^ arg_2.a.x) & 20110u), u_input.b.x);
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(abs(~(4294967295u & var_0.x)), 83079u >> (countOneBits(0u) % 32u), ~1u, 19539u), abs(min(func_3(-vec4<i32>(-2145i, -1849i, arg_2.d.x, arg_2.c.x)), u_input.b)));
    let var_2 = select(vec2<bool>(any(vec4<bool>(arg_2.e, true, true, !arg_2.b.x)), (max(arg_2.d.x, arg_2.c.x) & 1i) < -min(-2147483647i, arg_2.c.x)), vec2<bool>(arg_2.e, true), 529f == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - _wgslsmith_f_op_f32(step(374f, -1524f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-454f))))));
    var var_3 = arg_2.d.x;
    var_3 = arg_2.d.x;
    return vec3<u32>(~(reverseBits(61555u) ^ max(0u, countOneBits(arg_2.a.x))), func_3(~vec4<i32>(-arg_2.c.x, firstTrailingBit(arg_2.c.x), select(20322i, -8778i, var_2.x), 44145i)).x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(select(arg_0.x, 24817u, true), _wgslsmith_div_u32(1u, 37045u), 36999u)), var_1.x));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(vec4<u32>(u_input.a >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(func_2(u_input.b, any(vec2<bool>(true, true)), Struct_3(u_input.b, vec2<bool>(false, false), vec4<i32>(-2018i, 1503i, -6473i, -2147483647i), vec3<i32>(10521i, -12020i, 24111i), false)), max(u_input.b.xyx ^ vec3<u32>(0u, u_input.b.x, u_input.b.x), ~u_input.b.xxx)), func_2(~(vec4<u32>(u_input.b.x, 40373u, 4294967295u, 4294967295u) ^ u_input.b), false, Struct_3(countOneBits(vec4<u32>(u_input.a, u_input.b.x, 41194u, 10981u)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), max(vec4<i32>(1i, 2397i, 7904i, -48595i), vec4<i32>(-29264i, 668i, 0i, 14140i)), ~vec3<i32>(-18551i, -36610i, 4864i), false)).x, _wgslsmith_mod_u32(abs(~u_input.b.x), 1u << (~4294967295u % 32u))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), vec4<i32>(min(max(countOneBits(2147483647i), reverseBits(1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-11785i, -2147483647i, 0i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-38347i, -1i, -35224i, 1i), vec4<i32>(-1i, 2147483647i, -32014i, 62189i)))), 2147483647i, -20699i, i32(-1i) * -13710i), abs(reverseBits(vec3<i32>(15501i, 1i << (u_input.a % 32u), abs(-1i)))), all(vec4<bool>(true, true, true, true)) | true);
    let var_1 = ~0u;
    var var_2 = Struct_1(reverseBits(var_0.d.x), _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(var_0.c)), max(firstTrailingBit(vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.c.x)), -var_0.c)) == _wgslsmith_mod_i32(~1i, var_0.d.x));
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(var_0.b, vec2<bool>(false, false), (var_0.a.x != var_0.a.x) | var_2.b), select(var_0.b, var_0.b, true), true));
    var var_4 = abs(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(50201u | var_0.a.x, ~u_input.b.x), 42281u)));
    return Struct_1(var_0.c.x | var_2.a, any(select(vec3<bool>(true, false, true), !select(vec3<bool>(var_2.b, true, false), vec3<bool>(false, var_3.x, var_0.b.x), true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(true, var_3.x, true, var_0.e))))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(countOneBits(~arg_1.x), _wgslsmith_mod_u32(u_input.a, (~u_input.b.x | _wgslsmith_mod_u32(4294967295u, 4294967295u)) ^ 1u));
    let var_1 = vec3<u32>(min(~abs(1u), arg_1.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, firstTrailingBit(~4294967295u)), ~(~arg_1.x) << (_wgslsmith_mult_u32(u_input.a, ~arg_1.x) % 32u)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, ~arg_1.x, 1u), (u_input.b.xyw ^ u_input.b.wzx) & vec3<u32>(4294967295u, 4294967295u, 93862u))));
    var var_2 = func_1().a;
    return Struct_1(6828i, any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, arg_2.b, false), false))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec4<u32>(77860u, _wgslsmith_mult_u32(func_3(abs(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))).x, _wgslsmith_sub_u32(u_input.b.x, 68597u) ^ u_input.b.x), 4294967295u, 27249u);
    let var_1 = Struct_2(func_1(), Struct_1(_wgslsmith_mult_i32(arg_0.a, arg_0.a), arg_1.x && func_4(_wgslsmith_clamp_i32(-2147483647i, -29578i, -1i), vec4<u32>(4294967295u, var_0.x, 26902u, 1u), func_1()).b), -2147483647i, 38959i);
    return max(60832i, -16330i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = vec4<i32>(-(~_wgslsmith_div_i32(max(-1i, 1i), _wgslsmith_clamp_i32(1i, -1i, 0i))), 1i, -func_5(func_4(-1i, u_input.b, func_1()), vec4<bool>(true, true, func_1().b, var_0.x >= var_0.x)), firstTrailingBit(~firstTrailingBit(~(-41358i))));
    let var_2 = !(!(!func_4(-25166i, vec4<u32>(34559u, var_0.x, 50733u, 3229u), Struct_1(var_1.x, false)).b) && false);
    var var_3 = vec2<i32>(-37537i, _wgslsmith_mult_i32(-58180i, -3555i));
    var_0 = (vec4<u32>(~_wgslsmith_clamp_u32(17600u, var_0.x, u_input.a), reverseBits(_wgslsmith_div_u32(4294967295u, 1u)), 27576u, u_input.a) >> (u_input.b % vec4<u32>(32u))) & min(u_input.b, reverseBits(u_input.b));
    var var_4 = ~(firstLeadingBit(vec4<i32>(68414i, ~47409i, min(19767i, var_1.x), -var_1.x)) ^ abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -21774i, -2147483647i, 13801i), vec4<i32>(var_3.x, var_1.x, -1i, var_3.x)), vec4<i32>(1i, var_1.x, -1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

