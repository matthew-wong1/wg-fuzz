struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), 13821u, vec2<f32>(711f, 774f)), 1u, false);

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<vec4<i32>, 12>;

var<private> global3: array<f32, 12> = array<f32, 12>(376f, -481f, 165f, -861f, -621f, 989f, -274f, 311f, 1233f, -1083f, -798f, 543f);

var<private> global4: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(-1i, Struct_2(Struct_1(vec2<bool>(false, true), 1u, vec2<f32>(525f, -337f)), 73670u, true), 4294967295u), Struct_4(-34585i, Struct_2(Struct_1(vec2<bool>(true, true), 7453u, vec2<f32>(951f, 105f)), 23969u, true), 51094u), Struct_4(1i, Struct_2(Struct_1(vec2<bool>(false, true), 24783u, vec2<f32>(-1922f, 174f)), 4294967295u, true), 0u), Struct_4(-37624i, Struct_2(Struct_1(vec2<bool>(false, true), 122162u, vec2<f32>(1441f, -107f)), 39763u, false), 21608u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f + global0.a.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f - -1542f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1.b.a.c.x)))), global0.a.c.x)));
    var var_1 = vec4<i32>(select(_wgslsmith_div_i32(-arg_1.a, -_wgslsmith_add_i32(arg_1.a, arg_1.a)), u_input.a.x, !any(vec4<bool>(global0.a.a.x, arg_1.b.a.a.x, global0.c, false))), 1i ^ u_input.a.x, arg_1.a, 10573i);
    var var_2 = vec4<bool>(global0.a.a.x, select(!all(!vec4<bool>(arg_1.b.a.a.x, global0.a.a.x, true, arg_1.b.c)), !any(select(vec3<bool>(false, arg_1.b.c, arg_1.b.a.a.x), vec3<bool>(false, true, global0.c), arg_1.b.c)), !select(true, !arg_1.b.a.a.x, !arg_1.b.a.a.x)), arg_1.b.c && any(select(!vec4<bool>(global0.c, arg_1.b.a.a.x, false, arg_1.b.a.a.x), vec4<bool>(global0.a.a.x, global0.a.a.x, false, true), arg_1.a >= 1198i)), !((arg_1.b.a.a.x || global0.a.a.x) || (_wgslsmith_mod_i32(var_1.x, u_input.a.x) == _wgslsmith_dot_vec3_i32(var_1.wyz, vec3<i32>(u_input.a.x, arg_1.a, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(firstTrailingBit(~reverseBits(arg_1.b.a.b)), 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.c.x * 2731f) * _wgslsmith_f_op_f32(462f - 564f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -617f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1434f, -609f) + vec2<f32>(-521f, arg_1.b.a.c.x)), vec2<f32>(1130f, 519f))))) - vec2<f32>(global0.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(327f, global0.a.c.x)), 145f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(565f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))) * 1000f);
    return 59758u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> vec2<f32> {
    global0 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(step(1355f, 1000f)) == _wgslsmith_f_op_f32(2163f - global3[_wgslsmith_index_u32(4294967295u, 12u)]), true), countOneBits(~func_3(arg_2.c, Struct_4(-2147483647i, arg_2.b, global0.a.b))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.a.c.x + arg_1), _wgslsmith_div_f32(-812f, 976f))))), ~(global0.b >> (0u % 32u)), arg_2.b.a.a.x);
    global1 = array<Struct_2, 17>();
    let var_0 = Struct_3(vec4<i32>(2147483647i, ~u_input.a.x, 5114i, _wgslsmith_mult_i32(countOneBits(6776i), 51532i) << (_wgslsmith_add_u32(60641u, min(global0.a.b, 38098u)) % 32u)), global0.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(59663u, 12u)], -1114f, -1423f, arg_1), vec4<f32>(1916f, global3[_wgslsmith_index_u32(4294967295u, 12u)], arg_1, global0.a.c.x))))) - vec4<f32>(812f, -910f, _wgslsmith_f_op_f32(-arg_2.b.a.c.x), -169f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, -1072f, arg_2.b.a.c.x, arg_1) * vec4<f32>(-1407f, arg_2.b.a.c.x, arg_2.b.a.c.x, -614f)), vec4<f32>(570f, 479f, arg_1, 1384f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, 1000f, 599f, global0.a.c.x)))))));
    var var_2 = var_0.b;
    return vec2<f32>(911f, _wgslsmith_f_op_f32(round(global0.a.c.x)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = global0.a.a;
    var var_1 = vec2<u32>(~0u, ~reverseBits(global0.a.b));
    var_1 = select(u_input.b.xw, u_input.b.zy, true);
    var var_2 = Struct_1(!arg_3.b.a.a, reverseBits(70793u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_1.x, 142f, Struct_4(u_input.a.x, arg_3.b, var_1.x))))), arg_3.b.a.c)));
    let var_3 = u_input.a.x;
    return Struct_2(Struct_1(!vec2<bool>(var_2.a.x, !var_2.a.x), 4294967295u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1059f, -516f) - vec2<f32>(arg_3.b.a.c.x, global0.a.c.x)))))), _wgslsmith_dot_vec3_u32(min(~(~u_input.b.ywy), ~vec3<u32>(var_1.x, arg_3.b.b, var_2.b)), ~(~vec3<u32>(9840u, 0u, u_input.b.x))), all(!select(vec4<bool>(global0.c, global0.a.a.x, true, true), !vec4<bool>(var_0.x, false, true, false), false)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    global2 = array<vec4<i32>, 12>();
    let var_0 = _wgslsmith_mult_vec2_i32(arg_2.a.zx << (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, global0.a.b)), ~u_input.b.zx) % vec2<u32>(32u)), select(~vec2<i32>(arg_2.a.x, -7241i) | _wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(arg_2.a.x, u_input.a.x)), u_input.a.zz, !global0.c || func_1(arg_0, false, global2[_wgslsmith_index_u32(0u, 12u)], global4[_wgslsmith_index_u32(global0.a.b, 4u)]).c)) << (~countOneBits(firstLeadingBit(~u_input.b.yx)) % vec2<u32>(32u));
    global2 = array<vec4<i32>, 12>();
    var var_1 = true;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, u_input.b.x, 0u, min(arg_1.b, 1u)) ^ u_input.b, u_input.b), 17u)];
    return global4[_wgslsmith_index_u32(~8356u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x <= 0i;
    let var_1 = vec3<i32>(u_input.a.x, 8994i, 42349i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(~abs(82666u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 34669u), u_input.b.yx << (vec2<u32>(7148u, 4031u) % vec2<u32>(32u))), u_input.b.x), u_input.b.xzz) % vec3<u32>(32u));
    let var_2 = -abs(3557i);
    let var_3 = -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(0u, 12u)], vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), i32(-1i) * -1i, 0i, -12012i)), ~vec4<i32>(-var_2, 1i, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(29323u, 12u)], global2[_wgslsmith_index_u32(global0.a.b, 12u)]), select(-1i, 2147483647i, false)));
    let var_4 = u_input.b.x <= _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, ~global0.a.b), ~(~0u)), ~firstTrailingBit(u_input.b.x & 93366u));
    global3 = array<f32, 12>();
    var var_5 = 0i;
    global2 = array<vec4<i32>, 12>();
    let var_6 = func_4(global3[_wgslsmith_index_u32(~1u, 12u)], func_1(_wgslsmith_f_op_f32(f32(-1f) * -181f), u_input.a.x < 1i, global2[_wgslsmith_index_u32(~(~0u) ^ (~1u << (~global0.a.b % 32u)), 12u)], global4[_wgslsmith_index_u32(46884u, 4u)]), Struct_3(select(max(var_3, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.a.b, 4294967295u), 12u)]), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2439i, -32488i, var_3.x, -12199i), var_3)), false), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(25892u, 12u)] + -1165f) * 893f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

