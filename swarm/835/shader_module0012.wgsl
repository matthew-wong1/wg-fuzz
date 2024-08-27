struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(76681u, 4294967295u), vec2<u32>(18135u, 8629u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 45299u), vec2<u32>(1u, 25256u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(33093u, 0u), vec2<u32>(46897u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 81315u), vec2<u32>(125967u, 17571u), vec2<u32>(1u, 26332u), vec2<u32>(1u, 0u), vec2<u32>(19746u, 4294967295u), vec2<u32>(66017u, 4294967295u));

var<private> global1: array<vec3<bool>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false))));
    global0 = array<vec2<u32>, 17>();
    let var_1 = u_input.a.zy;
    let var_2 = any(vec4<bool>(!var_0.x, countOneBits(1u) < (_wgslsmith_sub_u32(var_1.x, 43237u) ^ _wgslsmith_div_u32(0u, 25722u)), _wgslsmith_div_i32(~1i, abs(u_input.b)) < -(u_input.c >> (30794u % 32u)), all(select(var_0.zx, vec2<bool>(var_0.x, var_0.x), select(var_0.wx, vec2<bool>(false, var_0.x), var_0.yy)))));
    let var_3 = Struct_2(var_2, _wgslsmith_div_u32(4637u, var_1.x), var_0.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(614f, 251f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f + -1232f) - -781f), -437f)));
    return u_input.a.x << (4294967295u % 32u);
}

fn func_4(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = abs(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(~vec4<u32>(arg_1, arg_1, u_input.a.x, arg_1), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 104590u, u_input.a.x, 32504u), vec4<u32>(arg_1, 4294967295u, u_input.a.x, arg_1)), vec4<bool>(true, false, true, true)), ~select(vec4<u32>(arg_1, arg_1, u_input.a.x, 1u), vec4<u32>(u_input.a.x, arg_1, 1u, arg_1), vec4<bool>(false, false, true, false))), vec4<u32>(~(~26622u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 31197u, 4294967295u, 82760u)), vec4<u32>(58734u, u_input.a.x, 0u, 11447u)), _wgslsmith_mod_u32(firstLeadingBit(27086u), ~arg_1), u_input.a.x)));
    global0 = array<vec2<u32>, 17>();
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_div_f32(arg_0, -1430f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, -608f))))), vec3<f32>(-261f, arg_0, arg_0)));
    var var_2 = true;
    global1 = array<vec3<bool>, 24>();
    return _wgslsmith_mod_u32(var_0.x, select(u_input.a.x, 18318u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x) <= arg_1)) >> (arg_1 % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = (select(u_input.a.x, ~(~4294967295u), true) & 0u) >= u_input.a.x;
    global1 = array<vec3<bool>, 24>();
    var var_1 = ~select(~abs(reverseBits(vec4<u32>(u_input.a.x, 47185u, 1u, u_input.a.x))), select(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(16257u, 56681u, u_input.a.x, u_input.a.x)), abs(~vec4<u32>(u_input.a.x, 121025u, u_input.a.x, u_input.a.x)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, true), true)), vec4<bool>(any(vec3<bool>(false, true, true)), u_input.e.x > ~24307i, false, true));
    var_1 = vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 50998u), u_input.a.x, var_1.x, func_4(-403f, ~func_3()));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(606f + 601f), -460f, -707f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    let var_0 = false;
    let var_1 = -911f;
    let var_2 = _wgslsmith_f_op_f32(-var_1);
    var var_3 = var_0;
    global1 = array<vec3<bool>, 24>();
    return func_2();
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    let var_0 = func_2();
    var var_1 = Struct_3(firstTrailingBit(_wgslsmith_mult_i32(u_input.c, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), arg_2);
    var var_2 = arg_1;
    var_2 = var_0;
    var var_3 = Struct_3(_wgslsmith_div_i32(var_1.a | _wgslsmith_add_i32(~var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1716i, -1i, u_input.b, var_1.a), vec4<i32>(u_input.b, u_input.d.x, var_1.a, -840i))), -(firstLeadingBit(u_input.d.x) & ~0i)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -826f));
    return -1292f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(2317f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(ceil(1059f))))))));
    global0 = array<vec2<u32>, 17>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x))), func_1(Struct_1(vec3<f32>(var_0.x, 1121f, var_0.x)), Struct_4(vec2<f32>(var_0.x, 1922f), global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), var_0.x, min(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])))), true)), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1610f, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -2182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * func_1(Struct_1(vec3<f32>(474f, var_0.x, 285f)), Struct_4(vec2<f32>(-469f, var_1.a.x), vec2<u32>(1u, u_input.a.x))).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))));
}

