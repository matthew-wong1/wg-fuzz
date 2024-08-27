struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> bool {
    return _wgslsmith_div_i32(-4184i ^ _wgslsmith_mod_i32(-26152i, u_input.a.x), (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -31889i)) >> (~0u % 32u)) >> (_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(1u, 0u)) % 32u)) != u_input.a.x;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_3 {
    global1 = !arg_0.d.c.x;
    return Struct_3(min(~arg_0.a, ~vec2<u32>(arg_0.e, arg_0.c) ^ abs(_wgslsmith_div_vec2_u32(arg_0.a, arg_0.a))), ~(-2147483647i) | ~(reverseBits(arg_1) ^ (i32(-1i) * -20905i)), min((_wgslsmith_add_u32(arg_0.a.x, arg_0.e) | arg_0.e) & arg_0.c, arg_0.e), Struct_1(select(vec3<bool>(!arg_2, true, arg_0.d.a.x), !arg_0.d.c.wyx, false & arg_2), select(~(-vec4<i32>(10740i, 0i, 2147483647i, -1i)), abs(vec4<i32>(arg_1, 2147483647i, arg_0.d.b.x, arg_0.d.b.x) & vec4<i32>(arg_0.d.b.x, u_input.a.x, arg_0.d.b.x, -1i)), vec4<bool>(false, any(vec2<bool>(false, arg_2)), all(arg_0.d.a), true)), vec4<bool>(true, true, any(vec4<bool>(arg_2, arg_0.d.c.x, true, arg_0.d.a.x)), u_input.a.x >= 2147483647i)), _wgslsmith_mult_u32(arg_0.c ^ arg_0.c, 0u) | 0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_3(Struct_3(firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(arg_1.a.x, 6661u, 33225u), ~arg_1.a.x)), -16478i, _wgslsmith_mod_u32(arg_2.a.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.e, arg_2.c, arg_2.c), vec3<u32>(arg_2.a.x, 0u, 55461u)))), arg_1.d, ~0u), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.d.b.x ^ _wgslsmith_add_i32(arg_2.b, -12360i), _wgslsmith_mult_i32(u_input.a.x, arg_0.b.x) << (69996u % 32u)), 2147483647i), func_2(), 666f);
    let var_1 = _wgslsmith_f_op_f32(ceil(-1376f));
    global1 = !(!(var_0.c < var_0.e) || arg_2.d.c.x);
    var var_2 = arg_2.d.c;
    var var_3 = Struct_2(false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 15u)] * -149f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1153f)) * _wgslsmith_f_op_f32(-2433f * var_1)))), 341f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.a.x, 15u)])))))));
    return arg_2.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_3(vec2<u32>(abs(arg_2.c), 5556u | _wgslsmith_mod_u32(arg_2.a.x, abs(arg_2.e))), 12000i, 1u, Struct_1(arg_2.d.c.zxz, vec4<i32>(u_input.a.x, -2075i, abs(arg_2.b), _wgslsmith_mod_i32(arg_2.d.b.x, 1i)), !select(vec4<bool>(false, arg_0.x, arg_2.d.c.x, true), arg_0, vec4<bool>(false, arg_0.x, false, arg_0.x))), firstLeadingBit(~0u));
    global0 = array<f32, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.c, 15u)], global0[_wgslsmith_index_u32(54244u, 15u)], -381f, 1469f))), vec4<f32>(-949f, -593f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(17068u, 15u)])), _wgslsmith_f_op_f32(round(775f))))))));
    var var_2 = 1080f;
    var var_3 = var_0.d.c;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(36256u, 1u, ~func_4(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), ~(~u_input.a.x), Struct_3(~vec2<u32>(1u, 4294967295u), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u)), func_1(Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.a.x, 0i, -38500i, -1i), vec4<bool>(false, true, false, false)), Struct_3(vec2<u32>(34078u, 6157u), u_input.a.x, 4294967295u, Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a.x, 45379i, -2147483647i, -1i), vec4<bool>(true, false, true, true)), 28427u), Struct_3(vec2<u32>(10078u, 25017u), -1i, 41503u, Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i), vec4<bool>(true, true, false, false)), 0u)), 1u)));
    let var_1 = -5455i;
    global1 = false;
    var var_2 = Struct_3(vec2<u32>(~45549u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), var_0), var_0)), i32(-1i) * -1i, _wgslsmith_dot_vec3_u32(abs(var_0), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(22514u, 34726u), _wgslsmith_dot_vec2_u32(vec2<u32>(77131u, 5881u), vec2<u32>(var_0.x, 4294967295u)), abs(66409u)), firstLeadingBit(vec3<u32>(4294967295u, var_0.x, 0u)))), func_1(Struct_1(vec3<bool>(true, true, true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -30367i, u_input.a.x, var_1), -vec4<i32>(var_1, -1i, u_input.a.x, u_input.a.x)), vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, false, true)))), Struct_3(var_0.xz, -15276i, var_0.x, func_3(func_3(Struct_3(var_0.yy, -26037i, 30652u, Struct_1(vec3<bool>(true, true, false), vec4<i32>(u_input.a.x, 0i, 20116i, -27061i), vec4<bool>(false, false, true, false)), 46036u), u_input.a.x, false, global0[_wgslsmith_index_u32(0u, 15u)]), firstTrailingBit(0i), global0[_wgslsmith_index_u32(1u, 15u)] > -192f, global0[_wgslsmith_index_u32(1u, 15u)]).d, _wgslsmith_div_u32(~4294967295u, 61985u)), func_3(func_3(func_3(Struct_3(vec2<u32>(var_0.x, var_0.x), -7200i, var_0.x, Struct_1(vec3<bool>(true, false, true), vec4<i32>(2147483647i, var_1, 0i, u_input.a.x), vec4<bool>(true, true, false, true)), 0u), var_1, true, 764f), -61757i, true, -1747f), 0i, true, -1213f)), ~func_3(func_3(Struct_3(var_0.xy, -71788i, 0u, Struct_1(vec3<bool>(true, true, false), vec4<i32>(var_1, var_1, var_1, var_1), vec4<bool>(true, true, true, false)), 4803u), var_1, false, global0[_wgslsmith_index_u32(var_0.x, 15u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(-912i, -3389i), vec2<i32>(u_input.a.x, var_1)), false, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45783u, 15u)])).c >> ((var_0.x | var_0.x) % 32u));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, abs(~23187u)), 15u)];
    let var_4 = ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(var_0, var_0 >> (var_0 % vec3<u32>(32u))), vec3<u32>(var_0.x, firstLeadingBit(var_2.c), var_0.x)) ^ _wgslsmith_div_vec3_u32(~(~reverseBits(vec3<u32>(var_2.c, var_0.x, 26282u))), _wgslsmith_add_vec3_u32(~(~var_0), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.x, 95928u), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-427f, -2395f) + -368f))), 4294967295u);
}

