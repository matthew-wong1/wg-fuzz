struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-999i, -1i, 1i);

var<private> global1: i32 = 1i;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(59402u, 20417u, 0u), vec3<u32>(51489u, 28786u, 13338u), vec3<u32>(62665u, 15030u, 110326u), vec3<u32>(38407u, 76665u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(112347u, 6411u, 53065u), vec3<u32>(27548u, 1u, 0u), vec3<u32>(1u, 74112u, 0u), vec3<u32>(39135u, 0u, 49310u), vec3<u32>(1u, 54043u, 1u), vec3<u32>(17009u, 4294967295u, 0u), vec3<u32>(12581u, 0u, 33976u));

var<private> global3: array<vec2<bool>, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(~firstTrailingBit(reverseBits(36483i)), _wgslsmith_mult_i32(max(u_input.b.x << (4597u % 32u), 40491i), 26813i)), _wgslsmith_f_op_f32(-arg_1.b), abs(~countOneBits(~4294967295u)));
    var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 9859u, u_input.c.x, u_input.c.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, u_input.c.x, arg_1.c, arg_1.c), vec4<u32>(12816u, 11815u, var_0.c, 39578u)) % vec4<u32>(32u))), ~(~firstLeadingBit(vec4<u32>(u_input.c.x, 1u, 4294967295u, var_0.c)))));
    let var_1 = Struct_1(reverseBits(-(~_wgslsmith_sub_i32(var_0.a, -13923i))), arg_1.b, ~(~_wgslsmith_clamp_u32(~1u, var_0.c, arg_1.c)));
    global2 = array<vec3<u32>, 12>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~(~1u)), ~(~(u_input.c & vec2<u32>(29087u, 0u)))) ^ firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~var_1.c, 12u)], vec3<u32>(1u, arg_1.c, 4294967295u)), 0u)), 1u)];
    return var_0.a;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1486f, 1542f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(f32(-1f) * -1894f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1916f * 458f), _wgslsmith_f_op_f32(2386f + 1000f), select(true, false, false))), _wgslsmith_f_op_f32(floor(-552f))), -305f));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(var_0.xx));
    let var_2 = ~25053u >= arg_0;
    var var_3 = Struct_1(~max(u_input.b.x << ((u_input.c.x << (5813u % 32u)) % 32u), ~18380i), 840f, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u << (1u % 32u), countOneBits(~20373u))));
    let var_4 = vec3<i32>(-select(-1i, countOneBits(-var_3.a), true & all(vec2<bool>(var_2, var_2))), -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(54885u, 3u)], global0[_wgslsmith_index_u32(u_input.c.x, 3u)], -55825i) >> (firstTrailingBit(58685u) % 32u), min(func_3(vec4<f32>(var_0.x, 909f, var_3.b, -390f), Struct_1(u_input.a, var_1.x, u_input.c.x)), _wgslsmith_mult_i32(2147483647i, 0i)), global0[_wgslsmith_index_u32(~0u, 3u)]), _wgslsmith_div_i32(-11852i, ~select(1i, 0i, true)));
    return Struct_1(_wgslsmith_div_i32(-1i, -_wgslsmith_add_i32(var_4.x, -var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - -1212f))), 4799u);
}

fn func_1() -> f32 {
    global2 = array<vec3<u32>, 12>();
    global0 = array<i32, 3>();
    let var_0 = reverseBits(-2147483647i);
    var var_1 = _wgslsmith_sub_u32(u_input.c.x, 38509u);
    var var_2 = func_2(~u_input.c.x);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-521f, -112f, false)) + -437f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1557f - -121f) - 124f)), !all(select(vec2<bool>(false, false), global3[_wgslsmith_index_u32(u_input.c.x, 1u)], true)))), ~u_input.c.x);
    var var_1 = select(vec3<bool>(true, !(_wgslsmith_div_u32(u_input.c.x, var_0.c) > var_0.c), select(true && (u_input.a >= 2147483647i), _wgslsmith_div_u32(47430u, u_input.c.x) > 32768u, _wgslsmith_f_op_f32(-1377f + var_0.b) <= _wgslsmith_div_f32(723f, var_0.b))), select(vec3<bool>(select(true, true, false) && any(vec2<bool>(true, true)), 1u == _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(var_0.c, 12u)], global2[_wgslsmith_index_u32(37235u, 12u)]), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), true), vec3<bool>(any(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, true)), true)), !vec3<bool>(any(global3[_wgslsmith_index_u32(var_0.c, 1u)]), all(vec2<bool>(true, true)), false)), select(select(vec3<bool>(all(vec2<bool>(false, true)), true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true), vec3<bool>(true, var_0.c >= 4294967295u, any(vec3<bool>(false, false, false))), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_1(0i >> (~func_2(13263u).c % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2100f)), 630f)), ~_wgslsmith_mult_u32(firstLeadingBit(38188u), var_0.c));
    global3 = array<vec2<bool>, 1>();
    let var_3 = func_2(min(var_0.c, _wgslsmith_add_u32(firstTrailingBit(var_2.c), countOneBits(9296u))) ^ ~(~(~4294967295u)));
    global1 = -_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(-(~var_0.a), firstTrailingBit(countOneBits(var_3.a))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(select(1822f, _wgslsmith_f_op_f32(f32(-1f) * -963f), var_1.x))))), 548f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_2.b, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-499f, var_3.b)))))), _wgslsmith_f_op_f32(floor(-457f)), 1344f), select(abs(u_input.c), firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(2320u, var_3.c), max(u_input.c, vec2<u32>(var_0.c, var_0.c)))), var_1.xy), 2147483647i);
}

