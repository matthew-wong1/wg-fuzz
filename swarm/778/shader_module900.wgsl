struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: vec2<i32>;

var<private> global3: array<u32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = 1u;
    return true;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    global2 = vec2<i32>(_wgslsmith_clamp_i32(abs(firstTrailingBit(-14639i)), -13948i, 35158i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-(~u_input.b), ~u_input.c.x), -1i));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.a))))), _wgslsmith_f_op_f32(global0.a * global0.a), 1u, !any(!select(global1.yw, global1.yy, global1.wy)), false);
    var var_2 = firstLeadingBit(0i);
    global2 = u_input.c.wx;
    return false;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(~1u, _wgslsmith_add_u32(0u, global0.c), func_3()), select(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, ~arg_0), ~4294967295u), 1u, global1.x)), 21u)];
    var var_1 = abs(~firstLeadingBit(vec4<u32>(arg_0, arg_0, 4294967295u, 4673u) | vec4<u32>(4294967295u, 4294967295u, arg_0, arg_0)) & reverseBits(abs(vec4<u32>(45837u, 31702u, 0u, 36833u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 29984u, arg_0, global0.c), vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(global0.c, 21u)], arg_0)) % vec4<u32>(32u))));
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(floor(826f)), 5648u, all(vec4<bool>(global1.x, all(select(vec4<bool>(global1.x, global0.e, global0.e, false), vec4<bool>(false, true, true, false), vec4<bool>(global0.d, false, global0.d, false))), true, global1.x)), select(global1.x, (40066u != arg_0) | global0.e, all(global1.wy)));
    var var_2 = vec3<bool>(all(vec2<bool>(any(select(vec4<bool>(global1.x, global1.x, false, global0.e), vec4<bool>(global1.x, global0.d, false, global1.x), vec4<bool>(false, true, true, true))), !(!global0.d))), false, !global0.d);
    global3 = array<u32, 21>();
    return Struct_2(func_3(), Struct_1(1573f, global0.a, 4294967295u, false, true), Struct_1(global0.b, 1166f, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(var_1.zw), var_1.zw | var_1.wz), vec2<u32>(21557u, ~arg_0)), !var_2.x, true), vec4<i32>(5757i, -20619i, 13747i, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(false && !global1.x, select(func_1(Struct_3(u_input.b), Struct_1(667f, 1464f, global0.c, false, global0.d), Struct_2(true, Struct_1(global0.a, 370f, 160195u, true, global1.x), Struct_1(1083f, global0.a, 0u, false, true), u_input.c)), true, global0.e)), !vec2<bool>(!global1.x == !global0.d, global0.d), any(!global1.xw));
    let var_1 = func_2(~0u);
    var var_2 = func_2(_wgslsmith_add_u32(0u, ~reverseBits(global3[_wgslsmith_index_u32(4294967295u, 21u)]))).c;
    global1 = vec4<bool>(global0.e, !(!(!global0.d)), false, func_3());
    var var_3 = var_1.c.c;
    let var_4 = global0.d;
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(~(~var_2.c), firstTrailingBit(global0.c)), abs(select(52993u, ~9399u, false | var_0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2215f) * func_2(8932u).b.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -737f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(843f, 1349f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.a, -301f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, _wgslsmith_f_op_f32(var_1.b.a - _wgslsmith_f_op_f32(f32(-1f) * -132f)), var_1.b.a) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_2.b, global0.b) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.b, var_2.b, var_1.b.a))))))), -var_1.d);
}

