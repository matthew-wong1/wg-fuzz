struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 28>;

var<private> global2: bool = false;

var<private> global3: vec3<f32> = vec3<f32>(1386f, 649f, -1066f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_2(any(global0.b.yyy), !select(select(global0.b.wx, vec2<bool>(global0.b.x, arg_0), arg_2.a.zx), select(select(vec2<bool>(arg_0, true), arg_2.a.wy, global0.a.yz), global0.b.wy, false && arg_0), vec2<bool>(arg_2.a.x & false, global0.a.x)), Struct_1(global0.a, !vec4<bool>(all(arg_2.b), global0.b.x, any(global0.a), all(vec4<bool>(true, true, global0.b.x, global0.b.x))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_3.xx, vec2<u32>(arg_3.x, global0.c)), vec2<u32>(93661u, 4294967295u)), arg_2.e.zxx >> (~vec3<u32>(17358u, 3369u, 0u) % vec3<u32>(32u)), ~(vec4<i32>(-2147483647i, 2147483647i, 305i, global0.e.x) << (vec4<u32>(10611u, 54649u, arg_3.x, arg_3.x) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(0u, global0.c, 1u, 0u) & vec4<u32>(arg_2.c, u_input.d, 65090u, u_input.d)) % vec4<u32>(32u))), _wgslsmith_clamp_u32(firstTrailingBit(~_wgslsmith_mult_u32(global0.c, 52815u)), 34733u, ~(~abs(arg_2.c))), !(true & any(vec2<bool>(arg_2.b.x, arg_2.a.x))));
    var var_1 = Struct_1(vec4<bool>(false, !(1u > ~arg_3.x), arg_2.b.x, any(select(global0.b.zyx, !vec3<bool>(false, var_0.c.a.x, arg_2.a.x), arg_2.b.x || global0.b.x))), vec4<bool>(arg_1 <= firstTrailingBit(arg_1), firstTrailingBit(-1707i) < arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-697f))) <= _wgslsmith_f_op_f32(sign(global3.x)), false), _wgslsmith_dot_vec2_u32(arg_3.xx, vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(22411u, global0.c, 22655u, arg_3.x), vec4<u32>(u_input.d, 33015u, arg_2.c, u_input.d), var_0.c.b), vec4<u32>(1u, 0u, 27095u, 15511u)), u_input.d)), ~(~abs(~u_input.b)), arg_2.e);
    global1 = array<Struct_3, 28>();
    var var_2 = global0.b.x;
    global1 = array<Struct_3, 28>();
    return global3.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = Struct_4(true);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - global3.x))), _wgslsmith_f_op_f32(func_3(var_1.a, -2147483647i, Struct_1(vec4<bool>(global0.a.x, global0.b.x, true, true), vec4<bool>(var_1.a, true, false, var_1.a), 47611u, vec3<i32>(global0.e.x, u_input.a.x, u_input.b.x), global0.e), max(vec3<u32>(u_input.d, 46497u, u_input.d), vec3<u32>(4294967295u, 81473u, 88214u)))), _wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), _wgslsmith_div_f32(global3.x, global3.x), global3.x))))));
    let var_3 = any(global0.a);
    global0 = Struct_1(!(!vec4<bool>(true, any(vec2<bool>(true, global0.b.x)), global0.b.x, var_3 | true)), global0.b, abs(_wgslsmith_sub_u32(~arg_1.x, 0u)), -global0.e.wyx >> (vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(54200u, 1u)), 1u, arg_1.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~global0.d.x, _wgslsmith_div_i32(global0.e.x, global0.d.x), _wgslsmith_add_i32(global0.e.x, global0.d.x), _wgslsmith_add_i32(u_input.a.x, global0.e.x)), ~global0.e ^ abs(global0.e), abs(global0.e)) << (~arg_1 % vec4<u32>(32u)));
    return Struct_1(!(!(!vec4<bool>(var_3, false, false, global0.a.x))), select(vec4<bool>(true, var_3, var_1.a, any(global0.a.zz)), global0.a, var_3 != true), arg_0.x, global0.e.yzw, vec4<i32>(0i, _wgslsmith_dot_vec2_i32(global0.e.zz, vec2<i32>(global0.e.x, -1i)) | 1i, ~global0.e.x, i32(-1i) * -global0.d.x));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global0 = func_2(max(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(8516u, 4294967295u, 4294967295u), vec3<u32>(global0.c, global0.c, u_input.d)), vec3<u32>(global0.c, 3394u, 0u), ~vec3<u32>(global0.c, 4294967295u, u_input.d)), vec3<u32>(1u, global0.c, _wgslsmith_add_u32(global0.c, global0.c >> (8097u % 32u)))), vec4<u32>(u_input.d, 31449u, ~(~global0.c), select(~u_input.d, _wgslsmith_clamp_u32(u_input.d, global0.c, 4294967295u), -2147483647i <= u_input.b.x) << (global0.c % 32u)));
    global2 = !any(!vec2<bool>(all(vec4<bool>(false, true, global0.a.x, false)), true));
    global2 = true;
    global2 = !func_2(vec3<u32>(~53560u, u_input.d, abs(global0.c)), vec4<u32>(1u, ~max(12357u, 331u), _wgslsmith_clamp_u32(9713u, ~global0.c, global0.c), 36541u)).a.x;
    var var_0 = true;
    return global1[_wgslsmith_index_u32(91863u, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-6743i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.zx), global3.xx)), _wgslsmith_f_op_vec2_f32(global3.zz + global3.zx)), !(!global0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -976f), global3.x)), _wgslsmith_f_op_f32(step(-308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -749f))) + _wgslsmith_div_f32(1888f, _wgslsmith_f_op_f32(sign(global3.x)))))));
    var var_1 = global0.a.x | true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e))), 101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - var_0.b.x) - _wgslsmith_f_op_f32(-global3.x)), -1650f));
    var_0 = Struct_3(global0.e.x, _wgslsmith_f_op_vec2_f32(var_2.zy * vec2<f32>(global3.x, 354f)), _wgslsmith_f_op_f32(433f - _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-var_2.x)))) != _wgslsmith_f_op_f32(abs(-1000f)), var_0.e, 1f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2)));
    global2 = false;
    var_0 = func_1(Struct_4(!var_0.c));
    var var_4 = !(!global0.a.xxy);
    let var_5 = firstLeadingBit(global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<f32>(var_0.d, var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1559f)), -414f, any(select(global0.a, global0.a, var_4.x))))), ~firstTrailingBit(vec3<i32>(8382i, var_0.a, 2147483647i)) & ~_wgslsmith_mod_vec3_i32(~vec3<i32>(global0.e.x, 1i, u_input.c), global0.e.xxx));
}

