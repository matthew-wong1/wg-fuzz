struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1000f, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1177f, -794f)))), global0.a, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, 42820i), u_input.a, u_input.a, 19857i), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, -38487i, u_input.a), vec4<i32>(u_input.a, u_input.a, 22030i, u_input.a)))) < 7082i);
    let var_0 = vec4<bool>(!(!(~0i < countOneBits(u_input.a))), true, true, !global0.b);
    var var_1 = abs(_wgslsmith_clamp_i32(-39310i, -(u_input.a & 2147483647i), ~1i) << (60963u % 32u));
    var_1 = ~(~52824i);
    let var_2 = Struct_1(false, -vec4<i32>(u_input.a, u_input.a & 1i, firstTrailingBit(2147483647i), u_input.a) | _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, 1i, 0i, u_input.a)) >> ((vec4<u32>(1u, 18655u, 4294967295u, 51113u) << (vec4<u32>(arg_0, 92464u, arg_0, 152040u) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 43745i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, -2147483647i, 12939i, -1i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    return 2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = countOneBits(vec2<i32>(-11476i, ~u_input.a)) >> (~vec2<u32>(49659u, select(arg_1, arg_1, global0.b) >> (~0u % 32u)) % vec2<u32>(32u));
    global0 = Struct_2(global0.a, false);
    var var_1 = arg_0;
    let var_2 = 2147483647i;
    var_1 = vec4<i32>(-1i, func_3(arg_1), -var_1.x, ~19546i) ^ ~(-_wgslsmith_div_vec4_i32(arg_0 ^ arg_0, countOneBits(arg_0)));
    return vec4<bool>(true, _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))))) < global0.a, true, global0.b);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = vec3<bool>(arg_0, true, global0.b);
    var_0 = vec3<bool>(all(!(!(!var_0.xy))), !any(select(func_2(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), 4294967295u, vec4<f32>(1321f, global0.a, -620f, 962f)), vec4<bool>(global0.b, arg_0, arg_0, var_0.x), func_2(vec4<i32>(6037i, 1i, 31173i, u_input.a), 4294967295u, vec4<f32>(global0.a, global0.a, global0.a, global0.a)).x)), global0.b);
    let var_1 = Struct_1(false, ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (vec4<u32>(66067u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 33775u), vec2<u32>(4294967295u, 98322u), vec2<u32>(87093u, 0u))), 4294967295u, 140081u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global0.a));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.c)), var_1.c))), -627f));
    return vec2<i32>(var_1.b.x, ~(~firstLeadingBit(var_1.b.x) >> (0u % 32u)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = 428f;
    var_0 = _wgslsmith_f_op_f32(1153f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.a, -461f)))));
    let var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1607f * arg_2.c) - _wgslsmith_f_op_f32(select(arg_2.c, -1000f, false))), -1359f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-942f * -1305f), _wgslsmith_f_op_f32(max(190f, -227f)))) - _wgslsmith_div_f32(-311f, arg_2.c))), true);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(763f, 1671f)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(11176u, 53364u, 4294967295u), ~vec3<u32>(64832u, 1u, 1u)) >> (_wgslsmith_mult_u32(~4294967295u, 0u) % 32u), _wgslsmith_div_u32(83829u, ~1u)), _wgslsmith_add_vec2_i32(~func_1(true), select(vec2<i32>(-u_input.a, abs(u_input.a)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(2147483647i, 0i), vec2<i32>(-2147483647i, u_input.a), vec2<bool>(global0.b, false)), vec2<i32>(0i, -40811i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -6682i), vec2<i32>(15388i, u_input.a), vec2<i32>(u_input.a, 0i))), global0.b)), Struct_1(!global0.b, -vec4<i32>(19928i, -64255i, u_input.a, 2147483647i) << (vec4<u32>(abs(58487u), countOneBits(4294967295u), 131270u, firstLeadingBit(0u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-140f, -398f)) + global0.a)));
    var var_0 = 0i;
    var var_1 = Struct_1(all(func_2(-vec4<i32>(-17081i, 53505i, u_input.a, u_input.a), 0u, vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), -963f, -850f, -481f)).yw), vec4<i32>(i32(-1i) * -(~4612i), u_input.a, ~u_input.a, 11002i), _wgslsmith_f_op_f32(step(global0.a, global0.a)));
    let var_2 = Struct_1(!(!(max(var_1.b.x, u_input.a) < abs(u_input.a))), vec4<i32>(-1884i, var_1.b.x, var_1.b.x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-145f)))) + var_1.c) + 1000f));
    global0 = func_4(abs(select(1u, ~max(12187u, 0u), global0.b)), var_2.b.zx, var_2);
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, var_1.c, var_1.c)) - vec3<f32>(626f, var_1.c, -1134f)))) - vec3<f32>(var_2.c, func_4(_wgslsmith_add_u32(65792u, 50004u), var_2.b.zy >> (vec2<u32>(4294967295u, 76966u) % vec2<u32>(32u)), var_2).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3110f), var_1.c, any(vec4<bool>(false, true, var_1.a, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c, 1423f, 1047f), vec3<f32>(var_1.c, 854f, 477f))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, 235f, 904f), vec3<f32>(var_1.c, var_1.c, -664f)))))));
    global0 = Struct_2(_wgslsmith_f_op_f32(276f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * 1000f)), true);
    let var_4 = func_2(select(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.b, firstTrailingBit(var_1.b), var_2.b), select(var_2.b, ~vec4<i32>(-26854i, 2807i, var_1.b.x, -768i), !vec4<bool>(var_2.a, var_2.a, var_1.a, var_2.a))), -_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, var_2.b.x, u_input.a, var_2.b.x), vec4<i32>(var_1.b.x, u_input.a, 81029i, u_input.a)), select(func_2(var_1.b, 59528u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -159f, var_2.c, var_2.c) * vec4<f32>(1000f, -640f, 1090f, var_2.c))), vec4<bool>(var_1.a, true, any(vec4<bool>(true, true, var_2.a, var_1.a)), var_2.a), !vec4<bool>(var_2.a, var_2.a, global0.b, var_2.a))), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.x, -618f))), global0.a, _wgslsmith_div_f32(-560f, 309f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-751f)))))).x;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2150f + _wgslsmith_f_op_f32(var_2.c + global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)) + -178f) * -1170f)) - 379f);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -firstTrailingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, -1i, 14392i), vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x))));
}

