struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-34091i, -51501i, -32766i, 4399i), vec4<i32>(850i, -4702i, -22298i, 12392i), vec4<i32>(2147483647i, 18884i, 2147483647i, 8248i), vec4<i32>(0i, 2147483647i, -15958i, 2147483647i));

var<private> global1: array<f32, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> u32 {
    return arg_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    global0 = array<vec4<i32>, 4>();
    var var_0 = arg_0;
    global1 = array<f32, 16>();
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_mult_u32(countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(arg_1.c, arg_1.a.x), arg_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 10099u, arg_1.a.x) & vec3<u32>(26411u, arg_1.c, arg_1.c), ~vec3<u32>(arg_1.c, arg_1.c, 32956u)))), arg_1.c);
    return 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(734f, 1094f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(530f, 1f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(387f, _wgslsmith_f_op_f32(f32(-1f) * -318f))))))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(1u, 0u))), vec2<u32>(abs(countOneBits(32710u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(6038u, 0u, 4294967295u, 1u)), ~4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(~30960u, 1u, ~49937u), 4294967295u)), _wgslsmith_add_i32(min(~u_input.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(70788i, 2147483647i, -62259i), _wgslsmith_mult_vec3_i32(vec3<i32>(9146i, 1i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, arg_1)))), 398i), ~min(16286u, 44425u), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, true), true), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, arg_1), _wgslsmith_mult_i32(-2147483647i, arg_0.x)), _wgslsmith_dot_vec4_i32(arg_0, arg_0) | -25610i, -10076i, -firstTrailingBit(arg_1)), vec4<i32>(arg_1, arg_0.x, -arg_1, arg_1)));
    let var_2 = Struct_1(select(firstLeadingBit(~vec2<u32>(var_1.c, var_1.c)), var_1.a, select(!var_1.d.yz, !select(vec2<bool>(var_1.d.x, true), var_1.d.xx, vec2<bool>(true, true)), !select(var_1.d.xz, vec2<bool>(false, var_1.d.x), vec2<bool>(var_1.d.x, var_1.d.x)))), -(i32(-1i) * -37141i), var_1.a.x, var_1.d, _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, reverseBits(0i), -2147483647i, ~var_1.e.x << (33690u % 32u)), ~_wgslsmith_mult_vec4_i32(-u_input.a, reverseBits(vec4<i32>(10344i, -1i, arg_1, 0i)))));
    let var_3 = var_2;
    var var_4 = var_1.b >> (var_2.a.x % 32u);
    return 25811u;
}

fn func_1() -> StorageBuffer {
    global0 = array<vec4<i32>, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(42104u, 16u)], global1[_wgslsmith_index_u32(16711u, 16u)]), vec2<f32>(-632f, 1013f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(90019u, 16u)], -1000f) + vec2<f32>(386f, global1[_wgslsmith_index_u32(4294967295u, 16u)]))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(1975f)), -365f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(785f, global1[_wgslsmith_index_u32(4294967295u, 16u)]))), vec2<f32>(_wgslsmith_f_op_f32(-1269f - global1[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10563u, 16u)])))))));
    let var_1 = 1u;
    var var_2 = Struct_1(vec2<u32>(~_wgslsmith_div_u32(func_2(var_1, Struct_1(vec2<u32>(66758u, var_1), -1i, var_1, vec3<bool>(false, false, true), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), var_0.x), 1u), 62702u), (u_input.a.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(26228u, 36068u, 1u, var_1), vec4<u32>(82188u, 4294967295u, var_1, var_1), vec4<u32>(var_1, var_1, 72937u, var_1)), ~vec4<u32>(1u, var_1, var_1, var_1)) % 32u)) | firstTrailingBit(~u_input.a.x), func_4(~vec4<i32>(-1i, func_3(vec3<f32>(var_0.x, -1000f, var_0.x), Struct_1(vec2<u32>(var_1, var_1), 0i, var_1, vec3<bool>(true, true, false), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), true, vec3<f32>(1552f, -166f, -125f)), u_input.a.x, u_input.a.x ^ u_input.a.x), u_input.a.x), select(vec3<bool>(true, ~u_input.a.x > u_input.a.x, all(vec4<bool>(true, false, true, false))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true))), vec4<i32>(~max(i32(-1i) * -1435i, u_input.a.x), 1708i & u_input.a.x, u_input.a.x, u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 16u)]));
    return StorageBuffer(vec2<u32>(var_2.c, var_1), ~vec3<u32>(func_2(4294967295u, Struct_1(var_2.a, 62421i, var_2.c, vec3<bool>(true, false, var_2.d.x), u_input.a), var_3) & abs(4294967295u), 34648u, ~_wgslsmith_mult_u32(0u, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 16>();
    let x = u_input.a;
    s_output = func_1();
}

