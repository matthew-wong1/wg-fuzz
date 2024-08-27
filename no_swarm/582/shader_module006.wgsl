struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-665f, vec3<i32>(i32(-2147483648), i32(-2147483648), -12111i)), Struct_1(2331f, vec3<i32>(-16222i, i32(-2147483648), i32(-2147483648))), Struct_1(1320f, vec3<i32>(0i, 2793i, -1i)), Struct_1(1584f, vec3<i32>(-16498i, 0i, i32(-2147483648))), Struct_1(-572f, vec3<i32>(1i, 42665i, 0i)), Struct_1(695f, vec3<i32>(0i, 14236i, 1i)), Struct_1(-1986f, vec3<i32>(i32(-2147483648), 24605i, 11499i)), Struct_1(-311f, vec3<i32>(68480i, 16239i, -1i)), Struct_1(-781f, vec3<i32>(i32(-2147483648), 0i, 87596i)), Struct_1(1494f, vec3<i32>(-41693i, -1i, 10168i)), Struct_1(1891f, vec3<i32>(0i, 18398i, -74787i)), Struct_1(1546f, vec3<i32>(-26627i, 3698i, -1i)), Struct_1(-813f, vec3<i32>(i32(-2147483648), -1i, 23879i)), Struct_1(109f, vec3<i32>(-8505i, 39662i, -66367i)), Struct_1(856f, vec3<i32>(-2951i, 1i, 8543i)), Struct_1(443f, vec3<i32>(49720i, -1i, 21613i)));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec4<u32>;

var<private> global4: array<vec4<u32>, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.x, 1345f)))) - -276f))), _wgslsmith_div_vec3_i32(~reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 31522i, 10008i), vec3<i32>(-6522i, u_input.a.x, u_input.a.x))), reverseBits(countOneBits(-vec3<i32>(-26361i, u_input.a.x, u_input.a.x)))));
    var var_1 = all(arg_0) || !arg_0.x;
    let var_2 = ~firstTrailingBit(~(~_wgslsmith_mod_vec4_u32(global4[_wgslsmith_index_u32(global3.x, 17u)], vec4<u32>(0u, global3.x, global3.x, global3.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(1042f * var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -539f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -618f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(819f, arg_1.x))))) * vec4<f32>(_wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(f32(-1f) * -232f)), 469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.a, 987f)))) * 324f), -495f));
    global2 = vec2<bool>(false, true);
    return arg_0.yz;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    global1 = select(arg_1.zy, func_3(arg_1.www, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-293f, arg_0.a, arg_0.a, arg_0.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(-915f, -1086f, -382f, arg_0.a), vec4<f32>(391f, 1000f, arg_0.a, arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1588f))))), global3.x > _wgslsmith_sub_u32(abs(global3.x), ~global3.x)), arg_1.xw);
    global1 = vec2<bool>(true, func_3(arg_1.xyx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -935f, -154f, arg_0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), _wgslsmith_f_op_f32(sign(arg_0.a)), true && (u_input.a.x >= -25105i)).x);
    global2 = arg_1.xz;
    let var_0 = -vec3<i32>(~u_input.a.x, countOneBits(u_input.a.x) >> (1u % 32u), reverseBits(~(-69155i))) | _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.b, reverseBits(vec3<i32>(-1282i, u_input.a.x, arg_0.b.x) & arg_0.b)), -min(select(arg_0.b, vec3<i32>(u_input.a.x, -19430i, 2147483647i), vec3<bool>(true, global1.x, global2.x)), arg_0.b));
    let var_1 = vec4<u32>(firstLeadingBit(~(~(~11542u))), _wgslsmith_add_u32(~_wgslsmith_mod_u32(62681u, global3.x | global3.x), min(firstLeadingBit(0u), global3.x)), ~25681u, 37937u);
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(global3.x, 16u)], vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(round(-1124f)), global1.x)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-795f, -374f)) * _wgslsmith_div_f32(-117f, -1000f))))));
    let var_1 = !vec2<bool>(func_3(vec3<bool>(true, !global1.x, false || global1.x), vec4<f32>(var_0, -621f, var_0, var_0), 693f, global2.x).x, 0u != _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.zyz, vec3<u32>(47950u, global3.x, 1761u)), ~global3.x));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, 20388u), 16u)];
    global0 = array<Struct_1, 16>();
    global3 = global4[_wgslsmith_index_u32(global3.x, 17u)];
    return global0[_wgslsmith_index_u32(~(~(~global3.x)), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f + -876f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 131f, global2.x)))));
    var var_1 = global2.x;
    let var_2 = global3.x;
    global2 = !vec2<bool>(~_wgslsmith_clamp_i32(33699i, u_input.a.x, -27512i) == (i32(-1i) * -4427i), !(!(!global2.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1193f)) * -350f), vec3<i32>(u_input.a.x, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-31164i, u_input.a.x, 2215i, u_input.a.x), vec4<i32>(27003i, -2147483647i, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), 19950i));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~var_4.b, firstLeadingBit((vec3<i32>(var_3.b.x, 2147483647i, u_input.a.x) >> (vec3<u32>(global3.x, global3.x, 15881u) % vec3<u32>(32u))) >> (vec3<u32>(1u, global3.x, 40901u) % vec3<u32>(32u))), vec3<i32>(abs(_wgslsmith_div_i32(-27484i, var_3.b.x)), -19907i, -var_3.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.a))), global3.xwz);
}

