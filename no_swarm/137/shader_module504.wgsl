struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(182f, -403f, 974f, -1867f, 1165f, -102f, -2267f, -121f, -762f, -1051f, -531f, -1450f, -1000f);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec4<f32>(731f, 402f, -1075f, -630f)), Struct_1(vec4<bool>(true, true, true, false), 50182u, vec4<f32>(2022f, 1397f, 613f, -574f)), Struct_1(vec4<bool>(false, false, false, false), 1u, vec4<f32>(-1525f, 1000f, 300f, -194f)), Struct_1(vec4<bool>(true, false, true, true), 35763u, vec4<f32>(507f, 367f, -870f, 1000f)), Struct_1(vec4<bool>(true, false, false, false), 4294967295u, vec4<f32>(1890f, -536f, 1209f, 331f)), Struct_1(vec4<bool>(false, true, false, true), 16176u, vec4<f32>(1000f, 845f, -891f, 1000f)), Struct_1(vec4<bool>(true, false, true, false), 1u, vec4<f32>(763f, 246f, -1867f, 1278f)), Struct_1(vec4<bool>(false, false, false, true), 4294967295u, vec4<f32>(316f, 781f, -1223f, -405f)), Struct_1(vec4<bool>(true, true, false, false), 43658u, vec4<f32>(-1709f, -144f, 520f, 558f)), Struct_1(vec4<bool>(false, false, false, false), 1u, vec4<f32>(-140f, -122f, -245f, 846f)), Struct_1(vec4<bool>(false, false, false, false), 15516u, vec4<f32>(-225f, 735f, 1225f, -1000f)), Struct_1(vec4<bool>(false, false, true, true), 4294967295u, vec4<f32>(1029f, 1834f, -766f, 808f)), Struct_1(vec4<bool>(false, true, true, true), 4595u, vec4<f32>(1013f, -658f, -685f, 236f)), Struct_1(vec4<bool>(true, false, false, false), 40505u, vec4<f32>(-1098f, 866f, -723f, 294f)), Struct_1(vec4<bool>(false, true, true, false), 1u, vec4<f32>(454f, -374f, -1194f, -982f)), Struct_1(vec4<bool>(false, false, false, true), 14038u, vec4<f32>(1323f, -109f, 972f, 442f)));

var<private> global2: Struct_4;

var<private> global3: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global2.c.c.wyx)), global2.c.c.wxy, !(~(6920u & arg_2.x) >= (arg_2.x >> (4294967295u % 32u)))));
    let var_1 = Struct_5(true);
    global1 = array<Struct_1, 16>();
    var var_2 = var_1;
    let var_3 = var_0.x <= _wgslsmith_f_op_f32(-221f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1752f) * -1539f))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.yxy, arg_2), 16u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<i32>) -> vec4<bool> {
    global2 = Struct_4(select(arg_0.a.wwz, vec3<bool>(true, !(!arg_0.a.x), true), !arg_0.a.zxx), !arg_0.a.wz, global1[_wgslsmith_index_u32(0u, 16u)]);
    global2 = Struct_4(vec3<bool>(!(!(!arg_2)), true, !(!arg_0.a.x)), vec2<bool>(any(!select(arg_0.a, vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), global2.c.a)), !(!(1000f > global0[_wgslsmith_index_u32(70284u, 13u)]))), Struct_1(func_2(min(vec4<i32>(1i, -50680i, arg_3.x, -1i) | vec4<i32>(arg_3.x, arg_3.x, -599i, arg_3.x), -vec4<i32>(-51395i, u_input.b.x, -1i, -1i)), -350f, u_input.d.zyy, !(!arg_0.a.x)).a, 15110u, global2.c.c));
    global2 = Struct_4(!select(select(vec3<bool>(arg_1.x, true, arg_2), !global2.c.a.zzw, false | arg_1.x), !(!global2.a), arg_0.a.zzx), vec2<bool>(global2.a.x, false), arg_0);
    global0 = array<f32, 13>();
    let var_0 = arg_0.b;
    return func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(arg_3.x, 13020i, arg_3.x, 25166i) >> (vec4<u32>(var_0, var_0, var_0, 25347u) % vec4<u32>(32u))), countOneBits(vec4<i32>(-37576i, u_input.b.x, -14189i, 2147483647i)) & select(vec4<i32>(5204i, u_input.b.x, 2147483647i, 2360i), vec4<i32>(u_input.b.x, -2147483647i, 0i, arg_3.x), vec4<bool>(false, arg_2, true, true)), vec4<i32>(~0i, arg_3.x, arg_3.x, reverseBits(26991i))), abs(-vec4<i32>(6022i, -1i, -5448i, -27319i))), global2.c.c.x, u_input.d.xxy, select(arg_0.a.x, all(select(arg_0.a, !vec4<bool>(global2.b.x, true, arg_0.a.x, false), func_2(vec4<i32>(-1i, -8606i, arg_3.x, 2147483647i), -949f, vec3<u32>(1u, 1u, u_input.c), arg_0.a.x).a)), true)).a;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(!func_3(func_2(~vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 2147483647i), global0[_wgslsmith_index_u32(4750u ^ global2.c.b, 13u)], ~u_input.d.zyw, any(vec3<bool>(global2.b.x, global2.a.x, false))), func_2(vec4<i32>(u_input.b.x, 24273i, 40899i, 1i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 13u)]), ~u_input.a.zyw, global2.a.x && global2.b.x).a.xy, true, ~(~vec3<i32>(u_input.b.x, 1i, -1i))), ~u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.c.x, -1797f, -2005f, _wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(max(-1293f, -953f))))));
    let var_1 = !var_0.a.zw;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2.c.c.zyz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-506f, global2.c.c.x, var_0.c.x) - vec3<f32>(global0[_wgslsmith_index_u32(23441u, 13u)], 220f, var_0.c.x))) - var_0.c.zww), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_0.c.wxx, var_0.c.zxz, vec3<bool>(var_0.a.x, true, true))), _wgslsmith_f_op_vec3_f32(var_0.c.ywx * vec3<f32>(global0[_wgslsmith_index_u32(27778u, 13u)], 494f, global0[_wgslsmith_index_u32(5929u, 13u)])))))))), var_0);
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    return select(select(vec4<bool>(var_2.b.a.x, !(global0[_wgslsmith_index_u32(u_input.c, 13u)] != global0[_wgslsmith_index_u32(global2.c.b, 13u)]), false, true), !vec4<bool>(var_1.x, all(vec3<bool>(false, true, true)), !global2.c.a.x, global2.a.x), var_2.b.a.x), !var_2.b.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(1621f > _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 263f, global2.a.x)), global2.a.x, any(global2.c.a), !(!select(true, global2.a.x | global2.a.x, true)));
    let var_1 = min(global2.c.b, u_input.d.x);
    global0 = array<f32, 13>();
    var var_2 = abs(_wgslsmith_mod_i32(-13611i, ~(~u_input.b.x)));
    var var_3 = var_1 ^ var_1;
    var_0 = func_1();
    let var_4 = Struct_5(func_2(-countOneBits(vec4<i32>(45595i, u_input.b.x, -8676i, u_input.b.x)), 542f, u_input.a.xwz, var_0.x & true).a.x | (~countOneBits(50493i) == -(~u_input.b.x)));
    var var_5 = global2.c.c.zww;
    var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

