struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(-41064i, false, vec4<i32>(-22018i, 2147483647i, -38288i, i32(-2147483648)), 23404u, 1214f);

var<private> global2: bool;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_1(~vec4<u32>(~(~u_input.a), 68209u, firstLeadingBit(~4294967295u), 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, ~_wgslsmith_sub_u32(global1.d, arg_0)), select(vec2<u32>(_wgslsmith_mod_u32(0u, 1u), u_input.a ^ 59948u), ~vec2<u32>(arg_0, global1.d), vec2<bool>(true, any(vec2<bool>(true, true))))));
    let var_1 = Struct_1(vec4<u32>(71471u, arg_0, arg_2.x, _wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(4294967295u, arg_1.d, u_input.a, 18664u)), arg_1.d), _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, var_0.a.x), ~1u))), vec2<u32>(4294967295u, 9537u));
    global1 = arg_1;
    global0 = -9832i;
    var var_2 = _wgslsmith_sub_u32(min(0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~arg_0, arg_1.d), 4294967295u, firstLeadingBit(66674u) | ~arg_0)), min(abs(var_0.b.x), 4294967295u));
    return vec3<bool>(global1.b, global1.b, true);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = !(!select(func_3(firstTrailingBit(0u), Struct_2(arg_0, global1.b, vec4<i32>(15512i, -17243i, arg_1, u_input.b.x), 1u, -652f), vec2<u32>(u_input.a, 90240u) << (vec2<u32>(global1.d, 36388u) % vec2<u32>(32u)), ~1i), vec3<bool>(func_3(10154u, Struct_2(arg_0, global1.b, global1.c, global1.d, 1375f), vec2<u32>(87540u, u_input.a), -1i).x, global1.b, false), !(!vec3<bool>(false, true, global1.b))));
    let var_1 = vec3<bool>(u_input.a >= ~_wgslsmith_dot_vec3_u32(~vec3<u32>(49601u, global1.d, global1.d), ~vec3<u32>(global1.d, 1u, 1u)), true, !global1.b);
    var var_2 = false;
    global1 = Struct_2(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -2147483647i)), var_1.x, min(vec4<i32>(-1i) * -vec4<i32>(global1.a, -1i, u_input.b.x, global1.c.x), vec4<i32>(~firstTrailingBit(arg_0), firstLeadingBit(~70004i), 47981i, reverseBits(-1i))), ~(~(~(~u_input.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1093f)), global1.e) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(494f)) * _wgslsmith_f_op_f32(-194f - global1.e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), any(vec2<bool>(true, var_0.x)))));
    let var_3 = arg_1;
    return Struct_2(~select(~max(18740i, arg_1), ~reverseBits(1i), !(!global1.b)), !(_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(global1.d, 21387u)) >= global1.d), (global1.c >> (min(max(vec4<u32>(global1.d, 60969u, 40318u, global1.d), vec4<u32>(43136u, global1.d, u_input.a, 0u)), ~vec4<u32>(global1.d, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) ^ global1.c, 36795u, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 - global1.e), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1178f)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global1 = func_2(_wgslsmith_add_i32(-1i, u_input.b.x << (~(~global1.d) % 32u)), -(~_wgslsmith_add_i32(u_input.b.x, ~u_input.b.x)), global1.e);
    global2 = global1.b;
    var var_0 = u_input.b.x;
    global1 = func_2(firstTrailingBit(u_input.b.x), u_input.b.x, global3.x);
    let var_1 = false;
    return ~arg_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    global1 = Struct_2(min(arg_0, -1i), all(vec3<bool>(true, true, false)) & (!global1.b & false), _wgslsmith_sub_vec4_i32(~(~select(vec4<i32>(-22944i, global1.c.x, 7572i, -1i), global1.c, vec4<bool>(arg_2.x, global1.b, true, true))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(global1.c, global1.c), vec4<i32>(-2147483647i, arg_0, arg_0, global1.a) | vec4<i32>(u_input.b.x, arg_0, arg_0, 21126i))), _wgslsmith_clamp_u32(~abs(17924u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.a.xy, arg_1.b) & (vec2<u32>(global1.d, arg_3.a.x) << (vec2<u32>(1u, 74650u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~arg_1.a.ww, select(arg_3.a.xw, arg_1.a.zy, vec2<bool>(false, arg_2.x)))), firstTrailingBit(4294967295u)), 528f);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 468f) - _wgslsmith_f_op_f32(1015f + global3.x)), -643f, _wgslsmith_f_op_f32(-global3.x))));
    let var_0 = select(_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, u_input.b.x), countOneBits(min(40593i, global1.c.x) >> (~0u % 32u))), global1.a, any(vec4<bool>(!arg_2.x, all(vec4<bool>(global1.b, global1.b, false, false)), true, arg_2.x)));
    let var_1 = _wgslsmith_div_f32(1051f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(func_2(arg_0, global1.a, global1.e).e))))));
    let var_2 = _wgslsmith_dot_vec2_u32(reverseBits(arg_1.b), arg_1.a.xy);
    return !all(select(!func_3(arg_1.b.x, Struct_2(arg_0, arg_2.x, global1.c, u_input.a, var_1), vec2<u32>(u_input.a, arg_3.a.x), -2147483647i).yy, arg_2.yy, arg_2.x && true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b.x | -(-1i ^ (global1.a << (global1.d % 32u))), Struct_1(~func_1(2147483647i, Struct_1(vec4<u32>(global1.d, 38631u, 0u, 0u), vec2<u32>(global1.d, global1.d)), Struct_1(vec4<u32>(global1.d, u_input.a, global1.d, 1u), vec2<u32>(u_input.a, global1.d))), ~(~(~vec2<u32>(4294967295u, 47727u)))), vec3<bool>(!global1.b & true, all(func_3(min(4294967295u, 1u), Struct_2(19795i, global1.b, global1.c, global1.d, 1190f), abs(vec2<u32>(u_input.a, 0u)), ~u_input.b.x).yz), true), Struct_1(~(~vec4<u32>(u_input.a, u_input.a, 0u, 0u)) | vec4<u32>(50116u, 0u >> (global1.d % 32u), 9903u, max(u_input.a, 0u)), countOneBits(~(~vec2<u32>(18414u, 4294967295u)))));
    var var_1 = global1.d;
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, ~35524u, func_1(-1i, Struct_1(vec4<u32>(u_input.a, u_input.a, 46389u, u_input.a), vec2<u32>(96803u, global1.d)), Struct_1(vec4<u32>(u_input.a, 2664u, u_input.a, u_input.a), vec2<u32>(51218u, global1.d))).x, global1.d), ~max(~vec4<u32>(0u, 4294967295u, 132139u, 1u), vec4<u32>(global1.d, 33599u, global1.d, global1.d))), select(reverseBits(min(vec2<u32>(60270u, 0u) & vec2<u32>(u_input.a, 4294967295u), vec2<u32>(10375u, 4294967295u))), ~vec2<u32>(global1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(52966u, 5891u, 55570u, 1u), vec4<u32>(u_input.a, 56176u, 38072u, global1.d))), global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.xww, global1.e, global1.c.x >> (35982u % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.e, -154f, global1.e, 381f), vec4<f32>(-737f, -151f, global3.x, global3.x), false)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(280f, 2299f, global3.x, global3.x))))))));
}

