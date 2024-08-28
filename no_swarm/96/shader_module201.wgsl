struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(13135u, 1u, 53390u, 0u, 4294967295u, 4294967295u, 0u, 36919u, 4294967295u, 1u, 1u, 1u, 1u, 1u, 0u, 14429u, 4294967295u, 41712u, 69189u, 0u, 1u, 19745u, 0u, 0u, 70240u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(u_input.e, arg_0.b.a.b));
    var var_1 = reverseBits(~u_input.a.x);
    let var_2 = var_0.a;
    var_1 = -u_input.e;
    var var_3 = -2079f;
    return var_0.a.b.x;
}

fn func_1() -> f32 {
    let var_0 = ~vec2<u32>(u_input.c, ~(~69828u));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_4(u_input.a.ww, Struct_2(Struct_1(3485i, vec2<f32>(1312f, 337f)))), true)), _wgslsmith_f_op_f32(-1361f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1274f, 462f), _wgslsmith_div_f32(-1527f, 755f))) - -714f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(2262f, _wgslsmith_f_op_f32(617f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-307f + -328f), -1464f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f + -780f) - _wgslsmith_f_op_f32(f32(-1f) * -232f)))), _wgslsmith_f_op_f32(func_1())));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-611f, var_0.x, 864f, var_0.x) * vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x)))))));
    global0 = array<u32, 26>();
    var var_1 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(-var_0.zx));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -839f, 180f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1438f, var_1.b.x, -1996f, var_0.x) - vec4<f32>(var_1.b.x, var_0.x, -1000f, var_1.b.x)) - vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1267f, 738f, var_0.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_0.x, -1000f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-113f, var_1.b.x, -1000f, var_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1487f, var_0.x, -1416f, 941f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

