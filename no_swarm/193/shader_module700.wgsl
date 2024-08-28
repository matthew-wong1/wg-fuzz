struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1919f, -1157f, 1556f, -468f, -1191f, 1000f, -822f, 1118f, -836f, -276f, -804f, 1837f, 1134f, 2036f, 1293f, 293f, -879f, 519f, -215f, -1338f, -371f, 634f, -721f, -1419f, 521f);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(2269f, -242f), Struct_2(-613f, -1610f), Struct_2(-489f, -1000f), Struct_2(361f, 612f), Struct_2(-812f, 1159f), Struct_2(-1015f, 1282f), Struct_2(-1224f, -528f), Struct_2(-1599f, -408f), Struct_2(1000f, 1405f), Struct_2(-437f, -158f), Struct_2(-992f, -1172f), Struct_2(-1306f, 345f), Struct_2(336f, -326f), Struct_2(-1000f, -1174f), Struct_2(414f, 1285f), Struct_2(1296f, -2190f), Struct_2(1405f, 342f), Struct_2(282f, -383f));

var<private> global2: Struct_1;

var<private> global3: array<f32, 1>;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_2, 18>();
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-reverseBits(arg_2), -arg_0), _wgslsmith_mod_i32(arg_0.x, 23405i)));
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(27203u, _wgslsmith_mod_u32(u_input.a, 81823u) | 1u) | (7919u | ~u_input.a)), 18u)];
    let var_2 = Struct_2(1002f, -1000f);
    return -1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = select(firstTrailingBit(vec4<i32>(arg_0.x, (2147483647i ^ global2.a) ^ -18966i, func_3(max(vec3<i32>(arg_0.x, 1i, 1i), vec3<i32>(-2147483647i, global2.a, -12540i)), 36919i, vec3<i32>(arg_0.x, -14346i, arg_1.x), Struct_1(arg_1.x)), ~_wgslsmith_add_i32(global2.a, 0i))), reverseBits(vec4<i32>(-57978i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.x, 19542i, -41905i), min(vec3<i32>(arg_0.x, arg_0.x, -2147483647i), vec3<i32>(arg_1.x, arg_0.x, -1i))), 1i, ~arg_1.x)), select(vec4<bool>(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(-1i, arg_1.x, 13246i)) != (arg_0.x | global2.a), true, any(vec2<bool>(false, true)), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), true));
    return ~(~_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(32849u, u_input.a, u_input.a, u_input.a)), ~firstLeadingBit(vec4<u32>(9108u, 4294967295u, u_input.a, u_input.a))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(0u), 18u)];
    global1 = array<Struct_2, 18>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, ~1u), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(min(u_input.a, u_input.a), u_input.a, u_input.a), _wgslsmith_clamp_u32(func_2(vec2<i32>(62552i, 10692i), vec3<i32>(-32025i, -23192i, arg_0)), 73210u, 58696u)), _wgslsmith_div_vec2_u32(select(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(4294967295u, u_input.a), true), select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 21690u), true) ^ vec2<u32>(u_input.a, u_input.a)))), 25u)];
    global3 = array<f32, 1>();
    let var_2 = Struct_1(_wgslsmith_mult_i32(arg_0, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -36173i, arg_0, global2.a), vec4<i32>(arg_0, global2.a, 2147483647i, 23422i)), arg_0) ^ 11772i));
    return ~(~(~(reverseBits(0u) ^ u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(11960u, (func_1(global2.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-311f, global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], -250f)))) ^ u_input.a) | u_input.a, func_1(i32(-1i) * -select(global2.a, -21273i, false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 1u)]))), 1455f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(countOneBits(u_input.a), 25u)], _wgslsmith_f_op_f32(f32(-1f) * -765f)))));
    global0 = array<f32, 25>();
    let var_1 = vec2<bool>(true, !(var_0.x > 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1711f - -1007f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(334f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] * 690f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(227f, 352f)), -1229f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(7843u, 25u)])), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)]))), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(53872u << (var_0.x % 32u), 1u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 1u)]) * _wgslsmith_f_op_f32(f32(-1f) * -1205f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 25u)] * global0[_wgslsmith_index_u32(1u, 25u)])) * 599f)), global2.a);
}

