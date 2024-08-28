struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = u_input.c;
    var var_2 = vec4<i32>(~0i, -arg_0.c.x, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(max(max(46874i, arg_0.c.x), 17786i), max(arg_0.c.x, u_input.b), u_input.b), vec3<i32>(i32(-1i) * -1i, abs(21531i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-7849i, u_input.c, -13855i), u_input.e), u_input.b))));
    let var_3 = -372f;
    let var_4 = abs(~countOneBits(vec4<u32>(17245u ^ u_input.a.x, u_input.a.x, firstTrailingBit(u_input.a.x), ~u_input.a.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(ceil(-1060f)), _wgslsmith_f_op_f32(min(2181f, arg_0.a)), _wgslsmith_f_op_f32(-arg_1))))));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(arg_0.x ^ max(22650u, 34773u)), 26u), ~select(vec2<u32>(min(u_input.a.x, 1u), _wgslsmith_add_u32(u_input.a.x, 57144u)), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(30082u, 57693u), u_input.a.xw, u_input.a.xw)), any(vec4<bool>(false, true, true, true))));
    var var_1 = max(u_input.c, 0i);
    var_1 = _wgslsmith_add_i32(-87103i | max(max(reverseBits(u_input.c), u_input.e.x), u_input.b), 0i);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(1000f, 0u, vec2<i32>(u_input.d.x, 50946i), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), 1871f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) - _wgslsmith_f_op_f32(min(1157f, 1821f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), -434f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(260f)), _wgslsmith_div_f32(-2103f, 1039f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1480f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(128f, 359f))), 900f, _wgslsmith_f_op_f32(-1103f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f * 481f))), 808f));
    let var_3 = _wgslsmith_div_i32(1i, abs(u_input.d.x));
    return ~(~select(0u, 0u, any(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(arg_0.x, func_2(vec2<u32>(_wgslsmith_div_u32(24763u, 29388u), countOneBits(15076u)))), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(27181u, 90429u, ~34217u, 5136u), u_input.a), u_input.a.x);
    var_0 = vec4<u32>(1u, 10608u, firstTrailingBit(1u), 297u);
    var_0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-760f, 543f), vec2<f32>(465f, 545f))) - vec2<f32>(-2770f, 2392f)) + vec2<f32>(1f, 1f)))));
    var_0 = ~reverseBits(vec4<u32>(firstLeadingBit(u_input.a.x), ~0u, ~67962u, 4294967295u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(1855f, ~(14356u << (u_input.a.x % 32u)), u_input.d.yz, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), var_1.x < var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1000f))).x, Struct_1(_wgslsmith_f_op_f32(sign(1419f)), select(~_wgslsmith_sub_u32(77433u, var_0.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.xw), ~vec2<u32>(4294967295u, 3399u)), false), countOneBits(countOneBits(vec2<i32>(u_input.d.x, 0i) >> (var_0.xz % vec2<u32>(32u)))), vec4<bool>(any(vec2<bool>(true, true)) && false, true, any(vec3<bool>(false, false, true)), true), select(vec4<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, false, true, false)), false, all(vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, false))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> bool {
    let var_0 = -1i;
    var var_1 = arg_0.d.b;
    var_1 = Struct_1(585f, 0u, max(select(vec2<i32>(var_1.c.x, -1i) >> (_wgslsmith_sub_vec2_u32(arg_0.e.yy, vec2<u32>(u_input.a.x, 75796u)) % vec2<u32>(32u)), ~(~u_input.e.yz), func_1(arg_0.e.xz ^ vec2<u32>(1218u, arg_0.a.b.b)).b.d.zy), var_1.c), !func_1(reverseBits(u_input.a.wy)).b.e, func_1(~abs(~arg_0.e.xz)).b.e);
    var_1 = func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(~u_input.a.yz), ~(~vec2<u32>(u_input.a.x, var_1.b))), vec2<u32>(countOneBits(10380u), arg_0.b.b))).b;
    let var_2 = func_1(~min(vec2<u32>(arg_0.b.b, u_input.a.x) & vec2<u32>(u_input.a.x, var_1.b), select(arg_0.e.yz, ~vec2<u32>(var_1.b, 1u), select(vec2<bool>(arg_0.a.b.e.x, var_1.d.x), var_1.e.xx, vec2<bool>(arg_0.a.b.e.x, var_1.d.x))))).b;
    return u_input.b > arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!((i32(-1i) * -5613i) == countOneBits(-u_input.b)));
    var var_1 = select(func_4(Struct_4(func_1(vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(-1000f, 1u, u_input.e.xy ^ u_input.d.wy, vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), 0i, func_1(u_input.a.wx), u_input.a.yyw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-591f, 271f))) * _wgslsmith_f_op_f32(func_1(u_input.a.xy).b.a + -285f))), !func_4(Struct_4(Struct_3(721f, Struct_1(-152f, 4294967295u, u_input.e.xy, vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), Struct_1(415f, u_input.a.x, u_input.d.xw, vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), -23991i, func_1(vec2<u32>(82188u, 16729u)), vec3<u32>(32622u, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-917f, 2613f) * 1000f)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, false, true)))));
    let var_2 = Struct_1(-1142f, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), min(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -14143i, 1i), u_input.e), u_input.d.x), ~(-u_input.d.zw)), !vec4<bool>(func_1(select(u_input.a.wz, vec2<u32>(34651u, u_input.a.x), true)).b.e.x, all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), func_4(Struct_4(Struct_3(-860f, Struct_1(-1000f, u_input.a.x, vec2<i32>(u_input.c, u_input.e.x), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), Struct_1(2948f, u_input.a.x, u_input.e.xy, vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), u_input.e.x, Struct_3(-1036f, Struct_1(-1061f, u_input.a.x, vec2<i32>(-2147483647i, u_input.e.x), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), u_input.a.wwy), -909f)), !(!vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true)));
    var_1 = !(-countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(var_2.c.x, 79830i))) > _wgslsmith_div_i32(var_2.c.x >> (42510u % 32u), u_input.e.x));
    var var_3 = func_1(u_input.a.zy).b;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-258f - var_2.a), var_3.a), 2924f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), var_2.a)), ~u_input.d.xy, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_3.c.x), 36234i) & ~u_input.d.xy, var_2.c), ~u_input.a.xxy);
}

