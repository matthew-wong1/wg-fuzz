struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<u32>, 29>;

var<private> global2: Struct_2 = Struct_2(-9152i, 0i, vec4<u32>(20743u, 34907u, 5367u, 4294967295u));

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(30395i, -21130i, vec4<u32>(21060u, 1u, 40081u, 4294967295u)), Struct_2(17951i, 5513i, vec4<u32>(101607u, 1u, 0u, 0u)), Struct_2(2147483647i, 2147483647i, vec4<u32>(69775u, 12446u, 19577u, 4294967295u)), Struct_2(i32(-2147483648), i32(-2147483648), vec4<u32>(0u, 4294967295u, 1865u, 49170u)), Struct_2(-6467i, i32(-2147483648), vec4<u32>(1u, 1u, 0u, 60823u)), Struct_2(i32(-2147483648), 0i, vec4<u32>(4294967295u, 0u, 26568u, 61036u)), Struct_2(2147483647i, 5109i, vec4<u32>(28030u, 4294967295u, 4294967295u, 1u)), Struct_2(0i, -13173i, vec4<u32>(1u, 0u, 1u, 0u)), Struct_2(-1i, 0i, vec4<u32>(21831u, 11884u, 0u, 61289u)), Struct_2(-6147i, 13564i, vec4<u32>(4294967295u, 0u, 54414u, 9641u)), Struct_2(55297i, -1793i, vec4<u32>(4294967295u, 4294967295u, 24041u, 97104u)), Struct_2(0i, -52707i, vec4<u32>(0u, 0u, 90u, 1u)), Struct_2(i32(-2147483648), 6704i, vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_2(23764i, -14222i, vec4<u32>(4294967295u, 0u, 537u, 1u)), Struct_2(1664i, 1i, vec4<u32>(7995u, 1u, 0u, 1u)), Struct_2(4291i, 1i, vec4<u32>(67469u, 35480u, 27896u, 30816u)), Struct_2(2147483647i, 1i, vec4<u32>(4294967295u, 4294967295u, 31398u, 1130u)), Struct_2(-42461i, -6739i, vec4<u32>(6697u, 4073u, 99637u, 35283u)), Struct_2(-1i, 2147483647i, vec4<u32>(1u, 29099u, 105831u, 4294967295u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global1 = array<vec4<u32>, 29>();
    let var_0 = u_input.c;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(705f + global0.x), global0.x);
    let var_2 = -_wgslsmith_sub_i32(firstTrailingBit(u_input.e.x << (~0u % 32u)), i32(-1i) * -2147483647i);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), var_1.x), true)) - vec2<f32>(1338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f) + -459f))));
    return var_2;
}

fn func_3() -> i32 {
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(13624u, ~(~firstLeadingBit(~57450u))), 19u)];
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * -899f)));
    var var_1 = Struct_1(global2.c.x, vec4<bool>(any(vec3<bool>(false, true, all(vec3<bool>(true, true, false)))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), -2147483647i > global2.b, any(vec2<bool>(true, true))), select(vec4<bool>(select(true, true, true), u_input.e.x >= abs(u_input.e.x), false, any(vec4<bool>(true, true, true, true))), vec4<bool>(all(vec3<bool>(true, false, false)), all(vec2<bool>(true, false)) & (global2.c.x != 48998u), true, _wgslsmith_f_op_f32(ceil(global0.x)) != -1000f), vec4<bool>(true, !(u_input.b.x >= 31512i), all(vec4<bool>(true, true, true, false)), false)));
    let var_2 = ~(~u_input.a.xw);
    let var_3 = Struct_2(9426i, _wgslsmith_mult_i32(~min(63318i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e.x, u_input.e.x), vec3<i32>(u_input.b.x, -1i, -2147483647i))), global2.b), ~(~u_input.a ^ abs(select(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec4<u32>(0u, 35879u, 1u, var_1.a), true))));
    return firstLeadingBit(-2147483647i) | _wgslsmith_mod_i32(-2147483647i, u_input.b.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> StorageBuffer {
    global2 = Struct_2(46196i, ~(i32(-1i) * -func_3()), ~_wgslsmith_add_vec4_u32(arg_2.c, _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(~global2.c.x, 29u)], vec4<u32>(0u, 2189u, 1u, global2.c.x))));
    let var_0 = 0i;
    let var_1 = global2.c.x;
    var var_2 = global2.c.x;
    let var_3 = func_3();
    return StorageBuffer(~select(global2.c.yx, max(~u_input.a.xx, ~vec2<u32>(0u, u_input.c.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 29>();
    var var_0 = ~(~0u);
    let x = u_input.a;
    s_output = func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2.a, global2.b), u_input.b.yy), _wgslsmith_sub_vec2_i32(u_input.e.zx, vec2<i32>(-43062i, -18214i))) | ~(~u_input.b.zy), u_input.e.wy), global0.x, Struct_2(1i, ~select(reverseBits(-30367i), func_1(vec4<i32>(-22399i, u_input.e.x, 10469i, 1i)), true), ~(~global1[_wgslsmith_index_u32(u_input.d, 29u)])));
}

