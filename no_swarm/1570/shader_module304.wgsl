struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = 603f;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(74333u, 30669u, 0u, 4294967295u), Struct_1(vec2<i32>(33359i, 1i), vec3<f32>(-474f, -696f, 830f), false, false, 11961u));

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_i32(global2.b.a, vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(global2.b.a.x, global2.b.a.x)), -19599i)), Struct_2(~arg_0.a, global3[_wgslsmith_index_u32(reverseBits(~u_input.a), 1u)]), arg_0.b.b);
    global0 = 0i > global2.b.a.x;
    var var_1 = var_0.c;
    global3 = array<Struct_1, 1>();
    let var_2 = arg_0;
    return select(vec4<bool>(any(select(select(vec2<bool>(var_2.b.c, arg_0.b.c), vec2<bool>(true, var_2.b.c), true), !vec2<bool>(false, var_2.b.d), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, global2.b.c)))), var_0.b.b.c, var_2.b.d, true), !(!select(!vec4<bool>(false, arg_0.b.c, false, false), vec4<bool>(true, true, arg_0.b.c, var_2.b.d), arg_0.b.c)), select(vec4<bool>(select(arg_0.b.d, global2.b.c, true) && (var_0.b.b.c & true), all(vec2<bool>(arg_0.b.d, arg_0.b.c)), all(select(vec4<bool>(global2.b.d, var_2.b.d, global2.b.d, arg_0.b.c), vec4<bool>(var_2.b.c, false, true, true), var_0.b.b.d)), (arg_0.b.d & true) | true), !(!(!vec4<bool>(true, global2.b.c, var_0.b.b.c, var_2.b.c))), !select(vec4<bool>(arg_0.b.c, global2.b.c, false, global2.b.d), vec4<bool>(true, false, arg_0.b.c, true), global2.b.a.x != 2147483647i)));
}

fn func_2() -> vec4<bool> {
    let var_0 = select(!vec4<bool>(!(global2.b.d && global2.b.c), any(func_3(Struct_2(global2.a, global3[_wgslsmith_index_u32(global2.a.x, 1u)]))), any(select(vec4<bool>(global2.b.c, global2.b.c, false, true), vec4<bool>(global2.b.d, true, global2.b.c, false), vec4<bool>(global2.b.c, false, false, true))), global2.b.c), !(!vec4<bool>(any(vec4<bool>(true, global2.b.c, true, global2.b.d)), true, global2.b.d, global2.b.c || global2.b.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_f_op_f32(1290f * global2.b.b.x))))) >= _wgslsmith_f_op_f32(global2.b.b.x - global2.b.b.x));
    return var_0;
}

fn func_1(arg_0: Struct_4) -> vec4<u32> {
    global1 = arg_0.b.b.b.x;
    global1 = _wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.c.x));
    var var_0 = ~(~(~1u));
    let var_1 = select(!vec4<bool>(true, 46814u == global2.b.e, arg_0.b.b.c, any(func_2())), select(vec4<bool>(global2.b.c, all(vec2<bool>(true, false)), global2.b.c, global2.b.d), select(select(vec4<bool>(true, true, true, true), func_3(arg_0.b), arg_0.b.b.d), vec4<bool>(all(vec3<bool>(false, global2.b.c, arg_0.b.b.d)), all(vec4<bool>(false, global2.b.d, global2.b.d, arg_0.b.b.d)), true, any(vec2<bool>(false, false))), vec4<bool>(select(arg_0.b.b.d, global2.b.c, false), true, true, false)), global2.b.c), select(global2.b.d, true, u_input.a >= global2.a.x));
    global1 = global2.b.b.x;
    return select(global2.a | vec4<u32>(global2.a.x, u_input.b | u_input.a, u_input.a, 8770u), ~countOneBits(global2.a), false) ^ _wgslsmith_add_vec4_u32(abs(~arg_0.b.a), countOneBits(vec4<u32>(u_input.a, _wgslsmith_div_u32(0u, arg_0.b.b.e), 15309u, arg_0.b.b.e)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_1.b.b.x - _wgslsmith_f_op_f32(arg_1.b.b.x * _wgslsmith_f_op_f32(abs(global2.b.b.x)))))), 668f, 1367f);
    global0 = true;
    global3 = array<Struct_1, 1>();
    var var_1 = -max(vec2<i32>(arg_1.b.a.x, global2.b.a.x), global2.b.a);
    global3 = array<Struct_1, 1>();
    return StorageBuffer(-1758i, _wgslsmith_f_op_f32(step(-223f, -606f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)), _wgslsmith_f_op_vec2_f32(trunc(var_0.yz)), arg_1.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global2.b.b.x, Struct_2(func_1(Struct_4(global2.b.a.x, Struct_2(global2.a, global3[_wgslsmith_index_u32(global2.a.x, 1u)]), _wgslsmith_f_op_vec3_f32(trunc(global2.b.b)))), global3[_wgslsmith_index_u32(global2.a.x ^ _wgslsmith_add_u32(1u, 1u), 1u)]));
}

