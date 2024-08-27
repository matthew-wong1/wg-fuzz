struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(46274u, 26552u), vec2<u32>(18345u, 1u), vec2<u32>(24880u, 133602u), vec2<u32>(22381u, 4294967295u), vec2<u32>(15193u, 1u), vec2<u32>(23564u, 5082u), vec2<u32>(1u, 31296u), vec2<u32>(0u, 39040u), vec2<u32>(1u, 74090u), vec2<u32>(64286u, 1u), vec2<u32>(1u, 1u), vec2<u32>(10219u, 0u), vec2<u32>(4294967295u, 21184u), vec2<u32>(0u, 1u), vec2<u32>(18696u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(73924u, 12986u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 490u), vec2<u32>(14301u, 0u));

var<private> global2: vec3<u32>;

var<private> global3: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = firstTrailingBit(~global0.a);
    global3 = global2.x >= _wgslsmith_dot_vec4_u32(~select(vec4<u32>(global2.x, global0.a.x, global2.x, global2.x), vec4<u32>(0u, 1u, 4294967295u, global0.a.x), false) << ((~vec4<u32>(global0.a.x, 74177u, global0.a.x, var_0.x) << (~vec4<u32>(31465u, 17945u, 77502u, 73957u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(abs(~vec4<u32>(global0.a.x, u_input.b, var_0.x, global0.a.x))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))));
    var var_2 = Struct_1(countOneBits(_wgslsmith_clamp_vec3_u32(~(global0.a & vec3<u32>(u_input.c, 0u, 1u)), ~vec3<u32>(28677u, 19945u, var_0.x), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.yz, var_0.yy), 61801u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 61939u, 4294967295u, 33102u), vec4<u32>(var_0.x, global2.x, global2.x, u_input.b))))), _wgslsmith_f_op_f32(max(-411f, _wgslsmith_f_op_f32(188f - _wgslsmith_f_op_f32(-global0.b)))));
    let var_3 = global0.b;
    return global0.a;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(func_3(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false))), global0.b);
    var var_0 = Struct_1(~max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, 1u, 1u), u_input.d, u_input.d), select(_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(u_input.c, global0.a.x, u_input.b)), vec3<u32>(u_input.b, 1u, 27608u) >> (vec3<u32>(1u, u_input.b, 0u) % vec3<u32>(32u)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1434f - global0.b))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-224f, 603f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) * vec2<f32>(-872f, -188f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, var_0.b))))));
    let var_2 = vec4<bool>(!(any(vec2<bool>(false, false)) && true), !select(true, !any(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true))), false && (func_3(vec3<bool>(true, true, true)).x <= 70765u), any(select(vec2<bool>(true, true), vec2<bool>(var_0.b > 138f, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, 1489f, _wgslsmith_f_op_f32(f32(-1f) * -1654f), -570f)))));
    return Struct_1(~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(global0.a.x, var_0.a.x, 4294967295u)), firstLeadingBit(min(global0.a, vec3<u32>(4294967295u, global0.a.x, global2.x)))), _wgslsmith_f_op_f32(1766f - var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = arg_2.b;
    global3 = true;
    var var_1 = arg_2;
    var_1 = arg_0;
    global0 = Struct_1(abs(vec3<u32>(4294967295u, firstTrailingBit(1u), var_1.a.x)) | vec3<u32>(arg_1.x, ~_wgslsmith_clamp_u32(37899u, 4294967295u, u_input.b), 4294967295u), arg_2.b);
    return Struct_1(vec3<u32>(~(~92u) | ~_wgslsmith_add_u32(var_1.a.x, 0u), global2.x, arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_2.b) + arg_2.b), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-863f, arg_0.b))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    global0 = func_4(func_2(), vec3<u32>(global2.x, global2.x, global2.x), func_2(), select(!(2147483647i == u_input.a), all(vec3<bool>(false, true, true)) != true, select(true, true, true) || false));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -1000f, -995f) * vec3<f32>(-1444f, arg_1.b, -1078f))) + vec3<f32>(234f, global0.b, 522f)));
    var var_1 = func_4(arg_1, global0.a << (~func_2().a % vec3<u32>(32u)), Struct_1(vec3<u32>(68187u & func_4(Struct_1(u_input.d, -477f), u_input.d, Struct_1(arg_1.a, var_0.x), false).a.x, ~1u, u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_0.x, var_0.x))) + -1675f)), false);
    global0 = Struct_1(func_3(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, all(vec2<bool>(true, false)), true), select(true, false, true))), -811f);
    var var_2 = ~7417u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.x, Struct_1(~(vec3<u32>(4294967295u, u_input.b, u_input.c) ^ vec3<u32>(global0.a.x, global0.a.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1015f)) - _wgslsmith_f_op_f32(-global0.b))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * -684f)), global0.b))));
    var var_1 = ~(-(23296i ^ u_input.a));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(func_1(~0u, func_2(), vec2<f32>(var_0.b, var_0.b)).a.x, global0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 1u, 4294967295u, global2.x), ~vec4<u32>(38269u, 35591u, 14326u, global2.x) ^ abs(vec4<u32>(29448u, u_input.b, 4294967295u, 4294967295u))), 1u), 416f);
    var_0 = func_2();
    var var_3 = true;
    global3 = false;
    var_0 = func_4(Struct_1(~vec3<u32>(min(u_input.d.x, 85411u), ~1u, global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_div_vec3_u32(~u_input.d << (var_0.a % vec3<u32>(32u)), min(vec3<u32>(var_0.a.x, var_0.a.x, 6425u), var_2.a) ^ _wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(1u, global0.a.x, var_2.a.x))), func_4(var_2, ~(~var_0.a) | vec3<u32>(~4294967295u, countOneBits(var_0.a.x), var_2.a.x), Struct_1(u_input.d, 112f), !((global0.b != global0.b) || true)), all(vec3<bool>(-1451f < func_2().b, !(u_input.b != 0u), true)));
    global3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(~72503u, ~0u), func_4(var_2, u_input.d, func_2(), true).a.zz), var_2.b, select(~(-abs(vec2<i32>(u_input.e, -2147483647i))), max(vec2<i32>(-1i) * -vec2<i32>(u_input.e, u_input.a), -min(vec2<i32>(0i, u_input.a), vec2<i32>(-27534i, u_input.a))), select(vec2<bool>(global0.b > -1155f, true), vec2<bool>(var_0.a.x != global2.x, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), 0u, _wgslsmith_mod_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.a.x), vec2<u32>(79035u, 10295u))), _wgslsmith_mod_vec2_u32(func_1(1u, var_2, vec2<f32>(248f, 1000f)).a.zy, vec2<u32>(1u, var_0.a.x)) & (u_input.d.yy | global2.zy)));
}

