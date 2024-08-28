struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 0i, 3571i, 2147483647i);

var<private> global1: Struct_2 = Struct_2(true, Struct_1(vec3<bool>(false, false, false), vec3<i32>(-1i, 2147483647i, -32837i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(2526i, -1i, 1i)));

var<private> global2: array<Struct_1, 32>;

var<private> global3: vec4<f32> = vec4<f32>(757f, -615f, 698f, -556f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = (vec4<i32>(-1i) * -countOneBits(abs(vec4<i32>(global0.x, 7881i, global1.b.b.x, 7541i)))) | abs(-abs(-vec4<i32>(global1.c.b.x, global0.x, -1i, 0i)));
    return -12190i;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> f32 {
    let var_0 = !global1.b.a.zy;
    var var_1 = arg_1;
    var var_2 = min(~(-(~(~arg_0.x))), -7466i);
    let var_3 = Struct_2(false, Struct_1(vec3<bool>(!global1.c.a.x, true, all(!vec4<bool>(var_1.a.a.x, var_1.a.a.x, false, global1.b.a.x))), min(vec3<i32>(i32(-1i) * -2147483647i, arg_1.a.b.x, func_3()), _wgslsmith_add_vec3_i32(arg_1.a.b, ~vec3<i32>(arg_0.x, -1i, global1.b.b.x)))), Struct_1(!select(arg_1.a.a, !vec3<bool>(false, var_1.a.a.x, global1.a), select(global1.b.a, arg_1.a.a, var_1.a.a)), var_1.a.b));
    let var_4 = var_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(2362f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f))) * _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, 756f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x))))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x)))))), global3.x, 525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -722f)));
    return vec2<u32>(54263u, arg_3);
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = select(_wgslsmith_div_vec2_u32(select(vec2<u32>(abs(1u), 88148u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 48282u), vec2<u32>(4294967295u, 102169u), vec2<u32>(24944u, 54092u)) ^ vec2<u32>(4294967295u, 0u), global1.c.a.xx), ~vec2<u32>(1u, _wgslsmith_div_u32(18392u, 8297u))), func_4(true && any(global1.c.a), -830f >= _wgslsmith_f_op_f32(func_2(vec2<i32>(global1.b.b.x, u_input.a), Struct_3(global1.c, vec4<u32>(1u, 36243u, 51880u, 1u), 26021u))), Struct_4(global1.b.b.x), 1u) & vec2<u32>(~_wgslsmith_mod_u32(25181u, 1u), abs(4294967295u)), arg_0);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.x, global3.x, true)))), _wgslsmith_f_op_f32(-global3.x)), -683f, !any(!vec3<bool>(global1.c.a.x, false, arg_0)))), -1000f);
    let var_2 = var_0.x;
    return StorageBuffer(710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f * global3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-1i);
    let x = u_input.a;
    s_output = func_1(any(select(select(!vec4<bool>(false, false, global1.c.a.x, true), vec4<bool>(false, false, global1.b.a.x, global1.a), vec4<bool>(true, global1.a, global1.a, global1.c.a.x)), !(!vec4<bool>(true, false, true, global1.b.a.x)), vec4<bool>(global1.c.a.x == false, global1.b.a.x, global1.a, !global1.c.a.x))));
}

