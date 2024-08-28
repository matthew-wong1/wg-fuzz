struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_4, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = select(true, !any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, 7032i), ~vec2<i32>(11063i, 44100i), vec2<bool>(true, true)), vec2<i32>(-44466i, _wgslsmith_div_i32(-35728i, -83715i))) == min(firstTrailingBit(global0[_wgslsmith_index_u32(~0u, 30u)]), global0[_wgslsmith_index_u32(u_input.a.x, 30u)]));
    var var_1 = abs(reverseBits(u_input.d)) << (~(~(~vec4<u32>(u_input.a.x, arg_1.x, u_input.a.x, 1u) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, arg_1.x, u_input.a.x))) % vec4<u32>(32u));
    global0 = array<i32, 30>();
    global1 = array<Struct_4, 21>();
    global1 = array<Struct_4, 21>();
    return Struct_1(~vec4<u32>(71049u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4928u), vec3<u32>(u_input.a.x, 10715u, arg_1.x) >> (vec3<u32>(arg_1.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), u_input.a.x, ~(~arg_1.x)), _wgslsmith_mod_i32(26376i, -2147483647i), select(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), vec2<bool>(var_0, var_0))), !vec2<bool>(var_0, true), false), vec2<bool>(var_0, var_0), var_0));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = Struct_5(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.c.a.zy, u_input.a), firstTrailingBit(u_input.a)) >> (u_input.a.x % 32u), ~74521u, 1u), 2301u, Struct_1(~func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, arg_0.e.x, -674f, -2020f)), vec2<u32>(u_input.a.x, 50108u), 313f).a, ~arg_2, select(select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_0.c.c), select(vec2<bool>(arg_0.c.c.x, false), func_1(vec4<f32>(2168f, 871f, 1407f, 629f), u_input.a, arg_0.e.x).c, vec2<bool>(arg_0.d, true)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, arg_0.e.x, arg_0.e.x, -923f) - vec4<f32>(601f, arg_0.e.x, 658f, 1162f)), vec2<u32>(0u, 4294967295u), -242f).c)), _wgslsmith_sub_i32(-40828i, ~(i32(-1i) * -325i)) >= abs(arg_2), _wgslsmith_f_op_vec2_f32(abs(arg_0.e)));
    var_0 = arg_0;
    let var_1 = u_input.a.x;
    var var_2 = Struct_3(-_wgslsmith_clamp_i32(-1i, u_input.b.x, abs(arg_1)), u_input.a.x, vec3<i32>(2147483647i, ~u_input.d.x, max(0i, arg_1)));
    var_0 = Struct_5(vec3<u32>(~(4294967295u & ~u_input.a.x), var_1, 0u), select(_wgslsmith_mod_u32(var_0.c.a.x, ~var_2.b << (~4294967295u % 32u)), ~(~4294967295u), any(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1145f, var_0.e.x, -3045f, arg_0.e.x)), ~u_input.a, 331f).c)), func_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-626f)))), var_0.e.x, arg_0.e.x, 334f), var_0.a.zx, -196f), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x) + vec4<f32>(arg_0.e.x, var_0.e.x, 188f, -1022f)), (var_0.c.a.xz ^ vec2<u32>(33728u, 1u)) | ~var_0.c.a.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))).c.x || (var_0.d & !(!var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_f_op_f32(round(var_0.e.x))))));
    return _wgslsmith_mod_i32(max(~var_2.c.x, arg_1), 2147483647i);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = vec4<f32>(arg_2.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1870f), arg_1, _wgslsmith_f_op_f32(min(199f, _wgslsmith_f_op_f32(f32(-1f) * -1047f))));
    let var_1 = select(select(select(vec3<i32>(~(-17001i), _wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), ~22681i), vec3<i32>(select(2147483647i, u_input.d.x, arg_2.a.b.x), 1i, func_3(Struct_5(vec3<u32>(1u, 43764u, 39429u), arg_0.x, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.c, arg_2.a.b), arg_2.a.b.x, var_0.ww), -9353i, -38067i)), vec3<bool>(true, any(vec4<bool>(false, arg_2.a.b.x, true, arg_2.a.b.x)), true)), min(select(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(73189u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec3<i32>(39319i, 17476i, -23690i), arg_2.a.b.x) ^ vec3<i32>(-2147483647i, u_input.b.x, u_input.d.x), vec3<i32>(36782i, u_input.b.x, select(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], arg_2.a.b.x))), !vec3<bool>(func_1(vec4<f32>(-322f, arg_1, 233f, arg_1), vec2<u32>(arg_0.x, u_input.a.x), 500f).c.x, false, true)), u_input.d.yxx, !(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.a.b.x, false, arg_2.a.b.x), vec3<bool>(true, arg_2.a.b.x, arg_2.a.b.x), arg_2.a.b.x), select(vec3<bool>(false, false, arg_2.a.b.x), vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x), arg_2.a.b.x))));
    let var_2 = Struct_1(vec4<u32>(~min(arg_0.x, 41676u | arg_0.x), 40843u >> (0u % 32u), _wgslsmith_mult_u32(1u, ~4294967295u), firstTrailingBit(arg_0.x)), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.x, _wgslsmith_mult_i32(u_input.b.x, var_1.x ^ global0[_wgslsmith_index_u32(21174u, 30u)])), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), arg_2.a.b);
    var var_3 = vec2<bool>(any(!select(select(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<bool>(var_2.c.x, arg_2.a.b.x, true), vec3<bool>(arg_2.a.b.x, var_2.c.x, false)), vec3<bool>(true, true, true), !vec3<bool>(arg_2.a.b.x, true, arg_2.a.b.x))), var_2.c.x);
    var var_4 = all(vec2<bool>(!(var_2.c.x && false), true));
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~var_2.a.x, ~abs(u_input.a.x) | 1u), 21u)];
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    global1 = array<Struct_4, 21>();
    global1 = array<Struct_4, 21>();
    let var_0 = 1565f;
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1121f * arg_0))), _wgslsmith_f_op_f32(-arg_3.a.a), _wgslsmith_f_op_f32(select(-295f, _wgslsmith_f_op_f32(573f * arg_3.a.a), false)), _wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 0u, u_input.a.x, 4294967295u), -2109f, arg_3).a.a + 101f)))), u_input.a, arg_0);
    let var_2 = arg_2.c.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), true, func_4(504f, Struct_2(_wgslsmith_div_f32(-310f, -1000f), vec2<bool>(true, true)), func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1607f, 725f, -768f, -282f))), u_input.a, _wgslsmith_f_op_f32(floor(-900f))), func_2(~vec4<u32>(u_input.a.x, 1u, 41028u, 4294967295u), _wgslsmith_f_op_f32(-1212f * 1043f), Struct_4(Struct_2(1746f, vec2<bool>(true, false))))));
    var var_1 = vec3<i32>(-abs(-10003i) & reverseBits(_wgslsmith_sub_i32(-u_input.b.x, ~u_input.c)), global0[_wgslsmith_index_u32(1u, 30u)] ^ _wgslsmith_mod_i32(i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(~1394u, 30u)]), -1i);
    let var_2 = u_input.a;
    let var_3 = func_4(-571f, func_2(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 15788u, var_2.x), vec4<u32>(u_input.a.x, 4294967295u, var_2.x, var_2.x))), -1932f, func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(54326u, 36197u, u_input.a.x, 4294967295u), vec4<u32>(1u, u_input.a.x, 16033u, 28563u) | vec4<u32>(var_2.x, var_2.x, 1u, 46870u)), _wgslsmith_f_op_f32(trunc(-754f)), Struct_4(func_2(vec4<u32>(var_2.x, 5014u, var_2.x, u_input.a.x), -169f, Struct_4(Struct_2(1235f, vec2<bool>(var_0.x, false)))).a))).a, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-255f, -1376f, -1847f, -376f)))), select(~vec2<u32>(u_input.a.x, var_2.x), ~firstLeadingBit(var_2), vec2<bool>(true, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-207f)))))), Struct_4(func_2(vec4<u32>(~var_2.x, u_input.a.x | 4294967295u, 0u, 15531u), -789f, Struct_4(func_2(vec4<u32>(var_2.x, 4294967295u, 4294967295u, 16816u), -531f, Struct_4(Struct_2(468f, var_0.zy))).a)).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-824f)), -3896f, _wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(ceil(-585f))), vec4<f32>(_wgslsmith_div_f32(-1883f, -499f), _wgslsmith_f_op_f32(-1541f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(f32(-1f) * -1366f)))), min(~(~u_input.d.wxw), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.c, 27989i), global0[_wgslsmith_index_u32(36778u, 30u)], 1i), select(u_input.d.yww, reverseBits(u_input.d.yzx), !vec3<bool>(var_3, false, true)))), _wgslsmith_sub_i32(~abs(countOneBits(var_1.x)), u_input.c));
}

