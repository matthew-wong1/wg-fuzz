struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = abs(_wgslsmith_sub_vec3_i32(arg_0.b.c.c.wyy, -vec3<i32>(arg_2.b.c.x ^ -51576i, max(-2147483647i, 9096i), ~34117i)));
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(-21326i), u_input.a, arg_0.b.b.c.x), -vec3<i32>(max(1i, ~2147483647i), -(1i << (u_input.b % 32u)), -_wgslsmith_clamp_i32(var_0.x, -1i, arg_1.c.c.x)), ~(~vec3<i32>(arg_2.b.c.x, var_0.x, 0i)) << (arg_2.a.b.yxy % vec3<u32>(32u)));
    var var_1 = _wgslsmith_sub_i32(var_0.x, _wgslsmith_sub_i32(-2147483647i, u_input.a & arg_1.a.c.x)) | arg_0.a.c.c.x;
    let var_2 = u_input.a;
    var var_3 = !(!(!vec3<bool>(arg_1.b.c.x <= var_0.x, true, true)));
    return -1114f;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2074f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0, arg_0), arg_0, Struct_2(Struct_1(arg_0.b.b.zzx, vec4<u32>(1u, 4294967295u, u_input.b, arg_0.a.b.x), arg_0.b.c), arg_0.b, Struct_1(vec3<u32>(arg_0.a.b.x, 2158u, arg_0.c.a.x), arg_0.c.b, vec4<i32>(arg_0.b.c.x, -32775i, u_input.a, 1i))))) + _wgslsmith_f_op_f32(-1698f + -1346f)) * _wgslsmith_f_op_f32(-1166f - 1238f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f))))));
    var var_1 = Struct_3(arg_0, Struct_2(Struct_1(~_wgslsmith_clamp_vec3_u32(arg_0.c.a, arg_0.a.b.xzz, vec3<u32>(arg_0.c.b.x, arg_0.c.a.x, u_input.b)), arg_0.a.b, arg_0.b.c & min(vec4<i32>(arg_0.a.c.x, -35506i, 19390i, 1i), arg_0.c.c)), Struct_1(~(~vec3<u32>(u_input.b, 69592u, 1u)), arg_0.b.b, vec4<i32>(_wgslsmith_div_i32(u_input.a, -1i), -arg_0.b.c.x, u_input.a, arg_0.b.c.x << (u_input.b % 32u))), Struct_1(~firstTrailingBit(vec3<u32>(784u, 68141u, arg_0.b.a.x)), vec4<u32>(u_input.b, ~93507u, u_input.b, arg_0.b.a.x), abs(arg_0.b.c) << (arg_0.c.b % vec4<u32>(32u)))));
    let var_2 = u_input.b >> (_wgslsmith_dot_vec4_u32(arg_0.c.b, var_1.a.a.b) % 32u);
    var_1 = Struct_3(Struct_2(var_1.a.b, Struct_1(vec3<u32>(var_2, u_input.b, var_2) << (var_1.b.b.a % vec3<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), var_1.a.c.a.xx), ~12037u, u_input.b, reverseBits(0u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 30076i, -23976i, arg_0.a.c.x), arg_0.c.c ^ vec4<i32>(-48788i, 45956i, var_1.a.c.c.x, var_1.a.b.c.x))), Struct_1(vec3<u32>(~var_2, ~1u, 43555u), arg_0.b.b, ~var_1.b.c.c)), var_1.b);
    let var_3 = vec3<bool>(!((arg_0.b.b.x > 4294967295u) != any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true, true);
    return Struct_1(~max(max(~arg_0.c.a, ~arg_0.b.a), ~(arg_0.b.a & vec3<u32>(arg_0.c.a.x, 30471u, 0u))), arg_0.a.b, vec4<i32>(~u_input.a, _wgslsmith_div_i32(i32(-1i) * -45276i, ~u_input.a), arg_0.c.c.x, _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.a.c.x, -30721i), 1i)) << (countOneBits(vec4<u32>(~0u, 4294967295u, var_2 ^ 1u, var_1.a.a.a.x)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_1.c.x;
    let var_2 = ~arg_1.c.x;
    let var_3 = Struct_3(Struct_2(arg_0.c, arg_1, arg_0.b), Struct_2(Struct_1(select(_wgslsmith_sub_vec3_u32(var_0.b.b.yyx, vec3<u32>(11583u, var_0.b.a.x, 65120u)), firstLeadingBit(arg_0.a.b.zyw), true), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 3261u, arg_1.b.x, 4294967295u), vec4<u32>(58685u, arg_1.b.x, 24323u, 56894u)) & ~vec4<u32>(1u, arg_1.b.x, 60021u, 5154u), arg_1.c & countOneBits(vec4<i32>(23272i, arg_0.a.c.x, arg_1.c.x, var_1))), var_0.b, arg_0.b));
    var var_4 = vec2<i32>(firstLeadingBit(-1i), _wgslsmith_mult_i32(8445i, 1i));
    return -166f;
}

