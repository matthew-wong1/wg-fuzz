struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1012f);

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.a)))) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), -1000f));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(19173u, 28u)];
    var var_1 = vec4<bool>(false, true, arg_0, all(select(vec2<bool>(!arg_0, !arg_0), !vec2<bool>(arg_0, false), !(!arg_0))));
    global2 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(801f, _wgslsmith_f_op_f32(-global0.a), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-286f)))) - _wgslsmith_f_op_vec4_f32(func_3(false, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-823f, -1221f) + vec2<f32>(global0.a, -1550f))))))));
    global0 = Struct_1(var_0.a);
    return any(vec4<bool>(countOneBits(0i) != _wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x)), arg_0, arg_0, true));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = -(-vec2<i32>(1i, u_input.a.x) ^ u_input.a) ^ (_wgslsmith_div_vec2_i32(~(u_input.a & vec2<i32>(u_input.a.x, -21422i)), u_input.a) >> (~(select(u_input.b.ww, arg_1, arg_0) ^ countOneBits(vec2<u32>(u_input.b.x, arg_1.x))) % vec2<u32>(32u)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)), -1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f - 505f) + 133f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a, global0.a)), 359f))))), select(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), false || arg_0), !select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0)), arg_0), global2[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(global0.a - global0.a))));
    var var_2 = countOneBits(u_input.b.x);
    global2 = array<Struct_1, 28>();
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1127f - _wgslsmith_f_op_f32(-123f - -343f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1310f, -638f, true)), 777f)) * _wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.d.a)))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1341f, 935f, true)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1417f, 393f), vec2<f32>(arg_0.x, arg_0.x), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(560f, arg_0.x), vec2<f32>(302f, arg_2.x), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.ww))) - _wgslsmith_f_op_vec2_f32(func_4(!func_2(true), vec2<u32>(17184u, u_input.b.x >> (4294967295u % 32u))))), !vec2<bool>(_wgslsmith_clamp_u32(arg_3.x, 4294967295u, 52608u) >= u_input.b.x, any(vec2<bool>(true, false)))));
    return 22723u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(4294967295u, firstTrailingBit(min(~(~u_input.b.x), max(func_1(vec4<f32>(global0.a, -1339f, global0.a, 655f), global0.a, vec2<f32>(-432f, global0.a), u_input.b), 4294967295u))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, var_0.x), 28u)];
    var var_2 = _wgslsmith_div_u32(u_input.b.x, var_0.x);
    let var_3 = all(vec2<bool>(true, true));
    let var_4 = !select(!(!vec2<bool>(var_3, false)), vec2<bool>(var_3, all(select(vec2<bool>(false, true), vec2<bool>(false, true), var_3))), select(select(!vec2<bool>(var_3, var_3), select(vec2<bool>(false, var_3), vec2<bool>(var_3, false), vec2<bool>(false, var_3)), all(vec3<bool>(true, var_3, true))), vec2<bool>(78683u <= var_0.x, false), vec2<bool>(true, var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f * global0.a) * _wgslsmith_f_op_f32(-var_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-var_1.a), var_3 | var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, var_1.a)), _wgslsmith_f_op_vec4_f32(func_3(var_3, vec2<f32>(890f, global0.a))).x)), -1012f), 0u);
}

