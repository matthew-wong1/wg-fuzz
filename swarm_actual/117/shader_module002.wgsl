struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-581f, 479f, -390f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(~(~abs(u_input.b.x)), ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(vec2<u32>(4294967295u, 1u)) ^ u_input.c));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(189f - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(1054f - _wgslsmith_f_op_f32(137f * global0.x)), true)), 1189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) * _wgslsmith_f_op_f32(-global0.x)), 1544f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1706f, global0.x, -455f))), _wgslsmith_div_vec3_f32(vec3<f32>(-405f, global0.x, global0.x), vec3<f32>(892f, global0.x, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1467f, 1520f, 240f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -315f, global0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x) * vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(746f)), global0.x)));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(2288i >> (var_0.x % 32u)), -40508i), _wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-59661i, 1i)), vec2<i32>(-29777i, -1i)), max(firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, 0i), ~20178i))), vec2<i32>(1i, 1i));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(608f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x)))) + _wgslsmith_f_op_f32(round(global0.x))))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1295f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), global0.x));
    let var_0 = 25121u;
    var var_1 = Struct_2(~(~0u), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(round(435f))))))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1420f - _wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))))));
    var_1 = Struct_2(~countOneBits(abs(4294967295u) >> (var_0 % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * -1657f)))), Struct_1(_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-var_1.b));
    let var_2 = ~(~vec3<u32>(max(~0u, 1u), select(44146u, reverseBits(77862u), var_1.a >= 4294967295u), _wgslsmith_mult_u32(4283u, var_0) | var_1.a));
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-687f, -1000f, global0.x, -1634f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.d, var_1.c.a, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(555f, var_1.d, 1000f, var_1.d) + vec4<f32>(433f, var_1.b, -916f, global0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.c.a), 125f, _wgslsmith_div_f32(500f, var_1.c.a)) - vec4<f32>(_wgslsmith_f_op_f32(abs(368f)), global0.x, _wgslsmith_f_op_f32(min(global0.x, 319f)), global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.a, var_1.d, global0.x, global0.x), vec4<f32>(var_1.b, global0.x, global0.x, 1584f), true)) * vec4<f32>(673f, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, var_1.c.a, global0.x, var_1.c.a), vec4<f32>(-212f, -1177f, var_1.c.a, global0.x)))))))));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, global0.x, global0.x, -803f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, -404f, 1124f, global0.x)))), vec4<f32>(-254f, 473f, _wgslsmith_f_op_f32(trunc(-599f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-932f, _wgslsmith_f_op_f32(abs(1904f)))), -839f))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(1i, 28832i, -2147483647i))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1281f, -1718f, 689f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1610f, var_0.x, global0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 1340f, var_0.x, -890f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, 173f, global0.x, var_0.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1048f, var_0.x, global0.x), vec4<f32>(var_0.x, global0.x, var_0.x, -356f))))))));
    var var_1 = !select(!vec3<bool>(arg_0, false, false), select(select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, true), true), vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, false))), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, arg_0), vec3<bool>(false, arg_0, arg_0)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), true), arg_0), all(vec4<bool>(select(true, false, arg_0), -756f < var_0.x, true, any(vec2<bool>(true, false)))));
    global0 = _wgslsmith_f_op_vec3_f32(-var_0.yzw);
    let var_2 = vec2<bool>((-550f != _wgslsmith_div_f32(-1094f, _wgslsmith_f_op_f32(sign(var_0.x)))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1419f * global0.x) - -852f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.zxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-980f, global0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_2.x, arg_0, false))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, var_0.x, -1593f) - vec3<f32>(global0.x, 1000f, -1158f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1130f, global0.x)), vec3<f32>(-1206f, global0.x, 724f), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * 260f))), global0.x, _wgslsmith_f_op_f32(global0.x + -690f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -1787f), -1714f))));
    var var_1 = Struct_2(~abs(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), -444f, Struct_1(_wgslsmith_f_op_f32(exp2(global0.x))), -832f);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(-var_1.d)))));
    var var_2 = Struct_2(~abs(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(u_input.b.xz, u_input.b.xz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1013f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.a)))), var_1.c, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec2<i32>(2147483647i, 1i));
}

