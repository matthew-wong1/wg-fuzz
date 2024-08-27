struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(266f));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-801f), Struct_1(133f), Struct_1(-1644f), Struct_1(2081f), Struct_1(171f));

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(1139f)), Struct_2(Struct_1(-1315f)), Struct_2(Struct_1(412f)), Struct_2(Struct_1(553f)), Struct_2(Struct_1(970f)), Struct_2(Struct_1(337f)), Struct_2(Struct_1(-398f)), Struct_2(Struct_1(839f)), Struct_2(Struct_1(-940f)), Struct_2(Struct_1(1197f)), Struct_2(Struct_1(124f)), Struct_2(Struct_1(368f)), Struct_2(Struct_1(583f)), Struct_2(Struct_1(-2308f)));

var<private> global3: vec2<f32> = vec2<f32>(267f, 503f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(global0.a.a - global0.a.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a))), _wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.a))))))));
    var var_1 = global2[_wgslsmith_index_u32(~(~16435u), 14u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-461f)) - -364f) + global3.x)) - arg_0.a.a);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))) * global0.a.a), -552f));
    var var_4 = -u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + arg_0.a.a))));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global2 = array<Struct_2, 14>();
    global2 = array<Struct_2, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(150f, _wgslsmith_f_op_f32(arg_0 * arg_0)) + -1368f))));
    global0 = global2[_wgslsmith_index_u32(reverseBits(~22760u), 14u)];
    let var_1 = var_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0, -751f)), _wgslsmith_f_op_f32(f32(-1f) * -1320f))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-396f + -1123f)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(func_2(Struct_2(arg_1.a)))));
    let var_0 = 0u;
    var var_1 = arg_1.a;
    var var_2 = ~max(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(78095u, arg_2), vec2<u32>(arg_0, 6884u)) >> (countOneBits(vec2<u32>(arg_2, 29225u)) % vec2<u32>(32u))), vec2<u32>(arg_2, abs(97205u << (arg_0 % 32u))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(52288u, firstLeadingBit(1u) >> (_wgslsmith_div_u32(1u, ~1u) % 32u)), 0u >> (select(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 2730u), vec2<u32>(19490u, 69257u))), 0u, !(u_input.a.x == -45819i)) % 32u)), 14u)];
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.a - var_3.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 62854u;
    global1 = array<Struct_1, 5>();
    var var_1 = Struct_1(1572f);
    global1 = array<Struct_1, 5>();
    global0 = func_1(33180u | var_0, Struct_2(Struct_1(-901f)), ~(~var_0));
    global1 = array<Struct_1, 5>();
    global3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2268f, global0.a.a) * vec2<f32>(1000f, var_1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, global3.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, func_1(var_0, Struct_2(global1[_wgslsmith_index_u32(var_0, 5u)]), var_0).a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.a, var_1.a))) + vec2<f32>(_wgslsmith_div_f32(global3.x, global0.a.a), 916f)) - vec2<f32>(908f, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -min(select(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), false), ~vec4<i32>(u_input.a.x, -3811i, u_input.a.x, u_input.a.x)), (firstTrailingBit(countOneBits(vec2<i32>(2147483647i, u_input.a.x))) & _wgslsmith_clamp_vec2_i32(u_input.a, abs(u_input.a), -u_input.a)) ^ vec2<i32>(u_input.a.x, min(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), i32(-1i) * -22967i)), ~_wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(var_0, var_0, var_0, var_0)), abs(vec4<u32>(377u, 21510u, var_0, 0u)), global3.x < 2011f), (vec4<u32>(var_0, var_0, var_0, var_0) & vec4<u32>(var_0, 0u, var_0, var_0)) >> ((vec4<u32>(var_0, var_0, var_0, 20772u) ^ vec4<u32>(26680u, var_0, 60882u, var_0)) % vec4<u32>(32u))));
}

