struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(4294967295u, 16387u), Struct_1(1u, 1u), Struct_1(0u, 4294967295u), Struct_1(53547u, 82555u), Struct_1(1u, 15827u), Struct_1(4294967295u, 1u), Struct_1(1u, 4294967295u), Struct_1(4294967295u, 18572u), Struct_1(32070u, 1u), Struct_1(73597u, 4294967295u));

var<private> global1: array<vec2<u32>, 20>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_1(reverseBits(_wgslsmith_sub_u32(u_input.b >> (u_input.c % 32u), ~firstTrailingBit(89271u))), u_input.b);
    var var_1 = _wgslsmith_div_i32(firstTrailingBit(i32(-1i) * -countOneBits(0i)), _wgslsmith_mod_i32(1i, 2147483647i));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_dot_vec2_u32((global1[_wgslsmith_index_u32(u_input.b, 20u)] & global1[_wgslsmith_index_u32(u_input.c, 20u)]) & vec2<u32>(u_input.b, var_0.a), min(vec2<u32>(var_0.a, 13406u), vec2<u32>(80491u, var_0.a)) ^ firstLeadingBit(vec2<u32>(u_input.c, 35481u))), firstTrailingBit(u_input.a)), 10u)];
    return _wgslsmith_f_op_f32(-141f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-829f, 344f, false))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = array<Struct_1, 10>();
    global1 = array<vec2<u32>, 20>();
    global1 = array<vec2<u32>, 20>();
    let var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1031f * -1883f), _wgslsmith_f_op_f32(abs(-1654f)))), 814f))));
    var var_1 = _wgslsmith_f_op_f32(func_3());
    return _wgslsmith_f_op_f32(exp2(var_0.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = ~(~reverseBits(select(max(4294967295u, 87639u), ~20786u, true)));
    return Struct_1(u_input.a, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 1u) << (vec2<u32>(u_input.c, 55492u) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(29983u | arg_1.b, 20u)])));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = array<Struct_1, 10>();
    var var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a, arg_2.a);
    let var_2 = Struct_1(arg_2.b, _wgslsmith_add_u32(~(1u & _wgslsmith_div_u32(var_1.a, 28434u)), ~_wgslsmith_div_u32(1u, var_1.b)));
    var_1 = global0[_wgslsmith_index_u32(var_2.a, 10u)];
    return ~(~(~(~(~111418u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = abs(_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-22297i, -19937i), ~vec2<i32>(4309i, -3597i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12466i, 1i, -49908i), vec3<i32>(1i, 1i, 1i)), -8i)));
    let var_1 = (-(~_wgslsmith_sub_i32(0i, 1i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, 1i, _wgslsmith_sub_i32(-38521i, 19950i)), -vec3<i32>(1i, 1i, 1i))) << (arg_0.x % 32u);
    var var_2 = 14663u;
    var var_3 = vec2<bool>(true, true);
    let var_4 = Struct_1(69311u, max(60409u, max(arg_0.x, 1781u) >> (26066u % 32u)));
    return func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1000f))))), func_4(_wgslsmith_f_op_f32(func_2(!(!vec4<bool>(true, false, var_3.x, true)))), Struct_1(firstTrailingBit(_wgslsmith_div_u32(arg_0.x, arg_0.x)), _wgslsmith_dot_vec4_u32(arg_0, abs(vec4<u32>(arg_0.x, arg_1.x, 0u, 21806u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1388f * -892f) + _wgslsmith_f_op_f32(1048f + -440f)))), Struct_1(max(~u_input.a >> (countOneBits(9519u) % 32u), abs(u_input.b)), _wgslsmith_div_u32(arg_1.x, ~12266u)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_1 = func_1(vec4<u32>(_wgslsmith_sub_u32(u_input.a >> (0u % 32u), var_0.a) | ~(~0u), _wgslsmith_mult_u32(16056u, u_input.c), _wgslsmith_sub_u32(var_0.b >> (max(u_input.b, 4294967295u) % 32u), _wgslsmith_sub_u32(~u_input.a, 0u)), 22568u), select(reverseBits(vec3<u32>(1u, var_0.a, 0u)) ^ vec3<u32>(54755u, 0u, u_input.b), vec3<u32>(u_input.c, u_input.c, 4294967295u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 21588u), vec3<u32>(0u, 31891u, 0u)), true) ^ vec3<u32>(1u, _wgslsmith_div_u32(1u, ~u_input.c), 59449u));
    let var_2 = global0[_wgslsmith_index_u32(~0u, 10u)];
    let var_3 = _wgslsmith_sub_i32(1i, -1i);
    var var_4 = 1133f;
    var var_5 = Struct_1(~(~var_2.b), _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(136767u, u_input.c, 4050u, 51513u)), ~countOneBits(vec4<u32>(12804u, 11581u, 4294967295u, var_2.b))), abs(~vec4<u32>(var_2.a, 1u, var_0.b, 48125u) ^ firstTrailingBit(vec4<u32>(u_input.b, 435u, var_2.a, var_0.b)))));
    let var_6 = global0[_wgslsmith_index_u32(~max(3232u, 35240u), 10u)];
    global0 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-16316i), vec2<u32>(16911u, _wgslsmith_mult_u32(u_input.a, 1u) << (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1649f, -1174f), vec2<f32>(104f, -684f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2362f, -1180f)))))), reverseBits(abs(var_0.a << (1u % 32u))));
}

