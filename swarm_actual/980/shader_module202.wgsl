struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(-1i, 6361i, 0i, 2147483647i), 75771u));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(0u, 40288u, 32733u), vec3<f32>(-1204f, 1000f, 1148f), 111279u);

var<private> global2: f32 = -889f;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = arg_0.a;
    var var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.a.x, 0i, var_0.a.a.x), vec3<i32>(2147483647i, u_input.c, arg_0.b)) << ((u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)), global0.a.a.wyx);
    let var_2 = 4294967295u;
    global0 = arg_0.a;
    global2 = _wgslsmith_f_op_f32(step(-1321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x)))));
    return select(select(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), all(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true), !all(vec3<bool>(true, true, true))), true);
}

fn func_2() -> vec4<i32> {
    var var_0 = !func_3(Struct_3(Struct_2(global0.a), -1i, global0.a));
    let var_1 = Struct_5(false);
    var var_2 = func_3(Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(global0.a.a, global0.a.a, global0.a.a), global0.a.b)), 2147483647i, global0.a)).wx;
    var var_3 = firstTrailingBit(8908u);
    var var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.b, vec3<u32>(4294967295u, 1u, 26742u)), reverseBits(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global0.a.b, global1.a.x, global1.c), global1.a, var_1.a), ~vec3<u32>(global0.a.b, 1u, global0.a.b), ~vec3<u32>(global1.c, 5841u, u_input.b.x))));
    return global0.a.a;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = !vec2<bool>(true, arg_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(-1232f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-228f, 117f, all(vec2<bool>(true, false))))))));
    var var_2 = ~(global0.a.a.yy ^ vec2<i32>(~select(u_input.c, u_input.c, true), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a.x, 0i, u_input.c, global0.a.a.x), func_2())));
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(global0.a.a.x, -9248i), firstTrailingBit(2147483647i) ^ ~0i, -31186i, ~_wgslsmith_add_i32(1i, 53696i)) | global0.a.a, ~1u);
    let var_4 = all(var_0);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(!any(vec4<bool>(true, true, true, true))), select(!((u_input.d == 1u) || true), !func_1(any(vec2<bool>(false, true))), true), global3.x >= global1.b.x, func_3(Struct_3(Struct_2(global0.a), 2147483647i, global0.a)).x);
    global2 = -303f;
    var var_1 = vec3<bool>(true, any(vec2<bool>(true, true)) && func_3(Struct_3(Struct_2(global0.a), _wgslsmith_sub_i32(0i, global0.a.a.x), Struct_1(global0.a.a, 79975u))).x, !(!(!all(var_0.wy))));
    var var_2 = ~vec2<u32>(0u, u_input.b.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-840f - -1015f)), global3.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, global3.x), vec2<f32>(631f, global1.b.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.xy) * global3.yy))));
    let var_4 = Struct_2(Struct_1(global0.a.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(global1.a.yx, vec2<u32>(global1.c, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1904f, -218f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_3.x)), vec2<bool>(var_0.x, var_1.x))) + vec2<f32>(_wgslsmith_f_op_f32(-global3.x), 1809f)))), var_4.a.b, abs(max(firstLeadingBit(_wgslsmith_mod_i32(global0.a.a.x, var_4.a.a.x)), func_2().x)), vec3<u32>(0u, 0u, ~(~(~1u))));
}

