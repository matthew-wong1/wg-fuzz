struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_1(select(!select(vec3<bool>(arg_0.e.a.x, true, true), select(vec3<bool>(arg_0.e.a.x, true, arg_0.c), vec3<bool>(arg_0.c, false, arg_0.c), arg_0.c), arg_0.e.a), select(arg_0.e.a, select(vec3<bool>(false, arg_0.c, arg_0.e.a.x), vec3<bool>(true, true, arg_0.e.a.x), all(vec4<bool>(false, false, false, false))), select(!arg_0.e.a, arg_0.e.a, vec3<bool>(false, arg_0.e.a.x, false))), arg_0.e.a), -(~(~vec2<i32>(arg_0.e.b.x, 11169i) << (arg_1 % vec2<u32>(32u)))), arg_0.e.c);
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), u_input.a);
    let var_2 = vec3<u32>(4294967295u, 1u, ~0u);
    var var_3 = !(!vec2<bool>(var_0.a.x, arg_0.e.a.x));
    let var_4 = vec4<u32>(~var_2.x, 2826u, 0u, 2986u);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(343f, _wgslsmith_f_op_f32(trunc(arg_0.b.x))));
}

fn func_2() -> vec2<f32> {
    let var_0 = 4294967295u;
    return vec2<f32>(1922f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_2(31447i, vec3<f32>(1488f, 711f, 1154f), false, vec2<i32>(2147483647i, 5414i), Struct_1(vec3<bool>(false, false, true), vec2<i32>(2147483647i, 0i), vec3<i32>(2147483647i, 1i, 0i))), u_input.a.xz)), 176f, select(true, false, true)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_2(2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-568f - _wgslsmith_f_op_f32(min(1005f, -656f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-885f - -2255f)), arg_2.x)), false, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1.c.zz, vec2<i32>(arg_1.b.x, arg_1.b.x)), -1i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.b.x, -6061i), _wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c))), vec2<i32>(arg_1.c.x, arg_1.c.x), vec2<i32>(min(2147483647i, -1i), arg_1.c.x) ^ select(arg_1.c.yz, arg_1.c.xz, arg_1.a.xx)), Struct_1(arg_1.a, max(min(vec2<i32>(1i, -2793i), arg_1.b) >> (u_input.a.zy % vec2<u32>(32u)), arg_1.b), firstLeadingBit(arg_1.c)));
    let var_1 = vec4<u32>(8850u, u_input.a.x, select(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(104101u), u_input.a.x, u_input.a.x, 1u), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(35044u, 46620u, 10827u, 4294967295u)), ~vec4<u32>(11515u, u_input.a.x, u_input.a.x, u_input.a.x))), false), 53532u);
    var var_2 = Struct_1(!arg_1.a, firstLeadingBit(arg_1.c.xx), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i | arg_1.c.x, arg_1.b.x), arg_1.c.x, -7776i), -1i, var_0.e.b.x));
    let var_3 = Struct_4(Struct_2(-var_0.e.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 675f, var_0.b.x)), var_0.b)), select(all(!vec3<bool>(var_2.a.x, false, false)), all(!vec4<bool>(var_0.c, var_2.a.x, arg_1.a.x, var_0.c)), all(var_2.a)), vec2<i32>(var_2.b.x | var_0.a, _wgslsmith_mod_i32(~56868i, arg_1.c.x)), var_0.e), _wgslsmith_f_op_f32(-var_0.b.x), var_2.c.x);
    var_2 = Struct_1(select(select(vec3<bool>(any(vec2<bool>(true, false)), true, true), select(!var_3.a.e.a, vec3<bool>(true, true, var_0.c), !vec3<bool>(true, var_0.c, true)), !vec3<bool>(false, true, var_2.a.x)), vec3<bool>(var_2.a.x, all(var_0.e.a.xy), arg_1.a.x), !(!(false & var_0.c))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, var_3.a.a, var_2.c.x, 29064i), vec4<i32>(var_0.a, 0i, arg_1.c.x, -41511i)), abs(vec4<i32>(0i, var_0.e.c.x, var_0.d.x, 0i)), firstLeadingBit(vec4<i32>(arg_1.c.x, arg_1.b.x, -18144i, 1i))), (vec4<i32>(2147483647i, -54358i, 2147483647i, -2147483647i) ^ vec4<i32>(var_0.a, var_3.a.a, var_2.b.x, var_2.b.x)) & -vec4<i32>(-50294i, -10550i, 2147483647i, 1i)), arg_1.b.x), vec3<i32>(select(-_wgslsmith_sub_i32(var_0.e.b.x, 0i), var_0.a ^ -arg_1.b.x, arg_1.a.x | any(vec3<bool>(var_0.c, false, true))), var_2.c.x, _wgslsmith_clamp_i32(~arg_1.c.x, -2147483647i, arg_1.b.x)));
    return Struct_4(Struct_2(max(abs(2147483647i), 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a.b * _wgslsmith_f_op_vec3_f32(-var_0.b))), true, ~(-arg_1.c.yx), var_0.e), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_vec2_f32(func_2()).x), _wgslsmith_dot_vec3_i32(~max(var_0.e.c, vec3<i32>(var_3.a.d.x, -46064i, -2147483647i)), firstTrailingBit(~(~vec3<i32>(arg_1.c.x, arg_1.c.x, var_2.c.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = func_4(-1000f, arg_3.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(2147483647i, vec3<f32>(-879f, 1000f, arg_2.x), arg_3.e.a.x, arg_3.e.b, Struct_1(vec3<bool>(false, false, arg_0.x), arg_3.e.b, arg_3.e.c)), vec2<u32>(arg_1.x, 1u))), arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(499f + arg_3.b.x), _wgslsmith_f_op_f32(min(arg_2.x, 1574f)), !arg_0.x))), all(!select(arg_3.e.a, vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_3.e.a.x, arg_3.c, arg_3.e.a.x))))));
    var var_1 = ~var_0.c;
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -(i32(-1i) * -24591i), arg_3.e.c.x, _wgslsmith_mod_i32(-abs(arg_3.e.c.x), func_4(var_0.a.b.x, Struct_1(var_0.a.e.a, vec2<i32>(-1i, arg_3.e.c.x), vec3<i32>(arg_3.a, 23801i, 0i)), arg_3.b.xx).c)), min(vec3<i32>(~arg_3.a, 0i, _wgslsmith_div_i32(var_0.a.e.b.x, var_0.a.d.x)) & arg_3.e.c, arg_3.e.c));
    var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -436f), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - _wgslsmith_f_op_f32(-var_0.b)), arg_3.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2242f - arg_3.b.x), _wgslsmith_f_op_f32(-arg_2.x)))).a.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x)) + vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-137f - -1258f))));
    var_1 = 6187i;
    return Struct_4(Struct_2(abs(reverseBits(_wgslsmith_clamp_i32(arg_3.e.b.x, arg_3.e.b.x, var_0.c))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, var_0.b, var_0.a.b.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, var_0.a.b.x, var_0.b)))))), true, max(~vec2<i32>(1i, var_2.x) >> (~vec2<u32>(121856u, 0u) % vec2<u32>(32u)), vec2<i32>(~var_2.x, 5743i)), var_0.a.e), arg_2.x, countOneBits(select(var_0.a.d.x, arg_3.a, arg_0.x & true)));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_dot_vec2_i32(arg_2.a.d, _wgslsmith_div_vec2_i32(arg_2.a.d, vec2<i32>(-1i, 1i))) & ~_wgslsmith_add_i32(-2147483647i, 1i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b.x)), -1467f, 2292f), arg_2.a.c | !arg_1.x, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(select(arg_2.a.d, arg_2.a.d, vec2<bool>(true, arg_2.a.e.a.x)), arg_2.a.d), func_4(arg_2.b, Struct_1(arg_2.a.e.a, arg_2.a.e.c.xx, vec3<i32>(arg_2.a.d.x, 0i, -22388i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, -425f) * vec2<f32>(845f, arg_2.a.b.x))).a.e.c.zz), Struct_1(arg_2.a.e.a, _wgslsmith_add_vec2_i32(arg_2.a.d, vec2<i32>(-2147483647i, 22413i)) | abs(vec2<i32>(-8517i, arg_2.c)), ~(-arg_2.a.e.c))), 459f, abs(arg_2.a.e.b.x));
    let var_1 = true;
    var var_2 = vec4<u32>(~firstLeadingBit(1u & arg_3.a), ~(~_wgslsmith_clamp_u32(u_input.a.x, min(4294967295u, u_input.a.x), _wgslsmith_mod_u32(arg_3.a, u_input.a.x))), _wgslsmith_add_u32(76385u, 54184u), 20406u);
    var var_3 = func_1(!select(var_0.a.e.a.yz, vec2<bool>(select(arg_0, false, true), arg_0), !(arg_1.x == true)), var_2.yxx, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.b.x * var_0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1755f, 1328f) + _wgslsmith_f_op_f32(arg_2.a.b.x * 1000f)), 849f, -1086f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1667f, -596f), var_0.a.b.x, -318f, _wgslsmith_f_op_f32(-var_0.a.b.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, var_0.a.b.x, 1932f, 813f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, arg_2.a.b.x, arg_2.b, -480f)))))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1358f, arg_2.a.b.x, false)), _wgslsmith_f_op_f32(max(var_0.a.b.x, var_0.b)))) - _wgslsmith_f_op_vec2_f32(func_2()).x), func_4(var_0.b, Struct_1(vec3<bool>(true, arg_0, var_0.a.e.a.x), vec2<i32>(arg_2.a.e.b.x, var_0.c), ~vec3<i32>(1i, arg_2.c, var_0.a.d.x)), var_0.a.b.yz).a.e, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -749f), _wgslsmith_f_op_f32(abs(-690f)))).a).a.e;
    let var_4 = true;
    return arg_3;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = func_1(select(arg_1.e.a.zx, vec2<bool>(all(select(vec4<bool>(true, true, arg_1.e.a.x, arg_1.c), vec4<bool>(false, false, arg_1.c, arg_1.c), arg_1.c)), false), vec2<bool>(false, any(vec2<bool>(arg_1.e.a.x, false)))), firstLeadingBit(u_input.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1149f, arg_1.b.x, arg_1.b.x, -855f))), vec4<f32>(408f, _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), -394f, 792f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-240f, arg_1.b.x, 308f, -1546f), vec4<f32>(-1266f, 1107f, arg_1.b.x, -689f)))))), arg_1);
    var_0 = func_1(vec2<bool>(true, arg_1.e.a.x), vec3<u32>(4294967295u, 66764u, ~firstTrailingBit(arg_0.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(var_0.a.b.x + 1374f))), _wgslsmith_f_op_f32(arg_1.b.x - 1857f), var_0.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f), _wgslsmith_f_op_f32(floor(var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b.x, arg_1.b.x))))), func_1(select(var_0.a.e.a.zz, func_1(vec2<bool>(arg_1.c, true), countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-472f, var_0.b, arg_1.b.x, arg_1.b.x), vec4<f32>(arg_1.b.x, 301f, -600f, arg_1.b.x), vec4<bool>(arg_1.e.a.x, true, var_0.a.c, arg_1.c))), func_4(-908f, arg_1.e, vec2<f32>(var_0.a.b.x, -792f)).a).a.e.a.yy, func_1(vec2<bool>(false, false), ~u_input.a, vec4<f32>(119f, arg_1.b.x, -1009f, var_0.b), var_0.a).a.e.a.yz), vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(arg_0.a), _wgslsmith_mod_u32(arg_0.a, 40253u)), ~(~11217u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 24718u, 4294967295u, arg_0.a), vec4<u32>(37487u, arg_0.a, u_input.a.x, 1u)), 14873u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1606f, 677f, false)) - _wgslsmith_f_op_f32(arg_1.b.x + 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(210f - var_0.a.b.x), var_0.a.b.x, true)), 1105f, var_0.b), arg_1).a);
    var_0 = Struct_4(func_4(_wgslsmith_f_op_f32(abs(-1375f)), arg_1.e, arg_1.b.yy).a, 725f, arg_1.d.x);
    let var_1 = -func_4(-582f, func_1(vec2<bool>(false, arg_1.c), vec3<u32>(min(0u, 4294967295u), 0u, abs(35037u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1053f, 938f, 143f) * vec4<f32>(arg_1.b.x, -487f, var_0.b, arg_1.b.x))), var_0.a).a.e, _wgslsmith_f_op_vec2_f32(exp2(var_0.a.b.xx))).a.e.b;
    let var_2 = ~(-var_0.a.d);
    return vec3<i32>(69333i, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, arg_1.b.x))), arg_1.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b.zy))).c, -2147483647i);
}

