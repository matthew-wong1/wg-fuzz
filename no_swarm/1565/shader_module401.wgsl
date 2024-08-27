struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26291u;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<u32>(28655u, 70628u, 4294967295u), Struct_1(1i, 4294967295u, false, vec4<bool>(true, false, true, false), true), Struct_1(21072i, 7038u, true, vec4<bool>(false, true, true, false), false), 0u, -2681f), Struct_2(vec3<u32>(1u, 20215u, 0u), Struct_1(2147483647i, 4294967295u, true, vec4<bool>(false, true, true, false), true), Struct_1(-1i, 22143u, true, vec4<bool>(false, true, true, false), true), 1u, 319f), Struct_2(vec3<u32>(1u, 50261u, 1u), Struct_1(-15241i, 66539u, true, vec4<bool>(false, false, false, true), true), Struct_1(-35640i, 0u, false, vec4<bool>(false, true, false, true), false), 22993u, -1000f), Struct_2(vec3<u32>(96512u, 17093u, 1u), Struct_1(-1i, 0u, true, vec4<bool>(false, false, false, false), true), Struct_1(19346i, 1u, true, vec4<bool>(false, false, false, false), true), 0u, 1000f), Struct_2(vec3<u32>(24716u, 4294967295u, 7849u), Struct_1(-52597i, 22252u, true, vec4<bool>(false, false, false, true), true), Struct_1(0i, 56680u, true, vec4<bool>(true, false, false, true), false), 4294967295u, 1479f), Struct_2(vec3<u32>(16035u, 31397u, 32173u), Struct_1(2147483647i, 55918u, false, vec4<bool>(true, true, true, false), true), Struct_1(2147483647i, 92426u, false, vec4<bool>(true, true, false, true), false), 5766u, 2015f), Struct_2(vec3<u32>(11072u, 0u, 51194u), Struct_1(20895i, 0u, true, vec4<bool>(true, false, false, true), false), Struct_1(-3325i, 1u, false, vec4<bool>(false, false, true, false), true), 71975u, -256f), Struct_2(vec3<u32>(72297u, 1u, 4294967295u), Struct_1(-1i, 4294967295u, false, vec4<bool>(true, true, false, true), true), Struct_1(-1i, 90706u, true, vec4<bool>(false, true, true, true), true), 1u, -759f), Struct_2(vec3<u32>(0u, 40927u, 84595u), Struct_1(-1i, 4294967295u, false, vec4<bool>(false, false, false, false), true), Struct_1(i32(-2147483648), 1u, false, vec4<bool>(true, false, false, false), true), 495u, 1724f), Struct_2(vec3<u32>(0u, 5354u, 0u), Struct_1(i32(-2147483648), 1u, true, vec4<bool>(true, true, true, true), false), Struct_1(1i, 4294967295u, false, vec4<bool>(false, true, true, true), true), 1316u, -540f), Struct_2(vec3<u32>(0u, 51403u, 3378u), Struct_1(-1i, 42226u, false, vec4<bool>(false, false, true, false), true), Struct_1(0i, 0u, true, vec4<bool>(false, true, true, true), false), 4294967295u, -327f));

