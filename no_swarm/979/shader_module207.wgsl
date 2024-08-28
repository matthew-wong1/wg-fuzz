struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: array<Struct_3, 17>;

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<bool, 28> = array<bool, 28>(false, false, true, false, false, false, false, false, false, false, true, false, false, false, true, false, true, false, false, true, false, false, false, false, true, true, false, true);

var<private> global4: array<bool, 15>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    global1 = array<Struct_3, 17>();
    var var_0 = 1i;
    global1 = array<Struct_3, 17>();
    var var_1 = 23391u;
    let var_2 = !select(select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], true, global4[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 15u)], global4[_wgslsmith_index_u32(19173u, 15u)], true), false), select(vec3<bool>(true, false, global4[_wgslsmith_index_u32(73653u, 15u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], true), global3[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(false, true, global4[_wgslsmith_index_u32(55229u, 15u)])), !vec3<bool>(global4[_wgslsmith_index_u32(15561u, 15u)], true, false), select(!vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(47952u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(75497u, 15u)]), select(vec3<bool>(true, false, false), vec3<bool>(true, global4[_wgslsmith_index_u32(39614u, 15u)], global4[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.a, 15u)])))), vec3<bool>(false, true, false), select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 15u)], global4[_wgslsmith_index_u32(u_input.a, 15u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(11789u, 15u)], false), false), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], false, global3[_wgslsmith_index_u32(85236u, 28u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 15u)], global4[_wgslsmith_index_u32(45221u, 15u)], global4[_wgslsmith_index_u32(1u, 15u)]), global3[_wgslsmith_index_u32(73220u, 28u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], true)), select(vec3<bool>(true, true, true), !vec3<bool>(false, true, global3[_wgslsmith_index_u32(30236u, 28u)]), !global3[_wgslsmith_index_u32(1u, 28u)]), select(vec3<bool>(true, false, true), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], global4[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(u_input.a, 28u)]), any(vec2<bool>(global3[_wgslsmith_index_u32(51964u, 28u)], true)))));
    return _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(7339i, -1512i) & vec2<i32>(-2147483647i, arg_0), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(-22928i, -8074i))), _wgslsmith_mod_i32(~(~arg_0), _wgslsmith_add_i32(~arg_0, 1i))) >= arg_0;
}

fn func_4(arg_0: Struct_4) -> vec2<bool> {
    global2 = array<Struct_2, 4>();
    global2 = array<Struct_2, 4>();
    global0 = array<vec2<f32>, 31>();
    let var_0 = -111f;
    global2 = array<Struct_2, 4>();
    return !(!vec2<bool>(all(select(vec4<bool>(false, false, global4[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(80522u, 28u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], false, false, global4[_wgslsmith_index_u32(50517u, 15u)]), vec4<bool>(true, false, false, true))), global4[_wgslsmith_index_u32(81835u, 15u)]));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    global3 = array<bool, 28>();
    let var_0 = true;
    global0 = array<vec2<f32>, 31>();
    var var_1 = ~(~7106u);
    var var_2 = vec4<bool>(true, all(!(!select(arg_0.zww, arg_0.wyz, vec3<bool>(true, global3[_wgslsmith_index_u32(75460u, 28u)], arg_1.a)))), true, all(func_4(Struct_4(func_3(45193i), _wgslsmith_f_op_f32(ceil(176f)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e, arg_2.c, 1i, arg_1.e), vec4<i32>(8696i, -39263i, 1i, 2147483647i)), arg_2.d, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b, arg_1.c, 405f)))))));
    return ~arg_1.d;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = ~(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1, vec3<i32>(-1i, arg_1.x, 0i)), abs(arg_1))) >> (vec3<u32>(~func_2(select(vec4<bool>(true, global3[_wgslsmith_index_u32(26992u, 28u)], false, false), vec4<bool>(false, true, global4[_wgslsmith_index_u32(4294967295u, 15u)], false), false), Struct_1(false, 0u, -200f, 1u, arg_1.x), Struct_4(global4[_wgslsmith_index_u32(12541u, 15u)], -1395f, 1i, global1[_wgslsmith_index_u32(arg_0.x, 17u)], vec3<f32>(-183f, -931f, 769f))), _wgslsmith_sub_u32(1u >> (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u), abs(~4294967295u)), ~_wgslsmith_mult_u32(min(u_input.a, arg_0.x), 1u)) % vec3<u32>(32u));
    let var_1 = !select(!(!(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(33645u, 28u)]))), !vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 28u)], false, false, false)), false, true), true);
    let var_2 = global2[_wgslsmith_index_u32(~84388u, 4u)];
    var var_3 = Struct_1(global3[_wgslsmith_index_u32(u_input.a, 28u)], 53248u, -449f, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 12143u, arg_0.x), arg_0), -2147483647i);
    return _wgslsmith_f_op_f32(round(-169f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(0u, u_input.a, 4294967295u)), vec3<i32>(1i, 2147483647i, 16878i) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)))))), _wgslsmith_f_op_f32(max(-2885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(217f))))), 1239f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(486f, _wgslsmith_div_f32(-1129f, 811f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.zz * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<i32>(-1i, -42743i, 1i))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - -482f)))), var_0.x));
    var var_2 = select(any(vec2<bool>(!global3[_wgslsmith_index_u32(90856u, 28u)], true)) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) == 680f), false, true);
    let var_3 = !(!(!select(select(vec4<bool>(global3[_wgslsmith_index_u32(70808u, 28u)], global4[_wgslsmith_index_u32(u_input.a, 15u)], true, global4[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(false, true, global4[_wgslsmith_index_u32(23771u, 15u)], global4[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<bool>(global3[_wgslsmith_index_u32(3295u, 28u)], global4[_wgslsmith_index_u32(14996u, 15u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(60885u, 28u)])), vec4<bool>(false, global4[_wgslsmith_index_u32(33088u, 15u)], true, false), select(vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 15u)], true, global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(global4[_wgslsmith_index_u32(72707u, 15u)], false, global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(53664u, 28u)]), vec4<bool>(global3[_wgslsmith_index_u32(32387u, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], global4[_wgslsmith_index_u32(0u, 15u)], true)))));
    let var_4 = ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(21480u, 4294967295u, 4294967295u), vec3<u32>(0u, u_input.a, 33838u)) ^ vec3<u32>(u_input.a, 1u, u_input.a))) ^ ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a, u_input.a, 37664u), ~vec3<u32>(4294967295u, 0u, 4553u)), vec3<u32>(~4294967295u, u_input.a | u_input.a, 63751u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, -1064f, var_3.x))))), ~(1u & abs(_wgslsmith_mod_u32(u_input.a, var_4.x))));
}

