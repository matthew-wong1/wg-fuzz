struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, -26727i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, 15377i), vec2<i32>(-20195i, 23713i), vec2<i32>(-49665i, -11551i), vec2<i32>(3893i, -8528i), vec2<i32>(2147483647i, -14305i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 4796i), vec2<i32>(i32(-2147483648), -42344i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-51019i, -10787i), vec2<i32>(31069i, i32(-2147483648)), vec2<i32>(2147483647i, 17445i), vec2<i32>(79157i, -24348i), vec2<i32>(-1i, 0i));

var<private> global3: array<i32, 15> = array<i32, 15>(-51542i, -1i, -1i, -45913i, 7939i, 31570i, 2147483647i, i32(-2147483648), 39684i, 2147483647i, -34248i, -1i, 2147483647i, i32(-2147483648), 32314i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(-1937f - -1123f));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - arg_1.a.x) * -1630f)), -655f, (any(vec3<bool>(arg_1.d, arg_1.e.x, true)) && true) && arg_1.e.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * -638f)), _wgslsmith_f_op_f32(ceil(global1.a))) * global1.a), _wgslsmith_f_op_f32(step(arg_1.a.x, 1000f)));
    global1 = Struct_2(arg_1.a.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) + var_1.x))) * global1.a));
    return global1.a;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = ~1u;
    var var_1 = -global3[_wgslsmith_index_u32(1u, 15u)];
    let var_2 = _wgslsmith_f_op_f32(-global1.a);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(63642u, u_input.a.x, 18427u, u_input.a.x) % vec4<u32>(32u)), Struct_1(vec2<f32>(var_2, 1617f), 165f, 3311u, true, vec4<bool>(arg_1, arg_1, true, false)), ~global3[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_f_op_f32(f32(-1f) * -764f)))), _wgslsmith_f_op_f32(func_3(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1805u, 18019u), ~vec4<u32>(u_input.a.x, 1u, 29974u, u_input.a.x)), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2043f, var_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2, global1.a)), _wgslsmith_f_op_f32(trunc(var_2)))), min(u_input.a.x, ~u_input.a.x), !arg_1, vec4<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1, arg_1, true)), global3[_wgslsmith_index_u32(4294967295u, 15u)])), _wgslsmith_dot_vec4_u32(~select(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 12082u)), true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 3835u, 4294967295u, u_input.a.x), vec4<u32>(22591u, u_input.a.x, 38345u, 0u))), !(u_input.b < countOneBits(-3443i)), vec4<bool>(true, true, true, true));
    let var_4 = vec2<bool>(true != var_3.e.x, true);
    return Struct_2(_wgslsmith_f_op_f32(var_2 - -280f));
}

fn func_1() -> Struct_2 {
    global2 = array<vec2<i32>, 19>();
    let var_0 = func_2(-33776i, false);
    let var_1 = -1i;
    let var_2 = 0u;
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 15u)];
    global3 = array<i32, 15>();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-392f - 580f))), global1.a))));
    var var_3 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(0i, 20284i, -1i, u_input.b)), vec4<i32>(_wgslsmith_div_i32(abs(~u_input.b), -28212i), 12869i, -abs(_wgslsmith_clamp_i32(56707i, 2147483647i, u_input.b)), global3[_wgslsmith_index_u32(~33128u, 15u)]), -select(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 1i, u_input.b), vec4<i32>(global3[_wgslsmith_index_u32(48229u, 15u)], 27900i, 2147483647i, 2147483647i))), _wgslsmith_add_vec4_i32(min(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 1i, -2147483647i, u_input.b), vec4<i32>(0i, -2741i, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i)), vec4<i32>(-20466i, global3[_wgslsmith_index_u32(0u, 15u)], u_input.b, u_input.b) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f * -1218f)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_i32(-52178i, ~u_input.b)), ~(~vec3<u32>(u_input.a.x, 37152u, u_input.a.x) >> (select(~vec3<u32>(14253u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 2945u), true) % vec3<u32>(32u))));
}

