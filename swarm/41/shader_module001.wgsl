struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<u32>, 12>;

var<private> global2: Struct_4 = Struct_4(Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(73366u, 22273u, 3849u, 153257u), vec4<bool>(true, false, false, false), 1030f, 21433i), vec4<f32>(-452f, -157f, 282f, -196f), vec3<i32>(-1i, 19472i, 1i), vec3<u32>(24657u, 101634u, 53795u), 12248u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_3 {
    return global0.a;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = true;
    let var_1 = ~(vec2<u32>(global2.d.x, 1u) ^ _wgslsmith_add_vec2_u32(arg_0.a, vec2<u32>(~global2.d.x, firstLeadingBit(global2.e))));
    let var_2 = global2.a.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(global2.b));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(390f, -1133f) + _wgslsmith_f_op_f32(trunc(var_3.x)))));
    return _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.x)), arg_0.d)))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = !vec3<bool>(global2.a.c.x, any(vec4<bool>(true, select(global2.a.c.x, global0.a.c.x, true), global0.a.c.x, global0.b.x != -957f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b.x - 2086f), _wgslsmith_f_op_f32(abs(global2.a.d)))) <= _wgslsmith_f_op_f32(global0.b.x - global0.a.d));
    global1 = array<vec3<u32>, 12>();
    global0 = Struct_4(func_2(arg_0, vec2<bool>(max(global2.c.x, -1i) == ~u_input.c, var_0.x), global2.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(func_3(Struct_3(global0.d.zx, global2.a.b, global0.a.c, 1015f, u_input.a.x), global2.a.c.zxw, global2.a.c.zzx)), -556f, 539f))), u_input.a, ~global0.d, 1u);
    let var_1 = ~_wgslsmith_add_vec2_i32(-global2.c.xz, vec2<i32>(1i ^ firstTrailingBit(global0.a.e), arg_0.x));
    global1 = array<vec3<u32>, 12>();
    return vec4<i32>(~(-18325i), u_input.c, _wgslsmith_mod_i32(~min(global2.a.e, -33412i) | -410i, global0.a.e), firstTrailingBit(~(-31609i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(~(~func_1(vec3<i32>(24215i, global2.c.x, -30693i))), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, global2.a.e, 52748i, -36876i)), !vec4<bool>(1096f < global0.b.x, false, all(vec3<bool>(true, false, true)), true)), -u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f + -1318f)))) <= global0.b.x, 1u);
    global1 = array<vec3<u32>, 12>();
    var var_1 = Struct_4(global2.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)))), vec3<i32>(firstTrailingBit(abs(_wgslsmith_clamp_i32(4723i, global0.a.e, u_input.a.x))), firstLeadingBit(countOneBits(global2.c.x)), _wgslsmith_mod_i32(func_1(select(var_0.a.yxw, var_0.a.zww, vec3<bool>(var_0.c, true, global0.a.c.x))).x, global2.c.x)), ~global1[_wgslsmith_index_u32(3203u, 12u)], _wgslsmith_sub_u32(global2.e | global2.a.b.x, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(54199u), ~(~var_1.a.a.x), all(!select(global2.a.c.wwy, vec3<bool>(global0.a.c.x, false, global2.a.c.x), false))));
}

