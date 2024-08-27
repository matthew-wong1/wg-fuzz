struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4;

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-622f, 1000f), vec2<f32>(-835f, 1995f), vec2<f32>(1609f, -737f), vec2<f32>(550f, -906f), vec2<f32>(618f, -1816f), vec2<f32>(-298f, -858f), vec2<f32>(1000f, 2149f), vec2<f32>(704f, -1103f), vec2<f32>(-1147f, -116f), vec2<f32>(586f, 1455f), vec2<f32>(1343f, 248f), vec2<f32>(627f, 293f), vec2<f32>(-968f, -973f));

var<private> global3: array<Struct_2, 25>;

var<private> global4: i32 = 0i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(993f, global1.b.x, 1236f, global1.b.x)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, arg_0.b.x, -1103f, arg_0.b.x)))))));
    global2 = array<vec2<f32>, 13>();
    global3 = array<Struct_2, 25>();
    global0 = global1.b.x;
    global0 = arg_0.b.x;
    return abs(firstTrailingBit(select(-reverseBits(arg_0.a), arg_0.a, vec4<bool>(all(arg_1), all(vec2<bool>(false, arg_0.c.a.x)), true, select(arg_0.c.a.x, true, arg_0.c.a.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = 579f;
    global1 = Struct_4(~func_3(Struct_4(vec4<i32>(-38192i, 2147483647i, arg_1.a, arg_1.a), _wgslsmith_f_op_vec3_f32(-global1.b), global1.c), vec4<bool>(!arg_1.b.x, arg_1.e, true, !global1.c.a.x)), global1.b, global3[_wgslsmith_index_u32(~global1.c.b.x, 25u)]);
    var var_1 = !global1.c.a;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, -1000f)), _wgslsmith_f_op_f32(601f + -863f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-576f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0))), -568f, arg_0, var_0);
    var var_3 = ~(~1469i);
    return global1.c;
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.b.x)), global1.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * global1.b.x), global1.b.x))));
    var var_1 = _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.b, global1.c.b.x));
    let var_2 = _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b.yz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, global1.b.x) * vec2<f32>(arg_0.b.x, -932f)) * vec2<f32>(778f, -1319f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(4294967295u, 13u)] + vec2<f32>(var_2, global1.b.x)) - vec2<f32>(294f, arg_0.b.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1327f, arg_0.b.x)) - global1.b.zx))), global1.b.xx);
    global1 = arg_0;
    return Struct_4(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, 19937i), -global1.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.b.x, 59180u >> (1u % 32u), ~6317u, func_2(var_2, Struct_1(u_input.a, global1.c.a, global1.b.x, global1.b.x, true)).b.x), reverseBits(~vec4<u32>(global1.c.b.x, 0u, 1u, global1.c.b.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b, arg_0.b, arg_0.c.a)))))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2334f, var_0)))), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(var_2 - var_3.x)))), Struct_1(u_input.a, global1.c.a, -146f, global1.b.x, any(select(vec4<bool>(arg_0.c.a.x, global1.c.a.x, global1.c.c, arg_0.c.a.x), vec4<bool>(true, global1.c.c, false, true), vec4<bool>(true, true, true, true))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = vec3<u32>(~(50573u | _wgslsmith_div_u32(u_input.c, _wgslsmith_div_u32(arg_1.c.b.x, 17462u))), ~21479u, max(global1.c.b.x, ~firstLeadingBit(0u)));
    var var_1 = global1.b.xz;
    var var_2 = global1.c.b.x;
    var_0 = vec3<u32>(_wgslsmith_div_u32(~var_0.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, arg_1.c.b.x, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(global1.c.b.x, 17654u, global1.c.b.x, arg_1.c.b.x), vec4<u32>(var_0.x, global1.c.b.x, u_input.c, 1u))))), u_input.c, u_input.c);
    let var_3 = global1.c.b.zx;
    return Struct_3(func_4(arg_1).c);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = func_5(global1.b, func_4(Struct_4(vec4<i32>(2147483647i, 0i, global1.c.d, u_input.a), vec3<f32>(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), arg_2.x, _wgslsmith_f_op_f32(max(-546f, arg_2.x))), func_2(-711f, Struct_1(global1.c.d, global1.c.a, arg_2.x, -1841f, true)))), arg_2.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.b.zy))));
    global0 = -1068f;
    let var_1 = global1.a.x;
    global4 = reverseBits(select(-1i, _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(func_5(global1.b, Struct_4(vec4<i32>(arg_1.d, 2147483647i, global1.a.x, u_input.a), global1.b, Struct_2(vec3<bool>(false, global1.c.c, false), vec3<u32>(global1.c.b.x, var_0.a.b.x, 4294967295u), false, arg_1.d)), 1248f, global1.b.xz).a.d, -11874i)), true));
    var var_2 = Struct_2(func_2(global1.b.x, Struct_1(firstTrailingBit(~arg_1.d), vec3<bool>(select(true, false, false), true, func_5(global1.b, Struct_4(vec4<i32>(var_0.a.d, -55766i, -2147483647i, var_0.a.d), vec3<f32>(-767f, global1.b.x, 577f), global3[_wgslsmith_index_u32(u_input.b, 25u)]), -917f, vec2<f32>(-1329f, -1034f)).a.c), 1811f, -2305f, var_0.a.c)).a, ~(vec3<u32>(~var_0.a.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1.b.x, 10404u, arg_0), vec4<u32>(9664u, 4294967295u, arg_0, arg_1.b.x)), arg_1.b.x) ^ max(var_0.a.b, _wgslsmith_mod_vec3_u32(var_0.a.b, vec3<u32>(global1.c.b.x, arg_0, var_0.a.b.x)))), var_0.a.a.x, _wgslsmith_div_i32(-7112i, ~(-reverseBits(arg_1.d))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.x, global1.b.x, global1.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_f_op_vec3_f32(func_1(u_input.b, Struct_2(vec3<bool>(global1.c.c, true, false), vec3<u32>(1u, 0u, 4294967295u), true, 2147483647i), vec2<f32>(-158f, -971f)))))));
    let var_1 = func_2(_wgslsmith_f_op_f32(-global1.b.x), Struct_1(min(u_input.a, global1.c.d), select(func_2(_wgslsmith_f_op_f32(global1.b.x * var_0.x), Struct_1(-1i, global1.c.a, var_0.x, var_0.x, global1.c.c)).a, func_2(_wgslsmith_f_op_f32(-var_0.x), Struct_1(u_input.a, vec3<bool>(global1.c.a.x, global1.c.c, false), var_0.x, global1.b.x, global1.c.c)).a, all(global1.c.a.yz)), -813f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-138f + var_0.x)))), true)).c;
    var var_2 = _wgslsmith_add_i32(global1.a.x, _wgslsmith_div_i32(u_input.a, u_input.a & (i32(-1i) * -3373i)));
    global3 = array<Struct_2, 25>();
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(global1.b.xx));
    global3 = array<Struct_2, 25>();
    var var_4 = global1.c.d;
    var var_5 = 7133i;
    let var_6 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(10922u);
}

