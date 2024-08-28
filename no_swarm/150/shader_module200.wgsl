struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1;

var<private> global2: f32 = 900f;

var<private> global3: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(i32(-2147483648), 29823i), vec2<i32>(47832i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-37389i, 2147483647i), vec2<i32>(-25045i, 41771i), vec2<i32>(1i, 12765i), vec2<i32>(i32(-2147483648), 22141i), vec2<i32>(-41961i, 54898i), vec2<i32>(63202i, -13822i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -23851i), vec2<i32>(33058i, i32(-2147483648)), vec2<i32>(63646i, 46282i), vec2<i32>(39979i, 0i), vec2<i32>(-26408i, 28225i), vec2<i32>(0i, 2147483647i), vec2<i32>(12047i, 38463i), vec2<i32>(i32(-2147483648), -20240i), vec2<i32>(2147483647i, 1897i), vec2<i32>(0i, -1642i), vec2<i32>(-5999i, 11582i), vec2<i32>(1i, -1i), vec2<i32>(22464i, i32(-2147483648)), vec2<i32>(7439i, 1i), vec2<i32>(-4295i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(3807i, 986i), vec2<i32>(1i, 1i), vec2<i32>(-13881i, -4644i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 1i));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(-1i, 1i, -2223i, i32(-2147483648)), 26261u, 799f, 16524u, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global3 = array<vec2<i32>, 31>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.c + global4.c) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.c, arg_1.c)))) + _wgslsmith_f_op_f32(-arg_0.c)));
    var var_0 = 13132i;
    var_0 = -45919i;
    let var_1 = ~countOneBits(global1.a.x);
    return any(!(!(!vec3<bool>(global1.e, global1.e, arg_0.e))));
}

