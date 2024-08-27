struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<bool, 21>;

var<private> global3: array<i32, 3> = array<i32, 3>(2147483647i, i32(-2147483648), 1i);

var<private> global4: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = ~(~7313u);
    global1 = 46486u;
    return global0.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(select(global0.a, vec3<bool>(!(true && global0.a.x), u_input.c <= firstLeadingBit(47416u), func_3(Struct_1(global0.a))), true));
    var var_1 = ~(vec3<u32>(~min(0u, u_input.b.x), 1u, u_input.b.x) ^ abs(vec3<u32>(30708u, ~1u, u_input.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, global0.a)), arg_2), _wgslsmith_f_op_vec3_f32(floor(arg_2)), true)) * arg_2), _wgslsmith_f_op_vec3_f32(arg_2 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, -1543f, arg_2.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), arg_2))) - arg_2))));
    global0 = var_0;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), 1180f)), arg_2.x);
    return 0u;
}

fn func_1() -> Struct_1 {
    global3 = array<i32, 3>();
    global2 = array<bool, 21>();
    var var_0 = global0.a.yy;
    let var_1 = false;
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(max(~u_input.b.xxy, vec3<u32>(u_input.b.x, 84812u, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~15204u, u_input.c), vec3<u32>(func_2(global0.a.xz, false, vec3<f32>(356f, 565f, 552f)), 4294967295u, countOneBits(u_input.c)))), abs(~(~u_input.b.wxw)) >> ((max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 22634u, u_input.b.x), u_input.b.zzx), ~vec3<u32>(61344u, 4294967295u, u_input.c)) | countOneBits(vec3<u32>(u_input.c, 1u, 4294967295u))) % vec3<u32>(32u)));
    return Struct_1(global0.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(10317u, firstLeadingBit(~47794u), _wgslsmith_div_u32(53429u, 14837u)), ~u_input.b.xyy);
    let var_2 = func_1();
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-20945i, -(firstLeadingBit(u_input.a.x) | -15740i)), u_input.a.zy);
    var_3 = _wgslsmith_dot_vec4_i32(-u_input.a, abs(vec4<i32>(min(1i, 1172i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, global3[_wgslsmith_index_u32(28484u, 3u)], global3[_wgslsmith_index_u32(u_input.b.x, 3u)]), u_input.a.xzw), 1i, 0i)));
    return func_1().a.yx;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    return arg_3;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2988f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(711f))) - 811f)));
    var var_1 = arg_2;
    var var_2 = func_5(arg_0, vec2<bool>(true | !any(vec2<bool>(false, arg_0.a.x)), arg_2.a.x && global0.a.x), func_1().a.yx, func_1());
    var_1 = func_5(arg_2, vec2<bool>(any(arg_1), 4294967295u > ~_wgslsmith_mod_u32(8974u, u_input.b.x)), !vec2<bool>(func_5(Struct_1(vec3<bool>(arg_2.a.x, false, true)), var_1.a.zx, var_2.a.xx, arg_0).a.x, select(arg_0.a.x, false, true)), arg_2);
    var var_3 = vec4<u32>(max(1u, u_input.b.x), _wgslsmith_dot_vec4_u32(countOneBits(abs(~u_input.b)), countOneBits(vec4<u32>(abs(16091u), 653u, reverseBits(28689u), abs(53286u)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~(~vec2<u32>(u_input.b.x, 35008u))), ~_wgslsmith_mult_u32(14392u, _wgslsmith_clamp_u32(select(17560u, 1u, global2[_wgslsmith_index_u32(u_input.c, 21u)]), _wgslsmith_mod_u32(u_input.b.x, 14021u), firstTrailingBit(275u))));
    return StorageBuffer(u_input.b.wy >> (min(select(u_input.b.xx, countOneBits(vec2<u32>(var_3.x, var_3.x)), select(var_2.a.yz, arg_2.a.xx, var_1.a.yz)), select(vec2<u32>(u_input.b.x, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(35212u, var_3.x), vec2<u32>(6615u, 4294967295u)), all(vec2<bool>(true, false)))) % vec2<u32>(32u)), ~arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(Struct_1(!select(vec3<bool>(true, global0.a.x, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 21u)], true, true), false)), select(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(819f, 158f, -668f)), _wgslsmith_f_op_f32(trunc(472f)), func_1()), global0.a.yz, !(!vec2<bool>(true, global2[_wgslsmith_index_u32(212u, 21u)]))), vec2<bool>(true, global3[_wgslsmith_index_u32(43549u, 3u)] > countOneBits(-1i)), func_1()), vec4<bool>(_wgslsmith_clamp_u32(select(u_input.b.x, 10378u, global0.a.x), u_input.b.x, _wgslsmith_mod_u32(8530u, 58219u)) != ~_wgslsmith_dot_vec2_u32(vec2<u32>(19097u, 0u), u_input.b.wy), func_3(func_5(func_5(Struct_1(global0.a), global0.a.zx, vec2<bool>(true, false), Struct_1(global0.a)), func_5(Struct_1(global0.a), vec2<bool>(global0.a.x, global2[_wgslsmith_index_u32(0u, 21u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 21u)], global0.a.x), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], false, global2[_wgslsmith_index_u32(0u, 21u)]))).a.xz, !global0.a.zx, Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(30661u, 21u)], global0.a.x, false)))), !(!global2[_wgslsmith_index_u32(u_input.b.x, 21u)]) && all(!vec3<bool>(global2[_wgslsmith_index_u32(14573u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)])), global0.a.x), Struct_1(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], true))), abs(vec4<i32>(~(2147483647i ^ u_input.a.x), ~u_input.a.x, 30579i, u_input.a.x)));
}

