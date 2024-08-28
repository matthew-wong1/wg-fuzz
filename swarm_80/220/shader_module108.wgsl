struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 31816u, 4914u);

var<private> global1: array<f32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(547f - 1619f), arg_1)) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(806f * global1[_wgslsmith_index_u32(global0.x, 10u)]), _wgslsmith_f_op_f32(abs(-149f))), arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1477f, -455f)), vec2<f32>(1000f, arg_2))))), all(!(!select(vec2<bool>(arg_3.a, true), vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(arg_3.a, false))))));
    global1 = array<f32, 10>();
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(50836u, _wgslsmith_dot_vec3_u32(arg_0.wwy, _wgslsmith_clamp_vec3_u32(~arg_0.wzz, vec3<u32>(21421u, 0u, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(29835u, 4294967295u, arg_0.x), arg_0.wwy, arg_0.zzx))), _wgslsmith_div_u32(16499u, firstLeadingBit(reverseBits(arg_0.x)))), firstLeadingBit(vec3<u32>(4294967295u, 1u, ~31013u | global0.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x << (1u % 32u), 10u)])))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, 1317f, false)), _wgslsmith_f_op_f32(arg_1 - -1507f)))), _wgslsmith_f_op_f32(sign(arg_2)))));
    var var_2 = ~(1u ^ global0.x);
    return select(select(select(!select(vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a), vec4<bool>(false, true, arg_3.a, arg_3.a), arg_3.a), vec4<bool>(true & arg_3.a, any(vec3<bool>(false, arg_3.a, arg_3.a)), select(true, true, true), true), arg_3.a), select(!select(vec4<bool>(arg_3.a, false, true, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, true, arg_3.a), arg_3.a), !vec4<bool>(true, true, arg_3.a, false), !vec4<bool>(arg_3.a, false, false, true)), select(vec4<bool>(!arg_3.a, !arg_3.a, false || arg_3.a, !arg_3.a), select(!vec4<bool>(false, arg_3.a, arg_3.a, false), !vec4<bool>(false, true, arg_3.a, false), !vec4<bool>(arg_3.a, false, true, arg_3.a)), vec4<bool>(all(vec2<bool>(arg_3.a, true)), false, arg_3.a, true))), !select(!vec4<bool>(arg_3.a, false, arg_3.a, arg_3.a), !(!vec4<bool>(arg_3.a, true, arg_3.a, true)), vec4<bool>(!arg_3.a, true, any(vec2<bool>(arg_3.a, arg_3.a)), true & arg_3.a)), arg_3.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    var var_0 = Struct_1(false);
    global1 = array<f32, 10>();
    var var_1 = -(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, -43767i, 2147483647i, 0i)), vec4<i32>(u_input.b, -1i, 1i, u_input.c.x) << ((vec4<u32>(arg_1.x, 4294967295u, u_input.a, arg_2) | vec4<u32>(1u, u_input.a, 1u, 0u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(u_input.c, ~u_input.c)) | select(u_input.c, ~vec4<i32>(44300i, -1i, u_input.c.x, 0i), select(vec4<bool>(true, true, true, true), func_3(vec4<u32>(11703u, 16614u, 4294967295u, arg_2), global1[_wgslsmith_index_u32(54345u, 10u)], 1000f, Struct_1(true)), !vec4<bool>(var_0.a, false, true, var_0.a))));
    return Struct_1(var_0.a);
}

