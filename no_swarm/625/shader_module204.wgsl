struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(421f, 1257f), vec2<f32>(888f, -461f), vec2<f32>(200f, -800f), vec2<f32>(-337f, 1623f), vec2<f32>(-1019f, -320f), vec2<f32>(-1000f, 1000f), vec2<f32>(-143f, 404f), vec2<f32>(341f, -1022f), vec2<f32>(-980f, 199f), vec2<f32>(-2228f, -1752f), vec2<f32>(-647f, 327f), vec2<f32>(-785f, -275f), vec2<f32>(-1387f, -367f), vec2<f32>(745f, -1321f), vec2<f32>(112f, -175f), vec2<f32>(-789f, -598f), vec2<f32>(-2341f, -454f), vec2<f32>(-1000f, -1328f), vec2<f32>(997f, -779f), vec2<f32>(1000f, 1000f), vec2<f32>(-1181f, -1000f), vec2<f32>(171f, -1029f), vec2<f32>(499f, 733f), vec2<f32>(1000f, -1030f), vec2<f32>(247f, 986f), vec2<f32>(-2290f, 1856f), vec2<f32>(-1000f, -1000f), vec2<f32>(-1405f, 1178f), vec2<f32>(-901f, 882f), vec2<f32>(260f, -763f));