fn func_1() -> u32 {
    let var_0 = vec3<bool>(!all(vec4<bool>(true, true, true, any(vec3<bool>(false, true, true)))), true, all(vec2<bool>(true && (2147483647i < u_input.a), true)));
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<u32>(20503u, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, -2147483647i, 97661i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), vec4<i32>(u_input.a, -13880i, u_input.a, 32024i)), Struct_1(vec3<u32>(u_input.b, u_input.b, 60534u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<i32>(u_input.a, u_input.a, -1i, 6587i)))), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(1u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<u32>(0u, u_input.b, 23449u), vec4<u32>(u_input.b, 1u, 140332u, u_input.b), vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i)), Struct_1(vec3<u32>(u_input.b, 15169u, u_input.b), vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), vec4<i32>(13498i, u_input.a, 1i, u_input.a)))), func_2(Struct_2(Struct_1(vec3<u32>(1u, u_input.b, 34108u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<i32>(-7665i, 1i, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.b, 1u, 37772u), vec4<u32>(0u, u_input.b, 49025u, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 16073u), vec4<i32>(-1i, u_input.a, -13070i, -48323i)))), func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, 38608u, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<i32>(-23351i, 10452i, 17258i, -16935i)), Struct_1(vec3<u32>(43841u, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, 52282u, 0u), vec4<i32>(-1i, u_input.a, 8918i, 41088i)), Struct_1(vec3<u32>(0u, 65488u, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))))), func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<i32>(0i, 34817i, -23132i, u_input.a)), Struct_1(vec3<u32>(1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 129195u, u_input.b, u_input.b), vec4<i32>(u_input.a, -1i, 0i, u_input.a)), Struct_1(vec3<u32>(u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 1u), vec4<i32>(-22989i, u_input.a, u_input.a, u_input.a))))), Struct_1(firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.b, 67662u), ~u_input.b, u_input.b)), vec4<u32>(u_input.b, u_input.b, _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(13020u, 0u, u_input.b)), u_input.b), vec4<i32>(-(~u_input.a), func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), Struct_1(vec3<u32>(u_input.b, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<i32>(1i, -42285i, -27703i, -44839i)), Struct_1(vec3<u32>(u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<i32>(-2007i, u_input.a, -39849i, u_input.a)))).c.x, 1i, 60436i >> (abs(u_input.b) % 32u)))));
    let var_2 = vec3<bool>(~u_input.a != -2147483647i, 1u == min(reverseBits(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<i32>(-11581i, u_input.a, u_input.a, -1i)), Struct_1(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(20760i, 2147483647i, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.b, 11019u, u_input.b), vec4<u32>(48932u, u_input.b, 0u, 1u), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)))).b.x), func_2(Struct_2(Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, 15950u, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, 7492i, -1i)), Struct_1(vec3<u32>(30659u, 52687u, 64102u), vec4<u32>(12525u, u_input.b, 48086u, u_input.b), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), Struct_1(vec3<u32>(u_input.b, u_input.b, 0u), vec4<u32>(1u, u_input.b, 0u, 44973u), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i)))).a.x), var_0.x);
    var var_3 = Struct_1(firstLeadingBit(vec3<u32>(select(u_input.b, 59401u, var_0.x), ~(~u_input.b), ~6461u)), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 0u), vec4<u32>(47063u, u_input.b, u_input.b, 2272u), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<u32>(6509u, 33944u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, -1i, -3276i, 1i)), Struct_1(vec3<u32>(u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, 7612u, u_input.b, u_input.b), vec4<i32>(1i, -2147483647i, -1i, u_input.a)))), Struct_1(vec3<u32>(1u, u_input.b, u_input.b), vec4<u32>(12280u, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, 22937i, -7734i)), Struct_1(vec3<u32>(u_input.b, 1u, 0u), vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<i32>(2147483647i, -2147483647i, 20916i, u_input.a)))).b | ~vec4<u32>(u_input.b, ~u_input.b, ~u_input.b, max(u_input.b, 18682u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-595i, u_input.a, firstLeadingBit(u_input.a), ~(-1i)), ~(~countOneBits(vec4<i32>(0i, 6324i, -1199i, -24103i)))));
    var var_4 = var_2.x;
    return ~var_3.b.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(arg_2.c.a.x, ~93954u, arg_0) & (vec3<u32>(arg_2.a.a.x, 0u, arg_2.c.a.x) & countOneBits(vec3<u32>(4294967295u, arg_0, 7601u))), _wgslsmith_add_vec4_u32(arg_2.a.b, abs(arg_2.a.b)), (arg_2.a.c << (_wgslsmith_sub_vec4_u32(arg_2.a.b, arg_1.b) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mult_u32(u_input.b, 0u), 4294967295u, 6472u, ~arg_1.a.x) % vec4<u32>(32u))), Struct_1(arg_1.b.wyx, ~((vec4<u32>(arg_2.b.a.x, arg_2.c.b.x, arg_2.c.b.x, 1u) >> (vec4<u32>(48876u, 82327u, arg_2.a.a.x, arg_1.b.x) % vec4<u32>(32u))) >> (~arg_1.b % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(-arg_1.c, _wgslsmith_sub_vec4_i32(arg_1.c, arg_2.c.c))), arg_2.c);
    var_0 = Struct_2(Struct_1(var_0.a.b.zyx, select(vec4<u32>(_wgslsmith_mult_u32(98612u, 42823u), abs(arg_0), arg_2.a.b.x, arg_2.a.b.x), arg_2.c.b, select(true, all(vec4<bool>(true, false, false, false)), true)), max(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(var_0.c.c.yx, arg_2.b.c.xx), _wgslsmith_sub_i32(arg_2.b.c.x, u_input.a), arg_2.c.c.x), vec4<i32>(i32(-1i) * -1i, -1i, ~arg_2.c.c.x, 0i))), arg_1, func_2(arg_2));
    var var_1 = ~0u;
    var var_2 = arg_2;
    var var_3 = countOneBits(vec3<i32>(u_input.a, var_0.c.c.x >> (~u_input.b % 32u), max(firstTrailingBit(-19441i), -1i)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((_wgslsmith_add_u32(func_1(), _wgslsmith_add_u32(233u, 1u)) << (_wgslsmith_sub_u32(~u_input.b, u_input.b) % 32u)) >> (1u % 32u), Struct_1(firstLeadingBit(func_2(Struct_2(Struct_1(vec3<u32>(1u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, -24678i, u_input.a, 0i)), Struct_1(vec3<u32>(1u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), vec4<i32>(u_input.a, 39830i, 10583i, u_input.a)), Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b), vec4<i32>(u_input.a, 2147483647i, u_input.a, -1i)))).b.zww) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), ~vec3<u32>(u_input.b, 1u, u_input.b)) % vec3<u32>(32u)), ~(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec4<u32>(34537u, u_input.b, u_input.b, 0u), vec4<i32>(u_input.a, 8149i, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 41196u, 4294967295u, u_input.b), vec4<i32>(u_input.a, -24727i, 34642i, 33658i)), Struct_1(vec3<u32>(60540u, u_input.b, u_input.b), vec4<u32>(35408u, u_input.b, u_input.b, 5447u), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)))).b << (~vec4<u32>(28186u, u_input.b, 0u, u_input.b) % vec4<u32>(32u))), firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(1413i, -2147483647i, -13669i, 2147483647i), vec4<i32>(1i, -18731i, u_input.a, u_input.a)))), Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, 10873u, u_input.b), vec4<u32>(1u, 1u, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.b, 0u, 1u), vec4<u32>(48215u, u_input.b, 0u, 1u), vec4<i32>(u_input.a, u_input.a, u_input.a, -58059i)), Struct_1(vec3<u32>(1u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 43935u, u_input.b), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)))), func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 673u, 136751u), vec4<i32>(u_input.a, 1i, 14814i, u_input.a)), Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), vec4<i32>(u_input.a, 50096i, 3305i, u_input.a)), Struct_1(vec3<u32>(u_input.b, u_input.b, 28221u), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)))), func_2(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 54495u, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<u32>(67256u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<i32>(u_input.a, -2147483647i, u_input.a, -17547i)))))), Struct_1(min(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(1948u, u_input.b, u_input.b), vec3<u32>(60311u, 0u, 40591u))), select(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b), vec4<u32>(13256u, u_input.b, 29521u, u_input.b), true), abs(abs(vec4<i32>(15431i, u_input.a, -2147483647i, u_input.a)))), Struct_1(vec3<u32>(_wgslsmith_div_u32(1u, u_input.b), abs(u_input.b), ~4294967295u), ~(~vec4<u32>(1u, 1u, 72000u, 1u)), vec4<i32>(abs(u_input.a), u_input.a >> (53149u % 32u), ~u_input.a, u_input.a))));
    var var_1 = func_5(4294967295u, func_5(~(~var_0.b.x), Struct_1(vec3<u32>(48923u, u_input.b & var_0.b.x, ~39631u), _wgslsmith_div_vec4_u32(var_0.b, select(vec4<u32>(35275u, var_0.a.x, u_input.b, u_input.b), vec4<u32>(u_input.b, 22417u, u_input.b, 39264u), true)), -func_5(1u, Struct_1(vec3<u32>(var_0.b.x, var_0.b.x, u_input.b), var_0.b, vec4<i32>(u_input.a, 2147483647i, 79222i, var_0.c.x)), Struct_2(Struct_1(var_0.b.ywx, vec4<u32>(4294967295u, u_input.b, u_input.b, var_0.b.x), var_0.c), Struct_1(var_0.a, var_0.b, vec4<i32>(0i, -37957i, var_0.c.x, 9253i)), Struct_1(var_0.b.yyz, var_0.b, var_0.c))).c), Struct_2(Struct_1(~var_0.b.xxx, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_0.a.x, var_0.a.x, 4294967295u), var_0.b), var_0.c), func_5(var_0.b.x | u_input.b, Struct_1(var_0.a, var_0.b, vec4<i32>(-24051i, 2147483647i, 14676i, u_input.a)), Struct_2(Struct_1(var_0.b.wwx, vec4<u32>(u_input.b, 4294967295u, 4294967295u, 0u), vec4<i32>(-21359i, var_0.c.x, var_0.c.x, u_input.a)), Struct_1(vec3<u32>(1u, u_input.b, var_0.b.x), vec4<u32>(u_input.b, var_0.a.x, 1u, 16884u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.b, 9712u, 1u), vec4<u32>(var_0.a.x, 0u, 41541u, 18664u), var_0.c))), func_2(Struct_2(Struct_1(vec3<u32>(9220u, var_0.a.x, var_0.a.x), var_0.b, vec4<i32>(-1i, -49519i, u_input.a, var_0.c.x)), Struct_1(var_0.b.yzx, var_0.b, var_0.c), Struct_1(vec3<u32>(7712u, var_0.a.x, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.b, var_0.a.x), var_0.c))))), Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(0u, var_0.a.x, u_input.b), var_0.b, vec4<i32>(u_input.a, var_0.c.x, -1i, -2147483647i)), Struct_1(vec3<u32>(var_0.b.x, 1u, u_input.b), var_0.b, var_0.c), Struct_1(var_0.a, vec4<u32>(4294967295u, var_0.a.x, 1u, var_0.a.x), var_0.c))), func_2(Struct_2(Struct_1(var_0.a, vec4<u32>(var_0.b.x, u_input.b, 1u, 1u), vec4<i32>(0i, -61572i, -1i, -32755i)), Struct_1(vec3<u32>(var_0.b.x, u_input.b, 0u), var_0.b, var_0.c), Struct_1(var_0.b.xyw, var_0.b, var_0.c))), func_5(var_0.a.x, Struct_1(var_0.b.wyy, vec4<u32>(0u, u_input.b, 1u, 1u), vec4<i32>(-64932i, 1i, u_input.a, 78677i)), Struct_2(Struct_1(vec3<u32>(u_input.b, 4294967295u, var_0.a.x), var_0.b, var_0.c), Struct_1(var_0.a, vec4<u32>(u_input.b, 63438u, 5302u, 36854u), vec4<i32>(5555i, u_input.a, -48287i, 2147483647i)), Struct_1(var_0.a, var_0.b, vec4<i32>(var_0.c.x, -35834i, u_input.a, 739i)))))), func_5(min(1u, func_1()), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.b), reverseBits(vec4<u32>(0u, 46860u, 65403u, 65093u)), max(vec4<i32>(36235i, -1i, -1i, -2147483647i), vec4<i32>(0i, 1i, var_0.c.x, var_0.c.x))), Struct_2(func_5(0u, Struct_1(var_0.b.wxz, var_0.b, vec4<i32>(-5748i, var_0.c.x, u_input.a, 0i)), Struct_2(Struct_1(vec3<u32>(var_0.b.x, u_input.b, u_input.b), var_0.b, var_0.c), Struct_1(var_0.b.wwy, var_0.b, vec4<i32>(-7951i, u_input.a, var_0.c.x, u_input.a)), Struct_1(var_0.b.wzy, var_0.b, vec4<i32>(55720i, -1i, 1i, -2147483647i)))), func_5(var_0.a.x, Struct_1(var_0.a, vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), vec4<i32>(u_input.a, -28839i, var_0.c.x, var_0.c.x)), Struct_2(Struct_1(var_0.b.yxw, var_0.b, vec4<i32>(0i, 15752i, var_0.c.x, u_input.a)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), var_0.b, vec4<i32>(-1i, -1i, -33799i, var_0.c.x)), Struct_1(var_0.a, vec4<u32>(u_input.b, 0u, u_input.b, 57477u), var_0.c))), func_5(4294967295u, Struct_1(vec3<u32>(u_input.b, 1u, var_0.a.x), var_0.b, var_0.c), Struct_2(Struct_1(vec3<u32>(65146u, 6796u, u_input.b), vec4<u32>(0u, var_0.a.x, u_input.b, var_0.b.x), var_0.c), Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 23456u, 4294967295u), var_0.c), Struct_1(vec3<u32>(25169u, 46542u, 1u), vec4<u32>(u_input.b, var_0.b.x, var_0.a.x, 0u), var_0.c))))), func_5(_wgslsmith_div_u32(4294967295u, ~57758u), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.a.x), var_0.a), var_0.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-24645i, var_0.c.x, var_0.c.x, u_input.a), vec4<i32>(u_input.a, -1i, var_0.c.x, -1i))), Struct_2(func_2(Struct_2(Struct_1(var_0.b.xyz, var_0.b, var_0.c), Struct_1(var_0.b.yxy, var_0.b, var_0.c), Struct_1(vec3<u32>(0u, var_0.b.x, 37712u), var_0.b, var_0.c))), func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, 53848u, 21634u), var_0.b, var_0.c), Struct_1(var_0.a, var_0.b, var_0.c), Struct_1(vec3<u32>(13097u, 1u, 66598u), var_0.b, vec4<i32>(u_input.a, -19355i, -9771i, 1i)))), func_2(Struct_2(Struct_1(vec3<u32>(1u, u_input.b, 0u), vec4<u32>(var_0.a.x, u_input.b, u_input.b, 75793u), var_0.c), Struct_1(vec3<u32>(u_input.b, u_input.b, var_0.a.x), vec4<u32>(var_0.b.x, u_input.b, var_0.b.x, u_input.b), vec4<i32>(2147483647i, var_0.c.x, 2147483647i, -2147483647i)), Struct_1(vec3<u32>(31994u, 4294967295u, 0u), var_0.b, var_0.c)))))));
    var_0 = Struct_1(~vec3<u32>(17320u, firstTrailingBit(54095u) & var_1.a.x, _wgslsmith_add_u32(var_1.a.x, var_0.b.x)), abs(var_0.b), ~max(var_0.c, max(vec4<i32>(var_0.c.x, var_0.c.x, var_1.c.x, 0i), countOneBits(vec4<i32>(-2147483647i, -42236i, var_0.c.x, var_1.c.x)))));
    var_1 = func_5(~u_input.b, Struct_1(~func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.b.x), vec2<u32>(var_1.b.x, 0u)), func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, var_1.a.x, 7603u), vec4<u32>(var_0.b.x, u_input.b, 4294967295u, 45325u), var_1.c), Struct_1(vec3<u32>(var_1.b.x, u_input.b, var_1.a.x), vec4<u32>(var_0.b.x, 1u, var_1.a.x, var_0.a.x), vec4<i32>(-1i, var_0.c.x, 0i, 26041i)), Struct_1(vec3<u32>(var_0.a.x, var_1.a.x, 62051u), var_1.b, vec4<i32>(-1i, var_0.c.x, 12898i, -1i)))), Struct_2(Struct_1(vec3<u32>(u_input.b, 23047u, 4294967295u), var_0.b, vec4<i32>(0i, var_0.c.x, -39618i, var_1.c.x)), Struct_1(var_1.b.zxy, var_1.b, vec4<i32>(-89942i, -37006i, var_0.c.x, var_0.c.x)), Struct_1(var_0.a, vec4<u32>(72601u, var_1.b.x, var_0.a.x, var_1.b.x), var_1.c))).b.wwz, vec4<u32>(~var_1.b.x, _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_div_u32(39118u, var_0.a.x)), ~(var_1.b.x | 21399u), var_0.a.x | 74086u), var_0.c), Struct_2(func_5(0u, Struct_1(vec3<u32>(1u, 0u, u_input.b), min(vec4<u32>(var_0.b.x, u_input.b, u_input.b, var_1.a.x), var_1.b), vec4<i32>(-1i, var_1.c.x, var_0.c.x, var_0.c.x)), Struct_2(func_5(u_input.b, Struct_1(var_0.a, vec4<u32>(var_1.a.x, var_0.a.x, var_0.b.x, var_0.a.x), vec4<i32>(1i, var_0.c.x, 27335i, -41312i)), Struct_2(Struct_1(var_1.a, var_1.b, vec4<i32>(0i, -38765i, var_0.c.x, var_0.c.x)), Struct_1(vec3<u32>(var_0.a.x, 4294967295u, 0u), var_1.b, vec4<i32>(u_input.a, -3941i, 30592i, var_1.c.x)), Struct_1(var_1.b.yyx, var_1.b, var_1.c))), Struct_1(vec3<u32>(u_input.b, 103747u, 0u), var_1.b, vec4<i32>(var_0.c.x, 0i, var_1.c.x, 0i)), func_5(4294967295u, Struct_1(var_1.a, var_1.b, vec4<i32>(u_input.a, var_0.c.x, -2147483647i, -2147483647i)), Struct_2(Struct_1(vec3<u32>(61323u, 4294967295u, 15579u), vec4<u32>(var_1.a.x, var_0.b.x, var_0.b.x, 78934u), var_0.c), Struct_1(vec3<u32>(0u, 13416u, var_1.b.x), var_0.b, vec4<i32>(var_1.c.x, u_input.a, var_0.c.x, -29765i)), Struct_1(var_1.a, vec4<u32>(43108u, var_0.b.x, 4298u, var_0.b.x), vec4<i32>(5315i, 1i, 5515i, var_0.c.x)))))), Struct_1(var_1.a, countOneBits(vec4<u32>(u_input.b, 0u, 18979u, 0u)), vec4<i32>(var_0.c.x, func_5(47563u, Struct_1(vec3<u32>(var_1.a.x, var_1.a.x, u_input.b), vec4<u32>(var_0.a.x, 0u, 4294967295u, 2178u), var_1.c), Struct_2(Struct_1(var_1.b.yxy, vec4<u32>(var_1.a.x, u_input.b, var_1.a.x, var_0.b.x), var_1.c), Struct_1(vec3<u32>(var_1.a.x, var_0.b.x, u_input.b), vec4<u32>(var_1.b.x, var_0.b.x, 1u, u_input.b), var_0.c), Struct_1(var_0.a, var_1.b, var_0.c))).c.x, var_1.c.x & u_input.a, ~6749i)), Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 12456u, 60567u), vec3<u32>(var_1.a.x, 8769u, 1u)), _wgslsmith_add_vec3_u32(var_0.a, var_0.a), firstTrailingBit(var_1.b.xwz)), var_1.b, vec4<i32>(-var_0.c.x, -2147483647i, var_0.c.x, 1i))));
    let var_2 = vec4<bool>(false, true, select(_wgslsmith_mult_i32(0i, 7066i) < var_0.c.x, true, -var_1.c.x > -(~(-13144i))), true);
    var var_3 = Struct_2(Struct_1(var_1.b.wyw, vec4<u32>(u_input.b, ~8024u, 34860u, _wgslsmith_dot_vec4_u32(~var_1.b, vec4<u32>(4294967295u, 48512u, u_input.b, var_0.a.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_clamp_i32(var_0.c.x, u_input.a, -23856i), 755i | var_1.c.x, u_input.a), ~var_1.c, vec4<i32>(1i, -2147483647i, u_input.a, -53116i))), Struct_1(func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 32990u), vec4<u32>(4294967295u, 39933u, 0u, var_0.a.x), var_1.c), Struct_1(vec3<u32>(var_1.a.x, 4294967295u, 43782u), vec4<u32>(var_0.b.x, 0u, var_0.b.x, 116772u), vec4<i32>(-13136i, u_input.a, 1i, 44251i)), Struct_1(var_1.b.xzw, vec4<u32>(var_0.b.x, 4294967295u, 34884u, 18574u), vec4<i32>(-33868i, var_1.c.x, var_1.c.x, u_input.a)))), Struct_1(var_1.a, var_0.b, var_1.c), Struct_1(vec3<u32>(4294967295u, var_0.b.x, 39273u), var_1.b, var_1.c))).a, _wgslsmith_mod_vec4_u32(vec4<u32>(69097u, u_input.b, func_2(Struct_2(Struct_1(vec3<u32>(u_input.b, var_1.b.x, 0u), var_0.b, var_1.c), Struct_1(var_0.b.xww, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), var_0.c), Struct_1(vec3<u32>(var_1.b.x, u_input.b, var_1.a.x), var_0.b, var_0.c))).b.x, ~1u), ~(~var_1.b)), vec4<i32>(-func_5(6999u, Struct_1(var_0.b.xxy, var_1.b, vec4<i32>(var_0.c.x, var_1.c.x, var_0.c.x, var_1.c.x)), Struct_2(Struct_1(vec3<u32>(78892u, var_0.b.x, 33107u), vec4<u32>(71540u, 4294967295u, 4294967295u, var_0.b.x), var_0.c), Struct_1(var_0.b.yzw, var_0.b, var_0.c), Struct_1(var_0.a, var_1.b, var_1.c))).c.x, _wgslsmith_clamp_i32(40971i, u_input.a, _wgslsmith_dot_vec2_i32(var_0.c.ww, vec2<i32>(-1i, u_input.a))), -u_input.a, var_1.c.x)), Struct_1(vec3<u32>(_wgslsmith_mult_u32(~u_input.b, ~25844u), 1u, ~70077u), firstTrailingBit(vec4<u32>(0u, var_0.a.x, u_input.b, u_input.b)) ^ max(~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 2620u), max(var_0.b, var_1.b)), select(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, u_input.a, var_0.c.x, var_1.c.x), var_1.c), var_1.c), firstTrailingBit(var_0.c << (var_0.b % vec4<u32>(32u))), !(var_2.x == true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(473f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_3.a, var_3.a, Struct_1(vec3<u32>(var_1.b.x, var_1.a.x, 41311u), var_1.b, var_3.c.c)), Struct_2(Struct_1(var_3.b.a, vec4<u32>(var_3.a.b.x, 1u, 18007u, 80532u), vec4<i32>(11871i, 1248i, var_0.c.x, var_3.c.c.x)), Struct_1(var_1.b.yyz, vec4<u32>(127367u, 46594u, 4294967295u, 9799u), var_3.c.c), Struct_1(var_3.c.a, var_0.b, var_0.c))), Struct_2(var_3.b, Struct_1(vec3<u32>(u_input.b, var_3.c.a.x, u_input.b), vec4<u32>(49129u, 1u, 17091u, 101098u), var_1.c), Struct_1(vec3<u32>(var_0.b.x, var_1.a.x, 97249u), var_0.b, var_0.c)), Struct_2(var_3.a, var_3.c, var_3.a)))) + 1030f)), ~35373u);
}

