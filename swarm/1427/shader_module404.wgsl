struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = Struct_2(-1i | u_input.a.x, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1156f, _wgslsmith_div_f32(912f, arg_0.x))))), _wgslsmith_div_vec3_i32(vec3<i32>(1729i, 38146i, firstTrailingBit(u_input.a.x)), firstTrailingBit(min(vec3<i32>(u_input.a.x, -27412i, u_input.a.x), u_input.a.yyz)))), (vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 13907i), u_input.a.xz)) >> (~_wgslsmith_mod_vec2_u32(arg_2.yy >> (arg_2.zy % vec2<u32>(32u)), firstLeadingBit(arg_2.yz)) % vec2<u32>(32u)), ~_wgslsmith_clamp_i32(~0i, -u_input.a.x, -9227i) >= ~(-55376i));
    let var_1 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(arg_1, global1[_wgslsmith_index_u32(99215u, 28u)]), vec2<bool>(var_0.d, arg_1)), vec2<bool>(false, var_0.d), select(vec2<bool>(arg_1, var_0.d), vec2<bool>(arg_1, arg_1), var_0.d)), !(!select(vec2<bool>(arg_1, global1[_wgslsmith_index_u32(22504u, 28u)]), vec2<bool>(false, true), vec2<bool>(var_0.d, arg_1))), !all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], false, true, false)));
    var var_2 = vec3<bool>(!all(select(select(var_1, vec2<bool>(var_0.d, false), false), var_1, global1[_wgslsmith_index_u32(arg_2.x, 28u)])), arg_1, !(var_1.x && (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(83709u, u_input.b), 28u)] && true)));
    let var_3 = select(vec4<bool>(all(select(vec3<bool>(arg_1, false, var_0.d), vec3<bool>(true, false, var_1.x), vec3<bool>(var_2.x, var_0.d, arg_1))) | select(var_2.x, global1[_wgslsmith_index_u32(~4294967295u, 28u)], all(vec3<bool>(true, false, false))), abs(-u_input.a.x) < (-5456i >> (_wgslsmith_clamp_u32(u_input.c, 5876u, 45619u) % 32u)), global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(u_input.b, arg_2.x) & 1u, _wgslsmith_dot_vec2_u32(arg_2.zy, ~arg_2.zy), _wgslsmith_clamp_u32(36587u, 15088u, arg_2.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, u_input.b), vec3<u32>(u_input.c, arg_2.x, 44578u))), 28u)], var_1.x), select(vec4<bool>(arg_1, all(select(vec3<bool>(var_2.x, var_1.x, arg_1), vec3<bool>(global1[_wgslsmith_index_u32(89294u, 28u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(5375u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], arg_1))), !(!var_2.x), var_2.x), select(vec4<bool>(arg_0.x <= 761f, var_0.a <= 0i, select(var_1.x, global1[_wgslsmith_index_u32(u_input.c, 28u)], true), true & arg_1), vec4<bool>(true, arg_1, true, var_2.x), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 0u), 28u)], true, !var_0.d, arg_1)), u_input.b != _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 56884u), _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(u_input.c, u_input.c, arg_2.x)))), vec4<bool>(select(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i)), var_0.b.b.x, true) >= _wgslsmith_mult_i32(~(-38563i), -5958i), !arg_1, false, any(vec3<bool>(global1[_wgslsmith_index_u32(~u_input.b, 28u)], all(var_2.zy), var_0.b.b.x < u_input.a.x))));
    var var_4 = Struct_1(var_0.b.a, var_0.b.b & _wgslsmith_clamp_vec3_i32(vec3<i32>(min(u_input.a.x, var_0.c.x), i32(-1i) * -11100i, u_input.a.x ^ u_input.a.x), max(select(var_0.b.b, vec3<i32>(-5996i, u_input.a.x, -20714i), false), vec3<i32>(-2147483647i, var_0.b.b.x, 62167i)), min(var_0.b.b, ~u_input.a.xxx)));
    return arg_0;
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_3(Struct_1(-466f, vec3<i32>(-(~24332i), u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, u_input.a.x, -38974i), u_input.a))), -1i ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~u_input.a.x), 1i), Struct_2(_wgslsmith_mult_i32(1i, 15301i), Struct_1(-1344f, ~u_input.a.wxw), u_input.a.wy | select(vec2<i32>(u_input.a.x, 1i) & vec2<i32>(-13300i, -1i), reverseBits(vec2<i32>(u_input.a.x, -30939i)), true), false));
    let var_2 = -abs((-u_input.a.x ^ ~var_1.a.b.x) & var_1.a.b.x);
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-622f - 151f), -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.b, var_1.a.b.x), vec3<i32>(var_2, var_2, 1i)))), -63614i, Struct_2(-22569i, Struct_1(arg_0.a.x, -vec3<i32>(var_2, -2147483647i, u_input.a.x)), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b.b.x, var_1.a.b.x), vec2<i32>(var_1.b, var_2)), -1i), !all(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 28u)], false))));
    let var_4 = _wgslsmith_sub_i32(-10452i, _wgslsmith_dot_vec2_i32(var_3.c.b.b.xx | vec2<i32>(u_input.a.x, -var_2), vec2<i32>(var_3.b, -7677i)));
    return -402f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = u_input.a.zz;
    var var_1 = ~4294967295u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.a * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(511f)), arg_2.b.a)))), _wgslsmith_div_f32(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-431f, arg_2.b.a)))));
    var var_3 = vec2<f32>(-1529f, _wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-166f, arg_2.b.a, arg_2.b.a, arg_2.b.a), true, vec3<u32>(u_input.c, 4294967295u, 118565u))))), !arg_1, arg_2.d))));
    let var_4 = !arg_1.xyz;
    return Struct_4(vec4<f32>(-1122f, -2733f, 1472f, _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(sign(arg_2.b.a)), true))), vec4<bool>(1u != ~u_input.c, true, any(var_4), all(!select(arg_1.yx, vec2<bool>(true, arg_2.d), arg_1.xx))), false);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> f32 {
    var var_0 = 51161i;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(124f, -161f, -757f, -806f), vec4<bool>(true, true, any(arg_2.b), any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(19307u, 28u)], true)))))), arg_2.b, global1[_wgslsmith_index_u32(arg_1.x >> (((u_input.b << (_wgslsmith_dot_vec4_u32(arg_1, arg_1) % 32u)) & _wgslsmith_div_u32(90114u, u_input.b)) % 32u), 28u)]);
    var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(arg_0.wz, var_1.a.yy, var_1.c || all(arg_2.b.wz)));
    var_0 = ~u_input.a.x;
    return _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_1() -> Struct_4 {
    let var_0 = ~u_input.a.x;
    let var_1 = ~2147483647i;
    return Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(vec4<f32>(-446f, -298f, 1807f, -660f), vec4<u32>(u_input.c, u_input.c, 0u, u_input.b) ^ vec4<u32>(45916u, 1u, 38719u, 1u), func_2(vec2<u32>(u_input.b, u_input.c), vec4<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(80320u, 28u)], true), Struct_2(var_0, Struct_1(-370f, u_input.a.wwx), vec2<i32>(var_0, 1i), global1[_wgslsmith_index_u32(9723u, 28u)]), u_input.a), global1[_wgslsmith_index_u32(48064u, 28u)])), -966f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-770f, -924f, false)))), _wgslsmith_f_op_f32(floor(-1008f))), vec4<f32>(-272f, _wgslsmith_f_op_f32(min(-1024f, -405f)), -1878f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1193f, -1856f) - 1179f))), vec4<bool>(global1[_wgslsmith_index_u32(~reverseBits(u_input.b), 28u)], !global1[_wgslsmith_index_u32(~u_input.b, 28u)], global1[_wgslsmith_index_u32(u_input.c, 28u)], any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(101649u, 28u)], true)) | false), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 28u)]);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    global1 = array<bool, 28>();
    global0 = arg_1.a;
    let var_0 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, ~u_input.a.x, ~u_input.a.x), select(firstTrailingBit(vec3<i32>(2147483647i, -21332i, -17120i)), -vec3<i32>(u_input.a.x, u_input.a.x, arg_1.b.x), true)), arg_1.b), arg_1.b, arg_0.b.zxx);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -166f);
    return max(abs(~u_input.c), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(abs(25826u), 28u)], global1[_wgslsmith_index_u32(~func_6(func_1(), Struct_1(-2252f, vec3<i32>(u_input.a.x, u_input.a.x, 65614i))), 28u)]);
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(54993u, ~32599u, ~_wgslsmith_div_u32(0u, 4294967295u), func_6(func_2(vec2<u32>(u_input.c, u_input.b), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 28u)], false, global1[_wgslsmith_index_u32(u_input.c, 28u)]), Struct_2(u_input.a.x, Struct_1(1000f, vec3<i32>(1083i, u_input.a.x, 2147483647i)), vec2<i32>(u_input.a.x, -2147483647i), true), vec4<i32>(u_input.a.x, -2147483647i, 39078i, 1i)), Struct_1(810f, u_input.a.xyy))), vec4<u32>(_wgslsmith_div_u32(8085u, 38858u ^ u_input.c), firstLeadingBit(~4294967295u), abs(abs(66258u)), _wgslsmith_sub_u32(4294967295u, firstTrailingBit(4294967295u)))) & vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b, u_input.b))) >> (27677u % 32u), u_input.b, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~vec2<i32>(-1i, u_input.a.x), 9628i, -_wgslsmith_sub_i32(min(u_input.a.x, 2147483647i), ~u_input.a.x) >> (41632u % 32u));
}

