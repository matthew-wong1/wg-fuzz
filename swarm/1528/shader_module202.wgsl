struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: i32;

var<private> global2: bool = false;

var<private> global3: array<vec3<u32>, 23>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = arg_0.b;
    global3 = array<vec3<u32>, 23>();
    let var_0 = vec2<i32>(u_input.b, -u_input.e.x);
    var var_1 = arg_0.b;
    let var_2 = true;
    return -45031i;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 38510u;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(702f)))), 511f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1792f))), _wgslsmith_f_op_f32(f32(-1f) * -174f))));
    global0 = array<vec4<bool>, 19>();
    global0 = array<vec4<bool>, 19>();
    return true;
}

fn func_1() -> vec2<f32> {
    var var_0 = true;
    let var_1 = select(-41736i, firstTrailingBit(func_2(Struct_1(global3[_wgslsmith_index_u32(8722u, 23u)], false, u_input.a)) ^ u_input.b), !all(global0[_wgslsmith_index_u32(49596u, 19u)]));
    var var_2 = -1000f;
    var var_3 = _wgslsmith_clamp_i32(~select(~var_1 | -24481i, u_input.c, func_3(Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), false, 4294967295u))), -firstTrailingBit(-2147483647i), -_wgslsmith_add_i32(1i, var_1));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1074f)) + _wgslsmith_f_op_f32(-480f + -337f))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-807f, 1408f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~abs(_wgslsmith_sub_vec3_u32(min(global3[_wgslsmith_index_u32(5155u, 23u)], vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(14293u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), global3[_wgslsmith_index_u32(25963u, 23u)]))), !all(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~1u), 19u)]), u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1036f, -360f))), vec2<f32>(583f, 1119f))), _wgslsmith_f_op_vec2_f32(func_1()), true)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-900f, -564f)))))));
    let var_2 = Struct_1(firstLeadingBit(~global3[_wgslsmith_index_u32(var_0.a.x, 23u)]), var_0.b, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(min(var_0.a, vec3<u32>(var_0.a.x, var_0.a.x, 33541u)), _wgslsmith_add_vec3_u32(vec3<u32>(30537u, u_input.a, 1u), global3[_wgslsmith_index_u32(65681u, 23u)])))));
    var var_3 = 15213i;
    global2 = all(vec3<bool>(true, false, var_0.b)) == true;
    global0 = array<vec4<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.x, var_2.a.x >> (firstTrailingBit(reverseBits(~15398u)) % 32u), abs(vec2<i32>(1i, ~(-1313i))) << (firstLeadingBit(_wgslsmith_mod_vec2_u32(~var_0.a.xy, select(vec2<u32>(u_input.a, var_2.c), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, var_0.b)))) % vec2<u32>(32u)), ~(~min(~vec4<u32>(76592u, var_2.c, 1u, 4294967295u), vec4<u32>(48060u, u_input.a, var_2.a.x, 27450u))), vec4<i32>(_wgslsmith_sub_i32(u_input.c, u_input.b), firstTrailingBit(-40647i), ~(~(-2147483647i)), -1i) ^ min(vec4<i32>(u_input.c & u_input.c, -u_input.e.x, 1i, 2147483647i), vec4<i32>(max(-2147483647i, -36328i), u_input.b, 0i, abs(u_input.e.x))));
}

