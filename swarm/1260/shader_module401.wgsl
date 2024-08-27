struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_2 = Struct_2(Struct_1(true), vec3<i32>(2147483647i, -19896i, -31880i), 166f, vec3<bool>(true, false, true));

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 5924i, 61994i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> bool {
    global0 = array<Struct_1, 25>();
    var var_0 = global1.b.x;
    global1 = Struct_2(global1.a, global1.b, _wgslsmith_f_op_f32(-726f + _wgslsmith_div_f32(371f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(-global1.c)))), select(vec3<bool>(any(vec2<bool>(true, false)), !all(global1.d.zy), all(select(vec4<bool>(true, false, arg_0.a, global1.a.a), vec4<bool>(global1.a.a, true, global1.d.x, false), vec4<bool>(global1.a.a, true, arg_0.a, arg_0.a)))), select(select(global1.d, select(vec3<bool>(false, global1.a.a, true), global1.d, false), global1.d), vec3<bool>(arg_0.a, true, !global1.a.a), select(select(global1.d, vec3<bool>(true, global1.d.x, global1.d.x), vec3<bool>(false, arg_0.a, false)), global1.d, true)), global1.a.a));
    var_0 = 37128i;
    var_0 = ~3318i | global2.x;
    return true;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_1(false);
    let var_1 = var_0;
    let var_2 = select(0i >= -_wgslsmith_dot_vec2_i32(vec2<i32>(6468i, 21887i), global2.yz), true, any(vec4<bool>(func_3(global0[_wgslsmith_index_u32(select(arg_0, 4294967295u, false), 25u)], ~(-2147483647i), global1.c), all(vec4<bool>(false, false, false, false)), true, any(select(vec4<bool>(false, false, var_1.a, false), vec4<bool>(false, false, global1.a.a, var_1.a), var_0.a)))));
    global1 = Struct_2(Struct_1(!var_0.a), _wgslsmith_mod_vec3_i32(abs(firstTrailingBit(_wgslsmith_add_vec3_i32(global1.b, vec3<i32>(u_input.b, -28699i, u_input.b)))), select(global1.b, -(~global1.b), global1.d)), _wgslsmith_f_op_f32(-global1.c), vec3<bool>(true, any(vec3<bool>(var_0.a, true, 0u != arg_0)), var_2));
    var var_3 = Struct_1(global1.a.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(ceil(global1.c)))), 319f, _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.c)))) * -1840f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c - -3041f), _wgslsmith_f_op_f32(func_2(u_input.a))));
    return Struct_2(arg_1, _wgslsmith_div_vec3_i32(global1.b, _wgslsmith_sub_vec3_i32(vec3<i32>(-8365i, _wgslsmith_add_i32(1i, 8229i), -2147483647i), -vec3<i32>(1i, u_input.b, 42206i))), 900f, vec3<bool>(any(select(vec4<bool>(false, global1.a.a, arg_0.a, true), !vec4<bool>(false, arg_1.a, true, arg_0.a), vec4<bool>(global1.d.x, arg_1.a, global1.a.a, global1.d.x))), all(!vec2<bool>(global1.a.a, true)), all(vec4<bool>(func_3(Struct_1(arg_1.a), global1.b.x, var_0.x), true, global1.c != var_0.x, u_input.b < -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -_wgslsmith_add_vec3_i32(~countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(22495i, u_input.b, global2.x), vec3<i32>(-1i, global1.b.x, global1.b.x))), vec3<i32>(16700i & select(global1.b.x, global1.b.x, false), -10202i, ~(~u_input.b)));
    global1 = func_1(global0[_wgslsmith_index_u32(21201u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)]);
    var var_0 = !((global1.d.x & true) != !((global1.d.x || false) == true));
    let var_1 = Struct_2(func_1(Struct_1(!(global1.c > global1.c)), func_1(func_1(global1.a, global0[_wgslsmith_index_u32(4294967295u, 25u)]).a, Struct_1(true)).a).a, vec3<i32>(-24307i, global2.x, abs(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_mult_i32(global2.x, global1.b.x), -25008i))), -487f, global1.d);
    var var_2 = Struct_1(-abs(global1.b.x) <= countOneBits(reverseBits(-16135i)));
    var var_3 = select(global1.b.yz, _wgslsmith_div_vec2_i32(-(var_1.b.xx | global1.b.xx), var_1.b.yx | vec2<i32>(global1.b.x, u_input.b)), vec2<bool>(!(!var_1.a.a), true)) | vec2<i32>(_wgslsmith_mod_i32(global2.x, ~_wgslsmith_mod_i32(global1.b.x, var_1.b.x)), 97517i);
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(reverseBits(21962u) >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(abs(u_input.c.xx), u_input.d.yw), 4294967295u), ~42263u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, 1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 56658u, 0u), u_input.d), u_input.d.x)), u_input.e));
}

