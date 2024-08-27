struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<bool, 6>;

var<private> global2: vec3<u32> = vec3<u32>(30347u, 0u, 14623u);

var<private> global3: f32;

var<private> global4: array<f32, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<f32> {
    global0 = array<i32, 10>();
    let var_0 = firstTrailingBit(global2.xz);
    global2 = select(~u_input.a.www, ~(~u_input.e.xwy), global1[_wgslsmith_index_u32(7833u, 6u)]) | u_input.d;
    var var_1 = ~abs(_wgslsmith_div_i32(-57632i, (-35640i ^ u_input.b) | reverseBits(15777i)));
    var var_2 = Struct_3(Struct_1(vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(67654u, global2.x, u_input.a.x), u_input.a.wyw), abs(u_input.e.yzw)), 22u)], global4[_wgslsmith_index_u32(firstTrailingBit(~global2.x), 22u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1597u), 31225u), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1120f - 969f))), u_input.d));
    return var_2.a.a.zyw;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), arg_1.b, arg_1.c & arg_1.c);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 804f, 302f, 774f)))), ~vec3<u32>(firstLeadingBit(31906u), ~arg_2, u_input.d.x)));
    var var_2 = global1[_wgslsmith_index_u32(0u, 6u)];
    var var_3 = arg_1;
    let var_4 = var_1.a;
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global2.x, 22u)])), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-149f, global4[_wgslsmith_index_u32(22125u, 22u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(21290u, 22u)])))), u_input.d);
    global1 = array<bool, 6>();
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: i32) -> vec4<f32> {
    global4 = array<f32, 22>();
    var var_0 = _wgslsmith_dot_vec3_u32(~u_input.d, _wgslsmith_div_vec3_u32(u_input.d, ~select(vec3<u32>(30004u, 0u, global2.x), u_input.d, vec3<bool>(global1[_wgslsmith_index_u32(19657u, 6u)], true, global1[_wgslsmith_index_u32(25343u, 6u)])))) ^ ~4294967295u;
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(447u, 22u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0, 22u)]))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -1i, 6825i), ~vec3<i32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 10u)], 1i))), ~func_2(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(arg_0, 22u)], global4[_wgslsmith_index_u32(26238u, 22u)]), Struct_2(vec3<f32>(-1181f, global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<i32>(-10698i, 22006i, -20965i), vec4<i32>(0i, 0i, u_input.b, 0i)), 1u)), select(vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true, global1[_wgslsmith_index_u32(arg_0, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)])), global1[_wgslsmith_index_u32(43481u, 6u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(68643u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(arg_0, 6u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0, 6u)], true, global1[_wgslsmith_index_u32(arg_0, 6u)]), global1[_wgslsmith_index_u32(arg_0, 6u)])), global1[_wgslsmith_index_u32(select(reverseBits(6890u), 2771u, false), 6u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 6u)], false, global1[_wgslsmith_index_u32(11861u, 6u)], true), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(arg_0, 6u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(33512u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)])), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 6u)])), global4[_wgslsmith_index_u32(21002u, 22u)] >= -1402f, global4[_wgslsmith_index_u32(arg_0, 22u)] <= -1027f), true), !(!(!vec4<bool>(global1[_wgslsmith_index_u32(6749u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], true)))));
    var var_2 = ~16878i;
    var var_3 = vec4<bool>(!(!global1[_wgslsmith_index_u32(~(~35576u), 6u)]), all(select(!select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e.x, 6u)], global1[_wgslsmith_index_u32(u_input.e.x, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(38021u, 6u)], global1[_wgslsmith_index_u32(27744u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(19727u, 6u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false, false)), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 6u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 6u)], false, global1[_wgslsmith_index_u32(78135u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(true, true, true, true)), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(global2.x, 6u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(51065u, 6u)], true, global1[_wgslsmith_index_u32(4294967295u, 6u)], true)), select(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 6u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true, true, global1[_wgslsmith_index_u32(arg_0, 6u)])))), global1[_wgslsmith_index_u32(~global2.x, 6u)] & global1[_wgslsmith_index_u32(abs(~4294967295u), 6u)], !all(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], false, true, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 6u)], true, global1[_wgslsmith_index_u32(global2.x, 6u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)]), false), !vec4<bool>(global1[_wgslsmith_index_u32(8419u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)], global1[_wgslsmith_index_u32(54029u, 6u)], true))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 968f) * global4[_wgslsmith_index_u32(arg_0, 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1609f)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0, 1u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -544f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global2.x, 22u)], -1000f, var_1.a.x, -971f), vec4<f32>(var_1.a.x, 937f, -724f, global4[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(arg_0, 22u)], 1000f, -126f, -1085f) - vec4<f32>(706f, 2240f, var_1.a.x, 797f)), var_3.x | global1[_wgslsmith_index_u32(1u, 6u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, global4[_wgslsmith_index_u32(global2.x, 22u)], global4[_wgslsmith_index_u32(global2.x, 22u)], global4[_wgslsmith_index_u32(424u, 22u)])) + _wgslsmith_f_op_vec4_f32(func_1(0u, u_input.b)))))), vec3<u32>(4294967295u, ~global2.x, 0u));
    global2 = u_input.a.wyw;
    let var_1 = ~_wgslsmith_sub_i32(-firstLeadingBit(1926i), -19452i) & _wgslsmith_clamp_i32(-1i, u_input.b, -reverseBits(1i));
    var var_2 = -114f;
    global2 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 1u) | (global2.x >> (reverseBits(u_input.a.x) % 32u)), _wgslsmith_mult_u32(~884u << (global2.x % 32u), u_input.d.x)), 26163u, 3818u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_1(global2.x, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.b.x, 10u)], -2147483647i))).yx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * global4[_wgslsmith_index_u32(global2.x, 22u)]), 1984f))), -1000f);
}

