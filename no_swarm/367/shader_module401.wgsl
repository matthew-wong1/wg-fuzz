struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1u, vec4<bool>(true, false, true, false), vec2<f32>(-249f, -715f), false, 33815u), Struct_1(56298u, vec4<bool>(false, true, false, false), vec2<f32>(-380f, 1055f), true, 40149u), Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec2<f32>(217f, -1065f), true, 5016u), Struct_1(38797u, vec4<bool>(false, true, false, true), vec2<f32>(684f, 835f), false, 37500u), Struct_1(11307u, vec4<bool>(false, true, false, false), vec2<f32>(878f, -125f), true, 109624u), Struct_1(0u, vec4<bool>(false, false, true, true), vec2<f32>(171f, -761f), true, 16348u), Struct_1(0u, vec4<bool>(true, false, true, true), vec2<f32>(-1494f, -299f), false, 54686u), Struct_1(12383u, vec4<bool>(false, false, true, false), vec2<f32>(-160f, 1095f), false, 4294967295u), Struct_1(4294967295u, vec4<bool>(true, false, false, true), vec2<f32>(-467f, 1000f), true, 12077u), Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec2<f32>(-521f, -1000f), true, 12414u), Struct_1(62669u, vec4<bool>(false, false, true, false), vec2<f32>(-112f, -550f), false, 1851u), Struct_1(19823u, vec4<bool>(true, true, true, false), vec2<f32>(1285f, 1846f), true, 95716u), Struct_1(10079u, vec4<bool>(true, true, true, false), vec2<f32>(-2305f, 730f), false, 4621u), Struct_1(0u, vec4<bool>(false, false, true, false), vec2<f32>(781f, -209f), true, 4294967295u), Struct_1(70775u, vec4<bool>(false, true, true, false), vec2<f32>(-1656f, -825f), true, 0u), Struct_1(0u, vec4<bool>(false, false, false, true), vec2<f32>(1342f, -1000f), true, 24980u), Struct_1(71880u, vec4<bool>(false, true, true, false), vec2<f32>(-819f, 1480f), true, 85771u), Struct_1(17052u, vec4<bool>(false, true, true, true), vec2<f32>(553f, 1717f), true, 4294967295u), Struct_1(25152u, vec4<bool>(false, false, true, true), vec2<f32>(548f, -1494f), true, 1u), Struct_1(99636u, vec4<bool>(false, false, false, false), vec2<f32>(-342f, 153f), false, 26665u), Struct_1(0u, vec4<bool>(true, true, false, true), vec2<f32>(2034f, -846f), true, 0u), Struct_1(0u, vec4<bool>(true, true, true, true), vec2<f32>(3058f, 392f), true, 4294967295u), Struct_1(15371u, vec4<bool>(false, true, false, true), vec2<f32>(2491f, 662f), false, 17406u), Struct_1(1u, vec4<bool>(true, true, false, false), vec2<f32>(567f, 2097f), false, 66259u), Struct_1(70812u, vec4<bool>(true, true, false, true), vec2<f32>(436f, -507f), false, 0u), Struct_1(36386u, vec4<bool>(false, false, true, true), vec2<f32>(209f, -821f), true, 73703u));

var<private> global2: Struct_1 = Struct_1(0u, vec4<bool>(true, true, false, false), vec2<f32>(-1712f, 905f), true, 4294967295u);

var<private> global3: vec3<f32> = vec3<f32>(-1396f, 318f, 515f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = Struct_2((_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global2.e, global2.e)), vec2<u32>(18240u, 0u) >> (vec2<u32>(33218u, global2.e) % vec2<u32>(32u))) >> (_wgslsmith_div_u32(1u, global2.e >> (u_input.a % 32u)) % 32u)) | ~u_input.a, vec2<i32>(~_wgslsmith_clamp_i32(arg_2 | -1246i, 1i, u_input.b), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-12198i, arg_2), reverseBits(-31928i), ~arg_2), min(1i, arg_2))), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 26u)], vec3<i32>(21349i, arg_2, ~arg_2) >> (vec3<u32>(1u, _wgslsmith_mult_u32(~59525u, 1u), (u_input.a ^ 14733u) << (~global2.a % 32u)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(12635u, global2.e, 51144u), max(vec3<u32>(global2.a, 5768u, 0u), vec3<u32>(global2.e, 3399u, u_input.a))), 2472u), 26u)]);
    let var_1 = vec3<u32>(0u, ~(var_0.a ^ 39310u), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, ~1u), 0u));
    global1 = array<Struct_1, 26>();
    global0 = array<vec3<bool>, 20>();
    var var_2 = vec2<bool>(!global2.b.x, var_0.c.d);
    return all(vec4<bool>(any(vec3<bool>(global2.b.x, false, !arg_0.x)), true, true, var_0.a > 0u));
}

