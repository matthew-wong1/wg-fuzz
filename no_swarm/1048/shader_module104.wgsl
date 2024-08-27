struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(1004f, 229f, -936f), vec3<f32>(-362f, 904f, 864f), vec3<f32>(106f, -568f, 1517f), vec3<f32>(227f, 1186f, -1445f), vec3<f32>(-1065f, 366f, -389f), vec3<f32>(415f, 1007f, -836f), vec3<f32>(-224f, 703f, 675f), vec3<f32>(1059f, 315f, -2156f), vec3<f32>(-457f, -715f, -595f), vec3<f32>(-222f, 1067f, 521f), vec3<f32>(-851f, 979f, 676f), vec3<f32>(475f, 1872f, -2142f), vec3<f32>(-1761f, 1396f, 1896f), vec3<f32>(-384f, 113f, -368f), vec3<f32>(-113f, -273f, -1000f), vec3<f32>(-353f, -384f, -775f), vec3<f32>(-1718f, 377f, 675f), vec3<f32>(733f, -393f, 1000f), vec3<f32>(1042f, -2319f, -1119f), vec3<f32>(234f, 352f, 1000f), vec3<f32>(1434f, 524f, -447f), vec3<f32>(-309f, -1000f, -804f), vec3<f32>(1095f, -1000f, -1058f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = -(arg_0.b ^ ((reverseBits(global1.b) << (select(vec4<u32>(16162u, u_input.a.x, u_input.a.x, 63395u), vec4<u32>(u_input.a.x, 1u, 3254u, 26280u), global1.a) % vec4<u32>(32u))) << (abs(vec4<u32>(1u, u_input.a.x, 114485u, 4294967295u) ^ vec4<u32>(123620u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))));
    global2 = array<vec3<f32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(abs(-264f)));
    let var_2 = select(select(vec2<bool>(all(!vec3<bool>(global1.a, global1.a, arg_1)), all(!vec3<bool>(global1.a, true, true))), vec2<bool>(select(true, true, arg_1), _wgslsmith_f_op_f32(1811f - global1.c) >= -1107f), true), select(vec2<bool>(!any(vec4<bool>(global1.a, false, global1.a, true)), false), select(select(!vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), !vec2<bool>(arg_1, false)), select(select(vec2<bool>(true, global1.a), vec2<bool>(true, arg_0.a), vec2<bool>(true, true)), vec2<bool>(true, arg_0.a), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_0.a, global1.a), true)), vec2<bool>(!arg_1, arg_0.a == true)), vec2<bool>(select(true, false, arg_0.a) | (1u <= u_input.a.x), true)), !select(vec2<bool>(false, arg_1), select(select(vec2<bool>(false, false), vec2<bool>(arg_0.a, false), false), !vec2<bool>(false, global1.a), arg_0.a), vec2<bool>(any(vec2<bool>(arg_1, global1.a)), !global1.a)));
    global1 = Struct_1(true, select(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.b | var_0, var_0), global1.b), arg_0.b, select(!select(vec4<bool>(arg_1, true, arg_0.a, var_2.x), vec4<bool>(var_2.x, false, true, false), vec4<bool>(global1.a, false, false, arg_1)), vec4<bool>(any(vec4<bool>(global1.a, global1.a, false, false)), false, var_2.x || var_2.x, all(vec2<bool>(true, var_2.x))), select(vec4<bool>(arg_1, false, true, arg_1), !vec4<bool>(var_2.x, true, true, false), vec4<bool>(false, false, var_2.x, global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c)) + _wgslsmith_f_op_f32(492f * 847f)) - 519f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), global1.c, u_input.a.x == select(u_input.a.x, u_input.a.x, true)))));
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> vec3<f32> {
    global0 = firstLeadingBit(_wgslsmith_div_i32(2661i, _wgslsmith_dot_vec2_i32(arg_0.b.ww, firstLeadingBit(arg_0.b.wx))));
    let var_0 = arg_0.c;
    let var_1 = arg_0;
    var var_2 = Struct_1(true, _wgslsmith_clamp_vec4_i32((vec4<i32>(-2147483647i, -80765i, 0i, 1i) ^ vec4<i32>(12628i, var_1.b.x, arg_0.b.x, -4341i)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_2, arg_2), vec4<u32>(u_input.a.x, arg_2, u_input.a.x, u_input.a.x)) ^ (vec4<u32>(4294967295u, arg_2, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 1u, arg_2, 26082u))) % vec4<u32>(32u)), select(arg_0.b, vec4<i32>(-46347i, global1.b.x, -var_1.b.x, reverseBits(global1.b.x)), select(vec4<bool>(false, var_1.a, true, var_1.a), vec4<bool>(true, arg_0.a, global1.a, true), !vec4<bool>(arg_0.a, arg_0.a, global1.a, global1.a))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.b.yxz, vec3<i32>(3262i, global1.b.x, 0i)) & -36127i, _wgslsmith_clamp_i32(9226i, _wgslsmith_sub_i32(-2147483647i, arg_0.b.x), _wgslsmith_div_i32(-1i, var_1.b.x)), i32(-1i) * -1i, global1.b.x)), 142f);
    let var_3 = _wgslsmith_f_op_f32(sign(395f));
    return vec3<f32>(308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, _wgslsmith_div_f32(var_1.c, var_2.c))) - _wgslsmith_f_op_f32(-arg_0.c)), global1.c);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = arg_0;
    global0 = _wgslsmith_add_i32(var_1.b.x, 5601i);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_f_op_vec3_f32(func_4(var_0, 1088f, _wgslsmith_sub_u32(func_3(Struct_1(global1.a, vec4<i32>(-3381i, arg_0.b.x, global1.b.x, 59981i), -213f), false, -775f), u_input.a.x), var_2.c))) + global2[_wgslsmith_index_u32(48219u, 23u)]);
    return !vec2<bool>(false, !(!var_2.a) || all(vec3<bool>(false, var_2.a, true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = ~(abs(_wgslsmith_sub_u32(0u, u_input.a.x)) >> ((11623u << (~4294967295u % 32u)) % 32u));
    global2 = array<vec3<f32>, 23>();
    global0 = global1.b.x;
    let var_2 = Struct_1(func_2(arg_0).x, _wgslsmith_add_vec4_i32(global1.b, ~vec4<i32>(reverseBits(2147483647i), arg_0.b.x, ~arg_1.b.x, var_0.b.x)), -772f);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global2 = array<vec3<f32>, 23>();
    var var_0 = Struct_1(false, func_5(arg_0, arg_0).b, _wgslsmith_f_op_f32(-arg_0.c));
    var var_1 = global1.b.x;
    global2 = array<vec3<f32>, 23>();
    let var_2 = arg_1.yyy;
    return func_5(arg_0, func_5(arg_0, arg_0));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    global1 = func_6(func_5(Struct_1(!global1.a, global1.b, _wgslsmith_f_op_f32(-566f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(any(func_2(Struct_1(true, vec4<i32>(-60799i, global1.b.x, -1i, 10437i), global1.c))), global1.b, _wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(-global1.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -254f, global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -541f), -990f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c + global1.c) - global1.c))), !func_5(Struct_1(true, vec4<i32>(22655i, global1.b.x, -24966i, 1i), _wgslsmith_f_op_f32(select(global1.c, global1.c, true))), Struct_1(all(vec3<bool>(false, arg_0, global1.a)), firstTrailingBit(global1.b), _wgslsmith_f_op_f32(exp2(global1.c)))).a);
    let var_0 = Struct_1((any(!vec2<bool>(global1.a, false)) & !global1.a) && arg_0, select(vec4<i32>(_wgslsmith_div_i32(1i, global1.b.x), _wgslsmith_clamp_i32(global1.b.x, global1.b.x, 2147483647i), firstLeadingBit(-2147483647i), _wgslsmith_add_i32(global1.b.x, global1.b.x)), vec4<i32>(global1.b.x, global1.b.x, global1.b.x, _wgslsmith_div_i32(global1.b.x, -665i)), vec4<bool>(false && global1.a, arg_0, true, any(vec3<bool>(false, false, arg_0)))) | _wgslsmith_div_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(8500i, -22085i, global1.b.x, -4174i), vec4<i32>(global1.b.x, -1i, global1.b.x, global1.b.x)), global1.b, !vec4<bool>(arg_0, arg_0, true, global1.a)), global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.c, 833f)), 621f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c + global1.c), global1.c))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.c)), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(global1.a, vec4<i32>(1i, -1i, global1.b.x, global1.b.x), 285f), _wgslsmith_f_op_f32(trunc(-1000f)), 11888u, global1.c)).x))));
    let var_1 = vec2<f32>(var_0.c, var_0.c);
    let var_2 = reverseBits(~abs(~vec4<u32>(arg_1.x, u_input.a.x, 0u, 4294967295u)));
    let var_3 = Struct_1(!(!(!arg_0)), _wgslsmith_sub_vec4_i32(-(global1.b >> ((var_2 & var_2) % vec4<u32>(32u))), func_6(func_5(var_0, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-612f, -2564f, 509f, global1.c) + vec4<f32>(var_1.x, global1.c, -713f, global1.c))), _wgslsmith_f_op_f32(max(var_0.c, -948f)) > _wgslsmith_f_op_f32(min(var_1.x, var_1.x))).b), _wgslsmith_f_op_f32(func_5(var_0, var_0).c + _wgslsmith_f_op_f32(ceil(global1.c))));
    return 1524f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-197f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2394f))), -518f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(var_0, var_0)) >= _wgslsmith_f_op_f32(f32(-1f) * -634f), vec4<i32>(global1.b.x, 0i, 1i, global1.b.x), 223f);
    let var_2 = _wgslsmith_f_op_f32(-518f * -1419f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c * global1.c), _wgslsmith_f_op_f32(func_1(false, vec3<u32>(_wgslsmith_add_u32(1u, 28106u), 60355u, u_input.a.x))));
    var var_3 = 1816f;
    var var_4 = u_input.a.x > u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

