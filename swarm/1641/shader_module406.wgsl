struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: array<f32, 17> = array<f32, 17>(-1419f, -266f, -455f, -147f, -839f, -1298f, 663f, -1092f, 2194f, -131f, 483f, -660f, -456f, 864f, 1000f, 753f, -1234f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: f32) -> u32 {
    global2 = array<vec2<bool>, 27>();
    let var_0 = min(_wgslsmith_sub_i32(firstLeadingBit(0i), ~arg_0.b.x), arg_2.d);
    var var_1 = ~1u;
    global1 = array<Struct_3, 24>();
    var var_2 = _wgslsmith_f_op_f32(exp2(arg_2.e));
    return _wgslsmith_clamp_u32(14260u, 1u, 33026u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    global3 = array<f32, 17>();
    let var_0 = global1[_wgslsmith_index_u32(max(arg_0.x, abs(arg_0.x)), 24u)];
    let var_1 = vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, true), global2[_wgslsmith_index_u32(arg_0.x, 27u)])), any(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(arg_0.x, 17u)] >= global3[_wgslsmith_index_u32(arg_0.x, 17u)], var_0.a & var_0.a)), true);
    global0 = array<vec3<i32>, 27>();
    var var_2 = Struct_2(-abs(select(~u_input.c, -var_0.b.x, any(vec2<bool>(var_1.x, false)))), false, Struct_1(!select(vec2<bool>(var_1.x, var_1.x), select(global2[_wgslsmith_index_u32(14449u, 27u)], var_1.yz, vec2<bool>(true, true)), false), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 46055u), vec2<u32>(arg_0.x, arg_0.x), var_0.a), ~arg_0.ww), select(~global0[_wgslsmith_index_u32(arg_0.x, 27u)], countOneBits(~vec3<i32>(var_0.b.x, u_input.a, 0i)), true)), _wgslsmith_mod_vec3_u32(arg_0.yyx & _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 8782u, arg_0.x), arg_0.zxw, arg_0.xzy), ~vec3<u32>(arg_0.x, 0u, arg_0.x)), arg_0.xzw));
    return Struct_3(!var_0.a, reverseBits(vec2<i32>(-5093i, _wgslsmith_div_i32(-38852i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.b.x, 2147483647i, -1i), u_input.e)))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> vec4<i32> {
    let var_0 = func_3(vec4<u32>(reverseBits(_wgslsmith_add_u32(arg_0 << (59581u % 32u), 0u)), ~func_2(Struct_3(arg_1.x, u_input.e.wx), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1, arg_1.x), Struct_4(u_input.e, u_input.e, global2[_wgslsmith_index_u32(1u, 27u)], arg_2, -581f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 17u)] * 903f)), arg_0, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(30747u, 17u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f * global3[_wgslsmith_index_u32(58790u, 17u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~32774u, 17u)] - _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(arg_0, 17u)]))))));
    let var_1 = Struct_3(var_0.a, max(select(~vec2<i32>(1i, -1i), select(u_input.e.yx, vec2<i32>(arg_2, 1i), var_0.a), global2[_wgslsmith_index_u32(~arg_0, 27u)]), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, -7915i)), vec2<i32>(u_input.d.x, 2147483647i))) << (countOneBits(firstLeadingBit(~vec2<u32>(1712u, arg_0))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(316f - -1012f))) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 17u)])) - -770f)));
    let var_3 = Struct_2(abs(firstLeadingBit(-1i)), true, Struct_1(arg_1.zz, arg_0, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -2147483647i, u_input.b, -2147483647i), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -900i)), ~(-57640i), firstLeadingBit(-2147483647i))), _wgslsmith_sub_vec3_u32(~(~select(vec3<u32>(9486u, 4294967295u, 0u), vec3<u32>(46793u, 46680u, 12979u), false)), abs(vec3<u32>(_wgslsmith_mult_u32(arg_0, arg_0), _wgslsmith_mod_u32(16366u, 125976u), reverseBits(arg_0)))));
    let var_4 = Struct_1(arg_1.zz, var_3.c.b, -vec3<i32>(_wgslsmith_mod_i32(-var_3.a, 2794i), _wgslsmith_mult_i32(var_0.b.x ^ var_0.b.x, arg_2 & var_3.a), -arg_2));
    return (_wgslsmith_sub_vec4_i32(u_input.e, max(~u_input.e, u_input.e << (vec4<u32>(var_3.d.x, 4294967295u, var_4.b, var_4.b) % vec4<u32>(32u)))) & _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, -26934i), var_0.b), ~10072i, _wgslsmith_div_i32(0i, 2147483647i), abs(var_0.b.x)), countOneBits(vec4<i32>(arg_2, var_4.c.x, u_input.d.x, -38604i)))) << ((countOneBits(firstLeadingBit(~vec4<u32>(4294967295u, var_3.c.b, var_3.c.b, 1u))) >> (vec4<u32>(var_4.b, 4294967295u, var_3.c.b, 7921u) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_2((firstTrailingBit(-25638i) & 9787i) | u_input.d.x, arg_1.x, Struct_1(select(vec2<bool>(arg_2.c.x || true, !arg_1.x), select(select(arg_2.c, vec2<bool>(arg_1.x, false), arg_1.xy), !arg_2.c, u_input.c <= arg_2.a.x), true | (false | arg_1.x)), _wgslsmith_sub_u32(abs(arg_0), 4294967295u) & arg_0, vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_2.d, arg_2.b.x), ~u_input.a), ~(~u_input.d.x))), vec3<u32>(~(~arg_0), ~8312u, 18609u));
    let var_1 = var_0.b;
    var var_2 = ~(-3668i);
    var var_3 = abs(select(firstTrailingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 53749u), var_0.d.zx, false), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, arg_0)))), ~vec2<u32>(1u, arg_0) & firstLeadingBit(~var_0.d.xy), select(!vec2<bool>(true, arg_1.x), select(arg_2.c, !global2[_wgslsmith_index_u32(4294967295u, 27u)], select(vec2<bool>(arg_1.x, arg_2.c.x), vec2<bool>(false, arg_2.c.x), global2[_wgslsmith_index_u32(var_0.c.b, 27u)])), var_0.c.a)));
    global2 = array<vec2<bool>, 27>();
    return Struct_1(!vec2<bool>(!all(vec4<bool>(var_0.b, false, arg_2.c.x, true)), true), ~(~(~16161u)), func_1(var_3.x, select(!(!arg_1), arg_1, vec3<bool>(true, true, true)), reverseBits(_wgslsmith_add_i32(u_input.c, 31806i) >> ((arg_0 ^ arg_0) % 32u))).wwx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~firstTrailingBit(0u), select(vec3<bool>(all(select(global2[_wgslsmith_index_u32(1u, 27u)], vec2<bool>(false, true), false)), true, any(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec2<bool>(true, false)), all(global2[_wgslsmith_index_u32(26802u, 27u)])), any(vec3<bool>(true, true, true))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 58504u), firstLeadingBit(vec3<u32>(0u, 47172u, 62477u))) >= 4294967295u), Struct_4(func_1(1u, vec3<bool>(true, true, true), u_input.c), u_input.e, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(4294967295u, 1u, 66185u, 4294967295u), vec4<u32>(0u, 16608u, 0u, 106016u)), vec4<u32>(_wgslsmith_add_u32(37371u, 32430u), 1u, ~17310u, _wgslsmith_mult_u32(52862u, 46699u))), 27u)], 32113i, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(0u, 4294967295u)), 17u)]));
    var var_1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-u_input.d.x, -43234i), u_input.a, var_0.c.x, _wgslsmith_clamp_i32(reverseBits(45453i), -var_0.c.x, select(u_input.d.x, u_input.d.x, true))), _wgslsmith_add_vec4_i32(select(~vec4<i32>(-6105i, 37050i, u_input.c, var_0.c.x), _wgslsmith_mult_vec4_i32(u_input.e, u_input.e), true), vec4<i32>(firstTrailingBit(var_0.c.x), u_input.d.x, var_0.c.x ^ u_input.d.x, max(-1i, var_0.c.x))), vec4<i32>(0i, firstTrailingBit(-var_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.c.x, -2147483647i, var_0.c.x), _wgslsmith_mod_vec4_i32(u_input.e, u_input.e)), var_0.c.x));
    global0 = array<vec3<i32>, 27>();
    var var_2 = Struct_1(vec2<bool>((!var_0.a.x || var_0.a.x) && var_0.a.x, !all(select(vec2<bool>(false, false), var_0.a, true))), ~(1934u | var_0.b), func_1(_wgslsmith_clamp_u32(~45518u, var_0.b, 4294967295u), select(!select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(var_0.a.x, false, true), var_0.a.x), !(!vec3<bool>(var_0.a.x, false, true)), vec3<bool>(func_4(var_0.b, vec3<bool>(false, var_0.a.x, var_0.a.x), Struct_4(vec4<i32>(var_1.x, -2147483647i, u_input.c, 2147483647i), u_input.e, global2[_wgslsmith_index_u32(var_0.b, 27u)], u_input.d.x, global3[_wgslsmith_index_u32(4294967295u, 17u)])).a.x, !var_0.a.x, var_0.b <= 1u)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, var_1.x, 48822i, -8777i), vec4<i32>(-1i, -49818i, u_input.a, 22265i)), -firstLeadingBit(var_1.x))).xwx);
    var var_3 = Struct_1(!select(vec2<bool>(any(vec4<bool>(var_0.a.x, var_0.a.x, true, var_2.a.x)), true), func_4(_wgslsmith_mult_u32(0u, var_2.b), !vec3<bool>(true, true, var_0.a.x), Struct_4(vec4<i32>(34896i, -18619i, var_0.c.x, var_1.x), u_input.e, vec2<bool>(var_0.a.x, true), var_2.c.x, 1000f)).a, vec2<bool>(!var_2.a.x, func_3(vec4<u32>(70408u, var_0.b, var_2.b, 0u), 147f).a)), 55155u, vec3<i32>(u_input.e.x, ~var_0.c.x, abs(var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_2.b, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(var_2.b, 17u)], -1054f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(72391u, 17u)], global3[_wgslsmith_index_u32(var_3.b, 17u)], global3[_wgslsmith_index_u32(var_3.b, 17u)], global3[_wgslsmith_index_u32(var_2.b, 17u)]) + vec4<f32>(920f, global3[_wgslsmith_index_u32(var_3.b, 17u)], -1221f, global3[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1129f, global3[_wgslsmith_index_u32(var_2.b, 17u)], -1332f, 596f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_2.b, 17u)], global3[_wgslsmith_index_u32(var_2.b, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)], 236f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.b, 17u)] - global3[_wgslsmith_index_u32(1u, 17u)]) - _wgslsmith_f_op_f32(floor(-305f))), _wgslsmith_div_f32(433f, _wgslsmith_f_op_f32(-724f + global3[_wgslsmith_index_u32(1u, 17u)])), -173f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_2.b, 17u)])))))), 0i);
}

