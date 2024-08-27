struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, false, false), 2147483647i, vec4<bool>(false, false, true, false), 1i, Struct_1(vec3<bool>(true, true, true), 0i, 850f));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, false), 1i, -1634f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(global2.a.x, global2.a.x, global1.e, vec4<i32>(2147483647i, ~(max(1i, 1i) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, global1.e.b), vec3<i32>(17239i, 0i, 22086i))), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.xzy, vec3<i32>(global1.e.b, global2.b, global1.d)), -u_input.b.zwz)), abs(1i)), global1.e);
    global0 = array<f32, 23>();
    var_0 = Struct_2(select(true, global2.a.x, any(vec4<bool>(global2.a.x, !global1.a.x, true, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(25371u, u_input.a, u_input.a, 94013u) << (vec4<u32>(100205u, u_input.a, 1u, 20361u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(73635u, 0u, 22766u, 34833u) & vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), ~vec4<u32>(u_input.a, 13395u, 4294967295u, u_input.a))) <= reverseBits(0u | u_input.a), global1.e, vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(global2.b, var_0.d.x, -2147483647i, var_0.e.b)), max(u_input.e, 29065i), u_input.b.x, -1i), Struct_1(global1.c.xyw, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.c.b, reverseBits(-1i), u_input.b.x), ~16885i), 942f));
    global1 = Struct_3(select(vec3<bool>(global2.a.x, global2.a.x || !global1.c.x, false), vec3<bool>(true, false, global2.b <= _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, u_input.d.x), vec2<i32>(-23190i, global1.e.b))), true), -1i, select(!select(vec4<bool>(global2.a.x, global1.a.x, var_0.c.a.x, true), select(vec4<bool>(var_0.c.a.x, global2.a.x, var_0.b, false), vec4<bool>(global2.a.x, false, false, global1.a.x), false), any(vec2<bool>(var_0.a, global2.a.x))), select(vec4<bool>(global1.e.c != var_0.c.c, true, all(vec2<bool>(global1.e.a.x, global1.e.a.x)), select(false, true, true)), vec4<bool>(1688f == global1.e.c, global2.a.x, !global2.a.x, !global1.c.x), vec4<bool>(true, true, true, var_0.b)), !select(vec4<bool>(false, true, true, global1.e.a.x), !global1.c, vec4<bool>(var_0.e.a.x, true, true, var_0.a))), -1i | _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(_wgslsmith_sub_i32(12258i, -20349i), max(-1i, -2147483647i), 14653i, _wgslsmith_mult_i32(global2.b, u_input.d.x))), global1.e);
    global2 = var_0.e;
    return _wgslsmith_add_vec4_i32(countOneBits(~(~u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c.x), firstTrailingBit(var_0.d.wx)), 1i << (u_input.a % 32u), -2147483647i, 12653i), ~(firstLeadingBit(u_input.b) ^ u_input.b)));
}

