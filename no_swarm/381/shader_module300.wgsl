struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: vec2<u32> = vec2<u32>(51055u, 7876u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    global1 = global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1, u_input.a) | (global0[_wgslsmith_index_u32(1988u, 21u)] >> (vec2<u32>(global1.x, 1u) % vec2<u32>(32u))), vec2<u32>(1u, ~arg_0)), _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(arg_0, 21u)], vec2<u32>(4294967295u, global1.x)), global0[_wgslsmith_index_u32(arg_1, 21u)] | global0[_wgslsmith_index_u32(global1.x, 21u)], vec2<bool>(true, true)), ~(~global0[_wgslsmith_index_u32(arg_1, 21u)]), vec2<u32>(22676u, arg_1))), 10729u, true), 21u)];
    global1 = vec2<u32>(9550u, select(arg_1, ~arg_0, !(true != any(vec4<bool>(false, false, false, true)))));
    var var_0 = select(all(!vec2<bool>(arg_1 < 64440u, false)), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec2<bool>(true, true))), all(vec4<bool>(true, false, !any(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true)))));
    global0 = array<vec2<u32>, 21>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-103f))), _wgslsmith_f_op_f32(-373f + _wgslsmith_f_op_f32(min(768f, -340f))))))));
}

fn func_2() -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(u_input.b, 21u)];
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(53259u), _wgslsmith_div_u32(global1.x, u_input.b), 1u ^ global1.x), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a, 1u, global1.x), vec3<u32>(u_input.c, 1u, 20822u), vec3<bool>(false, false, false)), ~vec3<u32>(u_input.c, 4294967295u, 4294967295u))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2214f)))));
    let var_1 = Struct_3(~abs(39330u) ^ max(~countOneBits(u_input.b), global1.x), select(select(vec3<bool>(true, global1.x <= u_input.c, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false), _wgslsmith_div_u32(~607u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), global0[_wgslsmith_index_u32(24767u, 21u)]))), vec2<u32>(firstTrailingBit(~0u), global1.x));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1376f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_div_f32(772f, -156f)));
    var var_3 = Struct_2(Struct_1(select(any(vec2<bool>(true, true)), var_1.b.x, true), all(vec2<bool>(!var_1.b.x, true)), countOneBits(firstLeadingBit(vec3<u32>(u_input.b, 49785u, 4294967295u))), 1u, true));
    return var_3.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_4 {
    global1 = vec2<u32>(max(~global1.x, ~19687u), u_input.a);
    var var_0 = !all(select(!vec4<bool>(true, arg_1, false, false), !vec4<bool>(arg_1, arg_1, false, false), !vec4<bool>(arg_1, arg_1, false, true))) && arg_1;
    global1 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.x, 11747u), min(min(57748u, 4294967295u), 4294967295u)), _wgslsmith_add_u32(global1.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), global0[_wgslsmith_index_u32(global1.x, 21u)]), vec2<u32>(global1.x, 0u))));
    var_0 = any(!(!(!vec3<bool>(arg_1, true, arg_1))));
    let var_1 = Struct_2(func_2());
    return Struct_4(vec2<bool>(any(vec3<bool>(select(arg_1, var_1.a.a, true), true, arg_0.x > 0i)), global1.x >= 44796u), vec3<bool>(arg_1, false, arg_1));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = Struct_1(arg_2.d.a.x, func_2().a, _wgslsmith_mult_vec3_u32(max(vec3<u32>(~4294967295u, global1.x, _wgslsmith_mod_u32(0u, 4294967295u)), select(arg_1.a.zyz, ~vec3<u32>(2268u, 4294967295u, u_input.a), !arg_1.d.a.x)), ~(~arg_2.a.wwx)), ~max(arg_2.a.x, ~(~arg_2.a.x)), true);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-651f)))))), -606f));
    var var_2 = vec2<u32>(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 19689u, 15596u, var_0.d), vec4<u32>(arg_0.a.x, 4294967295u, global1.x, 76294u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), func_2().d))), arg_1.a.x);
    return vec4<i32>(-1i, 8466i, ~arg_1.c, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~global0[_wgslsmith_index_u32(14740u, 21u)] ^ vec2<u32>(_wgslsmith_clamp_u32(1u, 1u, u_input.a), ~global1.x));
    let var_0 = vec3<bool>(any(vec4<bool>(true || select(false, false, false), false, true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)), any(vec4<bool>(true, true, true, true)));
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    let var_1 = Struct_3(~(~(~100105u)), vec3<bool>(!any(!vec2<bool>(false, var_0.x)), false || var_0.x, !(true || (u_input.b > u_input.c))), 20789u, ~(global0[_wgslsmith_index_u32(global1.x, 21u)] & _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), global0[_wgslsmith_index_u32(global1.x, 21u)] & vec2<u32>(1u, 4294967295u))));
    global0 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(628f * 1001f), _wgslsmith_f_op_f32(sign(-962f)))))), func_4(Struct_5(vec4<u32>(global1.x, 1u, u_input.b, 1u) << (vec4<u32>(56129u, global1.x, 42144u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, -1000f, -848f)), ~47221i, func_1(vec3<i32>(-27807i, 1i, 2147483647i), false)), Struct_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(8685u, 12693u, 4294967295u, 11592u), vec4<u32>(0u, var_1.c, 55686u, global1.x), vec4<u32>(5785u, u_input.c, global1.x, u_input.b)), vec3<f32>(-915f, 868f, 701f), ~(-31336i), Struct_4(var_1.b.xx, vec3<bool>(var_1.b.x, false, var_0.x))), Struct_5(select(vec4<u32>(1u, 22352u, 0u, 1u), vec4<u32>(var_1.a, 17867u, var_1.a, 51121u), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1310f, 469f, -311f))), _wgslsmith_add_i32(-11168i, 2147483647i), Struct_4(var_0.zy, var_1.b))) & (vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)));
}

