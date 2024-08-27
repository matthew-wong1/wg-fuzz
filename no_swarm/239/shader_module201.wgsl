struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<u32>, 13>;

var<private> global2: f32;

var<private> global3: array<Struct_1, 1>;

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    var var_0 = vec2<bool>(any(vec3<bool>(global0.x & (51691u <= arg_1.x), _wgslsmith_mult_u32(81332u, 0u) == ~u_input.b, select(any(vec2<bool>(false, global0.x)), false, true))), all(global0.xxx));
    let var_1 = global3[_wgslsmith_index_u32(~4294967295u, 1u)];
    return 138f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    global4 = array<Struct_1, 27>();
    global4 = array<Struct_1, 27>();
    global1 = array<vec3<u32>, 13>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_0, reverseBits(vec4<u32>(arg_1.a.x, 15705u, u_input.b, 4294967295u)), ~(-u_input.a))))));
    return any(select(vec2<bool>(!(!global0.x), !any(global0.xy)), global0.ww, ~arg_1.a.x >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), select(vec2<u32>(arg_1.a.x, arg_0.a.x), vec2<u32>(4294967295u, 0u), vec2<bool>(global0.x, false)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_1(reverseBits(~(firstTrailingBit(vec2<u32>(u_input.b, 4488u)) & vec2<u32>(u_input.b, 32643u))));
    global0 = vec4<bool>(func_2(Struct_1(~var_0.a), Struct_1(firstLeadingBit(firstTrailingBit(vec2<u32>(4294967295u, var_0.a.x))))), global0.x, all(!(!select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)))), global0.x);
    var var_1 = !select(select(global0.xyx, vec3<bool>(global0.x, true, all(global0.ww)), vec3<bool>(any(global0.zyx), false, any(vec2<bool>(false, global0.x)))), !vec3<bool>(false, global0.x, global0.x), !global0.xww);
    global0 = !select(!select(select(vec4<bool>(global0.x, var_1.x, global0.x, global0.x), vec4<bool>(var_1.x, true, false, global0.x), false), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, var_1.x, global0.x)), vec4<bool>(_wgslsmith_div_u32(u_input.b, 10319u) >= 1u, var_1.x, true, false), global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(234f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.x, 224f, true)), -1178f)), 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 221f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))) + arg_0)));
    return 1040f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2449f)))) + -1559f);
    let var_1 = Struct_1(vec2<u32>(~(~u_input.b & ~u_input.b), _wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_clamp_u32(77391u, 4294967295u, 0u), u_input.b)));
    let var_2 = u_input.b;
    let var_3 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(select(502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1105f, _wgslsmith_f_op_f32(floor(-237f))))), any(!vec3<bool>(true, var_1.a.x < u_input.b, true))));
    var_0 = 2335f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(358f)) - _wgslsmith_f_op_f32(min(-178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(109f, -325f)) - _wgslsmith_f_op_f32(func_1(vec3<f32>(-455f, -494f, 1289f), vec2<i32>(u_input.c.x, u_input.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(_wgslsmith_add_i32(-u_input.c.x, u_input.c.x), 0i, 9796i), vec3<i32>(i32(-1i) * -14223i, -_wgslsmith_dot_vec2_i32(var_3.xx, var_3.yy), (i32(-1i) * -2833i) << ((0u & var_2) % 32u))), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(44628u, 1u), var_1.a, var_1.a), min(var_1.a, vec2<u32>(min(4294967295u, var_1.a.x), 4294967295u)), false));
}

