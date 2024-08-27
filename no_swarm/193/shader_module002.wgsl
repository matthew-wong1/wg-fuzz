struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec2<f32> = vec2<f32>(-557f, -1037f);

var<private> global3: array<vec3<f32>, 22>;

var<private> global4: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(7878i, -20573i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f * _wgslsmith_f_op_f32(floor(global2.x)))));
    let var_1 = select(-vec2<i32>(-27632i, u_input.a), _wgslsmith_mod_vec2_i32(~(vec2<i32>(-2147483647i, 43859i) & vec2<i32>(u_input.a, 0i)), vec2<i32>(u_input.a, u_input.a)) ^ countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-20284i, -247i)), ~u_input.a)), arg_0);
    let var_2 = -43590i;
    global3 = array<vec3<f32>, 22>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f) - _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(2042f)), -109f)), arg_0.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))) - global2.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    global3 = array<vec3<f32>, 22>();
    var var_0 = Struct_3(vec3<bool>(all(select(select(vec3<bool>(false, true, arg_3.a), vec3<bool>(arg_3.a, arg_3.d, arg_3.d), arg_3.a), select(vec3<bool>(false, arg_3.a, false), vec3<bool>(arg_3.c, arg_3.a, arg_3.c), arg_3.c), select(true, arg_3.a, arg_3.a))), arg_3.d, any(select(!vec3<bool>(true, arg_3.c, arg_3.a), vec3<bool>(false, arg_3.d, true), select(vec3<bool>(false, false, arg_3.d), vec3<bool>(false, arg_3.c, arg_3.c), true)))));
    var_0 = Struct_3(vec3<bool>(select(true, _wgslsmith_div_f32(global2.x, global2.x) >= _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), 0u, Struct_1(true, 1u, var_0.a.x, true))), !any(vec4<bool>(true, true, arg_3.c, true))), arg_3.c, select(var_0.a.x, true, true)));
    global3 = array<vec3<f32>, 22>();
    var var_1 = !vec3<bool>(!arg_3.a, arg_3.c, _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(step(1607f, -1000f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(579f - 827f)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2.x))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec3<f32> {
    global3 = array<vec3<f32>, 22>();
    global1 = array<Struct_1, 7>();
    var var_0 = global2.x;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(global2.x - -881f)) - _wgslsmith_f_op_f32(arg_1.x - -360f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(u_input.a, -25972i) | vec2<i32>(u_input.a, u_input.a), Struct_2(global4[_wgslsmith_index_u32(0u, 1u)], arg_0.x), arg_0.x, Struct_1(true, arg_0.x, true, true))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true))), _wgslsmith_dot_vec2_u32(arg_0 ^ arg_0, arg_0), Struct_1(true, 40455u, any(vec4<bool>(true, true, false, false)), true))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.x))))))));
    let var_1 = (u_input.a >= u_input.a) != !(-34418i > firstTrailingBit(countOneBits(15214i)));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), 22u)];
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(abs(min(u_input.a, 0i)), u_input.a), 2584i, -2147483647i), countOneBits(~abs(_wgslsmith_sub_u32(13800u, 0u))));
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1349f))), _wgslsmith_f_op_f32(-955f * _wgslsmith_div_f32(1447f, 1604f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(~_wgslsmith_clamp_vec2_u32(~min(vec2<u32>(var_0.b, var_0.b), vec2<u32>(1u, 35771u)), min(reverseBits(vec2<u32>(0u, 40402u)), max(vec2<u32>(38680u, 1u), vec2<u32>(4294967295u, var_0.b))), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(28134u, 4294967295u), vec2<u32>(4294967295u, 18551u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_2.x - global2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.yy) + _wgslsmith_f_op_vec2_f32(func_2(var_0.a.yz, Struct_2(global4[_wgslsmith_index_u32(arg_1.b, 1u)], arg_1.b), 4294967295u, Struct_1(true, 61853u, arg_0.a.x, arg_0.a.x))))))));
    var var_2 = arg_0;
    let var_3 = arg_0;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-938f, -383f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(571u, 7u)], vec4<f32>(global2.x, 752f, global2.x, global2.x))), global2.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 564f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), max(1u, 10245u), Struct_1(true, 31254u, false, true))))), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), -u_input.a >= _wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(-1i, -2147483647i)))));
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(4294967295u, 1u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 4294967295u), 763u), abs(~45741u)), 1u, abs(1u)), 4u)];
    global1 = array<Struct_1, 7>();
    var var_1 = ~(~(~(~(~var_0.b))));
    let var_2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b, var_0.b), vec3<u32>(var_0.b, 53371u, var_0.b)) >> (reverseBits(vec3<u32>(4294967295u, var_0.b, var_0.b)) % vec3<u32>(32u)), vec3<u32>(var_0.b | 1u, 6004u, 1u))), 7u)];
    global4 = array<vec3<i32>, 1>();
    var var_3 = vec2<bool>(var_2.c, !var_2.c);
    let var_4 = vec4<i32>(abs(_wgslsmith_mult_i32(0i, 30459i)), var_0.a.x, ~(~(-16881i)), firstLeadingBit(u_input.a));
    global0 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x, ~_wgslsmith_mult_u32(var_0.b, ~1u), select(vec2<i32>(_wgslsmith_div_i32(~var_0.a.x, 0i), var_0.a.x), -vec2<i32>(1i, i32(-1i) * -38811i), vec2<bool>(var_3.x, global2.x >= _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), var_0.b, global1[_wgslsmith_index_u32(29312u, 7u)])))));
}

