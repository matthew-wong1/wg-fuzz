struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(17644u, 0u, 38095u, 0u));

var<private> global2: vec3<f32> = vec3<f32>(123f, 436f, -1000f);

var<private> global3: array<u32, 13> = array<u32, 13>(4294967295u, 119905u, 7412u, 23888u, 1u, 1u, 51392u, 4294967295u, 0u, 13490u, 70785u, 0u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = countOneBits(-vec4<i32>(u_input.c, _wgslsmith_sub_i32(-u_input.c, _wgslsmith_sub_i32(u_input.c, -1i)), -12258i | u_input.c, ~u_input.c));
    let var_1 = (0u >> (_wgslsmith_div_u32(arg_1.x, _wgslsmith_add_u32(~arg_0.a.x, 4294967295u)) % 32u)) & (countOneBits(1u) << (arg_0.a.x % 32u));
    let var_2 = all(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], true, global0[_wgslsmith_index_u32(~global1.a.x, 1u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 1u)], !any(vec3<bool>(true, true, false)), false), select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(var_1, 1u)], global0[_wgslsmith_index_u32(global1.a.x, 1u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(29525u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], false | global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global2.x > global2.x, !global0[_wgslsmith_index_u32(73677u, 1u)]), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(67853u, 1u)], global0[_wgslsmith_index_u32(u_input.e, 1u)], false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 1u)]), global0[_wgslsmith_index_u32(4294967295u, 1u)]))));
    var var_3 = select(select(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], var_2), vec2<bool>(true, var_2), vec2<bool>(var_2, false)), vec2<bool>(global0[_wgslsmith_index_u32(38332u, 1u)], true), all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, true))), select(vec2<bool>(any(vec3<bool>(false, var_2, var_2)), all(vec2<bool>(var_2, true))), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(global1.a.x, 1u)], var_2), all(vec4<bool>(global0[_wgslsmith_index_u32(7815u, 1u)], true, global0[_wgslsmith_index_u32(var_1, 1u)], false))), select(vec2<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(111023u, 13u)], 13u)], 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(20601u, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 1u)], false))), !(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(20376u, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_1, 1u)], false), false))), vec2<bool>(var_2, global2.x <= global2.x), _wgslsmith_div_f32(-1994f, _wgslsmith_div_f32(-884f, _wgslsmith_f_op_f32(min(-437f, global2.x)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -339f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-439f))))));
    var_3 = !(!select(!select(vec2<bool>(var_3.x, false), vec2<bool>(var_2, true), vec2<bool>(false, false)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], false), true), select(vec2<bool>(var_2, global0[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(var_2, var_2), true), all(vec4<bool>(true, var_2, true, var_3.x))), select(!vec2<bool>(true, var_3.x), vec2<bool>(true, true), vec2<bool>(true, var_3.x))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, -918f, global2.x))), vec3<f32>(551f, global2.x, global2.x)))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> u32 {
    let var_0 = -1693f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global2.x, 718f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, -1153f), vec3<f32>(-699f, var_0, global2.x))))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 970f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.a), vec4<u32>(arg_2.x, global1.a.x, global1.a.x, 4294967295u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(913f, var_0, 1050f) + vec3<f32>(global2.x, 217f, global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1986f, global2.x, -593f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 2269f, -1000f))) + vec3<f32>(var_0, 1000f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_1.x, -1150f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0, var_0) * vec3<f32>(338f, var_0, 583f))))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.x * var_1.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(var_0))), vec3<f32>(-243f, _wgslsmith_f_op_f32(trunc(global2.x)), var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(1065f, global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -176f)))));
    let var_2 = vec2<bool>(true, true);
    return 55555u;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(reverseBits(u_input.a)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(arg_1.a.zw, global1.a.xw), arg_1.a.x, max(global1.a.x, global1.a.x)))).x * -1284f), _wgslsmith_f_op_f32(max(-216f, _wgslsmith_f_op_f32(-global2.x))));
    let var_0 = !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 1u)], (320u >> (u_input.e % 32u)) <= u_input.a.x));
    global0 = array<bool, 1>();
    let var_1 = arg_0.x;
    var var_2 = Struct_1(min((~u_input.a & firstTrailingBit(vec4<u32>(global1.a.x, arg_1.a.x, global1.a.x, global3[_wgslsmith_index_u32(global1.a.x, 13u)]))) & global1.a, abs(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(33830u, arg_1.a.x, 1u, arg_1.a.x), vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, global1.a.x), false), global1.a, ~arg_1.a))));
    return Struct_1(vec4<u32>(1u, arg_1.a.x, u_input.b, _wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, 1u), 4294967295u)));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(global1.a);
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, global2.x, global2.x))))))), Struct_1(vec4<u32>((global1.a.x | 1u) >> (~1u % 32u), 1u, func_2(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 1u)]), !vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 13u)], 1u)], global0[_wgslsmith_index_u32(u_input.e, 1u)], false), global1.a.xz), var_0.a.x)));
    let var_1 = vec3<i32>(~u_input.c, -63628i, _wgslsmith_clamp_i32(u_input.c, -max(_wgslsmith_sub_i32(u_input.c, u_input.c), 1i), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, -2147483647i, 1i))));
    let var_2 = Struct_1(vec4<u32>(~1u, 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 11205u, 1u), u_input.a.yzz) << (~0u % 32u), 3571u));
    var_0 = Struct_1(global1.a);
    return ~(~max(abs(min(global1.a.x, 0u)), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f * _wgslsmith_f_op_f32(max(-357f, 930f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -446f))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1023f)))))))) < 1f;
    let var_2 = vec2<u32>(~abs(max(~49899u, 83507u)), func_1());
    global0 = array<bool, 1>();
    var var_3 = firstTrailingBit(~(~_wgslsmith_clamp_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(global1.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(68411u, global3[_wgslsmith_index_u32(34322u, 13u)], u_input.d, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(128562u, 13u)], u_input.e, 117211u, global3[_wgslsmith_index_u32(0u, 13u)])))));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(var_2.x, 13u)], u_input.d, 1u, 0u)), firstLeadingBit(u_input.a))).x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)), -105f));
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0, global2.x)), var_0)) - global2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(248f, global2.x, 631f))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(737f - -1045f), _wgslsmith_f_op_f32(-1000f * 1519f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, -2015f, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, global2.x, 1000f) * vec3<f32>(1874f, -995f, global2.x))), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~_wgslsmith_add_u32(global1.a.x, 15752u), _wgslsmith_dot_vec3_u32(global1.a.xxw, min(var_3.yzy, vec3<u32>(var_2.x, 69775u, u_input.d)) ^ ~var_3.wzz) >> (u_input.e % 32u));
}

