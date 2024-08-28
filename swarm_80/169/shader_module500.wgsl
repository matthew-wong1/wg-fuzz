struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = ~(~(~(~u_input.b.x) >> (4294967295u % 32u)));
    global0 = arg_0;
    let var_1 = -11596i;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-737f, 418f) * -209f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1967f, 2014f)) - _wgslsmith_f_op_f32(f32(-1f) * -309f)), _wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(round(840f))), _wgslsmith_f_op_f32(f32(-1f) * -537f))) - vec4<f32>(_wgslsmith_div_f32(1442f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2987f + -1499f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f)), -2221f, 174f));
    global0 = arg_1;
    return ~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(58549u, u_input.b.x, 34397u, var_0), vec4<u32>(4294967295u, u_input.b.x, var_0, 1u)), ~4294967295u)) >= 4294967295u;
}

fn func_2() -> vec3<u32> {
    var var_0 = select(!vec2<bool>(any(vec4<bool>(false, false, true, false)), func_3(Struct_1(-19404i, -2147483647i), Struct_1(18392i, 2147483647i), ~global0.b)), vec2<bool>(!(all(vec2<bool>(false, true)) == any(vec2<bool>(false, true))), true), any(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), func_3(Struct_1(u_input.a, -837i), Struct_1(global0.a, 0i), u_input.a)))));
    var_0 = vec2<bool>(!(!(!var_0.x)) || func_3(Struct_1(2147483647i, -8306i << (u_input.b.x % 32u)), Struct_1(u_input.a & -29233i, 2147483647i), u_input.a), !(!all(vec2<bool>(var_0.x, false))));
    global0 = Struct_1(u_input.a, _wgslsmith_div_i32(-2998i, 1i));
    let var_1 = u_input.b.zy;
    let var_2 = _wgslsmith_clamp_i32(-(~global0.b), 2147483647i, _wgslsmith_clamp_i32(7358i, _wgslsmith_mult_i32(global0.a, i32(-1i) * -global0.a), u_input.a));
    return ~firstLeadingBit(u_input.b);
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(28854u | (4294967295u << (min(13955u, u_input.b.x) % 32u)), 0u);
    let var_1 = -179f;
    var var_2 = ~(abs(select(vec3<u32>(u_input.b.x, 9589u, u_input.b.x), vec3<u32>(135069u, var_0, u_input.b.x), false)) >> (u_input.b % vec3<u32>(32u))) | func_2();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-455f * -1329f), -180f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1177f * var_1))), false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    var var_4 = vec3<bool>(true, any(vec2<bool>(true, true)), true);
    return Struct_1(_wgslsmith_mult_i32(-2147483647i, ~((2147483647i << (var_2.x % 32u)) ^ ~u_input.a)), abs(-abs(global0.b << (u_input.b.x % 32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1667f, 1017f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 430f) - _wgslsmith_f_op_f32(select(-476f, -341f, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(655f, 372f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1128f)) + _wgslsmith_f_op_f32(-271f - _wgslsmith_f_op_f32(-723f - 250f))))));
    let var_1 = ~arg_0.yz;
    global0 = Struct_1(select(_wgslsmith_mult_i32(reverseBits(global0.a), -(global0.a & arg_1.a)), -abs(-74728i), _wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(-599f + var_0)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_div_i32(global0.a & 1i, ~23796i));
    var var_2 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, 531f))))));
    var var_3 = Struct_1(-50906i, ~(-(arg_2.a >> (u_input.b.x % 32u))) >> (u_input.b.x % 32u));
    return Struct_1(arg_1.a, _wgslsmith_sub_i32(arg_0.x, arg_2.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-300f)) - -725f), _wgslsmith_f_op_f32(-1176f * _wgslsmith_f_op_f32(abs(-1035f))))))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1559f)), _wgslsmith_f_op_f32(f32(-1f) * -747f))));
    global0 = arg_2;
    var var_1 = func_1();
    global0 = arg_2;
    var var_2 = func_1();
    return func_1();
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_1.x;
    var var_1 = arg_0;
    let var_2 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(global0.a, (_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, u_input.a, u_input.a), vec3<i32>(-1i, 2147483647i, u_input.a)) | 0i) | -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, 0i), vec2<i32>(u_input.a, global0.a)), any(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), all(vec3<bool>(true, true, false))))), global0.a);
    global0 = func_6(func_5(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_4(firstLeadingBit(-vec3<i32>(global0.a, u_input.a, 45321i)), func_1(), Struct_1(i32(-1i) * -9329i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(global0.a, u_input.a)))), ~(~(-vec4<i32>(1i, 1466i, u_input.a, -1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1384f, 571f))))))));
    global0 = func_6(func_1(), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(147f, -2555f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1975f, -1140f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(105f, 2878f) - vec2<f32>(243f, -1002f))))))));
    var var_0 = Struct_1(global0.a >> (1u % 32u), ~(-21229i) << (~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 0u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yy), u_input.b.x) % 32u));
    var var_1 = ~(~max(~vec4<i32>(global0.a, 5279i, 12318i, -1i) & max(vec4<i32>(global0.b, u_input.a, u_input.a, global0.a), vec4<i32>(var_0.b, -1i, -1i, var_0.b)), abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, var_0.a) ^ vec4<i32>(0i, var_0.a, global0.b, global0.a))));
    var_1 = reverseBits(~(firstTrailingBit(vec4<i32>(var_1.x, 16546i, -2147483647i, -19588i)) << (vec4<u32>(_wgslsmith_mod_u32(1u, 57880u), firstLeadingBit(0u), ~20505u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u))));
    var var_2 = ~(~46698u);
    var var_3 = !vec2<bool>(select(false, true, func_3(Struct_1(25743i, var_1.x), func_5(vec3<bool>(true, false, true), vec3<bool>(false, true, false), Struct_1(-5715i, 70979i), vec4<i32>(-2687i, var_0.b, var_0.a, -59347i)), _wgslsmith_clamp_i32(18058i, -17338i, var_0.a))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1864f, -1432f) - vec2<f32>(1f, 1f)))));
}

