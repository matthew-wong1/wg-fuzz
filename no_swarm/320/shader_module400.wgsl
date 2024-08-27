struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec4<f32> = vec4<f32>(-2570f, 512f, -933f, 471f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = u_input.a.x;
    var_0 = ~arg_0.b;
    var_0 = u_input.a.x;
    var_0 = (_wgslsmith_mult_i32(u_input.a.x, -arg_0.b) >> (u_input.b % 32u)) | arg_0.b;
    var var_1 = true & !(!arg_0.c.x);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1780f, -541f, global1.x, -171f) - vec4<f32>(arg_0.d.x, -572f, arg_0.d.x, -873f)), _wgslsmith_div_vec4_f32(vec4<f32>(120f, -895f, 1608f, global1.x), vec4<f32>(1574f, 1000f, 1131f, arg_0.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(-1880f - _wgslsmith_f_op_f32(-global1.x)), 1000f, arg_0.d.x, 1f), !arg_0.a))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(121f, arg_0.c.d.x, arg_1, 313f))))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(arg_0.c.d.x + -1883f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-403f - arg_0.c.d.x), arg_1)), 1356f, arg_0.c.a))));
    let var_1 = arg_0.c;
    let var_2 = !arg_0.c.c.wz;
    let var_3 = 1607f;
    return all(select(!vec2<bool>(all(vec4<bool>(true, arg_0.c.a, false, var_1.c.x)), select(false, false, true)), select(vec2<bool>(var_1.c.x, arg_0.c.d.x > 756f), var_1.c.wy, select(var_2, !vec2<bool>(var_2.x, var_2.x), var_1.c.wx)), var_2));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.c.c;
    var_0 = !select(!arg_0.c.c, !vec4<bool>(var_0.x | true, !var_0.x, func_3(arg_0, global1.x, u_input.a.x), all(arg_0.c.c.yyx)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, false, arg_0.c.c.x, var_0.x), vec4<bool>(true, false, var_0.x, false)), arg_0.c.c, arg_0.c.c));
    var var_1 = arg_0.a;
    var_1 = arg_0.c.b ^ ~(-_wgslsmith_add_i32(-1i, -2147483647i));
    var var_2 = select(max(vec2<u32>(u_input.c, arg_0.b), ~(~vec2<u32>(u_input.c, 1496u))) | _wgslsmith_add_vec2_u32(vec2<u32>(~0u, ~arg_0.b), firstTrailingBit(~vec2<u32>(u_input.b, 1u))), _wgslsmith_mod_vec2_u32(~min(vec2<u32>(arg_0.b, u_input.c), ~vec2<u32>(0u, 41175u)), ~countOneBits(~vec2<u32>(1u, 1u))), all(select(var_0.xyy, !(!var_0.xyz), any(select(arg_0.c.c.yzw, vec3<bool>(var_0.x, false, false), true)))));
    return _wgslsmith_div_f32(-1114f, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(false, u_input.a.x, !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_2(2147483647i, u_input.b, Struct_1(false, u_input.a.x, vec4<bool>(false, true, true, false), global1.xwy)))), _wgslsmith_f_op_f32(step(global1.x, -1019f)))), _wgslsmith_f_op_f32(-global1.x), global1.x)));
    let var_0 = 20657u;
    var var_1 = Struct_1(false, -_wgslsmith_div_i32(-56113i, _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, func_3(Struct_2(0i, u_input.b, Struct_1(false, u_input.a.x, vec4<bool>(true, true, true, true), vec3<f32>(global1.x, global1.x, 435f))), global1.x, 22849i), any(vec2<bool>(true, false))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(false, -11946i, vec4<bool>(false, false, false, true), vec3<f32>(1272f, global1.x, 857f)))).wwz, _wgslsmith_f_op_vec3_f32(global1.ywy - vec3<f32>(1000f, global1.x, global1.x)))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2047f) * _wgslsmith_f_op_f32(ceil(var_1.d.x))), global1.x, -1062f, -170f)));
    var var_2 = _wgslsmith_div_vec4_i32(reverseBits(countOneBits(firstTrailingBit(vec4<i32>(var_1.b, 0i, -2147483647i, var_1.b)))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, u_input.a.x, var_1.b, var_1.b)), vec4<i32>(var_1.b, -12986i, 2147483647i, -36667i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 1u, var_0, var_0) ^ vec4<u32>(u_input.b, u_input.b, 1u, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.d, 4294967295u, var_0), vec4<u32>(u_input.b, var_0, 4294967295u, 0u))) % vec4<u32>(32u))) & select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, firstTrailingBit(-2147483647i), ~(-10599i), ~u_input.a.x), firstTrailingBit(vec4<i32>(-11015i, -46972i, -6266i, 1919i))), abs(firstTrailingBit(-vec4<i32>(-9557i, var_1.b, var_1.b, 0i))), true);
    let x = u_input.a;
    s_output = StorageBuffer(760f, abs(abs(~vec4<i32>(var_2.x, var_1.b, var_1.b, u_input.a.x))), ~((firstTrailingBit(vec2<u32>(4294967295u, 71066u)) << (vec2<u32>(4105u, 44116u) % vec2<u32>(32u))) << (~vec2<u32>(121589u, u_input.b) % vec2<u32>(32u))));
}

