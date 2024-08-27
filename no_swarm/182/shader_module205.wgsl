struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<f32, 2>;

var<private> global3: Struct_1;

var<private> global4: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = (-45724i ^ global3.a) >> (max(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(arg_0, arg_0)), vec2<u32>(u_input.c.x, 4294967295u))), 4294967295u) % 32u);
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, arg_0), 2u)];
    let var_1 = u_input.b.yw;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.c.x, 837f), -348f))), global3.c.x));
    let var_3 = global3.d;
    return global3.c.x;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.c.x, 75758u, u_input.c.x)), vec3<u32>(u_input.c.x, 4294967295u, ~27892u))), 2u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-397f, -1209f)), 1391f)))));
    global2 = array<f32, 2>();
    var var_2 = global3.d.x;
    var var_3 = Struct_1(firstLeadingBit(global3.a), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.b.x, global3.b.x, 2790i), vec4<i32>(_wgslsmith_clamp_i32(global0.x, abs(var_0.b.x), -global3.a), -50333i, ~var_0.b.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.c.x, 665f, 1000f))))))))), !select(select(!vec3<bool>(false, false, var_0.d.x), !vec3<bool>(global3.d.x, global3.d.x, true), u_input.c.x >= u_input.c.x), vec3<bool>(!global4.x, true, false), select(any(vec2<bool>(true, false)), true, arg_0.x)));
    return -819f;
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = vec2<u32>(0u, min(0u, _wgslsmith_mult_u32(~(~68234u), ~(~36283u))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1304f)) - 591f), _wgslsmith_div_f32(1018f, -437f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) * -538f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(38316u)))), arg_0.x));
    global2 = array<f32, 2>();
    var var_2 = Struct_1(_wgslsmith_sub_i32(u_input.a, select(_wgslsmith_sub_i32(-23339i, u_input.a), -15102i, false)) & -(~(-28768i)), vec4<i32>(~global3.a, 0i, -max(41405i, i32(-1i) * -16412i), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + global3.c.x), global2[_wgslsmith_index_u32(u_input.c.x, 2u)], _wgslsmith_f_op_f32(select(arg_0.x, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], global3.d.x))))), global3.d);
    global3 = Struct_1(abs(-1372i), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, false, false | global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(step(-2534f, global3.c.x)))), _wgslsmith_f_op_f32(round(var_2.c.x))), select(!(!(!vec3<bool>(var_2.d.x, true, false))), vec3<bool>(global3.d.x, global4.x, any(vec2<bool>(global3.d.x, var_2.d.x))), true));
    return ~var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(-1i, _wgslsmith_mult_vec4_i32(-firstLeadingBit(func_1(global3.c.zx)), ~vec4<i32>(~7211i, -53970i, ~2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-497f, global2[_wgslsmith_index_u32(u_input.c.x, 2u)], -1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-305f, -612f, global2[_wgslsmith_index_u32(19074u, 2u)]), global3.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(967f, global3.c.x, global3.c.x)))), vec3<bool>(false, _wgslsmith_clamp_u32(109979u, u_input.c.x, ~10300u) == _wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 54871u, 50655u, 29894u), vec4<u32>(u_input.c.x, u_input.c.x, 2832u, 1u))), !(!(global3.d.x && global3.d.x))));
    global2 = array<f32, 2>();
    var var_0 = func_1(global3.c.xx);
    var var_1 = any(select(select(global3.d, !(!global3.d), _wgslsmith_mult_u32(21143u, u_input.c.x) >= 1u), vec3<bool>(false && global3.d.x, global3.d.x, true), vec3<bool>(global3.d.x, !global3.d.x & any(global3.d), global3.d.x)));
    global0 = ~_wgslsmith_mult_vec3_i32(u_input.b.yxx, max(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.x, global3.b.x), vec3<i32>(1i, 83687i, global3.b.x) << (vec3<u32>(u_input.c.x, 79048u, 67119u) % vec3<u32>(32u)), vec3<i32>(71157i, -20398i, 0i)), global3.b.yxz));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.c.x) >> (u_input.c.x % 32u), min(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(4294967295u, 1u))))), 2u)];
    var var_3 = min(~(~47994u), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, all(vec2<bool>(global4.x, true)), true, !global3.d.x))));
}

