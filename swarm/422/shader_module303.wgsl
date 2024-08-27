struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, 1i, -42833i, -1i), vec4<i32>(-1i, 2147483647i, 32146i, 2147483647i));

var<private> global2: f32 = 641f;

var<private> global3: array<vec4<f32>, 31>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-544f, false, vec3<i32>(-4224i, 0i, -9518i)), Struct_1(2023f, false, vec3<i32>(33308i, i32(-2147483648), 1i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> bool {
    let var_0 = ~arg_0;
    global4 = array<Struct_1, 2>();
    let var_1 = select(select(vec3<bool>(var_0 != (1u << (0u % 32u)), true, select(true, true, true) | true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), false | (_wgslsmith_f_op_f32(-1619f * 459f) < _wgslsmith_f_op_f32(step(-1342f, 1000f)))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1362f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1146f))), any(!var_1.zz), firstLeadingBit(min(arg_1, max(~arg_1, arg_1))));
    var var_3 = -abs(global1[_wgslsmith_index_u32(38098u, 2u)]);
    return !all(vec2<bool>(true, u_input.b <= arg_0));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = ~select(vec3<u32>(u_input.b, 57459u, u_input.b), vec3<u32>(~1u, u_input.b, ~u_input.b), select(!(!vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0, true), func_3(u_input.b, vec3<i32>(-30764i, u_input.a.x, arg_1.x))), true));
    var var_1 = !(!any(!select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0), arg_0)));
    var_0 = vec3<u32>(4294967295u ^ var_0.x, var_0.x, u_input.b);
    global4 = array<Struct_1, 2>();
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(940f, -1159f, arg_0))), _wgslsmith_f_op_f32(-823f * _wgslsmith_f_op_f32(f32(-1f) * -393f))))));
    return Struct_1(719f, any(vec3<bool>(arg_0, any(!vec2<bool>(true, arg_0)), true)), ~(reverseBits(vec3<i32>(-34474i, 1i, global0[_wgslsmith_index_u32(var_0.x, 15u)])) >> (((vec3<u32>(44029u, var_0.x, u_input.b) << (vec3<u32>(var_0.x, u_input.b, 21772u) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, 624u, var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<i32, 15>();
    let var_0 = !vec3<bool>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(u_input.b, 1u), u_input.b) >= _wgslsmith_clamp_u32(abs(u_input.b), u_input.b, u_input.b), !func_3(~24656u, arg_0.c), 868f <= arg_0.a);
    global2 = _wgslsmith_f_op_f32(abs(1297f));
    global3 = array<vec4<f32>, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1000f, arg_0.a) + vec3<f32>(_wgslsmith_f_op_f32(sign(274f)), _wgslsmith_f_op_f32(arg_0.a - -628f), arg_0.a)))));
    return func_2(true, arg_2.yx);
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), -191f)), arg_1, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(abs(arg_0.x))));
    var var_1 = global4[_wgslsmith_index_u32(countOneBits(7004u), 2u)];
    let var_2 = abs(global1[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(~69412u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 0u)))), 2u)]);
    let var_3 = _wgslsmith_mod_i32(-64514i, 33240i | ~_wgslsmith_sub_i32(-16432i, -var_2.x));
    let var_4 = func_4(func_2(any(select(!vec3<bool>(var_1.b, var_1.b, true), select(vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(true, true, false), var_1.b), var_1.b)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, var_2.x) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), -var_2.wz)), func_2(false, -vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 15u)]) ^ vec2<i32>(2147483647i, i32(-1i) * -10347i)).c.x, vec4<i32>(var_2.x, _wgslsmith_clamp_i32((u_input.a.x >> (u_input.b % 32u)) & (global0[_wgslsmith_index_u32(12234u, 15u)] ^ -23205i), -(-9452i ^ var_3), var_3), _wgslsmith_mod_i32(-46449i, var_3), -15581i));
    return _wgslsmith_mult_u32(~4294967295u, ~(max(28983u, 0u) << (min(u_input.b, u_input.b) % 32u))) | _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), vec4<u32>(55497u, 21162u, u_input.b, u_input.b))), reverseBits(vec4<u32>(4294967295u, ~67916u, select(u_input.b, u_input.b, var_1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 416u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 31>();
    var var_0 = global4[_wgslsmith_index_u32(14660u, 2u)];
    let var_1 = false;
    let var_2 = _wgslsmith_mult_u32(u_input.b, firstTrailingBit(reverseBits(u_input.b)));
    var var_3 = vec3<u32>(~max(var_2, u_input.b), firstTrailingBit(_wgslsmith_mod_u32(func_1(vec4<f32>(306f, 1008f, 374f, 994f), -1764f), 9169u)), 25025u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -u_input.a.x, -14576i, -var_0.c.x), -_wgslsmith_sub_i32(select(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, 2147483647i)), true), u_input.a.x), 4294967295u, -1000f);
}

