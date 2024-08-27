struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(~446u, 21u)];
    global1 = Struct_1(all(vec4<bool>(!global1.a, global1.a, global1.a, global1.a)));
    global0 = array<Struct_1, 21>();
    let var_0 = false & any(select(select(vec4<bool>(true, global1.a, false, false), vec4<bool>(global1.a, global1.a, false, global1.a), global1.a | false), vec4<bool>(true, true, true, true), true));
    var var_1 = (var_0 == (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) == (abs(u_input.b.x) << (u_input.b.x % 32u)))) != var_0;
    return global0[_wgslsmith_index_u32(~(~50771u), 21u)];
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<u32> {
    global1 = func_2();
    var var_0 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(26925u, max(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x)))), vec2<u32>(4294967295u, 17400u), true), ~vec2<u32>(u_input.b.x, u_input.b.x) << (vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 27748u))) % vec2<u32>(32u)));
    var var_1 = 289u;
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2191f + 341f), _wgslsmith_f_op_f32(-562f + 2355f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f + 1119f))))));
    return _wgslsmith_add_vec4_u32(countOneBits(abs(min(vec4<u32>(35998u, 1u, var_0.x, 1u), vec4<u32>(0u, 35067u, 20546u, 33132u)) & ~vec4<u32>(u_input.b.x, 4294967295u, var_0.x, u_input.b.x))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.b.x, 1u), 4294967295u, ~4294967295u), ~(~_wgslsmith_mult_u32(var_0.x, 29752u)), u_input.b.x, abs(firstTrailingBit(var_0.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global1 = arg_2;
    let var_0 = func_3(2147483647i <= u_input.a.x, func_2(), u_input.a.x, Struct_1(true));
    global1 = func_2();
    var var_1 = var_0.x;
    global0 = array<Struct_1, 21>();
    return global0[_wgslsmith_index_u32(0u, 21u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-631f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -1239f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2264f, -1297f, -381f) * vec3<f32>(1000f, -1628f, -458f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -310f, -886f))))) * vec3<f32>(_wgslsmith_f_op_f32(func_4(!vec3<bool>(false, global1.a, false), func_1(vec2<f32>(-1118f, -646f), false, Struct_1(global1.a)), u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-203f, 1236f), -462f, all(vec4<bool>(true, true, global1.a, false)))), _wgslsmith_f_op_f32(1350f + -796f))), vec4<i32>(abs(1i) << (u_input.b.x % 32u), max(~20127i, -(u_input.c & u_input.c)), 9081i, 1i), u_input.b.x, u_input.b.yx);
}

