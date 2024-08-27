struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(719f, -1000f, 1640f, -349f), vec4<f32>(-1211f, 2100f, 387f, 501f), vec4<f32>(-976f, 757f, 553f, 1005f), vec4<f32>(-362f, -233f, 460f, -542f), vec4<f32>(392f, 327f, -1855f, 1000f), vec4<f32>(802f, 1366f, 348f, 673f), vec4<f32>(-743f, -1360f, -203f, -535f), vec4<f32>(-1000f, -574f, 341f, -357f), vec4<f32>(844f, -489f, 1089f, -390f), vec4<f32>(220f, -1594f, -1219f, 861f), vec4<f32>(1000f, -1011f, -723f, -567f), vec4<f32>(-336f, 392f, 2305f, -524f), vec4<f32>(1000f, 1000f, 132f, 1110f), vec4<f32>(1000f, -641f, -262f, 1675f), vec4<f32>(844f, 673f, 231f, -563f), vec4<f32>(-430f, 541f, -422f, -654f), vec4<f32>(671f, 563f, -2334f, 2221f), vec4<f32>(165f, 129f, -982f, -666f));

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<i32>(73472i, -39308i), vec3<u32>(4294967295u, 5759u, 102650u), Struct_1(true, 1269f, vec2<bool>(false, false), 4294967295u)), vec4<u32>(38061u, 0u, 6047u, 31262u), vec3<u32>(3047u, 89334u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_4(global1.a, vec4<u32>(_wgslsmith_clamp_u32(~54733u, _wgslsmith_dot_vec4_u32(vec4<u32>(26764u, 1u, 72u, 12146u), global1.b), select(arg_0, global1.a.c.d, true)), 87212u, ~arg_0 & _wgslsmith_dot_vec3_u32(vec3<u32>(16u, 12837u, 1u), vec3<u32>(arg_0, 4294967295u, global1.c.x)), ~_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(global1.a.c.d, 23310u, 75414u, 0u))) << (vec4<u32>(_wgslsmith_mod_u32(0u, arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(20903u, 4294967295u), select(global1.b.zy, global1.a.b.zx, global1.a.c.c.x)), ~0u, 4294967295u) % vec4<u32>(32u)), global1.a.b);
    var var_1 = Struct_1(all(var_0.a.c.c) & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.c.b, 394f) * _wgslsmith_f_op_f32(var_0.a.c.b + global1.a.c.b)))), select(!(!select(global1.a.c.c, var_0.a.c.c, global1.a.c.c.x)), vec2<bool>(true, global1.a.c.a), var_0.a.c.c), var_0.a.c.d);
    var_1 = Struct_1((all(vec4<bool>(false, true, global1.a.c.a, var_1.c.x)) && !select(true, true, var_0.a.c.a)) | all(select(!vec3<bool>(global1.a.c.c.x, false, false), vec3<bool>(true, true, false), any(vec2<bool>(global1.a.c.c.x, true)))), var_1.b, var_0.a.c.c, 19055u);
    var var_2 = var_1.c;
    var var_3 = select(select(select(vec3<bool>(var_0.a.c.a, select(var_1.c.x, global1.a.c.a, true), true), vec3<bool>(var_2.x, 0i > var_0.a.a.x, var_1.a), (30132u ^ arg_0) == _wgslsmith_dot_vec2_u32(global1.c.xx, global1.c.zy)), select(vec3<bool>(var_0.a.c.c.x, any(vec4<bool>(global1.a.c.c.x, var_2.x, false, global1.a.c.a)), true), !select(vec3<bool>(var_1.a, var_2.x, true), vec3<bool>(true, true, var_1.a), vec3<bool>(false, false, var_0.a.c.c.x)), !(true || var_2.x)), vec3<bool>(any(select(vec2<bool>(false, var_0.a.c.a), vec2<bool>(true, global1.a.c.a), var_0.a.c.c)), select(var_0.a.c.a & true, true, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.x, var_2.x, false), all(vec3<bool>(false, all(global1.a.c.c), true))), true);
    return ~(~(global1.a.b.x & (abs(var_1.d) << (_wgslsmith_add_u32(var_1.d, global1.b.x) % 32u))));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = min(global1.b.x, ~global1.c.x);
    var var_1 = (func_3(~_wgslsmith_div_u32(global1.b.x, var_0)) | 15856u) << (_wgslsmith_add_u32(~_wgslsmith_div_u32(~50968u, global1.b.x), ~(~1u)) % 32u);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.a.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1380f - -252f))));
    let var_3 = !select(vec3<bool>(global1.a.c.a, global1.a.c.c.x, false || global1.a.c.c.x), select(select(vec3<bool>(true, true, global1.a.c.a), vec3<bool>(arg_1, global1.a.c.c.x, global1.a.c.a), global1.a.c.c.x), !vec3<bool>(global1.a.c.a, true, false), select(!vec3<bool>(global1.a.c.a, false, true), !vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, global1.a.c.c.x, false), !vec3<bool>(true, true, arg_1), global1.a.c.c.x), !select(vec3<bool>(false, global1.a.c.c.x, true), vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, false, true)), global1.a.c.c.x));
    var var_4 = var_0;
    return global1.a;
}

fn func_1() -> i32 {
    global0 = array<vec4<f32>, 18>();
    let var_0 = Struct_4(func_2(~(-countOneBits(-1i)), global1.a.c.a), vec4<u32>(global1.b.x, _wgslsmith_div_u32(global1.b.x, func_2(u_input.a, true).c.d), 4294967295u, global1.a.b.x), vec3<u32>(global1.c.x, global1.b.x, global1.b.x));
    global0 = array<vec4<f32>, 18>();
    global1 = Struct_4(var_0.a, vec4<u32>(~global1.b.x, global1.c.x, 14429u, global1.b.x), ~(~(~var_0.a.b)));
    let var_1 = global1.a.a;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false | global1.a.c.a;
    var var_1 = !((_wgslsmith_add_i32(1i, u_input.a) | _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -11504i, 1i, global1.a.a.x), vec4<i32>(global1.a.a.x, u_input.a, global1.a.a.x, global1.a.a.x)), ~vec4<i32>(u_input.a, 5762i, 2147483647i, global1.a.a.x))) >= u_input.a);
    var var_2 = global1.b.x;
    let var_3 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -5117i), vec3<i32>(global1.a.a.x, -2147483647i, global1.a.a.x)))), func_1());
    let var_4 = true;
    global1 = Struct_4(func_2(var_3, false), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(1943u, 69142u), global1.b.x), 0u, 1u, global1.c.x), vec3<u32>(_wgslsmith_add_u32(global1.a.b.x, global1.b.x) & min(1u, 10027u), reverseBits(global1.c.x) >> (global1.a.c.d % 32u), func_3(global1.b.x)) ^ vec3<u32>(4294967295u, firstTrailingBit(~global1.b.x), abs(~global1.a.c.d)));
    var_1 = true;
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-375f, -409f, global1.a.c.b), vec3<f32>(global1.a.c.b, global1.a.c.b, global1.a.c.b)) - vec3<f32>(293f, 894f, global1.a.c.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(abs(~(~global1.b.x)), 18u)], ~(~abs(~vec2<u32>(4294967295u, 8528u))), global0[_wgslsmith_index_u32(~global1.c.x, 18u)], vec2<i32>(_wgslsmith_mult_i32(u_input.a << (global1.a.b.x % 32u), _wgslsmith_sub_i32(0i, 0i)) & u_input.a, 57507i));
}

