struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: vec4<f32> = vec4<f32>(472f, 1259f, 965f, -421f);

var<private> global2: u32 = 27083u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = all(vec3<bool>(abs(-u_input.c.x) < u_input.b.x, true, ~_wgslsmith_dot_vec2_u32(u_input.d.yw, arg_0.yy) > ~min(1u, 8501u)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0[_wgslsmith_index_u32(arg_1.a.a.x, 14u)], arg_2, global0[_wgslsmith_index_u32(arg_1.a.a.x, 14u)])))))));
    let var_1 = select(vec2<bool>(true, firstTrailingBit(-u_input.b.x) > -47541i), !select(select(vec2<bool>(false, arg_3), !vec2<bool>(arg_3, arg_3), vec2<bool>(true, false)), vec2<bool>(false || arg_3, arg_3 && arg_3), arg_3 & !arg_3), vec2<bool>(!(~1u < firstLeadingBit(arg_1.a.a.x)), arg_3));
    let var_2 = u_input.a;
    global2 = u_input.e;
    return (~(~u_input.b.x) | ~_wgslsmith_clamp_i32(u_input.c.x, 58433i >> (arg_0.x % 32u), ~u_input.b.x)) >> ((_wgslsmith_dot_vec3_u32(arg_0, firstLeadingBit(vec3<u32>(0u, var_2, 0u))) << (4294967295u % 32u)) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = 811f;
    var var_1 = Struct_3(func_3(abs(u_input.d.wxy), Struct_2(Struct_1(reverseBits(vec2<u32>(0u, 1u)))), global1.x, true), arg_0);
    var var_2 = select(vec4<bool>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.a, arg_3.x), abs(-1i)) != ~arg_1.a, false, true, !(46678u >= var_1.b.a.a.x) || all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true))), !vec4<bool>(true, true, any(vec2<bool>(true, true)), !all(vec4<bool>(false, false, true, true))), select(vec4<bool>(!(arg_0.a.a.x == 4294967295u), 1i == _wgslsmith_add_i32(var_1.a, arg_2), true, !all(vec3<bool>(false, false, false))), !vec4<bool>(arg_1.b.a.a.x > var_1.b.a.a.x, all(vec3<bool>(true, true, false)), false, all(vec3<bool>(false, false, false))), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.zw, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(global1.xw, global1.zz)))), !any(var_2.yzz))))));
    let var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, 1i, -5395i, 7903i), u_input.b)) | ~u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(max(select(vec4<i32>(40837i, 2147483647i, 2147483647i, -1i), vec4<i32>(u_input.b.x, u_input.c.x, -17814i, 32836i), true) ^ u_input.b, min(u_input.b | vec4<i32>(-25661i, 1i, -2147483647i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a, -55821i, 0i, var_1.a), u_input.b))), u_input.b));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(770f - 1704f), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_0.a.a.x, 14u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f + global1.x))), global1.x, _wgslsmith_f_op_f32(abs(655f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-2668f, -505f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-720f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b.a.a.x, 14u)]))), 762f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.a.x, 14u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.a.x, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
}

fn func_1(arg_0: Struct_4) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(func_2(arg_0.b.b, Struct_3(arg_0.b.a, arg_0.b.b), _wgslsmith_dot_vec3_i32(-u_input.b.zxy, u_input.b.wyx | firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-9269i, 16757i, 43267i), vec3<i32>(-3452i, -7912i, u_input.b.x)))), _wgslsmith_add_vec3_i32(vec3<i32>(-arg_0.b.a, _wgslsmith_mult_i32(~0i, 1i), ~arg_0.b.a), u_input.b.yzz)));
    let var_0 = select(select(select(!any(vec3<bool>(arg_0.a, false, arg_0.a)), select(true, true, true), true), any(select(vec3<bool>(arg_0.a, arg_0.a, false), !vec3<bool>(true, arg_0.a, arg_0.a), arg_0.a == true)), arg_0.a), true, false);
    global0 = array<f32, 14>();
    var var_1 = arg_0.b.b.a.a.x;
    global2 = ~countOneBits(~u_input.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    let var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), func_1(Struct_4(false, Struct_3(4089i, Struct_2(Struct_1(vec2<u32>(u_input.d.x, 73510u))))))), !(0u != u_input.a)), !vec4<bool>(true, true, true, u_input.c.x > 3703i));
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_u32((u_input.d.wz << (vec2<u32>(u_input.e, u_input.d.x) % vec2<u32>(32u))) ^ u_input.d.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, u_input.e) >> (vec2<u32>(u_input.e, 4294967295u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(37265u, u_input.a), max(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 4294967295u)), u_input.d.zy >> (vec2<u32>(u_input.d.x, u_input.a) % vec2<u32>(32u))), u_input.d.zz), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(50249u, u_input.a), min(u_input.d.xw, vec2<u32>(0u, 2328u)))));
    let var_2 = var_1;
    let var_3 = -vec2<i32>(abs(_wgslsmith_mod_i32(2147483647i, u_input.b.x) & ~u_input.b.x), _wgslsmith_div_i32(-2147483647i, u_input.c.x));
    var var_4 = all(!var_0.yz);
    var var_5 = false;
    var var_6 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x - 1342f), -1000f, true))))), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(74672u, 14u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-113f)))), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x) ^ u_input.b.x, _wgslsmith_sub_i32(var_3.x, max(_wgslsmith_sub_i32(u_input.b.x, 10865i), u_input.b.x)), -20213i, var_3.x), 1247i, global1.x);
}

