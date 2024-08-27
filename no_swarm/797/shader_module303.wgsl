struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-11686i, -41597i), vec2<i32>(0i, 40005i), vec2<i32>(24184i, -8253i));

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(1i), Struct_2(-1i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(13320i), Struct_2(-1i), Struct_2(i32(-2147483648)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec2<u32>(arg_3.a.x, ~876u);
    var var_1 = arg_3;
    return Struct_2(i32(-1i) * -13583i);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    return ~(_wgslsmith_mult_u32(max(~u_input.a, 0u), ~(~u_input.a)) ^ 9988u);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    let var_0 = vec4<i32>(~(~arg_3.a) | select(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_3.a, 55893i, arg_3.a, -11975i)), vec4<i32>(arg_3.a, arg_3.a, arg_3.a, arg_3.a) << (vec4<u32>(27953u, 5306u, u_input.b.x, 0u) % vec4<u32>(32u))), arg_3.a, arg_2.b.x), arg_3.a, -6613i, _wgslsmith_mod_i32(arg_3.a, _wgslsmith_clamp_i32(select(_wgslsmith_clamp_i32(1i, arg_3.a, 2147483647i), arg_3.a, arg_2.b.x), ~(arg_3.a >> (arg_2.a.x % 32u)), -select(arg_3.a, 1995i, arg_2.b.x))));
    global0 = array<vec2<i32>, 3>();
    var var_1 = _wgslsmith_f_op_f32(arg_1.x * arg_1.x);
    var_1 = arg_1.x;
    var_1 = global1[_wgslsmith_index_u32(12993u, 17u)];
    return arg_0.x;
}

fn func_2(arg_0: Struct_2) -> StorageBuffer {
    global1 = array<f32, 17>();
    let var_0 = 1u;
    let var_1 = -_wgslsmith_div_i32(abs(~arg_0.a >> (max(var_0, u_input.a) % 32u)), arg_0.a);
    var var_2 = vec3<f32>(1814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], 154f, -1218f))), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(39497u, 17u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -607f)), Struct_4(reverseBits(vec3<u32>(25784u, 1u, u_input.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), global2[_wgslsmith_index_u32(func_3(Struct_3(0u, vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a, 17u)], 1457f), global1[_wgslsmith_index_u32(var_0, 17u)], global1[_wgslsmith_index_u32(var_0, 17u)], u_input.b.x)), arg_0), 10u)]))), 1000f);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - var_2.x)) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1[_wgslsmith_index_u32(0u, 17u)], -604f, global1[_wgslsmith_index_u32(u_input.a, 17u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, -1596f, 2073f))), Struct_4(~vec3<u32>(13467u, var_0, 28855u), vec3<bool>(false, false, true)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(242f, global1[_wgslsmith_index_u32(u_input.a, 17u)], 394f)), ~arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1264f), Struct_4(vec3<u32>(4294967295u, 31117u, u_input.b.x), vec3<bool>(true, false, true)))))), -164f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0, 17u)], -1526f) * _wgslsmith_f_op_f32(1000f + -872f)));
    return StorageBuffer(1683f, countOneBits(~max(abs(vec3<u32>(u_input.b.x, 30791u, var_0)), vec3<u32>(7917u, 0u, 1u))), var_2.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 17u)] - global1[_wgslsmith_index_u32(u_input.a, 17u)]) * _wgslsmith_f_op_f32(1362f + global1[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 1987f, true)) + -740f), -980f))), 3414i, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], Struct_4(~(~vec3<u32>(4294967295u, u_input.a, u_input.b.x)), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, all(vec3<bool>(true, true, true)))));
    global1 = array<f32, 17>();
    let var_1 = vec2<i32>(var_0.a, var_0.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(~u_input.a), 17u)] + -1000f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1833f)), -1000f);
    let x = u_input.a;
    s_output = func_2(global2[_wgslsmith_index_u32(8007u, 10u)]);
}