var<private> global3: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-737f, 570f), vec2<f32>(-1104f, 257f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global0 = select(select(vec3<bool>(!(arg_0 > -162f), !select(global0.x, false, global0.x), -u_input.b > ~(-1i)), select(select(select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x)), !vec3<bool>(global0.x, global0.x, false), u_input.c != 31090i), select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, false), global0.x), !vec3<bool>(true, global0.x, global0.x)), any(select(select(vec3<bool>(false, global0.x, false), vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, true)), !vec3<bool>(false, global0.x, false), all(vec3<bool>(true, global0.x, true))))), vec3<bool>(true, any(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, false, global0.x))) | all(vec3<bool>(global0.x, true, true)), false || (arg_0 <= _wgslsmith_div_f32(arg_0, arg_0))), !select(select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, false, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(true, false, global0.x)), vec3<bool>(true, any(global0.xx), false), true & (u_input.d >= 4294967295u)));
    global1 = -2147483647i;
    global3 = array<vec2<f32>, 2>();
    var var_0 = u_input.a ^ _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~1u, ~u_input.a)), vec2<u32>(~(~50045u), abs(23291u)));
    var var_1 = abs(u_input.a);
    return _wgslsmith_clamp_vec3_i32(~select(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(46116i, u_input.c, u_input.b), vec3<i32>(u_input.b, u_input.c, -2147483647i)), vec3<i32>(-10570i, u_input.c, 6731i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(41303i, u_input.b, u_input.c), vec3<i32>(-39608i, -15715i, u_input.c)), firstTrailingBit(vec3<i32>(-2147483647i, 1i, -16134i)), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, true), global0.x)), all(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x))), _wgslsmith_mult_vec3_i32(-max(abs(vec3<i32>(u_input.c, u_input.c, u_input.c)), select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-257i, 63503i, u_input.b), vec3<bool>(global0.x, true, false))), select(max(firstLeadingBit(vec3<i32>(u_input.b, 14688i, 21717i)), vec3<i32>(u_input.c, 26130i, u_input.b)), max(vec3<i32>(u_input.b, u_input.b, 2147483647i), reverseBits(vec3<i32>(-1931i, u_input.c, -1i))), vec3<bool>(false | global0.x, global0.x, global0.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1138i, 8594i), vec3<i32>(-28939i, u_input.c, 2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(29102i, u_input.c, 0i)), reverseBits(vec3<i32>(-54308i, u_input.c, u_input.c)))), -(~(~vec3<i32>(1i, -6362i, u_input.c)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)))));
    return select(var_0.d, select(vec2<bool>(arg_1.a, any(select(vec3<bool>(true, arg_1.c.x, var_0.a), arg_1.c.wyx, arg_0.c.x))), select(select(var_0.c.wx, var_0.c.wz, !vec2<bool>(arg_1.d.x, arg_0.c.x)), select(select(var_0.d, vec2<bool>(false, var_0.c.x), arg_0.d.x), var_1.c.wy, var_0.a), select(arg_0.c.wy, vec2<bool>(false, global0.x), select(var_1.d, global0.yx, global0.x))), false), select(var_1.c.wx, select(vec2<bool>(true, all(arg_0.c.xyx)), select(var_1.d, vec2<bool>(false, true), vec2<bool>(false, arg_0.a)), arg_0.d.x), true));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<i32> {
    global3 = array<vec2<f32>, 2>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_3.e)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 672f, -1202f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, arg_1, arg_2.x))), true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(arg_3.e, arg_3.e)), arg_2.wyx)));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(1u, ~u_input.a | _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, 54723u, 2633u), _wgslsmith_mod_u32(13379u, u_input.d))), min(1u, 67023u), 4294967295u);
    global2 = array<vec2<f32>, 30>();
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-342f, arg_3.e.x)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-1402f + -1000f))))), vec2<f32>(arg_1, -1434f)));
    return -reverseBits(-arg_0.wy);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(round(-1105f)), vec4<bool>(false, global0.x, true, true), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f * -752f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-501f, -1514f, global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(286f * _wgslsmith_f_op_f32(round(-412f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, 676f, 1537f)) + vec3<f32>(-921f, 440f, -1109f))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(20688u, arg_0), 4294967295u) < u_input.d)));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.e.x, var_0.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))))), var_0.c, !(!select(vec2<bool>(var_0.a, true), select(var_0.c.wy, vec2<bool>(true, var_0.d.x), false), global0.xz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.e.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f))), -633f, -140f));
    let var_2 = func_4(-_wgslsmith_mult_vec4_i32(vec4<i32>(min(0i, 1i), 42742i, u_input.b, u_input.c), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, 0i, 1i), vec4<i32>(u_input.c, 65823i, 0i, u_input.b), vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.c)), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.c) & vec4<i32>(2249i, 0i, u_input.b, -9385i), vec4<bool>(var_0.a, true, global0.x, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(step(var_0.e.x, var_0.e.x)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-492f, 914f, var_1.d.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(var_1.e.x * var_0.e.x), _wgslsmith_f_op_f32(573f - 796f), _wgslsmith_f_op_f32(-457f * var_0.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, -1000f, _wgslsmith_f_op_f32(sign(-687f)), 158f))), Struct_1(global0.x, var_0.b, select(select(!vec4<bool>(false, var_0.d.x, var_0.d.x, var_1.a), vec4<bool>(true, true, true, true), select(var_0.c, var_0.c, vec4<bool>(true, false, var_1.a, var_1.d.x))), !(!var_0.c), true), func_2(Struct_1(!var_0.c.x, -1334f, var_1.c, var_1.d, vec3<f32>(-786f, var_1.e.x, var_1.b)), Struct_1(var_0.c.x, var_0.e.x, var_0.c, vec2<bool>(global0.x, false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 717f, var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(776f - 1206f), -939f, -354f)));
    global2 = array<vec2<f32>, 30>();
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) * var_0.e.x)) - -1981f), var_1.c, vec2<bool>(func_2(Struct_1(global0.x, _wgslsmith_f_op_f32(sign(var_1.e.x)), vec4<bool>(false, true, var_1.c.x, global0.x), select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), false), var_1.e), Struct_1(!global0.x, -1908f, select(vec4<bool>(true, global0.x, false, var_0.d.x), vec4<bool>(global0.x, false, false, false), var_1.c), vec2<bool>(var_0.c.x, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, 1485f, 1000f)))).x, any(var_1.c.zy)), vec3<f32>(-1355f, _wgslsmith_f_op_f32(exp2(var_0.b)), var_0.e.x));
    return Struct_1(!var_3.a, -329f, var_3.c, func_2(Struct_1(select(select(var_3.a, false, var_1.d.x), var_3.c.x, true | global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e.x)) + 1611f), !(!vec4<bool>(true, var_0.d.x, true, var_0.d.x)), select(!vec2<bool>(true, var_3.c.x), !global0.yy, u_input.d <= 0u), vec3<f32>(_wgslsmith_f_op_f32(var_3.b - var_0.e.x), -962f, _wgslsmith_f_op_f32(ceil(-985f)))), Struct_1(var_1.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.e.x, var_3.e.x))), select(!var_1.c, var_1.c, true), select(vec2<bool>(false, true), var_3.c.yx, var_0.a), vec3<f32>(_wgslsmith_div_f32(var_3.b, var_1.b), 1485f, _wgslsmith_f_op_f32(1364f + -2352f)))), _wgslsmith_f_op_vec3_f32(var_3.e * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(138f)) * _wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.b)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 30u)])));
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, 1u)), max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(18442u, 4994u))), (vec2<u32>(0u, u_input.a) >> (vec2<u32>(u_input.d, 8461u) % vec2<u32>(32u))) << (~vec2<u32>(1u, u_input.d) % vec2<u32>(32u))), firstLeadingBit(~vec2<u32>(u_input.d, 24503u)) ^ (vec2<u32>(4294967295u, u_input.a) << (_wgslsmith_div_vec2_u32(vec2<u32>(7018u, 23047u), vec2<u32>(10409u, u_input.d)) % vec2<u32>(32u))));
    let var_2 = arg_0;
    var var_3 = 1u;
    var var_4 = !(!global0.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -412f) > _wgslsmith_f_op_f32(-1733f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(801f, _wgslsmith_div_f32(-1072f, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<i32>(u_input.b, max(24080i, 2147483647i), u_input.b, _wgslsmith_clamp_i32(_wgslsmith_div_i32(countOneBits(u_input.c), ~u_input.c), ~u_input.c, -u_input.c)));
    var var_1 = vec3<u32>(~u_input.d, u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 106248u >> (0u % 32u), 27703u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 5835u) >> (vec3<u32>(u_input.a, 29658u, u_input.d) % vec3<u32>(32u)), ~vec3<u32>(20026u, u_input.d, 39787u), _wgslsmith_clamp_vec3_u32(vec3<u32>(65360u, 102746u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.d), vec3<u32>(u_input.a, u_input.d, 77280u)))));
    let var_2 = abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), ~(-vec2<i32>(var_0.x, 2147483647i))));
    var_1 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(114996u, 49028u, var_1.x) << (select(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(14349u, u_input.a, 73469u), true) % vec3<u32>(32u))), ~(~(~vec3<u32>(var_1.x, var_1.x, 4294967295u))));
    var var_3 = Struct_1(func_5(func_1(u_input.d | 17898u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, 1083f, -1222f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, 1301f, -319f)), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, false), global0.x))), vec3<f32>(-434f, _wgslsmith_f_op_f32(f32(-1f) * -632f), 985f))), 1f, !vec4<bool>(any(!vec4<bool>(true, global0.x, global0.x, false)), !all(global0.xy), global0.x, true), func_1(4294967295u).c.wz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, -1000f, 126f) * vec3<f32>(-1347f, 543f, -799f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1796f, 887f, 702f), vec3<f32>(-518f, 235f, 771f)), any(vec4<bool>(true, global0.x, global0.x, false))))) + vec3<f32>(297f, _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1199f))))));
    let var_4 = var_3.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_0.xzw, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.c, -67863i, var_2) >> (vec3<u32>(var_1.x, 20818u, var_1.x) % vec3<u32>(32u))) ^ ~(var_0.yzz ^ vec3<i32>(var_2, 0i, -2147483647i)), reverseBits(vec3<i32>(-1i, func_4(var_0, var_3.b, vec4<f32>(var_3.b, var_3.e.x, 970f, 1246f), Struct_1(true, 2435f, var_3.c, var_3.d, var_3.e)).x, var_2 & var_0.x))), min(vec4<i32>(var_2, -53845i, 1i, _wgslsmith_clamp_i32(u_input.b ^ 2147483647i, 10202i, max(-1i, 0i))), vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i) | var_0.wz, vec2<i32>(35801i, u_input.b) & vec2<i32>(1i, -1145i)), -54291i, var_2)));
}

