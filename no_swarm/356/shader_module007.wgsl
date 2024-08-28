struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: array<vec4<f32>, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2() -> bool {
    global0 = array<vec2<i32>, 15>();
    var var_0 = Struct_1(u_input.a.x, ~1u, -countOneBits(0i), ~select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 16914u, 2668u, 4294967295u), vec4<u32>(34063u, u_input.a.x, u_input.a.x, 4294967295u)), reverseBits(~vec4<u32>(6035u, 1u, 44556u, u_input.a.x)), true));
    global1 = array<vec4<f32>, 16>();
    let var_1 = 452f;
    global1 = array<vec4<f32>, 16>();
    return all(vec2<bool>(true, true));
}

fn func_3(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = ~vec3<i32>(38338i, -10209i, countOneBits(~_wgslsmith_add_i32(-14533i, 2147483647i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -395f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-160f, -874f)) + 1420f)), _wgslsmith_f_op_f32(step(1356f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-390f, -657f) + 753f))));
    let var_2 = var_0.x;
    var var_3 = Struct_1(1u, reverseBits(u_input.a.x), var_0.x, select(~(select(vec4<u32>(arg_0, u_input.a.x, arg_0, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 46394u), arg_1) & vec4<u32>(4294967295u, 55859u, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, 1096u, 4294967295u, u_input.a.x)) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_0), 1u, arg_0, u_input.a.x) % vec4<u32>(32u)), !arg_1));
    var var_4 = ~(~47791u);
    return Struct_1(~12450u, abs(_wgslsmith_clamp_u32(~u_input.a.x, 1u, ~24855u)), 7562i, firstLeadingBit(abs(var_3.d)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1482f + -780f) - 1000f) * -627f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2020f, 939f)))));
    global1 = array<vec4<f32>, 16>();
    let var_1 = func_3(_wgslsmith_clamp_u32(~4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, arg_2.b), arg_1.a), 0u), true);
    var var_2 = func_3(~arg_0.b, any(vec3<bool>(false, true, u_input.a.x >= ~arg_0.d.x)));
    var var_3 = firstTrailingBit(_wgslsmith_add_vec4_i32(-(vec4<i32>(2775i, arg_2.c, var_2.c, arg_1.c) >> (vec4<u32>(76178u, 5020u, 33822u, var_2.b) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-51492i, -4495i, var_1.c, var_1.c), -vec4<i32>(arg_1.c, -1i, var_1.c, 52541i))) & -min(vec4<i32>(-1452i, arg_2.c, arg_1.c, 1i), countOneBits(vec4<i32>(var_1.c, arg_0.c, 67337i, 1i))));
    return 1i;
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = min(vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<i32>(1i, -6349i)), max(-_wgslsmith_div_i32(-2147483647i, -45559i), min(~(-1i), 1i)), _wgslsmith_sub_i32(1i, countOneBits(-4659i)), func_4(Struct_1(1u, u_input.a.x, ~2147483647i, ~vec4<u32>(u_input.a.x, 35187u, 40995u, u_input.a.x)), func_3(~29264u, func_2()), func_3(u_input.a.x, -249f > arg_0.x))), ~vec4<i32>(-8577i, reverseBits(max(-28095i, 0i)), -37086i, ~(-27185i)));
    var var_1 = var_0.wxz;
    var var_2 = firstLeadingBit(u_input.a.x);
    let var_3 = Struct_1(u_input.a.x ^ firstTrailingBit(u_input.a.x), ~1u, _wgslsmith_mult_i32(76877i, ~(var_0.x | reverseBits(var_1.x))), vec4<u32>(19761u, 1u, select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, 6302u), ~u_input.a.x), u_input.a.x, true), ~(~(~40494u))));
    global0 = array<vec2<i32>, 15>();
    return _wgslsmith_mult_vec3_u32(var_3.d.yzw ^ var_3.d.xzx, var_3.d.zwy ^ ~max(vec3<u32>(var_3.d.x, u_input.a.x, var_3.a), vec3<u32>(46472u, var_3.d.x, u_input.a.x) >> (vec3<u32>(var_3.b, var_3.d.x, 4294967295u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(674f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1339f, 316f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(632f, -114f)), vec2<f32>(-3488f, 1000f))), !vec2<bool>(select(true, false, false), false))), countOneBits(max(39245i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39770i, -24234i, 2147483647i, 26847i), ~vec4<i32>(2147483647i, 13992i, 1i, -2147483647i)))), vec2<u32>(~0u, u_input.a.x), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 16u)] + vec4<f32>(402f, 836f, 1213f, -1323f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1299f, 538f, 443f, -2078f), global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))))), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, 4294967295u, 29687u, 53057u), true), vec4<u32>(98994u, _wgslsmith_mult_u32(u_input.a.x, 50777u) | _wgslsmith_sub_u32(15782u, 0u), _wgslsmith_dot_vec3_u32(func_3(u_input.a.x, true).d.zxz, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 131428u)));
}

