struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(7359u, 1u, 4294967295u);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(26397i), Struct_1(25327i), Struct_1(-23923i), 8652i, 565f), vec4<f32>(-923f, 650f, -688f, -464f), Struct_2(Struct_1(-57i), Struct_1(2147483647i), Struct_1(16169i), 2147483647i, -637f));

var<private> global2: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-14097i, 1i, -1i));

var<private> global3: array<bool, 10>;

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> vec4<f32> {
    global0 = vec3<u32>(_wgslsmith_mult_u32(arg_0.x, ~arg_0.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, firstTrailingBit(firstLeadingBit(179564u))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~20408u, arg_0.x, _wgslsmith_sub_u32(u_input.b, arg_0.x)), _wgslsmith_mult_u32(37153u, _wgslsmith_sub_u32(global0.x, u_input.a.x)))), ~59764u | _wgslsmith_dot_vec3_u32(u_input.a, ~abs(vec3<u32>(u_input.a.x, 1u, u_input.b))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1171f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e + arg_1))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.e, global1.b.x) + arg_2.c.e), _wgslsmith_f_op_f32(exp2(1f)), 287f);
    var var_2 = -30374i;
    return arg_2.b;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_3(global1.c, _wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(1u, abs(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.e - 173f))), Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)), global1.c), Struct_2(global4[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 25u)], Struct_1(_wgslsmith_mod_i32(0i, -43987i)), global4[_wgslsmith_index_u32(~0u, 25u)], ~arg_0, _wgslsmith_div_f32(-1810f, _wgslsmith_f_op_f32(round(global1.b.x)))))), Struct_2(Struct_1(~(~(-11703i))), global4[_wgslsmith_index_u32(1u, 25u)], global1.c.a, _wgslsmith_clamp_i32(-(~31080i), 0i, arg_0), _wgslsmith_f_op_f32(floor(160f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e + _wgslsmith_f_op_f32(sign(var_0.a.e))) * 600f)));
    global0 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, ~vec2<u32>(global0.x, 4294967295u)), 1u), ~(~(~0u)), 48631u);
    let var_2 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1530f, global1.b.x, 205f, 116f))))), var_0.a);
    global0 = vec3<u32>(1u, firstLeadingBit(_wgslsmith_add_u32(select(global0.x, ~global0.x, false), firstTrailingBit(reverseBits(1688u)))), u_input.b);
    return Struct_1(arg_0);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_2(arg_1.b, global4[_wgslsmith_index_u32(global0.x ^ 0u, 25u)], func_2(~1i), arg_1.a.a, _wgslsmith_f_op_f32(round(arg_3.x)));
    global2 = array<vec3<i32>, 1>();
    var var_1 = global1.c;
    var var_2 = -vec4<i32>(var_1.a.a, _wgslsmith_div_i32(-5467i, arg_2.x), 21828i, ~func_2(func_2(0i).a).a);
    let var_3 = global3[_wgslsmith_index_u32(~u_input.a.x, 10u)];
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b.x)) - global1.c.e), global1.a, global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, 1u, u_input.b), 1u)], _wgslsmith_f_op_vec4_f32(-global1.b)) & _wgslsmith_sub_u32(func_1(-247f, global1.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(715u, 4294967295u), global0.yy), 1u)], global1.b), global0.x), 1u)];
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-global1.c.e), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(238f)))), select(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], true, true)), !select(vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(13605u, 10u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 10u)], global3[_wgslsmith_index_u32(24471u, 10u)], global3[_wgslsmith_index_u32(47836u, 10u)]), vec4<bool>(global3[_wgslsmith_index_u32(37132u, 10u)], global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)], true)), !select(vec4<bool>(true, global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(36019u, 10u)], false), vec4<bool>(true, false, true, true), false)))), global1.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -162f))) + 1175f));
    global2 = array<vec3<i32>, 1>();
    var_1 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_div_u32(4294967295u, countOneBits(max(global0.x, global0.x))), -1053f, firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~var_0.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.xx, vec2<i32>(-1i, -21680i))), reverseBits(~var_0.xx))));
}