fn func_2() -> vec4<i32> {
    return -func_3() >> (vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 4294967295u ^ u_input.a), ~max(_wgslsmith_clamp_u32(205u, 1u, 0u), 20003u), 0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1241u)), vec4<u32>(~0u, reverseBits(u_input.a), 29927u, min(u_input.a, u_input.a)))) % vec4<u32>(32u));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = 48733i & _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.d.x, -(-44177i & global2.b), global2.b, global2.b));
    let var_1 = func_2();
    global1 = Struct_3(select(global2.a, !select(select(global1.c.wyz, vec3<bool>(global2.a.x, false, false), global1.a), vec3<bool>(true, true, true), vec3<bool>(global1.a.x, global1.a.x, false)), true), max(-1084i, -2147483647i), select(vec4<bool>(!(global2.a.x | global1.a.x), !any(vec3<bool>(true, false, global2.a.x)), !any(vec2<bool>(false, global2.a.x)), global1.e.a.x), !(!vec4<bool>(false, false, true, global1.a.x)), !global1.c), 25651i, Struct_1(global2.a, 22107i, global2.c));
    global0 = array<f32, 23>();
    var var_2 = Struct_2(false, all(!global1.e.a), Struct_1(!global1.a, _wgslsmith_dot_vec3_i32((vec3<i32>(2521i, u_input.c.x, -1i) | var_1.zzx) ^ -var_1.wwz, ~func_2().zwz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(203f, global1.e.c)) - _wgslsmith_f_op_f32(step(arg_0, global0[_wgslsmith_index_u32(4294967295u, 23u)]))))), ~vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.d, var_1.xz), countOneBits(i32(-1i) * -4766i), min(_wgslsmith_mod_i32(u_input.d.x, 1i), _wgslsmith_clamp_i32(global2.b, global2.b, global1.d)), ~(~(-101387i))), Struct_1(global2.a, u_input.c.x, global2.c));
    return Struct_3(select(select(global2.a, select(vec3<bool>(global2.a.x, global1.a.x, true), vec3<bool>(var_2.e.a.x, var_2.e.a.x, true), !vec3<bool>(global2.a.x, global1.a.x, var_2.e.a.x)), all(global1.e.a)), select(vec3<bool>(all(var_2.c.a.yx), global1.e.a.x, true), global2.a, !select(var_2.c.a, vec3<bool>(global2.a.x, false, var_2.a), vec3<bool>(var_2.e.a.x, global2.a.x, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(226f, global0[_wgslsmith_index_u32(0u, 23u)])), -616f, false)) > _wgslsmith_f_op_f32(max(global1.e.c, 1067f))), ~global1.d, !(!(!(!vec4<bool>(var_2.e.a.x, true, true, true)))), ~(-34473i), Struct_1(select(select(select(vec3<bool>(global1.a.x, global2.a.x, true), vec3<bool>(false, global2.a.x, var_2.b), global1.e.a), !vec3<bool>(false, true, global2.a.x), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), !(!vec3<bool>(global1.c.x, false, var_2.b))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1689f, -456f)))) - global2.c)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    global1 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 23u)] - _wgslsmith_f_op_f32(abs(-498f))))));
    global2 = Struct_1(!(!select(!global1.e.a, vec3<bool>(true, arg_0.a.x, true), select(vec3<bool>(global1.c.x, arg_0.a.x, true), arg_0.e.a, vec3<bool>(false, global1.a.x, true)))), _wgslsmith_mult_i32(2396i, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.c - _wgslsmith_f_op_f32(-arg_0.e.c)))));
    global0 = array<f32, 23>();
    global1 = Struct_3(arg_0.c.zwy, 1i, !vec4<bool>(true, func_1(_wgslsmith_div_f32(-972f, -240f)).c.x, arg_0.a.x, arg_1.x), 26731i, func_1(_wgslsmith_f_op_f32(exp2(global2.c))).e);
    var var_0 = Struct_4(~(~abs(~vec3<i32>(global1.d, global1.b, -3939i))), 1u, Struct_2(true, 1697f != global2.c, arg_0.e, ~_wgslsmith_add_vec4_i32(u_input.b, abs(vec4<i32>(global1.e.b, u_input.c.x, global1.d, u_input.e))), arg_0.e), Struct_3(global2.a, reverseBits(21276i), func_1(307f).c, ~abs(-global1.d), func_1(367f).e));
    return func_1(func_1(var_0.d.e.c).e.c);
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    let var_0 = vec3<bool>(global2.a.x, u_input.a >= arg_0.b, global2.a.x);
    let var_1 = Struct_2(true, all(vec2<bool>(!var_0.x, true)), func_4(func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.e.c * global0[_wgslsmith_index_u32(u_input.a, 23u)])))), !(!(!var_0))).e, _wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, global2.b, -2147483647i, -1i) ^ (u_input.b ^ vec4<i32>(global1.b, 2545i, arg_0.a.x, 1i))), vec4<i32>(-1i) * -func_2(), -vec4<i32>(12607i, abs(19171i), _wgslsmith_sub_i32(global2.b, global2.b), abs(global1.e.b))), global1.e);
    global0 = array<f32, 23>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1.e.c))));
    global0 = array<f32, 23>();
    return StorageBuffer(firstTrailingBit(min(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 12952u), countOneBits(arg_0.b), u_input.a), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 33886u, 21441u), vec3<u32>(arg_0.b, 25249u, u_input.a) ^ vec3<u32>(0u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.e.c)))))), abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, u_input.a, arg_0.b), min(vec3<u32>(arg_0.b, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 6437u)), select(vec3<u32>(arg_0.b, arg_0.b, 1u), vec3<u32>(arg_0.b, 66831u, u_input.a), vec3<bool>(false, true, false))), vec3<u32>(u_input.a, 0u, 4294967295u) >> (vec3<u32>(1u, u_input.a, arg_0.b) % vec3<u32>(32u)))), -363f, _wgslsmith_f_op_f32(f32(-1f) * -1281f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_4(-(firstTrailingBit(vec3<i32>(global2.b, -2147483647i, 2147483647i)) | vec3<i32>(-4464i, -38112i, -2147483647i)), u_input.a, Struct_2(global1.e.a.x, global1.c.x, Struct_1(vec3<bool>(global1.e.a.x, false, global2.a.x), -52976i, global1.e.c), abs(u_input.b) ^ (u_input.b >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u))), global1.e), func_4(func_1(952f), global1.c.yxy)));
}

