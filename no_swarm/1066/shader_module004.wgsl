struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<vec2<i32>, 29>;

var<private> global4: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_1(all(global4[_wgslsmith_index_u32(~(~u_input.c), 10u)]), u_input.e, u_input.b);
    var var_1 = Struct_1(false, -_wgslsmith_sub_i32(26990i, _wgslsmith_div_i32(var_0.b, -1i) & var_0.b), ~_wgslsmith_mod_u32(0u, u_input.b));
    var var_2 = Struct_2(Struct_1(false, abs(min(var_0.b, var_0.b) << ((var_1.c | 0u) % 32u)), 0u), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, u_input.c, 1u, var_1.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 2421u), vec2<u32>(0u, 0u)), ~u_input.c, _wgslsmith_add_u32(1u, 41964u), 0u)) >> (vec4<u32>(_wgslsmith_sub_u32(~0u, ~var_0.c), var_1.c, 1u, 4593u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -331f));
    let var_3 = u_input.a.yxz >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.b.xwx, vec3<u32>(u_input.c, 39643u, u_input.b) ^ var_2.b.xzy) | var_2.b.yxw, vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.b.xwz, var_2.b.wyz), 24420u, var_1.c >> (var_2.b.x % 32u)) << (~var_2.b.wxw % vec3<u32>(32u))) % vec3<u32>(32u));
    return global1[_wgslsmith_index_u32(select(var_1.c, _wgslsmith_mult_u32(44788u, var_1.c), !var_1.a), 9u)];
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_1, 1>();
    var var_0 = arg_0.a;
    global2 = array<Struct_2, 6>();
    let var_1 = func_2(arg_0.c);
    var var_2 = func_2(arg_0.c).a;
    return _wgslsmith_div_u32(~var_2.c, 14842u & ~u_input.c);
}

fn func_3() -> Struct_1 {
    return Struct_1(true, -1i, 35324u);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> StorageBuffer {
    global4 = array<vec4<bool>, 10>();
    var var_0 = func_3();
    let var_1 = !select(select(vec3<bool>(arg_1.a, arg_1.a, true), !vec3<bool>(var_0.a, false, arg_1.a), arg_1.a), !(!vec3<bool>(var_0.a, false, arg_1.a)), select(select(select(vec3<bool>(var_0.a, true, arg_1.a), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(arg_1.a, arg_1.a, false), !vec3<bool>(var_0.a, true, true)), select(vec3<bool>(false, var_0.a, arg_1.a), vec3<bool>(arg_1.a, var_0.a, false), select(false, false, arg_1.a)), var_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1132f, 1412f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-467f, 701f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -930f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-292f, -336f), vec2<f32>(-881f, -664f), vec2<bool>(false, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(176f, -1335f) * vec2<f32>(443f, -1739f)))))), select(var_1.yy, !(!vec2<bool>(false, arg_1.a)), arg_1.a)));
    var var_3 = _wgslsmith_mod_i32(u_input.d, -17279i);
    return StorageBuffer(u_input.a.yzw, u_input.a.zzx, func_2(_wgslsmith_f_op_f32(func_2(var_2.x).c * _wgslsmith_f_op_f32(abs(func_2(var_2.x).c)))).c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -576f), all(vec2<bool>(true, true))))))), -1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f - -1459f)));
    global0 = array<Struct_1, 1>();
    var var_1 = all(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), true));
    var var_2 = false;
    global1 = array<Struct_2, 9>();
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(31907u, _wgslsmith_add_u32(~(u_input.b ^ 17392u), ~(~u_input.b)))), 1u)];
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(~u_input.a.zx, max(global3[_wgslsmith_index_u32(4294967295u, 29u)], vec2<i32>(var_3.b, var_3.b)))), global3[_wgslsmith_index_u32(~func_1(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 1u)], vec4<u32>(0u, var_3.c, var_3.c, 1u), -461f)), 29u)]), func_3());
}

