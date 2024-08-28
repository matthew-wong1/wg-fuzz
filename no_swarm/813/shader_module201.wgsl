struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-662f, 1017f, -295f), vec3<f32>(-1885f, 2622f, -527f), vec3<f32>(2708f, 1000f, -444f), vec3<f32>(-298f, -1120f, -727f), vec3<f32>(-275f, -954f, -692f), vec3<f32>(-302f, 1405f, -1000f), vec3<f32>(755f, -1241f, 530f), vec3<f32>(-1073f, -113f, 390f), vec3<f32>(-1000f, 172f, -1329f), vec3<f32>(-737f, -209f, 845f), vec3<f32>(-187f, -711f, -107f), vec3<f32>(1057f, 421f, 863f), vec3<f32>(-626f, 426f, -2503f), vec3<f32>(-800f, 1338f, -1366f), vec3<f32>(-1935f, 100f, 899f), vec3<f32>(2081f, 1000f, -261f), vec3<f32>(-1000f, 1506f, -488f), vec3<f32>(1000f, -583f, 1883f), vec3<f32>(-1535f, 1307f, 736f), vec3<f32>(1534f, -113f, 949f), vec3<f32>(-606f, 176f, -277f), vec3<f32>(-529f, -613f, -2207f));

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> f32 {
    let var_0 = !(!global1.d);
    var var_1 = Struct_2(select(!vec4<bool>(!var_0, global1.d || true, all(vec4<bool>(global1.d, global1.d, var_0, global1.d)), !var_0), !(!select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, var_0, false, true))), !var_0));
    let var_2 = global1.b.x;
    var var_3 = ~0u;
    var var_4 = vec2<f32>(1405f, _wgslsmith_f_op_f32(max(764f, -1083f)));
    return -741f;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = select(-vec2<i32>(-37198i, ~_wgslsmith_clamp_i32(global1.e.x, 0i, u_input.c.x)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_2.e.x), vec2<i32>(_wgslsmith_div_i32(30647i, u_input.b.x), 2147483647i)), false);
    return -827f;
}

fn func_1(arg_0: Struct_4) -> f32 {
    global1 = arg_0.a;
    global0 = array<vec3<f32>, 22>();
    global0 = array<vec3<f32>, 22>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.b.x, 146f)))) + global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x - global1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), -1000f)))));
    let var_1 = arg_0.a.d;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.a.b.x, global1.b.x, true)) - _wgslsmith_f_op_f32(step(var_0.x, 1453f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.a.b))), arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec4<u32>(global1.a.x, ~(~0u), 82036u, 4294967295u | ~_wgslsmith_mult_u32(u_input.d.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.b - global1.b))))), global1.c, any(!select(select(vec2<bool>(false, true), vec2<bool>(global1.d, true), vec2<bool>(global1.d, false)), vec2<bool>(global1.d, global1.d), !global1.d)), ~(vec3<i32>(-1i) * -(~vec3<i32>(12563i, 0i, global1.e.x))));
    global0 = array<vec3<f32>, 22>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f + -1194f) * _wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(u_input.a, global1.b, global1.a.x, global1.d, vec3<i32>(1i, global1.e.x, -45293i)), global1.b.x, u_input.a)))), global1.b.x), -234f))));
    global1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, max(u_input.a.x, 34728u), firstLeadingBit(global1.a.x), u_input.d.x), select(_wgslsmith_mult_vec4_u32(u_input.a, global1.a), ~vec4<u32>(13311u, u_input.d.x, u_input.a.x, global1.a.x), u_input.c.x >= 1i)), 67742u << (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, global1.c)), ~vec2<u32>(u_input.a.x, global1.a.x)) % 32u), _wgslsmith_clamp_u32(0u, abs(~0u), max(~36061u, u_input.d.x)), _wgslsmith_div_u32(0u, 9755u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, global1.b.x, -118f, global1.b.x)))), vec4<f32>(global1.b.x, -1066f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - global1.b.x), _wgslsmith_f_op_f32(-global1.b.x))), 65123u, !select(any(select(vec3<bool>(global1.d, true, global1.d), vec3<bool>(global1.d, global1.d, false), true)), all(vec4<bool>(true, true, true, true)), false), global1.e);
    var var_1 = Struct_3(u_input.a.zz, !vec2<bool>(all(!vec3<bool>(true, global1.d, global1.d)), global1.d), Struct_1(max(vec4<u32>(~87761u, 4294967295u, global1.c & global1.c, countOneBits(global1.c)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, 177f, 170f, global1.b.x))), ~0u, false, -vec3<i32>(-2147483647i, global1.e.x, u_input.c.x)), select(vec4<bool>(all(select(vec4<bool>(global1.d, true, true, true), vec4<bool>(true, true, global1.d, global1.d), vec4<bool>(global1.d, global1.d, true, global1.d))), false, global1.d, !global1.d), select(vec4<bool>(any(vec4<bool>(true, global1.d, global1.d, false)), global1.d, global1.d, true), vec4<bool>(false, global1.d, !global1.d, global1.d), global1.d), !select(select(vec4<bool>(global1.d, global1.d, true, true), vec4<bool>(true, false, true, true), vec4<bool>(global1.d, global1.d, false, global1.d)), vec4<bool>(true, true, global1.d, global1.d), global1.c >= u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.b.yz, ~u_input.d.x, global1.a.zxy);
}

