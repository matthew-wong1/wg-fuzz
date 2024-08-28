struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: bool = true;

var<private> global2: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global2 = arg_0.x;
    let var_0 = Struct_1(_wgslsmith_add_i32(max(1i, _wgslsmith_clamp_i32(0i, -2147483647i, 1i)) << (~_wgslsmith_add_u32(u_input.c.x, u_input.a.x) % 32u), _wgslsmith_mult_i32(reverseBits(0i), abs(max(-22076i, 31638i)))), 1u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(-1398f)), 1000f, _wgslsmith_f_op_f32(step(-2326f, _wgslsmith_div_f32(-1893f, 2197f))), 761f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(979f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 1134f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1692f), _wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f + -1911f))))), arg_0.x);
    global0 = array<vec4<f32>, 10>();
    var var_1 = select(vec2<bool>(var_0.d, true), !arg_0, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x))));
    return ~36852u;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> u32 {
    global0 = array<vec4<f32>, 10>();
    global1 = arg_2.x;
    let var_0 = Struct_1(_wgslsmith_sub_i32(1i >> ((u_input.b.x & 43577u) % 32u), reverseBits(_wgslsmith_mod_i32(-2147483647i, 1i))) << (_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.c.x, 1u), 1u) % 32u), _wgslsmith_add_u32(~abs(83187u) ^ _wgslsmith_add_u32(firstLeadingBit(u_input.b.x), 1u), ~_wgslsmith_mod_u32(157759u, 49454u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-829f, -483f, -1627f, 1000f), global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec4<f32>(-104f, -340f, 577f, -539f), arg_2.x)) * global0[_wgslsmith_index_u32(~countOneBits(arg_0), 10u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, u_input.b.x), 10u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 28060u, ~15713u, reverseBits(u_input.b.x)), u_input.b >> (~u_input.b % vec4<u32>(32u))) == 0u);
    let var_1 = Struct_1(arg_1, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, -853f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 260f, 109f, var_0.c.x) - vec4<f32>(var_0.c.x, var_0.c.x, -277f, -180f)))))), true);
    global1 = false;
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = Struct_1(-20646i, ~firstLeadingBit(1u), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(2837u, abs(u_input.b.x))), 10u)]), all(vec2<bool>(true, true)));
    global1 = ~func_4(select(48034u, func_3(vec2<bool>(var_0.d, false)), any(vec4<bool>(false, var_0.d, var_0.d, var_0.d))), _wgslsmith_mod_i32(-32780i, ~arg_0), select(select(vec3<bool>(true, var_0.d, true), vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(true, var_0.d, var_0.d)), select(vec3<bool>(true, true, false), vec3<bool>(var_0.d, var_0.d, var_0.d), var_0.d), select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(var_0.d, true, false), var_0.d))) != 0u;
    global2 = !all(!select(vec4<bool>(var_0.d, false, var_0.d, true), vec4<bool>(false, var_0.d, var_0.d, var_0.d), !vec4<bool>(true, false, var_0.d, var_0.d)));
    var var_1 = var_0.c.zw;
    global1 = ~reverseBits(~arg_1 >> (arg_1 % 32u)) > _wgslsmith_dot_vec4_u32(~countOneBits(u_input.b), vec4<u32>(arg_1, var_0.b << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, var_0.b), vec3<u32>(1u, 9609u, 11099u)), ~11818u));
    return ~18182u | var_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    global1 = all(vec4<bool>(all(select(!vec4<bool>(arg_1.x, true, arg_2.d, false), vec4<bool>(arg_2.d, false, arg_1.x, false), false)), !arg_0.d, any(select(select(vec4<bool>(true, true, true, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, arg_0.d, true, arg_2.d), !arg_2.d)), false));
    global2 = arg_2.d;
    let var_0 = !arg_2.d;
    global0 = array<vec4<f32>, 10>();
    var var_1 = 127f;
    return all(select(vec4<bool>(var_0, !(-978f <= arg_2.c.x), arg_2.d, ~arg_0.a == -arg_2.a), select(select(select(vec4<bool>(arg_2.d, true, arg_2.d, false), vec4<bool>(true, arg_0.d, arg_2.d, arg_0.d), vec4<bool>(true, true, false, false)), !vec4<bool>(false, false, var_0, arg_1.x), any(vec3<bool>(arg_1.x, arg_1.x, arg_0.d))), select(select(vec4<bool>(arg_2.d, var_0, arg_1.x, false), vec4<bool>(arg_2.d, arg_0.d, arg_1.x, false), true), !vec4<bool>(false, false, true, var_0), false), select(!vec4<bool>(arg_0.d, arg_0.d, true, arg_2.d), !vec4<bool>(arg_2.d, arg_1.x, arg_1.x, false), true)), !vec4<bool>(!arg_0.d, all(arg_1), arg_0.d, true)));
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = func_5(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -48102i, 30665i, 18157i), vec4<i32>(arg_0.x, arg_0.x, 23337i, arg_0.x)), arg_0.x), u_input.b.x | (func_2(arg_0.x, 14330u) | firstLeadingBit(4923u)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c.x >> (select(u_input.c.x, 21189u, false) % 32u), 10u)] - global0[_wgslsmith_index_u32(126281u, 10u)]), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(select(vec2<bool>(false, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(true, false)), vec2<bool>(any(vec2<bool>(false, true)) | false, true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))) && !(arg_0.x == 3859i)), Struct_1(arg_0.x, _wgslsmith_div_u32(func_2(-2147483647i, 1u), u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1458f, 1173f)) + _wgslsmith_f_op_f32(1605f + 976f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-505f, 541f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -406f)), true));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1953f, 154f)))))))));
    var var_2 = vec3<bool>(true, all(vec4<bool>(true, true, true, true)), select(false, true, false));
    let var_3 = Struct_1(reverseBits(abs(~1i)), u_input.c.x & u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f) - var_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 637f)))), _wgslsmith_clamp_i32(~arg_0.x, -40220i, 23506i) < (53743i << (_wgslsmith_sub_u32(~7697u, func_4(4294967295u, 42307i, vec3<bool>(var_2.x, true, var_2.x))) % 32u)));
    let var_4 = _wgslsmith_add_vec2_u32(~vec2<u32>(0u >> (u_input.c.x % 32u), 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_3.b), u_input.c.yz)), firstTrailingBit(abs(~min(u_input.a, u_input.c.yy))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(460f)), _wgslsmith_f_op_f32(select(1112f, var_3.c.x, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1002f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1923f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-216f, _wgslsmith_f_op_f32(var_1 * var_3.c.x))))))), 185f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(false, true, true, all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(-48081i, 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(i32(-1i) * -18340i, ~36818i, 2147483647i)))), true);
    var_1 = Struct_1(min(min(countOneBits(_wgslsmith_sub_i32(3914i, 1i)), -firstTrailingBit(var_1.a)), var_1.a), 37300u, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.b >> (u_input.b.x % 32u), var_1.b), 10u)]), var_1.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.c.xz + var_1.c.wz), _wgslsmith_f_op_vec2_f32(-var_1.c.zx), select(!(!(!var_0.xx)), var_0.wy, var_1.d)));
    global0 = array<vec4<f32>, 10>();
    var_1 = Struct_1(var_1.a, 0u, var_1.c, any(select(vec2<bool>(false, !var_1.d), var_0.zw, vec2<bool>(!var_1.d, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, ~vec2<u32>(52299u, 47761u)), countOneBits(_wgslsmith_mod_vec2_i32(min(~vec2<i32>(2147483647i, 39692i), vec2<i32>(-15422i, var_1.a)), vec2<i32>(var_1.a, var_1.a) | reverseBits(vec2<i32>(-8083i, 0i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(var_1.c.zxw)))) * _wgslsmith_f_op_vec3_f32(-var_1.c.zwy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-465f, 154f, -249f), vec3<f32>(-603f, var_2.x, 856f), false)) * var_1.c.zyx)), ~(~select(u_input.a.x, var_1.b, !var_0.x)));
}

