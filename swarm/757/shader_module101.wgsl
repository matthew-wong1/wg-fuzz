struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 14497i, 39332i, 2147483647i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = -17425i;
    let var_1 = _wgslsmith_mult_vec4_i32(arg_3.c.c, arg_3.c.c);
    global0 = array<f32, 8>();
    global1 = ~reverseBits(select(~arg_3.c.c, vec4<i32>(abs(-34665i), _wgslsmith_mod_i32(var_1.x, var_0), -8201i, _wgslsmith_mult_i32(27457i, -36142i)), true));
    global0 = array<f32, 8>();
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    let var_0 = !vec4<bool>(arg_1, false && (1u == (arg_0.b.x >> (1u % 32u))), !arg_1, true);
    return 0u;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = true;
    var var_1 = arg_0.c.x;
    return vec4<u32>(u_input.d, u_input.b, ~_wgslsmith_mult_u32(func_4(Struct_1(vec3<f32>(918f, arg_0.a.x, -513f), arg_0.b, vec4<i32>(u_input.c, 6420i, 34406i, global1.x)), func_3(vec4<f32>(global0[_wgslsmith_index_u32(114948u, 8u)], -866f, -1484f, 236f), vec4<i32>(-12770i, u_input.c, -1549i, 0i), vec2<bool>(var_0, true), Struct_2(vec2<bool>(var_0, var_0), 33363u, arg_0, global1.x)), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), arg_0.a.xz), u_input.a.x), _wgslsmith_mult_u32(arg_0.b.x, _wgslsmith_div_u32(~_wgslsmith_add_u32(0u, arg_0.b.x), ~arg_0.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.c.a.zz - arg_0.a.yz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(1u, 8u)], arg_1.c.a.x))) + vec2<f32>(global0[_wgslsmith_index_u32(arg_1.c.b.x, 8u)], arg_1.c.a.x)))))));
    global0 = array<f32, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1571f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-460f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -215f, -809f))))), select(~func_2(arg_0), vec4<u32>(countOneBits(38209u), _wgslsmith_div_u32(max(0u, u_input.b), countOneBits(arg_1.c.b.x)), u_input.a.x, ~_wgslsmith_mod_u32(arg_0.b.x, 67165u)), !select(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)), select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, true, true, true)), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true))), -vec4<i32>(0i, ~(~global1.x), arg_2, global1.x));
    let var_2 = vec4<u32>(arg_1.b, ~var_1.b.x, select(reverseBits(16897u), max(arg_0.b.x ^ arg_1.c.b.x, 0u), true), ~var_1.b.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 1u), arg_1.b), min(max(arg_1.c.b.x, arg_0.b.x), 144490u), abs(func_2(var_1).x), arg_0.b.x), arg_1.c.b);
    let var_3 = ~arg_0.b.x != 36563u;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32((select(vec4<i32>(1i, -1i, 1i, u_input.c), vec4<i32>(2147483647i, arg_2, 2264i, arg_0.c.x), vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)) | arg_1.c.c) & -arg_0.c, max(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, -2147483647i, 3692i, -29260i), arg_1.c.c)), var_1.c)), ~(arg_1.c.c & arg_1.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = -2147483647i;
    global1 = -_wgslsmith_mult_vec4_i32(~max(vec4<i32>(u_input.c, -2147483647i, var_0, 2147483647i) >> (vec4<u32>(u_input.b, u_input.b, 0u, 32668u) % vec4<u32>(32u)), select(vec4<i32>(u_input.c, -1i, 15705i, global1.x), vec4<i32>(7581i, -13784i, 0i, u_input.c), vec4<bool>(false, false, false, true))), vec4<i32>(-1i, 2147483647i, func_1(Struct_1(vec3<f32>(2395f, 1657f, 1225f), vec4<u32>(u_input.b, 4240u, 1u, 1u), vec4<i32>(-981i, global1.x, 2147483647i, u_input.c)), Struct_2(vec2<bool>(true, false), u_input.d, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 8u)], 1736f, -639f), vec4<u32>(u_input.b, 1u, u_input.b, u_input.d), vec4<i32>(var_0, 2147483647i, -12396i, 0i)), -27392i), u_input.c), (global1.x >> (74608u % 32u)) & ~(-1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])))) - vec3<f32>(1f, -867f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))) - vec3<f32>(_wgslsmith_f_op_f32(-1713f * _wgslsmith_f_op_f32(f32(-1f) * -1286f)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_f_op_f32(-1597f * global0[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(31446u, 8u)]), global0[_wgslsmith_index_u32(~u_input.d, 8u)]))), vec4<u32>(u_input.a.x, u_input.b, ~u_input.b, 1u), ~vec4<i32>(1i, global1.x, _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-8072i, 35557i), u_input.c)));
    global1 = vec4<i32>(abs(-1287i), -var_0, u_input.c, i32(-1i) * -2147483647i);
    var var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(1531f > global0[_wgslsmith_index_u32(1u, 8u)], true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), u_input.b < var_1.b.x), !select(func_3(vec4<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 8u)], -229f, global0[_wgslsmith_index_u32(6250u, 8u)], global0[_wgslsmith_index_u32(77465u, 8u)]), var_1.c, vec2<bool>(true, false), Struct_2(vec2<bool>(true, true), u_input.a.x, var_1, var_1.c.x)), all(vec4<bool>(true, true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 0i);
}

