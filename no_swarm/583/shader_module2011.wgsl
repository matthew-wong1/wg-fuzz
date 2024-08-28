struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-2257i, 6275i), vec2<i32>(-6208i, -17141i), vec2<i32>(-8317i, 0i), vec2<i32>(26229i, 2147483647i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var var_0 = !(!any(vec4<bool>(true, false, false, false))) && (-(u_input.c.x | arg_1.x) <= arg_0.d);
    return _wgslsmith_sub_i32(-max(u_input.c.x, 40482i) >> (u_input.a % 32u), arg_1.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<vec2<i32>, 4>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.x, 228f) + _wgslsmith_f_op_f32(-955f + -2141f))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(arg_3.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.a, vec3<f32>(var_0.x, 1099f, arg_0.x)))))), arg_2, u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.zzx, vec3<i32>(arg_1, 0i, u_input.c.x)), ~vec3<i32>(arg_1, arg_1, 2147483647i)), u_input.c.zxw), arg_2.a.x);
    let var_2 = ~(~(~(~u_input.a)));
    global0 = array<vec2<i32>, 4>();
    return min(u_input.c.x | (31472i >> (u_input.b.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-45336i, arg_1), ((i32(-1i) * -44552i) ^ (arg_1 ^ -33444i)) & -21693i));
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<i32>, 4>();
    let var_0 = -1268f;
    var var_1 = -(_wgslsmith_mult_vec4_i32(u_input.c, -select(vec4<i32>(28853i, u_input.c.x, 0i, u_input.c.x), vec4<i32>(-52322i, u_input.c.x, 0i, u_input.c.x), vec4<bool>(false, false, true, false))) | u_input.c);
    var var_2 = _wgslsmith_f_op_f32(var_0 - -1000f);
    return Struct_2(~abs(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 1610f)), func_2(Struct_3(Struct_1(vec3<f32>(var_0, -1164f, 1192f)), Struct_1(vec3<f32>(var_0, var_0, var_0)), u_input.b.x, -1i, var_0), u_input.c.zyy), Struct_1(vec3<f32>(2088f, var_0, -1449f)), Struct_1(vec3<f32>(-280f, var_0, var_0)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(-505f, var_0, var_0), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, var_0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 567f, 150f))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(685f, 413f, -1096f, var_0) - vec4<f32>(-1074f, -1714f, 2198f, var_0))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, 774f, var_0), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2312f, 528f, var_0, var_0)))))), vec2<i32>(var_1.x | 1i, select(_wgslsmith_sub_i32(39859i, -88514i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 630u, 14783u), vec4<u32>(u_input.b.x, u_input.a, 55906u, 1u)) % 32u), reverseBits(-17665i), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(544f, 1000f, -779f) * vec3<f32>(518f, -899f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(387f, var_0, -455f) + vec3<f32>(var_0, -221f, -708f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 1490f, var_0), vec3<f32>(-195f, var_0, var_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.d.x, -4488i), vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, -188f)), var_0.b.a.x), 8471i, -7288i, var_0.a);
}

