struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-19158i, -6257i, -233i, 0i));

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 14372i, -17326i, 1i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 27>();
    var var_0 = u_input.b.x < ~1i;
    let var_1 = ~(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(7499u, 0u, u_input.a.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 57927u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)))));
    var var_2 = Struct_3(vec3<i32>(firstLeadingBit(i32(-1i) * -global2.x), global2.x | _wgslsmith_div_i32(_wgslsmith_sub_i32(global2.x, 1i), global2.x), _wgslsmith_mod_i32(-16563i, global2.x)));
    let var_3 = Struct_3(var_2.a);
    return -523f;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = ~global0.a.yz;
    let var_1 = _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-arg_1.x))), true));
    var_0 = global0.a.zx;
    let var_2 = Struct_1(max(vec4<i32>(0i, arg_0, 13950i, countOneBits(-24928i)), vec4<i32>(~(global0.a.x ^ -1i), _wgslsmith_sub_i32(-global0.a.x, global0.a.x), i32(-1i) * -1i, 1i)));
    var var_3 = Struct_1(_wgslsmith_mult_vec4_i32(var_2.a, ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, arg_0, -2147483647i, u_input.b.x) | vec4<i32>(global2.x, arg_0, arg_0, 19111i), abs(vec4<i32>(var_0.x, u_input.b.x, 19082i, 23304i)))));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = func_2(_wgslsmith_add_i32(41062i, _wgslsmith_mod_i32(min(global2.x, ~2147483647i), 36008i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, 281f, 1509f, 333f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, 144f, 296f, -1753f)))));
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-204f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-248f)) + _wgslsmith_f_op_f32(213f * 810f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 312f), -868f, arg_0))))));
    var var_1 = arg_1;
    global0 = func_2(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, var_1.a.x, -1i, -3033i), -vec4<i32>(2147483647i, -1i, global2.x, 3158i)) & -func_2(var_1.a.x, vec4<f32>(257f, var_0.x, var_0.x, var_0.x)).a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 711f), _wgslsmith_f_op_f32(step(var_0.x, -561f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1118f * 765f))))));
    global1 = array<Struct_2, 27>();
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    let var_0 = 0u;
    global2 = global0.a;
    let var_1 = true;
    global0 = Struct_1(vec4<i32>(~(~func_1(true, Struct_1(global0.a))), -global2.x, global0.a.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, ~global0.a.x), -global0.a.x)));
    var var_2 = all(select(!(!(!vec3<bool>(var_1, false, false))), !select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(false, var_1, false), vec3<bool>(true, true, true), var_1), !vec3<bool>(var_1, var_1, true), var_1 | true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0.a.x), select(min(~0u, _wgslsmith_div_u32(0u, u_input.a.x)), u_input.a.x, true) ^ 4294967295u, -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 91344i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, 19335i, global2.x, -5583i), global0.a)), global2.x, ~(-58464i), 2147483647i));
}

