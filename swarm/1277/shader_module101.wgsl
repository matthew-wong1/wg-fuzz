struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec4<bool> {
    var var_0 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_2, u_input.d.x), _wgslsmith_add_u32(arg_2, 4294967295u), 14855u, ~arg_2), firstLeadingBit(vec4<u32>(arg_2, arg_2, u_input.d.x, u_input.d.x) ^ vec4<u32>(24023u, u_input.d.x, 18593u, 1u))), arg_2 ^ abs(_wgslsmith_clamp_u32(u_input.d.x << (1u % 32u), ~1u, 38514u)), ~1799u);
    var var_1 = Struct_3(Struct_1(!arg_0, any(vec2<bool>(arg_0.x, false)), u_input.a.x, reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.a.x, -10992i, u_input.c.x)), -1i))), Struct_1(arg_1.a, !arg_3, u_input.b, ~_wgslsmith_mult_i32(arg_1.d, u_input.a.x ^ arg_1.c)), abs((u_input.a | select(u_input.a, vec4<i32>(-32825i, u_input.b, -17868i, u_input.a.x), arg_3)) << (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(61020u, u_input.d.x, 1u, var_0.x), vec4<u32>(27867u, 4294967295u, 15900u, u_input.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 16273u, arg_2, u_input.d.x), vec4<u32>(4294967295u, arg_2, 73115u, 37519u))) % vec4<u32>(32u))), Struct_1(vec4<bool>(true, select(arg_1.a.x, arg_0.x, all(vec3<bool>(true, true, arg_3))), all(arg_1.a.wyy), !arg_3), false, ~(max(9889i, arg_1.d) | (i32(-1i) * -12644i)), 19365i));
    var_1 = Struct_3(Struct_1(select(var_1.b.a, select(vec4<bool>(var_1.b.b, false, true, false), arg_0, select(vec4<bool>(true, var_1.d.b, arg_1.a.x, true), vec4<bool>(false, false, false, var_1.b.b), false)), arg_1.a.x), any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_3, true, arg_1.b), vec3<bool>(true, true, arg_3))) || true, abs(abs(-arg_1.c)), ~u_input.c.x), arg_1, firstLeadingBit(vec4<i32>(u_input.a.x, 1i, _wgslsmith_sub_i32(-1i, 1458i), arg_1.d)), Struct_1(vec4<bool>(true, ~arg_2 != abs(42558u), any(arg_1.a.zxw), select(arg_1.b && arg_3, select(false, true, var_1.d.a.x), true)), true, _wgslsmith_mult_i32(23438i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17901i, 2147483647i), vec2<i32>(var_1.b.d, var_1.a.d), vec2<i32>(24173i, var_1.b.c)), vec2<i32>(-15080i, -1i))), firstTrailingBit(abs(max(arg_1.d, var_1.c.x)))));
    let var_2 = vec2<i32>(1i, -2147483647i);
    var var_3 = Struct_3(Struct_1(vec4<bool>(arg_0.x, !any(arg_0), all(vec2<bool>(var_1.a.b, false)), select(any(var_1.d.a), var_1.b.a.x | arg_1.a.x, true)), arg_3, reverseBits(abs(var_2.x >> (14185u % 32u))), countOneBits(-2324i)), arg_1, var_1.c, arg_1);
    return vec4<bool>(true | (true & arg_0.x), any(!var_1.b.a), false, !arg_3);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, u_input.d.x, u_input.d.x, _wgslsmith_div_u32(65202u, u_input.d.x)) | _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 45902u) << (vec4<u32>(u_input.d.x, u_input.d.x, 82893u, 1u) % vec4<u32>(32u)), vec4<u32>(17136u, u_input.d.x, 1u, 4294967295u)), max(~vec4<u32>(4294967295u, 14950u, u_input.d.x, 7372u), ~vec4<u32>(u_input.d.x, 1u, 0u, u_input.d.x))), abs(vec4<u32>(~min(5892u, 4294967295u), u_input.d.x, ~_wgslsmith_add_u32(u_input.d.x, 4294967295u), _wgslsmith_clamp_u32(6047u, ~135670u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 25631u, u_input.d.x), vec3<u32>(0u, u_input.d.x, 1u))))));
    let var_1 = !(_wgslsmith_div_f32(777f, _wgslsmith_div_f32(-585f, arg_2.x)) <= 1004f) || true;
    var_0 = reverseBits(countOneBits(select(u_input.d.x, _wgslsmith_add_u32(~u_input.d.x, ~u_input.d.x), func_3(vec4<bool>(arg_0.b.a.x, false, var_1, false), Struct_1(vec4<bool>(false, false, false, false), var_1, arg_0.d.c, u_input.c.x), u_input.d.x, true).x || var_1)));
    var_0 = 43714u;
    let var_2 = arg_2.yy;
    return min(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 59907u, 80706u, 1u), vec4<u32>(u_input.d.x, 20160u, 4454u, 75163u)) >> (reverseBits(vec4<u32>(0u, 1u, 1u, 6506u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 37320u, u_input.d.x, u_input.d.x), vec4<u32>(48205u, 1119u, u_input.d.x, 0u)))), select(firstLeadingBit(abs(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), ~(vec4<u32>(4294967295u, 1u, u_input.d.x, 9511u) & vec4<u32>(1u, 90266u, 4294967295u, 1u)), vec4<bool>(true, func_3(vec4<bool>(true, false, true, true), Struct_1(arg_0.a.a, arg_0.a.b, -13743i, -45076i), u_input.d.x, arg_0.d.b).x, true, !arg_0.a.a.x))) | (vec4<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 93374u, 399u) & vec3<u32>(15185u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 17001u, u_input.d.x)), u_input.d.x << (~u_input.d.x % 32u), _wgslsmith_mult_u32(~u_input.d.x, 83799u ^ u_input.d.x)) << (~vec4<u32>(~0u, u_input.d.x ^ u_input.d.x, 32163u, u_input.d.x ^ 1u) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = true;
    let var_1 = u_input.a.x;
    let var_2 = func_4(Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), any(vec3<bool>(true, true, true)), _wgslsmith_mod_i32(~(-26188i), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, var_1) & vec3<i32>(var_1, -53441i, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1, var_1, 16826i), vec3<i32>(1i, var_1, -22872i)))), Struct_1(func_3(vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, true, false, false), true, -1i, u_input.c.x), 41909u, true), all(vec3<bool>(true, false, true)) & any(vec3<bool>(true, false, false)), firstLeadingBit(3123i >> (u_input.d.x % 32u)), u_input.a.x), select(u_input.a, vec4<i32>(~var_1, 1i, u_input.a.x, 43148i), func_3(vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, true, false, true), false, 28087i, u_input.c.x), ~u_input.d.x, true)), Struct_1(func_3(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, false), false, u_input.a.x, -2147483647i), ~u_input.d.x, true), 40434u <= firstLeadingBit(u_input.d.x), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 24545i), vec2<i32>(-61454i, u_input.c.x)))), max(vec3<i32>(min(countOneBits(var_1), firstTrailingBit(-27447i)), _wgslsmith_div_i32(40515i, -24621i) | u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yy, u_input.c.zx, vec2<i32>(-2147483647i, var_1)), u_input.c.yx)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, var_1, var_1), vec3<i32>(-16979i, 19036i, 0i), true), u_input.a.yxy) << (vec3<u32>(~u_input.d.x, ~u_input.d.x, u_input.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-476f, -515f, arg_0, arg_0), vec4<f32>(-876f, 221f, 1537f, -208f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(887f, arg_0, -1450f, -2347f))) + vec4<f32>(arg_0, -1173f, arg_0, arg_0)))));
    let var_3 = vec3<i32>(-abs(u_input.c.x), u_input.c.x, -1i);
    let var_4 = Struct_1(select(vec4<bool>(true, !any(vec4<bool>(false, true, true, false)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), func_3(vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, true, true, true), false, var_3.x, 3843i), 0u, true)), !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -481f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_1, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1, u_input.b), var_3.yx | vec2<i32>(var_3.x, 0i)), u_input.c.xx)));
    return Struct_1(var_4.a, (firstTrailingBit(-1i) << (~5800u % 32u)) < ~u_input.c.x, var_3.x, var_4.d);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec2<u32>) -> bool {
    var var_0 = abs(arg_0.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) + _wgslsmith_f_op_f32(min(2154f, -876f))), -1984f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1069f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1149f)))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f + 497f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -951f) - vec2<f32>(-467f, 749f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, _wgslsmith_f_op_f32(step(var_1.x, -1074f))))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2.x))));
    var var_4 = arg_2.d;
    return select(true, !any(arg_0.a.a.yzw), arg_1);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = select(vec3<bool>(func_5(Struct_3(Struct_1(vec4<bool>(true, arg_1, true, arg_1), false, -56144i, u_input.c.x), func_2(-497f), -vec4<i32>(32603i, u_input.b, u_input.c.x, u_input.a.x), Struct_1(vec4<bool>(arg_1, true, false, true), arg_1, -2147483647i, -1i)), true, Struct_3(Struct_1(vec4<bool>(arg_1, arg_1, false, true), arg_1, u_input.a.x, -1i), Struct_1(vec4<bool>(arg_1, arg_1, false, false), true, 2147483647i, u_input.c.x), vec4<i32>(u_input.b, u_input.b, -2147483647i, -2147483647i), Struct_1(vec4<bool>(arg_1, arg_1, true, arg_1), true, u_input.a.x, -30530i)), ~u_input.d), all(select(select(vec4<bool>(false, arg_1, false, true), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, true, true)), select(vec4<bool>(false, true, arg_1, false), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, false, true, arg_1)), arg_1)), any(func_3(vec4<bool>(true, arg_1, true, arg_1), func_2(arg_2.x), u_input.d.x, !arg_1).yzy)), !func_3(select(func_2(1390f).a, select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, arg_1, false)), !arg_1), func_2(arg_2.x), abs(u_input.d.x), any(func_3(vec4<bool>(false, arg_1, arg_1, false), Struct_1(vec4<bool>(arg_1, true, true, arg_1), arg_1, -1i, u_input.c.x), 0u, arg_1).wzx)).wzw, vec3<bool>(arg_1, true, arg_1));
    var var_1 = !func_3(func_3(func_2(-1496f).a, Struct_1(func_3(vec4<bool>(arg_1, false, true, arg_1), Struct_1(vec4<bool>(true, false, true, false), var_0.x, -11213i, u_input.c.x), 2657u, false), all(vec2<bool>(var_0.x, arg_1)), u_input.b, u_input.a.x), ~3838u, true), func_2(_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -958f)))), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_div_u32(0u, u_input.d.x << (1u % 32u))), 1u != firstTrailingBit(max(0u, 74828u)));
    var_1 = select(!(!func_2(-527f).a), func_2(arg_2.x).a, !(!(!select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_1.x, false, false), false))));
    var_1 = vec4<bool>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(83258u, u_input.d.x, 1u, 4294967295u) ^ vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.d.x), ~vec4<u32>(44195u, 4294967295u, u_input.d.x, u_input.d.x)), ~(~0u), 4294967295u) <= ~(~reverseBits(u_input.d.x)), u_input.a.x != abs(-(-16655i << (u_input.d.x % 32u))), var_0.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-16209i, u_input.a.x, 6973i)), u_input.a.wwy) > countOneBits(i32(-1i) * -1i));
    var var_2 = var_1.xxx;
    return -1652f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(f32(-1f) * -2507f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -288f), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(645f, -1013f) * vec2<f32>(448f, -490f)), _wgslsmith_f_op_f32(1931f * 988f))))))));
    var var_1 = Struct_2(true, vec4<u32>(~func_4(Struct_3(Struct_1(vec4<bool>(false, false, false, true), false, u_input.c.x, -1i), Struct_1(vec4<bool>(false, true, false, true), true, -1i, u_input.a.x), u_input.a, Struct_1(vec4<bool>(true, false, true, true), true, -13843i, u_input.c.x)), u_input.c, vec4<f32>(-124f, -1147f, -1000f, 363f)).x & reverseBits(u_input.d.x), ~u_input.d.x, ~u_input.d.x, func_4(Struct_3(Struct_1(vec4<bool>(true, false, false, false), true, u_input.c.x, u_input.a.x), Struct_1(vec4<bool>(true, false, true, false), false, u_input.b, u_input.b), _wgslsmith_div_vec4_i32(u_input.a, u_input.a), Struct_1(vec4<bool>(false, true, true, false), true, 13966i, u_input.b)), (vec3<i32>(u_input.b, 29987i, 30871i) >> (vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u) % vec3<u32>(32u))) ^ select(vec3<i32>(0i, -17871i, 91313i), vec3<i32>(-1i, u_input.b, u_input.b), vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(275f, 1062f, -276f, 1250f) + vec4<f32>(666f, 561f, 656f, 999f))))).x));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1567f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1000f, var_1.a, vec2<f32>(-3963f, 547f), -801f)) * _wgslsmith_f_op_f32(f32(-1f) * -498f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))));
    let var_2 = u_input.d.x;
    var_0 = -222f;
    var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1294f), any(func_3(vec4<bool>(select(false, var_1.a, var_1.a), true, var_1.a & true, true), func_2(-317f), countOneBits(~var_2), false).zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-452f)), _wgslsmith_f_op_f32(-1151f + -715f)), vec2<f32>(-1529f, _wgslsmith_f_op_f32(ceil(103f))))), -269f));
    var_1 = Struct_2(true, var_1.b);
    let var_3 = Struct_2(var_1.a || var_1.a, _wgslsmith_add_vec4_u32(vec4<u32>(var_2, u_input.d.x, var_2, 0u), ~firstLeadingBit(~vec4<u32>(u_input.d.x, 58257u, var_2, u_input.d.x))));
    var var_4 = (vec4<i32>(u_input.b, -55195i, 1i, countOneBits(_wgslsmith_div_i32(u_input.a.x, u_input.c.x))) << (var_1.b % vec4<u32>(32u))) >> (vec4<u32>(~var_2, 1u, var_3.b.x, 0u ^ max(15935u, 0u & var_1.b.x)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(541f - -1276f)))), -1000f, 1028f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -550f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(377f * -802f), var_1.a, vec2<f32>(240f, -1749f), _wgslsmith_f_op_f32(sign(1126f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(217f, -364f, false)) * 149f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(362f, -1013f) - vec2<f32>(-1366f, -1863f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-162f, -826f) - vec2<f32>(-421f, -985f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1458f, 685f))), func_2(341f).b & all(vec2<bool>(true, false)))))), var_1.b.wyz, _wgslsmith_clamp_u32(countOneBits(reverseBits(49373u)), ~1u, var_3.b.x) & 1u, 29216u);
}

