struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(223f, 55223u), Struct_2(226f, 4485u));

var<private> global2: array<bool, 27>;

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 194f, arg_1.b.a, 1000f))))))));
    return _wgslsmith_add_vec2_u32(u_input.b.zy, u_input.b.ww);
}

fn func_3() -> f32 {
    let var_0 = -1i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 1994f, _wgslsmith_f_op_f32(trunc(288f)));
    var var_2 = Struct_1(select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(24231u, 4294967295u), u_input.b.x), 81061u), u_input.b.xw, vec2<bool>(select(true, global2[_wgslsmith_index_u32(13416u, 27u)] == true, global2[_wgslsmith_index_u32(u_input.b.x & u_input.c, 27u)]), true)), var_0, ~reverseBits((vec4<i32>(45200i, var_0, var_0, var_0) ^ vec4<i32>(var_0, var_0, -2147483647i, var_0)) | (vec4<i32>(-2147483647i, var_0, 33811i, -2147483647i) & vec4<i32>(var_0, var_0, var_0, 0i))));
    global1 = array<Struct_2, 2>();
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 35054u, 4294967295u), abs(~(~vec3<u32>(2176u, var_2.a.x, 4294967295u)))), 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1442f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_3()), 83643u);
    var var_1 = Struct_3(arg_2.b, var_0, arg_1.x);
    let var_2 = arg_2;
    let var_3 = Struct_3(~max(~min(arg_2.c.x, 22760i), ~arg_2.c.x), global1[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.zwy, u_input.b.wwz), _wgslsmith_dot_vec2_u32(u_input.b.wx, var_2.a)), arg_2.a.x), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_4 = vec2<u32>(min(countOneBits(u_input.c) ^ 1u, _wgslsmith_sub_u32(40900u & var_1.b.b, var_0.b)), u_input.a);
    return vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.a), 285f, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 2>();
    let var_0 = global0.x;
    var var_1 = Struct_3(~_wgslsmith_sub_i32(-1i >> (1u % 32u), _wgslsmith_div_i32(2147483647i, -33181i)) << (firstLeadingBit(4294967295u) % 32u), global3[_wgslsmith_index_u32(~19502u, 3u)], _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)));
    global1 = array<Struct_2, 2>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a - 466f) - -372f)), 831f)), _wgslsmith_f_op_f32(-278f * 416f));
    global0 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(425f, global0.x, var_2.x, global0.x)))))))), Struct_1(~(~func_1(global0.x, Struct_3(-61494i, Struct_2(global0.x, 0u), 726f))), _wgslsmith_div_i32(firstLeadingBit(1i), -1i), vec4<i32>(min(4226i, 0i), _wgslsmith_div_i32(-32983i, -var_1.a), _wgslsmith_sub_i32(~var_1.a, -var_1.a), ~var_1.a >> ((u_input.b.x | 46913u) % 32u))), !select(any(vec3<bool>(global2[_wgslsmith_index_u32(15095u, 27u)], true, global2[_wgslsmith_index_u32(var_1.b.b, 27u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c), 27u)], select(false, !global2[_wgslsmith_index_u32(119237u, 27u)], global2[_wgslsmith_index_u32(~4294967295u, 27u)]))));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(var_1.b.b, u_input.a), var_1.b.b);
    global3 = array<Struct_2, 3>();
    var var_4 = Struct_3(var_1.a, var_1.b, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zy) * var_2.yy)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, global0.x, 525f, var_4.b.a), vec4<f32>(-251f, -2138f, -109f, var_2.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)])))))), Struct_1(vec2<u32>(~u_input.a, 0u), countOneBits(-1480i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a, -1487i, var_4.a, -259i), vec4<i32>(var_1.a, var_4.a, 2147483647i, var_1.a))), global2[_wgslsmith_index_u32(var_4.b.b, 27u)])).x, u_input.b);
}

