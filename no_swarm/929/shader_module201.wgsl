struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, false, true, true, false, false, true, false, false, true, true, false, false, false, false, true, true, true, true, true, false, true, true, false, true, false);

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(-1484f, vec2<u32>(0u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec4<u32>(47840u, 1u, 4140u, 82339u), vec4<f32>(689f, -1000f, -2029f, -161f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    global2 = arg_3;
    global1 = global0[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_0 = global2.c;
    var var_1 = false;
    global0 = array<bool, 27>();
    return !(u_input.b > _wgslsmith_div_i32(1i, firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, u_input.b))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = ((abs(abs(arg_0.b.x)) ^ ~(~53027u)) << (firstTrailingBit(global2.b.x) % 32u)) >= ~(~(~(0u | global2.b.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1126f), global2.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - global2.e.x)), _wgslsmith_f_op_f32(sign(449f)));
    var var_2 = vec4<bool>(true, any(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(49505u, 27u)]), vec2<bool>(all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 27u)], var_0)), var_0), all(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false, var_0, global0[_wgslsmith_index_u32(10746u, 27u)])))), !(func_3(vec2<i32>(-2147483647i, global2.c.x), Struct_1(arg_0.e.x, vec2<u32>(arg_0.d.x, global2.b.x), arg_0.c, global2.d, arg_2), true, Struct_1(1078f, vec2<u32>(22380u, global2.d.x), arg_0.c, global2.d, vec4<f32>(arg_2.x, 465f, -216f, 1000f))) & all(!vec4<bool>(var_0, false, false, true))), true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f * _wgslsmith_f_op_f32(select(arg_0.e.x, 417f, false)))) + global2.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), 1054f);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), max(global2.d.zw >> (reverseBits(vec2<u32>(63549u, 62471u)) % vec2<u32>(32u)), ~arg_0.d.yw) | ~(~global2.b), global2.c, ~vec4<u32>(global2.b.x | arg_0.b.x, _wgslsmith_div_u32(~global2.d.x, ~global2.b.x), _wgslsmith_sub_u32(1u, ~arg_0.b.x), arg_0.d.x), _wgslsmith_f_op_vec4_f32(-global2.e));
    return u_input.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = vec3<bool>(select(global0[_wgslsmith_index_u32(1u, 27u)], true, true), 0u >= min(arg_2.x, global2.d.x), !(1f > arg_0.e.x));
    global1 = any(select(vec2<bool>(arg_0.a >= global2.a, true), var_0.xx, !any(vec4<bool>(global0[_wgslsmith_index_u32(5765u, 27u)], global0[_wgslsmith_index_u32(15292u, 27u)], arg_1.x, global0[_wgslsmith_index_u32(0u, 27u)])))) | (true && (((0i > global2.c.x) || true) | global0[_wgslsmith_index_u32(arg_0.b.x, 27u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1422f, -1130f));
    global1 = true;
    global0 = array<bool, 27>();
    return func_2(arg_0, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(0i, global2.c.x, -23500i, 0i)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.e, arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(select(vec4<i32>(u_input.a.x, 46876i, 0i, -1i), func_1(Struct_1(global2.e.x, global2.b, u_input.a.xyx, global2.d, global2.e), vec3<bool>(global0[_wgslsmith_index_u32(global2.b.x, 27u)], false, global0[_wgslsmith_index_u32(global2.b.x, 27u)]), vec3<u32>(19752u, 72375u, global2.b.x)), false) << (vec4<u32>(~15617u, global2.b.x, 4294967295u, global2.d.x) % vec4<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2.e.x)), global2.e.x)))), vec2<u32>(1u, _wgslsmith_clamp_u32(global2.d.x, select(global2.b.x, reverseBits(global2.d.x), global0[_wgslsmith_index_u32(global2.d.x, 27u)]), max(~77467u, global2.b.x))), vec3<i32>(u_input.c.x, -_wgslsmith_add_i32(var_0.x, _wgslsmith_mod_i32(2147483647i, 2556i)), -max(-2147483647i, 1i)), global2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-992f, 199f, _wgslsmith_f_op_f32(global2.e.x + global2.a), global2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, var_0.xzz, -(i32(-1i) * -select(24466i, -58865i, false)), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-930f)))), -592f));
}

