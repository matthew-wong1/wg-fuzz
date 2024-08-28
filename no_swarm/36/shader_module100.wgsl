struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-611f, 35766i, vec2<bool>(true, false), vec4<bool>(true, false, false, true), vec2<i32>(-38197i, 0i)), Struct_1(-702f, -30443i, vec2<bool>(false, false), vec4<bool>(true, true, true, true), vec2<i32>(0i, i32(-2147483648))));

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 18>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = vec4<f32>(829f, _wgslsmith_f_op_f32(max(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(822f + _wgslsmith_f_op_f32(-885f * -1930f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1557f);
    let var_1 = Struct_1(global0.a.a, _wgslsmith_mult_i32(global0.b.e.x, global0.a.e.x), global0.b.d.yx, global0.a.d, min(~vec2<i32>(u_input.b.x, arg_2.b.b) & arg_2.b.e, u_input.e));
    return abs(vec2<i32>(~firstTrailingBit(arg_0), -arg_2.b.e.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = !(!select(vec3<bool>(0u == u_input.a, global1.x, true), global1.zyy, vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1.x, 18u)] && false, -578f <= global0.a.a)));
    var var_1 = vec3<bool>(any(!(!(!global0.a.d.wwy))), (u_input.c.x >> (~u_input.d % 32u)) <= reverseBits(countOneBits(_wgslsmith_clamp_i32(u_input.c.x, 28143i, global0.b.b))), !any(select(global1.zxw, vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x))));
    let var_2 = select(global0.b.b, abs(arg_0.x >> (_wgslsmith_clamp_u32(u_input.a, arg_1.x, u_input.a) % 32u)), false) ^ u_input.b.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.b.a, arg_2.a))))))), -arg_2.b & (_wgslsmith_clamp_i32(1i, func_2(u_input.b.x, arg_1.yx, Struct_2(Struct_1(global0.b.a, global0.a.b, vec2<bool>(global0.a.c.x, true), vec4<bool>(var_1.x, true, false, false), vec2<i32>(-273i, arg_2.e.x)), Struct_1(695f, var_2, vec2<bool>(var_1.x, global0.b.c.x), arg_2.d, u_input.c.yz))).x, _wgslsmith_mult_i32(global0.a.e.x, -46707i)) >> (u_input.a % 32u)), select(!global1.yz, global0.a.c, vec2<bool>(false, false)), vec4<bool>(!select(arg_2.c.x | global0.b.c.x, all(var_1.zy), var_1.x), arg_2.d.x, any(global1.yw), any(select(select(global1.zz, var_0.xy, true), vec2<bool>(arg_2.d.x, true), vec2<bool>(global0.b.d.x, false)))), vec2<i32>(_wgslsmith_sub_i32(-(~(-11374i)), -arg_0.x), arg_0.x));
    global1 = var_3.d;
    return select(var_1.zz, global0.a.d.zz, var_1.xy);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    global2 = array<bool, 18>();
    let var_0 = !(!global1.x);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(global0.b.a, 679f)), arg_0.b, select(vec2<bool>(global2[_wgslsmith_index_u32(50953u, 18u)], false), global0.a.d.wy, all(global1.xy)), select(select(vec4<bool>(false, true, false, true), global0.b.d, false), select(arg_0.d, global0.b.d, vec4<bool>(global1.x, false, false, global1.x)), all(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)], false, false))), vec2<i32>(73345i, _wgslsmith_mod_i32(global0.b.e.x, arg_0.e.x))), Struct_1(434f, func_2(-2147483647i, ~vec2<u32>(4294967295u, u_input.a), Struct_2(arg_0, arg_0)).x, vec2<bool>(global0.b.a <= global0.b.a, arg_0.c.x), !(!arg_0.d), vec2<i32>(max(-28049i, global0.a.e.x), u_input.c.x))));
    var var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(15356u, 1u, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.a))), _wgslsmith_div_vec4_u32(vec4<u32>(~61215u, countOneBits(u_input.a), ~u_input.d, firstTrailingBit(55383u)), firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.d, u_input.a))));
    let var_3 = ~(1i << (var_2.x % 32u));
    return global0.a.a;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = vec4<i32>(-1i) * -(~(~(-vec4<i32>(arg_2, 7849i, -19092i, -710i))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_1 * -1000f), arg_0.a.a, arg_0.b.a);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), ~abs(-1i), global1.zz, global0.a.d, vec2<i32>(-u_input.b.x, ~arg_0.a.e.x)), arg_0.a));
    var var_3 = abs(-12414i);
    let var_4 = _wgslsmith_mod_vec2_u32(~firstLeadingBit(~countOneBits(vec2<u32>(1u, 52268u))), select(~abs(vec2<u32>(1u, u_input.d)), ~vec2<u32>(102527u, u_input.d) << ((firstTrailingBit(vec2<u32>(u_input.d, 1u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 84970u), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)), select(func_3(vec2<i32>(31588i, -4879i) << (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)), vec3<u32>(u_input.a, 10424u, 82606u) ^ vec3<u32>(u_input.d, u_input.d, u_input.d), arg_0.a, select(var_2.a.b.d.wzw, vec3<bool>(arg_0.a.d.x, true, var_2.a.a.d.x), var_2.a.a.d.x)), global0.b.d.xz, !all(vec3<bool>(false, false, arg_0.a.d.x)))));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    global0 = func_5(Struct_2(global0.a, Struct_1(global0.a.a, abs(u_input.b.x), vec2<bool>(global0.a.e.x == global0.a.b, true), global0.a.d, func_2(_wgslsmith_add_i32(2147483647i, global0.a.b), ~vec2<u32>(arg_2, 5579u), Struct_2(Struct_1(global0.a.a, u_input.e.x, global1.yz, vec4<bool>(true, global1.x, false, true), u_input.c.zz), Struct_1(-1428f, 45997i, vec2<bool>(false, true), vec4<bool>(false, false, true, true), u_input.c.zz))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(global0.b.a - 1802f), global0.a.e.x, func_3(vec2<i32>(0i, u_input.c.x), vec3<u32>(u_input.d, u_input.a, u_input.a), global0.a, vec3<bool>(false, true, false)), vec4<bool>(true, global0.b.d.x, arg_1.x, global2[_wgslsmith_index_u32(32097u, 18u)]), vec2<i32>(u_input.e.x, 4511i)), u_input.b.x, abs(abs(12833i)))))), 22284i);
    var var_0 = abs(abs(countOneBits(~vec2<u32>(1u, 19673u))));
    global2 = array<bool, 18>();
    var_0 = min(~(~vec2<u32>(25546u, 35921u)) ^ vec2<u32>(_wgslsmith_add_u32(max(u_input.d, 4391u), firstLeadingBit(26302u)), 51806u), min(abs(min(vec2<u32>(arg_0, 84968u), vec2<u32>(var_0.x, u_input.a))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_0), vec2<u32>(28693u, arg_0)) % vec2<u32>(32u)), reverseBits(abs(vec2<u32>(var_0.x, 88727u) << (vec2<u32>(arg_2, var_0.x) % vec2<u32>(32u))))));
    let var_1 = global1.x;
    return global0.a.a;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec2_u32(max(vec2<u32>(~0u, ~u_input.d) << (vec2<u32>(_wgslsmith_mod_u32(29334u, u_input.d), min(u_input.a, u_input.a)) % vec2<u32>(32u)), firstTrailingBit(min(vec2<u32>(24651u, u_input.d), vec2<u32>(u_input.d, 9797u))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(11927u, 4294967295u) << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(_wgslsmith_sub_u32(u_input.a, 96037u), 4294967295u), vec2<u32>(43378u, countOneBits(abs(~1u))));
    let var_1 = true;
    let var_2 = Struct_1(global0.b.a, -2147483647i, vec2<bool>(true, true), select(global0.b.d, !select(vec4<bool>(true, global0.a.c.x, arg_0.a.c.x, true), !global0.a.d, !global1.x), all(!(!vec3<bool>(arg_0.a.d.x, true, arg_3)))), arg_0.a.e);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(_wgslsmith_add_u32(var_0.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 26837u, 46333u), vec4<u32>(0u, var_0.x, u_input.a, u_input.a)), var_0.x), false), _wgslsmith_add_vec3_u32(reverseBits(min(vec3<u32>(u_input.d, 298u, 0u), vec3<u32>(var_0.x, 31416u, u_input.d))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.d, 80321u, 1u)), vec3<u32>(65455u, 1u, var_0.x), vec3<u32>(46439u, 64691u, 22460u)))), ~var_0.x, select(var_0.x, var_0.x, true), 33409u);
    var var_4 = abs(u_input.c) & (vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b, 1505i, 17332i, 0i), vec4<i32>(global0.a.e.x, 1i, -1i, -1i)), vec4<i32>(1540i, u_input.c.x, var_2.b, var_2.b)), _wgslsmith_clamp_i32(1i, -5080i, 1i) ^ abs(-17957i), min(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_add_i32(47471i, 33776i))) & -firstTrailingBit(u_input.c | vec3<i32>(2147483647i, var_2.e.x, -2147483647i)));
    return Struct_3(func_5(Struct_2(Struct_1(arg_2, func_5(Struct_2(var_2, Struct_1(var_2.a, -2147483647i, vec2<bool>(global0.b.c.x, true), global0.a.d, arg_0.b.e)), global0.b.a, 31114i).b.b, func_3(vec2<i32>(-27621i, u_input.c.x), vec3<u32>(u_input.d, var_3.x, 14131u), Struct_1(-1000f, -30814i, arg_0.b.c, arg_0.b.d, arg_0.b.e), arg_0.a.d.wzx), var_2.d, _wgslsmith_mod_vec2_i32(vec2<i32>(35203i, global0.a.b), u_input.b)), func_5(arg_0, -194f, ~46323i).a), _wgslsmith_f_op_f32(trunc(-545f)), ~(~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(Struct_1(-408f, ~(-2147483647i) & abs(global0.a.e.x), !select(vec2<bool>(true, false), global0.b.c, global1.yw), global0.b.d, vec2<i32>(global0.b.b, ~19595i)), Struct_1(_wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(func_1(20675u, global0.a.d, u_input.a))), countOneBits(-global0.a.b), !select(global1.zx, global1.wy, true), !(!vec4<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.d, 18u)], global1.x, true)), global0.a.e)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1290f, 167f, global0.b.a), vec3<f32>(-1501f, -108f, -1451f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1165f, global0.a.a, -2960f), vec3<f32>(861f, global0.a.a, global0.a.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.a, global0.b.a, -1229f))))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1996f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(abs(-955f)))))), (~u_input.a < (u_input.a >> (u_input.a % 32u))) && !(true && !global0.b.c.x));
    global1 = !func_5(func_5(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.a + -541f) - _wgslsmith_div_f32(-1189f, global0.b.a)), -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_1(u_input.d, vec4<bool>(global0.b.d.x, false, global1.x, global1.x), u_input.d))), global0.a.a), -func_5(Struct_2(var_0.a.b, global0.b), _wgslsmith_f_op_f32(floor(global0.a.a)), 1i).a.b).a.d;
    var var_1 = _wgslsmith_f_op_f32(select(-1152f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1555f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(~u_input.a, u_input.d >> (1u % 32u)), func_6(Struct_2(Struct_1(444f, -2147483647i, global1.wx, var_0.a.a.d, u_input.b), var_0.a.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.a, -527f, global0.b.a), vec3<f32>(global0.a.a, global0.b.a, global0.a.a), true)), -1466f, select(false, global0.a.d.x, false)).a.b.d, min(~u_input.d, ~4294967295u)))), global0.a.c.x));
    global1 = select(func_6(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a, 773f, -997f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2063f, 736f, var_0.a.b.a))))), global0.b.a, false | select(false, var_0.a.a.c.x, u_input.a == u_input.a)).a.b.d, vec4<bool>(func_6(var_0.a, vec3<f32>(1325f, -1001f, global0.a.a), -1094f, false).a.b.c.x, false, global1.x, false), all(func_6(Struct_2(var_0.a.a, func_6(Struct_2(global0.a, Struct_1(var_0.a.b.a, 1i, vec2<bool>(false, var_0.a.a.d.x), vec4<bool>(var_0.a.b.c.x, true, global2[_wgslsmith_index_u32(u_input.d, 18u)], global0.b.d.x), var_0.a.b.e)), vec3<f32>(-2116f, -954f, var_0.a.a.a), var_0.a.a.a, var_0.a.a.d.x).a.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.a, var_0.a.a.a, 2897f) - vec3<f32>(1000f, -1232f, 1690f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, global0.a.a, 154f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 124f), _wgslsmith_f_op_f32(var_0.a.b.a + global0.b.a))), false).a.b.d.wzz));
    var var_2 = Struct_3(var_0.a);
    var var_3 = _wgslsmith_sub_u32(38161u, firstTrailingBit(reverseBits(5045u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, var_2.a.b.a, 1166f, var_0.a.a.a)))))), countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 0u), ~vec3<u32>(u_input.a, 9176u, 0u))), _wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(870f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, 265f, var_0.a.a.a, 175f) * vec4<f32>(var_0.a.a.a, 1000f, global0.a.a, 873f))))), -1i);
}

