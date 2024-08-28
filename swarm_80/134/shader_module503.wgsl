struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 4> = array<i32, 4>(-1i, 13945i, i32(-2147483648), 0i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<bool> {
    global0 = -3371f;
    var var_0 = arg_2.b.x;
    var var_1 = select(true, false, ~1u > ~(~18777u << (abs(arg_2.a.x) % 32u)));
    let var_2 = Struct_1(_wgslsmith_sub_i32(~(abs(arg_2.c.a) << (~u_input.d.x % 32u)), 38065i), !(!(!select(vec2<bool>(true, arg_2.d.c.x), vec2<bool>(true, arg_0), vec2<bool>(true, arg_0)))), !select(!arg_2.d.c, !(!arg_2.c.c), !arg_2.c.c));
    let var_3 = ~_wgslsmith_add_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.b.x, 73262u) | vec3<u32>(u_input.b, u_input.b, 1u), ~vec3<u32>(arg_2.a.x, u_input.b, 0u)), vec3<u32>(20713u, u_input.b, u_input.a) >> (~vec3<u32>(10378u, 1u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_2.b.x, u_input.a, u_input.b)), vec3<u32>(abs(u_input.c), arg_2.a.x, ~u_input.d.x)));
    return !var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = -1i;
    global0 = 674f;
    global1 = array<i32, 4>();
    return reverseBits(vec4<i32>(arg_0.c.a, arg_0.d.a, abs(1i) | -_wgslsmith_clamp_i32(25164i, arg_0.d.a, -1i), min(global1[_wgslsmith_index_u32(countOneBits(u_input.c), 4u)], _wgslsmith_add_i32(0i, countOneBits(var_0)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_i32(func_4(Struct_2(vec2<u32>(u_input.a, 46107u), vec2<u32>(~u_input.c, 0u), Struct_1(1i, vec2<bool>(false, false), func_3(true, vec3<bool>(false, true, true), Struct_2(u_input.d, u_input.d, Struct_1(global1[_wgslsmith_index_u32(42446u, 4u)], vec2<bool>(false, true), vec4<bool>(true, true, true, true)), Struct_1(-1i, vec2<bool>(false, true), vec4<bool>(true, false, false, true))))), Struct_1(~0i, select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1118f, 1473f, 620f, -723f) * vec4<f32>(-421f, 377f, 711f, -1124f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(460f, -849f, 1633f, -680f) - vec4<f32>(-198f, 692f, -700f, 314f)))))), vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], 30895i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 2147483647i, global1[_wgslsmith_index_u32(5434u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]) << (vec4<u32>(1u, 0u, 14315u, 1u) % vec4<u32>(32u))), vec4<i32>(1i, global1[_wgslsmith_index_u32(select(u_input.b, 20145u, false), 4u)], global1[_wgslsmith_index_u32(reverseBits(u_input.b), 4u)], -1i)), -global1[_wgslsmith_index_u32(u_input.a, 4u)]));
    global1 = array<i32, 4>();
    global0 = _wgslsmith_f_op_f32(-2355f + 108f);
    var var_1 = Struct_1(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(var_0, global1[_wgslsmith_index_u32(u_input.c ^ 2398u, 4u)]), ~var_0 | var_0)), !vec2<bool>(true && (u_input.d.x >= 6459u), false), !func_3(any(vec4<bool>(true, true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(u_input.d.x, 4u)] > var_0), Struct_2(u_input.d, vec2<u32>(47829u, 83008u), Struct_1(0i, vec2<bool>(false, false), vec4<bool>(true, false, true, true)), Struct_1(var_0, vec2<bool>(false, true), vec4<bool>(false, false, true, false)))));
    let var_2 = Struct_1(_wgslsmith_sub_i32(-_wgslsmith_mult_i32(i32(-1i) * -2147483647i, min(var_1.a, var_1.a)), -1i), func_3(true, select(vec3<bool>(!var_1.c.x, true, u_input.c >= 4294967295u), var_1.c.xzz, vec3<bool>(!var_1.b.x, any(vec4<bool>(false, var_1.c.x, var_1.c.x, false)), true)), Struct_2(_wgslsmith_mult_vec2_u32(u_input.d, u_input.d) >> (_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(0u, 1u)) % vec2<u32>(32u)), vec2<u32>(14463u ^ u_input.c, abs(u_input.b)), Struct_1(-20966i, vec2<bool>(var_1.c.x, var_1.b.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), Struct_1(_wgslsmith_mod_i32(var_1.a, 2147483647i), !vec2<bool>(var_1.b.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.b.x, false, var_1.b.x)))).xw, select(vec4<bool>(true, !var_1.b.x, var_1.b.x, any(func_3(true, var_1.c.yxx, Struct_2(vec2<u32>(u_input.c, 14345u), vec2<u32>(u_input.a, 1629u), Struct_1(-2147483647i, vec2<bool>(var_1.c.x, true), var_1.c), Struct_1(1i, vec2<bool>(var_1.b.x, var_1.b.x), vec4<bool>(var_1.c.x, true, true, var_1.b.x)))))), func_3(select(!var_1.b.x, true, var_1.b.x), !(!var_1.c.yxw), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.b, 1u)), vec2<u32>(u_input.c, 30936u), Struct_1(0i, vec2<bool>(true, var_1.b.x), var_1.c), Struct_1(global1[_wgslsmith_index_u32(14419u, 4u)], var_1.c.wy, var_1.c))), true));
    return Struct_2(vec2<u32>(u_input.d.x, ~(~u_input.a)), u_input.d, var_2, var_2);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global1 = array<i32, 4>();
    var var_0 = (_wgslsmith_add_vec4_i32(select(vec4<i32>(arg_0.c.a, global1[_wgslsmith_index_u32(arg_0.b.x, 4u)], arg_0.c.a, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), vec4<i32>(-37140i, 20375i, 0i, 1i), vec4<bool>(false, arg_0.c.c.x, true, false)), vec4<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], 0i, -2147483647i)) & ~abs(-vec4<i32>(0i, -1i, arg_0.c.a, global1[_wgslsmith_index_u32(49504u, 4u)]))) ^ firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(arg_0.d.a << (70936u % 32u), -2147483647i), arg_0.c.a, ~(-30080i), i32(-1i) * -1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(1529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f) - _wgslsmith_f_op_f32(ceil(-234f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)))), 795f, 1000f)));
    global0 = 2368f;
    var var_2 = Struct_2(u_input.d, ~arg_0.b, arg_0.c, arg_0.c);
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_i32(-53376i, 46911i);
    let var_1 = func_5(func_2());
    let var_2 = 0u;
    global0 = _wgslsmith_f_op_f32(-296f - 1272f);
    var var_3 = func_2();
    return func_2().c;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f), -929f)), _wgslsmith_f_op_f32(trunc(arg_1.x)), true));
    let var_1 = arg_0.c;
    global0 = _wgslsmith_f_op_f32(-1f);
    global1 = array<i32, 4>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 472f)) * var_0))));
    return func_2().c.c.zxy;
}

