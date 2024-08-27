struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: i32 = 1880i;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: i32;

var<private> global3: bool;

var<private> global4: array<u32, 5>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(~u_input.b.wz, abs(max(vec2<u32>(26712u, global4[_wgslsmith_index_u32(reverseBits(u_input.d), 5u)]), (arg_0 & u_input.b.yz) ^ (vec2<u32>(u_input.a, arg_0.x) & vec2<u32>(u_input.b.x, 76850u)))));
    var var_1 = -367f;
    let var_2 = true;
    var_1 = -259f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1697f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1519f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2202f * -1466f))))));
    return -1615f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    global2 = _wgslsmith_dot_vec2_i32(u_input.e, ~u_input.e);
    let var_0 = select(vec3<u32>(_wgslsmith_mult_u32(28038u, ~global4[_wgslsmith_index_u32(u_input.d, 5u)]), global4[_wgslsmith_index_u32(u_input.d, 5u)], ~u_input.a), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(1u), 1u), 3347u), select(1u, ~(u_input.b.x << (0u % 32u)), all(!vec2<bool>(arg_3, false))), 0u), select(vec3<bool>(arg_3, !arg_3, false), select(select(select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, arg_3, arg_3), arg_3), !vec3<bool>(false, true, arg_3), !arg_3), !vec3<bool>(false, arg_3, true), any(vec4<bool>(arg_3, true, true, false))), any(select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3), false), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, arg_3), vec2<bool>(true, arg_3)), !arg_3))));
    var var_1 = true;
    let var_2 = var_0.yy;
    var var_3 = !(!arg_3);
    return vec4<bool>(-2147483647i <= (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, arg_2.a, arg_1), vec3<i32>(arg_1, u_input.c, arg_1)), _wgslsmith_add_i32(-2147483647i, 2147483647i)) << (~select(var_2.x, var_2.x, arg_3) % 32u)), all(!select(vec3<bool>(false, false, arg_3), vec3<bool>(false, false, arg_3), true)) == true, all(select(vec3<bool>(true, true, u_input.d <= 4294967295u), select(select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(false, arg_3, false), true), select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, false, arg_3), arg_3), -427f >= arg_0), arg_3)), true);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> i32 {
    let var_0 = arg_0;
    let var_1 = Struct_2(firstLeadingBit(arg_2), var_0.a.x, _wgslsmith_mod_vec3_u32(select(~abs(u_input.b.xyw), max(min(vec3<u32>(global4[_wgslsmith_index_u32(u_input.d, 5u)], arg_3, u_input.d), u_input.b.yxx), vec3<u32>(global4[_wgslsmith_index_u32(6699u, 5u)], arg_3, 1u)), var_0.b.zxw), countOneBits(u_input.b.wxy)), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(29911u, ~u_input.b.x, 22108u << (arg_3 % 32u)), u_input.b.x), firstTrailingBit(select(0u, arg_3, arg_1.x) ^ ~global4[_wgslsmith_index_u32(61703u, 5u)])), _wgslsmith_clamp_i32(1i ^ arg_2, ~_wgslsmith_mult_i32(firstTrailingBit(0i), countOneBits(arg_2)), reverseBits(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(arg_3, 19u)], vec4<i32>(-7593i, u_input.e.x, u_input.e.x, arg_2)) ^ u_input.e.x)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(firstLeadingBit(max(55556u, arg_3)), firstLeadingBit(1u), 1u), var_1.c), vec3<u32>(_wgslsmith_add_u32(69937u, min(~u_input.b.x, _wgslsmith_div_u32(6282u, var_1.c.x))), 4294967295u, 1u)), 19u)];
    global1 = array<vec4<i32>, 19>();
    let var_3 = Struct_4(~arg_2);
    return 29471i;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = vec3<i32>(u_input.e.x, func_5(Struct_3(vec4<f32>(1000f, -1068f, -1831f, _wgslsmith_f_op_f32(480f * -774f)), func_4(_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.a, 5u)]), Struct_1(38307i))), i32(-1i) * -15036i, Struct_1(-1i), all(vec2<bool>(false, arg_0)))), select(vec2<bool>(true, any(vec3<bool>(arg_0, arg_0, false))), select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0), vec2<bool>(true, false)), select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), true), !vec2<bool>(arg_0, arg_0), arg_0)), ~(~_wgslsmith_mult_i32(47458i, u_input.c)), _wgslsmith_sub_u32(u_input.d, u_input.d)), ~(i32(-1i) * -1i));
    global2 = -54103i;
    return vec4<bool>(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.b.x, ~78329u), Struct_1(_wgslsmith_add_i32(u_input.c, 52065i)))) == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f), 235f))), any(func_4(_wgslsmith_f_op_f32(step(-1469f, -357f)), _wgslsmith_dot_vec2_i32(u_input.e | var_0.xy, max(var_0.xy, vec2<i32>(u_input.e.x, var_0.x))), Struct_1(64659i), true)), !(!all(vec3<bool>(false, false, arg_0))), arg_0);
}

