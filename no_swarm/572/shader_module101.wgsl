struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 42663i);

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<f32>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(max(-1925f, 1403f));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global0 = arg_3;
    let var_0 = vec3<f32>(634f, _wgslsmith_f_op_f32(sign(-540f)), _wgslsmith_f_op_f32(step(arg_2.a.x, -1488f)));
    global1 = ~(abs(~vec3<u32>(global1.x, 0u, 1u)) >> (u_input.a % vec3<u32>(32u)));
    global0 = arg_3;
    var var_1 = arg_2.e;
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_0.e.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.a.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-578f, 1728f), _wgslsmith_f_op_f32(arg_0.a.a.x + 1349f), _wgslsmith_div_f32(arg_0.e.a.x, arg_0.e.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32((u_input.a.x & arg_2.a) ^ global0.a, 11u)] * global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(arg_2.a, 8251u)), 11u)])));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global0.a, 11u)])))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.zx), ~global0.a, ~arg_2.a, min(global1.x, u_input.a.x)) | ~vec4<u32>(0u, global0.a, arg_2.a, u_input.a.x), arg_0.e.c, !(!any(vec3<bool>(true, false, arg_1))), true), arg_0.d, ~(-arg_0.c), Struct_1(arg_2.a, -2147483647i), arg_0.a);
    let var_2 = Struct_1(4294967295u, -2147483647i);
    let var_3 = _wgslsmith_clamp_i32(~select(arg_0.e.c.b, 1i, !var_1.e.d), _wgslsmith_sub_i32(4925i, var_2.b), global0.b);
    global1 = vec3<u32>(0u, _wgslsmith_mod_u32(firstTrailingBit(~global1.x), _wgslsmith_dot_vec3_u32(select(vec3<u32>(32741u, arg_2.a, u_input.a.x), vec3<u32>(arg_2.a, arg_2.a, 1u), arg_1), vec3<u32>(global0.a, 41804u, arg_2.a) & vec3<u32>(arg_2.a, 1u, var_1.e.c.a))) >> (~82508u % 32u), _wgslsmith_dot_vec4_u32(max(max(arg_0.a.b, arg_0.e.b), ~vec4<u32>(829u, 23487u, arg_2.a, arg_2.a) >> (~vec4<u32>(1u, 0u, global0.a, var_2.a) % vec4<u32>(32u))), max(abs(~arg_0.a.b), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 1u, arg_2.a), arg_0.a.b))));
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-434f * _wgslsmith_div_f32(arg_0.a.a.x, 241f)), -242f, any(vec2<bool>(true, arg_0.a.e)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) + arg_0.e.a.x) + var_0.x), -482f);
}

