struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(4294967295u, -26359i, 843f), Struct_1(4294967295u, -20592i, 1430f), Struct_1(13192u, -11906i, 1187f), Struct_1(31307u, 2322i, 720f), Struct_1(41025u, 43984i, -1877f), Struct_1(18592u, -1i, -153f), Struct_1(38004u, -1i, 103f), Struct_1(10098u, 28122i, -3035f), Struct_1(77199u, -1i, 1000f), Struct_1(18092u, 0i, -315f), Struct_1(1u, 2147483647i, -1071f), Struct_1(4294967295u, 20497i, 1149f), Struct_1(1u, -28978i, 1379f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> bool {
    return false;
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_0 = !vec3<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), !select(select(false, true, false), true, false), false);
    var_0 = !select(vec3<bool>(!var_0.x, true, var_0.x), !select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(true, true, false), true), select(vec3<bool>(var_0.x, !var_0.x, !var_0.x), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x)));
    var var_1 = global0[_wgslsmith_index_u32(0u, 13u)];
    return vec3<bool>(false, !var_0.x && func_2(var_0.zx, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c))), select(!var_0.x, true, var_0.x)), 133f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -293f) + var_1.c)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = 53414i;
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a.d.b, _wgslsmith_add_i32(u_input.a << (19325u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-57480i, arg_3.a.b, u_input.a), vec3<i32>(u_input.a, arg_3.a.d.b, u_input.a))), arg_3.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(42800i, u_input.a, -1i, arg_3.a.d.b), _wgslsmith_mult_vec4_i32(vec4<i32>(22590i, u_input.a, u_input.a, arg_3.a.d.b), vec4<i32>(arg_3.a.b, arg_3.a.d.b, u_input.a, -14372i)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_3.a.d.b, u_input.a, u_input.a, arg_3.a.b), ~vec4<i32>(arg_3.a.b, u_input.a, arg_3.a.d.b, arg_3.a.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_3.a.d.a, arg_3.a.d.a, 1u), vec4<u32>(arg_3.a.d.a, 23083u, arg_3.a.d.a, 1u)) % vec4<u32>(32u)), vec4<i32>(~0i, 2147483647i >> (0u % 32u), 27683i, _wgslsmith_clamp_i32(1i, u_input.a, 1i)))), ~firstLeadingBit(vec4<i32>(-9863i, arg_3.a.b, 42343i, u_input.a)) & _wgslsmith_mod_vec4_i32(select(vec4<i32>(1910i, 2147483647i, arg_3.a.d.b, 4844i), _wgslsmith_div_vec4_i32(vec4<i32>(-36190i, u_input.a, arg_3.a.b, u_input.a), vec4<i32>(arg_3.a.b, 47115i, u_input.a, -2147483647i)), vec4<bool>(arg_2.x, arg_2.x, arg_0.x, arg_2.x)), vec4<i32>(-1i) * -vec4<i32>(arg_3.a.b, arg_3.a.d.b, u_input.a, 2147483647i)));
    var_1 = abs(((vec4<i32>(arg_3.a.b, 36994i, 2990i, arg_3.a.d.b) | vec4<i32>(var_1.x, u_input.a, 1i, u_input.a)) & firstLeadingBit(vec4<i32>(arg_3.a.d.b, -20508i, var_1.x, arg_3.a.d.b))) >> (~(~vec4<u32>(arg_1, 8524u, arg_1, arg_1)) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, -8309i, 2147483647i) | vec4<i32>(47350i, 2147483647i, u_input.a, -2147483647i), -vec4<i32>(29518i, -353i, 9108i, 1i)), -(~vec4<i32>(u_input.a, -3468i, 1i, 0i))), firstLeadingBit(~countOneBits(vec4<i32>(arg_3.a.d.b, 2147483647i, 36474i, 1i))));
    let var_2 = arg_3.a.d.c;
    let var_3 = var_1.x;
    return vec4<bool>(arg_2.x, arg_0.x, arg_0.x, true);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    let var_0 = 1u;
    let var_1 = Struct_4(var_0, Struct_2(1u, -_wgslsmith_div_i32(abs(u_input.a), i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) - 748f), global0[_wgslsmith_index_u32(20283u, 13u)]));
    global0 = array<Struct_1, 13>();
    var var_2 = var_1.b.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-145f * var_2.c), var_1.b.c, _wgslsmith_f_op_f32(sign(-621f)), 1226f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, var_2.c, arg_1, -203f) - vec4<f32>(-941f, var_1.b.d.c, 294f, var_1.b.d.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, -515f, arg_1, var_2.c))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1044f, -1000f)), _wgslsmith_f_op_f32(abs(-1478f)), var_2.c, -330f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, -1000f, var_2.c, var_1.b.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1622f, 678f, 282f, -1257f), vec4<f32>(1198f, -1378f, 1103f, 333f))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -282f, arg_1, 1000f), vec4<f32>(var_2.c, -732f, 1067f, var_2.c))))))));
    return _wgslsmith_mod_i32(-28309i, (1i >> (_wgslsmith_clamp_u32(0u, var_1.b.d.a, ~0u) % 32u)) & -_wgslsmith_mult_i32(var_1.b.d.b, var_2.b));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(select(~select(vec3<u32>(41517u, 4294967295u, 0u), vec3<u32>(54322u, 64788u, 64419u), vec3<bool>(false, false, false)), vec3<u32>(_wgslsmith_div_u32(91527u, 63672u), 36855u, _wgslsmith_mod_u32(1u, 22726u)), vec3<bool>(false, any(vec4<bool>(false, false, false, false)), func_2(vec2<bool>(true, false), -361f, false))), vec3<u32>(~(1u >> (0u % 32u)), select(4294967295u, ~61051u, all(vec2<bool>(false, false))), select(21651u >> (1u % 32u), _wgslsmith_sub_u32(4294967295u, 1046u), all(vec3<bool>(true, true, false))))), -func_5(~_wgslsmith_mult_i32(u_input.a, -12698i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1171f, 1634f, true))), func_4(func_3(), 0u, vec2<bool>(true, false), Struct_3(Struct_2(33969u, -6623i, -1000f, Struct_1(40456u, -23102i, -979f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) + -312f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f - -529f)), true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-824f, -428f)), _wgslsmith_f_op_f32(739f * -2799f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -737f))))));
    let var_1 = Struct_3(Struct_2(~(1u | _wgslsmith_div_u32(var_0.a, var_0.a)), ~(-var_0.b) & var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1312f + var_0.c) - _wgslsmith_f_op_f32(-1170f * -520f))), Struct_1(var_0.a, -2147483647i, 1087f)));
    global0 = array<Struct_1, 13>();
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -794f))))));
    let var_3 = vec2<f32>(-235f, var_0.c);
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, abs(~u_input.a)), u_input.a & (_wgslsmith_sub_i32(-18972i, arg_0.a.b) & func_5(arg_0.a.d.b, arg_0.a.c, vec4<bool>(true, false, false, false)))), ~(-1863i), -u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(566f, -1166f, arg_0.a.d.c) * vec3<f32>(arg_1.x, 1747f, arg_0.a.d.c)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.a.c, arg_1.x) - vec3<f32>(2175f, 1975f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(758f, arg_1.x, 1819f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, arg_0.a.d.c, arg_0.a.c)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, -182f, -1000f), vec3<f32>(arg_1.x, 523f, arg_1.x)))), vec3<bool>(true, true, all(vec4<bool>(true, false, true, true))))) + vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c)))));
    let var_2 = select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(false, false, false)) | true, all(vec2<bool>(false, false)), false), func_3(), vec3<bool>(_wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_sub_u32(4294967295u, 4294967295u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(22132u, arg_0.a.d.a, 54407u), vec3<u32>(6382u, 18439u, arg_0.a.d.a)), true)), true);
    return Struct_1(0u, _wgslsmith_div_i32(func_5(~9619i, _wgslsmith_f_op_f32(arg_1.x + var_1.x), vec4<bool>(var_2.x, true, var_2.x, var_2.x)), _wgslsmith_mult_i32(countOneBits(10594i), abs(0i))) >> (20127u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f - arg_1.x) + arg_1.x)));
}

