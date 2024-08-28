struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_1.zzy;
    return var_0.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    let var_0 = all(vec3<bool>(!(~4294967295u != u_input.a.x), !any(vec3<bool>(false, arg_0.d, false)), false | arg_0.e.x));
    var var_1 = vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) + arg_2.a));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(arg_3, arg_0.c.x), -4383i) & firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(1i, -arg_0.c.x), arg_0.c.x | -6704i));
    var var_3 = 2147483647i;
    var var_4 = Struct_3(var_0, arg_0, u_input.a.zxw, arg_0);
    return ~u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_3.c.x, arg_3.c.x), -29554i);
    let var_1 = -(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_3.c.wxw, _wgslsmith_mod_vec3_i32(arg_3.c.wwz, vec3<i32>(0i, -16771i, 30802i))), arg_1.xyw, arg_3.c.xxz) << (_wgslsmith_clamp_vec3_u32(~(u_input.a.xxy | vec3<u32>(u_input.a.x, 36579u, 1u)), ~_wgslsmith_mod_vec3_u32(u_input.a.xww, u_input.a.wzw), firstLeadingBit(u_input.a.zxw)) % vec3<u32>(32u)));
    var var_2 = Struct_1(arg_3.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b + -310f) * _wgslsmith_f_op_f32(-arg_3.b)), firstTrailingBit(arg_3.c), true, select(select(!(!arg_3.e), vec2<bool>(false, arg_3.d), arg_3.d), arg_2.zw, arg_2.x));
    var var_3 = Struct_5(Struct_1(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.b, _wgslsmith_f_op_f32(3066f * arg_3.b), all(vec3<bool>(false, arg_3.d, false))))), -arg_1, arg_3.a.x, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, arg_3.b, arg_3.b) * vec3<f32>(arg_3.b, arg_3.b, -600f)), vec3<f32>(_wgslsmith_f_op_f32(-533f * 531f), _wgslsmith_f_op_f32(1000f + arg_3.b), _wgslsmith_f_op_f32(-var_2.b)))), Struct_2(_wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1298f + -421f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(step(-970f, -613f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-198f, 167f) * vec2<f32>(-1496f, 690f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.b) * vec2<f32>(arg_3.b, var_2.b))))), arg_3, Struct_4(var_2.c.x, firstTrailingBit(func_3(Struct_1(vec2<bool>(false, arg_3.d), 1000f, vec4<i32>(449i, arg_3.c.x, var_1.x, arg_1.x), var_2.a.x, vec2<bool>(var_2.e.x, true)), arg_3.c.x, Struct_2(var_2.b, vec2<f32>(-318f, 596f)), arg_3.c.x) & abs(vec4<u32>(23419u, 30206u, u_input.a.x, arg_0))), ~(-2147483647i) < _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.x, var_1.x), var_2.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.b, arg_3.b, arg_3.b, arg_3.b), vec4<f32>(-220f, var_2.b, -1000f, var_2.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-722f, arg_3.b, -278f, 678f) * vec4<f32>(606f, arg_3.b, -1758f, -512f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, var_2.b, 151f, arg_3.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1116f, var_2.b, arg_3.b, 247f)))), any(vec4<bool>(any(arg_2.zxx), true, arg_3.b >= -137f, 26026i < var_1.x))));
    let var_4 = Struct_2(var_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.b.zy)) + var_3.c.b));
    return Struct_3(var_2.c.x <= firstLeadingBit(~countOneBits(var_2.c.x)), arg_3, vec3<u32>(0u, ~u_input.a.x, _wgslsmith_div_u32(~(~130737u), select(~1u, u_input.a.x ^ u_input.a.x, all(arg_2.yyz)))), Struct_1(vec2<bool>(var_2.a.x, false), _wgslsmith_f_op_f32(sign(var_2.b)), arg_1, all(select(!arg_2.yy, vec2<bool>(true, true), arg_3.a.x || false)), vec2<bool>(var_2.d, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2.b.c.x >= arg_2.b.c.x;
    var var_1 = 34296u << (_wgslsmith_div_u32(25168u, abs(_wgslsmith_dot_vec3_u32(arg_2.c, u_input.a.wwy)) << (arg_3.x % 32u)) % 32u);
    var var_2 = arg_1.a.c.x | _wgslsmith_sub_i32(-2147483647i, arg_1.d.c.x);
    return func_2(63997u, vec4<i32>(-1i, -1i, arg_2.d.c.x, arg_2.b.c.x), !(!(!vec4<bool>(true, arg_1.e.c, false, true))), Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.b)))), arg_1.d.c, false, !select(!arg_1.d.e, !vec2<bool>(arg_1.e.c, true), arg_2.d.a.x))).b;
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(arg_1.d.c, -(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_1.d.c.x, 2147483647i, -48655i, arg_1.d.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b.c.x, 2301i, arg_1.d.c.x, arg_1.d.c.x), arg_1.b.c)) ^ -arg_1.b.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1578f - -1475f) + func_4(Struct_2(-1000f, vec2<f32>(arg_1.d.b, arg_1.b.b)), Struct_5(Struct_1(arg_1.b.a, -1000f, arg_1.d.c, arg_1.b.d, arg_1.b.a), vec3<f32>(-743f, -483f, -434f), Struct_2(arg_1.b.b, vec2<f32>(arg_1.b.b, -304f)), Struct_1(arg_1.d.a, -232f, vec4<i32>(arg_1.d.c.x, arg_1.b.c.x, 1i, 14315i), true, vec2<bool>(arg_1.d.d, true)), Struct_4(-25420i, u_input.a, arg_1.b.d, vec4<f32>(779f, -1152f, arg_1.b.b, 837f), true)), arg_1, vec4<u32>(u_input.a.x, arg_1.c.x, 1u, 4294967295u)).b), arg_1.d.b)));
    var var_2 = func_2(func_2(func_2(u_input.a.x, vec4<i32>(reverseBits(-22362i), max(arg_1.d.c.x, arg_1.b.c.x), 15455i, _wgslsmith_sub_i32(arg_1.d.c.x, arg_1.d.c.x)), !select(vec4<bool>(arg_1.d.a.x, false, arg_1.b.a.x, true), vec4<bool>(arg_1.a, false, true, arg_1.a), arg_1.d.e.x), arg_1.d).c.x, -firstTrailingBit(-vec4<i32>(-2147483647i, -2595i, arg_1.b.c.x, arg_1.b.c.x)), select(!vec4<bool>(arg_1.a, false, false, arg_1.b.e.x), select(!vec4<bool>(true, arg_1.d.a.x, false, false), !vec4<bool>(arg_1.b.d, arg_1.a, true, true), select(vec4<bool>(true, arg_1.d.d, arg_1.d.e.x, arg_1.d.a.x), vec4<bool>(arg_1.a, true, true, arg_1.d.d), arg_1.a)), true), func_2(~_wgslsmith_sub_u32(25549u, arg_1.c.x), -select(arg_1.d.c, vec4<i32>(7792i, arg_1.d.c.x, 2147483647i, -59456i), vec4<bool>(true, arg_1.a, arg_1.d.e.x, true)), vec4<bool>(arg_1.b.c.x == -1i, !arg_1.a, any(vec3<bool>(arg_1.a, arg_1.a, arg_1.b.a.x)), true), func_4(Struct_2(arg_1.d.b, vec2<f32>(-1612f, arg_1.d.b)), Struct_5(arg_1.d, vec3<f32>(-355f, -990f, var_1), Struct_2(var_1, vec2<f32>(var_1, var_1)), Struct_1(arg_1.d.e, var_1, vec4<i32>(arg_1.b.c.x, -1i, -25689i, arg_1.b.c.x), arg_1.d.e.x, arg_1.d.e), Struct_4(-2147483647i, vec4<u32>(4294967295u, 0u, arg_1.c.x, 4294967295u), false, vec4<f32>(-862f, 556f, var_1, arg_1.d.b), arg_1.a)), Struct_3(arg_1.d.e.x, arg_1.b, arg_1.c, Struct_1(arg_1.b.a, -1234f, arg_1.d.c, false, vec2<bool>(arg_1.d.a.x, true))), u_input.a)).b).c.x, _wgslsmith_mult_vec4_i32(min(arg_1.d.c, arg_1.d.c), ~vec4<i32>(16693i, ~arg_1.b.c.x, arg_1.d.c.x ^ 2147483647i, abs(arg_1.d.c.x))), !(!vec4<bool>(u_input.a.x >= u_input.a.x, func_1(arg_1.b, vec4<bool>(arg_1.b.d, true, true, arg_1.b.a.x)), true, arg_1.a)), Struct_1(func_2(abs(1u), select(arg_1.d.c & arg_1.b.c, abs(arg_1.b.c), select(vec4<bool>(arg_1.d.e.x, arg_1.a, arg_1.d.e.x, true), vec4<bool>(true, arg_1.d.a.x, true, arg_1.d.e.x), arg_1.d.a.x)), select(!vec4<bool>(true, true, arg_1.d.e.x, false), !vec4<bool>(arg_1.a, true, arg_1.d.a.x, false), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(arg_1.a, arg_1.b.d), -493f, arg_1.d.c ^ arg_1.d.c, true, select(arg_1.b.e, arg_1.d.a, arg_1.d.e))).b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(max(1000f, var_1))) - _wgslsmith_f_op_f32(select(-1029f, arg_1.d.b, true))), -select(~arg_1.b.c, _wgslsmith_mod_vec4_i32(arg_1.b.c, vec4<i32>(2147483647i, arg_1.d.c.x, arg_1.b.c.x, arg_1.d.c.x)), false), false, vec2<bool>(false & all(arg_1.b.a), arg_1.a)));
    var_0 = -40527i;
    var_2 = func_2(_wgslsmith_dot_vec3_u32(func_2(0u, vec4<i32>(0i, ~(-2147483647i), i32(-1i) * -2147483647i, abs(arg_1.b.c.x)), !vec4<bool>(var_2.b.e.x, false, true, false), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 67550u), u_input.a.yw), var_2.d.c >> (u_input.a % vec4<u32>(32u)), vec4<bool>(arg_1.d.e.x, arg_1.b.a.x, true, false), Struct_1(vec2<bool>(true, var_2.a), var_2.b.b, arg_1.b.c, false, arg_1.b.a)).d).c, _wgslsmith_sub_vec3_u32(var_2.c, ~var_2.c)), var_2.d.c, vec4<bool>(false, true, all(vec3<bool>(false & arg_1.b.d, false, !var_2.b.a.x)), _wgslsmith_f_op_f32(var_1 + -952f) >= -582f), Struct_1(!vec2<bool>(false, var_2.b.c.x < arg_1.d.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-750f - _wgslsmith_f_op_f32(-225f * var_2.b.b)), _wgslsmith_f_op_f32(select(197f, 1049f, all(vec4<bool>(true, arg_1.b.e.x, true, true))))), vec4<i32>(1i << (~arg_0 % 32u), arg_1.b.c.x, 64920i, func_2(arg_1.c.x, abs(var_2.b.c), vec4<bool>(arg_1.b.a.x, true, var_2.b.d, true), Struct_1(arg_1.b.a, var_1, var_2.d.c, true, var_2.b.e)).d.c.x), !(all(vec4<bool>(false, arg_1.b.a.x, arg_1.a, var_2.b.d)) || arg_1.a), vec2<bool>(true, false)));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1056f))));
    var var_1 = ~(-2147483647i);
    var var_2 = Struct_3(func_1(Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false)), -539f, vec4<i32>(~(-16497i), ~2147483647i, select(-2147483647i, -86658i, false), ~(-17160i)), false, !select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), true)), func_5(u_input.a.x, Struct_3(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-1211f * 318f), min(vec4<i32>(-25867i, -34596i, 0i, -1287i), vec4<i32>(0i, -28964i, -16125i, 2147483647i)), true, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~firstLeadingBit(u_input.a.yxy), func_4(Struct_2(var_0, vec2<f32>(var_0, 300f)), Struct_5(Struct_1(vec2<bool>(false, true), 919f, vec4<i32>(-20671i, -4140i, -2147483647i, 2147483647i), true, vec2<bool>(false, false)), vec3<f32>(1000f, var_0, -440f), Struct_2(651f, vec2<f32>(1248f, 663f)), Struct_1(vec2<bool>(false, true), 1238f, vec4<i32>(24988i, -1i, 27218i, 1i), false, vec2<bool>(true, false)), Struct_4(2147483647i, vec4<u32>(u_input.a.x, u_input.a.x, 8223u, 96047u), true, vec4<f32>(var_0, 775f, var_0, var_0), true)), func_2(0u, vec4<i32>(-5226i, 2147483647i, 1i, 8328i), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(false, false), var_0, vec4<i32>(2147483647i, -44668i, 1i, 2147483647i), false, vec2<bool>(true, false))), ~vec4<u32>(u_input.a.x, 1u, 4294967295u, 4294967295u)))), func_2(_wgslsmith_clamp_u32(abs(u_input.a.x), u_input.a.x, u_input.a.x), func_2(33529u, func_5(_wgslsmith_mult_u32(41108u, u_input.a.x), Struct_3(false, Struct_1(vec2<bool>(true, false), -1434f, vec4<i32>(-2147483647i, -1i, 1i, 15001i), true, vec2<bool>(false, true)), vec3<u32>(71230u, u_input.a.x, u_input.a.x), Struct_1(vec2<bool>(false, false), -888f, vec4<i32>(1i, -2147483647i, -1i, 0i), true, vec2<bool>(false, false)))).c, !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(-1215f, var_0), firstLeadingBit(vec4<i32>(-50281i, 0i, -16224i, 2141i)), true, vec2<bool>(true, true))).b.c, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, true)), vec4<bool>(true, select(false, true, false), true, true), vec4<bool>(true, true, true, true)), func_5(select(func_2(u_input.a.x, vec4<i32>(-36202i, -1i, 2070i, 1i), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(false, true), var_0, vec4<i32>(2147483647i, 14273i, -1i, 2147483647i), true, vec2<bool>(true, true))).c.x, u_input.a.x, u_input.a.x < u_input.a.x), Struct_3(true, Struct_1(vec2<bool>(true, true), var_0, vec4<i32>(499i, 11327i, -1i, 2147483647i), false, vec2<bool>(false, false)), func_3(Struct_1(vec2<bool>(false, false), var_0, vec4<i32>(-4059i, 2147483647i, 2147483647i, -72707i), true, vec2<bool>(false, true)), 0i, Struct_2(var_0, vec2<f32>(var_0, -837f)), -1i).zwx, Struct_1(vec2<bool>(false, true), var_0, vec4<i32>(32610i, -12400i, -1i, 45867i), false, vec2<bool>(false, false))))).c, func_5(select(u_input.a.x, u_input.a.x >> (1u % 32u), true) & 0u, func_2(1u, reverseBits(select(vec4<i32>(65539i, -2147483647i, 2147483647i, 29890i), vec4<i32>(0i, -1i, -3231i, 0i), false)), vec4<bool>(false, true, select(false, true, false), true), func_5(~1u, Struct_3(false, Struct_1(vec2<bool>(false, false), var_0, vec4<i32>(-2147483647i, -2147483647i, 27123i, 18545i), false, vec2<bool>(false, true)), vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_1(vec2<bool>(true, false), 594f, vec4<i32>(-38446i, 32722i, 0i, -1i), true, vec2<bool>(false, true)))))));
    let var_3 = Struct_3(var_2.a, Struct_1(vec2<bool>(u_input.a.x >= abs(4294967295u), !var_2.b.e.x), var_0, abs(vec4<i32>(func_2(65244u, vec4<i32>(-33446i, var_2.b.c.x, -62418i, var_2.d.c.x), vec4<bool>(var_2.d.d, var_2.a, false, true), Struct_1(var_2.d.a, -423f, vec4<i32>(var_2.d.c.x, var_2.b.c.x, -1i, 2955i), var_2.b.d, vec2<bool>(var_2.a, var_2.a))).d.c.x, var_2.b.c.x, 63019i, var_2.d.c.x)), (var_2.d.c.x > ~var_2.b.c.x) | true, !var_2.d.a), vec3<u32>(abs(_wgslsmith_div_u32(67776u, 6619u)) >> (firstLeadingBit(_wgslsmith_mult_u32(var_2.c.x, u_input.a.x)) % 32u), 72054u, ~0u), func_4(Struct_2(_wgslsmith_f_op_f32(sign(var_2.b.b)), vec2<f32>(var_2.b.b, var_2.b.b)), Struct_5(Struct_1(select(var_2.d.a, var_2.d.e, var_2.b.a), var_0, var_2.d.c, 12467u >= var_2.c.x, vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0, -636f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1432f, var_2.b.b))), Struct_2(1319f, vec2<f32>(-728f, var_2.b.b)), func_2(~u_input.a.x, ~vec4<i32>(var_2.d.c.x, var_2.d.c.x, 27739i, 6301i), vec4<bool>(false, false, var_2.d.a.x, true), var_2.d).b, Struct_4(41661i | var_2.d.c.x, max(vec4<u32>(var_2.c.x, var_2.c.x, u_input.a.x, 54927u), u_input.a), all(vec4<bool>(var_2.d.d, var_2.b.a.x, var_2.d.e.x, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b, var_0, -116f, -1000f) - vec4<f32>(var_0, -694f, var_2.b.b, var_0)), true)), func_2(~1u, _wgslsmith_add_vec4_i32(var_2.d.c | var_2.b.c, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_2.d.c.x, 35917i, var_2.b.c.x), vec4<i32>(16311i, -1i, 13560i, -1i))), select(vec4<bool>(true, true, var_2.a, false), vec4<bool>(var_2.d.a.x, true, false, var_2.b.d), select(vec4<bool>(true, var_2.b.e.x, false, var_2.d.a.x), vec4<bool>(var_2.a, true, var_2.a, var_2.d.d), vec4<bool>(var_2.a, false, var_2.b.e.x, false))), Struct_1(vec2<bool>(true, var_2.a), _wgslsmith_f_op_f32(-var_2.d.b), firstTrailingBit(vec4<i32>(0i, var_2.b.c.x, -49221i, 0i)), select(var_2.b.d, var_2.b.a.x, true), vec2<bool>(true, var_2.a))), max(vec4<u32>(_wgslsmith_mod_u32(27128u, 1u), select(4390u, var_2.c.x, var_2.b.d), _wgslsmith_mult_u32(22566u, u_input.a.x), 1u), u_input.a)));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(386f, -727f, 684f, var_2.d.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1852f, 314f, var_2.d.b) - vec4<f32>(167f, -1375f, var_3.d.b, -2712f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1595f, -1725f, _wgslsmith_f_op_f32(654f + var_2.b.b), 1918f), vec4<f32>(_wgslsmith_f_op_f32(-806f - 351f), var_3.d.b, _wgslsmith_div_f32(var_0, var_2.d.b), _wgslsmith_div_f32(var_3.b.b, var_0)), true)))));
}

