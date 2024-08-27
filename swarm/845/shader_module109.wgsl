struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-19487i, i32(-2147483648)));

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<f32, 24> = array<f32, 24>(-1620f, -384f, -605f, 1677f, -1019f, -222f, 1206f, 498f, -839f, -998f, -396f, 1680f, 477f, -904f, 1151f, -1000f, 1310f, -1491f, 399f, -122f, 614f, -635f, -830f, 649f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = ~((u_input.b | vec4<u32>(4294967295u, max(16591u, 25582u), ~arg_3, 4294967295u)) ^ u_input.b);
    global2 = array<f32, 24>();
    let var_1 = ~vec4<u32>(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 24476u), ~0u & countOneBits(max(var_0.x, u_input.b.x)), firstLeadingBit(var_0.x));
    let var_2 = _wgslsmith_add_i32(~u_input.a.x, reverseBits(-firstLeadingBit(1i)));
    let var_3 = _wgslsmith_f_op_f32(round(-1000f));
    return vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), true))), true != all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), true, -958f != _wgslsmith_f_op_f32(-var_3));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    global2 = array<f32, 24>();
    let var_0 = u_input.b.x;
    global0 = global1[_wgslsmith_index_u32(45220u, 6u)];
    let var_1 = global2[_wgslsmith_index_u32(~5602u, 24u)];
    global0 = arg_0;
    return any(func_3(Struct_1(arg_0.a << (vec2<u32>(var_0, 56461u) % vec2<u32>(32u))), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0, 24u)], -625f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-479f, arg_1)))), arg_0, ~(var_0 | u_input.b.x))) | all(func_3(global1[_wgslsmith_index_u32(48002u, 6u)], vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), global2[_wgslsmith_index_u32(max(32724u, var_0), 24u)]), Struct_1(vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.zzy, vec3<u32>(var_0, u_input.b.x, var_0)))).yw);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 0i << (_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, 0u) % 32u);
    var var_1 = abs(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 56595u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u))) >> (u_input.b.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b.yyx), vec3<u32>(firstTrailingBit(6953u), u_input.b.x & u_input.b.x, 1u)), 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))));
    let var_3 = _wgslsmith_mod_i32(-61429i, 1i);
    var_0 = select(_wgslsmith_sub_i32(global0.a.x, ~(~5067i)), max(~var_3, select(arg_2, _wgslsmith_dot_vec2_i32(max(arg_3.a, vec2<i32>(u_input.a.x, arg_3.a.x)), ~vec2<i32>(u_input.a.x, 2147483647i)), !arg_1.x)), (_wgslsmith_f_op_f32(max(-604f, arg_0)) >= -426f) & (!arg_1.x && !arg_1.x));
    return global1[_wgslsmith_index_u32(1u, 6u)];
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 11032u, u_input.b.x, 75054u), vec4<u32>(0u, 0u, 8082u, u_input.b.x)), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -766f)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, func_2(Struct_1(global0.a), 128f), all(vec2<bool>(true, false)))), reverseBits(-32985i), global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 6u)]);
    let var_1 = !vec3<bool>(select(any(vec2<bool>(false, true)), true, any(vec2<bool>(true, true))), _wgslsmith_clamp_i32(14840i, firstTrailingBit(32606i), firstLeadingBit(global0.a.x)) > global0.a.x, u_input.b.x == _wgslsmith_dot_vec3_u32(min(u_input.b.xwx, vec3<u32>(0u, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)));
    var var_2 = true;
    var_2 = false;
    global2 = array<f32, 24>();
    return ~_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(max(u_input.a.zy, var_0.a), vec2<i32>(11890i, -21119i)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u) >> (u_input.b.xy % vec2<u32>(32u)), vec2<u32>(u_input.b.x, 0u) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(1i, 1i)), select(var_0.a ^ global0.a, vec2<i32>(global0.a.x, 1i), var_1.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.a, -(u_input.a << (select(vec4<u32>(330u, 92423u, u_input.b.x, u_input.b.x), u_input.b ^ vec4<u32>(27243u, u_input.b.x, u_input.b.x, 0u), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)) % vec4<u32>(32u))));
    global1 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 24u)] + global2[_wgslsmith_index_u32(52798u, 24u)]), 1297f));
    global2 = array<f32, 24>();
    let var_2 = Struct_1(func_1());
    let var_3 = func_4(2540f, !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), u_input.a.x, Struct_1(select(vec2<i32>(0i, reverseBits(var_2.a.x)), ~global0.a, !func_3(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], var_1, Struct_1(u_input.a.zy), u_input.b.x).xw)));
    let var_4 = max(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(-2147483647i), u_input.a.x), select(-19604i, min(0i, ~0i), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 2147483647i), countOneBits(u_input.a.ww)));
    var_0 = _wgslsmith_sub_i32(34871i, reverseBits(44836i));
    let var_5 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(-_wgslsmith_clamp_i32(0i, var_3.a.x, 1i), var_3.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, var_4.x, 2147483647i, global0.a.x), vec4<i32>(1i, -7165i, -35848i, 10085i)))), max(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.yww, u_input.a.yzz), -vec3<i32>(5050i, var_2.a.x, -1i))), vec3<i32>(-_wgslsmith_add_i32(-46508i, global0.a.x), _wgslsmith_sub_i32(global0.a.x, u_input.a.x), -25022i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1946f)))), var_1.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.b.x, 24u)])), 0i, vec2<u32>(~30427u, 26244u));
}

