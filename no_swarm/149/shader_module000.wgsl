struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 27117u, 5848u, 0u, 4294967295u, 4294967295u, 70509u, 0u, 1u, 7741u, 1u, 1700u, 0u, 36503u, 33837u, 0u, 4294967295u, 16836u, 30756u, 1u, 51036u, 46560u, 14492u, 0u, 0u, 69366u, 4578u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_0 = false;
    return !(!(!all(vec2<bool>(true, arg_0.e)) & all(!vec2<bool>(arg_1.b.e, arg_0.e))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    global0 = array<u32, 29>();
    var var_0 = select(select(vec4<bool>(false, false, func_3(arg_0, Struct_2(Struct_1(vec4<f32>(-115f, arg_0.b, arg_1, 272f), -196f, vec3<f32>(arg_0.b, -1000f, -1000f), vec3<u32>(49381u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), true), Struct_1(vec4<f32>(arg_1, 1000f, arg_1, -249f), 232f, vec3<f32>(1750f, arg_0.a.x, -1000f), vec3<u32>(0u, 0u, 4294967295u), true), 78474u)), !(arg_0.e | arg_0.e)), select(vec4<bool>(false, false, arg_1 != arg_0.a.x, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.e, arg_0.e, false, arg_0.e), vec4<bool>(false, true, false, true)), vec4<bool>(arg_0.e, true, arg_0.e, arg_0.e), vec4<bool>(true, true, true, true)), -2147483647i <= _wgslsmith_add_i32(u_input.d, -9158i)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, arg_0.e, arg_0.e, arg_0.e), true), vec4<bool>(arg_0.e, arg_0.e, true, arg_0.e), true || arg_0.e)), !vec4<bool>(arg_0.e | all(vec3<bool>(false, arg_0.e, false)), true, any(select(vec3<bool>(arg_0.e, false, arg_0.e), vec3<bool>(false, false, false), vec3<bool>(arg_0.e, true, true))), any(select(vec2<bool>(true, false), vec2<bool>(arg_0.e, true), vec2<bool>(arg_0.e, arg_0.e)))), vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-995f + arg_1))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), false && any(select(vec3<bool>(arg_0.e, false, true), vec3<bool>(false, true, arg_0.e), vec3<bool>(arg_0.e, arg_0.e, false))), true, any(vec2<bool>(!arg_0.e, arg_0.e))));
    var var_1 = Struct_1(vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(trunc(arg_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -906f), _wgslsmith_f_op_f32(-822f * _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(arg_1 * arg_1)))), 114f, arg_0.c, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.d, vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec2<u32>(48356u, 22941u)), 8242u), u_input.c.xyw), u_input.c.zwy | u_input.c.wxz, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 29u)], 29u)], 1u), vec2<u32>(1u, 4294967295u)), abs(u_input.a.x), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 29u)], u_input.a.x)) | vec3<u32>(~21503u, countOneBits(arg_0.d.x), 48378u)), all(vec4<bool>(true, var_0.x, false, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(712f * var_1.b)))));
    var_0 = vec4<bool>(select(false, arg_0.e, var_0.x), arg_0.e, all(select(select(!vec2<bool>(var_1.e, var_0.x), var_0.wy, arg_1 > -737f), vec2<bool>(all(vec4<bool>(false, false, arg_0.e, true)), false), var_0.x)), true);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1885f)) + arg_0.b) - arg_1), 1739f, arg_1, _wgslsmith_f_op_f32(995f + _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(arg_0.b, arg_0.a.b));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(858f, -532f, false)) - arg_0.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-774f + -373f) * _wgslsmith_f_op_f32(f32(-1f) * -1712f)), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1412f, arg_1.x, -831f, 1929f)), _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1670f, -553f)), ~arg_0.a.d, arg_0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.b.a.x, arg_0.a.b, arg_0.a.e)))) * 334f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(var_0.xx)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.c.x, arg_0.a.a.x) + arg_0.a.c.yz), _wgslsmith_f_op_vec2_f32(-var_0.xy))))));
    var var_2 = 0u;
    return select(!select(vec3<bool>(arg_0.a.e, true, !arg_0.a.e), !(!vec3<bool>(true, arg_0.b.e, true)), vec3<bool>(all(vec2<bool>(true, arg_0.b.e)), !arg_0.b.e, true)), select(!(!select(vec3<bool>(false, arg_0.a.e, arg_0.b.e), vec3<bool>(arg_0.b.e, arg_0.b.e, true), true)), vec3<bool>(true, func_3(arg_0.b, Struct_2(Struct_1(arg_0.a.a, var_1.x, vec3<f32>(1118f, var_1.x, -790f), vec3<u32>(1u, arg_0.a.d.x, 0u), arg_0.b.e), Struct_1(arg_0.a.a, -1648f, vec3<f32>(arg_0.b.b, arg_0.a.a.x, var_0.x), arg_2.wzw, arg_0.b.e), 124294u)) || true, arg_0.a.e), vec3<bool>(arg_0.b.e, true, true)), select(select(!vec3<bool>(false, arg_0.a.e, arg_0.b.e), select(!vec3<bool>(true, false, arg_0.b.e), !vec3<bool>(arg_0.b.e, arg_0.b.e, true), vec3<bool>(true, true, arg_0.a.e)), true), select(select(select(vec3<bool>(true, arg_0.b.e, arg_0.b.e), vec3<bool>(arg_0.b.e, false, arg_0.a.e), arg_0.a.e), select(vec3<bool>(true, true, arg_0.a.e), vec3<bool>(true, arg_0.a.e, false), vec3<bool>(arg_0.a.e, true, arg_0.a.e)), true), select(vec3<bool>(false, arg_0.a.e, arg_0.a.e), vec3<bool>(true, false, false), arg_0.a.e), select(!vec3<bool>(arg_0.a.e, true, true), select(vec3<bool>(true, true, arg_0.a.e), vec3<bool>(arg_0.b.e, arg_0.a.e, false), vec3<bool>(arg_0.a.e, arg_0.b.e, false)), vec3<bool>(arg_0.a.e, false, arg_0.a.e))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    let var_0 = ~1u;
    var var_1 = vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), 1f), 1062f);
    let var_2 = global0[_wgslsmith_index_u32(38540u, 29u)];
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * var_1.x) * -419f)), _wgslsmith_f_op_f32(var_1.x + 862f), var_1.x)));
    global0 = array<u32, 29>();
    var var_3 = _wgslsmith_add_u32(1u, ~u_input.c.x);
    var var_4 = vec4<bool>(true, false, false, any(select(func_1(Struct_2(Struct_1(vec4<f32>(var_1.x, var_1.x, -176f, var_1.x), 837f, vec3<f32>(var_1.x, var_1.x, -517f), vec3<u32>(global0[_wgslsmith_index_u32(35113u, 29u)], 13430u, var_0), true), Struct_1(vec4<f32>(205f, var_1.x, -117f, -803f), -620f, vec3<f32>(var_1.x, 127f, var_1.x), vec3<u32>(global0[_wgslsmith_index_u32(var_0, 29u)], global0[_wgslsmith_index_u32(var_0, 29u)], u_input.c.x), false), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, var_1.x, -1000f, 684f)), ~u_input.c), func_1(Struct_2(Struct_1(vec4<f32>(-615f, var_1.x, var_1.x, 925f), 2167f, vec3<f32>(726f, 1695f, var_1.x), u_input.c.yyw, true), Struct_1(vec4<f32>(-1000f, var_1.x, var_1.x, 312f), -1000f, vec3<f32>(var_1.x, -1555f, 1359f), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)], 29u)], u_input.a.x, u_input.a.x), false), 7419u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, var_1.x, 996f, var_1.x) + vec4<f32>(679f, var_1.x, var_1.x, 189f)), u_input.c), true)));
    var_4 = !select(vec4<bool>(any(func_1(Struct_2(Struct_1(vec4<f32>(-1121f, var_1.x, var_1.x, var_1.x), var_1.x, vec3<f32>(var_1.x, var_1.x, var_1.x), u_input.c.xxw, true), Struct_1(vec4<f32>(var_1.x, var_1.x, 548f, -329f), var_1.x, vec3<f32>(var_1.x, var_1.x, var_1.x), u_input.c.wxy, true), 11443u), vec4<f32>(var_1.x, -789f, -642f, var_1.x), u_input.c).xz), var_4.x, true, true), select(select(vec4<bool>(false, true, var_4.x, false), !vec4<bool>(true, true, false, var_4.x), vec4<bool>(var_4.x, true, var_4.x, false)), !vec4<bool>(true, var_4.x, true, var_4.x), !vec4<bool>(false, true, var_4.x, var_4.x)), var_0 > _wgslsmith_add_u32(~var_0, _wgslsmith_mult_u32(0u, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-35830i));
}

