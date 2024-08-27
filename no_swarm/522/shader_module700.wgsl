struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, false, false, false, false, false, true, true, false, false, true, false, true, true, true, false, true, false, false, false, false);

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(101674u, 55926u), vec2<u32>(1u, 59034u), vec2<u32>(59615u, 0u), vec2<u32>(0u, 10771u), vec2<u32>(0u, 12305u), vec2<u32>(26917u, 4294967295u), vec2<u32>(32616u, 22969u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(1f, max(vec4<i32>(u_input.c.x, u_input.c.x >> (arg_0.x % 32u), u_input.c.x, 0i), vec4<i32>(1i, 3399i, u_input.c.x, _wgslsmith_sub_i32(37217i, 5998i)))), countOneBits(reverseBits(vec4<u32>(1u, abs(u_input.a.x), countOneBits(1u), ~0u))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(var_0.a.a)), firstLeadingBit(_wgslsmith_div_vec4_i32(var_0.a.b, ~var_0.a.b))), var_0.b);
    let var_1 = _wgslsmith_mult_i32(~1i, -u_input.c.x ^ _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(var_0.a.b.zww, u_input.c)));
    return select(select(!vec4<bool>(true, true, -1i == u_input.c.x, any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 23u)], false))), !select(!vec4<bool>(global0[_wgslsmith_index_u32(36136u, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)], false, global0[_wgslsmith_index_u32(1u, 23u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(5570u, 23u)], false, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)]), vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(arg_0.x, 23u)]))), any(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1 & u_input.a.x, 23u)], global0[_wgslsmith_index_u32(40454u, 23u)]))), select(select(vec4<bool>(true, any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(22128u, 23u)])), global0[_wgslsmith_index_u32(abs(var_0.b.x), 23u)], true & global0[_wgslsmith_index_u32(62977u, 23u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(36334u, 23u)])), any(vec4<bool>(false, global0[_wgslsmith_index_u32(27943u, 23u)], true, global0[_wgslsmith_index_u32(var_0.b.x, 23u)])) & !global0[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(true, any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false)), !any(vec2<bool>(true, false)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(11357u, 23u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(30086u, 23u)], false, global0[_wgslsmith_index_u32(0u, 23u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], false)), true)), global0[_wgslsmith_index_u32(72619u >> (arg_1 % 32u), 23u)]);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: i32) -> vec4<bool> {
    global1 = array<vec2<u32>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * -707f))), arg_0.x) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 878f, global0[_wgslsmith_index_u32(~u_input.a.x, 23u)])), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-1681f - -1039f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -221f))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
    var var_2 = vec2<i32>(-17748i, -1i);
    var_2 = vec2<i32>(u_input.c.x, arg_2);
    return select(func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 67606u), _wgslsmith_mult_vec3_u32(u_input.a.wwx, vec3<u32>(59089u, u_input.a.x, u_input.a.x))), u_input.a.x), vec4<bool>(!any(vec4<bool>(true, false, false, true)), global0[_wgslsmith_index_u32(u_input.b, 23u)], !global0[_wgslsmith_index_u32(firstLeadingBit(~26505u), 23u)], u_input.b >= u_input.a.x), true);
}

fn func_1() -> vec3<bool> {
    var var_0 = !select(!func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1479f, -316f)), abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~(-21561i)), select(vec4<bool>(global0[_wgslsmith_index_u32(~4294967295u, 23u)], false, func_2(vec2<f32>(1140f, -620f), vec4<i32>(2147483647i, 96008i, u_input.c.x, -2704i), u_input.c.x).x, true), vec4<bool>(false, !global0[_wgslsmith_index_u32(u_input.a.x, 23u)], !global0[_wgslsmith_index_u32(u_input.a.x, 23u)], !global0[_wgslsmith_index_u32(u_input.b, 23u)]), func_3(u_input.a.yww, 57169u | u_input.a.x)), !select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(5522u, 23u)], global0[_wgslsmith_index_u32(37987u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], true, true)));
    var var_1 = var_0.x;
    let var_2 = -(max(u_input.c.zz, ~vec2<i32>(u_input.c.x, 1i) | countOneBits(u_input.c.zz)) >> (global1[_wgslsmith_index_u32(firstLeadingBit(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.b), u_input.a.zzx), select(46355u, u_input.b, true))), 8u)] % vec2<u32>(32u)));
    var var_3 = Struct_2(Struct_1(533f, vec4<i32>(-var_2.x, i32(-1i) * -18946i, -1i, -var_2.x) >> ((u_input.a & u_input.a) % vec4<u32>(32u))), vec4<u32>(4294967295u, 0u, u_input.a.x, ~((u_input.a.x << (u_input.b % 32u)) << (u_input.a.x % 32u))));
    var var_4 = var_3.b.x;
    return vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(var_3.b.x | 28261u), 23u)], (_wgslsmith_mod_u32(~var_3.b.x, 4294967295u) != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_3.b.x), vec3<u32>(0u, var_3.b.x, 50875u))) & !var_0.x, select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a.a))) > var_3.a.a, var_0.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global1 = array<vec2<u32>, 8>();
    let var_0 = u_input.b & abs(1u);
    var var_1 = select(!vec4<bool>(all(vec2<bool>(true, arg_0.x)), false, !(!arg_0.x), !(global0[_wgslsmith_index_u32(u_input.b, 23u)] || false)), !select(vec4<bool>(arg_2.a.a > 1000f, arg_0.x, arg_2.a.b.x >= u_input.c.x, false), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 44154u), 23u)], true, false, false), vec4<bool>(true || arg_0.x, true, true, global0[_wgslsmith_index_u32(~arg_1, 23u)])), !(all(!vec3<bool>(arg_0.x, false, false)) & !arg_0.x));
    var var_2 = arg_2;
    var_1 = !vec4<bool>(true, var_1.x, var_1.x, !arg_0.x);
    return Struct_1(_wgslsmith_f_op_f32(arg_2.a.a + 1f), arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, true, true));
    let var_1 = func_4(func_1(), ~(~u_input.b), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f * -530f) - 665f), -(vec4<i32>(0i, u_input.c.x, u_input.c.x, 5875i) | vec4<i32>(u_input.c.x, 1i, u_input.c.x, 2147483647i))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, ~vec4<u32>(92017u, 14391u, 1u, 22795u)), u_input.a)));
    var var_2 = Struct_3(~reverseBits(u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(77823u, 42624u, u_input.a.x, 4294967295u), u_input.a)), reverseBits(abs(4294967295u)), ~(~0u)), 37685u);
    let var_3 = Struct_4(var_1.b.yz, Struct_3(0u, reverseBits(u_input.a), var_2.b.x));
    var var_4 = (var_3.a.x >= -22074i) || !(!global0[_wgslsmith_index_u32(var_2.a, 23u)]);
    let var_5 = var_1.a;
    var var_6 = _wgslsmith_f_op_f32(abs(1306f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(i32(-1i) * -var_3.a.x, -u_input.c.x >> (~var_3.b.a % 32u), 0i, -24937i));
}

