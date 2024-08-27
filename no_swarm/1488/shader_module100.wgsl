struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-18648i, false);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-1224f, 408f, 167f, -1552f), vec4<f32>(-431f, -1000f, -2988f, 867f), vec4<f32>(931f, -1694f, -2232f, -750f), vec4<f32>(1253f, 3227f, -399f, -1838f), vec4<f32>(-207f, 1603f, -440f, 1291f), vec4<f32>(-2628f, -1185f, 113f, 180f), vec4<f32>(-575f, -105f, 600f, 1345f), vec4<f32>(-698f, 239f, -689f, -1103f), vec4<f32>(276f, 419f, 1187f, 1530f), vec4<f32>(-1182f, -459f, -687f, 400f), vec4<f32>(-695f, -1185f, -711f, 930f), vec4<f32>(-1340f, 1443f, 433f, 968f), vec4<f32>(-689f, -1857f, -240f, -309f), vec4<f32>(521f, -885f, 1000f, -1573f), vec4<f32>(249f, 2410f, -1567f, 995f));

var<private> global3: Struct_4 = Struct_4(Struct_3(vec3<f32>(-145f, -426f, 1190f), 2147483647i));

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    global0 = Struct_2(reverseBits(global0.a), global4.x);
    global0 = Struct_2(733i, !global4.x);
    global2 = array<vec4<f32>, 15>();
    let var_0 = -1326f;
    global2 = array<vec4<f32>, 15>();
    return arg_1.x ^ reverseBits(~(-15475i));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(-772f));
    var var_1 = global3.a.b;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f * -260f) + global3.a.a.x), global4.x)))));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.a.a))), _wgslsmith_mult_i32(~u_input.a, abs(-global3.a.b))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-2260f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(-223f - -191f))), _wgslsmith_mult_i32(max(_wgslsmith_div_i32(i32(-1i) * -53746i, ~var_3.a.b), -max(global0.a, global3.a.b)), -_wgslsmith_add_i32(-6821i, _wgslsmith_sub_i32(u_input.c, 2147483647i))));
    return select(_wgslsmith_div_vec3_i32(~(vec3<i32>(1i, 42713i, var_3.a.b) & vec3<i32>(1i, -7284i, -37494i)) | _wgslsmith_sub_vec3_i32(-vec3<i32>(var_3.a.b, 13043i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(global3.a.b, global3.a.b, var_3.a.b), vec3<i32>(565i, 0i, global3.a.b))), ~vec3<i32>(2787i | var_4.b, -4003i, ~global3.a.b)), _wgslsmith_clamp_vec3_i32(reverseBits(~vec3<i32>(global0.a, var_3.a.b, global3.a.b) & vec3<i32>(global3.a.b, 4833i, var_3.a.b)), -_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(11035i, global3.a.b, var_3.a.b)), vec3<i32>(u_input.c, u_input.c, var_4.b)), vec3<i32>(39218i, ~(i32(-1i) * -1i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.b, global0.a, -60752i, u_input.c), vec4<i32>(36892i, global0.a, global3.a.b, u_input.a)), 22220i))), any(select(vec3<bool>(true, any(vec3<bool>(true, global4.x, global4.x)), global0.b), !vec3<bool>(false, false, global4.x), any(!vec2<bool>(global4.x, global0.b)))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(global3.a.b, arg_2), 2147483647i);
    var_0 = ~2147483647i;
    var var_1 = 1u;
    var_1 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(1u, 0u, 17703u)), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.b.x)))), u_input.b.x, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(4265u, u_input.b.x, u_input.b.x, u_input.b.x)) ^ ~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(15742u, 3751u, u_input.b.x, 1u)), ~(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u) & select(vec4<u32>(1u, 22456u, 35621u, 0u), vec4<u32>(u_input.b.x, 22086u, 99233u, 260u), vec4<bool>(true, arg_1.x, global4.x, false)))));
    var var_2 = _wgslsmith_sub_i32(1i, -9853i);
    return abs(u_input.b.x);
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = select(vec2<bool>(any(arg_0.yzy), all(select(select(arg_0.yyz, vec3<bool>(true, global0.b, true), global0.b), arg_0.zyx, !vec3<bool>(global4.x, global0.b, global0.b)))), vec2<bool>(true, !(global3.a.b > -global0.a)), select(!select(vec2<bool>(false, global0.b), vec2<bool>(true, false), !vec2<bool>(global0.b, global4.x)), !arg_0.yy, false));
    global1 = ~1u;
    let var_1 = vec4<u32>(~u_input.b.x, 4294967295u, func_4(_wgslsmith_mod_i32(func_2(all(arg_0), vec3<i32>(global0.a, global3.a.b, -45225i), global3.a.a.x), -(i32(-1i) * -11138i)), select(select(arg_0.xzw, arg_0.wyz, select(arg_0.xyw, arg_0.zww, vec3<bool>(false, false, true))), !vec3<bool>(arg_0.x, var_0.x, var_0.x), false), _wgslsmith_sub_i32(~global0.a, func_2(true, vec3<i32>(-2147483647i, 18919i, global0.a), _wgslsmith_f_op_f32(-358f * -767f))), func_3()), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(max(select(u_input.b.yz, u_input.b.yz, vec2<bool>(arg_0.x, global0.b)), vec2<u32>(u_input.b.x, 30344u)), firstTrailingBit(u_input.b.xz)), u_input.b.xz));
    var var_2 = _wgslsmith_f_op_f32(global3.a.a.x * _wgslsmith_f_op_f32(min(-1102f, _wgslsmith_f_op_f32(trunc(global3.a.a.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global3.a.a)));
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<bool>(global4.x, !any(vec2<bool>(global0.b, any(global4.yx))), func_1(select(select(select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(false, true, global0.b, global0.b), true), !vec4<bool>(false, global0.b, global0.b, true), global0.b), vec4<bool>(true, true, global4.x, global0.b), false)));
    global3 = Struct_4(global3.a);
    let var_0 = Struct_5(Struct_2(global0.a, global0.b));
    global4 = select(vec3<bool>(false, false, var_0.a.b), vec3<bool>(global4.x, any(!select(vec3<bool>(true, true, global0.b), vec3<bool>(true, var_0.a.b, global4.x), var_0.a.b)), !(!(global0.b | global0.b))), !select(vec3<bool>(true, true, false && global4.x), select(select(vec3<bool>(global4.x, var_0.a.b, var_0.a.b), vec3<bool>(true, global0.b, var_0.a.b), vec3<bool>(true, global4.x, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, var_0.a.b), vec3<bool>(var_0.a.b, true, var_0.a.b), any(vec3<bool>(false, false, var_0.a.b)))));
    let var_1 = _wgslsmith_mult_i32(0i, select(global0.a, global0.a, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~((select(u_input.b.x, u_input.b.x, true) | ~u_input.b.x) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(123907u, 4030u, u_input.b.x), u_input.b) & 9849u) % 32u)), 15u)], 1u);
}

