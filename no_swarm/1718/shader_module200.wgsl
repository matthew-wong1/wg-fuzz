struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: array<i32, 15> = array<i32, 15>(-1i, -9927i, 2147483647i, -1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -14687i, -1i, 1i, 2147483647i, -45097i, 1i, 0i, -27365i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    global0 = array<vec3<i32>, 22>();
    var var_0 = Struct_1(~min(countOneBits(vec3<u32>(25376u, u_input.e, u_input.c)), countOneBits(vec3<u32>(0u, u_input.d, 0u)) | abs(vec3<u32>(u_input.d, 52685u, 43082u))), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -(u_input.a.x << (92351u % 32u)), 1197i), abs(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.c, 22u)] >> (vec3<u32>(u_input.d, u_input.c, u_input.e) % vec3<u32>(32u))))), firstLeadingBit(_wgslsmith_sub_u32(u_input.e, ~_wgslsmith_mult_u32(u_input.e, u_input.e))));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(~(~var_0.a | var_0.a), max(firstLeadingBit(vec3<u32>(var_0.c, 31306u, 48748u)) | _wgslsmith_add_vec3_u32(var_0.a, var_0.a), vec3<u32>(39842u ^ u_input.e, 34408u, 4294967295u))), global0[_wgslsmith_index_u32(21354u, 22u)], u_input.d);
    var var_2 = vec3<f32>(-772f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2261f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-797f, 1642f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1470f) - -276f))), -933f);
    var_0 = var_1;
    return ~vec3<u32>(12030u, ~abs(var_0.c), _wgslsmith_sub_u32(var_1.c, reverseBits(reverseBits(1u))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = -10468i;
    let var_1 = _wgslsmith_add_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(firstLeadingBit(9431u), 15u)], _wgslsmith_clamp_i32(1i, u_input.b.x, -78037i))) ^ u_input.b);
    global0 = array<vec3<i32>, 22>();
    var var_2 = Struct_1(func_3(), vec3<i32>(min(~1i, -(global1[_wgslsmith_index_u32(20282u, 15u)] & var_0)), 28429i, ~select(var_0 & var_0, max(0i, var_0), !arg_0)), u_input.e);
    let var_3 = Struct_1(var_2.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~0u), ~var_2.c), 22u)] ^ var_2.b, ~(~(~(~4294967295u))));
    return Struct_1(~abs(var_2.a), min(-var_2.b, abs(global0[_wgslsmith_index_u32(2892u, 22u)] << (vec3<u32>(25389u, 0u, 10237u) % vec3<u32>(32u))) | min(vec3<i32>(24153i, 2147483647i, 2147483647i), var_2.b)), var_3.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = select(vec4<bool>(true, !select(true, true, false), true, !(_wgslsmith_f_op_f32(round(-154f)) >= _wgslsmith_f_op_f32(sign(807f)))), vec4<bool>(false, all(vec2<bool>(true, true)), false, false), func_2(false, global1[_wgslsmith_index_u32(1u, 15u)], !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true)).b.x != arg_0.b.x);
    global0 = array<vec3<i32>, 22>();
    global1 = array<i32, 15>();
    let var_1 = 1955f;
    var var_2 = arg_0.b;
    return global0[_wgslsmith_index_u32(63287u, 22u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 22>();
    global1 = array<i32, 15>();
    var var_0 = func_2(any(vec2<bool>(true, !all(vec4<bool>(false, true, true, true)))), -1i, !vec4<bool>(false, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), any(vec3<bool>(false, true, false)) || true, all(vec4<bool>(false, true, true, true)) && true), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), true)), !any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = func_2(all(vec4<bool>(true, true, true, true)) && false, _wgslsmith_sub_i32(u_input.a.x, func_2(true, 42601i, vec4<bool>(true, any(vec3<bool>(true, true, false)), false, true), vec3<bool>(true, true, true)).b.x), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(select(true, true, true), any(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, any(vec3<bool>(true, true, true)))));
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(Struct_1(firstLeadingBit(vec3<u32>(u_input.c, 38395u, 4294967295u)), func_4(Struct_1(~vec3<u32>(1u, 4294967295u, u_input.d), vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.e, 15u)]), ~u_input.c), func_2(true, global1[_wgslsmith_index_u32(u_input.e, 15u)], select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec3<bool>(true, true, true))), func_2(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false)), -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(9065u, 15u)], global1[_wgslsmith_index_u32(u_input.e, 15u)]), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), any(vec2<bool>(false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))).c));
    global0 = array<vec3<i32>, 22>();
    global1 = array<i32, 15>();
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    return Struct_1(abs(var_0.a), var_0.b, 45516u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    global1 = array<i32, 15>();
    let var_0 = vec2<bool>(15929i <= _wgslsmith_clamp_i32(abs(arg_0.b.x), abs(arg_1.b.x << (1u % 32u)), i32(-1i) * -u_input.a.x), true);
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 15>();
    var var_0 = select(vec3<bool>(false, any(vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, true, false))), !(!vec3<bool>(all(vec2<bool>(true, false)), true, false)), ~0u <= u_input.d);
    let var_1 = 0u;
    var var_2 = _wgslsmith_mult_i32(45184i, ~select(~(-19175i), -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(78642u, u_input.c), 15u)], !var_0.x));
    let var_3 = (select(func_6(Struct_1(vec3<u32>(68237u, 4294967295u, var_1), global0[_wgslsmith_index_u32(u_input.e, 22u)], 0u), func_1(), u_input.a.x), global1[_wgslsmith_index_u32(~(var_1 & 4294967295u), 15u)], var_0.x) ^ -_wgslsmith_mult_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 15u)], 1i), -global1[_wgslsmith_index_u32(4109u, 15u)])) >> (~0u % 32u);
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    var var_4 = all(vec3<bool>(all(vec3<bool>(var_0.x, true, true)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) * 1f) >= _wgslsmith_f_op_f32(step(-237f, -1245f))));
    var_4 = all(vec3<bool>(var_0.x, false, !(func_2(false, global1[_wgslsmith_index_u32(var_1, 15u)], vec4<bool>(var_0.x, true, false, true), vec3<bool>(true, true, var_0.x)).b.x == 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(40705u >> (u_input.c % 32u)), u_input.d), -func_1().b.xy);
}

