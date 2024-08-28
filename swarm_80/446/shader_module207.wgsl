struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<i32, 20> = array<i32, 20>(2147483647i, i32(-2147483648), i32(-2147483648), 1553i, 12587i, -59402i, -1i, 0i, -6818i, -3273i, -20936i, -8474i, -13263i, 34938i, -1171i, 1i, 14633i, 1i, 54663i, 299i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(true, true, true), abs(-global2[_wgslsmith_index_u32(~(~83080u), 20u)]));
    var_0 = Struct_1(var_0.a, var_0.b);
    global2 = array<i32, 20>();
    var_0 = Struct_1(select(!(!select(var_0.a, var_0.a, global1.x)), !var_0.a, all(vec2<bool>(true, true))), _wgslsmith_div_i32(~(-global2[_wgslsmith_index_u32(18750u, 20u)]) & ~(i32(-1i) * -56878i), -32864i));
    let var_1 = vec2<bool>(any(var_0.a.zx), !all(vec2<bool>(true, true)));
    return select(!(!select(vec3<bool>(global1.x, true, global1.x), !var_0.a, var_0.a.x)), var_0.a, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = vec3<u32>(arg_0.x, global0.x, ~firstLeadingBit(arg_0.x));
    let var_1 = Struct_2(u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(arg_2, 619f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1451f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), arg_2)));
    global1 = select(select(!vec3<bool>(global1.x, global1.x, global1.x), select(!vec3<bool>(arg_1, global1.x, arg_1), select(!vec3<bool>(false, false, arg_1), select(vec3<bool>(true, false, true), vec3<bool>(true, global1.x, global1.x), arg_1), select(vec3<bool>(true, arg_1, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, false))), !func_3()), !all(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, true, false, global1.x)))), select(select(vec3<bool>(global1.x, true, false & arg_1), !(!vec3<bool>(global1.x, true, true)), vec3<bool>(select(true, true, arg_1), !global1.x, true)), vec3<bool>(!any(vec2<bool>(global1.x, arg_1)), global1.x, !(!global1.x)), arg_1 | all(vec4<bool>(global1.x, false, false, arg_1))), !select(select(!vec3<bool>(false, arg_1, true), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, arg_1, true)), true), func_3(), arg_1));
    var_0 = arg_0;
    global2 = array<i32, 20>();
    return all(vec4<bool>(_wgslsmith_f_op_f32(min(266f, arg_2)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), false, !any(vec2<bool>(false, global1.x)) | ((global1.x | arg_1) | false), global1.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = arg_1.e.x;
    var var_1 = select(vec2<bool>(true, arg_0.x), vec2<bool>(func_2(global0.yxx, !(!arg_1.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x + 605f), _wgslsmith_div_f32(arg_1.b.x, 1760f))), !select(true, true, arg_1.c.a.x && global1.x)), select(!select(!vec2<bool>(arg_1.c.a.x, global1.x), global1.yx, arg_0.x), !select(select(arg_0.yx, vec2<bool>(global1.x, false), false), global1.yx, -553f > arg_1.b.x), !select(select(vec2<bool>(global1.x, arg_0.x), vec2<bool>(true, arg_1.e.x), global1.x), !global1.xx, arg_0.x)));
    var_1 = select(vec2<bool>(arg_1.c.a.x, any(!vec3<bool>(arg_0.x, global1.x, true)) && false), arg_0.wx, arg_0.x);
    let var_2 = vec4<i32>(i32(-1i) * -40620i, global2[_wgslsmith_index_u32(global0.x, 20u)], _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(11215u, 1u), 20u)], 0i)), reverseBits(arg_1.d)), ~(~arg_1.c.b));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-420f))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(true, !global1.x, ~1u == reverseBits(max(1u, u_input.b))), -2147483647i);
    let var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(func_1(!vec4<bool>(true, var_0.a.x, true, var_0.a.x), Struct_3(4294967295u, vec3<f32>(885f, 361f, 424f), Struct_1(var_0.a, var_0.b), u_input.c, var_0.a), -2147483647i | global2[_wgslsmith_index_u32(u_input.b, 20u)]), ~25861u), ~(_wgslsmith_add_u32(4294967295u, u_input.d.x) >> (44685u % 32u))), _wgslsmith_div_u32(87345u, 4294967295u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(75043u, func_1(vec4<bool>(var_0.a.x, false, var_0.a.x, false), Struct_3(global0.x, vec3<f32>(666f, 1248f, 958f), Struct_1(vec3<bool>(false, var_0.a.x, global1.x), global2[_wgslsmith_index_u32(global0.x, 20u)]), u_input.c, vec3<bool>(var_0.a.x, var_0.a.x, global1.x)), -27016i)), _wgslsmith_div_u32(u_input.a, ~global0.x)), 4294967295u, ~_wgslsmith_div_u32(global0.x, u_input.a)));
    let var_2 = Struct_1(select(var_0.a, func_3(), true), var_0.b);
    let var_3 = Struct_3(_wgslsmith_dot_vec3_u32(reverseBits(~var_1), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 42769u), vec3<u32>(1u, 0u, u_input.b)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-652f, -1015f, -607f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 244f, -735f) * vec3<f32>(1586f, 250f, -1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(900f, -1353f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(182f)) * _wgslsmith_f_op_f32(sign(1364f)))))), var_2, u_input.c, var_0.a);
    var var_4 = !select(vec4<bool>(true, false, true, all(vec4<bool>(var_2.a.x, true, var_2.a.x, var_3.c.a.x)) | true), select(select(!vec4<bool>(true, false, true, var_2.a.x), vec4<bool>(var_0.a.x, var_3.c.a.x, true, true), select(vec4<bool>(false, false, var_3.c.a.x, false), vec4<bool>(true, var_3.c.a.x, true, var_3.e.x), var_2.a.x)), vec4<bool>(all(vec4<bool>(true, var_2.a.x, global1.x, false)), !var_0.a.x, any(var_2.a.xz), false), vec4<bool>(27868u > global0.x, !var_2.a.x, u_input.d.x >= 8400u, var_0.a.x)), any(!(!var_2.a)));
    global1 = vec3<bool>(true && !(var_3.b.x != _wgslsmith_div_f32(var_3.b.x, var_3.b.x)), !all(vec2<bool>(var_3.c.a.x, true)), _wgslsmith_add_u32(~u_input.b, var_3.a) < reverseBits(min(104651u, 4294967295u) | ~var_3.a));
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.b.x)) + _wgslsmith_f_op_f32(step(var_3.b.x, 578f))), -1507f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-725f)))), _wgslsmith_f_op_f32(max(433f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b.x + var_3.b.x)))))));
    global1 = !vec3<bool>(func_2(select(select(vec3<u32>(u_input.b, var_3.a, u_input.b), vec3<u32>(5336u, u_input.d.x, var_1.x), vec3<bool>(var_2.a.x, true, true)), max(vec3<u32>(var_1.x, var_1.x, global0.x), vec3<u32>(u_input.d.x, u_input.b, global0.x)), var_3.e.x), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-481f, 328f) - _wgslsmith_f_op_f32(min(var_3.b.x, 550f)))), true, var_2.a.x);
    var_0 = Struct_1(!func_3(), ~countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, var_2.b), -19948i)));
    let x = u_input.a;
    s_output = StorageBuffer(136f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-360f)) * _wgslsmith_f_op_f32(var_3.b.x - 604f))), _wgslsmith_f_op_f32(trunc(-751f))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -212f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) - _wgslsmith_f_op_f32(var_5.x * 2923f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-918f * var_5.x) * _wgslsmith_f_op_f32(-var_3.b.x))), var_3.b.x), ~_wgslsmith_mod_u32(~var_1.x, _wgslsmith_add_u32(global0.x, var_1.x) & 1u));
}

