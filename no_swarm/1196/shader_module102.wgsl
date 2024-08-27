struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(669f, _wgslsmith_f_op_f32(-334f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1000f);
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, -1000f)), var_0.x, _wgslsmith_f_op_f32(-400f - var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -444f, var_0.x) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, -332f)), var_0.x, _wgslsmith_f_op_f32(trunc(-460f)))))), true));
    let var_1 = vec4<f32>(-455f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2400f - _wgslsmith_f_op_f32(select(-769f, var_0.x, false))), -129f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 855f) + _wgslsmith_f_op_f32(var_0.x + -510f))), _wgslsmith_f_op_f32(277f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(f32(-1f) * -553f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -344f) + _wgslsmith_f_op_f32(exp2(1f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-604f * var_1.x) + _wgslsmith_f_op_f32(-588f * -1060f)), -485f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + -179f), _wgslsmith_f_op_f32(-474f + var_0.x), false)), var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -557f, 487f, -1199f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1162f) - _wgslsmith_f_op_f32(855f + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(425f, var_1.x)), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1908f - -516f)))), !(u_input.c != -1i)));
    let var_3 = -2576f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1141f, 2784f)), var_2.x));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> vec4<f32> {
    var var_0 = min(-2147483647i, arg_1.a.a);
    let var_1 = any(vec3<bool>(!(!arg_1.d.d), false | arg_1.b.d, true));
    let var_2 = select(!(!select(!vec2<bool>(arg_1.a.d, arg_0.b.b.c.d), !vec2<bool>(arg_0.b.b.c.d, arg_1.d.d), select(vec2<bool>(false, var_1), vec2<bool>(arg_1.d.d, false), vec2<bool>(var_1, true)))), vec2<bool>(false, (arg_0.c & u_input.b) < 2147483647i), vec2<bool>(arg_1.b.d, true));
    var_0 = 1i;
    let var_3 = false;
    return vec4<f32>(822f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, arg_1.c.x)), _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~_wgslsmith_sub_u32(abs(~0u), ~_wgslsmith_mult_u32(u_input.e.x, 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_5(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), Struct_4(u_input.e.x, Struct_2(Struct_1(u_input.c, vec3<u32>(var_0, 0u, u_input.e.x), vec3<u32>(var_0, var_0, var_0), true), -vec2<i32>(1i, u_input.b), Struct_1(41750i, u_input.e, u_input.e, false))), u_input.b, -741f), Struct_3(Struct_1(38313i, ~vec3<u32>(u_input.e.x, u_input.e.x, 1u), u_input.e, any(vec2<bool>(false, false))), Struct_1(_wgslsmith_add_i32(abs(u_input.b), u_input.a), reverseBits(max(u_input.e, vec3<u32>(var_0, u_input.e.x, u_input.e.x))), vec3<u32>(~4294967295u, firstTrailingBit(var_0), u_input.e.x), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -872f, -556f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1200f, 1013f) + vec3<f32>(1111f, -173f, 1449f)))), Struct_1(firstLeadingBit(-42460i), u_input.e, vec3<u32>(var_0, var_0, var_0) & _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.e.x, 51791u), vec3<u32>(var_0, u_input.e.x, u_input.e.x), vec3<u32>(4294967295u, 34914u, u_input.e.x)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))))), -370f, var_0));
    var var_2 = ~(u_input.b << (u_input.e.x % 32u));
    var_2 = -u_input.a;
    var_2 = 2147483647i;
    return Struct_2(Struct_1(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, 2147483647i), vec4<i32>(u_input.b, -44209i, u_input.c, 1i))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0, var_0 | 33424u), vec3<u32>(5460u, firstTrailingBit(var_0), ~var_0)), vec3<u32>(52816u, ~22179u, 26088u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), vec2<i32>(_wgslsmith_clamp_i32(-1i, 1i, u_input.a >> (reverseBits(var_0) % 32u)), firstLeadingBit(1i)), Struct_1(-(~u_input.d & -2147483647i), vec3<u32>(_wgslsmith_mod_u32(u_input.e.x << (u_input.e.x % 32u), 1u), ~u_input.e.x | 1u, var_0), vec3<u32>(var_0, var_0 >> (91802u % 32u), 20444u), !(!all(vec3<bool>(false, false, true)))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_mult_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 14621u, 4294967295u, 4294967295u) ^ vec4<u32>(1u, u_input.e.x, 0u, var_0.c.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 59417u, var_0.c.c.x, var_0.c.b.x), vec4<u32>(22316u, 0u, 57477u, 23042u), vec4<u32>(u_input.e.x, 6014u, u_input.e.x, var_0.a.c.x))) << (abs(vec4<u32>(1u, 1u, 1u, 4294967295u)) % vec4<u32>(32u))) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 57014u, 4294967295u, 1u) ^ vec4<u32>(var_0.c.c.x, 43760u, var_0.c.c.x, 54416u), _wgslsmith_clamp_vec4_u32(vec4<u32>(27334u, var_0.c.b.x, 4294967295u, u_input.e.x), vec4<u32>(11726u, 0u, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 1u))) | ~(~vec4<u32>(u_input.e.x, var_0.c.b.x, u_input.e.x, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(u_input.e.x, 7677u, u_input.e.x, 1u)), ~firstLeadingBit(vec4<u32>(4294967295u, 18575u, 1u, 0u)), vec4<u32>(var_0.c.c.x, u_input.e.x << (var_0.a.c.x % 32u), u_input.e.x ^ 4294967295u, _wgslsmith_mult_u32(1u, 18120u))), vec4<u32>(4294967295u, 4294967295u, 1u, func_2().a.b.x)));
    var var_2 = -301f;
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(39169i, var_0.b.x, 2147483647i) | vec3<i32>(12132i, 1i, u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(-33681i, var_0.a.a, 33729i), vec3<i32>(var_0.c.a, u_input.c, var_0.a.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -2699i, 2147483647i), ~vec3<i32>(1i, var_0.c.a, var_0.a.a))), vec3<i32>(-_wgslsmith_add_i32(35391i, u_input.d), abs(13825i), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.b.x, u_input.d, u_input.b), vec4<i32>(u_input.b, var_0.a.a, var_0.b.x, 35563i))))), vec3<i32>(u_input.c, 1i, select(-1i, 1i, !var_0.c.d)));
    var var_4 = var_0.a.d;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = Struct_1(-39172i, u_input.e, vec3<u32>(firstLeadingBit(4294967295u), ~4294967295u, 4294967295u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, abs(u_input.e.x), u_input.e.x), u_input.e) % vec3<u32>(32u)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)) | !(1u > max(u_input.e.x, u_input.e.x)));
    var var_2 = Struct_4(var_1.b.x, func_1());
    var var_3 = Struct_4(var_2.b.a.b.x, func_2());
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_5(-441f, Struct_4(u_input.e.x, var_3.b), u_input.d, -363f), Struct_3(Struct_1(var_0, var_2.b.c.b, var_2.b.a.c, false), Struct_1(30747i, var_2.b.c.c, u_input.e, false), vec3<f32>(691f, -163f, -953f), Struct_1(-1i, var_3.b.c.b, vec3<u32>(58721u, u_input.e.x, 55375u), var_2.b.a.d)), -1604f, 4294967295u)).zzz)))));
    var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(147f, -498f, var_4.x), vec3<f32>(481f, 452f, 129f))) * _wgslsmith_div_vec3_f32(vec3<f32>(218f, -1000f, var_4.x), vec3<f32>(171f, 310f, 359f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 267f, 1359f))) + vec3<f32>(-1103f, -299f, 1f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1718f, 790f, 222f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1449f, var_4.x, var_4.x) * vec3<f32>(375f, var_4.x, var_4.x))), vec3<f32>(_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(var_4.x - 105f)), _wgslsmith_f_op_f32(-1423f * var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))));
    let var_5 = var_4.x;
    let var_6 = _wgslsmith_f_op_f32(trunc(-1027f));
    var var_7 = select(select(select(!(!vec2<bool>(false, var_2.b.c.d)), vec2<bool>(true, var_4.x < 1000f), vec2<bool>(true, true)), vec2<bool>(true, true), false), select(select(vec2<bool>(true || var_2.b.a.d, func_1().a.d), select(!vec2<bool>(var_2.b.a.d, true), select(vec2<bool>(var_3.b.a.d, true), vec2<bool>(true, var_2.b.a.d), vec2<bool>(var_1.d, var_2.b.c.d)), vec2<bool>(true, false)), !var_1.d), select(vec2<bool>(1i <= u_input.b, var_2.b.c.a > var_1.a), select(vec2<bool>(var_1.d, var_3.b.a.d), vec2<bool>(var_1.d, var_2.b.c.d), vec2<bool>(true, true)), !(!vec2<bool>(true, var_2.b.a.d))), !select(vec2<bool>(true, var_1.d), vec2<bool>(true, false), var_3.b.c.d)), vec2<bool>(all(vec3<bool>(var_2.b.c.d, true, false)), var_2.b.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().c.c.x, vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_2.b.c.a, 1i, u_input.d), vec4<i32>(0i, var_3.b.c.a, var_0, 27791i)) | var_3.b.b.x, max(firstLeadingBit(-45083i), countOneBits(var_2.b.b.x))), firstLeadingBit(var_1.a), max(u_input.a, ~(-1i)), -max(~(-20186i), _wgslsmith_clamp_i32(2147483647i, -19582i, -2147483647i))), (_wgslsmith_dot_vec4_i32(~vec4<i32>(var_3.b.b.x, var_2.b.a.a, 0i, var_3.b.c.a), vec4<i32>(var_0, var_3.b.b.x, 0i, u_input.d)) | u_input.a) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.e, ~vec3<u32>(0u, 0u, 1u)), ~_wgslsmith_div_u32(1u, 131965u)) % 32u), _wgslsmith_mod_u32(var_3.b.c.b.x, var_3.b.a.b.x));
}

