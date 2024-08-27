struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(0i, i32(-2147483648), 33091i, 2749i), vec4<i32>(25119i, -1i, 28381i, -16161i), vec4<i32>(-39169i, 0i, 0i, -5285i), vec4<i32>(-1i, 8047i, 2147483647i, 0i), vec4<i32>(2054i, -6556i, 2147483647i, 1i), vec4<i32>(0i, 5317i, 1i, i32(-2147483648)), vec4<i32>(-6188i, 2147483647i, -3320i, -52296i), vec4<i32>(7926i, 2147483647i, i32(-2147483648), 29586i), vec4<i32>(2147483647i, 2147483647i, 28i, 16164i), vec4<i32>(-1i, 0i, i32(-2147483648), 0i), vec4<i32>(42925i, 2147483647i, 43429i, 0i), vec4<i32>(i32(-2147483648), -1i, -21073i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 101941i, 16174i), vec4<i32>(987i, 26362i, 10922i, -1i), vec4<i32>(0i, -13687i, -1i, -42501i), vec4<i32>(-1i, -26030i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -3580i, -1i), vec4<i32>(-81006i, -38852i, -15185i, 1i), vec4<i32>(-14715i, 61928i, -11141i, 0i), vec4<i32>(19231i, -11150i, 2147483647i, -23503i), vec4<i32>(2147483647i, -511i, -4749i, -7418i), vec4<i32>(2147483647i, 15795i, -18979i, -10723i), vec4<i32>(1i, -12202i, -39436i, 0i), vec4<i32>(i32(-2147483648), 27999i, -10548i, 2147483647i), vec4<i32>(6782i, 21865i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 1i, -1i), vec4<i32>(4116i, 31124i, 41872i, -2741i), vec4<i32>(1i, 22583i, 1i, 47829i), vec4<i32>(1i, -1i, -36867i, 0i), vec4<i32>(-17353i, -56418i, -1i, -9071i));

var<private> global1: array<vec3<bool>, 19>;

var<private> global2: array<u32, 23>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = !(!(!(global3.b != -570f))) && all(!vec3<bool>(false, !global3.a, u_input.c == 6221i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-887f, _wgslsmith_f_op_f32(arg_0.x + 798f)))))));
    var var_2 = ~(-_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(~(~4294967295u), 30u)], _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 30u)], _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(18073u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]))));
    global2 = array<u32, 23>();
    let var_3 = Struct_1(global3.a, global3.b);
    return var_3.a;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    global0 = array<vec4<i32>, 30>();
    let var_0 = all(vec2<bool>(all(vec2<bool>(global3.a, false)), func_2(vec3<f32>(716f, 1515f, global3.b)) & !arg_0.x)) & true;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global3.b, 727f, global3.b) * vec4<f32>(636f, global3.b, global3.b, global3.b))))), global2[_wgslsmith_index_u32(u_input.b, 23u)], ~(~vec2<u32>(1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.b)) * _wgslsmith_f_op_f32(ceil(global3.b))), 1552f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(725f)) + global3.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b)))), _wgslsmith_f_op_f32(-global3.b)), ~(~min(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(48028u, 23u)]), ~vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 23u)], 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b), -639f)));
    let var_1 = u_input.c;
    global2 = array<u32, 23>();
    var var_2 = var_1;
    var var_3 = 39606u;
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(min(~22671u, 7258u), 19u)]);
}

