struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-415f, -1215f, -432f, -566f, -420f, -248f);

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 18> = array<f32, 18>(-989f, -1000f, 724f, -2058f, 383f, -713f, 543f, -1099f, 659f, -693f, 1000f, 1783f, -988f, -995f, 224f, 1128f, -1577f, 1401f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) - _wgslsmith_div_vec2_f32(vec2<f32>(-921f, 161f), arg_1.a.a.xz));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 730f), global1.yy) * vec2<f32>(-788f, 510f)) - global1.xz), global1.zz) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f + -167f)) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1192f))));
    global2 = array<f32, 18>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(-710f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 18u)])))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(58053u, 18u)], -633f))))) + 1f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.a.yx)) * arg_1.a.a.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, 333f), 924f))));
    return vec3<u32>(~min(~_wgslsmith_div_u32(u_input.b, 48341u), ~(~u_input.a.x)), _wgslsmith_div_u32(u_input.b, abs(u_input.a.x & ~0u)), u_input.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = firstTrailingBit(u_input.e);
    var var_1 = ~(~(~func_3(u_input.d, Struct_3(Struct_2(vec3<f32>(444f, -1377f, 1121f))))));
    var var_2 = Struct_2(arg_0.www);
    var var_3 = var_1.x;
    return !vec3<bool>(!(_wgslsmith_f_op_f32(select(arg_0.x, -759f, true)) > _wgslsmith_f_op_f32(select(609f, -253f, false))), true, false);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(-2044f);
    let var_1 = u_input.d;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-158f, global1.x)), global2[_wgslsmith_index_u32(countOneBits(5466u >> (u_input.a.x % 32u)), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 18u)], 279f)) + 1206f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(51008u, 6u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 6u)], 1325f, arg_0)) - var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f * -1492f) * _wgslsmith_f_op_f32(sign(var_0.a))))));
    global1 = vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(279f, global0[_wgslsmith_index_u32(0u, 6u)], true))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(896f)))));
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 6u)])) + -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-var_0.a), true)))), -522f));
    return ~(-60405i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 6>();
    var var_0 = func_4(all(!func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-460f, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], -201f, 722f), vec4<f32>(global1.x, -396f, -783f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], arg_0.a, arg_0.a, global1.x) * vec4<f32>(-1000f, global1.x, 350f, 201f)))), max(firstTrailingBit(~select(u_input.d, u_input.d, vec2<bool>(false, true))), max(_wgslsmith_add_vec2_i32(min(u_input.d, vec2<i32>(u_input.d.x, u_input.c)), vec2<i32>(34380i, u_input.e)), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d.x, -1879i), select(u_input.d, u_input.d, vec2<bool>(false, true))))), u_input.d);
    var var_1 = Struct_3(Struct_2(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-404f, global0[_wgslsmith_index_u32(9634u, 6u)], true)))), -118f)));
    let var_2 = !(!(!(!(40533u >= u_input.b))));
    var var_3 = false;
    return 2439f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), 516f)));
    global0 = array<f32, 6>();
    var var_1 = false && (false && (~(-1i) <= _wgslsmith_add_i32(u_input.c, -2923i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-996f, global1.x)) - 434f)));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(-5115i & abs(u_input.e)) << (select(~(0u & u_input.b), ~(~49513u), select(all(vec2<bool>(false, false)), func_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], var_0.a.a.x), vec4<f32>(1172f, global2[_wgslsmith_index_u32(u_input.b, 18u)], 1705f, var_0.a.a.x)).x, true)) % 32u), ~max(vec4<u32>(~14891u, 4294967295u, u_input.a.x, u_input.a.x ^ u_input.a.x), ~vec4<u32>(61869u, u_input.a.x, u_input.a.x, 0u)));
}

