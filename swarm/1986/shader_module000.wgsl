struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(0u, 65950u), vec2<u32>(15906u, 1u), vec2<u32>(28792u, 1168u), vec2<u32>(28826u, 0u), vec2<u32>(33935u, 0u));

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: Struct_3;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: bool) -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(global2.a.a));
    let var_1 = u_input.a;
    var var_2 = ~arg_0;
    global0 = array<vec2<u32>, 5>();
    let var_3 = Struct_1(-2147483647i, ~55415i, 0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, var_0.a.a), _wgslsmith_f_op_f32(min(563f, _wgslsmith_f_op_f32(min(global2.a.a, 240f)))))));
    return select(!vec4<bool>(select(arg_3, true, true), !arg_1.x, arg_3, all(!arg_1.yxx)), select(select(select(arg_1, !arg_1, select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(false, true, true, false), arg_1)), !vec4<bool>(false, arg_3, arg_3, arg_3), select(var_0.a.a <= 781f, !arg_1.x, select(arg_1.x, global1.x, false))), !select(!arg_1, !arg_1, select(arg_1.x, arg_3, true)), !vec4<bool>(arg_3, !arg_3, true, arg_3)), select(arg_1, arg_1, select(vec4<bool>(true, true, true, true), vec4<bool>(true, !global1.x, any(arg_1.yyx), true), any(!vec3<bool>(true, arg_1.x, arg_1.x)))));
}

fn func_2() -> Struct_1 {
    global1 = select(vec3<bool>(false, any(select(func_3(472u, vec4<bool>(false, global1.x, global1.x, global1.x), vec4<i32>(u_input.c, -1i, 61574i, 1i), global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(global1.x, false, false, global1.x))), true), !select(vec3<bool>(true, true, !global1.x), vec3<bool>(global1.x & true, global1.x, global1.x), -2147483647i >= -u_input.c), !(!select(vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, global1.x)), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)))));
    global0 = array<vec2<u32>, 5>();
    let var_0 = Struct_3(global2.a);
    let var_1 = global1.x;
    var var_2 = var_0;
    return Struct_1(u_input.b, ~(~u_input.c), u_input.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1605f, var_2.a.a)), -251f), _wgslsmith_f_op_f32(-var_0.a.a)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.d.x);
    global0 = array<vec2<u32>, 5>();
    var var_1 = ~(-16695i);
    let var_2 = global2.a;
    let var_3 = vec2<u32>(~(~firstTrailingBit(reverseBits(1u))), arg_2.x);
    return !vec3<bool>(!(false && all(vec3<bool>(global1.x, global1.x, false))), all(vec2<bool>(arg_2.x > u_input.a.x, global1.x == true)), true);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = ~u_input.a.yy;
    global2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1018f, -1000f)), select(vec3<bool>(global2.a.a <= arg_2.x, !arg_1.x, false), select(func_4(_wgslsmith_f_op_vec2_f32(arg_2.yz * vec2<f32>(global2.a.a, 1275f)), func_2(), u_input.a.xz), select(!vec3<bool>(global1.x, global1.x, arg_1.x), select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, global1.x, false), vec3<bool>(arg_1.x, false, false)), !vec3<bool>(arg_1.x, false, true)), func_3(var_0.x | u_input.a.x, !vec4<bool>(global1.x, true, false, true), abs(vec4<i32>(u_input.b, -62211i, u_input.b, u_input.c)), true || global1.x).zwx), vec3<bool>(false, true, firstLeadingBit(arg_0) >= u_input.a.x)), Struct_3(Struct_2(arg_2.x)));
    global0 = array<vec2<u32>, 5>();
    var var_1 = 1i;
    var var_2 = u_input.a;
    return vec3<u32>(firstTrailingBit(~_wgslsmith_div_u32(var_0.x, firstLeadingBit(u_input.a.x))), ~firstLeadingBit(var_0.x), firstLeadingBit(~var_0.x) ^ 76769u);
}