var<private> global2: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global3: array<u32, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_1(-(~countOneBits(u_input.b.x)), reverseBits(~4294967295u), arg_1.c, !arg_1.d, arg_1.c);
    global1 = array<Struct_2, 11>();
    var var_1 = u_input.b;
    var var_2 = var_0;
    global0 = min(arg_3.x, firstTrailingBit(1u));
    return true;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    global1 = array<Struct_2, 11>();
    global0 = arg_1.b;
    global1 = array<Struct_2, 11>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) - 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f))) - -238f);
    var var_1 = 5314u;
    return ~_wgslsmith_clamp_u32(arg_1.b, countOneBits(_wgslsmith_div_u32(1u, 4294967295u) | _wgslsmith_dot_vec2_u32(arg_2, arg_2)), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(86057u, global3[_wgslsmith_index_u32(arg_1.b, 15u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36502u, 15u)], 15u)]), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 15u)], 8558u, arg_2.x))), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 72430u), vec3<u32>(global3[_wgslsmith_index_u32(arg_2.x, 15u)], arg_1.b, arg_2.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_1 = vec4<bool>(all(select(!select(arg_0.c.d, arg_0.c.d, var_0.c.d.x), vec4<bool>(false, 31309i > var_0.b.a, !var_0.b.d.x, false), false)), false, 857f <= var_0.e, arg_0.b.d.x);
    var var_2 = u_input.b.x;
    var_0 = Struct_2(vec3<u32>(6025u, 1u, abs(17593u)), arg_0.c, var_0.b, arg_0.a.x, -1000f);
    var var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.b, u_input.a, arg_0.c.b, arg_0.d), vec4<u32>(var_0.c.b, 145948u, arg_0.a.x, 0u)), max(vec4<u32>(4294967295u, 50603u, arg_0.d, 4294967295u), vec4<u32>(8575u, 0u, 4294967295u, 16633u))), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_0.c.b, 0u, arg_0.c.b), min(vec4<u32>(89439u, 7242u, 46035u, arg_0.a.x), vec4<u32>(1u, 1u, arg_0.b.b, 1u)))), vec4<u32>(73314u, 1u, ~func_3(vec3<bool>(var_0.c.c, arg_0.b.c, true), var_0.c, var_0.a.yx, vec3<bool>(false, false, false)), abs(global3[_wgslsmith_index_u32(4294967295u, 15u)]))), (select(vec4<u32>(29805u, arg_0.a.x, 5881u, 37010u), firstTrailingBit(vec4<u32>(0u, global3[_wgslsmith_index_u32(862u, 15u)], u_input.a, u_input.a)), !arg_0.c.c) | countOneBits(vec4<u32>(u_input.a, 58138u, var_0.c.b, 1u))) | ~vec4<u32>(~6502u, ~u_input.a, reverseBits(arg_0.d), ~0u));
    return vec4<bool>(((var_0.c.a == -16473i) || !var_1.x) && true, var_0.b.a >= arg_0.b.a, false, false);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<u32>(1u, ~1u);
    var var_1 = arg_0.d.x;
    var var_2 = -190f;
    let var_3 = arg_2.e;
    var_0 = select(arg_2.a.yy, vec2<u32>(0u, var_0.x), true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.a, firstLeadingBit(16216u << (~u_input.a % 32u))) | ~_wgslsmith_mod_u32(~18740u, _wgslsmith_div_u32(u_input.a, abs(1u)));
    var var_1 = true;
    global2 = array<vec2<bool>, 15>();
    let var_2 = func_4(Struct_1(-2147483647i, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 16715u)) ^ 11301u, true, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, func_1(vec4<f32>(-153f, 437f, -118f, 908f), Struct_1(1i, u_input.a, false, vec4<bool>(false, true, true, false), true), vec2<u32>(4436u, 75684u), vec2<u32>(95935u, global3[_wgslsmith_index_u32(u_input.a, 15u)]))), vec4<bool>(true, false, true, true)), any(select(func_2(global1[_wgslsmith_index_u32(0u, 11u)], vec4<f32>(781f, 1377f, 2036f, -192f), u_input.b), func_2(Struct_2(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global3[_wgslsmith_index_u32(1u, 15u)], 47588u), Struct_1(-11674i, 54268u, true, vec4<bool>(true, false, true, false), false), Struct_1(u_input.b.x, u_input.a, false, vec4<bool>(false, false, false, true), true), 51587u, -1249f), vec4<f32>(120f, 926f, -698f, -788f), u_input.b), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))))), !vec2<bool>(-u_input.b.x < _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), false), Struct_2(select(select(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a, u_input.a), abs(vec3<u32>(u_input.a, 35693u, global3[_wgslsmith_index_u32(u_input.a, 15u)])), true), ~(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 15u)], 35186u, 4294967295u)), abs(u_input.b.x) == (u_input.b.x << (u_input.a % 32u))), Struct_1(50309i << (_wgslsmith_mult_u32(1u, 0u) % 32u), reverseBits(global3[_wgslsmith_index_u32(u_input.a, 15u)]), true, vec4<bool>(false, true, true, true), all(vec4<bool>(true, false, false, false))), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, 1i, u_input.b.x)), countOneBits(31921u), true, select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, true, false), func_1(vec4<f32>(2689f, 2118f, 763f, 224f), Struct_1(u_input.b.x, 4294967295u, false, vec4<bool>(true, false, true, true), true), vec2<u32>(57470u, 75798u), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(28601u, 15u)]))), false), 17709u, _wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -954f))))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_3 = var_2;
    let var_4 = _wgslsmith_dot_vec4_i32(abs(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a, 42731i, var_3.a, u_input.b.x), vec4<i32>(1i, -1i, var_3.a, var_2.a)))), vec4<i32>(1i, var_2.a, _wgslsmith_mult_i32(var_2.a, var_3.a), u_input.b.x & var_3.a));
    let var_5 = ~(-2147483647i);
    var var_6 = select(var_3.d.zxz, var_2.d.xyw, func_4(func_4(func_4(var_2, var_2.d.wz, Struct_2(vec3<u32>(var_3.b, 17174u, 20797u), Struct_1(2147483647i, var_3.b, false, var_2.d, var_3.c), var_2, u_input.a, 1419f), all(global2[_wgslsmith_index_u32(44758u, 15u)])), !func_4(var_2, global2[_wgslsmith_index_u32(31558u, 15u)], Struct_2(vec3<u32>(4294967295u, 0u, 29392u), Struct_1(-15896i, 1u, true, vec4<bool>(true, var_3.e, var_3.c, var_3.c), var_3.e), Struct_1(-1i, 27652u, false, var_3.d, var_2.d.x), 27121u, -1000f), var_3.c).d.xx, global1[_wgslsmith_index_u32(var_2.b, 11u)], true), select(!var_2.d.zx, select(select(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], var_3.d.wz, true), global2[_wgslsmith_index_u32(~u_input.a, 15u)], var_2.d.x), true), global1[_wgslsmith_index_u32(var_3.b, 11u)], all(var_3.d)).d.x);
    var_6 = select(func_2(global1[_wgslsmith_index_u32(u_input.a, 11u)], vec4<f32>(-1679f, 1086f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1768f, -1848f))), _wgslsmith_f_op_f32(select(556f, _wgslsmith_f_op_f32(f32(-1f) * -843f), false))), u_input.b).wzx, vec3<bool>(var_3.b != func_3(!vec3<bool>(false, var_2.d.x, true), func_4(var_2, vec2<bool>(true, false), global1[_wgslsmith_index_u32(var_3.b, 11u)], false), vec2<u32>(var_2.b, global3[_wgslsmith_index_u32(4294967295u, 15u)]) << (vec2<u32>(var_2.b, 48432u) % vec2<u32>(32u)), !var_3.d.zyz), any(func_2(global1[_wgslsmith_index_u32(~var_2.b, 11u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, -318f, 1000f, -1245f)), vec2<i32>(-47859i, var_2.a)).wz), !var_3.d.x), select(func_4(var_2, vec2<bool>(var_2.b == u_input.a, var_3.e), global1[_wgslsmith_index_u32(min(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)]), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(var_2.b, 15u)], 0u)), 11u)], (1u >= var_2.b) == select(var_6.x, true, var_6.x)).d.wzy, select(vec3<bool>(true, true, var_2.d.x || var_3.e), var_3.d.yyy, !select(var_3.d.ywy, var_3.d.zzx, vec3<bool>(var_3.c, var_6.x, var_6.x))), var_2.d.yzz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<u32>(4951u, global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 15u)], 110876u)), ~34697u, var_2.e), 15u)], 0u, !var_6.x), 15u)], func_4(Struct_1(i32(-1i) * -2147483647i, 27904u, true, vec4<bool>(false, var_2.c, var_6.x, var_2.c), !var_6.x), select(select(vec2<bool>(true, false), vec2<bool>(var_3.e, true), vec2<bool>(var_2.c, true)), func_2(global1[_wgslsmith_index_u32(4294967295u, 11u)], vec4<f32>(-329f, -844f, -1010f, 296f), vec2<i32>(-1i, 49022i)).xw, vec2<bool>(false, true)), global1[_wgslsmith_index_u32(var_3.b, 11u)], !any(vec2<bool>(var_3.c, true))).b, var_3.b << (var_2.b % 32u)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3.b, 15u)], 15u)], 37629u, var_3.b, u_input.a), vec4<u32>(var_2.b, global3[_wgslsmith_index_u32(u_input.a, 15u)], var_2.b, 0u)), ~vec4<u32>(var_2.b, global3[_wgslsmith_index_u32(u_input.a, 15u)], 46689u, 33318u)), 1u), u_input.a, 9564u, ~_wgslsmith_add_u32(0u, ~var_3.b)));
}

