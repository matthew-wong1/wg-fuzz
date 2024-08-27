struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(52660i, -1i));

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(13395u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(31094u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(69047u, 72183u), vec2<u32>(88840u, 4294967295u), vec2<u32>(57443u, 46866u), vec2<u32>(45188u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(71049u, 1u), vec2<u32>(27590u, 0u), vec2<u32>(4294967295u, 66667u), vec2<u32>(4294967295u, 17892u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26988u, 4294967295u), vec2<u32>(850u, 0u), vec2<u32>(0u, 22870u), vec2<u32>(30430u, 25302u), vec2<u32>(1u, 0u), vec2<u32>(35764u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(21299u, 0u), vec2<u32>(0u, 1u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = Struct_1(global0.a);
    var var_0 = Struct_1(global0.a);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(global0.a ^ ~var_0.a, -(vec2<i32>(-24721i, -37066i) << (countOneBits(global2[_wgslsmith_index_u32(68772u, 23u)]) % vec2<u32>(32u)))));
    var var_2 = Struct_1(global0.a);
    var var_3 = ~1u & (_wgslsmith_dot_vec2_u32(max(~vec2<u32>(82044u, 16104u), global2[_wgslsmith_index_u32(4294967295u, 23u)]), global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(51494u, 26786u, 39393u)), 23u)]) << (max(_wgslsmith_add_u32(1u, 0u), ~10485u >> (1u % 32u)) % 32u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-154f)) + -579f)) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-870f + -627f), _wgslsmith_f_op_f32(f32(-1f) * -2938f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1525f))))), 745f, true)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1156f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f * -674f))), 1282f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(807f, 828f, false)), _wgslsmith_f_op_f32(func_3())))))));
    global0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, u_input.b, 47683i), vec3<i32>(global0.a.x, 1i, -43144i)), vec3<i32>(global0.a.x, -1i, 0i) | vec3<i32>(global0.a.x, -2147483647i, 37969i)), -1i));
    return 1u;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    global2 = array<vec2<u32>, 23>();
    var var_0 = global2[_wgslsmith_index_u32(~(~(~func_2(_wgslsmith_sub_vec2_i32(global0.a, global0.a)))), 23u)];
    let var_1 = -_wgslsmith_clamp_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.b, 1i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global0.a.x, -1i), abs(vec3<i32>(0i, -1i, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(45329i, global0.a.x, 2147483647i), vec3<i32>(2147483647i, 25985i, -1i) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)))) & ~firstTrailingBit(~vec3<i32>(-2147483647i, global0.a.x, arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))))));
    let var_3 = ~var_1.yy;
    return Struct_1(arg_0);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec4<u32> {
    return firstLeadingBit(~vec4<u32>(arg_0, arg_0, ~9069u, ~arg_0 << (26261u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(min(1u, 1u), ~1u, ~countOneBits(1u), ~(~30603u)));
    var var_1 = _wgslsmith_add_i32(firstLeadingBit(1i), _wgslsmith_mult_i32(-45824i >> (~var_0.x % 32u), 13256i)) << (4294967295u % 32u);
    var_0 = func_4(1u, func_1(_wgslsmith_mult_vec2_i32(global0.a << ((vec2<u32>(var_0.x, var_0.x) >> (global2[_wgslsmith_index_u32(var_0.x, 23u)] % vec2<u32>(32u))) % vec2<u32>(32u)), ~select(vec2<i32>(-1i, -9806i), global0.a, vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(767f, -1362f, -249f), _wgslsmith_f_op_vec3_f32(vec3<f32>(550f, -1338f, 1616f) * vec3<f32>(-889f, -682f, 1703f)))))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1061f, -884f)), vec2<f32>(194f, -277f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1172f, -193f) - vec2<f32>(-847f, -1042f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1570f, 322f) * vec2<f32>(394f, 502f)), true))))));
    let var_2 = ~abs(_wgslsmith_mult_i32(~32157i, u_input.b));
    global2 = array<vec2<u32>, 23>();
    let var_3 = all(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    global0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(i32(-1i) * -1i), ~(-2147483647i)), global0.a << (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, 24460u)) % vec2<u32>(32u)), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec2<u32>(1u, ~1u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(1490f - -624f), _wgslsmith_div_f32(-335f, _wgslsmith_f_op_f32(1364f + 1442f))))));
}

