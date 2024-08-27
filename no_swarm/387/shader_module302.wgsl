struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = select(vec4<bool>(any(arg_0), global0.c, global0.c, true), !(!vec4<bool>(true, global0.d.x > global0.d.x, global0.c, true)), !select(vec4<bool>(!global0.c, any(arg_0), false, false), !select(vec4<bool>(global0.c, false, true, true), vec4<bool>(arg_0.x, false, arg_0.x, global0.c), true), select(vec4<bool>(arg_0.x, global0.c, global0.c, false), vec4<bool>(arg_0.x, false, arg_0.x, false), global0.c)));
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(3259u, u_input.b))), ~vec2<u32>(22168u, 4294967295u))) | select(min(vec2<u32>(u_input.b, 0u) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.b) | ~vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), ~1u), ~(u_input.b >> (u_input.b % 32u))), global0.c == true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.x, 774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1129f))), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(-global0.a.x))), all(arg_0.yx));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(global0.a.x + var_2.a.x), -739f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f - global0.a.x))) + _wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(310f, -200f, 733f, global0.a.x))))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_2.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_3, vec4<f32>(-792f, 782f, var_2.a.x, 1000f)), var_2.a)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2488f, var_3.x, 664f, var_2.a.x))))), (u_input.b <= 10994u) || any(!(!arg_0)));
    return _wgslsmith_div_i32(~(-u_input.a), -34769i);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(5752i, u_input.c.x, -(u_input.a & global0.d.x)) | vec3<i32>(reverseBits(func_3(vec3<bool>(global0.c, true, arg_1.b))), -43282i, -24122i), global0.d);
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a.ywx)))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global0.b, reverseBits(vec4<i32>(u_input.c.x, 24615i, -1i, global0.b.x) | vec4<i32>(arg_2, arg_2, global0.d.x, -53265i))), max(~global0.b, ~abs(u_input.c))), false, vec3<i32>(min(_wgslsmith_sub_i32(i32(-1i) * -7527i, abs(-2147483647i)), -3600i & (global0.b.x << (52642u % 32u))), reverseBits(-1i), arg_2));
    var_0 = func_3(select(select(vec3<bool>(all(vec2<bool>(false, true)), true | global0.c, all(vec2<bool>(global0.c, true))), select(vec3<bool>(true, global0.c, arg_1.b), !vec3<bool>(global0.c, true, global0.c), arg_1.b == false), global0.c), !vec3<bool>(any(vec3<bool>(false, global0.c, global0.c)), all(vec2<bool>(arg_1.b, false)), u_input.b != u_input.b), !(!vec3<bool>(false, false, global0.c))));
    var_0 = -max(-1i, 1i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.d.zz, u_input.c.xw), u_input.c.x));
    var_0 = -u_input.c.x;
    return abs(u_input.c.wwy);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_5 {
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-584f * arg_3.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)))));
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    global0 = Struct_3(global0.a, vec4<i32>(global0.d.x << (28127u % 32u), -2147483647i, global0.b.x, -global0.b.x), all(!(!select(vec2<bool>(true, true), vec2<bool>(global0.c, global0.c), vec2<bool>(true, false)))), (abs(vec3<i32>(-38875i, u_input.a, u_input.c.x) >> (vec3<u32>(u_input.b, 0u, 0u) % vec3<u32>(32u))) << (~select(vec3<u32>(18151u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), true) % vec3<u32>(32u))) | vec3<i32>(func_3(vec3<bool>(false, global0.c, global0.c)), u_input.a, u_input.a));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.x, -489f, 762f)))), vec3<f32>(630f, _wgslsmith_f_op_f32(-475f + global0.a.x), -1000f), vec3<bool>(false && global0.c, select(global0.c, false, false), global0.c && global0.c)))), global0.b >> (~vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), 37957u, 25456u >> (u_input.b % 32u), u_input.b & u_input.b) % vec4<u32>(32u)), false, -vec3<i32>((1i | u_input.c.x) >> (1u % 32u), 7136i, global0.d.x));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = func_5(func_4(Struct_2(Struct_1(vec4<f32>(-1105f, global0.a.x, -1000f, global0.a.x), true), -max(global0.b.wzw, vec3<i32>(global0.b.x, 32457i, 1i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.d.x, global0.b.x, 16051i, 3712i), u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -346f, global0.a.x, global0.a.x) + vec4<f32>(global0.a.x, -708f, global0.a.x, 1131f)), true)), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.x, 1462f, global0.a.x))))), u_input.c, true, _wgslsmith_sub_vec3_i32(~global0.d, global0.d)), arg_0, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(385f, global0.a.x, global0.a.x) + vec3<f32>(global0.a.x, global0.a.x, -169f)) - vec3<f32>(-1153f, global0.a.x, 889f)), ~vec4<i32>(0i, -1i, -20782i, 0i), true, func_2(global0.a.x, Struct_1(vec4<f32>(-941f, global0.a.x, 1852f, global0.a.x), arg_0.x), 2147483647i >> (u_input.b % 32u)))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), 1000f, 853f, global0.a.x))), _wgslsmith_mult_i32((u_input.c.x >> (u_input.b % 32u)) ^ -global0.d.x, u_input.c.x) <= _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(-u_input.c.x, 2147483647i)));
    global0 = func_5(Struct_5(var_0.a.x));
    global0 = func_5(func_4(Struct_2(Struct_1(vec4<f32>(global0.a.x, global0.a.x, 797f, global0.a.x), true), vec3<i32>(-19068i, _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(-23249i, u_input.c.x, u_input.c.x, global0.d.x)), global0.b.x << (u_input.b % 32u)), ~(global0.b >> (vec4<u32>(73969u, u_input.b, 0u, u_input.b) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, global0.a.x, global0.a.x, 334f) - var_0.a), all(arg_0))), func_5(Struct_5(_wgslsmith_f_op_f32(-global0.a.x))), !(!vec3<bool>(arg_0.x, var_0.b, var_0.b)), func_5(Struct_5(-1166f))));
    let var_1 = all(select(vec4<bool>(true, global0.c, false, all(select(vec4<bool>(global0.c, true, arg_0.x, var_0.b), vec4<bool>(global0.c, true, var_0.b, true), vec4<bool>(global0.c, var_0.b, true, var_0.b)))), !vec4<bool>(!var_0.b, u_input.a > u_input.a, var_0.b, true), vec4<bool>(u_input.b <= ~1u, true & (global0.d.x == global0.d.x), arg_0.x, ~37145u >= u_input.b)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a))))))), false);
}

