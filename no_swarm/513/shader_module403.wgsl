struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(355f, -1437f), vec2<u32>(1u, 27272u), vec3<u32>(78142u, 13367u, 0u)), Struct_1(vec2<f32>(-294f, -1568f), vec2<u32>(35766u, 1u), vec3<u32>(1u, 4294967295u, 62815u)), Struct_1(vec2<f32>(2049f, -531f), vec2<u32>(0u, 10479u), vec3<u32>(3675u, 20094u, 28059u)), Struct_1(vec2<f32>(-946f, 168f), vec2<u32>(8852u, 11918u), vec3<u32>(1u, 1u, 49765u)), Struct_1(vec2<f32>(-935f, -402f), vec2<u32>(4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 15495u)), Struct_1(vec2<f32>(2099f, -297f), vec2<u32>(15760u, 1u), vec3<u32>(85066u, 17529u, 21049u)), Struct_1(vec2<f32>(-2314f, 1000f), vec2<u32>(0u, 49806u), vec3<u32>(1u, 9076u, 4294967295u)), Struct_1(vec2<f32>(-1091f, 1290f), vec2<u32>(78210u, 4294967295u), vec3<u32>(8293u, 0u, 0u)), Struct_1(vec2<f32>(1000f, 316f), vec2<u32>(36048u, 1014u), vec3<u32>(0u, 0u, 0u)), Struct_1(vec2<f32>(-1102f, 962f), vec2<u32>(0u, 3215u), vec3<u32>(50939u, 55837u, 13944u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), 1f), arg_2.a, !all(vec4<bool>(arg_0.x, false, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1468f)))), arg_2.a.x), select(all(select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, false, true, true))), arg_0.x, any(vec4<bool>(true, arg_0.x, false, arg_0.x))))), vec2<u32>(firstTrailingBit(countOneBits(7890u)) << (20508u % 32u), _wgslsmith_div_u32(u_input.a.x, 0u)), arg_2.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1318f, 140f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, var_0.a), arg_2.a)))), abs(vec2<u32>(abs(10747u) & (u_input.a.x | arg_3), ~u_input.a.x)), u_input.a.yzy);
    var var_2 = arg_2;
    let var_3 = vec4<u32>(arg_2.c.x, var_2.c.x, firstTrailingBit(_wgslsmith_mult_u32(70477u, u_input.a.x)), ~(~var_1.c.x));
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-15589i, 1i), vec2<i32>(-50519i, 0i))), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(235f, 833f)), _wgslsmith_f_op_f32(min(1135f, -1064f))), vec2<f32>(_wgslsmith_f_op_f32(round(179f)), -1034f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f - -142f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(1355f, -2091f))))), ~firstLeadingBit(vec2<u32>(1u, 1u)), vec3<u32>(16479u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4443u, 0u, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 75175u, 0u), vec3<u32>(u_input.a.x, 4294967295u, 9818u), u_input.a.yzy)) & abs(~u_input.a.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + _wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_f_op_f32(-1597f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))))), 1000f, -581f);
    var_1 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 10u)];
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.yx))), countOneBits(vec2<u32>(u_input.a.x, ~var_1.c.x | (77025u & u_input.a.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.a.x, 79974u, false), var_1.c.x, ~9247u), ~(~var_1.c)), var_1.b.x, firstTrailingBit(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_div_u32(43068u, 4294967295u)))));
    return global0[_wgslsmith_index_u32(var_1.c.x, 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * 256f), func_2().a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)))))));
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, false)))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~u_input.a, ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(1u, 0u, 4294967295u, arg_1)), select(u_input.a, vec4<u32>(u_input.a.x, arg_0.b.x, 1u, 4294967295u), vec4<bool>(var_1.x, true, true, var_1.x))));
    var var_3 = ~(~arg_1);
    global0 = array<Struct_1, 10>();
    return Struct_1(arg_0.a, vec2<u32>(reverseBits(~var_2), 0u), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a.x, 0u, 0u)), arg_0.c), u_input.a.xyz), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_1, 1u, 1u)), firstTrailingBit(u_input.a.zyz))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)) + _wgslsmith_f_op_f32(-arg_0.a.x))));
    var var_1 = func_2();
    let var_2 = ~0u;
    let var_3 = 1u;
    let var_4 = global0[_wgslsmith_index_u32(~1u, 10u)];
    return func_4(func_2(), ~(u_input.a.x << (_wgslsmith_clamp_u32(var_2, var_3, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, var_1.b.x), vec4<u32>(26055u, 32460u, 35598u, 0u))) % 32u)), vec3<i32>(16905i << (1u % 32u), _wgslsmith_div_i32(firstLeadingBit(1i), ~(i32(-1i) * -42080i)), i32(-1i) * -countOneBits(u_input.b.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    var var_0 = func_5(func_4(func_2(), (51473u ^ arg_2) << (43917u % 32u), vec3<i32>(~u_input.c, ~1i, u_input.c)));
    global0 = array<Struct_1, 10>();
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2037f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.a, arg_0))), select(arg_1, select(arg_1, vec2<bool>(false, true), arg_1), !var_1)))), ~var_0.c.zy, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 24977u, u_input.a.x), ~var_0.c, ~vec3<u32>(arg_2, u_input.a.x, arg_2)) | (var_0.c ^ var_0.c), min(var_0.c, vec3<u32>(~68085u, 4294967295u, 22736u))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1109f)), 363f) + _wgslsmith_f_op_vec2_f32(-arg_0))), vec2<u32>(u_input.a.x | _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 0u, 4294967295u), u_input.a.yxw), u_input.a.x), ~vec3<u32>(min(max(0u, 1u), ~36459u), 0u, 1u));
    return _wgslsmith_mult_i32(-58089i, _wgslsmith_add_i32(u_input.d, _wgslsmith_sub_i32(-22035i, -46527i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = vec2<bool>(false, any(vec2<bool>(true, !(u_input.a.x > u_input.a.x))));
    var var_1 = ~(~(u_input.a.wyz ^ vec3<u32>(max(u_input.a.x, u_input.a.x), abs(4294967295u), u_input.a.x)));
    let var_2 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, 54602u, ~4294967295u, 4294967295u | u_input.a.x), countOneBits(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), var_1.x);
    var_0 = vec2<bool>(!all(vec2<bool>(var_0.x, var_0.x)), !var_0.x);
    let var_3 = false;
    global0 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-568f + _wgslsmith_f_op_f32(-524f - 981f)), -1071f)) + _wgslsmith_f_op_f32(-121f + -1322f)), (i32(-1i) * -16199i) ^ select(func_1(vec2<f32>(-504f, -562f), !vec2<bool>(true, var_0.x), 1u), u_input.c, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(766f, -1495f)))), _wgslsmith_f_op_f32(-800f + -1474f)) - 1000f), _wgslsmith_sub_vec2_u32(~reverseBits(var_2), ~func_4(global0[_wgslsmith_index_u32(0u, 10u)], 69427u, vec3<i32>(u_input.b.x, 0i, 1i)).c.yx << (~(var_1.xy << (vec2<u32>(var_2.x, 20732u) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