fn func_2() -> f32 {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, firstLeadingBit(21525u)), countOneBits(u_input.a.xx)), _wgslsmith_add_i32(global0.b, ((-23448i ^ global0.b) & reverseBits(u_input.d.x)) >> (min(4294967295u, u_input.a.x) % 32u)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(49619u, 11u)]), firstTrailingBit(vec4<u32>(3977u, 11169u, u_input.a.x, 4492u)), Struct_1(u_input.a.x, 27316i), true, func_3(-884f, vec2<f32>(-1258f, 552f), Struct_2(var_0.yxw, vec4<u32>(63242u, global1.x, 9670u, 0u), Struct_1(36745u, u_input.b), false, false), Struct_1(global1.x, global0.b))), Struct_1(~22126u, global0.b), _wgslsmith_mod_i32(i32(-1i) * -1332i, -u_input.b), Struct_1(_wgslsmith_add_u32(4294967295u, 0u), min(u_input.c, global0.b)), Struct_2(vec3<f32>(413f, var_0.x, 1000f), vec4<u32>(4294967295u, global0.a, global0.a, global0.a), Struct_1(u_input.a.x, u_input.d.x), true, true)), any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))), Struct_1(13645u, u_input.d.x))), vec4<u32>(~(~(~70824u)), _wgslsmith_mod_u32(global1.x, ~firstLeadingBit(1u)), 36534u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(128857u, 0u), global1.yy) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, global1.x, u_input.a.x), u_input.a), min(max(vec3<u32>(u_input.a.x, 351u, global0.a), vec3<u32>(global1.x, global0.a, global1.x)), u_input.a))), Struct_1(countOneBits(0u), ~(-19089i)), false, !(true != all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))));
    global2 = array<vec3<f32>, 11>();
    var var_2 = vec3<u32>(global0.a, global0.a, firstLeadingBit(88358u)) | var_1.b.xwx;
    return 244f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1323f * -726f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1205f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.d, vec2<f32>(-647f, 974f), vec2<u32>(global1.x, u_input.a.x))), 263f, -929f, _wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, -660f, -1066f, -124f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.yzx)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(0u, 11u)])))))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~global0.a, _wgslsmith_mod_u32(32573u, 4294967295u)), ~vec4<u32>(~u_input.a.x, global1.x | u_input.a.x, ~4294967295u, ~u_input.a.x)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(49249u, 4294967295u, global0.a), countOneBits(vec3<u32>(1u, 1u, 26627u))) << (_wgslsmith_mult_u32(global0.a, min(global0.a, u_input.a.x)) % 32u), 0i), true, true);
    global2 = array<vec3<f32>, 11>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2005f, var_1.a.x) - var_0.x)))));
    var var_3 = 4294967295u;
    var var_4 = u_input.d.xx;
    var var_5 = select(select(vec4<bool>(~0u <= abs(u_input.a.x), true, var_1.e, any(!vec2<bool>(var_1.e, var_1.e))), select(select(select(vec4<bool>(var_1.d, false, var_1.e, var_1.d), vec4<bool>(var_1.d, var_1.e, false, false), var_1.e), vec4<bool>(var_1.e, false, var_1.d, true), !var_1.d), !select(vec4<bool>(var_1.d, var_1.e, var_1.d, var_1.e), vec4<bool>(true, var_1.e, var_1.e, false), vec4<bool>(var_1.e, var_1.d, true, false)), false), !select(vec4<bool>(false, true, var_1.e, false), vec4<bool>(var_1.e, var_1.e, var_1.d, true), vec4<bool>(false, false, var_1.d, true))), select(vec4<bool>(func_3(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-842f, var_0.x)), Struct_2(var_1.a, var_1.b, var_1.c, true, false), var_1.c), var_1.d, var_1.d, !any(vec3<bool>(false, var_1.d, true))), select(select(select(vec4<bool>(var_1.e, var_1.e, false, true), vec4<bool>(var_1.d, false, var_1.e, var_1.d), vec4<bool>(false, var_1.e, var_1.d, false)), !vec4<bool>(var_1.d, true, var_1.d, false), vec4<bool>(var_1.d, true, false, true)), vec4<bool>(!var_1.d, var_1.e, true, var_1.e), false), select(!all(vec2<bool>(true, false)), !(88960u > u_input.a.x), any(vec4<bool>(var_1.d, false, var_1.e, true)) || !var_1.d)), select(select(!vec4<bool>(false, var_1.d, var_1.e, var_1.d), vec4<bool>(var_0.x <= var_1.a.x, !var_1.e, all(vec4<bool>(var_1.d, var_1.e, var_1.d, var_1.e)), true), !(true && var_1.d)), vec4<bool>(true, true, var_1.d, any(!vec4<bool>(true, true, var_1.e, true))), var_1.d));
    let var_6 = var_1;
    var var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1712f, var_0.x, 1772f), vec3<f32>(1450f, var_6.a.x, -1401f)) * _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(u_input.a.x, 11u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1730f, var_0.x)) + _wgslsmith_f_op_vec3_f32(select(var_6.a, vec3<f32>(492f, 672f, var_1.a.x), true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_6.a.x, 594f, var_6.a.x))) - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(0u, 11u)] - vec3<f32>(var_6.a.x, var_1.a.x, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1072f, -988f, -1361f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.a.x, var_1.a.x, var_0.x)))) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_6.b, _wgslsmith_add_vec4_u32(vec4<u32>(28854u, u_input.a.x, 1u, u_input.a.x), var_1.b)), 11u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_6.a.x, 309f, -547f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(var_6.b.x, 11u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-285f, 1000f, 669f), var_6.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(global0.b, global0.b & abs(var_6.c.b & -4492i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(Struct_2(var_1.a, var_6.b, Struct_1(1u, 1i), var_5.x, var_1.d), var_6.c, 16408i, var_6.c, Struct_2(var_0.yxw, vec4<u32>(0u, global1.x, 45038u, 83492u), Struct_1(0u, 40445i), var_1.e, var_1.d)), all(var_5.zz), Struct_1(var_6.c.a, u_input.c))).x))));
}

