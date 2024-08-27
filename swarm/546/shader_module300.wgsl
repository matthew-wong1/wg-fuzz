struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: vec2<u32> = vec2<u32>(74841u, 4294967295u);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1150f, 1000f));

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    global3 = array<Struct_1, 8>();
    var var_0 = arg_1.c.a.x;
    var var_1 = global1.x;
    return false;
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = countOneBits(~vec2<u32>(0u, global1.x));
    global3 = array<Struct_1, 8>();
    global1 = vec2<u32>(var_0.x, ~global1.x);
    let var_1 = arg_0.b.x;
    let var_2 = _wgslsmith_mult_i32(~select(13889i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1817i), vec2<i32>(-1667i, 1i))), true), -2147483647i);
    return vec4<i32>(var_2, var_2, _wgslsmith_mod_i32(var_2, var_2), -var_2) & vec4<i32>(~13659i, _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(14285i, var_2, var_2, 2147483647i)), vec4<i32>(var_2, var_2, var_2, -2147483647i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 21348u), vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)) % vec4<u32>(32u))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(0i, 1i))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-2147483647i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, -2147483647i, var_2), vec3<i32>(-2147483647i, var_2, var_2))), var_2));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a.x, 759f)))))), Struct_1(vec2<f32>(-219f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 4u)]), 575f))));
    global0 = array<f32, 4>();
    var var_1 = _wgslsmith_div_vec4_i32(func_4(Struct_2(func_3(var_0.a, Struct_2(var_0.a, vec2<f32>(-200f, 1004f), var_0.c), !vec3<bool>(var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.c.a, vec2<f32>(global2.a.x, var_0.c.a.x), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)])))), var_0.c)), vec4<i32>(0i, 20377i, countOneBits(max(-5331i, -2147483647i) >> (0u % 32u)), 1i));
    let var_2 = var_1.x;
    let var_3 = ~26967u;
    return Struct_1(global2.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    global1 = ~(arg_2.yz | vec2<u32>(arg_2.x, ~(~global1.x)));
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(64541u, arg_0.x), 8u)];
    let var_1 = func_2();
    let var_2 = select(arg_2, arg_2, arg_1);
    let var_3 = !select(vec4<bool>(true, arg_1, all(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(true, arg_1, arg_1))), arg_1), vec4<bool>(!(arg_1 && true), !(false != arg_1), arg_1, select(select(arg_1, arg_1, false), all(vec2<bool>(false, true)), all(vec4<bool>(true, true, arg_1, arg_1)))), all(vec3<bool>(arg_1, true != arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x)) + global0[_wgslsmith_index_u32(4294967295u, 4u)]) - func_2().a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-273f, -1346f, _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a.x, 4294967295u), false, vec4<u32>(global1.x, 0u, u_input.a.x, 1u))))))))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_2(!(!(var_1.x && var_1.x) == true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global0[_wgslsmith_index_u32(global1.x, 4u)])), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(50865u, 4u)], var_0.x)), vec2<f32>(-686f, var_0.x), true))))), global4[_wgslsmith_index_u32(~((u_input.a.x & 46556u) ^ _wgslsmith_sub_u32(13291u, u_input.a.x)) ^ 1u, 21u)]);
    var var_3 = Struct_1(vec2<f32>(-1097f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a.x) + global2.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(global1.x, 4294967295u), false, vec4<u32>(4294967295u, global1.x, u_input.a.x, 4294967295u)))))));
    global4 = array<Struct_1, 21>();
    let var_4 = Struct_2(any(vec3<bool>(false, func_3(553f <= var_2.c.a.x, Struct_2(var_1.x, vec2<f32>(global2.a.x, global2.a.x), var_2.c), select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_2.a), var_1.x)), var_1.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a) - var_2.b), vec2<f32>(-286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a.x) * _wgslsmith_f_op_f32(func_1(u_input.a, var_1.x, vec4<u32>(10010u, global1.x, 0u, 26364u))))))), var_2.c);
    global4 = array<Struct_1, 21>();
    global1 = vec2<u32>(global1.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, abs(~0i)), vec2<i32>(1i, 1i)), min(u_input.a.x, global1.x));
}

