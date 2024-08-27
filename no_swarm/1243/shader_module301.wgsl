struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = Struct_3(Struct_1(-1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1955f * 265f), _wgslsmith_f_op_f32(sign(-1453f))) + vec2<f32>(_wgslsmith_f_op_f32(max(-192f, 1091f)), -917f)), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), Struct_2(_wgslsmith_add_i32(-(~56753i), _wgslsmith_mod_i32(u_input.b.x, u_input.d) << (4294967295u % 32u)), Struct_1(min(~u_input.d, _wgslsmith_div_i32(-39582i, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1520f, 141f)))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), u_input.a.ww, Struct_1(13797i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1514f, -459f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(483f, -1201f)), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), vec4<bool>(true, true, true, true)), Struct_1(-21863i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1591f, -208f)))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), Struct_1(-1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, 1762f))))), vec4<bool>(true, true, true, true)), Struct_2(u_input.d, Struct_1(_wgslsmith_mult_i32(arg_0.a.x, 0i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(219f, -689f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(829f, 943f)))), vec4<bool>(false, true, any(vec3<bool>(true, true, true)), true)), u_input.c, Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1671f, 202f)), vec4<bool>(true, true, true, true)), Struct_1(arg_0.a.x, vec2<f32>(_wgslsmith_f_op_f32(sign(-509f)), _wgslsmith_f_op_f32(select(-781f, 470f, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_1 = vec2<i32>(var_0.b.a, -min(~(var_0.c.a >> (u_input.a.x % 32u)), -min(u_input.d, u_input.b.x)));
    let var_2 = var_0.b;
    global0 = vec3<i32>(0i, var_0.d.d.a, -global0.x);
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, 1i, -2147483647i), ~vec3<i32>(2147483647i, u_input.d, 11739i)), -arg_0.a.x & _wgslsmith_mult_i32(_wgslsmith_mod_i32(-6548i, var_1.x), -var_0.a.a), firstLeadingBit(_wgslsmith_mod_i32(1i, 2147483647i))), vec3<i32>(-2818i | u_input.d, global0.x, -12200i));
    return vec3<i32>(-_wgslsmith_dot_vec4_i32(~(-vec4<i32>(arg_0.a.x, var_2.a, 1647i, 42855i)), ~vec4<i32>(arg_0.a.x, var_1.x, var_0.a.a, var_2.e.a) ^ firstLeadingBit(vec4<i32>(14910i, var_2.e.a, -33205i, var_0.c.a))), var_0.b.b.a, 10234i);
}

fn func_2(arg_0: bool) -> vec4<i32> {
    global0 = vec3<i32>(firstTrailingBit(-u_input.b.x), -global0.x, u_input.d);
    let var_0 = u_input.c.x;
    global0 = select(_wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(38765i, u_input.b.x, -1i), vec3<i32>(-2147483647i, -42509i, -70215i), vec3<i32>(0i, 5032i, u_input.d)) | func_3(Struct_4(global0.zx)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 1i, global0.x), vec3<i32>(-3861i, 18675i, global0.x)) << (vec3<u32>(u_input.c.x, 16604u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_0, 68947u, 9371u))) % vec3<u32>(32u))), min(vec3<i32>(-69246i, max(37799i, select(56319i, -39041i, true)), i32(-1i) * -u_input.b.x), vec3<i32>(_wgslsmith_dot_vec2_i32(-global0.zy, vec2<i32>(0i, -9222i)), _wgslsmith_sub_i32(u_input.b.x, global0.x), u_input.d)), false);
    let var_1 = _wgslsmith_mult_i32(24297i, 0i) >> ((~_wgslsmith_clamp_u32(var_0 & var_0, var_0, 4294967295u) << (var_0 % 32u)) % 32u);
    global0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1 & -25766i, global0.x << (57635u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, 0i), vec3<i32>(global0.x, u_input.b.x, -10074i)), _wgslsmith_sub_i32(1i, 0i)), -vec4<i32>(global0.x, global0.x, 41846i, u_input.d)), -u_input.b.x, ~42573i);
    return -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_1), u_input.b.x), -(~vec2<i32>(-63988i, 1i))), 0i, 38173i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, abs(global0.x), 29288i), vec3<i32>(-var_1, 1i, _wgslsmith_mult_i32(global0.x, -2147483647i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> Struct_4 {
    global0 = arg_0.zzx;
    var var_0 = vec3<bool>(true, true, all(vec2<bool>(u_input.c.x >= 1u, false)));
    var var_1 = !var_0.x | select((var_0.x || true) & false, all(vec2<bool>(7382u == u_input.a.x, 17605u >= u_input.c.x)), true);
    let var_2 = ~u_input.a.zz;
    var var_3 = -(-abs(_wgslsmith_clamp_i32(u_input.d, -2147483647i, -2913i)) << (max(~(u_input.a.x | u_input.a.x), 1u) % 32u));
    return Struct_4(abs(global0.zz << (vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 1u)) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))) >> (~reverseBits(~vec4<u32>(u_input.c.x, u_input.c.x, 21223u, 61165u)) % vec4<u32>(32u)), u_input.b.x);
    global0 = ~abs(~vec3<i32>(0i, var_0.a.x, 0i) | vec3<i32>(1i, 26649i, -2147483647i));
    let var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), true, global0.x == func_3(func_4(vec4<i32>(u_input.b.x, u_input.d, global0.x, -11944i), -44752i)).x), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 4294967295u == u_input.c.x), any(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.b.x == 16520i, all(vec3<bool>(false, true, false)))), vec4<bool>(true, true, true, true)), !select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), true));
    var var_2 = 26917u;
    var var_3 = 561f;
    return Struct_1(-(select(28512i, -u_input.b.x, var_1.x) & func_2(true).x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1798f, -840f)), 1f), !select(!(!var_1), vec4<bool>(true, all(var_1.zwz), true, var_1.x && true), any(!var_1.www)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0.xx);
    global0 = countOneBits(-(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.a.x, u_input.b.x), vec3<i32>(-1i, global0.x, u_input.d)) >> (vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x) % vec3<u32>(32u))) >> (select(u_input.a.wwy, ~vec3<u32>(25313u, u_input.c.x, 2955u) ^ max(u_input.a.xxz, vec3<u32>(u_input.c.x, 21509u, u_input.a.x)), vec3<bool>(true, true, true)) % vec3<u32>(32u)));
    var var_1 = 43645u;
    var_1 = 45880u;
    var var_2 = 17264u;
    var var_3 = Struct_4(u_input.b);
    let var_4 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_3.a.x ^ 6310i, -1i) >> (u_input.a.x % 32u), var_3.a.x), func_1(), vec2<u32>(_wgslsmith_mult_u32(~(~120398u), min(~u_input.a.x, 14702u)), ~firstTrailingBit(~69759u)), Struct_1(~(-global0.x & _wgslsmith_sub_i32(var_0.a.x, -1i)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -1287f), _wgslsmith_f_op_f32(672f - 602f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(true, true)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~(countOneBits(u_input.a.wzx) | ~u_input.a.zzx) | vec3<u32>(4294967295u, u_input.c.x, _wgslsmith_clamp_u32(13915u, var_4.c.x, u_input.c.x)), ~var_4.c.x, _wgslsmith_f_op_f32(exp2(var_4.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b.b.x), 734f));
}

