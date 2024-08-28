struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-1i, -70224i, -16955i, i32(-2147483648), 17423i, 2147483647i, 1i, 2147483647i, 0i, 31619i, i32(-2147483648), -1i);

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(2147483647i, 25132i)), Struct_1(vec2<i32>(-1215i, -17532i)), Struct_1(vec2<i32>(-11565i, -48054i)), Struct_1(vec2<i32>(1i, 2147483647i)), Struct_1(vec2<i32>(1i, -32309i)), Struct_1(vec2<i32>(-11662i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(-78295i, i32(-2147483648))), Struct_1(vec2<i32>(1i, -4242i)), Struct_1(vec2<i32>(-1i, -8949i)), Struct_1(vec2<i32>(i32(-2147483648), 655i)), Struct_1(vec2<i32>(0i, 3843i)));

var<private> global3: array<Struct_2, 29>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<i32>(-34223i, 2147483647i)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f * -1002f) - -703f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))))) + _wgslsmith_f_op_f32(select(-141f, 1906f, false)));
    var var_1 = global4.a.a;
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(12032u, 12u)], arg_0.a.x), false), u_input.a.xx), vec2<i32>(-1i) * -vec2<i32>(8285i, global4.a.a.x)) | min(abs(vec2<i32>(38796i, 2147483647i)) | arg_0.a, vec2<i32>(22429i, ~u_input.b)));
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32(select(_wgslsmith_div_vec2_i32(var_2.a, vec2<i32>(var_2.a.x, u_input.b)), var_2.a, vec2<bool>(false, true)), global4.a.a) >> (reverseBits(select(reverseBits(vec2<u32>(22784u, u_input.d)), max(vec2<u32>(14881u, u_input.d), vec2<u32>(u_input.d, u_input.d)), true)) % vec2<u32>(32u)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -393f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1158f * 535f), 309f) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1158f - -286f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-696f)), _wgslsmith_f_op_f32(f32(-1f) * -530f), true)))));
    return select(~(~(~firstLeadingBit(vec2<u32>(u_input.d, u_input.d)))), vec2<u32>((0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), vec4<u32>(44275u, u_input.d, 4094u, 4294967295u)) % 32u)) << ((u_input.d >> (u_input.d % 32u)) % 32u), firstLeadingBit(max(~52057u, 1u))), vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, true))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d, 12u)];
    global3 = array<Struct_2, 29>();
    global0 = array<i32, 12>();
    var_0 = Struct_1(countOneBits(select(vec2<i32>(-1i, ~2147483647i), vec2<i32>(arg_0.x, 24979i), true)));
    let var_1 = max(~_wgslsmith_mult_vec2_u32(func_3(global4.a), ~func_3(global2[_wgslsmith_index_u32(4294967295u, 12u)])), ~(((vec2<u32>(1u, 47841u) & vec2<u32>(u_input.d, 46453u)) >> (vec2<u32>(4270u, u_input.d) % vec2<u32>(32u))) << (countOneBits(reverseBits(vec2<u32>(u_input.d, 0u))) % vec2<u32>(32u))));
    return Struct_1(-(~(-vec2<i32>(global4.a.a.x, 39918i))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global2 = array<Struct_1, 12>();
    var var_0 = func_2(global1[_wgslsmith_index_u32(111642u, 23u)]);
    global2 = array<Struct_1, 12>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -365f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -582f)), _wgslsmith_f_op_f32(-arg_1))))), 2526f);
    var var_2 = ~4294967295u;
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 0u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.d, u_input.d, 78907u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 0u, 1u)))) << (u_input.d % 32u), 23u)]);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    let var_0 = global4.a;
    return vec4<i32>(-max(-44295i & _wgslsmith_sub_i32(global4.a.a.x, 0i), -23557i), 1i, -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -62410i), 6972i, 10974i >> (1u % 32u)), countOneBits(global0[_wgslsmith_index_u32(arg_1, 12u)]), _wgslsmith_dot_vec2_i32(min(vec2<i32>(3585i, -2147483647i), vec2<i32>(u_input.b, 0i)), vec2<i32>(1i, var_0.a.x))), -30197i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 4294967295u) & vec2<u32>(u_input.d, 0u), firstLeadingBit(~vec2<u32>(0u, 4294967295u)))), _wgslsmith_mod_vec3_u32(countOneBits(countOneBits(~vec3<u32>(u_input.d, 60568u, 29915u))), ~vec3<u32>(~1u, firstLeadingBit(u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(72896u, 4294967295u, u_input.d, 12313u), vec4<u32>(1u, u_input.d, 0u, 1u)))), firstTrailingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(global4.a.a.x, global4.a.a.x, 21038i), abs(global1[_wgslsmith_index_u32(0u, 23u)]) << (vec3<u32>(43358u, 14461u, u_input.d) % vec3<u32>(32u)))), func_4(func_1(global3[_wgslsmith_index_u32(~u_input.d ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 0u)), 29u)], _wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(abs(491f)))), select(_wgslsmith_add_u32(u_input.d, u_input.d), ~(~u_input.d), true | any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1546f, 845f, 2002f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-149f, 336f, 1693f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(346f, 963f, -1676f)))))));
}

