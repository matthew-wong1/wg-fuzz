struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27>;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-977f, -345f), vec3<f32>(-1483f, -305f, 913f), vec2<bool>(true, true));

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-338f, 460f), vec3<f32>(1188f, 1000f, -277f), vec2<bool>(true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = select(!(!(!(!vec4<bool>(true, false, true, arg_0.c.x)))), vec4<bool>(global4.c.x, any(select(!vec4<bool>(false, global4.c.x, false, true), !vec4<bool>(global3.c.x, false, global3.c.x, global4.c.x), global0.c.x)), global0.c.x, !arg_0.c.x), vec4<bool>(!all(global4.c), arg_0.c.x, true, ((u_input.e.x > u_input.e.x) & select(true, global3.c.x, global4.c.x)) == (false | global0.c.x)));
    global0 = Struct_1(global4.b.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.b, global4.b)))))), vec2<bool>(global3.c.x, !all(select(var_0.ywz, vec3<bool>(global4.c.x, global0.c.x, false), vec3<bool>(false, global0.c.x, true)))));
    var var_1 = any(select(!vec2<bool>(select(global4.c.x, var_0.x, false), var_0.x), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), arg_0.c.x)), -(-325i ^ u_input.e.x) <= 1i));
    let var_2 = arg_0;
    global4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b.xx)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1351f * var_2.b.x), var_2.a.x) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -2609f) - vec2<f32>(global4.a.x, -606f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, global4.a.x, global3.a.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a.x))), global0.a.x)), !var_2.c);
    return false | global0.c.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<bool>(func_3(arg_1, ~vec4<u32>(~4294967295u, abs(48942u), ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(24214u, arg_3, 41935u, u_input.b.x), vec4<u32>(36149u, arg_3, 19366u, 0u))), vec4<u32>(max(arg_3, 1u), ~(~arg_3), _wgslsmith_mod_u32(~4294967295u, u_input.b.x), 4294967295u)), true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0.c.x, false, global4.c.x), arg_2.x), select(select(vec4<bool>(true, true, arg_1.c.x, false), vec4<bool>(arg_2.x, global4.c.x, global3.c.x, global4.c.x), true), vec4<bool>(global0.c.x, global0.c.x, arg_1.c.x, false), vec4<bool>(global3.c.x, global3.c.x, true, arg_2.x)), global4.c.x)));
    var var_1 = arg_1;
    var var_2 = Struct_1(vec2<f32>(459f, global0.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, arg_1.a.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, -953f, var_1.b.x)))))), !select(vec2<bool>(arg_1.c.x, arg_1.c.x), select(!global4.c, vec2<bool>(true, false), all(vec3<bool>(false, false, global4.c.x))), true));
    var var_3 = ~_wgslsmith_add_i32(u_input.e.x, ~_wgslsmith_clamp_i32(2147483647i, ~(-1i), 53716i));
    return arg_1;
}

