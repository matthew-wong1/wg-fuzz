struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<u32, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec2<i32> {
    global1 = array<u32, 14>();
    let var_0 = abs(vec2<u32>(_wgslsmith_div_u32(~arg_2.b, global1[_wgslsmith_index_u32(1u, 14u)]), 0u) & vec2<u32>(125200u, 1074u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_f_op_f32(427f - -1000f))) - arg_2.a);
    global1 = array<u32, 14>();
    global1 = array<u32, 14>();
    return _wgslsmith_mod_vec2_i32((((u_input.b.zx & vec2<i32>(u_input.b.x, u_input.b.x)) << ((u_input.d.yz | vec2<u32>(global1[_wgslsmith_index_u32(arg_0.b, 14u)], 18728u)) % vec2<u32>(32u))) & -(u_input.b.wz >> (var_0 % vec2<u32>(32u)))) | -_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, -2147483647i)), u_input.b.ww ^ u_input.b.ww), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(~(~31766i), 1i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(arg_2.xy), abs(vec2<i32>(arg_0.x, arg_1))), _wgslsmith_clamp_vec2_i32(-u_input.b.zy, arg_2.xw, -arg_0.yx), vec2<i32>(8694i, abs(0i)))), func_3(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(558f * -174f) + 1253f), 14167u), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) | select(true, all(vec4<bool>(true, false, false, false)), false), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -574f))), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(11122u, 14u)], _wgslsmith_clamp_u32(26134u, 0u, u_input.d.x)))));
    let var_1 = select(vec2<bool>(true, any(vec2<bool>(true, true)) && true), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(false, false), select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(false, true))))), vec2<bool>(true, -2147483647i > select(abs(-2147483647i), -63081i, all(vec4<bool>(true, false, true, true)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-283f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1953f - -341f))))), ~select(u_input.c.x, u_input.c.x, true) >> (40372u % 32u));
    let var_3 = Struct_3(824f, ~(~69783u));
    global0 = array<Struct_2, 6>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(435f, var_2.a)))), vec2<f32>(-1337f, _wgslsmith_div_f32(var_3.a, -1416f)))), var_2.a, all(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))), _wgslsmith_add_u32(~(~4294967295u), _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(min(99251u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]), global1[_wgslsmith_index_u32(var_3.b, 14u)], min(0u, var_2.b)))), arg_0.zz);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(vec3<i32>(_wgslsmith_add_i32(~max(-2147483647i, -8125i), u_input.b.x), u_input.b.x, ~(~_wgslsmith_sub_i32(51459i, u_input.b.x))), -48636i, countOneBits(~u_input.b));
    let var_1 = Struct_3(var_0.a.x, u_input.a.x);
    global0 = array<Struct_2, 6>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)), ~0u);
    let var_3 = func_2(_wgslsmith_add_vec3_i32(-(vec3<i32>(-2147483647i, -50277i, 4756i) & vec3<i32>(1i, 3080i, var_0.e.x)), vec3<i32>(~u_input.b.x, var_0.e.x, 8087i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.e.x, var_0.e.x, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.b.x, 9892i, u_input.b.x, 37044i)), u_input.b).d | firstLeadingBit(var_0.d);
    return Struct_1(!select(vec2<bool>(all(vec2<bool>(true, var_0.c)), false), select(vec2<bool>(true, false), select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, false), false), true), -43797i < (u_input.b.x << (1u % 32u))), ~2147483647i, u_input.b.xz >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, global1[_wgslsmith_index_u32(var_2.b, 14u)] << (u_input.c.x % 32u)), vec2<u32>(min(var_2.b, 1u), u_input.d.x >> (global1[_wgslsmith_index_u32(var_3, 14u)] % 32u))) % vec2<u32>(32u)), vec2<bool>(54466u <= ~var_2.b, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 6>();
    global1 = array<u32, 14>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.d);
    global0 = array<Struct_2, 6>();
    global1 = array<u32, 14>();
    global1 = array<u32, 14>();
    var var_1 = func_4(global0[_wgslsmith_index_u32(0u, 6u)], func_1(4294967295u), func_1(15853u >> (var_0.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f - 138f)))), var_0, -48781i);
}

