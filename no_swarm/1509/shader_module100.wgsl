struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1127f;

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<u32, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = select(!vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false)), true, true, any(global1[_wgslsmith_index_u32(39145u, 20u)])), vec4<bool>(false, true, !(!(global4[_wgslsmith_index_u32(5288u, 21u)] > 0u)), _wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_add_i32(-7082i, 2147483647i)) <= countOneBits(66174i)), vec4<bool>(true, any(!global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(u_input.b.x, 21u)], 20u)]), -1219f == _wgslsmith_f_op_f32(sign(1000f)), false));
    var var_1 = Struct_1(u_input.a.x);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-692f * -2293f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1539f - -1660f), _wgslsmith_f_op_f32(f32(-1f) * -321f), var_0.x)), (u_input.b.x | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)]) < global4[_wgslsmith_index_u32(~0u, 21u)]))), -322f);
    var var_2 = reverseBits(vec4<i32>(global3.a, -38044i, abs(i32(-1i) * -48119i), _wgslsmith_mult_i32(~var_1.a, -25198i)));
    let var_3 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxy, reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 20679u, u_input.b.x), vec3<u32>(1u, u_input.b.x, 1u)))), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(7610u, 21u)]), 21u)], _wgslsmith_mod_u32(abs(1u), 1u), global4[_wgslsmith_index_u32(abs(~0u), 21u)]));
    return u_input.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(select(6405u, _wgslsmith_mod_u32(func_3(), abs(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]))), !(!(true && (arg_0.x > -1529i)))), 20u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1352f), -334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-328f)) + arg_1), _wgslsmith_f_op_f32(168f + -149f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-899f, _wgslsmith_f_op_f32(min(arg_1, -828f)), -1934f, arg_1) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2850f, 1780f, -2693f, arg_1) * vec4<f32>(arg_1, -573f, arg_1, arg_1)), _wgslsmith_div_vec4_f32(vec4<f32>(-816f, 2445f, 424f, arg_1), vec4<f32>(arg_1, 590f, 276f, 1587f)))))));
    let var_2 = u_input.c.x;
    global3 = Struct_1(-42577i << (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], global4[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<u32>(abs(8814u), 1u, ~u_input.b.x, global4[_wgslsmith_index_u32(3610u, 21u)])), 21u)] % 32u));
    let var_3 = -u_input.c >> (select(u_input.b, u_input.b, all(vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), 1829f == var_1.x, any(vec3<bool>(false, true, false)), !var_0.x))) % vec4<u32>(32u));
    return Struct_1(-1i);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f + arg_0) * _wgslsmith_f_op_f32(arg_0 + arg_0))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1218f, 892f)))), _wgslsmith_f_op_f32(-arg_0)));
    let var_0 = arg_3;
    global3 = Struct_1(-30547i | ((_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_3.a, 40266i, arg_1.x), u_input.c) | abs(-1i)) ^ -2147483647i));
    global3 = func_2(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(-26538i, -16738i), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(arg_0, arg_0)))), arg_3);
    let var_1 = Struct_1(u_input.c.x);
    return !vec4<bool>(false, any(select(!vec4<bool>(arg_2.x, false, false, true), arg_2, any(arg_2.yxz))), !arg_2.x, arg_2.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~select(global3.a, ~(-3297i), true));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1861f), _wgslsmith_f_op_f32(f32(-1f) * -1378f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1093f * 660f), _wgslsmith_f_op_f32(trunc(-109f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -893f))), any(global1[_wgslsmith_index_u32(u_input.b.x, 20u)]))));
    global3 = arg_1;
    let var_3 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false)), !func_4(1200f, _wgslsmith_mod_vec3_i32(u_input.c.yyy, vec3<i32>(-1i, 12051i, arg_0)), vec4<bool>(false, false, true, true), func_2(vec3<i32>(40098i, arg_0, global3.a), -1003f, Struct_1(arg_1.a))), true);
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = -1000f;
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_mod_i32(abs(1i), arg_0.a));
    global3 = arg_1;
    var var_2 = _wgslsmith_sub_i32(max(arg_0.a, -3761i), _wgslsmith_mod_i32(~_wgslsmith_add_i32(arg_0.a, max(-30672i, arg_0.a)), func_1(2147483647i, Struct_1(i32(-1i) * -28925i)).a));
    return func_2(~select(~(-u_input.a), u_input.c.zzw | _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(arg_0.a, var_0.a, -2147483647i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1513f)))), Struct_1(arg_2.a));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = u_input.b;
    global3 = func_2(~_wgslsmith_clamp_vec3_i32(~max(vec3<i32>(arg_0.a, 82772i, u_input.a.x), u_input.a), u_input.c.yyw, countOneBits(vec3<i32>(-10004i, arg_0.a, arg_0.a))), -232f, arg_0);
    var var_1 = Struct_1(37738i);
    var var_2 = func_1(0i, Struct_1(_wgslsmith_add_i32(abs(-var_1.a), ~(-1i))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-192f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1297f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2146f - _wgslsmith_f_op_f32(f32(-1f) * -1646f))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -625f, var_3.x, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -2146f, -1088f, -486f), vec4<f32>(var_3.x, -199f, var_3.x, var_3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), 1007f, _wgslsmith_f_op_f32(select(1804f, var_3.x, true)), var_3.x) - vec4<f32>(_wgslsmith_f_op_f32(var_3.x - 1176f), _wgslsmith_f_op_f32(f32(-1f) * -123f), 755f, _wgslsmith_f_op_f32(-var_3.x))), false))));
}

