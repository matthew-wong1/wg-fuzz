struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    var var_0 = Struct_1(~u_input.b, abs(_wgslsmith_sub_i32(~u_input.b, -10117i)) == u_input.b, u_input.a.x, abs(~vec4<i32>(2147483647i, abs(u_input.b), _wgslsmith_sub_i32(u_input.b, -1i), u_input.a.x)));
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(60403u, 4294967295u, 30326u)), vec3<u32>(1u, ~69540u, abs(1u)))), 15u)];
    global1 = array<Struct_1, 15>();
    global0 = array<vec2<bool>, 7>();
    var var_2 = vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(~(~select(1877u, 1u, true)), abs(1u), 1u, _wgslsmith_mult_u32(select(~29645u, abs(16489u), var_1.b), 1u)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 467f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    let var_0 = !(!(!(!vec4<bool>(true, false, false, arg_1.b))));
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-arg_1.d.zzy & vec3<i32>(-4022i, 1i, -46777i), ~arg_1.d.wyx >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(countOneBits(arg_1.c) << (~4294967295u % 32u), u_input.a.x, -_wgslsmith_dot_vec3_i32(arg_1.d.wzz, arg_1.d.yzw))), arg_1.d.wyz);
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    var var_2 = max(~(~_wgslsmith_mod_u32(~46984u, ~47523u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(~69434u, 1u, ~1u)), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 17220u), ~4294967295u, ~3136u))));
    return ~abs(countOneBits(~(~1945u)));
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 15>();
    let var_0 = 17187u & func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1393f * -744f) - _wgslsmith_f_op_f32(max(791f, 335f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(vec4<f32>(299f, -1168f, 448f, -104f), 956f)), all(vec4<bool>(true, true, false, false))))), Struct_1(-30183i, false, -abs(12894i), ~vec4<i32>(-2147483647i, u_input.b, u_input.a.x, -16550i)), ~(vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.a.x)));
    global1 = array<Struct_1, 15>();
    let var_1 = -2147483647i;
    var var_2 = global1[_wgslsmith_index_u32(var_0 & 0u, 15u)];
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32((vec2<u32>(42547u, var_0) | vec2<u32>(var_0, var_0)) | vec2<u32>(0u, var_0), abs(_wgslsmith_div_vec2_u32(vec2<u32>(12007u, 1u), vec2<u32>(var_0, var_0)))), ~vec2<u32>(~942u, var_0));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<u32>(abs(func_2()), countOneBits(4294967295u), ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 29449u)), 1u)), _wgslsmith_sub_u32(79669u, 1u));
    global0 = array<vec2<bool>, 7>();
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 7u)];
    var var_2 = -u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -295f), 2457f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(117f)), _wgslsmith_f_op_f32(arg_1 * 971f)), -610f), _wgslsmith_div_f32(-1106f, arg_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-196f))))));
    return Struct_1(u_input.a.x, all(!global0[_wgslsmith_index_u32(~var_0.x, 7u)]), _wgslsmith_mod_i32(reverseBits(1i), ~(0i ^ arg_0.c)), vec4<i32>(u_input.a.x, arg_0.a | 11403i, u_input.b, arg_0.a) ^ _wgslsmith_mod_vec4_i32(arg_0.d, min(vec4<i32>(2147483647i, arg_0.a, arg_0.c, u_input.a.x), arg_0.d) << ((var_0 ^ vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x)) % vec4<u32>(32u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(542f, -2048f);
    var var_1 = arg_2;
    let var_2 = Struct_2(_wgslsmith_mod_u32(arg_0.x, arg_0.x), Struct_1(func_1(arg_1, _wgslsmith_f_op_f32(floor(474f))).a & 0i, any(!(!vec4<bool>(arg_1.b, arg_2, false, false))), -40105i, arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -750f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 328f))))));
    let var_3 = -_wgslsmith_add_i32(select(-arg_1.a, _wgslsmith_add_i32(var_2.b.a, abs(var_2.b.a)), !arg_1.b), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, arg_1.d.x, var_2.b.a, -1i), var_2.b.d)));
    var var_4 = func_1(arg_1, _wgslsmith_f_op_f32(-366f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<f32>(1802f, var_2.c.x, 896f, 745f), -441f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), select(true, any(global0[_wgslsmith_index_u32(7874u, 7u)]), var_2.b.b)))));
    return vec4<bool>(var_2.b.b, arg_2, var_3 == countOneBits(min(2194i, var_3)), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 7>();
    let var_0 = Struct_1(u_input.a.x, (~u_input.b >= 28i) | true, abs(min(_wgslsmith_div_i32(u_input.b, u_input.b), abs(~u_input.a.x))), (-vec4<i32>(u_input.a.x, u_input.b, 0i, 1i) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 1i, 7208i), _wgslsmith_mod_vec4_i32(vec4<i32>(-26608i, u_input.a.x, -40555i, -49039i), vec4<i32>(22153i, u_input.a.x, u_input.a.x, -2147483647i)))) & ~countOneBits(abs(vec4<i32>(0i, -2147483647i, 1i, 4563i))));
    var var_1 = 736f;
    let var_2 = vec2<bool>(all(func_5(vec3<u32>(1u, 1u, 1u), func_1(global1[_wgslsmith_index_u32(1u, 15u)], -833f), var_0.b)), var_0.b);
    global1 = array<Struct_1, 15>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-923f * -1051f)), var_0.b || func_5(vec3<u32>(22281u, 7156u, 6159u), Struct_1(var_0.d.x, true, u_input.a.x, vec4<i32>(-1483i, -2147483647i, var_0.c, var_0.d.x)), var_2.x).x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(198f)) + _wgslsmith_f_op_f32(trunc(-147f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(562f, var_3), select(vec4<u32>(abs(_wgslsmith_clamp_u32(44591u, 31526u, 4294967295u)), 73227u, 1u, 26577u), ~(~(~vec4<u32>(26413u, 15540u, 4294967295u, 28664u))), select(vec4<bool>(!var_2.x, true, select(var_0.b, var_0.b, var_2.x), var_0.b & var_2.x), vec4<bool>(true, true, true, true), select(!vec4<bool>(var_0.b, var_2.x, var_2.x, var_0.b), vec4<bool>(true, false, true, var_0.b), var_3 >= var_3))));
}

