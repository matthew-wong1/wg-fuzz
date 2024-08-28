struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(-35117i, 2147483647i, 41898i, 5088i), vec4<i32>(-1i, 1i, -2849i, -8990i), vec4<i32>(1i, -1i, 2147483647i, -16527i), vec4<i32>(i32(-2147483648), 1i, 7122i, 1i), vec4<i32>(2147483647i, 23901i, 27556i, 31820i), vec4<i32>(1365i, 1i, 2147483647i, 0i), vec4<i32>(-66972i, -11557i, 15232i, 2147483647i), vec4<i32>(0i, -6940i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -7219i, -11262i, -51523i), vec4<i32>(1i, -1916i, 22910i, 43176i), vec4<i32>(-1i, 2147483647i, 39301i, 48438i), vec4<i32>(17555i, -24886i, i32(-2147483648), 11554i), vec4<i32>(-26702i, i32(-2147483648), -4568i, 4866i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    global1 = array<vec4<i32>, 13>();
    var var_0 = arg_1;
    global0 = vec3<f32>(1680f, -578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 705f));
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-global0.yz);
    return reverseBits(38508i);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec3<f32> {
    global0 = vec3<f32>(809f, -1000f, -2496f);
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(274f, _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -824f))), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -910f))))));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d.zzz)))));
    let var_1 = true;
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_1.d.x, arg_1.d.x))))))) + var_0.yyz);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_5(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))));
    var_0 = Struct_5(vec3<bool>(true, var_0.a.x, var_0.a.x));
    var var_1 = Struct_2(!vec4<bool>(_wgslsmith_mult_i32(246i, -1i) != _wgslsmith_clamp_i32(-13661i, 1i, -38245i), u_input.a > u_input.a, var_0.a.x, true), Struct_1(_wgslsmith_f_op_f32(-927f - -668f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1761f, global0.x)), _wgslsmith_f_op_f32(global0.x + global0.x)), -(~2147483647i) << (u_input.a % 32u)), vec4<bool>(var_0.a.x, var_0.a.x, true, !(!var_0.a.x || (global0.x < 517f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, 475f, global0.x) + vec3<f32>(-1036f, global0.x, global0.x))))));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(reverseBits(4294967295u), abs(~(u_input.a >> (u_input.a % 32u)))), u_input.a);
    var_1 = Struct_2(var_1.a, Struct_1(!select(any(vec3<bool>(false, var_0.a.x, true)), true, !var_0.a.x), ~firstTrailingBit(var_1.b.b)), select(var_1.a, !(!var_1.c), var_1.a), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, -1483f)) + _wgslsmith_div_vec2_f32(global0.zy, var_1.d.zx)), var_1.b, vec2<i32>(-66863i, _wgslsmith_mult_i32(var_1.b.b, var_1.b.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-509f, -325f, 1220f, var_1.d.x))), vec4<f32>(var_1.d.x, var_1.d.x, global0.x, 880f))))));
    return select(!select(var_1.c.yz, var_0.a.yy, var_1.a.x), select(vec2<bool>(true, false), !select(!vec2<bool>(var_0.a.x, false), !var_1.a.wy, any(var_0.a)), all(var_1.c.xzz)), vec2<bool>(all(select(select(var_0.a, vec3<bool>(false, true, false), true), var_0.a, vec3<bool>(var_1.c.x, false, true))), !var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 13>();
    let var_0 = Struct_1(!(!(1u <= u_input.a)) == true, _wgslsmith_sub_i32(reverseBits(func_1(2147483647i, Struct_1(false, 0i))), 1i) << (~u_input.a % 32u));
    let var_1 = select(func_2(), vec2<bool>(all(!vec3<bool>(false, var_0.a, true)), all(vec3<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(var_0.a, var_0.a)), false))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))) < global0.x, any(select(vec4<bool>(true, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(var_0.a, false, false, true)))));
    var var_2 = var_0;
    var var_3 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i >> (u_input.a % 32u), max(select(~vec3<u32>(75201u, 6200u, u_input.a), vec3<u32>(reverseBits(u_input.a), u_input.a, _wgslsmith_div_u32(1u, u_input.a)), vec3<bool>(func_2().x, global0.x > 1397f, false)), _wgslsmith_mult_vec3_u32(countOneBits(abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), ~(~vec3<u32>(105498u, u_input.a, 90079u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(func_3(757f, Struct_3(global0.yy, var_0, vec2<i32>(5522i, 12011i), vec4<f32>(global0.x, 1850f, global0.x, global0.x)))).x) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, -282f)))))));
}

