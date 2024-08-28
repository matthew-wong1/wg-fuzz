struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: vec4<f32>;

var<private> global2: i32 = 13803i;

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec3<i32>(-54381i, 1373i, -8921i), vec3<u32>(4294967295u, 16538u, 28717u)), Struct_1(false, vec3<bool>(false, true, false), vec3<i32>(-24408i, -12579i, -7525i), vec3<u32>(1u, 4294967295u, 49383u)), 17256u, -16822i), Struct_2(Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(1i, -87055i, 2147483647i), vec3<u32>(29460u, 20147u, 0u)), Struct_1(true, vec3<bool>(false, false, true), vec3<i32>(39117i, -45185i, 43513i), vec3<u32>(4294967295u, 10557u, 1044u)), 115924u, -32978i), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec3<i32>(47765i, 7944i, 47013i), vec3<u32>(37789u, 22473u, 4294967295u)), Struct_1(true, vec3<bool>(false, false, false), vec3<i32>(1i, 43473i, 21813i), vec3<u32>(0u, 49871u, 64891u)), 14470u, -1i), Struct_2(Struct_1(true, vec3<bool>(false, true, false), vec3<i32>(-17469i, i32(-2147483648), -17174i), vec3<u32>(0u, 0u, 15801u)), Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(14069i, i32(-2147483648), 55177i), vec3<u32>(22054u, 40056u, 1u)), 17086u, 1795i), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec3<i32>(17402i, 54645i, 5769i), vec3<u32>(13645u, 4294967295u, 1u)), Struct_1(false, vec3<bool>(true, true, true), vec3<i32>(-31797i, -1i, 0i), vec3<u32>(4294967295u, 1u, 4294967295u)), 1u, 2147483647i), Struct_2(Struct_1(true, vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 32539i, -25603i), vec3<u32>(37564u, 66324u, 2453u)), Struct_1(true, vec3<bool>(false, false, true), vec3<i32>(0i, 27127i, -34597i), vec3<u32>(16117u, 4294967295u, 17561u)), 0u, 37004i), Struct_2(Struct_1(false, vec3<bool>(false, false, true), vec3<i32>(-3350i, -19094i, -327i), vec3<u32>(0u, 5156u, 21589u)), Struct_1(false, vec3<bool>(true, true, false), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<u32>(46233u, 34777u, 1u)), 35908u, 2147483647i), Struct_2(Struct_1(false, vec3<bool>(true, true, false), vec3<i32>(-85116i, -5862i, 1i), vec3<u32>(67239u, 38699u, 4294967295u)), Struct_1(true, vec3<bool>(false, true, true), vec3<i32>(-1i, -1969i, 2147483647i), vec3<u32>(0u, 52951u, 4700u)), 1u, 9784i), Struct_2(Struct_1(true, vec3<bool>(false, false, true), vec3<i32>(-1i, 976i, 1i), vec3<u32>(45652u, 4294967295u, 1u)), Struct_1(false, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), -51631i, 2147483647i), vec3<u32>(23245u, 4294967295u, 4294967295u)), 27741u, 45931i));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global2 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, global0[_wgslsmith_index_u32(select(global4.d.x, global4.d.x << ((global4.d.x & u_input.d.x) % 32u), any(select(global4.b.zy, vec2<bool>(false, global4.a), global4.b.x))), 8u)], 1i), -14014i, 2147483647i);
    var var_0 = ~(global4.c.x & global4.c.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), -1897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1030f)) * -108f));
    global4 = Struct_1(true || global4.a, !global4.b, _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(34256u, 8u)], u_input.c.x, global4.c.x)) >> ((_wgslsmith_add_vec3_u32(global4.d, vec3<u32>(u_input.b, global4.d.x, 4294967295u)) >> (vec3<u32>(0u, 1u, global4.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ~select(global4.c, u_input.c.xyx, global4.b)), global4.d ^ ~(~firstTrailingBit(global4.d)));
    global3 = array<Struct_2, 9>();
    return global1.x;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global3 = array<Struct_2, 9>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) - 1061f), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(step(global1.x, -897f))), select(global1.x > 523f, select(true, global4.b.x, true), true))))), 398f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global1.x))))), global1.x);
    var var_0 = i32(-1i) * -14516i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-global1.yzw);
    var var_2 = Struct_1(all(global4.b.zy), !(!(!(!global4.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(11916i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 8u)]), vec2<i32>(global0[_wgslsmith_index_u32(39552u, 8u)], global4.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(1u, 8u)], 2147483647i), vec4<i32>(global4.c.x, global4.c.x, 16649i, 1i)) & countOneBits(25462i)), ~select(global4.c ^ vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], -1i, 41871i), u_input.c.wwy, global0[_wgslsmith_index_u32(global4.d.x, 8u)] < -2147483647i)), global4.d);
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(18048u & _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 0u, 17648u), 53178u), ~(u_input.b | 19983u) << (min(~4294967295u, ~4294967295u) % 32u)), 12020u);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(vec4<bool>(arg_0.d.b.a, !all(vec4<bool>(false, false, false, arg_0.c.b.x)) == all(!vec3<bool>(arg_0.c.a, false, arg_0.d.b.b.x)), !global4.a, all(!vec4<bool>(arg_0.c.a, false, false, arg_0.d.a.b.x))), vec4<bool>(global4.a, arg_0.c.a, arg_0.d.a.a, true), global4.d.x != _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(func_2(arg_0.c.d), abs(1u))));
    global2 = -52505i;
    let var_1 = Struct_1(false, !select(var_0.zxx, select(vec3<bool>(true, global4.a, global4.b.x), !vec3<bool>(false, arg_0.d.b.a, arg_0.d.b.a), select(var_0.zzy, vec3<bool>(arg_0.c.a, true, global4.b.x), false)), var_0.zyw), arg_0.d.b.c, _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(global4.d, arg_0.c.d), ~arg_0.e.wwy));
    global2 = ~_wgslsmith_mod_i32(var_1.c.x, -global0[_wgslsmith_index_u32(arg_0.d.a.d.x, 8u)] & (global4.c.x ^ -2147483647i)) ^ -2147483647i;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.yw))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-949f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -535f)))));
    return Struct_1(true, select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0.c.a, arg_0.c.a), true), !var_0.xxy, arg_0.c.b), var_1.b, !any(var_0)), reverseBits(firstTrailingBit(vec3<i32>(1i, -44614i, select(global4.c.x, global0[_wgslsmith_index_u32(global4.d.x, 8u)], arg_0.c.a)))), ~firstTrailingBit(~(~vec3<u32>(5793u, 45318u, var_1.d.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    global2 = global4.c.x;
    let var_0 = arg_2.a;
    let var_1 = abs(arg_2.c.d);
    global2 = 17174i;
    let var_2 = false;
    return func_1(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(floor(186f))) - arg_1.b), arg_2.b, func_1(arg_0), global3[_wgslsmith_index_u32(global4.d.x, 9u)], vec4<u32>(~_wgslsmith_add_u32(arg_2.e.x, arg_0.e.x), u_input.d.x, _wgslsmith_dot_vec4_u32(min(arg_0.e, vec4<u32>(arg_1.c.d.x, 4294967295u, u_input.d.x, arg_0.c.d.x)), arg_2.e), _wgslsmith_mult_u32(1u, ~6184u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 9>();
    var var_0 = global3[_wgslsmith_index_u32(~(~u_input.b), 9u)];
    global3 = array<Struct_2, 9>();
    var var_1 = ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(~0i, -u_input.a, u_input.a, -2147483647i)), vec4<i32>(-1i, select(firstLeadingBit(var_0.a.c.x), i32(-1i) * -27190i, select(var_0.b.a, global4.a, false)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_0.a.c.x, -15751i, 0i, global4.c.x)), u_input.a), ~1i));
    var var_2 = Struct_2(Struct_1((true == global4.a) || !global4.b.x, select(vec3<bool>(true, true, true), !(!vec3<bool>(false, false, var_0.b.a)), select(!vec3<bool>(true, var_0.b.b.x, global4.a), select(vec3<bool>(var_0.b.a, var_0.b.a, true), vec3<bool>(true, var_0.b.b.x, var_0.a.b.x), global4.b), global4.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -61184i, var_0.b.c.x) >> (vec3<u32>(var_0.a.d.x, global4.d.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(8817i, global4.c.x, -29584i)) ^ vec3<i32>(global4.c.x, -1i, countOneBits(2147483647i)), vec3<u32>(86868u, 1u, ~max(var_0.c, u_input.d.x))), func_4(Struct_3(-346f, -1053f, func_1(Struct_3(-445f, -813f, Struct_1(false, vec3<bool>(true, true, true), u_input.c.xxx, var_0.b.d), Struct_2(Struct_1(true, var_0.b.b, vec3<i32>(-50254i, -8941i, -20976i), vec3<u32>(global4.d.x, 0u, u_input.b)), Struct_1(true, vec3<bool>(var_0.b.a, global4.a, var_0.a.a), var_0.a.c, var_0.b.d), u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(var_0.a.d.x, 11465u, 4294967295u, u_input.b))), Struct_2(var_0.a, var_0.a, _wgslsmith_sub_u32(var_0.b.d.x, global4.d.x), -39744i), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.d.x, 4294967295u), vec4<u32>(global4.d.x, var_0.a.d.x, global4.d.x, 35616u)), ~vec4<u32>(var_0.a.d.x, 0u, global4.d.x, 27597u))), Struct_3(-1212f, 729f, func_1(Struct_3(863f, 278f, var_0.b, Struct_2(var_0.b, var_0.a, 1u, -1i), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u))), Struct_2(func_1(Struct_3(global1.x, global1.x, Struct_1(var_0.b.a, vec3<bool>(true, var_0.a.a, var_0.a.a), var_0.b.c, vec3<u32>(57285u, u_input.b, 6083u)), global3[_wgslsmith_index_u32(5072u, 9u)], vec4<u32>(global4.d.x, 0u, global4.d.x, 9661u))), func_1(Struct_3(global1.x, global1.x, Struct_1(var_0.b.b.x, vec3<bool>(false, global4.a, false), vec3<i32>(3793i, global0[_wgslsmith_index_u32(0u, 8u)], global4.c.x), vec3<u32>(7432u, 0u, var_0.a.d.x)), global3[_wgslsmith_index_u32(1u, 9u)], vec4<u32>(global4.d.x, var_0.c, 0u, 1u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, var_0.c), global4.d), _wgslsmith_mod_i32(u_input.c.x, var_0.d)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global4.d.x, 0u, var_0.a.d.x), vec4<u32>(u_input.b, global4.d.x, global4.d.x, u_input.d.x)))), Struct_3(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -212f), Struct_1(global4.b.x, !global4.b, var_0.a.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.d.x, u_input.b, 2168u), vec3<u32>(global4.d.x, u_input.b, global4.d.x), var_0.a.d)), Struct_2(var_0.a, var_0.a, 9090u, min(var_0.b.c.x, global4.c.x)), reverseBits(~vec4<u32>(global4.d.x, u_input.d.x, 41120u, var_0.c)))), var_0.a.d.x, func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global1.x), Struct_1(var_0.b.a | global4.b.x, var_0.b.b, ~var_0.a.c, max(vec3<u32>(u_input.b, var_0.a.d.x, 57016u), vec3<u32>(50100u, 0u, var_0.c))), Struct_2(Struct_1(global4.b.x, var_0.a.b, global4.c, vec3<u32>(u_input.b, global4.d.x, var_0.c)), var_0.b, global4.d.x, -global4.c.x), vec4<u32>(0u, 0u | u_input.d.x, ~var_0.b.d.x, ~4294967295u)), Struct_3(global1.x, _wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(f32(-1f) * -747f)), var_0.a, Struct_2(Struct_1(var_0.a.b.x, vec3<bool>(false, true, global4.b.x), var_0.b.c, vec3<u32>(35271u, u_input.d.x, 28354u)), Struct_1(global4.b.x, vec3<bool>(var_0.a.a, global4.b.x, var_0.a.a), vec3<i32>(72527i, global4.c.x, global4.c.x), var_0.b.d), global4.d.x, global4.c.x), _wgslsmith_div_vec4_u32(~vec4<u32>(19246u, var_0.c, 44347u, 1u), ~vec4<u32>(4294967295u, 17507u, var_0.b.d.x, u_input.d.x))), Struct_3(global1.x, 1532f, var_0.a, global3[_wgslsmith_index_u32((global4.d.x & 0u) >> (u_input.b % 32u), 9u)], abs(vec4<u32>(1u, u_input.d.x, var_0.b.d.x, var_0.c)))).c.x);
    let var_3 = min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, max(_wgslsmith_div_u32(var_2.b.d.x, 4294967295u), abs(var_2.c)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_2.a.d.x, 82234u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 64939u, u_input.b), var_2.a.d)), var_0.b.d.x), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.c, 1u), _wgslsmith_sub_u32(25468u, var_2.c)), 24234u, ~var_2.c, var_2.b.d.x)), 8u)], reverseBits(var_0.a.c.x));
    var var_4 = _wgslsmith_sub_vec3_u32(global4.d, max(~(~var_2.b.d), var_2.a.d));
    global3 = array<Struct_2, 9>();
    let var_5 = -1284f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c | vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.d, -6607i, 2147483647i), var_2.b.c), ~1i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(global4.d.x >> (1462u % 32u), 8u)], ~var_2.b.c.x), var_3), firstLeadingBit(firstTrailingBit(~(~vec4<u32>(6738u, 77638u, u_input.b, var_0.c)))));
}

