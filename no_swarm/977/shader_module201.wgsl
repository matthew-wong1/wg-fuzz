struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(13353i, vec3<f32>(-818f, 1078f, -1586f), true);

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1i, vec3<f32>(288f, -1066f, 239f), true), Struct_1(36467i, vec3<f32>(-2096f, 139f, 2218f), false), Struct_1(1i, vec3<f32>(820f, 1828f, 574f), true), Struct_1(1i, vec3<f32>(-2563f, -1837f, -386f), false), Struct_1(10177i, vec3<f32>(-1723f, -634f, -1288f), false), Struct_1(1i, vec3<f32>(1000f, -555f, 957f), true), Struct_1(2147483647i, vec3<f32>(-261f, 1378f, 1316f), true), Struct_1(-24904i, vec3<f32>(-500f, 865f, -183f), false), Struct_1(-1i, vec3<f32>(-1031f, -740f, -976f), true), Struct_1(12982i, vec3<f32>(-482f, 343f, -1251f), true), Struct_1(0i, vec3<f32>(-171f, 1182f, 582f), false), Struct_1(-58068i, vec3<f32>(990f, -354f, 1662f), true));

var<private> global3: Struct_3 = Struct_3(vec4<i32>(-1i, -546i, 18999i, 40374i), vec4<bool>(true, false, true, true));

var<private> global4: array<i32, 17> = array<i32, 17>(0i, 2147483647i, i32(-2147483648), -21601i, 810i, -3709i, 2147483647i, -84237i, -22006i, 0i, 24906i, -1i, 0i, -31441i, 2147483647i, 1i, 2768i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = select(!all(global3.b.wy), any(global3.b), global0.c);
    let var_1 = vec2<u32>(u_input.a, abs(34904u)) << (min(vec2<u32>(_wgslsmith_add_u32(abs(u_input.a), ~u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a) & _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), ~(~vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    global1 = array<f32, 17>();
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.a.x, _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(var_1.x, 17u)], global0.a), 0i, -global4[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -11594i, 0i, 1i), global3.a) | reverseBits(global3.a)), select(global3.a, -abs(vec4<i32>(global3.a.x, -1i, global3.a.x, -2147483647i)), all(select(global3.b.zy, global3.b.xx, global3.b.zx)))), -u_input.b.x);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(func_3(global1[_wgslsmith_index_u32(arg_0, 17u)], global0.b.x), global0.a ^ 31581i) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(29211u, 0u, u_input.a, 53649u), vec4<u32>(4294967295u, 0u, u_input.a, 1u), global0.c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0, 59559u), vec4<u32>(u_input.a, arg_0, 1u, arg_0))) % 32u), _wgslsmith_sub_i32(~_wgslsmith_add_i32(global3.a.x, u_input.b.x), 1i), -1i), _wgslsmith_div_vec3_i32(global3.a.xxx, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global0.a, global4[_wgslsmith_index_u32(0u, 17u)], 0i), ~global3.a.x, 2147483647i), _wgslsmith_mod_vec3_i32(~global3.a.xwz, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 27350i), vec3<i32>(-38876i, -33718i, arg_1.x))))));
    global4 = array<i32, 17>();
    var var_1 = -_wgslsmith_add_i32(firstLeadingBit(-2147483647i), arg_1.x);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 0u, u_input.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(56780u, arg_0, 1u, 1u), vec4<u32>(u_input.a, 4294967295u, 1218u, arg_0)) % vec4<u32>(32u)), vec4<u32>(13614u, 0u, firstLeadingBit(u_input.a), abs(1u))), countOneBits(0u)) & _wgslsmith_add_u32(firstLeadingBit(~arg_0) >> (~min(u_input.a, 25418u) % 32u), u_input.a << (arg_0 % 32u));
    global2 = array<Struct_1, 12>();
    return vec4<u32>(~(~(~u_input.a)), firstTrailingBit(~6770u), firstLeadingBit(arg_0), arg_0);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec4<i32> {
    global1 = array<f32, 17>();
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 19400u, u_input.a, 4294967295u), vec4<u32>(u_input.a, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_1.x, 0u, 36619u), ~vec4<u32>(75540u, 9256u, arg_1.x, 4294967295u)), global3.b) | ~func_2(~u_input.a, u_input.b.zz, _wgslsmith_f_op_f32(max(-537f, -1000f)), vec4<i32>(29612i, global4[_wgslsmith_index_u32(45097u, 17u)], 1i, global4[_wgslsmith_index_u32(u_input.a, 17u)])), vec4<u32>(~u_input.a, abs(min(~u_input.a, 33124u ^ u_input.a)), u_input.a >> ((_wgslsmith_div_u32(u_input.a, 1u) >> (1u % 32u)) % 32u), _wgslsmith_clamp_u32(~arg_1.x, 10554u, 1u) << (~arg_1.x % 32u))), 12u)];
    let var_0 = Struct_3(u_input.b, vec4<bool>(global0.c, all(global3.b.zw), global0.c, global3.b.x));
    let var_1 = _wgslsmith_f_op_f32(-709f * global1[_wgslsmith_index_u32(~(~(~0u)), 17u)]);
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 12u)];
    return _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(firstTrailingBit(global3.a.x), global0.a, -u_input.b.x, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(21920i, 40665i, -19147i, 1i))), -_wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(-1i, global3.a.x, 2147483647i, 2147483647i)), all(vec4<bool>(true, var_0.b.x, true, var_2.c))), ~(~vec4<i32>(-1i, global0.a, -7116i, var_0.a.x) ^ vec4<i32>(~(-1i), 1i, ~28601i, u_input.b.x)), _wgslsmith_mod_vec4_i32(~var_0.a, -abs(~var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~u_input.a);
    let var_1 = ~min(0i, global0.a);
    global1 = array<f32, 17>();
    let var_2 = Struct_3(vec4<i32>(44554i, -(global4[_wgslsmith_index_u32(7165u, 17u)] ^ max(u_input.b.x, 2642i)), firstLeadingBit(-3123i), min(-(~0i), global3.a.x)), vec4<bool>(global0.a < 1i, global0.c, !global0.c, !(countOneBits(19907i) == global0.a)));
    let var_3 = _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(global3.a, func_1(var_2.b.x, min(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 32122u), vec2<bool>(var_2.b.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4453u, 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), global0.c)), _wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(437f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, 787f, true))))));
}

