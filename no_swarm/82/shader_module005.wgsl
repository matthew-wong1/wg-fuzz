struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, false, true, false, false, false, true, false, false, true, false, false, true, false);

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, false, true, false, true, false, true, false, false, true, false, false, false, true, true, true, false, false);

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    global0 = select(select(!(!select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global3.x, global3.x, global2[_wgslsmith_index_u32(0u, 19u)], global0.x), true)), select(!vec4<bool>(true, false, true, arg_0.x), arg_1.e.e, vec4<bool>(false, global3.x, all(arg_1.b.e.yxz), all(vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(u_input.d.x, 19u)], true, true)))), vec4<bool>(arg_1.b.e.x, global0.x, true, !any(arg_1.b.e.yxz))), vec4<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 0u), u_input.d) ^ 34408u) != arg_2.e.d, global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31853u, arg_2.b.d, arg_2.b.d), vec4<u32>(arg_2.c.d, 29991u, 1u, 24632u)), 1u), 19u)] && true, arg_1.c.b.x, true), global2[_wgslsmith_index_u32(53062u, 19u)]);
    var var_0 = abs(~1u);
    var var_1 = vec2<bool>(!all(!arg_1.e.e.yx), !arg_0.x);
    var var_2 = firstTrailingBit(u_input.c);
    var_2 = ~51553u;
    return !vec2<bool>(arg_2.c.e.x, arg_2.e.e.x);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    global2 = array<bool, 19>();
    global0 = !select(select(!vec4<bool>(global1[_wgslsmith_index_u32(56249u, 15u)], global3.x, false, global1[_wgslsmith_index_u32(u_input.e, 15u)]), vec4<bool>(true, func_2(vec3<bool>(false, global1[_wgslsmith_index_u32(70756u, 15u)], false), Struct_2(u_input.b.x, Struct_1(false, global3.zxw, u_input.a.x, 1u, vec4<bool>(arg_0, global0.x, true, true)), Struct_1(false, global0.zwy, u_input.b.x, u_input.d.x, vec4<bool>(arg_0, arg_0, false, arg_0)), 9290i, Struct_1(false, global0.xyw, u_input.b.x, 31066u, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global2[_wgslsmith_index_u32(u_input.d.x, 19u)], arg_0, true))), Struct_2(u_input.b.x, Struct_1(global0.x, vec3<bool>(global0.x, arg_0, false), u_input.b.x, 4294967295u, vec4<bool>(false, global2[_wgslsmith_index_u32(28003u, 19u)], true, false)), Struct_1(arg_0, vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 15u)]), -28970i, 4294967295u, vec4<bool>(global0.x, global3.x, arg_0, false)), u_input.b.x, Struct_1(arg_0, global3.wyz, -1i, u_input.e, vec4<bool>(true, false, arg_0, true)))).x, true, any(vec4<bool>(false, true, global0.x, false))), all(select(global3.ww, vec2<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c, 15u)]), global3.wx))), !(!select(vec4<bool>(global3.x, true, true, global1[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec4<bool>(false, false, global3.x, global1[_wgslsmith_index_u32(u_input.e, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], true, true, arg_0))), false);
    var var_0 = ~u_input.b.x;
    global3 = select(select(vec4<bool>(func_2(select(vec3<bool>(false, global3.x, global2[_wgslsmith_index_u32(5284u, 19u)]), vec3<bool>(global3.x, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(u_input.e, 15u)])), Struct_2(9119i, Struct_1(true, vec3<bool>(arg_0, global3.x, global2[_wgslsmith_index_u32(u_input.d.x, 19u)]), u_input.b.x, 0u, vec4<bool>(global3.x, true, global3.x, false)), Struct_1(arg_0, vec3<bool>(true, arg_0, arg_0), 1i, 39715u, vec4<bool>(true, true, false, false)), u_input.b.x, Struct_1(true, global0.wxy, 2147483647i, 73831u, vec4<bool>(global0.x, global3.x, arg_0, false))), Struct_2(u_input.a.x, Struct_1(true, vec3<bool>(arg_0, global2[_wgslsmith_index_u32(838u, 19u)], global3.x), 1i, 21103u, vec4<bool>(false, arg_0, false, global0.x)), Struct_1(global0.x, global0.wwz, u_input.b.x, u_input.d.x, vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.e, 15u)])), u_input.b.x, Struct_1(false, vec3<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 15u)], false), 1i, u_input.c, vec4<bool>(true, false, global0.x, global2[_wgslsmith_index_u32(38523u, 19u)])))).x, false, !(!global0.x), !(global1[_wgslsmith_index_u32(0u, 15u)] || true)), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 19u)], global0.x, global2[_wgslsmith_index_u32(u_input.d.x, 19u)], false))), !((i32(-1i) * -55387i) >= -u_input.a.x)), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(66311u, 15u)], false, false, false), select(vec4<bool>(arg_0, true, global3.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 15u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], true, arg_0), global1[_wgslsmith_index_u32(4294967295u, 15u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 19u)], true, global1[_wgslsmith_index_u32(48104u, 15u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 19u)], false), global2[_wgslsmith_index_u32(u_input.e, 19u)]))), true);
    let var_1 = Struct_1(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.d, vec2<u32>(abs(u_input.c), ~1043u)), 15u)], global3.xwx, select(u_input.a.x, 20717i, false), u_input.c, !vec4<bool>(~14269u >= u_input.d.x, any(!global0.wzy), true, global1[_wgslsmith_index_u32(~1u, 15u)]));
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-458f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f) - _wgslsmith_f_op_f32(-1000f + -743f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(632f))))), -1327f)));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(min(-432f, _wgslsmith_f_op_f32(-1201f - -510f))), any(func_2(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 15u)], true), Struct_2(u_input.b.x, Struct_1(false, vec3<bool>(true, false, global0.x), u_input.a.x, 1u, vec4<bool>(global3.x, true, global3.x, false)), Struct_1(global1[_wgslsmith_index_u32(u_input.e, 15u)], vec3<bool>(global2[_wgslsmith_index_u32(0u, 19u)], false, true), -14848i, 1u, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(u_input.e, 15u)], false)), u_input.b.x, Struct_1(global0.x, global0.yzx, u_input.a.x, 4294967295u, vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1, 19u)], global0.x))), Struct_2(8055i, Struct_1(false, global3.zyy, u_input.a.x, arg_1, vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], true, global1[_wgslsmith_index_u32(1u, 15u)], true)), Struct_1(global2[_wgslsmith_index_u32(arg_1, 19u)], global3.zyw, -1i, 15273u, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(7932u, 19u)], global3.x, true)), -6483i, Struct_1(global0.x, global0.zxy, 13374i, 4294967295u, vec4<bool>(true, global0.x, true, true)))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(global3.x))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2913f, 485f)))))))));
    global4 = -1353f;
    let var_1 = Struct_3(!global0.wz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(sign(205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 825f)), arg_0, arg_0)));
    let var_2 = max(0u, 1u);
    var var_3 = Struct_1(true, !global0.zyy, 39885i, ~33944u, !(!select(!vec4<bool>(true, false, global3.x, var_1.a.x), select(vec4<bool>(false, false, global3.x, global2[_wgslsmith_index_u32(20368u, 19u)]), vec4<bool>(var_1.a.x, true, false, global3.x), vec4<bool>(global0.x, global0.x, global0.x, global3.x)), !global1[_wgslsmith_index_u32(0u, 15u)])));
    return Struct_2(var_3.c, Struct_1(false, select(select(select(vec3<bool>(false, global0.x, global2[_wgslsmith_index_u32(var_3.d, 19u)]), vec3<bool>(var_3.e.x, false, var_1.a.x), global3.wzw), select(global3.xwx, global3.xxw, true), vec3<bool>(false, var_1.a.x, false)), vec3<bool>(var_3.e.x | false, false, true), any(var_3.e)), max(var_3.c, i32(-1i) * -var_3.c), arg_1, vec4<bool>(true, true, select(14492i >= var_3.c, true, true), var_3.a)), Struct_1(global1[_wgslsmith_index_u32(var_3.d ^ firstLeadingBit(reverseBits(0u)), 15u)], select(select(select(var_3.b, vec3<bool>(global0.x, false, global2[_wgslsmith_index_u32(80231u, 19u)]), vec3<bool>(var_3.e.x, true, global0.x)), global0.xwx, select(false, global0.x, true)), vec3<bool>(!var_3.e.x, !var_3.e.x, var_0.x == 961f), global0.wxy), -2147483647i, 0u, vec4<bool>(false, false & (var_1.b.x > var_0.x), false, select(false, global3.x, true) | !var_1.a.x)), _wgslsmith_div_i32(~(0i & var_3.c), 4852i), Struct_1(var_1.a.x, select(!select(vec3<bool>(var_3.e.x, false, var_1.a.x), vec3<bool>(true, false, var_3.b.x), var_1.a.x), global0.wxz, vec3<bool>(!global1[_wgslsmith_index_u32(12200u, 15u)], true, any(vec3<bool>(true, var_1.a.x, global3.x)))), ~(-42536i), (4294967295u | firstLeadingBit(var_2)) & 1u, var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 15>();
    let var_0 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(683f * -1317f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(872f)) * -1405f)))), u_input.c);
    var var_1 = Struct_3(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(389f * -597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f - -464f)), 1f, -1086f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-782f, 1334f)), -1091f, _wgslsmith_f_op_f32(-527f + 654f), _wgslsmith_f_op_f32(-396f + 842f)) + vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = func_1(_wgslsmith_f_op_f32(trunc(var_1.b.x)), _wgslsmith_clamp_u32(u_input.c, ~_wgslsmith_add_u32(62110u, u_input.e >> (var_0.b.d % 32u)), select(_wgslsmith_clamp_u32(~u_input.e, 37446u, 0u), countOneBits(_wgslsmith_mod_u32(0u, 4294967295u)), true)));
    global1 = array<bool, 15>();
    let var_3 = !(!(!func_1(var_1.b.x, var_2.b.d).e.e));
    let var_4 = var_0.e.c;
    var var_5 = Struct_2(~(~(var_2.d << (439u % 32u))), var_2.b, Struct_1(var_3.x, func_1(var_1.b.x, var_2.c.d).b.e.wwy, var_2.d, ~(~69712u), var_0.b.e), select(abs(-2147483647i) >> (max(~1u, _wgslsmith_div_u32(4294967295u, var_0.e.d)) % 32u), -7600i, true == (u_input.a.x <= 2147483647i)), var_0.c);
    var var_6 = all(!(!(!global0.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_1(-127f, var_2.c.d >> (0u % 32u)).e.d, u_input.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), var_1.b.x))), 1728f, abs(-1889i), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d ^ u_input.d, vec2<u32>(32423u, 37987u) & ~vec2<u32>(u_input.c, var_2.b.d)), ~_wgslsmith_add_u32(0u >> (var_2.e.d % 32u), ~u_input.d.x)));
}

