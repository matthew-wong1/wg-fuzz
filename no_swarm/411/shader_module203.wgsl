struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<u32, 10> = array<u32, 10>(11896u, 48300u, 4294967295u, 4294967295u, 31881u, 4294967295u, 0u, 117296u, 0u, 37101u);

var<private> global1: array<i32, 1> = array<i32, 1>(-34828i);

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-1000f, 1358f), vec2<f32>(638f, 1000f), vec2<f32>(365f, -336f), vec2<f32>(154f, -768f), vec2<f32>(1033f, 141f), vec2<f32>(1475f, -361f), vec2<f32>(-461f, 790f), vec2<f32>(1000f, -929f));

var<private> global3: array<vec2<i32>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 28710i, u_input.a.x), vec3<i32>(u_input.a.x, -16327i, 1674i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1185f)) * -1259f), _wgslsmith_f_op_f32(-211f + 601f)), vec3<i32>(-2147483647i, ~1i, -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-801f, 1117f, -1140f), vec3<f32>(1068f, -1000f, -441f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1587f), _wgslsmith_f_op_f32(-313f - -107f), _wgslsmith_f_op_f32(227f * -959f))), ~1u), Struct_1(select(abs(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(3565u, 1u)], u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -32172i, global1[_wgslsmith_index_u32(18733u, 1u)]))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(5899i, 1i, u_input.a.x)), vec3<i32>(-10940i, 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45760u, 10u)], 1u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9334u, 10u)], 10u)], 25010u) % vec3<u32>(32u)), vec3<i32>(-34227i, 1i, 1i)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), 836f, ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(16577i, 9255i, u_input.a.x)) << (vec3<u32>(~0u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54787u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 10u)], 10u)]) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, 1961f, 556f)))), _wgslsmith_div_vec3_f32(vec3<f32>(310f, -367f, -807f), _wgslsmith_div_vec3_f32(vec3<f32>(-945f, -1617f, 1562f), vec3<f32>(-521f, -228f, -1802f)))), (17331u ^ _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37808u, 10u)], 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29507u, 10u)], 10u)])) >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(37449u, 10u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11941u, 10u)], 10u)], 10u)], countOneBits(21953u)) % 32u)));
    global3 = array<vec2<i32>, 14>();
    var var_1 = 1u;
    var var_2 = Struct_1(vec3<i32>(max(~global1[_wgslsmith_index_u32(1u, 1u)], -26826i), -(~firstTrailingBit(var_0.a.c.x)), global1[_wgslsmith_index_u32(~min(1u, ~2160u), 1u)]), var_0.a.d.x, var_0.b.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(var_0.a.d))))) * _wgslsmith_f_op_vec3_f32(-var_0.b.d)), var_0.a.e);
    var_2 = var_0.b;
    return -204f;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global3 = array<vec2<i32>, 14>();
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(0u, 1u)], u_input.a.x, 2147483647i)), max(~vec3<i32>(2147483647i, u_input.a.x, 10525i), -(~vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 10u)], 1u)], global1[_wgslsmith_index_u32(83034u, 1u)], -2147483647i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-9190i, 2582i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 10u)], 1u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(717f)), _wgslsmith_f_op_f32(func_3()), select(true, -u_input.a.x >= firstTrailingBit(-38435i), true))), ~vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1448i, u_input.a.x), -2147483647i), _wgslsmith_add_i32(u_input.a.x, -40031i), countOneBits(-2661i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-708f, -381f, -806f) * vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) * vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) + vec3<f32>(arg_2.x, 1342f, -703f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-838f, arg_2.x, arg_2.x), vec3<f32>(140f, 1145f, arg_2.x))))))), ~(~0u));
    var var_1 = vec4<bool>(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)) != select(false || any(vec2<bool>(false, false)), false, true), any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(true, true)), any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true))), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    var var_2 = ~countOneBits(_wgslsmith_add_u32(~(~0u), reverseBits(firstTrailingBit(46375u))));
    global2 = array<vec2<f32>, 8>();
    return Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(0i, -1i, 3492i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-455f)), _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_add_vec3_i32(vec3<i32>(-2911i, ~countOneBits(2147483647i), 15507i), vec3<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), -1i, var_0.a.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(645f, var_0.d.x, 1971f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(972f, var_0.d.x, var_0.b))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.d))))))), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], 79727u, global0[_wgslsmith_index_u32(1785u, 10u)]) | vec4<u32>(16171u, arg_1, var_0.e, arg_0.x))), ~(vec4<u32>(35789u, global0[_wgslsmith_index_u32(1u, 10u)], 5890u, arg_0.x) >> (vec4<u32>(arg_1, var_0.e, 1u, 4294967295u) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(62225u, arg_0.x, arg_1, 14981u), vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 10u)], 96145u, global0[_wgslsmith_index_u32(0u, 10u)], 4294967295u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<u32, 10>();
    let var_0 = arg_1;
    var var_1 = arg_0.x >> (countOneBits(~22241u) % 32u);
    let var_2 = _wgslsmith_f_op_f32(-605f * arg_1.d.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.x))) - _wgslsmith_f_op_f32(-arg_1.d.x));
    let var_3 = Struct_2(arg_1, var_0);
    return var_3;
}