fn func_7(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = countOneBits(u_input.a);
    var var_1 = 1i;
    let var_2 = !vec4<bool>(arg_1, all(select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, false), false), !vec4<bool>(true, true, false, arg_1), any(vec4<bool>(arg_1, true, false, true)))), 38988u >= abs(_wgslsmith_mult_u32(4294967295u, arg_0.a)), !(!arg_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -987f, arg_0.c, arg_0.c) + vec4<f32>(1365f, 1893f, arg_0.c, arg_0.c)) + vec4<f32>(arg_0.c, -761f, arg_0.c, 656f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-453f, arg_0.c, 1456f, arg_0.c), vec4<f32>(arg_0.c, 760f, -564f, -1000f))))))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(458f - 1104f), _wgslsmith_f_op_f32(-var_3.x), arg_0.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1048f, var_3.x, var_3.x, -613f)), vec4<f32>(-1113f, _wgslsmith_f_op_f32(1000f + 778f), _wgslsmith_f_op_f32(ceil(arg_0.c)), arg_0.c), all(vec2<bool>(var_2.x, var_2.x)))), vec4<bool>(any(vec2<bool>(true, false)), all(var_2.zw), select(true, !var_2.x, !var_2.x), all(var_2)))), var_3));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~arg_0.a >> (arg_0.a % 32u), 4294967295u) & ~(~23591u), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(firstLeadingBit(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(1u, 18140u, 4294967295u, 4294967295u)), 1u)), ~u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-500f, 2738f)))))), false)), func_7(func_6(func_1(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-573f, 2021f), vec2<f32>(-1461f, -1706f), true)), _wgslsmith_div_vec2_f32(vec2<f32>(-849f, 146f), vec2<f32>(185f, 957f)))), !(!any(vec3<bool>(false, true, false)))));
    let var_1 = _wgslsmith_mult_i32(~var_0.b, 1i);
    var var_2 = vec3<bool>(select(!(func_2(vec2<bool>(true, true), -941f, false) | (-548f == var_0.c)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-610f, 1000f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.c + -1095f))), func_4(func_3(), var_0.a, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), func_1()).x, any(vec4<bool>((var_0.a != var_0.d.a) | any(vec4<bool>(true, false, false, true)), (1u << (var_0.a % 32u)) >= var_0.a, true, any(vec3<bool>(true, true, true)))));
    var_0 = func_1().a;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f + 111f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1591f))) * vec2<f32>(var_0.d.c, _wgslsmith_div_f32(547f, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(67172u, firstTrailingBit(0u)), var_0.c);
}

