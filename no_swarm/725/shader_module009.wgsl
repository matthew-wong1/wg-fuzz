struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: array<u32, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    global1 = array<u32, 20>();
    global0 = array<vec3<u32>, 10>();
    global0 = array<vec3<u32>, 10>();
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!(!any(vec3<bool>(false, true, true))), true, any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), false))), select(vec3<bool>(all(vec3<bool>(true, false, true)), false, any(vec3<bool>(true, true, true))), vec3<bool>(!all(vec3<bool>(true, true, true)), false, true), !any(vec3<bool>(true, false, true))));
    var_0 = vec3<bool>(false, false, any(select(var_0.zx, !vec2<bool>(var_0.x, false), var_0.x)) | var_0.x);
    return 715f;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = !select(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, false, true)) | select(true, true, true)), vec3<bool>(true, select(select(false, true, true), 1u == arg_1, true), true & all(vec4<bool>(false, true, true, true))), vec3<bool>(false, !(arg_2 <= 1i), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))));
    let var_1 = Struct_1(arg_2, vec4<i32>(6116i, i32(-1i) * -u_input.a, arg_2, _wgslsmith_dot_vec3_i32(~u_input.b.wzw, vec3<i32>(abs(arg_2), u_input.a, abs(2147483647i)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(var_1.b.yzz, u_input.b.wxz) | 14818i, abs(vec4<i32>(1i, var_1.b.x, -arg_2, -18588i)));
    var_2 = Struct_1(~(-10922i), vec4<i32>(43918i, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.b.wwy, vec3<i32>(-14946i, arg_2, -15561i)), 1i), select(-4800i, firstLeadingBit(firstLeadingBit(-2147483647i)), !(!var_0.x)), ~83426i));
    let var_3 = Struct_1(var_1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, var_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-20005i, arg_2, u_input.b.x, u_input.a), var_1.b), -1i) >> (vec4<u32>(global1[_wgslsmith_index_u32(arg_3.x, 20u)], _wgslsmith_dot_vec4_u32(arg_3, arg_3), _wgslsmith_dot_vec4_u32(arg_3, arg_3), _wgslsmith_mod_u32(4294967295u, 25575u)) % vec4<u32>(32u)), var_2.b, ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, var_2.b.x, var_2.a, 4414i), ~vec4<i32>(-25329i, arg_2, -2147483647i, -21966i), _wgslsmith_mult_vec4_i32(var_2.b, u_input.b))));
    return vec4<bool>(true, true | (_wgslsmith_f_op_f32(f32(-1f) * -1000f) == arg_0), false, var_0.x);
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global1 = array<u32, 20>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-752f + -1000f) + 1025f)), -1982f));
    global0 = array<vec3<u32>, 10>();
    var var_1 = Struct_1(u_input.a, select(-vec4<i32>(u_input.a & 2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.a)), 1i, ~u_input.b.x), u_input.b, arg_0));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.x, var_1.b.x, -1i, u_input.a), abs(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, var_1.b.x))), -2432i) | u_input.b.zw, -vec2<i32>(_wgslsmith_div_i32(u_input.b.x, firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec2_i32(var_1.b.xw >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(114642u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]) % vec2<u32>(32u)), firstTrailingBit(var_1.b.wx))));
    return select(~(-u_input.a), 1i, arg_0.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, all(vec3<bool>(false, false, true)) || true, !any(vec2<bool>(false, false))));
    let var_1 = max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 1i, countOneBits(arg_0.b.x)), -vec3<i32>(arg_0.b.x, u_input.b.x, 27202i), select(-u_input.b.wxw, -vec3<i32>(arg_0.a, arg_0.b.x, -2147483647i), select(var_0.zwx, vec3<bool>(var_0.x, false, var_0.x), var_0.x))), arg_0.b.zzz);
    var var_2 = vec2<u32>(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(4127u, global1[_wgslsmith_index_u32(47616u, 20u)])), 20u)]), 20u)], ~23457u);
    let var_3 = 24117i;
    global1 = array<u32, 20>();
    return Struct_1(_wgslsmith_mod_i32(~(-19577i) << (1u % 32u), -45081i), vec4<i32>(-30674i, -43170i, func_4(func_3(_wgslsmith_f_op_f32(func_2(var_2.x, 0u, vec2<u32>(17716u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 20u)], 20u)]))), ~var_2.x, arg_0.b.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 25353u, 19926u, var_2.x), vec4<u32>(var_2.x, 1u, var_2.x, 0u), vec4<u32>(53982u, global1[_wgslsmith_index_u32(1u, 20u)], 4294967295u, 24517u)))), abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-39928i, 27372i), -44154i))));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = ~_wgslsmith_clamp_u32(~_wgslsmith_div_u32(16728u & global1[_wgslsmith_index_u32(58473u, 20u)], 0u), 11021u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(16604u, 36678u, 29435u), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58040u, 20u)], 20u)], 10u)]) | 42422u, 1u));
    global1 = array<u32, 20>();
    let var_1 = vec3<i32>(select(1i, 1i, true), ~(func_4(vec4<bool>(false, true, true, false)) << (~38658u % 32u)) ^ -(countOneBits(1782i) | arg_2.b.x), i32(-1i) * -2147483647i);
    let var_2 = func_1(arg_2);
    global1 = array<u32, 20>();
    return vec3<bool>(any(select(vec3<bool>(false, true, -1i != u_input.a), vec3<bool>(all(vec4<bool>(false, false, true, true)), 558f >= arg_1.x, all(vec4<bool>(false, false, false, false))), true)), all(func_3(_wgslsmith_f_op_f32(abs(-131f)), ~31435u, ~var_1.x, reverseBits(vec4<u32>(4294967295u, var_0, 11988u, 0u))).yxz) || !(!func_3(arg_0, 4294967295u, arg_2.b.x, vec4<u32>(0u, 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(var_0, 20u)])).x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, true, all(func_5(-308f, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(325f, 374f), vec2<f32>(875f, -121f))), func_1(Struct_1(-45102i, vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.b.x))))));
    let var_1 = !(!vec3<bool>(true, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x));
    global0 = array<vec3<u32>, 10>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(193f, -328f))))));
    let var_3 = func_1(Struct_1(u_input.a, vec4<i32>(select(_wgslsmith_mod_i32(u_input.b.x, -2147483647i), 1i, var_0.x), _wgslsmith_div_i32(2147483647i, -40062i), 63925i, abs(u_input.a))));
    var var_4 = reverseBits(global1[_wgslsmith_index_u32(32662u, 20u)]);
    var_4 = _wgslsmith_div_u32(4294967295u, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(104097u, 20u)], 10u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27205u, 20u)], 20u)], 20u)], 20u)], 10u)]), global0[_wgslsmith_index_u32(2627u, 10u)]), 20u)], 20u)]) << (max(max(1u, select(43985u, 0u, true)), ~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20440u, 20u)], 20u)], 20u)])) % 32u));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec4<i32>(~var_5.a, _wgslsmith_sub_i32(18633i, var_3.b.x), func_4(vec4<bool>(var_1.x, var_0.x, false, false)), firstTrailingBit(u_input.b.x))));
}

