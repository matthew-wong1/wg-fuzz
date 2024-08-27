struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(1072f, 458f, 1211f, -1388f, 544f, -1687f, -242f, -1215f, 1653f, 661f, 145f, 1443f, 1193f, -1053f, -1000f, 1355f, 750f, -646f, -702f, 117f);

var<private> global1: vec2<f32> = vec2<f32>(-983f, -2462f);

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(187f, -738f, -1000f), vec3<f32>(1457f, 863f, 1239f), vec3<f32>(-203f, 286f, 919f), vec3<f32>(2965f, 280f, 702f), vec3<f32>(-1076f, 497f, -1000f), vec3<f32>(-1520f, -899f, -1228f), vec3<f32>(498f, -619f, 1458f), vec3<f32>(465f, -1999f, -1092f), vec3<f32>(-1000f, -1159f, -1000f), vec3<f32>(-1000f, -141f, -206f), vec3<f32>(-743f, 612f, 666f), vec3<f32>(776f, 785f, 948f), vec3<f32>(1054f, -853f, -1068f), vec3<f32>(587f, 696f, -1585f), vec3<f32>(1407f, -1504f, -1410f), vec3<f32>(1532f, 1825f, -653f), vec3<f32>(1366f, -600f, -1074f), vec3<f32>(-340f, -622f, -993f), vec3<f32>(-732f, 485f, -850f), vec3<f32>(-1000f, -264f, -976f), vec3<f32>(934f, 386f, 461f), vec3<f32>(-181f, -1372f, 1085f), vec3<f32>(425f, -1000f, -810f), vec3<f32>(-1475f, -1581f, -1278f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    global0 = array<f32, 20>();
    var var_0 = arg_1.b;
    let var_1 = arg_3;
    global2 = array<vec3<f32>, 24>();
    let var_2 = arg_1;
    return -(~_wgslsmith_dot_vec3_i32(-(~vec3<i32>(var_0.a.b, -38112i, arg_0.d.b)), abs(-vec3<i32>(2147483647i, arg_0.d.b, -1i))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(arg_0.b.a.a & -u_input.c.yz, i32(-1i) * -44678i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -3125f, _wgslsmith_div_f32(global1.x, arg_1), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global1.x)) * arg_0.a.c), countOneBits(arg_0.a.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.b.a.e.x)))));
    global1 = arg_0.b.a.e;
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1005f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.c.x + _wgslsmith_f_op_f32(min(arg_1, 809f))) + 149f)));
    global2 = array<vec3<f32>, 24>();
    var var_1 = 0u;
    return vec3<bool>(!(func_3(Struct_2(true, var_0.a.c.ww, vec4<f32>(arg_0.b.a.e.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global1.x, global0[_wgslsmith_index_u32(0u, 20u)]), var_0.a), arg_0, ~117046u, u_input.b.yy >> (u_input.a.xx % vec2<u32>(32u))) < var_0.a.a.x), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global1.x) <= 811f, !all(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, any(vec3<bool>(false, false, false)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = false;
    var var_1 = select(vec3<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(120013u, 13707u, u_input.b.x), vec3<u32>(u_input.a.x, 4294967295u, 91149u)) != 4603u, any(select(vec3<bool>(true, true, false), func_2(arg_1, arg_1.a.e.x, arg_1.b.a.d.x), true)), u_input.d.x <= arg_0.x), vec3<bool>(true, true, u_input.a.x > _wgslsmith_sub_u32(u_input.b.x, ~u_input.a.x)), vec3<bool>(false, true, true));
    var_0 = all(!vec3<bool>(var_1.x, !(-1i != u_input.c.x), true));
    global0 = array<f32, 20>();
    var var_2 = select(func_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1363f * 1177f))), ~u_input.d.x).xz, func_2(Struct_4(arg_1.b.a, Struct_3(Struct_1(u_input.d, u_input.e.x, arg_1.b.a.c, arg_0.xx, arg_1.a.e))), 821f, 1i).xz, select(any(vec2<bool>(var_1.x, var_1.x)) || all(select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, false, true, var_1.x), vec4<bool>(true, false, var_1.x, true))), !var_1.x, var_1.x));
    return ~(~u_input.e.xw);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> vec2<f32> {
    let var_0 = false;
    global2 = array<vec3<f32>, 24>();
    var var_1 = arg_0.b;
    global0 = array<f32, 20>();
    var_1 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 20u)])), 1076f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_4(Struct_1(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.c.x), vec2<i32>(u_input.e.x, -57963i), u_input.e.xy), vec2<i32>(u_input.d.x, -7074i) | vec2<i32>(u_input.d.x, 18250i)), u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1363f, -290f, -1163f, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(60925u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 1274f, 404f))), func_1(max(vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x), u_input.c), Struct_4(Struct_1(u_input.c.zx, 1i, vec4<f32>(global1.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], global1.x, -881f), u_input.e.zz, vec2<f32>(570f, -2388f)), Struct_3(Struct_1(u_input.d, 2147483647i, vec4<f32>(-1808f, -665f, 1000f, 641f), u_input.e.zy, vec2<f32>(global0[_wgslsmith_index_u32(5438u, 20u)], -2469f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))), Struct_3(Struct_1(-u_input.c.yy, u_input.d.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, -1502f, global0[_wgslsmith_index_u32(39297u, 20u)]), vec4<f32>(-136f, -1046f, -525f, global1.x))), u_input.e.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))))), 1u, firstLeadingBit(62507i)));
    var var_1 = 1i;
    var var_2 = reverseBits(abs(~vec2<u32>(u_input.b.x, u_input.b.x))) << (u_input.a.zz % vec2<u32>(32u));
    let var_3 = select(!select(vec3<bool>(true, true, true), func_2(Struct_4(Struct_1(u_input.d, 11897i, vec4<f32>(-1396f, 1266f, var_0.x, -1000f), vec2<i32>(u_input.c.x, u_input.e.x), vec2<f32>(var_0.x, 2279f)), Struct_3(Struct_1(u_input.c.yz, u_input.e.x, vec4<f32>(global1.x, 460f, global0[_wgslsmith_index_u32(44122u, 20u)], -133f), u_input.e.yz, vec2<f32>(var_0.x, -1000f)))), 1373f, u_input.d.x), true), select(!vec3<bool>(true, func_2(Struct_4(Struct_1(vec2<i32>(u_input.c.x, -14345i), u_input.d.x, vec4<f32>(var_0.x, global1.x, -298f, global1.x), vec2<i32>(0i, 3811i), vec2<f32>(-920f, 206f)), Struct_3(Struct_1(vec2<i32>(u_input.c.x, -4929i), u_input.d.x, vec4<f32>(-1198f, var_0.x, -167f, -241f), vec2<i32>(39622i, -2147483647i), vec2<f32>(global1.x, global1.x)))), global1.x, u_input.c.x).x, true), !vec3<bool>(true, true, select(false, true, false)), func_2(Struct_4(Struct_1(u_input.d, u_input.e.x, vec4<f32>(818f, -239f, global1.x, global1.x), u_input.c.yy, vec2<f32>(-1705f, -613f)), Struct_3(Struct_1(vec2<i32>(u_input.d.x, u_input.d.x), u_input.e.x, vec4<f32>(global1.x, 943f, var_0.x, global1.x), vec2<i32>(u_input.d.x, -2147483647i), vec2<f32>(global1.x, global0[_wgslsmith_index_u32(27706u, 20u)])))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_2.x & u_input.a.x, 20u)], 548f)), _wgslsmith_mult_i32(~0i, -u_input.e.x))), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec2<bool>(true, true)), true, false))));
    global0 = array<f32, 20>();
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-173f, global0[_wgslsmith_index_u32(var_2.x, 20u)], -258f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - -604f), global0[_wgslsmith_index_u32(1u, 20u)]))));
    var var_5 = 0i;
    var var_6 = Struct_4(Struct_1(-_wgslsmith_mod_vec2_i32(u_input.e.xz, u_input.d), u_input.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~4294967295u, 20u)], 123f, _wgslsmith_f_op_f32(select(1000f, global1.x, true)), -905f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -538f, -1052f) + vec4<f32>(var_4.x, 659f, 555f, 156f))), vec2<i32>(~(~1i), -2117i), var_4.xw), Struct_3(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, 0i), countOneBits(u_input.e.zx)), i32(-1i) * -u_input.d.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(0u, 20u)], var_4.x, global0[_wgslsmith_index_u32(62650u, 20u)], 1145f), vec4<f32>(-517f, global0[_wgslsmith_index_u32(4294967295u, 20u)], 806f, var_4.x), true)))), ~abs(u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], var_4.x)) - var_4.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~min(reverseBits(var_2.x), 39233u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 71998u, 4294967295u, var_2.x), ~vec4<u32>(49985u, 1u, 61875u, 4294967295u)), 0u)));
}