fn func_6(arg_0: Struct_2) -> Struct_5 {
    var var_0 = func_1(vec3<bool>(arg_0.d.b, ((u_input.b & u_input.b) | u_input.b) == (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 47722u), vec3<u32>(4294967295u, 25430u, 37181u)) >> ((u_input.b & 40869u) % 32u)), true));
    global0 = func_5(Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2418f)), -660f))));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(arg_0.a.a.zxz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a.wxx)))), ~(-(vec4<i32>(67620i, 26328i, arg_0.b.x, u_input.c.x) >> (vec4<u32>(u_input.b, u_input.b, 83225u, u_input.b) % vec4<u32>(32u)))), global0.a.x <= -1574f, ~firstTrailingBit(global0.d ^ u_input.c.yxw)), (~max(vec4<i32>(arg_0.b.x, global0.d.x, 0i, -40731i), vec4<i32>(arg_0.b.x, arg_0.b.x, -1i, u_input.c.x)) | firstLeadingBit(global0.b)) | global0.b);
    var_0 = Struct_1(vec4<f32>(-719f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 253f)))), global0.a.x, var_0.a.x), func_1(select(!select(vec3<bool>(false, arg_0.a.b, var_0.b), vec3<bool>(false, global0.c, false), vec3<bool>(false, global0.c, true)), !select(vec3<bool>(true, global0.c, global0.c), vec3<bool>(global0.c, arg_0.a.b, global0.c), vec3<bool>(var_0.b, global0.c, false)), vec3<bool>(all(vec2<bool>(false, false)), func_5(Struct_5(2017f)).c, false))).b);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -687f);
    return func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.a + var_0.a)), 2147483647i >= arg_0.c.x), global0.b.wxw, select((vec4<i32>(var_1.a.b.x, 0i, var_1.b.x, arg_0.c.x) | u_input.c) | ~global0.b, func_5(func_4(arg_0, Struct_3(var_0.a.wzw, vec4<i32>(global0.d.x, var_1.b.x, global0.d.x, 11867i), false, global0.d), vec3<bool>(true, false, true), var_1.a)).b, global0.c), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_2, arg_0.d.a.x, arg_0.d.a.x, -739f))), var_0.a.x >= _wgslsmith_f_op_f32(exp2(arg_0.d.a.x)))), func_5(func_4(arg_0, func_5(Struct_5(-2035f)), !(!vec3<bool>(arg_0.a.b, arg_0.d.b, var_1.a.c)), var_1.a)), !select(!vec3<bool>(false, var_0.b, true), !select(vec3<bool>(var_0.b, global0.c, global0.c), vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, arg_0.d.b, true)), true), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + -512f);
    var var_1 = func_6(Struct_2(func_1(select(!vec3<bool>(false, global0.c, false), select(vec3<bool>(true, global0.c, false), vec3<bool>(false, true, global0.c), true), vec3<bool>(true, false, global0.c))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(global0.d), (global0.d & u_input.c.xzx) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 0u, 63073u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(select(u_input.c.xxz, vec3<i32>(-1i, global0.d.x, u_input.a), global0.c), select(global0.b.wzz, u_input.c.zyx, vec3<bool>(global0.c, global0.c, true)))), ~(-u_input.c), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(390f)), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec3<bool>(global0.c, global0.c, global0.c)))));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b, ~countOneBits(_wgslsmith_mult_u32(u_input.b, u_input.b))), ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(u_input.b, u_input.b)) << (reverseBits(vec2<u32>(4294967295u, ~u_input.b)) % vec2<u32>(32u)));
    let var_3 = vec2<u32>(28477u, _wgslsmith_div_u32(var_2.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(var_2), var_2 & vec2<u32>(var_2.x, var_2.x)))) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u));
    let var_4 = func_6(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a) - vec4<f32>(316f, var_1.a, var_1.a, -768f)), any(vec3<bool>(false, global0.c, global0.c))), -vec3<i32>(-2147483647i, -44785i, 15300i) ^ vec3<i32>(-u_input.a, _wgslsmith_clamp_i32(-11940i, u_input.a, global0.b.x), global0.d.x & global0.d.x), u_input.c, func_1(vec3<bool>(true, global0.c, func_1(vec3<bool>(true, global0.c, true)).b))));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, var_3.x, 4294967295u, ~1u), vec4<u32>(var_2.x, 4294967295u, var_3.x << ((31291u | var_2.x) % 32u), 106556u)), _wgslsmith_div_vec4_u32(min(firstTrailingBit(vec4<u32>(34325u, var_3.x, 0u, u_input.b) & vec4<u32>(u_input.b, 16529u, var_3.x, 53873u)), vec4<u32>(1u >> (var_2.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, u_input.b), vec3<u32>(1u, var_3.x, 40872u)), var_3.x & 1u, var_2.x)), ~select(~vec4<u32>(16127u, u_input.b, u_input.b, var_3.x), firstLeadingBit(vec4<u32>(var_2.x, var_2.x, var_3.x, u_input.b)), !vec4<bool>(var_5, global0.c, true, global0.c))), _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, var_3.x, 44082u, var_2.x), vec4<u32>(29522u, var_2.x, 1u, u_input.b) ^ vec4<u32>(u_input.b, 0u, var_2.x, 0u))), vec4<u32>(4294967295u, abs(abs(var_2.x)), var_3.x, 1u)));
}

