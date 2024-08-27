struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), Struct_1(false)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 24>;

var<private> global3: vec2<bool>;

var<private> global4: u32 = 35191u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = firstTrailingBit(~countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 33406i, u_input.c, u_input.c), vec4<i32>(-6701i, u_input.e, 2147483647i, u_input.b)), vec4<i32>(1i, u_input.d, u_input.e, u_input.e), vec4<i32>(84722i, -2147483647i, 14245i, -73927i) | vec4<i32>(u_input.c, u_input.e, 2147483647i, u_input.d))));
    global1 = Struct_1(arg_0 < 4294967295u);
    let var_1 = select(vec4<u32>(42020u, _wgslsmith_sub_u32(min(30683u, ~u_input.a), 4294967295u), reverseBits(~0u), max(0u, 4294967295u) >> (u_input.a % 32u)), abs(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(5666u, u_input.a, u_input.a, 6878u), ~vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(1u, 25995u, arg_0, arg_0)), ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, arg_0))), 2147483647i < u_input.d);
    var var_2 = -979f;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(534f)))) >= _wgslsmith_f_op_f32(-1396f + _wgslsmith_f_op_f32(max(173f, 314f)))), Struct_1(true), Struct_1(global1.a));
    return Struct_2(var_3.c, Struct_1(false), Struct_1(any(vec2<bool>(true, 0i <= var_0.x))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.a;
    global0 = array<Struct_2, 27>();
    let var_1 = -586f;
    let var_2 = _wgslsmith_mod_i32(~(abs(u_input.c) ^ u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, ~abs(-2147483647i)), -vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.c), vec3<i32>(u_input.e, u_input.b, 27296i)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, 195f, 236f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -908f, 1046f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-170f - -1352f), 1f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, 721f, 1167f, var_1)))))))));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(min(u_input.a, u_input.a), u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), abs(max(vec2<u32>(u_input.a, 0u), vec2<u32>(18516u, u_input.a))) << ((select(vec2<u32>(80792u, 1u), vec2<u32>(47080u, u_input.a), arg_0.xy) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global1 = Struct_1(any(arg_0.zz));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(799f)) + _wgslsmith_f_op_f32(641f - -298f)))), _wgslsmith_f_op_f32(ceil(-461f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(692f, -1804f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(791f + -270f)))))));
    let var_2 = func_2(var_0.x, arg_0).b;
    let var_3 = !vec4<bool>(func_3(Struct_2(var_2, func_2(u_input.a, arg_0).b, var_2)), true, any(vec4<bool>(false, var_2.a, global3.x, false)), var_2.a & true);
    return Struct_2(var_2, var_2, var_2);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~(~u_input.a), 24u)];
    global0 = array<Struct_2, 27>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-177f)) - arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) + arg_0.x)), arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -743f), _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -510f));
    var var_2 = func_4(!select(!select(vec3<bool>(false, false, global3.x), vec3<bool>(global3.x, global1.a, arg_1.a.a), vec3<bool>(var_0.b.a, true, var_0.a.a)), !select(vec3<bool>(true, true, global1.a), vec3<bool>(true, global3.x, global3.x), true), !vec3<bool>(var_0.c.a, false, global3.x))).c;
    global4 = ~0u;
    return ~_wgslsmith_add_u32(u_input.a | u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(func_5(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-732f)))))), -1939f), func_4(vec3<bool>(arg_0.a, any(vec2<bool>(global1.a, global1.a)), func_3(func_2(0u, vec3<bool>(false, true, global1.a))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, _wgslsmith_f_op_f32(f32(-1f) * -1035f), -527f)))), max(_wgslsmith_div_vec3_i32(vec3<i32>(~(-86493i), _wgslsmith_dot_vec4_i32(vec4<i32>(25471i, u_input.e, 753i, 1i), vec4<i32>(u_input.e, u_input.d, 20936i, u_input.b)), 1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, u_input.e), vec3<i32>(-1i, 0i, 28524i))), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.b, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.d, u_input.e), vec3<i32>(-1286i, 34472i, -14336i), vec3<i32>(0i, 2147483647i, u_input.b)))))), 27u)];
    var var_1 = vec2<u32>(1u, u_input.a);
    let var_2 = arg_0;
    let var_3 = Struct_1(true);
    global0 = array<Struct_2, 27>();
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_dot_vec2_u32(arg_1.yz, arg_1.xz), vec3<bool>(!any(!vec3<bool>(arg_0.a, global3.x, false)), arg_0.a, !arg_0.a && true));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1066f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1216f + -203f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(240f + 1238f) - -1906f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1897f, -1630f) - _wgslsmith_f_op_f32(f32(-1f) * -1395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + 484f), true)))));
    let var_2 = Struct_1(!all(select(select(vec4<bool>(false, arg_0.a, true, global3.x), vec4<bool>(false, true, global3.x, global1.a), var_0.c.a), select(vec4<bool>(true, false, true, var_0.b.a), vec4<bool>(global3.x, false, false, var_0.b.a), vec4<bool>(global1.a, global3.x, true, var_0.b.a)), true)));
    var var_3 = func_1(func_2(func_5(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 24u)], _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -550f) + vec3<f32>(-1284f, var_1.x, var_1.x)), vec3<f32>(234f, var_1.x, var_1.x))), -(~vec3<i32>(-34936i, -6672i, u_input.d))), vec3<bool>(true, var_0.b.a, global3.x)).a, true);
    let var_4 = true;
    return func_2(firstTrailingBit(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, arg_1.x, u_input.a)), reverseBits(arg_1.yzy))), !select(select(!vec3<bool>(var_0.a.a, false, false), !vec3<bool>(false, arg_0.a, var_2.a), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), var_0.a.a), !vec3<bool>(var_2.a, var_0.c.a, var_0.c.a), select(vec3<bool>(var_2.a, var_2.a, false), vec3<bool>(var_2.a, true, true), false)), vec3<bool>(global3.x, false, func_3(Struct_2(var_2, arg_0, Struct_1(false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(Struct_1(select(any(vec3<bool>(false, false, global1.a)), true, true)), all(!(!vec2<bool>(true, global3.x)))), ~(~vec4<u32>(~u_input.a, ~u_input.a, u_input.a, 34829u)));
    var var_1 = var_0.a;
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(select(0u, 4294967295u, false)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 1u), ~53587u), u_input.a & ~4294967295u, ~_wgslsmith_clamp_u32(28810u, u_input.a, u_input.a)), ~reverseBits(vec4<u32>(0u, u_input.a, 396u, u_input.a)), vec4<u32>(~u_input.a, func_5(vec2<f32>(-110f, 2509f), Struct_2(Struct_1(var_1.a), Struct_1(true), var_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(1183f, 568f, 2589f), vec3<f32>(-1723f, -698f, -1022f)), vec3<i32>(-68566i, 43675i, 0i)), u_input.a, 22565u)));
    global0 = array<Struct_2, 27>();
    global3 = !select(select(!select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(global1.a, false), vec2<bool>(false, false)), vec2<bool>(var_1.a, global3.x || var_1.a), false), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, u_input.a)) >= ~var_2.x, any(select(vec3<bool>(var_0.c.a, global1.a, true), vec3<bool>(global1.a, true, global1.a), var_1.a))), !select(!vec2<bool>(global1.a, global1.a), vec2<bool>(true, var_1.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -2147483647i));
}

