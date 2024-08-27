struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-166f, true, false, 148214u), Struct_1(844f, false, false, 26780u), Struct_1(102f, false, true, 1u), Struct_1(-1641f, true, true, 723u), Struct_1(1000f, false, true, 4294967295u), Struct_1(-163f, false, false, 0u), Struct_1(1000f, true, false, 50777u), Struct_1(-109f, false, true, 4294967295u), Struct_1(1000f, true, false, 1u), Struct_1(231f, true, false, 1u), Struct_1(-1104f, true, false, 16964u), Struct_1(619f, false, false, 593u), Struct_1(583f, false, true, 34940u), Struct_1(1575f, false, true, 91915u), Struct_1(351f, false, false, 4294967295u), Struct_1(634f, true, false, 13880u), Struct_1(-317f, false, true, 7875u), Struct_1(-1000f, true, true, 0u), Struct_1(551f, true, false, 1u), Struct_1(283f, false, false, 4294967295u), Struct_1(1021f, true, true, 86066u), Struct_1(-864f, true, true, 54231u), Struct_1(1080f, false, false, 14785u), Struct_1(166f, true, false, 4294967295u));

var<private> global1: Struct_2;

var<private> global2: u32 = 0u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> bool {
    var var_0 = Struct_2(false, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.c.x), _wgslsmith_mult_u32(~(u_input.c.x ^ u_input.c.x), ~(u_input.c.x >> (u_input.c.x % 32u)))), 24u)], global1.b.d >> (abs(0u) % 32u));
    global2 = global1.b.d;
    global1 = Struct_2(all(!vec4<bool>(true, global1.a, !arg_0.x, false)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(-2859f * global1.b.a)), 554f), all(vec4<bool>(true && var_0.b.b, true, u_input.c.x > 4294967295u, arg_1)), 1i > u_input.d.x, 4294967295u), _wgslsmith_mod_u32(countOneBits(39248u), 1u));
    var_0 = Struct_2(false, global1.b, 85103u);
    global2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.c.x, global1.c, 7577u, global1.c) ^ min(vec4<u32>(63957u, 46909u, 11275u, 19966u), vec4<u32>(var_0.b.d, 41105u, 1u, u_input.c.x))), select(vec4<u32>(_wgslsmith_add_u32(global1.c, 28337u), u_input.c.x, global1.b.d, 9503u), vec4<u32>(_wgslsmith_div_u32(global1.c, u_input.c.x), reverseBits(2538u), var_0.c, min(global1.b.d, u_input.c.x)), false & !arg_0.x)), ~_wgslsmith_mult_u32(reverseBits(~u_input.c.x), _wgslsmith_sub_u32(~var_0.b.d, _wgslsmith_div_u32(u_input.c.x, u_input.c.x))));
    return global1.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 0u), vec2<u32>(arg_2.d, _wgslsmith_div_u32(4294967295u, arg_2.d))) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x | 68155u, 38317u), select(u_input.c.zz, vec2<u32>(u_input.c.x, 1u), any(vec4<bool>(arg_2.b, true, global1.b.b, false)))), u_input.c.yz);
    let var_1 = ~(~11854u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-660f + global1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1397f))) * arg_2.a), false, func_3(arg_0, true), ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(42268u, 1u), 0u)));
    let var_3 = _wgslsmith_div_f32(arg_2.a, -605f);
    global2 = 1u;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32) -> vec3<f32> {
    let var_0 = ~_wgslsmith_add_vec2_i32(select(firstLeadingBit(abs(vec2<i32>(1i, u_input.a))), vec2<i32>(u_input.d.x, select(arg_1.x, 2147483647i, global1.b.b)), (359f < arg_0.b.a) != false), arg_1.xx << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xy & u_input.c.zy) % vec2<u32>(32u)));
    global2 = ~u_input.c.x;
    global0 = array<Struct_1, 24>();
    var var_1 = -2147483647i;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(411f + -1256f), _wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(global1.b.a + 253f)) - vec3<f32>(var_2.b.a, _wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(abs(223f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.a, 470f)) + global1.b.a), _wgslsmith_f_op_f32(round(-740f)), global1.b.a)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = ~(~global1.b.d);
    var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.c.x), 4294967295u);
    var var_1 = arg_0.x;
    var_0 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a), -188f, _wgslsmith_f_op_f32(-2535f * 1615f)))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_2((u_input.a <= u_input.d.x) && true, func_2(arg_0, u_input.b.wzw, Struct_1(-1663f, arg_0.x, arg_0.x, global1.b.d)), ~abs(29129u)), vec3<i32>(1970i, _wgslsmith_clamp_i32(-1i, 1i, -arg_2.x), firstTrailingBit(i32(-1i) * -19017i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.x, -15466i), u_input.d.zz, countOneBits(arg_2.zz)), arg_2.yy))));
    return Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, abs(1i), -34486i, abs(firstLeadingBit(-43004i))), ~u_input.b));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global1 = arg_3;
    var var_0 = Struct_2(any(!select(select(vec2<bool>(arg_0.c, true), vec2<bool>(false, arg_0.c), vec2<bool>(false, arg_3.a)), vec2<bool>(true, true), arg_0.b || arg_0.b)), global0[_wgslsmith_index_u32(~(~arg_0.d), 24u)], select(arg_3.b.d, min(1u, select(abs(u_input.c.x), reverseBits(0u), true)), select(func_2(select(vec3<bool>(global1.a, arg_0.c, arg_0.b), vec3<bool>(true, arg_3.a, global1.a), arg_0.b), -u_input.d, Struct_1(137f, true, arg_0.c, global1.c)).c, u_input.b.x <= 1i, false)));
    var var_1 = ~vec3<i32>(arg_2.a.x, -15996i, _wgslsmith_sub_i32(1i, 2147483647i));
    let var_2 = var_0.b;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-867f * 234f), _wgslsmith_f_op_f32(1374f + 2342f))))), !(!var_2.b), arg_0.d < 1u, ~_wgslsmith_mult_u32(var_2.d, ~(~4294967295u)));
    return var_0.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(~_wgslsmith_sub_vec4_i32(max(vec4<i32>(-2147483647i, u_input.a, -1i, -11242i), u_input.b), firstTrailingBit(vec4<i32>(2147483647i, 3303i, -23649i, u_input.b.x))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(65819u, arg_0.d, arg_0.d, 6623u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d, 1u, 24247u, u_input.c.x), vec4<u32>(u_input.c.x, global1.b.d, 4294967295u, 4294967295u), vec4<u32>(global1.c, u_input.c.x, 4294967295u, 48770u)), firstTrailingBit(vec4<u32>(arg_0.d, 0u, 0u, 4294967295u)) ^ vec4<u32>(12527u, 4294967295u, 24360u, 46204u)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(~59388u, ~11554u)), countOneBits(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(69331u, 28942u) << (u_input.c.yx % vec2<u32>(32u))), vec2<u32>(func_5(global0[_wgslsmith_index_u32(global1.b.d, 24u)], vec3<f32>(827f, 1202f, -1119f), var_0, Struct_2(arg_0.b, global1.b, arg_0.d)).d, 45703u | u_input.c.x), vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), arg_0.d | u_input.c.x))));
    let var_2 = global0[_wgslsmith_index_u32(arg_0.d, 24u)];
    global0 = array<Struct_1, 24>();
    var var_3 = vec2<u32>(4294967295u, 22480u) | _wgslsmith_sub_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(21307u, var_2.d), vec2<u32>(27954u, u_input.c.x)), ~u_input.c.zx, true) >> (min(u_input.c.xx, max(vec2<u32>(0u, 4294967295u), vec2<u32>(global1.c, arg_0.d))) % vec2<u32>(32u)), min(u_input.c.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(7658u, arg_0.d), vec2<u32>(1u, global1.c))) ^ vec2<u32>(~41781u, _wgslsmith_div_u32(global1.b.d, 57515u)));
    return Struct_2(global1.b.c, Struct_1(-1872f, any(select(!vec3<bool>(true, global1.a, false), !vec3<bool>(true, arg_0.b, arg_0.b), arg_0.c)), !(any(vec4<bool>(false, var_2.b, arg_0.b, true)) && all(vec3<bool>(var_2.b, true, false))), ~_wgslsmith_dot_vec3_u32(~u_input.c, abs(vec3<u32>(var_2.d, global1.c, arg_0.d)))), ~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.b.d ^ u_input.c.x;
    let var_0 = func_6(func_5(Struct_1(-899f, true, false, ~0u | _wgslsmith_div_u32(u_input.c.x, 1u)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(step(global1.b.a, global1.b.a))), -429f, _wgslsmith_f_op_f32(179f * global1.b.a)), func_1(vec3<bool>(all(vec4<bool>(global1.a, global1.a, false, global1.a)), any(vec2<bool>(global1.a, global1.a)), !global1.b.b), u_input.c.x, _wgslsmith_mult_vec3_i32(-u_input.b.yyy, vec3<i32>(-31595i, u_input.a, u_input.a))), Struct_2(true, func_2(select(vec3<bool>(false, global1.a, global1.a), vec3<bool>(global1.a, global1.b.c, global1.b.c), vec3<bool>(false, false, global1.a)), -u_input.d, Struct_1(-375f, false, global1.a, 0u)), global1.b.d)), func_1(vec3<bool>(any(select(vec2<bool>(false, global1.b.b), vec2<bool>(false, false), global1.a)), false, true), ~u_input.c.x, firstLeadingBit(vec3<i32>(u_input.a, u_input.d.x, 2147483647i) ^ countOneBits(vec3<i32>(u_input.a, 1i, u_input.d.x)))));
    var var_1 = Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.d.x, ~u_input.d.x, _wgslsmith_sub_i32(0i, -46924i), _wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.d.zy))), u_input.b));
    let var_2 = _wgslsmith_f_op_f32(max(var_0.b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f))))));
    global1 = func_6(global0[_wgslsmith_index_u32(global1.b.d, 24u)], func_1(!vec3<bool>(true, !global1.b.b, select(false, var_0.b.c, var_0.b.c)), u_input.c.x, u_input.b.wzy));
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(32385u, u_input.c.x)), ~_wgslsmith_sub_u32(13747u, global1.c)), ~(~abs(vec2<u32>(var_0.c, 36245u)))), 1u ^ ~(~u_input.c.x ^ ~1u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global1.b.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.a + -471f)))), global1.b.a));
}