fn func_1() -> bool {
    global1 = array<f32, 10>();
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17319u, u_input.a, 21343u), ~reverseBits(vec4<u32>(1u, global0.x, global0.x, global0.x))), countOneBits(~(~global0.x)), u_input.a) >> (vec3<u32>(0u, ~_wgslsmith_mult_u32(~global0.x, 15444u), _wgslsmith_mod_u32(~(~0u), _wgslsmith_mult_u32(u_input.a, 1u))) % vec3<u32>(32u));
    let var_0 = func_2(vec2<bool>(true, true), ~(vec4<u32>(_wgslsmith_mult_u32(u_input.a, global0.x), global0.x, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 50915u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), global0.xy)) << (((vec4<u32>(51185u, global0.x, global0.x, global0.x) & vec4<u32>(4294967295u, 48819u, u_input.a, 33173u)) ^ vec4<u32>(47629u, 5267u, 4286u, global0.x)) % vec4<u32>(32u))), _wgslsmith_div_u32(1u, select(1u, ~(u_input.a | 4294967295u), false)));
    global0 = firstTrailingBit(vec3<u32>(8412u, 1u & _wgslsmith_clamp_u32(u_input.a, 63350u, global0.x), ~(44047u >> (0u % 32u))) >> (vec3<u32>(select(~u_input.a, global0.x, true), 4294967295u, ~global0.x) % vec3<u32>(32u)));
    var var_1 = all(!vec2<bool>(all(!vec3<bool>(true, true, var_0.a)), !(false | var_0.a)));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = countOneBits(reverseBits(~vec3<u32>(~u_input.a, ~1u, ~64504u)));
    global0 = ~(~(~var_0));
    let var_1 = select(!select(func_3(vec4<u32>(global0.x, global0.x, 42859u, 11001u), _wgslsmith_f_op_f32(trunc(1299f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45001u, 15758u, global0.x), vec4<u32>(global0.x, var_0.x, u_input.a, u_input.a)), 10u)], arg_0).yzx, !select(vec3<bool>(false, arg_0.a, false), vec3<bool>(true, true, arg_1), arg_1), vec3<bool>(!arg_0.a, false, true && arg_1)), func_3(firstLeadingBit(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(44316u, global0.x, global0.x, u_input.a)), vec4<u32>(4294967295u, global0.x, 4294967295u, 1u), vec4<u32>(1u, global0.x, global0.x, 0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-542f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(70933u, 10u)]))), global1[_wgslsmith_index_u32(u_input.a, 10u)], false & func_1())), func_2(select(vec2<bool>(arg_1, false), func_3(vec4<u32>(var_0.x, 1u, 29750u, u_input.a), global1[_wgslsmith_index_u32(62118u, 10u)], 1082f, Struct_1(arg_1)).wz, select(vec2<bool>(true, false), vec2<bool>(arg_0.a, false), true)), ~vec4<u32>(global0.x, var_0.x, 23693u, 0u) & max(vec4<u32>(40814u, global0.x, global0.x, global0.x), vec4<u32>(var_0.x, 0u, var_0.x, u_input.a)), ~(~4294967295u))).xzw, !vec3<bool>(_wgslsmith_add_u32(u_input.a, 32809u) > _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 54158u, 62061u), var_0), false, !any(vec2<bool>(arg_0.a, false))));
    global1 = array<f32, 10>();
    let var_2 = 4294967295u;
    return select(select(vec3<bool>(all(!vec2<bool>(true, arg_0.a)), all(vec4<bool>(var_1.x, arg_1, var_1.x, false)) || arg_1, true | arg_0.a), select(vec3<bool>(!arg_0.a, global1[_wgslsmith_index_u32(global0.x, 10u)] <= global1[_wgslsmith_index_u32(var_2, 10u)], var_1.x), select(var_1, vec3<bool>(var_1.x, false, arg_0.a), select(vec3<bool>(arg_0.a, false, false), var_1, true)), false), any(vec3<bool>(func_1(), any(var_1), false))), var_1, !var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1()), all(func_3(max(~vec4<u32>(u_input.a, 62819u, 4294967295u, 25647u), vec4<u32>(u_input.a, 0u, 1u, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -2117f), _wgslsmith_f_op_f32(floor(1f)), func_2(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), ~vec4<u32>(28660u, 4294967295u, global0.x, global0.x), u_input.a)).wwy));
    let x = u_input.a;
    s_output = StorageBuffer(-114f, _wgslsmith_f_op_f32(-1262f - _wgslsmith_f_op_f32(round(-245f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(330f - global1[_wgslsmith_index_u32(4520u, 10u)]))), _wgslsmith_f_op_f32(sign(-1133f)), global1[_wgslsmith_index_u32(~(~global0.x), 10u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(1u, 10u)], 715f, 1304f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1973f, global1[_wgslsmith_index_u32(1u, 10u)], -482f) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 10u)], 475f, 938f))) * vec3<f32>(-2337f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 10u)]), global1[_wgslsmith_index_u32(global0.x, 10u)])))));
}