fn func_7(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), -1586f)))), -483f) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-769f * -954f), _wgslsmith_f_op_f32(step(arg_1, arg_1))), select(func_6(Struct_2(vec2<u32>(2113u, 0u), u_input.d, Struct_1(2147483647i, vec2<bool>(true, true), vec4<bool>(arg_2, true, arg_2, arg_2)), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 4u)], vec2<bool>(false, true), vec4<bool>(arg_2, true, true, arg_2))), vec2<f32>(-1092f, arg_1)).x, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), arg_2))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), arg_1));
    let var_2 = func_5(Struct_2(vec2<u32>(u_input.c, countOneBits(1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(60849u, u_input.b), u_input.d) ^ u_input.d, func_1(), Struct_1(arg_3.x, func_1().b, vec4<bool>(false, arg_2, true, !arg_2))));
    var_1 = 1880f;
    let var_3 = _wgslsmith_clamp_vec2_i32(~(~(~min(vec2<i32>(var_2.c.a, arg_3.x), arg_3.xy))), -(~(-vec2<i32>(arg_3.x, 1i))), vec2<i32>(reverseBits(27359i), ~arg_3.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~(-_wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(6874u, 4u)], _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(61576u, 4u)], 38594i, global1[_wgslsmith_index_u32(u_input.b, 4u)]))), -634f, any(func_6(Struct_2(vec2<u32>(u_input.b, 23845u) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)), vec2<u32>(730u, 4294967295u), func_1(), Struct_1(-39742i, vec2<bool>(true, true), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(229f, 1195f))))), vec3<i32>(global1[_wgslsmith_index_u32(countOneBits(u_input.c), 4u)] ^ 1i, func_2().d.a, _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], -63499i, 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(45146u, 4u)], 37332i, global1[_wgslsmith_index_u32(4294967295u, 4u)])), vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.d.x, 4u)], -1i), func_6(Struct_2(vec2<u32>(0u, 15622u), vec2<u32>(u_input.d.x, 1u), Struct_1(global1[_wgslsmith_index_u32(1u, 4u)], vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_1(1i, vec2<bool>(false, true), vec4<bool>(false, true, true, true))), vec2<f32>(-1339f, 388f))), vec3<i32>(0i, 39782i, 17811i << (0u % 32u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1220f, -1550f, -234f), vec3<f32>(-657f, -385f, 234f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1001f)) * _wgslsmith_f_op_f32(ceil(1199f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1074f, 773f, true))), _wgslsmith_f_op_f32(round(-2186f)))));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + var_1.x), 811f)), -573f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -1000f)) * _wgslsmith_f_op_f32(-790f * var_1.x)))), 1098f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -176f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), var_1.x));
    let var_4 = Struct_1(func_7(-(_wgslsmith_dot_vec2_i32(vec2<i32>(-8204i, global1[_wgslsmith_index_u32(0u, 4u)]), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.b, 4u)])) >> (~u_input.b % 32u)), var_3.x, all(vec3<bool>(func_5(Struct_2(u_input.d, u_input.d, Struct_1(global1[_wgslsmith_index_u32(u_input.b, 4u)], vec2<bool>(false, false), vec4<bool>(false, true, false, true)), Struct_1(-2147483647i, vec2<bool>(true, true), vec4<bool>(false, true, false, true)))).d.c.x, true, true)), -vec3<i32>(global1[_wgslsmith_index_u32(u_input.c << (15851u % 32u), 4u)], 32106i, global1[_wgslsmith_index_u32(1u, 4u)] ^ 7049i)), !func_6(func_5(func_2()), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - 657f))).zz, func_2().d.c);
    global0 = 1f;
    var_1 = var_3.zww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, select(_wgslsmith_sub_u32(u_input.c, u_input.c), 1u, u_input.c > 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.zyw) * _wgslsmith_f_op_vec3_f32(sign(var_3.yyx)))), _wgslsmith_f_op_vec3_f32(abs(var_3.yxz)), abs(vec4<i32>(var_4.a, _wgslsmith_sub_i32(1i, func_5(Struct_2(vec2<u32>(u_input.c, 17866u), vec2<u32>(u_input.b, 4294967295u), Struct_1(70812i, vec2<bool>(true, var_4.b.x), var_4.c), Struct_1(var_4.a, var_4.b, vec4<bool>(var_4.c.x, true, var_4.c.x, var_4.c.x)))).d.a), global1[_wgslsmith_index_u32(~1u ^ reverseBits(u_input.c), 4u)], -54200i)), u_input.c);
}

