struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: Struct_2 = Struct_2(-2077f, -1140f, vec4<u32>(52591u, 44991u, 0u, 4294967295u), Struct_1(vec2<u32>(1u, 1u)));

var<private> global2: array<vec3<i32>, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(arg_1.x, 1033f, abs(vec4<u32>(global1.c.x, global1.c.x, 86764u, abs(~arg_0.a.x))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), 2177f));
    let var_2 = vec3<f32>(811f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(exp2(global1.a)), all(vec4<bool>(!global0[_wgslsmith_index_u32(var_0.d.a.x, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.c.zyz, vec3<u32>(2964u, u_input.a.x, arg_0.a.x)), 16u)], global0[_wgslsmith_index_u32(global1.c.x ^ 16222u, 16u)], !global0[_wgslsmith_index_u32(0u, 16u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(select(1335f, -623f, true))) + global1.a), arg_1.x));
    var var_3 = Struct_1(firstTrailingBit(global1.c.xw));
    let var_4 = false;
    return var_0.d;
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global1 = Struct_2(global1.b, global1.b, ~reverseBits(vec4<u32>(~44783u, global1.c.x, ~u_input.a.x, max(0u, 123259u))), func_2(Struct_1(global1.c.zw), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) * vec2<f32>(global1.b, global1.b))))), 2147483647i));
    global2 = array<vec3<i32>, 27>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1.a, global1.a, any(arg_0))))), _wgslsmith_f_op_f32(-1000f - global1.b));
    let var_1 = global1.d;
    global0 = array<bool, 16>();
    return firstLeadingBit(select(-12289i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(25231i, u_input.b.x, u_input.b.x, 5605i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), global0[_wgslsmith_index_u32(1u, 16u)]) | u_input.b.x);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(713f, _wgslsmith_f_op_f32(f32(-1f) * -433f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global1.b)))))))) - global1.a);
    global1 = Struct_2(global1.b, var_0, global1.c, func_2(Struct_1(~_wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, global1.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(543f, global1.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(var_0, global1.b)))), max(-arg_2.x | ~u_input.b.x, 2147483647i)));
    var var_1 = arg_2.yx;
    let var_2 = Struct_1(vec2<u32>(45300u, 11976u));
    let var_3 = func_3(select(!vec4<bool>(arg_3, global0[_wgslsmith_index_u32(0u, 16u)], !arg_0, arg_3), !select(!vec4<bool>(arg_0, arg_0, arg_0, global0[_wgslsmith_index_u32(0u, 16u)]), !vec4<bool>(arg_3, arg_3, arg_0, false), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(114123u, 16u)], global0[_wgslsmith_index_u32(var_2.a.x, 16u)]))), global0[_wgslsmith_index_u32(~(~(~u_input.a.x)), 16u)]));
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(208f, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b - 1766f))))), ~func_1(global0[_wgslsmith_index_u32(~(~global1.d.a.x), 16u)], 61671i, global2[_wgslsmith_index_u32(~global1.d.a.x, 27u)], !global0[_wgslsmith_index_u32(4294967295u, 16u)]), global1.d);
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(global1.b - var_0.b))) + _wgslsmith_f_op_f32(1041f - _wgslsmith_f_op_f32(select(603f, _wgslsmith_f_op_f32(var_0.b - 977f), true)))), var_0.b, ~vec4<u32>(0u, var_0.d.a.x, _wgslsmith_mult_u32(func_1(false, u_input.b.x, vec3<i32>(2147483647i, -2147483647i, u_input.b.x), true).x, 24159u), var_0.d.a.x), func_2(func_2(func_2(global1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 2002f) + vec2<f32>(global1.b, -2156f)), abs(30251i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1922f, var_0.b), vec2<f32>(-856f, var_0.a), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -204f))), _wgslsmith_sub_i32(u_input.b.x >> (var_0.d.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1559i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 18161i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, -1533f) * vec2<f32>(global1.b, 674f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b, -575f))))), -abs(2147483647i) >> (0u % 32u)));
    global0 = array<bool, 16>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)))), _wgslsmith_f_op_f32(floor(global1.a)), ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(global1.c.x, 75641u, var_0.d.a.x, var_0.d.a.x)), ~(~global1.c)), global1.d);
    global0 = array<bool, 16>();
    global2 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~1u, global1.c.x, global0[_wgslsmith_index_u32(func_1(global0[_wgslsmith_index_u32(~36566u, 16u)], _wgslsmith_mult_i32(30031i, u_input.b.x), min(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<i32>(u_input.b.x, 0i, 31166i)), global0[_wgslsmith_index_u32(1u, 16u)]).x, 16u)])), _wgslsmith_f_op_f32(-var_0.b), abs(u_input.b.x));
}

