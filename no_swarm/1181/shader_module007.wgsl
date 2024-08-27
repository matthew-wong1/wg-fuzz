struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, 25159u, Struct_1(vec2<bool>(false, false), false), vec4<bool>(true, false, true, false), 8126u);

var<private> global1: array<Struct_2, 10>;

var<private> global2: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(1637f, 1000f), vec2<f32>(144f, -790f), vec2<f32>(1000f, 742f), vec2<f32>(176f, -1880f), vec2<f32>(-738f, -1612f), vec2<f32>(-1048f, 1000f), vec2<f32>(1109f, 1884f), vec2<f32>(-1518f, -1526f), vec2<f32>(1000f, -671f), vec2<f32>(-1185f, -668f), vec2<f32>(-873f, 1348f), vec2<f32>(661f, 1297f), vec2<f32>(-927f, -2431f), vec2<f32>(1101f, -242f), vec2<f32>(-1000f, 226f));

var<private> global3: bool = false;

var<private> global4: array<bool, 31> = array<bool, 31>(true, true, false, false, false, false, true, false, false, false, false, false, false, false, false, true, true, false, false, false, true, true, false, false, true, true, true, true, false, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1482f) - -1227f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1402f * -1000f), _wgslsmith_f_op_f32(floor(801f))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-909f * _wgslsmith_f_op_f32(367f + -326f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2642f - -850f), _wgslsmith_f_op_f32(floor(122f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -1479f))) + _wgslsmith_f_op_f32(1f + 1070f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1549f, _wgslsmith_f_op_f32(select(627f, 337f, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1158f - 995f)))))));
    global0 = Struct_2(all(!arg_1.a), _wgslsmith_add_u32(u_input.d.x, arg_0.b), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, global4[_wgslsmith_index_u32(arg_0.b, 31u)]), !global0.d.zz), arg_1.b), select(global0.d, select(!arg_0.d, arg_0.d, 4294967295u != global0.b), select(!arg_0.d, select(global0.d, vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 31u)], arg_1.a.x, false), false), _wgslsmith_f_op_f32(min(814f, 225f)) == var_1.x)), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(42283u, arg_0.b), u_input.d.yy) << (u_input.d.x % 32u)));
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_f32(758f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1294f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) + var_1.x))), select(arg_0.b, 4294967295u, !(!global4[_wgslsmith_index_u32(u_input.a, 31u)])) == min(~22597u, _wgslsmith_clamp_u32(0u, 1u, global0.b))));
    return firstLeadingBit(reverseBits(-u_input.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> bool {
    return !(false != global4[_wgslsmith_index_u32(u_input.a, 31u)]);
}

fn func_2() -> u32 {
    global0 = Struct_2(false, 0u, Struct_1(!vec2<bool>(global0.a, global0.d.x), func_4(Struct_1(vec2<bool>(global0.d.x, global4[_wgslsmith_index_u32(global0.e, 31u)]), global4[_wgslsmith_index_u32(countOneBits(0u), 31u)]), func_3(Struct_2(false, 26442u, Struct_1(global0.c.a, true), global0.d, 27936u), global0.c), abs(u_input.c.xy))), !(!vec4<bool>(false, global4[_wgslsmith_index_u32(~global0.b, 31u)], true, 4294967295u < global0.b)), ~u_input.d.x);
    let var_0 = select(vec4<u32>(51524u, 1u, 1u, ~(~global0.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 9499u, u_input.d.x, 4294967295u), max(vec4<u32>(u_input.a, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(global0.b, global0.e, global0.e, u_input.b)) & vec4<u32>(global0.b, 0u, 4294967295u, global0.b)), u_input.b, u_input.a, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 5664u, 50592u, u_input.b), vec4<u32>(4294967295u, global0.b, 38601u, 42264u))), select(countOneBits(vec4<u32>(u_input.b, 35246u, u_input.d.x, global0.b)), _wgslsmith_add_vec4_u32(vec4<u32>(61830u, u_input.a, u_input.d.x, u_input.d.x), vec4<u32>(50530u, 4294967295u, 0u, 1u)), all(global0.d.zw)))), global0.c.a.x);
    global2 = array<vec2<f32>, 15>();
    global4 = array<bool, 31>();
    let var_1 = global0.c;
    return ~u_input.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(global0.a || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)) <= _wgslsmith_f_op_f32(ceil(-754f))), u_input.d.x, Struct_1(global0.c.a, false), !vec4<bool>(global0.a, true, any(vec4<bool>(global4[_wgslsmith_index_u32(0u, 31u)], true, global0.c.b, global4[_wgslsmith_index_u32(1u, 31u)])), true), func_2());
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-179f)) * 1344f)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-448f * -909f), _wgslsmith_f_op_f32(ceil(1000f)));
    var var_2 = global0.d.zwy;
    var_0 = Struct_2(any(select(vec2<bool>(all(var_0.d), true), select(vec2<bool>(true, true), !vec2<bool>(true, global4[_wgslsmith_index_u32(var_0.e, 31u)]), vec2<bool>(true, true)), true)), ~u_input.d.x, Struct_1(vec2<bool>(false, true), var_2.x || !select(var_2.x, var_0.d.x, false)), select(vec4<bool>(_wgslsmith_f_op_f32(-var_1.x) < var_1.x, true, !global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.a, 1u), 31u)], (40693u ^ var_0.b) == ~4294967295u), global0.d, true), 1u);
    var_2 = !global0.d.yxz;
    return global1[_wgslsmith_index_u32(max(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(6928u, 0u), 32726u, _wgslsmith_add_u32(global0.e, min(var_0.b, 1u)), _wgslsmith_div_u32(func_2(), func_2())), select(vec4<u32>(19080u & global0.b, var_0.b, ~u_input.a, reverseBits(65294u)), max(vec4<u32>(u_input.a, 1u, 63177u, global0.b), vec4<u32>(global0.b, var_0.b, global0.e, 1u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.e, u_input.b, 37065u, 4294967295u), vec4<u32>(var_0.b, 0u, 41857u, 109577u), vec4<u32>(4294967295u, 30670u, u_input.d.x, global0.b)), vec4<bool>(global0.a, select(true, false, global4[_wgslsmith_index_u32(var_0.b, 31u)]), !global4[_wgslsmith_index_u32(0u, 31u)], 33743i <= u_input.c.x)))), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = func_1();
    global1 = array<Struct_2, 10>();
    var var_2 = Struct_3(-1593f, !((var_0 < max(u_input.c.x, 0i)) & !all(global0.d.xyw)), var_1.c, -538f);
    let var_3 = func_1().d.x;
    global1 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.d))), ~select(~vec4<u32>(4294967295u, u_input.d.x, u_input.b, var_1.b) >> (abs(vec4<u32>(var_1.b, var_1.e, 116215u, 4294967295u)) % vec4<u32>(32u)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(global0.e, global0.e, 0u, 11277u), vec4<u32>(u_input.a, 24601u, global0.e, 54822u))), global0.d));
}

