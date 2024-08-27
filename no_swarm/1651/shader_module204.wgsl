struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-546f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-184f, -148f)) + _wgslsmith_f_op_f32(-669f * 397f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1122f)) - _wgslsmith_f_op_f32(sign(1201f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, -849f, 260f, var_0.x)))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 568f, var_0.x, 709f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -416f, -261f, var_0.x) + vec4<f32>(var_0.x, -353f, -1313f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1355f, var_0.x, var_0.x, -1229f)))));
    var var_2 = Struct_3(Struct_1(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, u_input.c), countOneBits(u_input.c)), select(u_input.c, 40411u, true) ^ _wgslsmith_mult_u32(u_input.c, 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, 671f)), _wgslsmith_f_op_f32(var_0.x * var_0.x), false)))), !vec3<bool>(any(vec2<bool>(false, false)), true, 2147483647i <= u_input.b.x)), any(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(var_0, vec2<f32>(var_0.x, var_0.x))))) + vec2<f32>(205f, -123f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(-var_0))), _wgslsmith_f_op_vec2_f32(var_1.wz + _wgslsmith_f_op_vec2_f32(-var_1.zx)), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(true, false, false, false))))), all(vec2<bool>(any(vec3<bool>(true, false, false)), false)))), Struct_2(Struct_1(vec3<u32>(reverseBits(48178u), reverseBits(u_input.c), u_input.c), -1405f, vec3<bool>(true, true, true)), min(~(vec3<u32>(1u, 2025u, u_input.c) | vec3<u32>(39193u, u_input.c, u_input.c)), vec3<u32>(u_input.c, _wgslsmith_sub_u32(18155u, u_input.c), u_input.c)), Struct_1(vec3<u32>(62955u, ~27975u, select(u_input.c, 4294967295u, true)), var_1.x, vec3<bool>(true, any(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, false)))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 76377u, u_input.c), vec3<u32>(u_input.c, u_input.c, 48951u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), vec3<bool>(true, u_input.c < 8680u, true)), Struct_1(vec3<u32>(~0u, 22357u, _wgslsmith_sub_u32(u_input.c, 0u)), _wgslsmith_f_op_f32(-var_1.x), vec3<bool>(true, var_0.x <= var_1.x, any(vec2<bool>(true, false))))));
    var_2 = Struct_3(Struct_1(var_2.e.d.a, _wgslsmith_f_op_f32(abs(var_0.x)), var_2.a.c), ~(u_input.a.x ^ -1i) <= ~1i, var_2.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2865f, 1000f) - vec2<f32>(-742f, var_2.a.b)))))), Struct_2(Struct_1(~(~var_2.e.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - var_1.x)), vec3<bool>(all(var_2.e.e.c.xz), all(vec4<bool>(false, false, false, false)), 550f <= var_1.x)), abs(vec3<u32>(1u, abs(20847u), u_input.c)), var_2.a, Struct_1(~vec3<u32>(33485u, var_2.a.a.x, var_2.e.c.a.x), -680f, vec3<bool>(any(vec3<bool>(false, false, var_2.b)), true, var_2.e.a.c.x)), var_2.a));
    let var_3 = Struct_1(max(~reverseBits(vec3<u32>(1u, 42830u, var_2.e.e.a.x)) ^ var_2.a.a, vec3<u32>(59400u, reverseBits(_wgslsmith_clamp_u32(u_input.c, var_2.e.e.a.x, var_2.a.a.x)), ~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 548f) * var_1.x), vec3<bool>(any(!(!var_2.e.c.c)), !(!(var_2.b || false)), true));
    return vec3<bool>(0i >= _wgslsmith_dot_vec2_i32(-(~u_input.b), abs(vec2<i32>(-2147483647i, u_input.b.x))), false, all(select(vec4<bool>(all(vec4<bool>(false, false, var_2.a.c.x, true)), any(var_2.e.a.c.zx), true, true), select(!vec4<bool>(var_3.c.x, var_3.c.x, false, true), vec4<bool>(false, var_2.e.d.c.x, false, true), all(vec2<bool>(true, var_2.a.c.x))), _wgslsmith_f_op_f32(min(329f, -488f)) >= _wgslsmith_f_op_f32(ceil(1199f)))));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(arg_3, vec3<u32>(arg_3.a.x, _wgslsmith_add_u32(~arg_3.a.x, arg_3.a.x), 68542u), arg_3, arg_3, Struct_1(arg_3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1717f)), _wgslsmith_f_op_f32(f32(-1f) * -1016f))), vec3<bool>(_wgslsmith_div_i32(arg_1.x, 0i) == (arg_0 << (1u % 32u)), arg_3.c.x, _wgslsmith_f_op_f32(226f - arg_3.b) > _wgslsmith_f_op_f32(select(2550f, arg_3.b, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, -1032f, arg_3.b, -567f)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(-arg_3.b), 106f, var_0.d.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(229f, 949f, -1000f, -568f) - vec4<f32>(arg_3.b, -528f, var_0.e.b, var_0.a.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, 113f, var_0.c.b, arg_3.b) * vec4<f32>(arg_3.b, -1052f, var_0.d.b, var_0.a.b)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -373f, 104f, var_0.d.b)))))))));
    let var_2 = ~_wgslsmith_mult_vec4_i32(-arg_1, arg_1);
    let var_3 = Struct_3(var_0.d, arg_3.c.x, arg_0, var_1.zw, var_0);
    return var_3.e.c.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = arg_2.c;
    let var_1 = ~u_input.c;
    let var_2 = false;
    var var_3 = ~2147483647i;
    var var_4 = func_4(-_wgslsmith_dot_vec4_i32(~select(vec4<i32>(arg_2.c, var_0, -2147483647i, 15985i), vec4<i32>(-1i, var_0, 28172i, -2147483647i), vec4<bool>(var_2, var_2, var_2, true)), vec4<i32>(0i, arg_2.c, 2147483647i, _wgslsmith_add_i32(-1i, -2147483647i))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(-2147483647i, arg_2.c, arg_2.c, -3720i)), vec4<i32>(~12420i, abs(var_0), _wgslsmith_sub_i32(var_0, u_input.a.x), 1287i)), vec4<i32>(_wgslsmith_sub_i32(~arg_2.c, var_0), 35243i, (u_input.b.x << (0u % 32u)) ^ ~u_input.b.x, 2147483647i)), vec3<u32>(~(abs(var_1) | ~var_1), u_input.c | u_input.c, u_input.c), Struct_1(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 15979u, 1u)), vec3<u32>(u_input.c << (arg_2.e.b.x % 32u), _wgslsmith_sub_u32(4294967295u, var_1), 0u)), arg_1, !func_3()));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.a.a.x, 23536u), vec2<u32>(arg_2.e.e.a.x, var_1)) >> (arg_2.e.c.a.yy % vec2<u32>(32u)), arg_2.e.d.a.xz);
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(865f)) * _wgslsmith_f_op_f32(-848f + 1035f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2260f)) * 1f);
    var_0 = 814f;
    let var_2 = Struct_3(Struct_1(~vec3<u32>(~u_input.c, 4294967295u, ~24673u), -705f, vec3<bool>(false, all(vec4<bool>(true, true, true, true)), false)), false, _wgslsmith_dot_vec2_i32(vec2<i32>(max(1i, countOneBits(315i)), u_input.a.x ^ -23609i), vec2<i32>(~u_input.b.x ^ ~(-17007i), u_input.a.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1849f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1)))), 2839f), Struct_2(Struct_1(abs(vec3<u32>(arg_0.x, 0u, 75209u)), -1062f, vec3<bool>(true, u_input.c <= 0u, u_input.a.x < u_input.b.x)), vec3<u32>(arg_0.x, ~_wgslsmith_sub_u32(u_input.c, u_input.c), arg_0.x ^ u_input.c), Struct_1(~(vec3<u32>(arg_0.x, 48u, 1u) & vec3<u32>(105737u, u_input.c, arg_0.x)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(round(var_1))), func_3()), Struct_1(~select(vec3<u32>(arg_0.x, 0u, arg_0.x), vec3<u32>(u_input.c, 1u, u_input.c), vec3<bool>(true, true, false)), var_1, vec3<bool>(true, true, true)), Struct_1(~(vec3<u32>(60520u, 23696u, u_input.c) >> (vec3<u32>(arg_0.x, 63922u, arg_0.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(1934f)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))));
    var_0 = _wgslsmith_f_op_f32(max(-882f, var_1));
    return var_2.e.d;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = all(select(arg_1.e.c, !(!arg_1.e.c), true));
    let var_1 = var_0;
    let var_2 = Struct_2(func_5(vec2<u32>(func_2(vec3<f32>(937f, arg_1.c.b, arg_1.a.b), arg_1.c.b, Struct_3(arg_1.a, var_0, u_input.b.x, vec2<f32>(arg_1.d.b, arg_1.e.b), arg_1)), ~arg_1.e.a.x) >> (arg_1.d.a.xx % vec2<u32>(32u))), vec3<u32>(0u, ~0u, 4294967295u), arg_1.e, arg_1.a, arg_1.d);
    let var_3 = Struct_3(var_2.c, false, -3902i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -331f), 1295f), Struct_2(Struct_1(vec3<u32>(~46035u, _wgslsmith_mod_u32(4294967295u, arg_1.d.a.x), var_2.a.a.x), -158f, var_2.a.c), var_2.e.a, Struct_1(_wgslsmith_div_vec3_u32(var_2.c.a | vec3<u32>(arg_1.e.a.x, 73499u, u_input.c), ~var_2.e.a), _wgslsmith_f_op_f32(arg_1.e.b * _wgslsmith_f_op_f32(floor(-763f))), vec3<bool>(func_5(arg_1.b.yz).c.x, true, all(arg_1.e.c.yy))), var_2.c, func_5(~_wgslsmith_clamp_vec2_u32(arg_1.c.a.zz, vec2<u32>(u_input.c, arg_1.e.a.x), vec2<u32>(u_input.c, arg_1.e.a.x)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(896f, var_3.d.x, _wgslsmith_f_op_f32(var_3.a.b + var_3.e.a.b)))));
    return Struct_1(arg_1.a.a, arg_1.d.b, var_2.d.c);
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(func_1(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-1i, 0i, u_input.b.x, arg_3.c)), Struct_2(func_5(select(arg_3.e.e.a.xy, arg_3.a.a.zx, arg_3.b)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(39980u, arg_3.a.a.x, u_input.c), arg_3.e.b), Struct_1(~arg_3.e.b, _wgslsmith_f_op_f32(-arg_2), arg_3.e.d.c), arg_3.e.a, arg_3.e.d), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, arg_3.c), -1792i)), abs(reverseBits(func_5(vec2<u32>(36652u, 3746u)).a)), Struct_1(_wgslsmith_add_vec3_u32(arg_3.e.e.a, vec3<u32>(63049u, u_input.c, arg_3.e.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + arg_0), !(!(!arg_3.a.c))), func_1(~vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.b.x, arg_3.c), 1i << (u_input.c % 32u), arg_3.c), arg_3.e, ~_wgslsmith_sub_i32(~27267i, u_input.a.x | 2147483647i)), func_5(abs(arg_3.a.a.yz)));
    var var_1 = Struct_1(~(~arg_3.e.e.a) & arg_3.e.a.a, _wgslsmith_f_op_f32(-arg_2), func_5(arg_3.e.c.a.xz).c);
    var var_2 = arg_3;
    var var_3 = vec3<i32>(55009i, firstTrailingBit(-1i), max(67695i, countOneBits(arg_3.c & -1i))) ^ vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, arg_3.c, -43902i) | _wgslsmith_clamp_i32(1i, var_2.c, firstTrailingBit(2147483647i)), arg_3.c, -arg_3.c);
    var var_4 = Struct_1(vec3<u32>(25538u, 0u, reverseBits(firstTrailingBit(1u))), _wgslsmith_div_f32(func_5(~vec2<u32>(38106u, var_1.a.x)).b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b)))), !func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, var_3.x, var_2.c), vec4<i32>(u_input.a.x, var_3.x, var_3.x, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, 1i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, var_2.c))), Struct_2(func_1(vec4<i32>(var_2.c, 0i, -6674i, var_3.x), Struct_2(var_2.e.d, vec3<u32>(arg_3.e.a.a.x, 3461u, var_1.a.x), Struct_1(vec3<u32>(arg_3.e.b.x, arg_3.e.d.a.x, var_1.a.x), arg_2, arg_3.a.c), var_2.a, var_2.e.a), -10524i), _wgslsmith_add_vec3_u32(var_2.a.a, var_1.a), func_1(vec4<i32>(u_input.a.x, var_2.c, u_input.a.x, 2147483647i), arg_3.e, arg_3.c), arg_3.a, Struct_1(var_1.a, -478f, vec3<bool>(true, true, false))), -(var_3.x ^ 15929i)).c);
    return Struct_3(Struct_1(_wgslsmith_sub_vec3_u32(countOneBits(arg_3.e.a.a), _wgslsmith_mult_vec3_u32(var_0.c.a, ~vec3<u32>(var_0.a.a.x, arg_3.e.d.a.x, var_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), var_0.e.c), arg_3.b, -var_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_3.d)) + _wgslsmith_f_op_vec2_f32(var_2.d - arg_3.d)) * vec2<f32>(_wgslsmith_f_op_f32(-982f - arg_0), _wgslsmith_f_op_f32(sign(-1140f))))), Struct_2(var_2.e.e, abs(firstTrailingBit(vec3<u32>(5597u, u_input.c, 0u))), var_0.a, func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_3.a.a.x, var_2.e.b.x), vec2<u32>(var_2.a.a.x, var_4.a.x)) & ~var_2.a.a.xy), func_5(var_0.a.a.xx)));
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    let var_0 = true;
    var var_1 = ~select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, 2147483647i, -1i), -vec3<i32>(u_input.a.x, -1i, arg_0.c)), -arg_0.c, !var_0);
    let var_2 = vec3<bool>(arg_0.e.c.c.x, arg_0.e.e.c.x, func_3().x);
    let var_3 = -2147483647i;
    var var_4 = firstLeadingBit(~u_input.c);
    return Struct_1(arg_0.e.b, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_5(~vec2<u32>(0u, u_input.c)).b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x))))), arg_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = -u_input.a;
    var var_2 = Struct_3(func_7(func_6(-919f, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1967f)) - 418f), Struct_3(func_1(vec4<i32>(var_1.x, var_1.x, u_input.b.x, var_1.x), Struct_2(Struct_1(vec3<u32>(3429u, 74035u, u_input.c), 2132f, vec3<bool>(false, false, true)), vec3<u32>(1u, 55112u, u_input.c), Struct_1(vec3<u32>(u_input.c, u_input.c, 0u), -687f, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(17229u, u_input.c, 23031u), 197f, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(79222u, 46574u, u_input.c), 1322f, vec3<bool>(false, false, true))), 1i), func_3().x, reverseBits(u_input.b.x), vec2<f32>(786f, -1206f), Struct_2(Struct_1(vec3<u32>(u_input.c, 20523u, 15619u), -150f, vec3<bool>(false, false, true)), vec3<u32>(34154u, 34584u, 4294967295u), Struct_1(vec3<u32>(1852u, u_input.c, u_input.c), -1332f, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(1u, u_input.c, u_input.c), -1383f, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(0u, u_input.c, 4294967295u), -438f, vec3<bool>(false, true, true)))))), true, -19164i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(755f * -1312f), -1183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(369f))))), Struct_2(Struct_1(vec3<u32>(56442u, 62835u, 68406u) ^ vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-409f, 844f))), vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 50635u)), vec3<u32>(u_input.c, 0u, 8012u)), Struct_1(vec3<u32>(_wgslsmith_sub_u32(0u, u_input.c), 22072u, _wgslsmith_div_u32(u_input.c, 23508u)), _wgslsmith_f_op_f32(f32(-1f) * -1270f), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true)), Struct_1(vec3<u32>(u_input.c, 118117u, 85913u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, 86692u), vec3<u32>(0u, u_input.c, 4468u), vec3<u32>(10399u, u_input.c, u_input.c)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(813f))), func_1(-vec4<i32>(u_input.b.x, 16257i, var_1.x, u_input.a.x), func_6(659f, true, -794f, Struct_3(Struct_1(vec3<u32>(4294967295u, u_input.c, u_input.c), -429f, vec3<bool>(false, false, true)), true, 27517i, vec2<f32>(-516f, -1209f), Struct_2(Struct_1(vec3<u32>(u_input.c, u_input.c, 0u), 139f, vec3<bool>(false, false, false)), vec3<u32>(4294967295u, u_input.c, u_input.c), Struct_1(vec3<u32>(u_input.c, u_input.c, u_input.c), 683f, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(u_input.c, 80119u, 0u), -1089f, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(32375u, u_input.c, 4460u), 697f, vec3<bool>(true, false, false))))).e, 2147483647i).c), Struct_1(vec3<u32>(4294967295u >> (u_input.c % 32u), u_input.c, ~u_input.c), _wgslsmith_f_op_f32(-409f - -650f), vec3<bool>(true, true, true))));
    var var_3 = !var_2.e.c.c;
    let var_4 = func_7(Struct_3(func_7(func_6(-380f, var_2.e.e.c.x, 1121f, Struct_3(Struct_1(var_2.a.a, var_2.a.b, vec3<bool>(var_3.x, var_3.x, true)), var_2.a.c.x, 0i, var_2.d, Struct_2(var_2.e.e, vec3<u32>(34000u, u_input.c, u_input.c), var_2.e.c, Struct_1(vec3<u32>(u_input.c, u_input.c, var_2.e.a.a.x), 1648f, var_2.a.c), Struct_1(vec3<u32>(0u, var_2.a.a.x, u_input.c), var_2.e.d.b, vec3<bool>(false, var_2.a.c.x, true)))))), var_2.e.a.c.x, _wgslsmith_sub_i32(u_input.b.x << (0u % 32u), u_input.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_2.a.b), var_2.d), Struct_2(func_5(vec2<u32>(u_input.c, var_2.a.a.x)), ~var_2.e.d.a, var_2.a, func_1(vec4<i32>(1i, -11147i, var_2.c, var_1.x), var_2.e, -2147483647i), var_2.a))).a.xz ^ (max(countOneBits(~vec2<u32>(var_2.a.a.x, var_2.a.a.x)), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(var_2.a.a.x, var_2.a.a.x)), vec2<u32>(124674u, u_input.c))) ^ ~abs(var_2.a.a.xx));
    var var_5 = func_6(-371f, !var_2.b, -1229f, func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) - -456f)), false, _wgslsmith_f_op_f32(step(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.d.b)))), func_6(var_2.a.b, var_2.a.c.x, 1251f, func_6(var_2.e.e.b, var_2.e.d.c.x, _wgslsmith_f_op_f32(-var_2.a.b), func_6(var_2.e.c.b, false, -904f, Struct_3(var_2.e.e, true, -2147483647i, vec2<f32>(-598f, var_2.d.x), Struct_2(Struct_1(var_2.e.b, -1791f, var_2.e.a.c), var_2.a.a, Struct_1(vec3<u32>(51756u, var_4.x, 4294967295u), -1890f, vec3<bool>(var_2.b, var_2.a.c.x, false)), Struct_1(vec3<u32>(1u, 4294967295u, 15925u), -378f, vec3<bool>(true, var_3.x, false)), var_2.a))))))).e;
    var_0 = ~_wgslsmith_dot_vec3_u32(max(var_2.e.c.a, _wgslsmith_div_vec3_u32(~var_2.a.a, vec3<u32>(1u, 0u, var_4.x) | vec3<u32>(16707u, var_4.x, u_input.c))), var_5.e.a);
    var_2 = func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))), func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.c, var_1.x, 5440i, u_input.b.x) | ~vec4<i32>(var_1.x, -32588i, var_1.x, -2147483647i), vec4<i32>(2147483647i | u_input.a.x, _wgslsmith_add_i32(var_1.x, var_2.c), _wgslsmith_add_i32(var_1.x, 0i), -23079i >> (u_input.c % 32u)), vec4<i32>(func_6(-2116f, var_5.d.c.x, -124f, Struct_3(var_5.e, true, u_input.b.x, var_2.d, Struct_2(Struct_1(var_2.a.a, 1000f, vec3<bool>(var_3.x, var_2.b, var_5.e.c.x)), var_2.a.a, Struct_1(var_2.a.a, var_5.a.b, vec3<bool>(var_2.a.c.x, true, false)), var_2.e.d, var_2.a))).c, 0i, func_6(-514f, false, var_5.a.b, Struct_3(var_5.c, var_5.e.c.x, 30602i, vec2<f32>(928f, var_2.a.b), var_2.e)).c, _wgslsmith_sub_i32(2147483647i, u_input.b.x))), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), var_3.x, -143f, func_6(var_5.d.b, var_3.x, var_2.e.e.b, func_6(623f, true, -1260f, Struct_3(Struct_1(vec3<u32>(u_input.c, 1u, 4294967295u), var_2.e.d.b, var_2.a.c), true, -206i, var_2.d, var_2.e)))).e, -58514i).c.x, var_5.c.b, func_6(_wgslsmith_f_op_f32(-func_7(Struct_3(var_5.a, false, 2147483647i, var_2.d, Struct_2(Struct_1(vec3<u32>(var_2.e.a.a.x, 24079u, u_input.c), -1411f, vec3<bool>(false, var_5.e.c.x, false)), vec3<u32>(3493u, var_5.c.a.x, var_5.a.a.x), var_5.a, Struct_1(vec3<u32>(153u, 0u, 0u), 2458f, vec3<bool>(var_3.x, var_5.d.c.x, var_5.a.c.x)), var_5.d))).b), !(!var_2.a.c.x), var_2.e.e.b, func_6(489f, var_3.x, 1016f, Struct_3(Struct_1(var_5.b, var_2.d.x, var_5.e.c), var_3.x, -16930i, _wgslsmith_f_op_vec2_f32(floor(var_2.d)), func_6(var_2.a.b, true, var_2.a.b, Struct_3(Struct_1(vec3<u32>(var_5.e.a.x, var_5.c.a.x, var_4.x), -950f, vec3<bool>(var_2.e.c.c.x, var_5.c.c.x, true)), false, 32565i, var_2.d, var_2.e)).e))));
    let var_6 = -1i >> (_wgslsmith_div_u32(u_input.c << (_wgslsmith_sub_u32(4294967295u, var_4.x) % 32u), ~335u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4266u, var_5.b.x, var_5.a.a.x, 52727u), vec4<u32>(74912u, 4294967295u, var_4.x, 0u)) << (~var_2.a.a.x % 32u), _wgslsmith_mult_u32(1u, var_2.e.c.a.x))));
}