fn func_2() -> Struct_2 {
    return Struct_2(u_input.a, ~firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, u_input.b)), Struct_1(firstLeadingBit(48759u), select(vec4<bool>(func_3(global2.b, global2.c.x, u_input.b), any(vec3<bool>(false, true, global2.d)), any(global2.b), !global2.b.x), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) + vec2<f32>(-258f, global3.x))), any(select(global2.b.yx, select(global2.b.xy, global2.b.yy, global2.b.yy), select(global2.b.xw, vec2<bool>(false, false), global2.d))), ~(u_input.a | 4294967295u)), abs(~(~firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)))), Struct_1(0u & ~u_input.a, select(select(select(vec4<bool>(false, global2.d, global2.d, global2.d), global2.b, global2.b), select(global2.b, global2.b, global2.b.x), vec4<bool>(true, global2.b.x, false, global2.d)), global2.b, !global2.d & true), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global2.c.x)), all(vec2<bool>(global2.b.x, false)) | !(u_input.b < -17129i), countOneBits(0u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    global2 = func_2().e;
    let var_0 = func_3(vec4<bool>(global2.d, 814f != arg_0.e.c.x, all(!arg_1.b.ww), arg_1.d), 366f, arg_0.d.x << (u_input.a % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.c.x, 1272f, _wgslsmith_f_op_f32(f32(-1f) * -639f))))));
    return arg_1;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global2 = func_4(func_2(), global1[_wgslsmith_index_u32(90752u, 26u)], vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(arg_0, arg_0), countOneBits(u_input.b), i32(-1i) * -arg_0), arg_0, -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, 12093i, arg_0), firstLeadingBit(arg_0)), abs(-48723i)), firstTrailingBit(1u));
    global0 = array<vec3<bool>, 20>();
    let var_0 = Struct_2(global2.a, vec2<i32>(func_2().b.x | u_input.b, max(arg_0 ^ -2147483647i, u_input.b)) & func_2().b, Struct_1(u_input.a, func_2().c.b, global2.c, func_4(func_2(), func_2().e, vec4<i32>(max(u_input.b, u_input.b), max(arg_0, arg_0), arg_0, 1i), u_input.a).d, ~select(u_input.a, global2.e, global2.d) | 1u), ~vec3<i32>(i32(-1i) * -12725i, u_input.b, arg_0), Struct_1(u_input.a, !(!vec4<bool>(true, global2.b.x, global2.d, global2.d)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global2.c.x) * vec2<f32>(366f, -1616f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global2.c.x))))), func_2().c.b.x | any(vec3<bool>(global2.b.x, false, false)), ~44542u));
    var var_1 = func_4(func_2(), var_0.c, vec4<i32>(var_0.b.x, ~_wgslsmith_clamp_i32(~u_input.b, _wgslsmith_mod_i32(u_input.b, -44686i), -1i), arg_0, ~firstTrailingBit(0i)), var_0.e.a).b;
    var var_2 = Struct_1(var_0.c.e, vec4<bool>(var_0.c.d, !any(vec4<bool>(true, true, var_1.x, global2.b.x)), !var_1.x, select(true, true, var_1.x)), global3.xx, func_2().c.c.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.c.x, global3.x))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(30068u, _wgslsmith_div_u32(abs(global2.a), _wgslsmith_clamp_u32(var_0.e.e, global2.a, global2.e))), select(u_input.a | 1u, ~_wgslsmith_div_u32(0u, global2.a), true)));
    return vec4<u32>(0u, u_input.a, var_2.e, var_2.a) >> (~vec4<u32>(0u, var_2.a, u_input.a, 8698u) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(0i);
    var_0 = ~(~vec4<u32>(_wgslsmith_sub_u32(min(global2.a, 88787u), 4294967295u), ~var_0.x << (31938u % 32u), var_0.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.a, 0u), 4294967295u)));
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(step(global2.c.x, 921f)), -1808f));
    let var_1 = _wgslsmith_f_op_f32(abs(func_2().e.c.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(109f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, -1039f), vec3<f32>(global2.c.x, global3.x, -1958f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2233f, var_2, var_1)))))))), var_0.wzy >> (~vec3<u32>(~107441u, 57475u, ~global2.e) % vec3<u32>(32u)), 1668f);
}

