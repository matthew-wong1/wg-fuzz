struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(0u, 4294967295u), vec2<u32>(27560u, 27480u), vec2<u32>(0u, 4294967295u), vec2<u32>(46074u, 4294967295u), vec2<u32>(4901u, 50736u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 14535u), vec2<u32>(31458u, 15624u), vec2<u32>(16539u, 0u), vec2<u32>(615u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(22974u, 60095u), vec2<u32>(0u, 26998u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<bool, 14>;

var<private> global2: array<vec2<bool>, 25>;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<f32>(-1287f, -1269f, 342f, -364f)), Struct_2(vec4<f32>(2347f, 1949f, 782f, -1293f)), Struct_2(vec4<f32>(-1608f, 1376f, 1000f, -1000f)), Struct_2(vec4<f32>(-1565f, 907f, -1000f, -465f)), Struct_2(vec4<f32>(-1000f, -335f, -493f, 749f)), Struct_2(vec4<f32>(410f, 1099f, -753f, 1713f)), Struct_2(vec4<f32>(-380f, -1144f, -1324f, 175f)), Struct_2(vec4<f32>(-1000f, 1000f, -1000f, -705f)), Struct_2(vec4<f32>(984f, 1000f, 617f, 246f)), Struct_2(vec4<f32>(-1000f, -1521f, 1348f, -607f)), Struct_2(vec4<f32>(-606f, -520f, -409f, 350f)), Struct_2(vec4<f32>(1595f, 1801f, -1588f, 879f)), Struct_2(vec4<f32>(-586f, 337f, 393f, 1000f)), Struct_2(vec4<f32>(702f, -1000f, 772f, -1239f)), Struct_2(vec4<f32>(792f, 397f, 1762f, -1097f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1() -> Struct_3 {
    var var_0 = -1031f;
    global0 = array<vec2<u32>, 15>();
    global2 = array<vec2<bool>, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(394f * 1757f), 422f, -655f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(391f, -445f, 725f) - vec3<f32>(-684f, -1000f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, -230f, -518f) + vec3<f32>(297f, 1456f, 221f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, -749f, -295f))), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1157f, -792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f) + _wgslsmith_f_op_f32(step(2340f, 1073f))))));
    var var_2 = ~u_input.d.zx;
    return Struct_3(var_2.x, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) + _wgslsmith_f_op_f32(f32(-1f) * -1752f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2527f, var_1.x)))), -945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))))), Struct_1(vec2<u32>(1u, u_input.e.x), _wgslsmith_mult_u32(~1u, abs(u_input.a.x)) ^ 4365u, -vec2<i32>(~var_2.x, 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> vec3<bool> {
    global0 = array<vec2<u32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-781f)), _wgslsmith_f_op_f32(f32(-1f) * -865f)))));
    let var_1 = arg_1;
    var var_2 = func_1().b;
    global3 = array<Struct_2, 15>();
    return vec3<bool>(global1[_wgslsmith_index_u32((u_input.e.x << (_wgslsmith_mod_u32(~u_input.b, 21531u) % 32u)) >> (48192u % 32u), 14u)], true, global1[_wgslsmith_index_u32(u_input.b, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(u_input.c >> (~u_input.a.x % 32u), ~1u), 1u, vec2<i32>(u_input.d.x, ~_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x))));
    let var_1 = -(~_wgslsmith_add_vec2_i32(u_input.d.zy, var_0.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-297f - -245f), -916f, 412f))));
    var var_3 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(495f + var_2.x)))), var_2.x), func_1(), var_2.x);
    global2 = array<vec2<bool>, 25>();
    var var_4 = !(!select(all(vec3<bool>(var_3.x, global1[_wgslsmith_index_u32(14685u, 14u)], var_3.x)), global1[_wgslsmith_index_u32(u_input.a.x, 14u)], true) && func_2(831f, func_1(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x * -892f)))).x);
    global1 = array<bool, 14>();
    global0 = array<vec2<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(1813i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), var_2.x), var_2.x, -1464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), ~firstTrailingBit(~select(vec4<u32>(u_input.a.x, var_0.b, 4294967295u, 1u), u_input.e, true)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~(~vec3<i32>(2147483647i, var_0.c.x, -2147483647i)), u_input.d), u_input.d));
}

