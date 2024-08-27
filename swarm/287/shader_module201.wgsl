struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(50237u, 1u, 28973u), vec3<u32>(15767u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(47739u, 18228u, 3311u), vec3<u32>(1u, 33111u, 0u), vec3<u32>(1u, 2508u, 29159u));

var<private> global1: array<i32, 29> = array<i32, 29>(-24211i, 2147483647i, 19072i, -1i, -19287i, -1i, 0i, 0i, -50961i, 1037i, -11301i, 2147483647i, 33840i, -4350i, 0i, 0i, 57716i, 25072i, 30033i, 2147483647i, 2147483647i, -2848i, 0i, 0i, 57978i, -31683i, 0i, 0i, 2147483647i);

var<private> global2: f32;

var<private> global3: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 0i, 25484i), Struct_2(0i));

var<private> global4: Struct_2 = Struct_2(66i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(true, any(vec2<bool>(true, false)), true)), false), select(vec3<bool>(true, !all(vec2<bool>(true, true)), 1u < ~u_input.a), vec3<bool>(true, true, true), !vec3<bool>(true, true, all(vec3<bool>(true, false, false)))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), all(vec2<bool>(false, false)))));
    var var_1 = firstTrailingBit(vec3<u32>(u_input.a ^ _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(3216u, 4294967295u))), ~u_input.a, u_input.a));
    global2 = _wgslsmith_div_f32(703f, -1408f);
    var var_2 = Struct_3(vec3<i32>(-_wgslsmith_dot_vec2_i32(-global3.a.xz, _wgslsmith_sub_vec2_i32(u_input.b.yy, global3.a.zy)), -12563i, -countOneBits(-2147483647i)), global3.b);
    let var_3 = !var_0.x;
    return var_0;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> bool {
    global3 = Struct_3(~u_input.b.yyy, global3.b);
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-(~u_input.b), -vec4<i32>(1787i, -74944i, 0i, -1i)), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 29u)] | 24901i), global4.a, _wgslsmith_dot_vec2_i32(global3.a.yz & vec2<i32>(1i, global4.a), -vec2<i32>(u_input.b.x, 10562i)), global4.a)));
    global0 = array<vec3<u32>, 6>();
    let var_1 = all(select(vec2<bool>(true, true), vec2<bool>(any(func_3(u_input.b)), !(u_input.b.x != var_0.a)), !(~u_input.a <= select(u_input.a, 158697u, true))));
    var var_2 = !select(!(!vec3<bool>(true, false, var_1)), vec3<bool>(true, any(!vec2<bool>(var_1, var_1)), any(select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, true, true), vec3<bool>(var_1, var_1, var_1)))), false);
    return true;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_4) -> bool {
    let var_0 = u_input.b.zxw;
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.c);
    var var_2 = min(~select(global0[_wgslsmith_index_u32(54394u & arg_2, 6u)], _wgslsmith_mod_vec3_u32(vec3<u32>(29146u, u_input.a, 15105u), ~global0[_wgslsmith_index_u32(arg_2, 6u)]), !func_3(u_input.b).x), global0[_wgslsmith_index_u32(4294967295u, 6u)]);
    global1 = array<i32, 29>();
    var var_3 = 6227u;
    return true;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = arg_0.x || true;
    let var_1 = global3.b;
    global0 = array<vec3<u32>, 6>();
    var var_2 = ~u_input.b.zz;
    global0 = array<vec3<u32>, 6>();
    return func_4(597f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(1170f, 688f), _wgslsmith_f_op_f32(f32(-1f) * -735f))))), reverseBits(u_input.a & _wgslsmith_sub_u32(u_input.a, ~15816u)), Struct_4(any(vec2<bool>(func_2(vec3<f32>(-222f, 588f, -2241f), -1191f), true)), Struct_1(var_1.a, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-563f, 1437f, 1345f), vec3<f32>(-1098f, 271f, 205f)))))), vec2<i32>(var_1.a, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(u_input.b.x), any(vec2<bool>(true, true)));
    let var_1 = u_input.a;
    let var_2 = ~var_1;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(820f, _wgslsmith_f_op_f32(f32(-1f) * -367f), func_1(vec3<bool>(var_0.b, var_0.b, true)) || var_0.b))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(962f, -179f, 352f) + vec3<f32>(1107f, -303f, -1000f)))) * vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(230f * -123f))), _wgslsmith_div_f32(440f, _wgslsmith_f_op_f32(f32(-1f) * -623f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-151f, 1267f, -377f), vec3<f32>(916f, -1218f, 1335f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, -186f, -402f))))));
    let var_5 = vec2<bool>(false, any(vec2<bool>(any(func_3(u_input.b)), func_1(select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, true))))));
    global4 = global3.b;
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mult_u32(0u, var_1)), ~_wgslsmith_mult_u32(var_1, u_input.a)), max(~u_input.a, abs(~var_1)) & 0u, 1u);
}

