struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true), 4294967295u, vec2<bool>(true, true), vec4<f32>(462f, 2338f, -1588f, -674f)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false), 47456u, vec2<bool>(false, true), vec4<f32>(-365f, -757f, -493f, 736f)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), 0u, vec2<bool>(false, true), vec4<f32>(-181f, 397f, 525f, -1000f)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), 0u, vec2<bool>(true, true), vec4<f32>(1000f, -947f, -1054f, 353f)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), 23753u, vec2<bool>(true, true), vec4<f32>(-909f, -478f, -625f, 1354f)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), 12471u, vec2<bool>(true, false), vec4<f32>(-675f, -205f, 270f, 1308f)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, true), 2030u, vec2<bool>(true, true), vec4<f32>(-1000f, 246f, -1503f, -234f)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true), 1u, vec2<bool>(false, false), vec4<f32>(2370f, -1477f, 660f, 1000f)), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true), 9613u, vec2<bool>(false, false), vec4<f32>(-1775f, -134f, 199f, -1020f)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), 12586u, vec2<bool>(false, true), vec4<f32>(1000f, -415f, -476f, 734f)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, true), 1u, vec2<bool>(false, true), vec4<f32>(-1000f, 1505f, 710f, 105f)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), 45187u, vec2<bool>(false, true), vec4<f32>(-1464f, -1703f, -344f, -176f)), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true), 20638u, vec2<bool>(false, false), vec4<f32>(1825f, -331f, 574f, 1581f)));

var<private> global1: vec2<f32>;

var<private> global2: vec2<bool>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = any(!vec3<bool>(false, global3.x, false));
    global2 = vec2<bool>(var_0, 799f > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1652f, global1.x) + -2600f));
    return select(vec4<bool>(global2.x, !global3.x, any(vec3<bool>(true, true, true)), var_0), vec4<bool>(true, true, true, true), vec4<bool>(!all(select(vec3<bool>(false, var_0, global3.x), vec3<bool>(global2.x, false, false), vec3<bool>(var_0, global2.x, global3.x))), true, 2147483647i == u_input.c, true));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.e.wyz;
    let var_1 = Struct_1(vec4<bool>(!global2.x, global3.x, (_wgslsmith_f_op_f32(-var_0.x) == 634f) || arg_1.a.x, !(!arg_1.d.x) && global2.x), !arg_1.b, arg_1.c, !(!select(select(vec2<bool>(false, global2.x), arg_1.b, true), !vec2<bool>(true, global2.x), any(arg_1.a.xy))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1227f, 1000f, _wgslsmith_f_op_f32(-arg_1.e.x), global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, global1.x, global1.x, -701f))), arg_1.e)));
    var var_2 = Struct_1(select(vec4<bool>(false, any(func_3()), arg_1.b.x || arg_1.a.x, all(!vec2<bool>(arg_1.b.x, false))), vec4<bool>(true, global3.x, false, var_0.x < 649f), select(!var_1.a, select(arg_1.a, func_3(), arg_1.a.x), var_1.a)), vec2<bool>(false, max(0u, 2999u) < ((arg_1.c << (0u % 32u)) ^ ~arg_1.c)), arg_0, arg_1.a.zw, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1292f, var_1.e.x, global1.x), vec4<f32>(var_1.e.x, arg_1.e.x, arg_1.e.x, -1201f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -1349f, global1.x, var_0.x) - arg_1.e), arg_1.a)))));
    var var_3 = Struct_1(func_3(), !vec2<bool>(any(arg_1.a), true), select(~_wgslsmith_mod_u32(0u, 4294967295u) & (arg_1.c ^ 4294967295u), ~abs(~u_input.a), arg_1.b.x), !vec2<bool>(false, (arg_1.e.x < global1.x) || any(var_2.a)), var_1.e);
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.e.zy * _wgslsmith_f_op_vec2_f32(select(arg_1.e.zx, vec2<f32>(var_3.e.x, 467f), var_2.a.ww))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(980f, global1.x), var_3.e.zz, !(!var_2.a.xw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.e.ww, vec2<f32>(1094f, -384f)))))), !(!vec2<bool>(false, var_3.a.x))));
    return arg_1.d.x | all(vec4<bool>(true, true, true, u_input.b.x < ~2147483647i));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: f32) -> vec4<bool> {
    var var_0 = vec4<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(sign(-1290f)), _wgslsmith_f_op_f32(arg_1 - -339f));
    global0 = array<Struct_1, 13>();
    var var_1 = vec3<bool>(firstLeadingBit(1i) > u_input.d.x, true, !(global3.x & select(!global2.x, any(vec2<bool>(false, true)), false)));
    var var_2 = 1u;
    var var_3 = -872f;
    return !select(vec4<bool>(-u_input.c != _wgslsmith_mod_i32(0i, u_input.b.x), true && all(vec4<bool>(false, var_1.x, global2.x, true)), global3.x, func_2(arg_0.c, arg_0) && all(vec4<bool>(true, var_1.x, false, false))), arg_0.a, !vec4<bool>(false && global2.x, var_1.x || false, true, true));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 13>();
    let var_0 = arg_2.e.zy;
    global0 = array<Struct_1, 13>();
    let var_1 = Struct_1(arg_2.a, arg_2.b, arg_2.c, !func_1(global0[_wgslsmith_index_u32(arg_2.c, 13u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1274f + 796f))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.d.x, 16418i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(0i, u_input.c, -1i, u_input.b.x), vec4<i32>(-1i, u_input.c, -2147483647i, -1i))), _wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(round(1446f)))).yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -205f, -621f, 413f), _wgslsmith_f_op_vec4_f32(arg_2.e * arg_3), select(arg_2.a, arg_2.a, false)))) * vec4<f32>(_wgslsmith_f_op_f32(arg_2.e.x * arg_2.e.x), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) * global1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x)))))));
    var var_2 = u_input.b;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(u_input.a >= 0u, true, all(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, global2.x, global2.x), global3.x), select(vec3<bool>(true, false, global2.x), vec3<bool>(false, global2.x, true), vec3<bool>(true, true, true)), !(global2.x & global2.x))));
    let var_1 = _wgslsmith_mod_vec4_u32(abs(~(~(~vec4<u32>(0u, u_input.a, 0u, 79973u)))), vec4<u32>(~1u, u_input.a, 1u, func_4(_wgslsmith_f_op_f32(-global1.x), !vec2<bool>(global2.x, global3.x), Struct_1(func_1(Struct_1(vec4<bool>(var_0.x, true, true, false), var_0.xy, u_input.a, vec2<bool>(global2.x, global2.x), vec4<f32>(1253f, -1636f, -2958f, global1.x)), global1.x, 23207i, global1.x), !vec2<bool>(true, global3.x), 49836u, func_3().wx, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1559f, global1.x, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, 1111f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))));
    global2 = var_0.zy;
    let var_2 = abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(35448u & var_1.x), _wgslsmith_dot_vec4_u32(var_1, ~vec4<u32>(4294967295u, var_1.x, 1u, var_1.x))), reverseBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, firstTrailingBit(select(var_1.x, (u_input.a ^ 4294967295u) >> (_wgslsmith_mod_u32(var_1.x, var_1.x) % 32u), func_1(global0[_wgslsmith_index_u32(max(30588u, var_2), 13u)], _wgslsmith_f_op_f32(915f * 1191f), u_input.c, -341f).x)), 1i);
}

