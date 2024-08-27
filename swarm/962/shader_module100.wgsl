struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(44036i, vec2<i32>(-5459i, -22210i), true, vec2<bool>(true, false), -1778f), Struct_3(24710i, vec2<i32>(-34322i, 0i), false, vec2<bool>(true, false), -868f), Struct_3(1i, vec2<i32>(-50699i, 1i), false, vec2<bool>(false, true), -1000f), Struct_3(1i, vec2<i32>(i32(-2147483648), -16205i), true, vec2<bool>(true, true), 103f), Struct_3(-5272i, vec2<i32>(1i, 2147483647i), true, vec2<bool>(true, true), -2442f), Struct_3(i32(-2147483648), vec2<i32>(-25274i, 26170i), true, vec2<bool>(true, true), -437f), Struct_3(43874i, vec2<i32>(-1i, -1i), false, vec2<bool>(false, false), 1498f), Struct_3(-45597i, vec2<i32>(0i, -9233i), false, vec2<bool>(false, false), -1340f), Struct_3(i32(-2147483648), vec2<i32>(1i, 1224i), true, vec2<bool>(true, false), -998f), Struct_3(7557i, vec2<i32>(-7247i, 0i), true, vec2<bool>(true, false), -1865f), Struct_3(0i, vec2<i32>(1i, 1i), true, vec2<bool>(true, false), 1221f), Struct_3(15111i, vec2<i32>(1690i, 28883i), false, vec2<bool>(false, true), 2275f), Struct_3(1i, vec2<i32>(-10598i, -62911i), true, vec2<bool>(false, true), 776f), Struct_3(1i, vec2<i32>(14870i, 26196i), true, vec2<bool>(false, true), -294f));

var<private> global1: bool;

var<private> global2: vec3<f32> = vec3<f32>(1763f, -430f, 1000f);

var<private> global3: vec4<u32> = vec4<u32>(13979u, 0u, 106134u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 533f))), arg_0)));
    global2 = vec3<f32>(-867f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -1018f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(623f + -523f)), _wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = -2147483647i;
    let var_2 = reverseBits(107134u);
    var var_3 = vec4<u32>(~u_input.e, ~(0u >> ((~14067u >> (select(0u, u_input.b, arg_1.c) % 32u)) % 32u)), var_2, ~53960u);
    return u_input.e;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = ~_wgslsmith_add_u32(func_3(arg_1.e, arg_1, !select(vec3<bool>(arg_1.c, false, arg_2.c), vec3<bool>(arg_1.c, false, false), vec3<bool>(true, arg_2.d.x, true))), firstLeadingBit(~(u_input.b | 33086u)));
    var var_1 = Struct_3(-(~1i), firstLeadingBit(-arg_1.b), true, !(!arg_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e)), arg_1.d.x))));
    var var_2 = u_input.a.zxx;
    let var_3 = arg_1;
    let var_4 = var_3.d;
    return 1u;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = 2147483647i;
    global3 = ~(vec4<u32>(abs(firstLeadingBit(u_input.b)), 22658u, _wgslsmith_div_u32(func_2(global3.yxw, Struct_3(-2147483647i, vec2<i32>(arg_0, -1i), false, vec2<bool>(false, false), global2.x), Struct_3(0i, vec2<i32>(var_0, -2147483647i), true, vec2<bool>(true, true), global2.x)), ~u_input.e), 109291u) << ((min(vec4<u32>(20737u, 12155u, arg_1.x, 1u) & vec4<u32>(arg_2.x, u_input.e, arg_2.x, arg_2.x), vec4<u32>(u_input.b, 0u, arg_1.x, 12659u)) | vec4<u32>(arg_1.x, _wgslsmith_sub_u32(4294967295u, global3.x), 0u, ~1u)) % vec4<u32>(32u)));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(0u, 14u)], all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), vec2<bool>(true, true))));
    global0 = array<Struct_3, 14>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.e))) + -837f) - _wgslsmith_f_op_f32(global2.x * global2.x)), var_1.a.e);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = select(true, false, _wgslsmith_clamp_u32(u_input.b, ~u_input.e, func_1(-8977i, vec4<u32>(1u, global3.x, 48266u, 1u), global3.ww, u_input.a)) >= ~_wgslsmith_add_u32(global3.x, global3.x)) | (_wgslsmith_f_op_f32(-1083f - _wgslsmith_f_op_f32(trunc(-535f))) <= 595f);
    var var_1 = u_input.c.x;
    let var_2 = vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.wyy, ~global3.yyw, vec3<u32>(u_input.e, 0u, u_input.e)), max(abs(vec3<u32>(u_input.e, u_input.e, 0u)), ~global3.wzy)), 1u, u_input.e), func_3(-684f, Struct_3(u_input.c.x, -vec2<i32>(-1i, u_input.d.x), 398f <= _wgslsmith_f_op_f32(global2.x + global2.x), vec2<bool>(select(var_0, true, false), !var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-973f, 2547f) - _wgslsmith_f_op_f32(ceil(global2.x)))), vec3<bool>(any(vec4<bool>(var_0, false, true, var_0)), _wgslsmith_div_u32(u_input.e, 1u) >= global3.x, 31958u >= u_input.b)), ~23455u);
    global3 = _wgslsmith_add_vec4_u32(vec4<u32>(73465u, ~0u | ~(global3.x | global3.x), _wgslsmith_sub_u32(~u_input.b, global3.x), global3.x), var_2);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-451f, 555f, 1386f) - vec3<f32>(global2.x, global2.x, 1034f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1356f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, -108f, 650f)))))));
    var var_3 = global3.x;
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~4294967295u, 50145u)) & func_2(_wgslsmith_mult_vec3_u32(~var_2.xww, _wgslsmith_clamp_vec3_u32(global3.zzy, global3.xxz, var_2.wyy)), global0[_wgslsmith_index_u32(u_input.e, 14u)], Struct_3(u_input.c.x, firstLeadingBit(u_input.a.ww), true, select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), 1397f)), 1u, ~vec3<u32>(~countOneBits(u_input.e), 1u, ~(0u & u_input.e)), global2.x, -198f);
}

