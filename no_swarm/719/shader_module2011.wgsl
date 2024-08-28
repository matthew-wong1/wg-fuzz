struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: vec3<f32> = vec3<f32>(-420f, -1027f, -2672f);

var<private> global2: array<f32, 31> = array<f32, 31>(668f, -1697f, 699f, -561f, 1000f, -925f, -656f, 398f, 1000f, -1346f, 1000f, -169f, -796f, 327f, -1495f, 1000f, 809f, 217f, 1042f, -1000f, -133f, 107f, -214f, -590f, -1057f, 331f, 130f, -1159f, 493f, 1998f, -1604f);

var<private> global3: array<vec4<u32>, 30>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(u_input.b.x & _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 29421u), 31u)]);
    global2 = array<f32, 31>();
    var var_1 = any(vec4<bool>(global0.x, !(u_input.a != abs(arg_0.b.x)), global0.x, _wgslsmith_div_u32(~u_input.b.x, ~u_input.b.x) == abs(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x)))));
    global1 = vec3<f32>(107f, 1000f, arg_0.a);
    global0 = vec4<bool>(global0.x, any(!(!vec4<bool>(true, false, true, global0.x))), global0.x, !all(!(!vec4<bool>(global0.x, global0.x, global0.x, true))));
    return _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~abs(_wgslsmith_mult_u32(u_input.b.x, 145313u))), 31u)] + _wgslsmith_f_op_f32(step(-788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 31u)] * global2[_wgslsmith_index_u32(u_input.b.x, 31u)]))))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> bool {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1.x) + 1684f)), _wgslsmith_f_op_f32(func_3(Struct_2(global1.x, reverseBits(-vec3<i32>(u_input.a, 2147483647i, -1i))))), global2[_wgslsmith_index_u32(u_input.b.x, 31u)]);
    let var_0 = _wgslsmith_mult_u32(arg_1.x, arg_1.x);
    global2 = array<f32, 31>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~abs(u_input.b.x), 31u)], global2[_wgslsmith_index_u32(~(~16562u), 31u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(global2[_wgslsmith_index_u32(arg_1.x, 31u)], vec3<i32>(0i, arg_0, -29839i)))))), global2[_wgslsmith_index_u32((var_0 ^ arg_1.x) << (_wgslsmith_sub_u32(4294967295u, var_0) % 32u), 31u)]));
    global2 = array<f32, 31>();
    return (_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 31u)]) >= _wgslsmith_f_op_f32(exp2(global1.x))) | !(global0.x != arg_2.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> bool {
    var var_0 = vec2<bool>(arg_3.x, false);
    var var_1 = func_2(2147483647i, u_input.b.wwx, select(!(!(!vec2<bool>(arg_2, false))), !select(vec2<bool>(global0.x, false), select(vec2<bool>(arg_2, true), arg_3.yz, false), var_0.x), true));
    var var_2 = ~select(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), abs(vec2<i32>(arg_0, -2147483647i))), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -4113i), vec2<i32>(1i, arg_0))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(15668i, 41301i), vec2<i32>(arg_0, u_input.a), vec2<i32>(arg_0, -2147483647i)) & vec2<i32>(-arg_0, _wgslsmith_add_i32(-15567i, u_input.c)), all(global0.xyw));
    var_1 = ((i32(-1i) * -var_2.x) >= ~u_input.a) & (!arg_3.x & true);
    var var_3 = global1.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(u_input.b.x < abs(1u), !select(func_1(u_input.a, Struct_1(444f), global0.x, vec3<bool>(global0.x, global0.x, global0.x)) & global0.x, all(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, global0.x, false, global0.x), global0.x)), true), !all(!(!global0.www)), !((global0.x & (global1.x >= global2[_wgslsmith_index_u32(u_input.b.x, 31u)])) | !all(vec4<bool>(false, global0.x, global0.x, global0.x))));
    let var_0 = vec4<bool>(global0.x, !(u_input.b.x <= ~u_input.b.x) || func_1(abs(1i), Struct_1(global1.x), !global0.x, select(global0.yyy, global0.www, true)), all(select(select(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, false, global0.x, false)), vec4<bool>(global0.x, global0.x, true, global0.x), !global0.x), vec4<bool>(true, false, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), true), any(global0.yyz) && (global0.x & global0.x))), true);
    global3 = array<vec4<u32>, 30>();
    var var_1 = 114273u;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51331u, u_input.b.x ^ min(u_input.b.x, 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(43219u, 33173u), u_input.b.zx), 42056u), u_input.b | vec4<u32>(49383u, 4294967295u, 34675u, ~4294967295u)), 1u), 31u)];
    let var_3 = !select(var_0, vec4<bool>(true, global0.x, true, true), 1009f == global1.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -334f), -951f)));
    global3 = array<vec4<u32>, 30>();
    var var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-792f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.x)))), global2[_wgslsmith_index_u32(~u_input.b.x | 4294967295u, 31u)]) + var_4.yxw));
}

