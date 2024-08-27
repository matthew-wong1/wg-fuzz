struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(294f, -297f), vec2<f32>(-783f, -415f), vec2<f32>(134f, 738f), vec2<f32>(-122f, -1464f), vec2<f32>(-498f, -158f), vec2<f32>(2479f, 1606f), vec2<f32>(-374f, -1000f), vec2<f32>(-744f, 1010f), vec2<f32>(-106f, 558f), vec2<f32>(-536f, 1198f));

var<private> global1: Struct_4;

var<private> global2: vec4<f32> = vec4<f32>(-502f, -839f, -968f, 1679f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: u32) -> vec2<i32> {
    global0 = array<vec2<f32>, 10>();
    var var_0 = arg_1;
    global2 = _wgslsmith_f_op_vec4_f32(trunc(global1.b.c));
    var var_1 = Struct_3(4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global1.a)), vec2<f32>(global1.b.c.x, 389f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, -574f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global1.a)))));
    let var_2 = Struct_5(select(select(vec4<bool>(arg_1, arg_1 || true, any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(arg_1, false, false, true), select(vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, true, false, arg_1))), true), vec4<bool>(!arg_1, all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(false, arg_1))), !any(vec4<bool>(true, arg_1, true, arg_1)), false), select(!vec4<bool>(arg_1, arg_1, arg_1, true), !vec4<bool>(false, arg_1, arg_1, true), true)));
    return global1.c;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4) -> i32 {
    var var_0 = false;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(132f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.x))), global1.b, func_3(~(~arg_2.b.b), true, 68434u) & vec2<i32>(_wgslsmith_add_i32(global1.b.d, _wgslsmith_mod_i32(2147483647i, arg_2.c.x)), arg_2.b.e));
    global1 = arg_2;
    var var_2 = Struct_3(~_wgslsmith_sub_u32(u_input.a.x, ~1u), global1.b.c.xw);
    var_0 = true;
    return 1i;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    var var_0 = !(!vec3<bool>(global2.x <= global1.b.c.x, true, false));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1313f * global2.x) + -475f), 532f)), global2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - global2.x));
    var var_3 = var_0.x;
    let var_4 = vec2<f32>(1029f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(129f)) * global1.a)), 906f));
    return select(select(select(var_0.xz, var_0.xy, false), vec2<bool>(all(vec4<bool>(var_0.x, true, true, false)), var_0.x), var_0.zz), var_0.yx, true);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    let var_0 = select(!select(!vec2<bool>(arg_0, false), select(!vec2<bool>(arg_1, false), vec2<bool>(false, true), vec2<bool>(arg_1, true)), !vec2<bool>(true, arg_1)), select(func_4(func_2(Struct_3(0u, vec2<f32>(global2.x, 536f)), u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), arg_2)), !func_4(_wgslsmith_sub_i32(arg_2.c.x, global1.c.x)), select(vec2<bool>(true, false), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_0), arg_0), vec2<bool>(arg_1, arg_0), !vec2<bool>(arg_1, arg_1)), !(22635u < u_input.a.x))), !vec2<bool>(func_4(-2147483647i).x && func_4(arg_2.c.x).x, true));
    var var_1 = arg_3.c.x;
    global1 = Struct_4(1089f, Struct_1(arg_3.e, vec4<u32>(~1u, arg_3.b.x, arg_2.b.b.x, 17172u | ~arg_3.b.x), vec4<f32>(1614f, arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - 1938f)), _wgslsmith_f_op_f32(ceil(arg_2.b.c.x))), 33595i, global1.b.a), global1.c);
    var var_2 = 4294967295u;
    var var_3 = Struct_2(!vec2<bool>(all(vec4<bool>(false, arg_1, var_0.x, false)) & false, true), ~(-1i), !all(select(var_0, !var_0, all(vec4<bool>(false, true, false, false)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_i32(global1.c.x, global1.c.x, global1.c.x >> (((16731u & u_input.a.x) >> (_wgslsmith_add_u32(global1.b.b.x, u_input.a.x) % 32u)) % 32u)));
    let var_1 = vec2<bool>(true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), true)));
    let var_2 = vec2<u32>(~_wgslsmith_mult_u32(u_input.b, select(min(1u, global1.b.b.x), global1.b.b.x | u_input.a.x, func_1(true, var_1.x, Struct_4(746f, global1.b, global1.c), global1.b))), global1.b.b.x);
    let var_3 = firstTrailingBit(vec3<i32>(0i, -2147483647i, -global1.c.x) & ~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.d, global1.c.x, global1.b.d), vec3<i32>(-2147483647i, 0i, global1.b.d), vec3<i32>(global1.c.x, global1.c.x, 2147483647i))) ^ firstLeadingBit(~(~vec3<i32>(-1i, 0i, global1.b.d)));
    global1 = Struct_4(global2.x, Struct_1(var_3.x, ~abs(vec4<u32>(0u, 0u, 61954u, global1.b.b.x)) & vec4<u32>(_wgslsmith_add_u32(var_2.x, u_input.a.x), var_2.x, u_input.a.x, ~1u), _wgslsmith_f_op_vec4_f32(global1.b.c - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(114f, global1.b.c.x, 668f, -619f), global1.b.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, 131f, global2.x, global1.b.c.x)))))), global1.c.x, global1.b.a), vec2<i32>(~(-var_3.x), global1.c.x));
    global0 = array<vec2<f32>, 10>();
    var var_4 = func_4(global1.c.x).x;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec4<i32>(var_3.x, -1i, 0i, 2147483647i))), global1.b.b.x, global1.b.c, 1278f, ~vec2<u32>(global1.b.b.x, ~abs(4294967295u)));
}

