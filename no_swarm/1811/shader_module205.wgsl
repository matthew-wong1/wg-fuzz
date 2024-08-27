struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1634f, 1u, vec4<f32>(-1251f, -1098f, -112f, 1821f), false, -757f);

var<private> global1: f32;

var<private> global2: array<i32, 31> = array<i32, 31>(0i, -27251i, 1i, 12233i, 2147483647i, 35803i, 0i, 1i, -11704i, 1487i, -64412i, -36508i, -33620i, 0i, -34641i, -36272i, 29346i, 2147483647i, 0i, -1i, -1i, 1i, 0i, i32(-2147483648), 0i, 11031i, -1i, -10664i, -17659i, 1i, -5167i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = -arg_0.a.x != arg_0.a.x;
    let var_1 = ~(~(~abs(vec4<u32>(u_input.a, global0.b, 0u, 0u))));
    var var_2 = Struct_2(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, arg_0.a.x), ~vec3<i32>(global2[_wgslsmith_index_u32(47175u, 31u)], 26335i, arg_0.b)), _wgslsmith_div_i32(0i, -arg_0.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<i32>(11105i, global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(1u, 31u)])), vec3<i32>(arg_0.a.x, ~global2[_wgslsmith_index_u32(min(1u, 62231u), 31u)], -(arg_0.b & arg_0.a.x))));
    var var_3 = firstTrailingBit(35084u | firstTrailingBit(0u));
    var_2 = Struct_2(arg_0.a, -25109i);
    return vec3<u32>(global0.b, global0.b, u_input.a);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(914f, global0.e, true))), global0.e)), global0.c.x, 697f), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(round(-761f)))));
    let var_1 = vec2<bool>(!global0.d, !all(!(!vec2<bool>(global0.d, global0.d))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.yww + _wgslsmith_f_op_vec3_f32(-global0.c.www)), global0.c.ywz)));
    let var_2 = firstLeadingBit(func_2(Struct_2(vec2<i32>(30073i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 9691i, -18821i), vec4<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 31u)], 23134i, global2[_wgslsmith_index_u32(u_input.a, 31u)])))) ^ vec3<u32>(4294967295u, 11825u & u_input.a, 1u));
    global1 = 1345f;
    return _wgslsmith_add_i32(-19180i, _wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(-28210i, 32086i)), global2[_wgslsmith_index_u32(0u, 31u)]));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_3;
    global2 = array<i32, 31>();
    var_0 = arg_3;
    var var_1 = arg_3;
    global2 = array<i32, 31>();
    return Struct_2(select(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(var_1.b, 31u)], global2[_wgslsmith_index_u32(arg_3.b, 31u)])), select(vec2<i32>(global2[_wgslsmith_index_u32(var_1.b, 31u)], 122i), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], -11772i), var_0.d)), select(vec2<i32>(-21680i, -42532i), -vec2<i32>(arg_0, 2147483647i), vec2<bool>(var_0.d, false)), !select(vec2<bool>(false, true), vec2<bool>(false, global0.d), vec2<bool>(arg_3.d, true))) & (_wgslsmith_sub_vec2_i32(-vec2<i32>(global2[_wgslsmith_index_u32(var_1.b, 31u)], -2147483647i), vec2<i32>(-8218i, global2[_wgslsmith_index_u32(35250u, 31u)])) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_1.b), vec2<u32>(arg_3.b, 75751u)), vec2<u32>(u_input.a, 18895u) & vec2<u32>(arg_3.b, 0u)) % vec2<u32>(32u))), -global2[_wgslsmith_index_u32(~global0.b, 31u)] >> (firstLeadingBit(func_2(Struct_2(vec2<i32>(9242i, 4268i), arg_0)).x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, 78732u, vec4<f32>(global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f))), -359f, _wgslsmith_f_op_f32(-global0.e)), any(vec2<bool>(global0.d & false, !(!global0.d))), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(sign(global0.c.x))));
    let var_1 = func_3(_wgslsmith_mult_i32(func_1(), -(i32(-1i) * -1i)), _wgslsmith_f_op_f32(global0.e + 1342f), true, var_0);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, 1000f)) * global0.c.x);
    let var_2 = u_input.a;
    var var_3 = var_0;
    global2 = array<i32, 31>();
    global2 = array<i32, 31>();
    let var_4 = (var_2 | ~_wgslsmith_dot_vec4_u32(~vec4<u32>(22589u, var_0.b, 72142u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b, 0u, var_2, 31486u), vec4<u32>(u_input.a, 43349u, 65463u, var_0.b)))) >> (min(~1u, var_2) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~vec4<u32>(var_2, 1u, 15734u, var_3.b)), abs(vec4<u32>(var_0.b, var_0.b, 79337u, 0u) << (vec4<u32>(var_2, var_3.b, 1u, var_3.b) % vec4<u32>(32u))), select(!vec4<bool>(global0.d, false, false, var_0.d), !vec4<bool>(false, var_3.d, true, var_3.d), true)), vec3<i32>(i32(-1i) * -1i, 43834i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-26483i, -2147483647i), var_1.a)), global0.c.xwx);
}

