struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, true, true, true, true, true, true, false, false, false, true);

var<private> global1: vec3<f32> = vec3<f32>(-1263f, -1000f, 1260f);

var<private> global2: Struct_1;

var<private> global3: array<bool, 30>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<f32>) -> i32 {
    return arg_1.x;
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec3<f32> {
    global1 = global2.c;
    return global2.c;
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global0 = array<bool, 12>();
    var var_0 = abs(arg_0);
    global3 = array<bool, 30>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c.zz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, global2.c.x))), _wgslsmith_f_op_vec2_f32(step(global1.yy, global2.c.zz))))), Struct_1(global2.a, 14280u, global2.c));
    global2 = var_1.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-726f - global1.x), _wgslsmith_f_op_f32(-var_1.a.x), !vec3<bool>(global0[_wgslsmith_index_u32(50438u, 12u)], false, var_1.b.a.x)), 31003u)), _wgslsmith_f_op_vec3_f32(select(var_1.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c.x, global2.c.x, global1.x) * vec3<f32>(-1192f, var_1.b.c.x, 1328f))), global3[_wgslsmith_index_u32(~global2.b, 30u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c.x, global2.c.x, _wgslsmith_f_op_f32(1639f - -900f)), global2.c, global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 15112u), vec2<u32>(0u, 4294967295u)), ~6536u, !global2.a.x), 30u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(func_2(-_wgslsmith_div_i32(~(-16428i), func_1(Struct_3(344f, global2.c.x, global2.a.xzw), vec2<i32>(0i, -2147483647i), global2.c.xy)) ^ 1i));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global2.c.x - global1.x), _wgslsmith_f_op_f32(step(global2.c.x, -311f))))))), Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 12u)], any(global2.a), global0[_wgslsmith_index_u32(3112u, 12u)], true), vec4<bool>(global2.a.x, all(global2.a), false && global2.a.x, true), vec4<bool>(true, true, true, true)), firstTrailingBit(max(~3128u, global2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c.x, 1149f, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1492f, global1.x, global2.c.x) - vec3<f32>(global1.x, 1000f, -1953f)), global2.a.x)))));
    let var_1 = vec3<i32>(reverseBits(-2147483647i), ~(~(~(~(-21976i)))), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, 1i, 24564i), vec4<i32>(-21688i, 2147483647i, 2147483647i, 1i)), -vec4<i32>(0i, 1i, 2147483647i, 1i)) >> (abs(~80335u) % 32u));
    let var_2 = Struct_1(!(!vec4<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], var_0.b.a.x)), true | global2.a.x, true, var_0.b.a.x)), ~u_input.a, var_0.b.c);
    var var_3 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-global2.c.x));
    var var_4 = var_2;
    var var_5 = vec2<u32>(global2.b, ~global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.c)));
}