fn func_6(arg_0: bool, arg_1: u32) -> Struct_3 {
    let var_0 = func_3(_wgslsmith_mod_u32(max(_wgslsmith_add_u32(1882u, _wgslsmith_clamp_u32(arg_1, arg_1, arg_1)), firstLeadingBit(arg_1) >> ((u_input.a.x | 2806u) % 32u)), (u_input.a.x ^ arg_1) >> (7431u % 32u)), !select(!(!vec4<bool>(false, global1.x, true, arg_0)), vec4<bool>(any(global1.zy), any(vec4<bool>(true, global1.x, true, false)), true, true), arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(-17524i) ^ (-1i << (arg_1 % 32u)), _wgslsmith_sub_i32(-42265i, func_2().a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 49961i) << (vec3<u32>(arg_1, 11396u, arg_1) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, u_input.c, u_input.b)), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, 37911i), -1i)), vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.c, u_input.b << (61206u % 32u)), u_input.b, ~(-85947i))), !all(func_3(u_input.a.x, select(vec4<bool>(global1.x, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), arg_0), vec4<i32>(2147483647i, u_input.c, u_input.b, -5165i), !arg_0).wzz)).x;
    let var_1 = -vec3<i32>(u_input.b, max(func_2().b, ~2147483647i), firstLeadingBit(u_input.c));
    global1 = !vec3<bool>(~firstLeadingBit(arg_1) > firstTrailingBit(~1u), var_0, global1.x);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a + global2.a.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.a.a, -307f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.a)))))));
    let var_3 = func_5(1779f, !(!vec3<bool>(true, arg_0, true)), func_5(829f, func_3(_wgslsmith_mod_u32(4294967295u ^ u_input.a.x, ~arg_1), !vec4<bool>(global1.x, global1.x, true, var_0), ~(~vec4<i32>(var_1.x, var_1.x, -53138i, var_1.x)), global1.x).zwx, func_5(_wgslsmith_f_op_f32(global2.a.a + global2.a.a), vec3<bool>(global1.x, false, false), Struct_3(global2.a))));
    return func_5(_wgslsmith_f_op_f32(round(400f)), !vec3<bool>(!func_3(u_input.a.x, vec4<bool>(true, var_0, false, true), vec4<i32>(1i, u_input.c, -1i, var_1.x), false).x, !global1.x, all(select(vec3<bool>(var_0, true, true), vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, true)))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~abs(vec4<i32>(_wgslsmith_add_i32(u_input.c, 2147483647i), u_input.b ^ 14736i, u_input.b | u_input.b, ~(-16419i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(968f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.a, global2.a.a)) * global2.a.a)))));
    var var_2 = func_6(true, _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(func_1(~75485u, vec2<bool>(global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1742f, -857f, 127f))), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(14755u, 94819u), 4294967295u))));
    let var_3 = reverseBits(select(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, var_0.x), u_input.b), _wgslsmith_div_i32(40919i >> (u_input.a.x % 32u), ~var_0.x) | 30550i, var_0.x > -21144i));
    global1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(862f, var_1.x) * _wgslsmith_f_op_f32(-global2.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(863f * 691f)))), var_2.a.a), Struct_1(var_3, abs(2147483647i), u_input.c >> (u_input.a.x % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 192f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1372f) * vec2<f32>(var_2.a.a, var_2.a.a))) * vec2<f32>(var_2.a.a, var_2.a.a))), ~_wgslsmith_add_vec2_u32(~global0[_wgslsmith_index_u32(0u >> (1u % 32u), 5u)], abs(u_input.a.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(187f, global2.a.a, -1407f, -1181f) + vec4<f32>(global2.a.a, 223f, 1534f, -1020f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, global2.a.a, var_2.a.a, 375f), vec4<f32>(-1322f, global2.a.a, var_1.x, 830f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, -1982f, var_2.a.a, -1193f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a, var_1.x, -1273f, var_1.x) + vec4<f32>(global2.a.a, 274f, 1297f, global2.a.a))))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, -var_3), _wgslsmith_mult_vec2_i32(var_0.zx, var_0.yw), var_0.zw)));
}