fn func_1() -> vec4<f32> {
    global4 = func_2(25359i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, countOneBits(~51767u)), 27u)], select(!select(select(vec2<bool>(false, true), vec2<bool>(global3.c.x, global0.c.x), global3.c.x), vec2<bool>(true, true), false), !vec2<bool>(global4.c.x, all(vec2<bool>(global3.c.x, false))), any(!vec3<bool>(true, global3.c.x, global0.c.x))), ~3337u);
    global4 = global1[_wgslsmith_index_u32(~max(firstLeadingBit(u_input.d), min(~u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.d, 0u), vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.d)))), 27u)];
    var var_0 = func_2(~(-1i), func_2(max(_wgslsmith_clamp_i32(-68250i, -1i, -2174i) | -12962i, 1i), global1[_wgslsmith_index_u32(~firstLeadingBit(~4294967295u), 27u)], !(!global0.c), 4294967295u), !func_2(~0i, func_2(u_input.e.x & -26904i, global1[_wgslsmith_index_u32(u_input.c.x, 27u)], select(vec2<bool>(false, false), global4.c, global4.c), 1u), global3.c, abs(85358u & u_input.c.x)).c, u_input.d);
    let var_1 = u_input.e.xyy;
    var var_2 = vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(trunc(func_2(var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], vec2<bool>(true, global4.c.x), ~u_input.d).a.x)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.a.x)), 899f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, global0.a.x, var_2.x), vec4<f32>(-696f, global4.a.x, global3.a.x, -378f))))))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, -1402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.a.x) * _wgslsmith_f_op_f32(1502f * global0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.x - global3.b.x), -1000f, select(true, global3.c.x, var_0.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, global0.b.x, global3.b.x, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global3.b.x, -460f, -546f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-205f, -853f, global0.a.x, global0.a.x), vec4<f32>(539f, -1233f, global3.b.x, -1398f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.a.x * -984f), _wgslsmith_f_op_f32(global4.a.x - global0.b.x), -1032f, 881f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))))));
    var var_1 = select(!select(!select(vec3<bool>(global3.c.x, global0.c.x, global3.c.x), vec3<bool>(false, true, global3.c.x), global0.c.x), vec3<bool>(false, global4.c.x | false, true), global3.c.x), vec3<bool>(global0.c.x, -234f != _wgslsmith_f_op_f32(floor(var_0.x)), global4.c.x), select(global0.c.x, !global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(abs(-335f))) < -124f));
    var_1 = select(!select(vec3<bool>(true, false, -2147483647i <= u_input.e.x), vec3<bool>(false, any(vec4<bool>(global3.c.x, true, false, true)), true), select(vec3<bool>(var_1.x, global3.c.x, var_1.x), select(vec3<bool>(false, global3.c.x, false), vec3<bool>(global0.c.x, global3.c.x, false), global0.c.x), select(vec3<bool>(var_1.x, false, global4.c.x), vec3<bool>(var_1.x, true, global3.c.x), vec3<bool>(false, false, global4.c.x)))), select(!(!(!vec3<bool>(global3.c.x, true, true))), vec3<bool>(global4.c.x, var_1.x, false), !select(select(vec3<bool>(true, global0.c.x, global0.c.x), vec3<bool>(false, true, global3.c.x), false), !vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, global3.c.x, true))), true);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(524f, 391f, true))), _wgslsmith_div_f32(var_0.x, -652f), var_0.x))));
    var var_3 = global1[_wgslsmith_index_u32(42382u, 27u)];
    global4 = func_2(2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a), vec3<f32>(global4.b.x, var_2.x, global3.a.x), var_1.xy), func_2(-firstTrailingBit(-2147483647i | u_input.e.x), global1[_wgslsmith_index_u32(u_input.d, 27u)], !func_2(u_input.e.x, func_2(u_input.e.x, Struct_1(vec2<f32>(var_2.x, -640f), vec3<f32>(1020f, -223f, -793f), vec2<bool>(global4.c.x, global3.c.x)), vec2<bool>(true, var_3.c.x), u_input.a), global4.c, u_input.b.x).c, ~u_input.c.x).c, 88103u);
    global2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, _wgslsmith_sub_u32(u_input.c.x, u_input.b.x)) ^ vec2<u32>(0u, 11489u), ~u_input.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(var_3.b.x + var_2.x), _wgslsmith_f_op_f32(select(func_2(13093i, global1[_wgslsmith_index_u32(u_input.d, 27u)], global0.c, u_input.c.x).a.x, _wgslsmith_f_op_f32(-1010f - -846f), global4.c.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(488f, global3.a.x, 142f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_0.x, 1242f)))) + vec3<f32>(-890f, _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_dot_vec3_i32(min(u_input.e.zyy, -(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x) | u_input.e.zxx)), -(-vec3<i32>(u_input.e.x, -1i, 24777i) >> (vec3<u32>(4294967295u, u_input.d, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-182f, -1600f, -332f), _wgslsmith_f_op_vec3_f32(-global0.b))) * global0.b));
}

