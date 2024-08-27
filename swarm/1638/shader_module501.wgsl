struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: array<i32, 18>;

var<private> global2: array<vec2<bool>, 7>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: Struct_1 = Struct_1(-1i, vec3<f32>(-932f, 750f, 147f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(39263u, 18u)], _wgslsmith_f_op_vec3_f32(sign(global4.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, var_0.b.x, -1000f)), var_0.b))));
    let var_2 = 1f;
    let var_3 = 9923u;
    var var_4 = Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), vec3<f32>(var_0.b.x, _wgslsmith_div_f32(global4.b.x, var_0.b.x), _wgslsmith_f_op_f32(var_2 + -473f))))));
    return _wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global4.b.x, _wgslsmith_f_op_f32(sign(var_1.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1569f)), -883f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 1271f, var_1.x) * var_4.b))));
}

fn func_2() -> Struct_1 {
    return Struct_1(-abs(13138i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3()))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(195f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(f32(-1f) * -568f)))));
    global1 = array<i32, 18>();
    var var_1 = func_2();
    let var_2 = firstTrailingBit(max(u_input.c.x, countOneBits(56069u)));
    global2 = array<vec2<bool>, 7>();
    return Struct_1(-1i, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), 1216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 18u)];
    var_0 = 1i;
    global3 = arg_2.zz;
    var var_1 = Struct_1(select(global4.a, global4.a, true) >> (u_input.c.x % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.b.x, 1055f, arg_3.b.x))))))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, -557f, _wgslsmith_f_op_f32(-arg_1.b.x))));
    let var_2 = arg_0;
    return !(!global2[_wgslsmith_index_u32(1u, 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global4.b, vec3<f32>(global4.b.x, 356f, global4.b.x)))))))));
    global3 = !select(vec2<bool>(global3.x != (32152u >= u_input.c.x), !(!global3.x)), select(func_4(all(vec3<bool>(false, global3.x, false)), func_1(Struct_1(u_input.a, global4.b), global3.x), vec4<bool>(global3.x, global3.x, true, global3.x), func_1(Struct_1(2147483647i, vec3<f32>(120f, var_0.b.x, 1679f)), true)), func_4(true, func_1(Struct_1(global4.a, var_0.b), true), vec4<bool>(true, true, true, true), Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global4.b)), vec2<bool>(true, true)), !(!vec2<bool>(global3.x, global3.x)));
    global4 = func_1(Struct_1(_wgslsmith_mod_i32(-global4.a, ~0i ^ global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 18u)]), vec3<f32>(-662f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -469f), func_2().b.x, true)), _wgslsmith_f_op_f32(-var_0.b.x))), true);
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(19952u, u_input.c.x, 97177u, 0u) & vec4<u32>(32918u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 29308u, 1u))), u_input.c.x), 7u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), global4.b.x))) * var_0.b.zx);
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~reverseBits(u_input.c.x) >> (27716u % 32u), ~select(max(u_input.c.x, u_input.c.x), ~u_input.c.x, any(vec2<bool>(true, true)))));
}

