struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec2<f32>(-1000f, -312f)), vec3<f32>(190f, -1116f, 2670f), vec2<i32>(0i, -52054i), vec2<f32>(-2066f, -176f)), Struct_2(Struct_1(vec2<f32>(-583f, 957f)), vec3<f32>(-1347f, 288f, -2851f), vec2<i32>(7134i, -26458i), vec2<f32>(344f, 688f)), Struct_2(Struct_1(vec2<f32>(-1130f, -764f)), vec3<f32>(372f, -401f, -1000f), vec2<i32>(-42114i, 20212i), vec2<f32>(-1953f, -1715f)), Struct_2(Struct_1(vec2<f32>(1038f, -208f)), vec3<f32>(-278f, -447f, -1000f), vec2<i32>(38249i, -1i), vec2<f32>(322f, 1000f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> vec2<f32> {
    global1 = array<Struct_3, 20>();
    let var_0 = true;
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e.yy, vec2<i32>(0i, u_input.a)), _wgslsmith_div_i32(u_input.e.x, arg_0.x), arg_0.x, -24770i), -abs(u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(31665i, -1i), 56719i, u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, arg_0.x, 1i), u_input.b)), u_input.b)), -firstTrailingBit(~(~vec4<i32>(u_input.e.x, arg_0.x, 1i, u_input.a))));
    let var_3 = any(!arg_1) | var_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2011f, -494f))))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    global0 = true;
    let var_0 = abs(vec3<u32>(55523u, ~u_input.d.x, ~32638u));
    var var_1 = 14657u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1300f, arg_2) - -176f);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1496f, 603f), vec2<f32>(arg_2, arg_2), true))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1773f, 1559f), vec2<f32>(1000f, arg_2), true)))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-271f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1168f + -603f) - _wgslsmith_f_op_f32(-292f + -1000f)), -536f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1218f)) - _wgslsmith_f_op_f32(f32(-1f) * -831f))), vec2<i32>(-_wgslsmith_div_i32(-u_input.e.x, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(41274i, -1024i, -12718i, 29870i))), -u_input.e.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(790f, arg_2)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(875f, -1000f), vec2<f32>(arg_2, arg_2), vec2<bool>(false, true))))) + _wgslsmith_f_op_vec2_f32(func_3(-_wgslsmith_mod_vec2_i32(u_input.b.zx, vec2<i32>(0i, 2147483647i)), vec2<bool>(true, true)))));
    return var_3.a;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = 1i;
    let var_1 = 1u;
    var var_2 = Struct_2(func_2(-40251i, ~(~firstLeadingBit(vec3<u32>(4294967295u, 1u, 1u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-440f, 351f, arg_0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-2206f + 1034f), 2865f, 1357f), u_input.e.zx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1415f)), _wgslsmith_div_vec2_f32(vec2<f32>(-450f, -1680f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -820f)))), arg_0)));
    var var_3 = -9946i;
    var var_4 = var_2.a;
    return -610f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 4>();
    global1 = array<Struct_3, 20>();
    global0 = 1855f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f + -755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -1000f))) - _wgslsmith_f_op_f32(-1547f + _wgslsmith_f_op_f32(func_1(vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(-1432f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1485f))), -676f, _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))))), vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-142f, 1706f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, -2960f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-3142f, -947f, -549f) + vec3<f32>(-275f, -2040f, -2509f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1585f, -698f, 559f)))))));
}

