struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = min(vec3<i32>(~(~arg_1.a), 1i, 2147483647i), select(u_input.d, select(~u_input.d, u_input.d, vec3<bool>(true, true, true)), any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1757f, -1366f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f) + _wgslsmith_f_op_f32(trunc(-717f))), -1657f));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = true;
    let var_4 = arg_1;
    return arg_1;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f), arg_2.x);
    var var_1 = Struct_2(vec4<u32>(80343u, u_input.b, min(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 1u, 32211u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(u_input.c, u_input.b, 4294967295u), vec3<u32>(1u, u_input.c, u_input.a))), select(max(u_input.c, 0u), u_input.b, true)), 1598u), ~((vec3<u32>(u_input.a, 38935u, 1u) & (vec3<u32>(57126u, u_input.b, u_input.a) ^ vec3<u32>(u_input.a, 24847u, 4294967295u))) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<u32>(u_input.c, u_input.b, u_input.b)) % vec3<u32>(32u))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.yz, arg_0.yz), _wgslsmith_sub_vec2_i32(arg_0.yy, u_input.d.yz) >> (~vec2<u32>(1u, 41815u) % vec2<u32>(32u))) >> (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1401u, 61903u), vec2<u32>(4294967295u, u_input.a))) % vec2<u32>(32u)), func_2(u_input.d.xx, arg_3, Struct_1(-29256i)));
    var var_2 = Struct_2(var_1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 20113u << (_wgslsmith_clamp_u32(var_1.a.x, 22241u, 54243u) % 32u), max(1u, firstLeadingBit(6522u))), select(vec3<u32>(u_input.a, var_1.b.x, u_input.c) ^ firstLeadingBit(var_1.a.wyz), vec3<u32>(u_input.a, ~var_1.a.x, u_input.b), !select(vec3<bool>(true, false, false), vec3<bool>(arg_1, false, false), vec3<bool>(false, arg_1, arg_1)))), abs(arg_0.zy), func_2(-vec2<i32>(27274i, arg_3.a), Struct_1(-select(0i, 0i, false)), func_2(-u_input.d.xz | arg_0.yz, var_1.d, Struct_1(var_1.c.x))));
    let var_3 = var_1.d;
    let var_4 = firstLeadingBit(-countOneBits(var_2.c)) >> (max(firstTrailingBit(min(var_2.b.zx, var_2.b.xy)), _wgslsmith_clamp_vec2_u32(var_2.a.yx, var_1.b.xz, var_2.b.xx)) % vec2<u32>(32u));
    return (_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(0i, var_4.x, 0i, 9397i)), firstLeadingBit(vec4<i32>(0i, var_2.c.x, -28248i, arg_3.a)), vec4<i32>(-2147483647i, var_4.x, arg_3.a, 1i)) & ~(-countOneBits(vec4<i32>(1i, arg_3.a, 7872i, -1i)))) >> (~vec4<u32>(94721u, var_2.b.x, 13341u, u_input.a) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(~vec4<u32>(1u, arg_0.b.x, 1u, _wgslsmith_mod_u32(3993u, ~u_input.a)), vec3<u32>(~(~_wgslsmith_clamp_u32(4294967295u, u_input.b, arg_0.a.x)), arg_0.a.x | abs(~arg_0.a.x), ~abs(18637u) >> ((~u_input.b & ~4294967295u) % 32u)), u_input.d.yx, arg_0.d);
    let var_1 = _wgslsmith_dot_vec4_i32((~min(vec4<i32>(var_0.c.x, 15264i, 18249i, 2147483647i), vec4<i32>(u_input.d.x, u_input.e, u_input.e, arg_0.c.x)) ^ vec4<i32>(var_0.c.x, _wgslsmith_mod_i32(0i, var_0.c.x), ~1i, reverseBits(20255i))) & _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0.c.x, u_input.e, u_input.e, -2147483647i) & ~vec4<i32>(-51977i, u_input.e, arg_0.c.x, u_input.d.x), vec4<i32>(-20406i, arg_0.c.x >> (arg_0.b.x % 32u), -13244i, max(u_input.d.x, arg_0.d.a)), (vec4<i32>(u_input.e, arg_0.d.a, arg_0.c.x, arg_0.d.a) ^ vec4<i32>(1i, 1i, 1i, 47912i)) | countOneBits(vec4<i32>(2147483647i, 0i, arg_0.c.x, 1949i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-2187i, arg_0.c.x, 21657i, -2147483647i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, 1i, -2147483647i, arg_0.c.x), vec4<i32>(var_0.d.a, 2147483647i, 2147483647i, -2147483647i))), -func_3(firstTrailingBit(vec3<i32>(1i, u_input.e, 0i)), all(vec4<bool>(false, true, true, false)), vec4<f32>(-512f, 485f, -214f, -988f), func_2(vec2<i32>(-29306i, var_0.c.x), Struct_1(u_input.e), Struct_1(u_input.d.x)))));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.wy, _wgslsmith_sub_vec2_u32(arg_0.b.zx << (vec2<u32>(25853u, 41065u) % vec2<u32>(32u)), vec2<u32>(~34535u, 0u))), ~vec2<u32>(_wgslsmith_mult_u32(abs(var_0.b.x), ~4294967295u), arg_0.b.x & 0u));
    var_2 = ~0u;
    let var_3 = -1076f;
    return select(select(vec4<bool>(arg_0.a.x > ~38364u, true, false, false), !vec4<bool>(true, true, select(true, false, false), true), any(vec2<bool>(true, true)) | true), select(vec4<bool>(true, !all(vec4<bool>(true, false, true, false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false)), abs(41315u) < (var_0.a.x >> (3173u % 32u))), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 1u, arg_0.a.x, 67276u), vec4<u32>(0u, var_0.a.x, var_0.b.x, arg_0.b.x)) > arg_0.b.x, true), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (any(vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec2<bool>(false, false)))) & true) == any(select(func_1(Struct_2(vec4<u32>(6841u, 30362u, 7399u, u_input.a), vec3<u32>(6985u, 28179u, u_input.b), vec2<i32>(-23332i, u_input.e), Struct_1(u_input.d.x))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)));
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_add_i32(-2147483647i, u_input.e));
    var_2 = func_2(max(vec2<i32>(_wgslsmith_add_i32(var_2.a, -5256i) >> (u_input.a % 32u), 4498i), vec2<i32>(-(~var_2.a), -var_2.a)), Struct_1(var_2.a ^ firstLeadingBit(u_input.e)), Struct_1(select(-var_2.a, 993i, false)));
    var var_3 = 35246i;
    var_2 = func_2(vec2<i32>(27522i, abs(~36627i | (2147483647i >> (u_input.c % 32u)))), func_2(~(~_wgslsmith_mod_vec2_i32(u_input.d.yy, u_input.d.zy)), Struct_1(u_input.d.x), Struct_1(~(~u_input.e))), Struct_1(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(-1584f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1308f))));
}

