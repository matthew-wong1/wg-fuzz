struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, true, true, false, false, false);

var<private> global1: vec3<f32> = vec3<f32>(-703f, 1832f, -1579f);

var<private> global2: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x * global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(265f, _wgslsmith_f_op_f32(max(1387f, arg_0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-843f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-195f))))))), -(~arg_0.c), false | (u_input.b >= ~(0u >> (u_input.a % 32u))));
    global2 = select(1i, -select(~var_0.c.x, -1i, all(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)]))), all(!(!vec4<bool>(var_0.d, arg_0.d, false, arg_0.d)))) | var_0.c.x;
    var var_1 = Struct_1(arg_0.a, global1.x, vec4<i32>(-min(-var_0.c.x, ~36836i), firstLeadingBit(-countOneBits(34772i)), abs(u_input.e), firstLeadingBit(1i)), false && ((-2803i <= -arg_0.c.x) && true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-419f, arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(arg_0.a.x * 1212f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f) - _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(var_1.a.x))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-287f, -380f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.x, var_2.x, var_0.d)))))), _wgslsmith_f_op_f32(-var_0.a.x), var_1.b, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1015f, arg_0.b), var_1.a)), _wgslsmith_div_vec2_f32(var_1.a, var_2.yw), select(vec2<bool>(true, var_0.d), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(var_0.d, var_0.d)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1619f, var_1.a.x))))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(min(var_2.x, global1.x)))), var_2.xw)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, 1194f)))), _wgslsmith_f_op_f32(-global1.x), -vec4<i32>(u_input.e, u_input.c, u_input.c, 2147483647i) << (~vec4<u32>(20956u, 4294967295u, arg_0, arg_0) % vec4<u32>(32u)), !global0[_wgslsmith_index_u32(u_input.a, 8u)]), ~countOneBits(select(vec3<u32>(u_input.a, 4287u, 26895u), vec3<u32>(27850u, 0u, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(2731u, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, 240f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(global1.x, 754f), -107f, vec4<i32>(u_input.e, -2147483647i, -50229i, 58245i), arg_1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(13334u, 72158u, arg_0), vec3<u32>(arg_0, 0u, arg_0)))).x))), select((-vec4<i32>(44971i, u_input.c, 0i, u_input.c) & vec4<i32>(u_input.e, u_input.c, -40956i, -21813i)) | _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.e, 0i, u_input.c, -1i), vec4<i32>(u_input.e, -2147483647i, 1281i, u_input.c) >> (vec4<u32>(41448u, u_input.b, 1u, 0u) % vec4<u32>(32u))), abs(vec4<i32>(-73106i, u_input.d, 40267i, 2147483647i) << (~vec4<u32>(arg_0, 50597u, 31714u, u_input.a) % vec4<u32>(32u))), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 8u)], false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(124449u, 8u)], global0[_wgslsmith_index_u32(70166u, 8u)], false)), vec4<bool>(true, arg_1.x, arg_1.x, false), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(36174u, 8u)], false))), vec4<bool>(all(vec4<bool>(arg_1.x, false, false, true)), any(vec4<bool>(true, arg_1.x, false, arg_1.x)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], arg_1.x, true, global0[_wgslsmith_index_u32(arg_0, 8u)])), true), any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false, false, global0[_wgslsmith_index_u32(17243u, 8u)])))), false);
    global2 = max(abs(u_input.e), ~(~u_input.c));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-237f, var_0.a.x), global1.zz)), _wgslsmith_f_op_f32(step(-246f, var_0.b)), vec4<i32>(0i, u_input.d, -2147483647i, 48157i) >> (vec4<u32>(u_input.a, arg_0, u_input.b, 3677u) % vec4<u32>(32u)), !var_0.d), ~vec3<u32>(1815u, 46077u, 4294967295u))).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -561f)))), var_0.a.x, select(vec4<i32>(countOneBits(1i), countOneBits(var_0.c.x), _wgslsmith_add_i32(~(-1i), ~35192i), -15727i), -(~var_0.c), !vec4<bool>(true, all(vec4<bool>(false, arg_1.x, arg_1.x, true)), true, true)), false);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -210f);
    var var_3 = abs(var_0.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(global1.yx, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, vec2<bool>(global0[_wgslsmith_index_u32(21435u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_div_f32(989f, -579f)))), !(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(5780u, 8u)]), vec2<bool>(false, true))))), global1.x, ~vec4<i32>(-51840i, -87137i ^ u_input.d, ~u_input.c, u_input.c) >> (vec4<u32>(~0u, ~reverseBits(0u), ~(~u_input.a), ~(u_input.a & 1u)) % vec4<u32>(32u)), !(-18504i < u_input.e));
    let var_1 = var_0;
    var var_2 = var_1.c.wyy;
    global1 = vec3<f32>(-1024f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f * var_0.a.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_u32(u_input.a, u_input.b), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], false)))))), -553f);
    global2 = ~(-max(~(-1i), u_input.e)) & (min(_wgslsmith_dot_vec4_i32(var_1.c >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), ~vec4<i32>(u_input.d, var_1.c.x, 2854i, 4341i)), _wgslsmith_div_i32(-2147483647i, ~var_2.x)) & var_1.c.x);
    return StorageBuffer(select(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(97215u, u_input.a, u_input.b))), ~(~vec3<u32>(32455u, 1u, 4054u)), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], false), false), vec3<bool>(true, true, var_1.d), vec3<bool>(true, true, var_0.d))) & _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 25354u), vec3<u32>(45507u, 38478u, u_input.a)) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 36837u), vec3<u32>(u_input.a, 0u, 0u)), vec3<u32>(u_input.b, ~6225u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.a)), var_2.x | var_2.x, abs(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1962u, u_input.a), vec4<u32>(96293u, 4294967295u, 4294967295u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -4408i;
    var var_0 = u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

