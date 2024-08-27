struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, true, false, false, false, true, true, false, true, true, true, true);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-953f, 2101f), vec4<bool>(false, false, true, true), vec4<f32>(-276f, 618f, 2156f, -256f), 45712u);

var<private> global2: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-381f, 1429f), vec2<f32>(-476f, 184f), vec2<f32>(-2466f, -2318f), vec2<f32>(1548f, -488f), vec2<f32>(-1359f, -980f), vec2<f32>(-611f, -822f), vec2<f32>(-338f, 243f), vec2<f32>(-654f, 924f), vec2<f32>(515f, 786f), vec2<f32>(1322f, 1000f), vec2<f32>(-1075f, -207f), vec2<f32>(-425f, 663f), vec2<f32>(693f, -1637f), vec2<f32>(-722f, -610f), vec2<f32>(-192f, 544f), vec2<f32>(-410f, -920f), vec2<f32>(-881f, -297f), vec2<f32>(-1116f, -2419f), vec2<f32>(-245f, -408f), vec2<f32>(452f, -585f), vec2<f32>(-1000f, -1272f), vec2<f32>(-1708f, 802f), vec2<f32>(1000f, 1000f), vec2<f32>(1519f, -1000f), vec2<f32>(-514f, 1219f), vec2<f32>(882f, 187f), vec2<f32>(1262f, -144f), vec2<f32>(-985f, -499f), vec2<f32>(310f, 1000f), vec2<f32>(419f, 1079f), vec2<f32>(-1635f, -2832f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<f32> {
    global1 = Struct_1(global1.c.xw, vec4<bool>(true, all(!select(global1.b.wzz, global1.b.zyz, global1.b.wwx)), global1.b.x, global1.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.c))) + _wgslsmith_f_op_vec4_f32(-global1.c)), global1.c)), 16945u);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(exp2(arg_1.x))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(315f))))) - _wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(global1.d, 31u)]) - global2[_wgslsmith_index_u32(reverseBits(global1.d), 31u)]))), !(!(!select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(global1.d, 13u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global1.d, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], true), global1.b))), arg_1, abs(abs(u_input.a.x)) | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a.zw, reverseBits(vec2<u32>(1u, u_input.a.x))), _wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(18798u, global1.d)), u_input.a.yw)));
    let var_2 = true;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-1173f, var_3.c.x) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.a))))));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = !vec2<bool>(!all(vec3<bool>(false, false, true)), true & all(select(global1.b, vec4<bool>(global1.b.x, true, global1.b.x, false), global1.b)));
    global1 = Struct_1(global1.c.yx, select(global1.b, global1.b, select(global1.b, global1.b, vec4<bool>(arg_0 == -2147483647i, all(vec2<bool>(global0[_wgslsmith_index_u32(global1.d, 13u)], false)), global0[_wgslsmith_index_u32(u_input.a.x, 13u)], arg_0 < -38374i))), global1.c, 1u);
    global0 = array<bool, 13>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(i32(-1i) * -24018i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, global1.c.x, 752f, 241f)))), vec2<f32>(-847f, _wgslsmith_f_op_f32(min(global1.a.x, -436f))))), !(!global1.b), _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2342f)), _wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(ceil(global1.a.x))), global1.c), _wgslsmith_mult_u32(global1.d, _wgslsmith_mod_u32(5114u, 29714u)));
    let var_2 = global1.c.xyy;
    return abs(arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = -(-vec3<i32>(1i, -1i, -16000i) ^ vec3<i32>(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 9095i, 2147483647i), vec4<i32>(11318i, 2147483647i, 2536i, 31502i))), i32(-1i) * -1i, -6143i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.a, global1.c.zz))), global1.b, global1.c, _wgslsmith_dot_vec3_u32(u_input.a.xxz, firstLeadingBit(u_input.a.xzz) & (u_input.a.ywx << (vec3<u32>(4711u, 29857u, 36042u) % vec3<u32>(32u)))) ^ 95374u);
    let var_2 = Struct_1(global1.a, !vec4<bool>(all(select(global1.b, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], var_1.b.x, global0[_wgslsmith_index_u32(5064u, 13u)], global1.b.x), var_1.b)), _wgslsmith_add_i32(9245i, var_0.x) != var_0.x, global0[_wgslsmith_index_u32(0u, 13u)] && select(false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + -397f) - -1166f), 933f, _wgslsmith_f_op_f32(-598f - 583f))), ~(~(~20008u)));
    global2 = array<vec2<f32>, 31>();
    let var_3 = !select(any(select(var_2.b.zww, !global1.b.yxx, select(var_2.b.xyy, vec3<bool>(var_2.b.x, false, global1.b.x), global1.b.yzy))), true, false);
    return Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -552f), 915f)), 732f), -1000f), vec4<bool>(var_1.b.x, select(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_2.d, var_1.d, u_input.a.x)) > _wgslsmith_clamp_u32(39843u, 1u, 1u), true, _wgslsmith_f_op_f32(max(-1000f, var_1.a.x)) != _wgslsmith_f_op_f32(1330f * 329f)), true, true | !var_1.b.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.a.x, global1.c.x, var_1.a.x) - var_1.c))))), _wgslsmith_mod_u32(var_1.d, ~46606u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = func_1();
    let var_1 = func_1();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(1i, vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(round(global1.c.x)), var_1.a.x, _wgslsmith_f_op_f32(sign(1801f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1243f, var_0.c.x), global2[_wgslsmith_index_u32(4294967295u, 31u)]) * var_1.a) * global1.c.wy), true)), vec4<bool>(all(vec4<bool>(true || global0[_wgslsmith_index_u32(var_1.d, 13u)], any(var_0.b), var_0.b.x, true)), firstTrailingBit(-2147483647i) == 1i, !(!any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false, global0[_wgslsmith_index_u32(47881u, 13u)]))), !all(var_1.b.yy)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -783f, _wgslsmith_f_op_f32(sign(339f)), _wgslsmith_f_op_f32(-var_0.c.x)) - vec4<f32>(1281f, -1035f, _wgslsmith_f_op_f32(round(-891f)), func_1().c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_0.a.x, 1952f, global1.a.x) - var_0.c))), !(!any(var_1.b.xw)))), ~29673u);
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(~(-2147483647i), var_2.c)).x;
    var var_4 = var_1;
    let var_5 = ~1i;
    var var_6 = firstTrailingBit(u_input.a.wxx);
    var_6 = ~(~(~u_input.a.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_5, var_5, _wgslsmith_dot_vec4_i32(max(~vec4<i32>(var_5, var_5, var_5, -26163i), vec4<i32>(-36541i, -4413i, var_5, -5539i) & vec4<i32>(var_5, var_5, -2147483647i, var_5)), ~(~vec4<i32>(var_5, var_5, 2147483647i, var_5))), ~_wgslsmith_mult_i32(27418i, var_5 ^ 0i)), vec3<u32>(var_0.d, 118922u, _wgslsmith_mod_u32((var_0.d >> (1u % 32u)) >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(~u_input.a.zxw, vec3<u32>(22050u, 1u, var_4.d)))), _wgslsmith_f_op_f32(min(global1.c.x, var_3)), ~1u, reverseBits(u_input.a));
}

