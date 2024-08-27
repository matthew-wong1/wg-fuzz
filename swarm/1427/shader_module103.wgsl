struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, -969f, arg_1, arg_1)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 406f, -1191f, arg_1)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(870f, arg_1, 937f, arg_1))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(arg_1)), -602f, _wgslsmith_f_op_f32(-arg_1)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, 1455f), -681f, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * 1289f))) + var_0.a));
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    var var_2 = u_input.b.x;
    return !(!select(vec4<bool>(true, true, select(true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    global0 = array<u32, 26>();
    var var_0 = Struct_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1109f + -359f)), -1566f)), -1000f, _wgslsmith_f_op_f32(122f * -187f)));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x) ^ vec4<u32>(u_input.d.x, 31284u, 0u, u_input.d.x), abs(vec4<u32>(4559u, u_input.d.x, u_input.d.x, 4294967295u))), ~20422u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(0u, 26u)])), 26u)]), ~(~firstLeadingBit(vec4<u32>(0u, u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], 26u)]))), _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(67841u), u_input.d.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18305u, 26u)], 26u)], global0[_wgslsmith_index_u32(min(14177u, u_input.d.x), 26u)]), ~(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(32010u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), ~u_input.d.x, u_input.d.x | 25387u, ~21536u))) >> (~vec4<u32>(30718u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 26u)]), (u_input.d.x ^ 76601u) >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(41189u, 26u)], u_input.d.x) % 32u)) % vec4<u32>(32u));
    global0 = array<u32, 26>();
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1809f, -910f, 902f)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(f32(-1f) * -3581f), _wgslsmith_f_op_f32(957f + var_0.a.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.a.x)))))));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = func_3(~arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.a.x)) + _wgslsmith_f_op_f32(arg_3.a.x + arg_3.a.x)))))).yz;
    let var_1 = func_3(~(~abs(~arg_1.x)), 118f).yw;
    global0 = array<u32, 26>();
    var var_2 = 359f;
    global0 = array<u32, 26>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_3.a.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a.yx * arg_3.a.zz)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.a.x, arg_0))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(arg_3.a.yz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, 702f)), var_1))))), select(vec2<bool>(true, abs(u_input.a) >= ~(-1i)), vec2<bool>(all(func_3(37585i, 1730f).ywx), true), var_1.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(u_input.b.wzx, ~vec3<i32>(~min(-38415i, -18455i), firstTrailingBit(abs(-38462i)), _wgslsmith_sub_i32(~2147483647i, -36600i)), -(~_wgslsmith_mod_vec4_i32(u_input.b | u_input.b, u_input.b)), vec2<i32>(2147483647i, min(-45905i, u_input.c)), abs(firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], u_input.d.x, 0u, 42450u), vec4<u32>(69085u, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], 4294967295u, 0u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true), vec4<bool>(-25319i < u_input.c, any(vec2<bool>(false, true)), true, true), all(func_3(67326i, 134f))))), vec3<i32>(13747i, var_0.d.x, ~(~u_input.c)) & vec3<i32>(_wgslsmith_add_i32(-var_0.b.x, ~(-9815i)), u_input.a, -(var_0.d.x & 1i)), Struct_2(vec3<i32>(select(-2147483647i, ~var_0.d.x, any(vec4<bool>(false, true, true, false))), _wgslsmith_div_i32(var_0.d.x ^ -1i, var_0.b.x), _wgslsmith_dot_vec2_i32(var_0.d, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -42625i), vec2<i32>(4852i, u_input.c)))), -var_0.b ^ vec3<i32>(u_input.a, countOneBits(0i), reverseBits(-49044i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, u_input.b.x, 1i, 1i), u_input.b), u_input.b, false) | var_0.c, vec2<i32>(-14315i, -min(var_0.d.x, var_0.d.x)), ~var_0.e), Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-957f + -138f), _wgslsmith_f_op_f32(sign(-594f))), 289f, 608f, -776f))));
    var var_2 = u_input.d.x;
    let var_3 = ~((_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(43300u, 16u, 0u, 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], u_input.d.x, 1u, global0[_wgslsmith_index_u32(var_0.e.x, 26u)])) | reverseBits(var_0.e)) << (min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 7045u, 0u, var_0.e.x), _wgslsmith_mult_vec4_u32(var_0.e, var_0.e)), vec4<u32>(u_input.d.x | 8207u, 1u, 5258u, _wgslsmith_clamp_u32(var_0.e.x, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]))) % vec4<u32>(32u)));
    var var_4 = select(_wgslsmith_add_vec4_i32(u_input.b >> (max(var_0.e, vec4<u32>(26473u, 29686u, 0u, 0u)) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, var_0.a.x, 1i)), var_0.c, true) << (~(var_3 ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3592u, var_3.x, u_input.d.x, 64693u), var_0.e), vec4<u32>(u_input.d.x, 12802u, var_3.x, 7887u))) % vec4<u32>(32u));
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_1.x + 990f), _wgslsmith_div_f32(var_1.x, var_1.x), var_1.x)), vec4<f32>(_wgslsmith_div_f32(var_1.x, 125f), 125f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-var_1.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(var_0.a.wz));
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.zz);
    return Struct_1(vec4<u32>(select(4294967295u, ~abs(global0[_wgslsmith_index_u32(78059u, 26u)]), false), reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 158u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], 26u)]), ~vec4<u32>(65422u, u_input.d.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 26u)])) << (_wgslsmith_sub_u32(u_input.d.x, ~0u) % 32u), 1u), !vec3<bool>(false, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), true), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], firstTrailingBit(~u_input.d.x), abs(u_input.d.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-839f, _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), firstLeadingBit(vec4<u32>(~4294967295u, global0[_wgslsmith_index_u32(~0u, 26u)], _wgslsmith_mod_u32(0u, 14483u), 4294967295u << (u_input.d.x % 32u)) ^ ~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_2(u_input.b.wzx, vec3<i32>(u_input.c, i32(-1i) * -2147483647i, u_input.c), reverseBits(-u_input.b), vec2<i32>(u_input.a, reverseBits(u_input.c)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.d.x), vec4<u32>(0u, arg_1.c.x, arg_0.e.x, 4294967295u)) & vec4<u32>(abs(4294967295u), arg_1.c.x, select(4294967295u, arg_0.a.x, true), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(arg_1.e.x, 26u)], arg_0.c.x))));
    var var_1 = Struct_4(vec3<f32>(-201f, _wgslsmith_div_f32(arg_1.d, -695f), -1394f), Struct_2(~var_0.b, abs(~var_0.b), -vec4<i32>(-19147i, firstLeadingBit(var_0.a.x), ~1i, 0i), select(-(~var_0.d), countOneBits(~vec2<i32>(-1i, u_input.c)), arg_1.b.x), arg_0.e));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(func_2().a.x)), var_1.a.x, _wgslsmith_f_op_f32(func_4(vec4<bool>(arg_1.b.x, arg_2.x, arg_0.b.x, true))))), var_1.b);
    let var_2 = var_0.c.x;
    global0 = array<u32, 26>();
    return _wgslsmith_mult_i32(-_wgslsmith_div_i32(1i, ~2147483647i), -var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(func_6(func_1(), func_1(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), 12158i), i32(-1i) * -1i);
    var var_1 = func_2();
    let var_2 = ~(~(~global0[_wgslsmith_index_u32(34224u, 26u)]));
    var_0 = u_input.a;
    var var_3 = vec4<bool>(true, true, ~_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(60804u, 26u)]) >= var_2, false);
    var var_4 = func_2();
    let var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(func_4(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), var_4.a.x) - _wgslsmith_f_op_vec3_f32(sign(var_4.a.yyz))), Struct_2(vec3<i32>(firstTrailingBit(firstLeadingBit(22342i)), _wgslsmith_div_i32(u_input.c, func_6(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(108u, 26u)], 0u, var_2, 0u), var_3.wxz, vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], 0u, global0[_wgslsmith_index_u32(u_input.d.x, 26u)]), var_4.a.x, vec4<u32>(1u, 22264u, 4294967295u, global0[_wgslsmith_index_u32(0u, 26u)])), Struct_1(vec4<u32>(var_2, var_2, 4294967295u, global0[_wgslsmith_index_u32(var_2, 26u)]), vec3<bool>(var_3.x, false, true), vec3<u32>(var_2, global0[_wgslsmith_index_u32(0u, 26u)], 123444u), var_4.a.x, vec4<u32>(1u, 0u, 15510u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)])), var_3.xxz)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.a), 23766i, func_6(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 26u)], var_2), var_3.xzw, u_input.d, 446f, vec4<u32>(70714u, 82322u, 0u, 46995u)), Struct_1(vec4<u32>(1u, 4294967295u, u_input.d.x, var_2), vec3<bool>(var_3.x, var_3.x, false), u_input.d, -877f, vec4<u32>(global0[_wgslsmith_index_u32(52974u, 26u)], u_input.d.x, 4294967295u, u_input.d.x)), vec3<bool>(var_3.x, true, var_3.x)))), ~_wgslsmith_clamp_vec3_i32(max(u_input.b.zwy, u_input.b.xwy), ~u_input.b.xwy, max(u_input.b.zyy, vec3<i32>(u_input.c, u_input.b.x, u_input.a))), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, u_input.b.x, u_input.a, u_input.c), vec4<i32>(u_input.a, u_input.c, -16703i, u_input.b.x), var_3.x), firstTrailingBit(u_input.b)), vec2<i32>(-2147483647i, -457i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_2, var_2), ~u_input.d.xy) % vec2<u32>(32u)), ~vec4<u32>(~59606u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], 38605u), 26u)], var_2, var_2)));
    let var_6 = vec3<bool>(var_3.x, false, true);
    var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_4.a.x - -126f), _wgslsmith_f_op_f32(-127f * 1000f), _wgslsmith_f_op_f32(var_4.a.x - var_5.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.a.xxx))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.a.x + -117f) + _wgslsmith_f_op_f32(sign(-236f))), _wgslsmith_f_op_f32(-var_4.a.x), -483f)), -((vec2<i32>(var_5.b.c.x, -2147483647i) << (vec2<u32>(89216u, var_2) % vec2<u32>(32u))) << (vec2<u32>(0u, var_5.b.e.x) % vec2<u32>(32u))) & -select(vec2<i32>(var_5.b.d.x, 381i), firstLeadingBit(var_5.b.d), any(var_6.xy)), _wgslsmith_f_op_f32(exp2(var_1.a.x)), var_5.b.e.x, var_5.b.d.x);
}

