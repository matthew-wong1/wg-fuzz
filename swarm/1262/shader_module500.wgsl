struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(39880i, 19602i, 2147483647i, -22953i), vec4<i32>(1709i, -78673i, i32(-2147483648), -68626i), vec4<i32>(1829i, i32(-2147483648), 42891i, 86578i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -1i), vec4<i32>(1i, -1i, 7272i, -66002i), vec4<i32>(53726i, -1i, 3742i, 1i), vec4<i32>(-1i, 0i, 1i, 0i), vec4<i32>(-10084i, 10418i, -1i, -29374i), vec4<i32>(-6576i, -23412i, -15987i, 25016i), vec4<i32>(-6921i, i32(-2147483648), 0i, 0i), vec4<i32>(-41653i, -23912i, i32(-2147483648), i32(-2147483648)), vec4<i32>(24084i, i32(-2147483648), 32240i, 1i), vec4<i32>(-17124i, 61157i, i32(-2147483648), 2147483647i), vec4<i32>(32112i, -48261i, -12378i, -25382i), vec4<i32>(1i, -8567i, 15746i, -703i), vec4<i32>(0i, 14645i, i32(-2147483648), 19606i), vec4<i32>(-9917i, 14847i, 11783i, 16184i), vec4<i32>(-10994i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(9694i, 2147483647i, 8065i, 25861i), vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i), vec4<i32>(0i, -1i, 2147483647i, -26412i), vec4<i32>(-1i, 1i, 25459i, i32(-2147483648)), vec4<i32>(61320i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 81i, 1i), vec4<i32>(1i, i32(-2147483648), -27074i, i32(-2147483648)), vec4<i32>(-1i, -17692i, 0i, -1i), vec4<i32>(4763i, i32(-2147483648), i32(-2147483648), 1462i), vec4<i32>(8078i, -46655i, 5458i, -1i), vec4<i32>(-14032i, -16387i, 2147483647i, -20777i), vec4<i32>(10060i, 47251i, 0i, i32(-2147483648)), vec4<i32>(-14i, 0i, -4436i, -27889i));

var<private> global1: u32 = 0u;

var<private> global2: Struct_1 = Struct_1(-122f, vec3<f32>(471f, -191f, -1000f), 9197i);

var<private> global3: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global2.b.x)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1269f, global2.b.x, 812f)), _wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.b)))))), _wgslsmith_div_i32(~_wgslsmith_mod_i32(19226i, arg_0.c ^ 0i), _wgslsmith_sub_i32(1i & _wgslsmith_div_i32(global2.c, arg_0.c), 1i)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -271f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b.x, global2.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1620f, 612f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a, 764f), global2.b.xz)), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.xz - vec2<f32>(542f, global2.b.x)), global2.b.yz)))));
    global1 = 7506u;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.b.x, 700f)))))) + _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(trunc(global2.a)), any(vec2<bool>(true, true)))))), global2.a);
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))));
    return ~4294967295u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 31>();
    var var_0 = (false == any(vec2<bool>(true, all(vec4<bool>(true, false, true, true))))) | !(arg_0.b.x > 1000f);
    var var_1 = _wgslsmith_f_op_f32(sign(global2.a));
    var var_2 = max(func_3(Struct_1(_wgslsmith_div_f32(-337f, _wgslsmith_f_op_f32(652f + arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-952f, 894f, global2.b.x))), ~arg_0.c)), 1u);
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global3 = -global2.c;
    let var_0 = func_2(arg_1);
    global1 = 4294967295u;
    global0 = array<vec4<i32>, 31>();
    global2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.a), -351f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-525f, arg_1.b.x, 2502f), global2.b, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -1126f, -1027f))))))), ~func_2(var_0).c);
    return _wgslsmith_clamp_u32(max(39367u, ((u_input.a | 0u) >> (u_input.a % 32u)) & 28396u), ~u_input.a, 57122u);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> vec3<f32> {
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2))) * arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_2, -235f)), _wgslsmith_f_op_f32(min(arg_3.x, -632f)), -478f)) + arg_3), -global2.c);
    global2 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1571f)) + arg_3.x), vec3<f32>(-693f, _wgslsmith_div_f32(arg_3.x, -1038f), -2447f), global2.c | min(global2.c, -43357i))));
    global2 = func_2(func_2(func_2(func_2(func_2(Struct_1(global2.b.x, vec3<f32>(-1702f, -1306f, -781f), u_input.b))))));
    var var_0 = 2875f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-func_2(func_2(func_2(Struct_1(-770f, arg_3, 32363i)))).a), arg_3, -abs(-_wgslsmith_mod_i32(-66403i, u_input.b)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_3.x), arg_3.x, _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2179f, arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1538f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - var_1.a)))) + _wgslsmith_div_vec3_f32(vec3<f32>(func_2(func_2(Struct_1(479f, arg_3, -2147483647i))).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(765f * -241f))), 129f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, arg_2)) * var_1.b.x), arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    global3 = global2.c;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.b, global2.c);
    global3 = global2.c;
    let var_1 = ~firstLeadingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)));
    global2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(vec2<f32>(910f, 248f), var_0), var_1.x, -176f, vec3<f32>(1379f, 1000f, var_0.a))) - global2.b))), 32226i);
    let var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~23570i, ~0u, vec3<i32>(~11550i, -firstLeadingBit(0i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, 0i), -vec3<i32>(-2399i, var_0.c, var_0.c)), 37447i >> (_wgslsmith_mod_u32(4294967295u, var_2) % 32u))), _wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(global2.a, 957f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a)) * var_0.a))));
}

