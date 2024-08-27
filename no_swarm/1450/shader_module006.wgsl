struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 7> = array<f32, 7>(383f, 426f, -839f, -608f, -1427f, 1173f, -350f);

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec4<f32> {
    global0 = global3[_wgslsmith_index_u32(global0.d, 2u)];
    var var_0 = ~(~global0.d) & 1u;
    let var_1 = ~vec2<u32>(1u, global0.d << (4898u % 32u)) & (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23251u, global0.d), select(vec3<u32>(79710u, global0.d, 116523u), vec3<u32>(27343u, global0.d, global0.d), vec3<bool>(true, global0.e, global0.e))), global0.d) ^ countOneBits(vec2<u32>(~0u, 1u)));
    global2 = array<Struct_1, 16>();
    let var_2 = vec3<f32>(global0.a, global0.c.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u << (((global0.d & var_1.x) >> (102657u % 32u)) % 32u), 7u)]));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c + global0.c));
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstLeadingBit(global0.d), ~global0.d, 1036u), 2u)];
    global1 = array<f32, 7>();
    var var_1 = global2[_wgslsmith_index_u32(max(firstTrailingBit(min(~max(1u, var_0.d), var_0.d)), 1u), 16u)];
    let var_2 = vec2<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, global0.d, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.d, var_0.d, 6721u), vec3<u32>(var_0.d, var_0.d, 58013u)) & vec3<u32>(22169u, 14967u, 1u)));
    var var_3 = var_1.c.x;
    return Struct_1(697f, select(select(var_1.b, select(vec4<bool>(var_0.e, true, false, var_1.b.x), vec4<bool>(true, true, global0.e, false), var_1.e), select(var_0.b.x, any(vec2<bool>(true, var_1.e)), true)), global0.b, all(vec3<bool>(true, global0.e, !global0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), 418f, _wgslsmith_f_op_vec4_f32(func_2()).x, -127f), _wgslsmith_sub_u32(1u, var_2.x), any(!var_0.b));
}

fn func_1() -> i32 {
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)) - _wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(round(global0.c))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.d, ~var_0.d), 16u)];
    var var_2 = var_1.c.x;
    var var_3 = 6619u;
    global2 = array<Struct_1, 16>();
    return max(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(max(7947i, u_input.a), abs(-2147483647i)), u_input.b.x, select(12259i, firstTrailingBit(abs(-20350i)), all(vec4<bool>(true, global0.b.x, false, var_1.e)))), -u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_1 = global3[_wgslsmith_index_u32(select(~(~1u), 10835u, true), 2u)];
    let var_2 = func_1();
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(~_wgslsmith_mod_u32(var_0.d ^ var_1.d, ~23423u))), 2u)];
    var var_3 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.x, func_3(vec4<f32>(var_1.c.x, -141f, global0.c.x, global1[_wgslsmith_index_u32(global0.d, 7u)])).c.x))), _wgslsmith_f_op_f32(f32(-1f) * -523f), var_0.c.x, var_0.a));
    let var_4 = func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.d, ~(1u >> (var_3.d % 32u))), vec3<u32>(~reverseBits(~0u), ~min(~global0.d, select(4294967295u, 4294967295u, true)), ~1u << (global0.d % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4.c * vec4<f32>(var_0.c.x, 1743f, -250f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.d, 7u)], global0.a, var_1.a, global1[_wgslsmith_index_u32(var_1.d, 7u)]), global0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).yw - vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_4.d, 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.c.x)) - var_4.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 7u)] - var_4.c.x)));
}