fn func_7(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = abs(_wgslsmith_dot_vec2_u32(u_input.a.yz, firstTrailingBit(vec2<u32>(u_input.a.x, 58585u))));
    let var_1 = Struct_2(arg_0.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, 914f)), -323f, arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.wwy, _wgslsmith_f_op_vec3_f32(arg_3.wxx + arg_3.xyy)) - vec3<f32>(func_4(1000f, Struct_1(vec3<bool>(arg_2, false, arg_1), vec2<i32>(arg_0.x, arg_0.x), vec3<i32>(34667i, arg_0.x, arg_0.x)), arg_3.wz).b, -467f, _wgslsmith_f_op_f32(abs(arg_3.x)))), vec3<bool>(false, (i32(-1i) * -24512i) <= arg_0.x, any(vec3<bool>(arg_1, arg_2, arg_2)) != arg_2))), all(vec4<bool>(false, !(!arg_1), arg_2, false)), firstTrailingBit(vec2<i32>(48889i, arg_0.x)), func_1(vec2<bool>(arg_2, func_4(_wgslsmith_f_op_f32(-arg_3.x), func_4(-247f, Struct_1(vec3<bool>(arg_2, true, arg_2), vec2<i32>(arg_0.x, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, -1i)), vec2<f32>(487f, arg_3.x)).a.e, func_1(vec2<bool>(true, true), u_input.a, arg_3, Struct_2(54676i, arg_3.wzy, arg_1, vec2<i32>(arg_0.x, -2147483647i), Struct_1(vec3<bool>(true, arg_1, true), vec2<i32>(-2147483647i, 23534i), vec3<i32>(43377i, 1i, arg_0.x)))).a.b.xx).a.c), select(abs(vec3<u32>(1u, 0u, 41332u)), min(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, var_0, 18450u), vec3<u32>(var_0, 86842u, u_input.a.x)), u_input.a), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, false), true)), _wgslsmith_f_op_vec4_f32(-arg_3), Struct_2(arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(476f, arg_3.x, arg_3.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-419f, arg_3.x, -163f)))), false, -func_4(-377f, Struct_1(vec3<bool>(false, arg_1, true), arg_0.zy, vec3<i32>(-2147483647i, arg_0.x, arg_0.x)), arg_3.zw).a.d, func_4(func_1(vec2<bool>(true, false), u_input.a, arg_3, Struct_2(0i, arg_3.yxy, false, vec2<i32>(arg_0.x, 0i), Struct_1(vec3<bool>(false, true, arg_2), vec2<i32>(0i, 1i), vec3<i32>(23773i, arg_0.x, arg_0.x)))).a.b.x, func_4(-1156f, Struct_1(vec3<bool>(arg_2, arg_1, arg_2), arg_0.xz, vec3<i32>(arg_0.x, 2147483647i, arg_0.x)), vec2<f32>(-557f, 1000f)).a.e, func_4(-178f, Struct_1(vec3<bool>(arg_2, true, false), vec2<i32>(5932i, arg_0.x), arg_0), arg_3.wz).a.b.yz).a.e)).a.e);
    let var_2 = func_1(!var_1.e.a.xx, firstTrailingBit(abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), u_input.a))), arg_3, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-596f * arg_3.x) + _wgslsmith_f_op_f32(exp2(func_4(260f, var_1.e, arg_3.xx).b))), Struct_1(!var_1.e.a, vec2<i32>(-26528i, arg_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, -2147483647i), var_1.e.c & vec3<i32>(61322i, arg_0.x, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_3.wx - var_1.b.yy))))).a).a.e.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(arg_3, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, -385f, 394f, arg_3.x) + vec4<f32>(1863f, -163f, 120f, var_1.b.x)))), _wgslsmith_f_op_vec4_f32(round(arg_3)))));
    let var_4 = var_1.e;
    return func_5(var_2.x, var_4.a.yy, Struct_4(func_1(!select(vec2<bool>(true, true), var_4.a.xx, var_1.e.a.yy), countOneBits(abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x))), arg_3, Struct_2(_wgslsmith_clamp_i32(arg_0.x, 1i, var_4.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-718f, arg_3.x, -343f)), 1u <= var_0, var_1.d, func_1(vec2<bool>(true, true), u_input.a, arg_3, var_1).a.e)).a, _wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-23743i, -5614i, arg_0.x, -1i), vec4<i32>(arg_0.x, var_1.e.b.x, 2147483647i, 3903i)), ~reverseBits(vec4<i32>(arg_0.x, 0i, -1i, 1i)))), Struct_3(~_wgslsmith_add_u32(88801u, max(4294967295u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    let var_1 = func_7(-reverseBits(vec3<i32>(-1i, -3406i, -32255i)) & func_6(func_5(true, select(vec2<bool>(false, false), vec2<bool>(true, true), false), func_1(vec2<bool>(true, true), u_input.a, vec4<f32>(-1287f, 441f, -338f, -1264f), Struct_2(-2147483647i, vec3<f32>(-1209f, 703f, 737f), true, vec2<i32>(-1i, -1i), Struct_1(vec3<bool>(false, true, false), vec2<i32>(-2147483647i, -53503i), vec3<i32>(2147483647i, -27474i, -2147483647i)))), Struct_3(69965u)), Struct_2(abs(2147483647i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-638f, -299f, 712f), vec3<f32>(671f, -546f, 2349f))), u_input.a.x == 1u, vec2<i32>(1i, -2147483647i), func_1(vec2<bool>(false, true), u_input.a, vec4<f32>(-293f, -1000f, 172f, 868f), Struct_2(1i, vec3<f32>(-509f, -1000f, 916f), true, vec2<i32>(-27360i, -35215i), Struct_1(vec3<bool>(true, true, false), vec2<i32>(18517i, 0i), vec3<i32>(0i, 2147483647i, -1i)))).a.e)), all(!vec3<bool>(true, all(vec3<bool>(false, true, true)), true)), true, vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1385f + -568f), -192f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f + -198f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(151f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1301f) * 1136f);
    var var_2 = func_1(vec2<bool>(false, false), ~_wgslsmith_clamp_vec3_u32(u_input.a, ~(vec3<u32>(var_1.a, 1u, 0u) ^ u_input.a), _wgslsmith_mod_vec3_u32(~vec3<u32>(23541u, 4294967295u, var_1.a), ~u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1174f, 971f, 1110f, 521f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1069f, -280f, -1158f, 375f) - vec4<f32>(-712f, 536f, -1384f, 585f))), vec4<f32>(_wgslsmith_f_op_f32(-1854f - 838f), -925f, _wgslsmith_f_op_f32(ceil(-1015f)), _wgslsmith_div_f32(-614f, 1215f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1315f, 322f, -735f, -1285f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2529f, -1111f, 1085f, 2239f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(203f, 871f, -512f, 573f)))))), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(func_1(vec2<bool>(false, false), u_input.a, vec4<f32>(1675f, -1958f, 726f, 2086f), Struct_2(-1i, vec3<f32>(885f, -515f, -1832f), false, vec2<i32>(0i, 16700i), Struct_1(vec3<bool>(false, true, true), vec2<i32>(23576i, 18937i), vec3<i32>(11381i, -33154i, -1i)))).b, 474f))), Struct_1(vec3<bool>(true, true, false), vec2<i32>(1i, 1i), vec3<i32>(i32(-1i) * -27406i, -1i, 1i)), _wgslsmith_div_vec2_f32(vec2<f32>(760f, _wgslsmith_f_op_f32(-1115f - 1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(506f, 588f), vec2<f32>(1939f, 1200f))))).a).a.e;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(471f, 1045f, -1165f, 341f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-391f, 1105f, -110f, 594f))) * vec4<f32>(258f, 186f, 1269f, 839f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 326f, 386f, -959f), vec4<f32>(501f, -1900f, -1097f, -309f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1412f, -871f, -1230f, 667f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-632f, 1325f, -662f, 1582f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, 441f, 1459f, 235f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(272f, -1000f, -421f, -1349f), vec4<f32>(498f, 237f, 1337f, 436f), vec4<bool>(false, var_2.a.x, false, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, 137f, 1000f, 1753f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-570f, -389f, 749f, -1218f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 698f, -1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(272f, 1000f, 248f, 715f) - vec4<f32>(786f, 1036f, -1000f, -1000f)) - vec4<f32>(-431f, -235f, -271f, 795f))), false & all(vec2<bool>(false, var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.a, _wgslsmith_add_u32(4294967295u, var_1.a), 4294967295u), 21743i, u_input.a.yx);
}

