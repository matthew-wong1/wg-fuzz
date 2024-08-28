struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-29279i, 2147483647i, -1i);

var<private> global1: Struct_1 = Struct_1(true, vec2<bool>(false, false), 598f);

var<private> global2: array<Struct_2, 22>;

var<private> global3: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c, 564f))))))), global3.x, -2233f, _wgslsmith_f_op_f32(round(global1.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global1.c)))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1681f, _wgslsmith_f_op_f32(max(1175f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x - global1.c))))), _wgslsmith_div_f32(global3.x, var_1), global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-704f, _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(min(-1161f, -364f)), _wgslsmith_f_op_f32(floor(global3.x))) - vec4<f32>(-1083f, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(var_0.x * -598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f - var_1)), -833f))));
    let var_2 = 4197i;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1074f, _wgslsmith_f_op_f32(-var_0.x)))));
    return !vec2<bool>(global1.b.x | any(!global1.b), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = vec2<i32>(u_input.a.x, 47520i);
    let var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = !(!vec2<bool>(_wgslsmith_clamp_i32(arg_3.a.x, u_input.e, arg_3.a.x) == select(2147483647i, -23108i, false), (u_input.b.x >= var_2.a) && true));
    let var_4 = Struct_1(true, func_3(), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-619f * -378f)))))));
    return u_input.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> bool {
    var var_0 = Struct_3(arg_2.a, arg_3);
    let var_1 = _wgslsmith_div_vec3_f32(global3.zww, global3.ywy);
    var var_2 = vec3<bool>(!any(arg_1.c), arg_2.c, !func_3().x && true);
    let var_3 = countOneBits(~(-firstLeadingBit(max(vec4<i32>(-1i, -2147483647i, -24652i, u_input.a.x), vec4<i32>(arg_1.b, -2147483647i, -1i, global0.x)))));
    var var_4 = 557f;
    return all(vec2<bool>(arg_1.c.x, func_3().x));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: Struct_2) -> vec3<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 405f, global1.c, global1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(794f, global1.c, -615f, global1.c))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, global1.c, 155f, global3.x)))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_div_f32(-824f, -2547f)), -179f)));
    let var_0 = global3.x;
    var var_1 = Struct_2(-644f > _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_mult_i32(arg_2.b, 0i), vec4<bool>(all(vec2<bool>(global1.c >= global1.c, arg_2.a)), !(_wgslsmith_f_op_f32(190f - global1.c) <= 1f), false, func_4(vec2<u32>(u_input.d, 71002u) ^ func_2(vec4<f32>(230f, -688f, -1042f, global1.c), Struct_3(4294967295u, arg_2.a), false, arg_0), Struct_2(all(vec2<bool>(true, true)), arg_2.b, !arg_2.c), Struct_4(4294967295u, Struct_1(arg_2.a, vec2<bool>(arg_2.c.x, global1.a), 1519f), select(false, true, global1.b.x), Struct_1(false, vec2<bool>(global1.a, false), -282f)), arg_0.a.x == -37525i)));
    var var_2 = arg_0;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(min(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), -1688f, !global1.b.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -765f), global1.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-global1.c)), global3.x)));
    return select(select(!(!var_1.c.wxy), select(!select(arg_2.c.xwy, vec3<bool>(var_1.a, true, arg_2.a), vec3<bool>(var_1.a, false, false)), vec3<bool>(false, false, true), select(!arg_2.c.zzx, vec3<bool>(arg_2.c.x, false, false), 1530f >= global3.x)), true), !arg_2.c.zxw, func_4(~min(~vec2<u32>(3100u, u_input.b.x), abs(u_input.b)), Struct_2(global1.b.x, u_input.c, vec4<bool>(!var_1.c.x, arg_2.b >= -2147483647i, func_3().x, true)), Struct_4(countOneBits(0u), Struct_1(all(vec4<bool>(arg_2.c.x, global1.a, arg_2.a, arg_2.a)), vec2<bool>(var_1.a, global1.a), _wgslsmith_div_f32(-819f, -2361f)), reverseBits(4294967295u) == _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 0u), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(arg_1.x >= u_input.d, vec2<bool>(global1.b.x, true), _wgslsmith_f_op_f32(exp2(global3.x)))), any(select(select(var_1.c, arg_2.c, true), vec4<bool>(arg_2.a, false, var_1.c.x, arg_2.a), !var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(all(!func_1(Struct_5(vec4<i32>(u_input.e, global0.x, -437i, -12166i)), vec2<u32>(u_input.b.x, 0u), Struct_2(true, 0i, vec4<bool>(false, true, false, global1.b.x)))), _wgslsmith_dot_vec2_i32(-(global0.zx & vec2<i32>(1i, u_input.e)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 0i), u_input.a.xy)) << (0u % 32u), !vec4<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -985f) > _wgslsmith_f_op_f32(-global3.x), global1.a, -global0.x <= countOneBits(36060i)));
    global1 = Struct_1(any(var_0.c.wxw), !select(vec2<bool>(false | global1.a, false), var_0.c.xy, func_1(Struct_5(vec4<i32>(1i, var_0.b, var_0.b, -52783i)), vec2<u32>(u_input.b.x, 60895u), global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 22u)]).x), -835f);
    global1 = Struct_1(true, select(vec2<bool>(false, true), vec2<bool>(var_0.c.x, all(var_0.c)), !all(func_1(Struct_5(vec4<i32>(u_input.c, var_0.b, var_0.b, -1i)), vec2<u32>(65023u, u_input.b.x), global2[_wgslsmith_index_u32(4294967295u, 22u)]).xy)), global1.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.xzz)) + _wgslsmith_f_op_vec3_f32(global3.xyx - _wgslsmith_f_op_vec3_f32(sign(global3.xxx)))));
    var_0 = Struct_2(true, -2147483647i, select(var_0.c, vec4<bool>(global1.a, false, !(!global1.b.x), var_0.a), true));
    let var_2 = Struct_2(4294967295u <= ~_wgslsmith_clamp_u32(func_2(vec4<f32>(-530f, global1.c, 1000f, 1339f), Struct_3(1u, true), true, Struct_5(vec4<i32>(-8390i, global0.x, global0.x, -27162i))).x, countOneBits(u_input.d), u_input.d), var_0.b, select(!vec4<bool>(global1.a, true, false, !global1.a), !select(var_0.c, select(vec4<bool>(var_0.c.x, false, global1.b.x, false), var_0.c, true), true), select(select(var_0.c, select(vec4<bool>(true, true, var_0.a, var_0.c.x), var_0.c, vec4<bool>(false, var_0.a, true, false)), select(var_0.c, var_0.c, vec4<bool>(global1.b.x, false, true, false))), !var_0.c, select(select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(false, true, global1.b.x, global1.a), global1.a), var_0.c, vec4<bool>(global1.b.x, global1.a, global1.b.x, true)))));
    global1 = Struct_1(!select((global0.x > global0.x) & var_0.a, true, any(!vec2<bool>(var_0.a, true))), vec2<bool>(global1.a, var_0.c.x), -883f);
    global0 = -vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.a.xz, global0.yx), 17719i ^ max(-53660i, var_0.b), u_input.a.x) ^ u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-276f * global1.c))))), _wgslsmith_dot_vec4_i32(-select(firstLeadingBit(vec4<i32>(2878i, 42249i, u_input.e, var_0.b)), firstTrailingBit(vec4<i32>(28440i, -2147483647i, 2147483647i, -1i)), false), -(vec4<i32>(u_input.a.x, 2147483647i, -1i, global0.x) << (~vec4<u32>(1u, u_input.d, u_input.b.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.b, 1i ^ _wgslsmith_clamp_i32(global0.x, -8868i, 0i), max(min(-1i, -1i), -8293i)), ~var_0.b), select(vec4<u32>(min(_wgslsmith_add_u32(9195u, u_input.b.x), ~u_input.b.x), firstLeadingBit(44883u >> (1u % 32u)), _wgslsmith_dot_vec2_u32(~u_input.b, max(vec2<u32>(u_input.d, u_input.b.x), u_input.b)), reverseBits(u_input.b.x ^ u_input.b.x)), vec4<u32>(~u_input.d & u_input.b.x, _wgslsmith_mod_u32(20766u, u_input.d), 37961u, u_input.b.x << (_wgslsmith_mod_u32(73211u, u_input.d) % 32u)), var_0.c.x));
}