fn func_3() -> u32 {
    global4 = global0[_wgslsmith_index_u32(select(reverseBits(countOneBits(global4.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(1u), ~global1.b), ~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global4.b), vec2<u32>(u_input.c, 1u)))), all(!(!select(vec3<bool>(true, true, global4.e), vec3<bool>(false, global1.e, false), vec3<bool>(global4.e, false, global4.e))))), 30u)];
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.c + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-3163f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1136f - _wgslsmith_f_op_f32(sign(global4.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - -131f) - 1f))), any(vec4<bool>(!global4.e, true, true, global4.e))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2719f, -217f, 131f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-661f, global4.c, global1.c), vec3<f32>(-875f, 1158f, global1.c), true))))))));
    global0 = array<Struct_1, 30>();
    global2 = global1.c;
    return ~(~(~_wgslsmith_mult_u32(u_input.c, 71491u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    global2 = global1.c;
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(~(-(vec4<i32>(u_input.b.x, u_input.b.x, arg_2.a.x, arg_2.a.x) >> (vec4<u32>(66085u, 36115u, 4294967295u, arg_2.b) % vec4<u32>(32u)))), (~global1.a >> (select(vec4<u32>(18579u, 1u, 4294967295u, 0u), vec4<u32>(global1.b, u_input.c, 14947u, 9098u), global1.e) % vec4<u32>(32u))) | (arg_0 & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.x, arg_0.x, 55587i, 2147483647i), vec4<i32>(global4.a.x, global4.a.x, -2147483647i, 1i), vec4<i32>(arg_2.a.x, global1.a.x, global4.a.x, arg_0.x)))), u_input.c, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-804f, _wgslsmith_f_op_f32(abs(362f))), _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(min(global1.c, global1.c))))), ~(~12093u), global4.c >= -175f);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-(~countOneBits(u_input.b.x)), abs(arg_0.x)), arg_2.a.x);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(30191u, 28134u, 4294967295u), vec3<u32>(73967u, arg_2.d, 4294967295u) >> (vec3<u32>(global1.b, global1.d, global4.b) % vec3<u32>(32u)), var_0.e), vec3<u32>(0u, 82u ^ arg_2.b, _wgslsmith_div_u32(0u, global1.d)) ^ vec3<u32>(_wgslsmith_mod_u32(3229u, var_0.b), 4294967295u, var_0.d))), 30u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(global1.b), _wgslsmith_mult_u32(func_3(), global4.d >> (u_input.a % 32u)), ~u_input.d), 30u)];
    return firstLeadingBit(var_3.a.x);
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    global4 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(global1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, u_input.b.x, arg_0.x, -32420i), global1.a)), countOneBits(arg_0)), ~(-vec4<i32>(2871i, global1.a.x, arg_0.x, -16584i)), vec4<i32>(9852i, global1.a.x, u_input.b.x, 2147483647i) & vec4<i32>(reverseBits(2147483647i), arg_0.x, u_input.b.x & global1.a.x, global1.a.x)), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(36664u, u_input.a) ^ global4.b, global4.b), 527f, global4.d, true);
    var var_0 = global0[_wgslsmith_index_u32(1u, 30u)];
    let var_1 = select(!select(vec4<bool>(global1.e, global4.e || false, var_0.e != var_0.e, true), select(vec4<bool>(var_0.e, global4.e, false, false), select(vec4<bool>(global4.e, false, global1.e, true), vec4<bool>(var_0.e, true, true, global1.e), vec4<bool>(global1.e, global1.e, global4.e, false)), global1.e), vec4<bool>(global1.e, global4.e, false, global4.e)), select(!select(select(vec4<bool>(true, global1.e, true, global4.e), vec4<bool>(global1.e, false, true, true), true), vec4<bool>(var_0.e, global1.e, global4.e, global1.e), select(vec4<bool>(var_0.e, false, false, false), vec4<bool>(global1.e, global1.e, global1.e, false), vec4<bool>(false, var_0.e, false, global4.e))), select(select(vec4<bool>(false, global1.e, true, false), vec4<bool>(false, false, var_0.e, false), vec4<bool>(var_0.e, true, false, global4.e)), select(select(vec4<bool>(true, global4.e, false, global4.e), vec4<bool>(true, false, var_0.e, false), true), vec4<bool>(true, false, global4.e, true), var_0.e | false), !any(vec2<bool>(var_0.e, true))), vec4<bool>(false, any(select(vec2<bool>(global4.e, false), vec2<bool>(global1.e, false), global1.e)), false, !(!global1.e))), all(select(!select(vec2<bool>(global4.e, global1.e), vec2<bool>(global1.e, var_0.e), vec2<bool>(global1.e, false)), vec2<bool>(33850u <= global1.b, false), !global1.e)));
    let var_2 = Struct_1(vec4<i32>(max(global4.a.x, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b.x, var_0.a.x), -global1.a.yy), vec2<i32>(global1.a.x, global4.a.x)), ~1i, 1i), 16103u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c - 1024f), _wgslsmith_f_op_f32(-global1.c))) * var_0.c), min(var_0.d, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(20716u, 12446u, global4.b), 0u)), any(var_1.wx));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - global1.c)), _wgslsmith_f_op_f32(abs(-1233f))) * 642f);
    return Struct_1(_wgslsmith_clamp_vec4_i32(max(reverseBits(vec4<i32>(u_input.b.x, 0i, 23267i, var_0.a.x)), ~(-global4.a)), min(countOneBits(reverseBits(vec4<i32>(-4406i, u_input.b.x, 2147483647i, -47930i))), arg_0), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.x, 1i), var_0.a.xzy >> (vec3<u32>(global4.b, 1u, 25727u) % vec3<u32>(32u))), global1.a.x, 1i, -2147483647i)), _wgslsmith_div_u32(~var_0.b | countOneBits(~var_2.d), _wgslsmith_mod_u32(abs(14709u), u_input.d)), _wgslsmith_f_op_f32(round(var_2.c)), global4.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    let var_0 = select(!(!vec4<bool>(all(vec4<bool>(false, true, false, true)), global4.e, global1.e == global4.e, all(vec4<bool>(global1.e, global4.e, true, false)))), select(vec4<bool>(false, global4.e, false, global1.e), !select(vec4<bool>(global4.e, global1.e, global4.e, false), !vec4<bool>(true, global1.e, true, true), vec4<bool>(false, global1.e, global4.e, false)), !(!select(vec4<bool>(true, global4.e, false, true), vec4<bool>(global1.e, global4.e, false, true), global1.e))), func_1(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 25223u), ~vec3<u32>(global1.b, u_input.c, global1.d)), 30u)]));
    var var_1 = func_4(vec4<i32>(_wgslsmith_div_i32(2147483647i, -1i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(28376i, global4.a.x, 1i)), -vec3<i32>(global4.a.x, u_input.b.x, -6i)) & func_2(min(vec4<i32>(global1.a.x, global4.a.x, u_input.b.x, global4.a.x), vec4<i32>(global4.a.x, global4.a.x, -2147483647i, -17825i)), vec3<bool>(false, true, var_0.x), Struct_1(global4.a, 1u, 1000f, 1u, true)), countOneBits(u_input.b.x), _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(global4.a, global1.a)), global4.a.x, 27505i)));
    global3 = array<vec2<i32>, 31>();
    global2 = global1.c;
    var var_2 = global0[_wgslsmith_index_u32(70769u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, 1254f, 564f, -1135f), vec4<f32>(-1141f, -978f, var_2.c, 929f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, global1.c, 1052f, 869f))) - vec4<f32>(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c, -1000f)) + global4.c), _wgslsmith_f_op_f32(-775f + _wgslsmith_f_op_f32(max(-1238f, global1.c))), var_2.c)));
}

