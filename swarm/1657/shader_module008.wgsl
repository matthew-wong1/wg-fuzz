struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 88708u), vec4<bool>(false, true, true, true), vec3<f32>(-900f, -839f, 1299f), vec2<i32>(37895i, 51313i));

var<private> global1: vec4<f32> = vec4<f32>(-290f, 1000f, -618f, -1000f);

var<private> global2: array<vec4<f32>, 16>;

var<private> global3: array<bool, 20> = array<bool, 20>(true, false, false, false, true, true, false, true, false, false, false, false, true, true, true, false, false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec2<i32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -10746i, select(0i, -1780i, global0.b.x), var_0.d.x), ~(vec4<i32>(0i, 48805i, arg_1, 0i) | vec4<i32>(arg_1, 18358i, 2009i, arg_0.d.x)), max(reverseBits(vec4<i32>(1i, global0.d.x, 49038i, -1i)), firstLeadingBit(vec4<i32>(u_input.a, -9794i, var_0.d.x, 1540i)))));
    var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(abs(global0.d.x), -2147483647i, -26133i, 1i), vec4<i32>(_wgslsmith_add_i32(arg_1, -10066i), -(i32(-1i) * -arg_1), countOneBits(abs(firstLeadingBit(var_1.x))), countOneBits(arg_0.d.x)));
    var var_2 = -arg_0.d.x;
    return var_1.ww;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> vec3<f32> {
    let var_0 = select(global0.b, global0.b, arg_0);
    global2 = array<vec4<f32>, 16>();
    let var_1 = var_0;
    let var_2 = Struct_1(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1u), global0.a, true), abs(~vec2<u32>(global0.a.x, 17107u))), var_0, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(select(439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(678f, -408f, false)) - _wgslsmith_f_op_f32(trunc(427f))), all(!var_0))), arg_1.x), func_3(Struct_1(vec2<u32>(5013u, 39673u) << (global0.a % vec2<u32>(32u)), var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -1000f, 1759f)), -global0.d), global0.d.x, vec3<f32>(_wgslsmith_div_f32(-1060f, -885f), _wgslsmith_div_f32(982f, -1267f), -663f), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(83942u, 27268u, 1u), vec3<u32>(global0.a.x, global0.a.x, global0.a.x)), ~63820u, ~31714u)) ^ vec2<i32>(i32(-1i) * -arg_2, u_input.a));
    global0 = Struct_1((global0.a << (global0.a % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), !select(global0.b, !select(vec4<bool>(var_1.x, global0.b.x, true, true), vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(23672u, 20u)], false, true), vec4<bool>(true, true, false, false)), !any(var_0.xww)), global0.c, -vec2<i32>(-10912i >> (1u % 32u), arg_2));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, global1.x, -418f) - global0.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.yyz - vec3<f32>(arg_1.x, -1350f, global1.x)))))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> vec4<i32> {
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-252f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, global1.x)), global1.x), _wgslsmith_f_op_vec3_f32(func_2(true, global0.c.yz, i32(-1i) * -2585i))), -vec2<i32>(~min(arg_0, 29850i), 1i));
    var var_0 = vec4<bool>(!select(!(global0.b.x & true), all(vec2<bool>(global0.b.x, global0.b.x)), !(global3[_wgslsmith_index_u32(1u, 20u)] & false)), true, all(select(!(!vec3<bool>(true, global0.b.x, false)), !vec3<bool>(false, global0.b.x, false), true)), global0.b.x);
    var_0 = vec4<bool>(any(global0.b.wzx), global3[_wgslsmith_index_u32(~(~(~72008u) << (global0.a.x % 32u)), 20u)], true & (0u <= (arg_2 & _wgslsmith_mult_u32(89450u, arg_2))), all(var_0.xww));
    var_0 = select(select(select(!(!vec4<bool>(false, global0.b.x, var_0.x, false)), !vec4<bool>(global0.b.x, false, true, var_0.x), global0.b), vec4<bool>(!var_0.x, true, var_0.x, true), !(!select(global0.b, vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 20u)], global0.b.x, global3[_wgslsmith_index_u32(4294967295u, 20u)], var_0.x), global0.b))), select(vec4<bool>(any(vec3<bool>(var_0.x, global0.b.x, var_0.x)), global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], !any(vec4<bool>(global0.b.x, true, global3[_wgslsmith_index_u32(27140u, 20u)], global3[_wgslsmith_index_u32(global0.a.x, 20u)]))), select(global0.b, vec4<bool>(any(var_0.xxw), all(vec3<bool>(false, true, true)), false, false), !select(vec4<bool>(var_0.x, true, false, var_0.x), global0.b, true)), select(select(global0.b, !vec4<bool>(global0.b.x, true, false, false), true), vec4<bool>(2147483647i > global0.d.x, false, any(vec2<bool>(var_0.x, false)), global3[_wgslsmith_index_u32(4294967295u, 20u)]), !select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(26922u, 20u)], var_0.x), global0.b, vec4<bool>(global0.b.x, global3[_wgslsmith_index_u32(4294967295u, 20u)], global0.b.x, global3[_wgslsmith_index_u32(arg_2, 20u)])))), any(global0.b));
    let var_1 = _wgslsmith_mod_u32(65808u, _wgslsmith_mult_u32(1u ^ reverseBits(~global0.a.x), ~1u));
    return ~vec4<i32>(81180i & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), global0.d), ~firstLeadingBit(1i >> (global0.a.x % 32u)), -25532i, global0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(global0.a.x, 16u)];
    global3 = array<bool, 20>();
    var var_0 = ~(~func_1(-1i, vec4<u32>(4294967295u >> (global0.a.x % 32u), firstTrailingBit(global0.a.x), firstLeadingBit(4294967295u), global0.a.x), global0.a.x));
    var var_1 = vec2<bool>(any(vec3<bool>(all(global0.b) && true, global1.x <= _wgslsmith_f_op_f32(global0.c.x + global1.x), !global3[_wgslsmith_index_u32(global0.a.x, 20u)])), global0.b.x);
    let var_2 = Struct_1(~vec2<u32>(90932u, min(global0.a.x, _wgslsmith_div_u32(global0.a.x, global0.a.x))), select(vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 20u)], true, var_1.x, global0.b.x), global0.b, vec4<bool>(true, false, select(all(global0.b.xwz), any(global0.b), !var_1.x), var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-345f)), _wgslsmith_f_op_f32(1105f * global1.x)), _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1141f + global1.x) * -427f)), vec3<f32>(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(sign(-1444f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.x * -657f))), _wgslsmith_f_op_f32(trunc(157f)))), select(vec2<i32>(u_input.a, countOneBits(firstTrailingBit(-56351i))), -firstLeadingBit(global0.d), global0.b.xx));
    var var_3 = ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a & -12835i, var_2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, global0.d.x), vec2<i32>(u_input.a, 22139i))), select(vec3<i32>(u_input.a, -1i, u_input.a), _wgslsmith_div_vec3_i32(var_0.xxw, vec3<i32>(u_input.a, -39506i, var_2.d.x)), var_2.b.wyx)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1789f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(141f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x)));
    global3 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(354f, 0i, 34735u, select(vec2<i32>(u_input.a, -var_0.x), vec2<i32>(-1i) * -(var_2.d >> (vec2<u32>(2746u, global0.a.x) % vec2<u32>(32u))), all(var_2.b.xyx)));
}