fn func_1(arg_0: Struct_4) -> f32 {
    global3 = !all(vec4<bool>(42624i < _wgslsmith_mult_i32(u_input.e.x, arg_0.a), 38002i < _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(75805u, 19u)], vec4<i32>(18777i, arg_0.a, -5486i, -1i)), false, _wgslsmith_mod_i32(-35178i, arg_0.a) != u_input.c));
    var var_0 = ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b), 5u)], 5u)] <= u_input.b.x;
    var var_1 = any(select(select(select(func_2(true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), func_4(608f, -38266i, Struct_1(-13758i), false))), vec4<bool>(!select(true, true, false), true, all(vec3<bool>(true, true, true)), false), !(arg_0.a <= 0i)));
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(u_input.d, global4[_wgslsmith_index_u32(~(~(1u ^ u_input.b.x)), 5u)]), ~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15135u, 5u)], 5u)]), 28154u);
    let var_3 = vec4<i32>(_wgslsmith_clamp_i32(-1i, abs(25152i), 2147483647i), -26642i, arg_0.a, -1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -1221f);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_add_i32(2147483647i, arg_2.e));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1670f, arg_0.x, 1399f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-303f, 637f, -467f, arg_0.x) - vec4<f32>(116f, 1927f, -371f, arg_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, -327f, arg_0.x, arg_1.a.x), vec4<f32>(1009f, -1645f, 1561f, -1474f)) + vec4<f32>(-481f, arg_1.a.x, 1196f, arg_2.b)))), vec4<bool>(!arg_1.b.x, !arg_1.b.x, all(select(select(vec3<bool>(false, arg_1.b.x, true), arg_1.b.ywx, arg_1.b.x), func_2(arg_1.b.x).zxx, arg_1.b.xyw)), ~u_input.c >= abs(_wgslsmith_add_i32(var_0.a, -20550i))));
    global1 = array<vec4<i32>, 19>();
    global1 = array<vec4<i32>, 19>();
    var var_2 = vec3<i32>(reverseBits(u_input.e.x), i32(-1i) * -23178i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.a, 2147483647i), ~21210i), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(arg_2.e, u_input.c)), vec2<i32>(0i, -1i) >> (arg_2.c.zy % vec2<u32>(32u))))) >> (arg_2.c % vec3<u32>(32u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(-662f, 536f, _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(func_3(arg_2.c.zx, Struct_1(-2147483647i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_3)))), select(var_1.b, func_4(_wgslsmith_f_op_f32(floor(108f)), reverseBits(var_2.x), Struct_1(abs(39028i)), !(!arg_1.b.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1024f, -739f, 1234f, 1000f))) + vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-2792f, 1247f)), -441f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(785f, -967f, false)))), 761f)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(u_input.c))), 275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1145f, 365f)) - -950f), _wgslsmith_f_op_f32(f32(-1f) * -279f)), func_4(1449f, -u_input.e.x, Struct_1(_wgslsmith_add_i32(u_input.c, 1i)), any(vec2<bool>(true, true)))), Struct_2(u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)), vec3<u32>(~(global4[_wgslsmith_index_u32(23135u, 5u)] >> (u_input.b.x % 32u)), _wgslsmith_div_u32(1u, 50705u) << (u_input.d % 32u), _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(~57957u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(2898u, 1u, false), 5u)], 5u)], ~0u)), _wgslsmith_dot_vec2_u32(u_input.b.zx, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 0u))), u_input.c), -1943f);
    var var_1 = Struct_4(_wgslsmith_mult_i32(-1i, select(u_input.e.x, 32694i, var_0.b.x)));
    let var_2 = all(func_6(var_0.a, var_0, Struct_2(_wgslsmith_mult_i32(15024i, var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) + var_0.a.x), vec3<u32>(global4[_wgslsmith_index_u32(48712u, 5u)] | global4[_wgslsmith_index_u32(u_input.b.x, 5u)], reverseBits(36103u), ~16671u), _wgslsmith_sub_u32(16946u, 0u), ~var_1.a), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))).b);
    var var_3 = Struct_4(~var_1.a ^ -64294i);
    global2 = min(_wgslsmith_sub_i32(var_1.a, _wgslsmith_add_i32(i32(-1i) * -18847i, countOneBits(u_input.e.x))) >> (101810u % 32u), -1i);
    let var_4 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    let var_5 = firstLeadingBit(~0i) >> (firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(67253u, 25036u), ~(~u_input.d), 1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

