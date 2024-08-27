struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(18831i), Struct_1(-20713i), Struct_1(-1i), Struct_1(-1i), Struct_1(17312i), Struct_1(0i), Struct_1(-5093i), Struct_1(1463i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(14220i), Struct_1(-6384i), Struct_1(1i), Struct_1(25681i), Struct_1(-7225i), Struct_1(4831i));

var<private> global2: vec2<f32> = vec2<f32>(-1488f, -1064f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    return !select(!vec4<bool>(select(false, false, true), true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, any(vec3<bool>(false, false, true))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.c.x;
    var var_1 = any(func_3());
    let var_2 = 38790u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f - global2.x)) + 740f));
    var_3 = _wgslsmith_f_op_f32(abs(global2.x));
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(arg_0.a, 17160i)), abs(vec2<i32>(arg_0.a, arg_0.a))), -(vec2<i32>(arg_0.a, arg_0.a) | vec2<i32>(arg_0.a, arg_0.a)))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c.x, u_input.b.x), 16u)]);
    var var_1 = -140f;
    let var_2 = Struct_1(firstTrailingBit(var_0.a.a));
    let var_3 = _wgslsmith_f_op_f32(abs(-1920f));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 2020f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_div_f32(992f, var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f * -926f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1493f, -277f, var_3, -619f)))), select(vec4<bool>(34700u < u_input.a.x, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), !func_3()))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(418f * 761f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1022f, global2.x, 1247f, 904f))))));
    return Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1120f, var_4.x, var_4.x)))))), _wgslsmith_div_vec2_u32(~(~u_input.c.xw), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, 43769u, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(19934u, 11295u, u_input.a.x), u_input.c.xxw, u_input.c.xzx)), min(~0u, ~u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(trunc(1062f))), var_0.a.x, Struct_3(1i, global1[_wgslsmith_index_u32(0u, 16u)], vec4<bool>(true, true, true, true), select(func_3().yzz, vec3<bool>(true, true, all(vec4<bool>(true, false, false, false))), vec3<bool>(false, true, true)), func_2(global1[_wgslsmith_index_u32(~select(var_0.b.x, u_input.a.x, true), 16u)]).a), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-308f)), 371f)));
}