fn func_7(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_5(Struct_1(_wgslsmith_mod_i32(global3.a, u_input.c.x ^ 10963i)), func_2(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.c.x, -1i, 2147483647i), vec3<i32>(1i, global3.a, ~arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2093f * -670f) + arg_1.x) * arg_1.x), func_2(-_wgslsmith_add_vec3_i32(u_input.c.xzy, vec3<i32>(-1i, -2147483647i, arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(485f - arg_1.x), arg_1.x)), Struct_1(select(u_input.a.x, -2147483647i, true)))), func_5(Struct_1(_wgslsmith_mult_i32(-32337i, arg_0)), func_2(u_input.a, arg_1.x, Struct_1(11597i)), func_5(func_2(abs(u_input.c.xzx), arg_1.x, func_2(u_input.c.wyy, arg_1.x, Struct_1(u_input.c.x))), func_5(Struct_1(arg_0), Struct_1(u_input.c.x), Struct_1(arg_0)), func_1(_wgslsmith_add_i32(global3.a, -43051i), func_2(u_input.c.xww, 1706f, Struct_1(arg_0))))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(0i, u_input.c.x));
    global1 = array<vec2<bool>, 20>();
    let var_2 = abs(1u);
    global0 = arg_1.x;
    return func_5(var_0, var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 21>();
    var var_0 = func_7(global3.a, _wgslsmith_f_op_vec4_f32(func_6(func_5(func_1(global3.a, Struct_1(u_input.a.x)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, -30343i, 2147483647i), vec3<i32>(-1i, global3.a, 1i))), Struct_1(-2147483647i)), u_input.b.xx)));
    let var_1 = Struct_1(var_0.a);
    global3 = Struct_1(global3.a);
    var var_2 = -(~(~vec3<i32>(0i, 1i, var_0.a))) | _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(var_0.a), 12822i, -var_1.a) >> (vec3<u32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(42073u, 4131u), 21u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.b.x, 21u)], global4[_wgslsmith_index_u32(1u, 21u)], 4294967295u), u_input.b.yzx), abs(global4[_wgslsmith_index_u32(u_input.b.x, 21u)])) % vec3<u32>(32u)), reverseBits(~u_input.a) ^ -_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.a, var_1.a, -2147483647i), u_input.c.wzw, vec3<i32>(17093i, -30978i, 24970i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(reverseBits(-48i), min(~var_2.x ^ u_input.a.x, ~(var_0.a ^ -2147483647i)), firstLeadingBit(func_5(Struct_1(var_2.x), var_1, Struct_1(var_0.a)).a)), u_input.c, func_3());
}

