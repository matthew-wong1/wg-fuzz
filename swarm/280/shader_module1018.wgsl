struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: u32 = 37218u;

var<private> global1: vec2<f32>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-56820i, 1918i));

var<private> global3: array<Struct_1, 21>;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(570f * 1547f)))));
    let var_0 = Struct_1(~(global2.a >> (_wgslsmith_sub_vec2_u32(arg_1.xx, vec2<u32>(0u, 129777u)) % vec2<u32>(32u))) >> (firstTrailingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_1.x, 51446u)), vec2<u32>(71802u, arg_1.x) | arg_1.xy)) % vec2<u32>(32u)));
    global4 = arg_2.x;
    let var_1 = vec2<f32>(-772f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-136f)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-216f - arg_0)))))));
    global1 = _wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(-arg_2));
    return _wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(arg_1.x, 0u, arg_1.x)), arg_1 ^ u_input.e, arg_1)) ^ u_input.b, reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, 19216u, 0u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.e.x), vec2<u32>(arg_1.x, 1u)), u_input.a, arg_1.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = any(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), any(vec4<bool>(true, true, false, true))), !vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    let var_1 = ~vec4<u32>(111959u, 4294967295u, 1u, ~u_input.e.x);
    var_0 = global1.x < _wgslsmith_f_op_f32(min(-1111f, global1.x));
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(func_3(_wgslsmith_f_op_f32(floor(global1.x)), var_1.yxw >> (u_input.b % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, global1.x)), u_input.c <= u_input.c) << (func_3(global1.x, max(vec3<u32>(4294967295u, u_input.d, var_1.x), vec3<u32>(var_1.x, var_1.x, 39784u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(721f, global1.x) - vec2<f32>(-2295f, 631f)), -1363f <= global1.x) % 32u), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(var_1.x, 1u)), var_1.x)), u_input.d, ~u_input.a);
    return Struct_1(-max(vec2<i32>(-2147483647i, u_input.c), global2.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global3 = array<Struct_1, 21>();
    global0 = (u_input.d << (0u % 32u)) >> (u_input.e.x % 32u);
    var var_0 = u_input.b.x;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, firstLeadingBit(u_input.e.x), u_input.e.x), max(vec3<u32>(select(7902u, u_input.d, all(arg_0.wz)), 123236u, 48807u), max(abs(u_input.b << (vec3<u32>(7119u, u_input.e.x, 46034u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 49655u, u_input.d), ~u_input.e))));
    var var_1 = arg_0.x == (_wgslsmith_sub_u32(4294967295u, u_input.b.x) == ~(~_wgslsmith_clamp_u32(1u, 0u, u_input.b.x)));
    return Struct_1(global2.a);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    global3 = array<Struct_1, 21>();
    var var_0 = false;
    var var_1 = vec2<u32>(u_input.d, u_input.a) ^ vec2<u32>(18253u, u_input.d);
    var var_2 = func_4(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.a.x, arg_2.a.x, 16873i, -1i)), vec4<i32>(-1i, -25478i, -74943i, -2147483647i)), -arg_2.a.x)), func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x + arg_0), arg_0, _wgslsmith_f_op_f32(-global1.x), arg_0))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.e.x), 21u)];
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, arg_0)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, arg_0, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-1284f, arg_0), -1447f, _wgslsmith_f_op_f32(sign(-1189f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 234f, arg_0), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(510f, 1894f, arg_0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-581f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) - global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global1.x, global3[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(global2.a))) * vec3<f32>(global1.x, 458f, -1250f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, 292f)))), vec3<f32>(global1.x, -894f, _wgslsmith_f_op_f32(-951f * _wgslsmith_f_op_f32(abs(global1.x))))))));
    global3 = array<Struct_1, 21>();
    global2 = Struct_1((abs(~global2.a) << (~select(vec2<u32>(u_input.a, 0u), u_input.b.yx, true) % vec2<u32>(32u))) | (vec2<i32>(select(global2.a.x, 4494i, true), 18098i) << (vec2<u32>(12410u, 1u) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(-554f, global3[_wgslsmith_index_u32(u_input.b.x, 21u)], global3[_wgslsmith_index_u32(0u, 21u)])).x);
    let x = u_input.a;
    s_output = StorageBuffer((23812u & select(_wgslsmith_mult_u32(u_input.a, 3252u), ~0u, all(vec4<bool>(true, false, false, true)))) ^ 1u);
}

