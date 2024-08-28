struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(-14116i, i32(-2147483648), -41450i, 10009i), -592f, 2158f), Struct_1(vec4<i32>(47679i, 0i, -894i, 3146i), -1433f, 568f), Struct_1(vec4<i32>(59907i, 2147483647i, 62248i, 0i), -1425f, -113f), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, -25852i), 288f, -434f), Struct_1(vec4<i32>(211i, 39147i, 0i, -38843i), 454f, -607f), Struct_1(vec4<i32>(-39149i, 24008i, 1i, 34438i), 430f, -433f));

var<private> global2: vec2<bool>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.a), global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), -539f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a + 235f))), global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a), global3.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), global3.a)), global3.a));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_mod_u32(u_input.b, 23054u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(global2.x, global2.x, true, global2.x), vec3<i32>(u_input.a.x, 1i, -23837i), vec2<bool>(global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, 675f, -1279f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.a, global3.a, -1791f, global3.a), vec4<f32>(global3.a, global3.a, global3.a, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1481f, global3.a, 548f, 1493f) * vec4<f32>(global3.a, global3.a, global3.a, -1000f)), global2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, -153f, -436f, global3.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(344f, global3.a, -452f, global3.a), vec4<f32>(global3.a, 1906f, global3.a, -508f)))))))));
    return select(select(select(vec2<bool>(!global2.x, false), vec2<bool>(global2.x, !global2.x), true), select(!vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, false), vec2<bool>(true, true), -3345i > u_input.a.x), false), true), select(select(select(select(vec2<bool>(true, global2.x), vec2<bool>(true, true), vec2<bool>(global2.x, false)), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, false), global2.x), global2.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true || global2.x), vec2<bool>(any(vec3<bool>(global2.x, global2.x, false)), false), u_input.a.x <= firstLeadingBit(-4618i)), false);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_4 {
    let var_0 = select(select(select(vec3<bool>(true, arg_0, !global2.x), !(!vec3<bool>(false, true, global2.x)), !arg_0), vec3<bool>(true, global2.x, 1u < u_input.c.x), arg_0), !(!select(vec3<bool>(global2.x, arg_0, arg_0), select(vec3<bool>(false, global2.x, true), vec3<bool>(arg_0, global2.x, global2.x), vec3<bool>(true, false, arg_0)), all(vec4<bool>(arg_0, arg_0, global2.x, true)))), select(select(select(select(vec3<bool>(true, global2.x, arg_0), vec3<bool>(arg_0, false, true), arg_0), vec3<bool>(arg_0, true, false), global2.x), vec3<bool>(func_2().x, true, u_input.a.x <= 1i), vec3<bool>(true, true, true)), vec3<bool>(arg_0, !select(arg_0, false, arg_0), !arg_0), arg_0));
    var var_1 = u_input.b;
    var var_2 = -706f;
    var var_3 = -1i;
    global2 = var_0.zz;
    return Struct_4(abs(8617u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(288f - -754f), -1000f, _wgslsmith_f_op_f32(step(597f, arg_1.a)), -690f)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = ~reverseBits(firstLeadingBit(select(74841u, u_input.c.x << (26314u % 32u), false)));
    let var_1 = func_4(all(!func_2()), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(604f, -662f)), 266f, 799f, _wgslsmith_f_op_f32(-531f - global3.a)))));
    global1 = array<Struct_1, 6>();
    let var_2 = !(!func_2());
    var var_3 = _wgslsmith_add_u32(~reverseBits(~var_0), _wgslsmith_sub_u32(14765u, countOneBits(u_input.b)));
    return all(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(2147483647i, u_input.a.x, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a.x), u_input.a)));
    var var_1 = !vec3<bool>(func_1(_wgslsmith_dot_vec2_i32(~u_input.a.xy, vec2<i32>(var_0.x, var_0.x)), Struct_1(var_0, 546f, _wgslsmith_f_op_f32(-global3.a)), Struct_2(1043f)), (true & global2.x) == global2.x, false);
    global2 = vec2<bool>(global3.a >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a, -2493f)) * 674f), global3.a), !(919f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-742f, -223f)))));
    var var_2 = global0[_wgslsmith_index_u32(~1u, 4u)];
    let var_3 = u_input.b != 8952u;
    let var_4 = select(4294967295u, ~_wgslsmith_div_u32(u_input.c.x, (u_input.c.x ^ u_input.b) | _wgslsmith_dot_vec3_u32(u_input.c.wyx, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), select((var_0.x == _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, 2147483647i), var_0.zww)) || select(var_1.x, var_2.a, any(vec3<bool>(var_1.x, false, var_3))), select(var_3, any(vec2<bool>(true, false)), true), false));
    var_2 = Struct_3(global2.x, var_2.b, -406f);
    let var_5 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2452f + 1330f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f) - _wgslsmith_f_op_f32(global3.a * 574f))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(false, var_5, var_2.b).b, _wgslsmith_div_f32(global3.a, 588f), vec3<i32>(-31136i, ~(u_input.a.x << (_wgslsmith_mod_u32(var_4, var_4) % 32u)), _wgslsmith_clamp_i32(-1i | select(u_input.a.x, -2147483647i, var_2.a), var_0.x, -u_input.a.x)), -var_0.zxx);
}