fn func_1() -> u32 {
    global1 = array<i32, 1>();
    var var_0 = vec2<i32>(-(~(-_wgslsmith_add_i32(-3635i, -1895i))), _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, -5476i), abs(u_input.a.x)) >> (abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24696u, 10u)], 10u)], global0[_wgslsmith_index_u32(12393u, 10u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 0u)), max(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41502u, 10u)], 10u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)])))) % 32u));
    var var_1 = func_4(~(-(~_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(global1[_wgslsmith_index_u32(1u, 1u)], 2147483647i)))), func_2(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31687u, 10u)], 10u)], 4294967295u), 10u)] >> (~55406u % 32u), 1u), 4231u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84504u, 10u)], 10u)]), global0[_wgslsmith_index_u32(4294967295u, 10u)]), 8u)]));
    var_1 = Struct_2(var_1.b, func_4(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~var_1.b.e << (global0[_wgslsmith_index_u32(103757u, 10u)] % 32u), 10u)], select(abs(0u), ~13644u, false), firstTrailingBit(firstTrailingBit(1u))), 14u)], var_1.b).b);
    global0 = array<u32, 10>();
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(39343u, ~(var_1.b.e & (37254u & _wgslsmith_div_u32(55901u, var_1.b.e)))), 10u)];
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -9333i, i32(-1i) * -24648i, ~(-21707i), -96285i | arg_2), _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, arg_2, u_input.a.x, -2147483647i), firstLeadingBit(vec4<i32>(arg_2, arg_2, 2147483647i, 2147483647i))))) >> (23862u % 32u);
    var var_1 = !(!vec2<bool>(~13888u != _wgslsmith_div_u32(arg_1.x, arg_1.x), true));
    global3 = array<vec2<i32>, 14>();
    global3 = array<vec2<i32>, 14>();
    global1 = array<i32, 1>();
    return func_4(countOneBits((_wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(arg_1.x, 14u)], vec2<i32>(-2147483647i, -1i)) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, arg_2), vec2<i32>(u_input.a.x, -36442i))) >> ((arg_1.zy | (vec2<u32>(global0[_wgslsmith_index_u32(125461u, 10u)], 979u) << (arg_1.zy % vec2<u32>(32u)))) % vec2<u32>(32u))), func_4(u_input.a, Struct_1(~vec3<i32>(43331i, arg_2, u_input.a.x) & select(vec3<i32>(7291i, global1[_wgslsmith_index_u32(229u, 1u)], u_input.a.x), vec3<i32>(arg_2, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 1u)], 0i), vec3<bool>(var_1.x, true, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2513f * arg_0))), vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, global0[_wgslsmith_index_u32(49183u, 10u)]), 10u)], 10u)], 1u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 1u)], 0i, global1[_wgslsmith_index_u32(114163u, 1u)]), vec4<i32>(-24501i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 10u)], 10u)], 1u)], 1i, -38727i)), i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0, -878f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1479f, arg_0, arg_0) * vec3<f32>(-1342f, 1119f, -483f)), vec3<bool>(false, true, false))), 1u)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 14>();
    global1 = array<i32, 1>();
    global2 = array<vec2<f32>, 8>();
    var var_0 = func_5(-2311f, vec4<u32>(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(25036u, 10u)], abs(~global0[_wgslsmith_index_u32(41293u, 10u)])), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(86118u, 1u), firstLeadingBit(~44546u)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3686u, 10u)], 10u)] & 0u, 10u)], 10u)], 10u)], ~4294967295u), _wgslsmith_div_u32(62315u, select(global0[_wgslsmith_index_u32(func_1(), 10u)], 4294967295u, false))), ~_wgslsmith_add_i32(u_input.a.x, func_2(_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 4294967295u), vec2<u32>(20397u, 74373u)), ~global0[_wgslsmith_index_u32(49872u, 10u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(2450f, 503f) + global2[_wgslsmith_index_u32(0u, 8u)])).c.x));
    let var_1 = Struct_1(select(vec3<i32>(i32(-1i) * -57370i, -var_0.b.c.x, abs(-1i)), var_0.a.a, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))))), var_0.b.b, _wgslsmith_mult_vec3_i32(-var_0.b.c, vec3<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~9306u, 10u)], 1u)]), 7943i, -var_0.b.a.x)), _wgslsmith_f_op_vec3_f32(-var_0.a.d), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.e, 10u)], 10u)], 2121u, 16980u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(7510u, 10u)], 16326u, var_0.a.e)) | _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(29186u, 10u)])), 10u)]);
    var var_2 = var_0.a.a.x & -29283i;
    var var_3 = !(!(1u != var_1.e) && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.b, var_0.b.b, 397f, -759f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.b, var_1.b, var_1.d.x, var_0.b.b))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(min(var_1.d.x, var_0.b.d.x)), _wgslsmith_f_op_f32(round(891f)), 393f))));
}

