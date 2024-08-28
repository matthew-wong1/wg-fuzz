struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = min(arg_2.b.a.xww, max(~(u_input.c & u_input.c), ~(vec3<u32>(26737u, u_input.c.x, arg_1.b.d.x) | arg_1.d.a.xzw))) << (~(~u_input.c) % vec3<u32>(32u));
    let var_1 = arg_1.b;
    var var_2 = arg_1.c;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.d.b.x))), _wgslsmith_f_op_f32(-arg_1.d.b.x));
    var_2 = arg_2.c;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, countOneBits(u_input.b), arg_2.d.e.x, -25085i), ~(~vec4<i32>(u_input.a.x, var_1.e.x, var_1.e.x, -19385i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-(arg_2.d.e.x & 17189i), 9158i, abs(arg_2.d.e.x ^ var_1.e.x), abs(var_1.e.x)), min(arg_2.b.e, -u_input.a) ^ u_input.a));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(u_input.c & arg_2.b.a.wwx)) ^ reverseBits(firstLeadingBit(vec3<u32>(arg_3.a.x, 4294967295u, u_input.c.x))), vec3<u32>(4294967295u, 0u, min(15460u, 55302u)));
    var_0 = u_input.c.x;
    let var_1 = vec4<bool>(false, false, arg_3.c, true && arg_3.c);
    let var_2 = select(var_1, vec4<bool>(true, !all(!var_1.wzy), true, false), true);
    var var_3 = !(366f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(422f))));
    return ~75690u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(26393u, func_4(func_3(!select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, arg_1.c), arg_1.c), Struct_2(vec2<u32>(arg_1.a.x, arg_1.d.x), arg_1, !vec2<bool>(arg_1.c, true), arg_1, _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -657f, arg_0.x, 674f), vec4<f32>(arg_1.b.x, 2579f, arg_1.b.x, 987f))), Struct_2(arg_1.a.wy, Struct_1(arg_1.a, vec3<f32>(arg_1.b.x, arg_1.b.x, -1280f), false, u_input.c.xy, u_input.a), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(true, arg_1.c), true), Struct_1(vec4<u32>(u_input.c.x, 41621u, 1u, u_input.c.x), vec3<f32>(arg_1.b.x, arg_0.x, arg_0.x), true, vec2<u32>(4294967295u, arg_1.a.x), arg_1.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-570f, -605f, arg_0.x, -1408f)))), arg_1.c, Struct_2(max(arg_1.a.zx, firstLeadingBit(u_input.c.xy)), Struct_1(~arg_1.a, _wgslsmith_f_op_vec3_f32(arg_1.b + vec3<f32>(arg_1.b.x, -476f, arg_0.x)), arg_1.c, vec2<u32>(0u, 31217u), ~u_input.a), !vec2<bool>(arg_1.c, arg_1.c), Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(min(arg_1.b, vec3<f32>(arg_1.b.x, arg_0.x, arg_0.x))), arg_1.c | false, ~arg_1.d, vec4<i32>(-1i, 2147483647i, arg_1.e.x, -753i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.x, -1894f, arg_1.b.x, -105f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, -505f, arg_0.x, -665f)))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, u_input.c.x, 9482u, u_input.c.x) | arg_1.a, ~vec4<u32>(4294967295u, 4294967295u, u_input.c.x, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_0.x, arg_1.b.x)), arg_1.c & true, ~_wgslsmith_mod_vec2_u32(vec2<u32>(43973u, u_input.c.x), vec2<u32>(21336u, arg_1.a.x)), ~(u_input.a >> (vec4<u32>(4294967295u, 59838u, arg_1.a.x, arg_1.d.x) % vec4<u32>(32u))))));
    var var_1 = u_input.a.xz;
    var_1 = vec2<i32>(-17513i ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, u_input.b), _wgslsmith_div_vec2_i32(-arg_1.e.xx, -vec2<i32>(-6802i, arg_1.e.x))), arg_1.e.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_1.b.x))))) + _wgslsmith_f_op_f32(trunc(1991f)));
    let var_3 = Struct_2(vec2<u32>(abs(_wgslsmith_add_u32(53492u, 29520u)), ~1u) >> (~vec2<u32>(firstLeadingBit(u_input.c.x), ~14560u) % vec2<u32>(32u)), arg_1, !vec2<bool>(7733i != _wgslsmith_clamp_i32(58699i, -5342i, arg_1.e.x), !any(vec3<bool>(true, false, arg_1.c))), arg_1, vec4<f32>(_wgslsmith_div_f32(1801f, _wgslsmith_f_op_f32(round(1037f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-641f)))), _wgslsmith_f_op_f32(trunc(arg_0.x)), 827f));
    return Struct_2(u_input.c.yx, Struct_1(_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_1.d.x, 63320u, u_input.c.x, var_3.d.a.x) & vec4<u32>(10035u, 47386u, arg_1.d.x, u_input.c.x)), vec4<u32>(1u, 4294967295u, var_3.a.x, 4294967295u) << (var_3.b.a % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(1310f, arg_1.b.x, arg_0.x))), all(vec2<bool>(var_3.c.x, arg_1.c | true)), vec2<u32>(~(~33272u), _wgslsmith_div_u32(abs(73931u), _wgslsmith_clamp_u32(arg_1.d.x, u_input.c.x, 1503u))), _wgslsmith_sub_vec4_i32(arg_1.e, vec4<i32>(arg_1.e.x, _wgslsmith_mult_i32(2147483647i, var_3.b.e.x), -var_1.x, -arg_1.e.x))), var_3.c, arg_1, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1526f * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -846f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-674f, _wgslsmith_f_op_f32(var_3.b.b.x + var_3.d.b.x)) + arg_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(~arg_0.d.a, _wgslsmith_f_op_vec3_f32(floor(arg_0.e.yzw)), all(select(vec3<bool>(arg_0.b.c, arg_0.c.x, !arg_0.c.x), !(!vec3<bool>(arg_0.c.x, false, false)), true)), arg_2.xy, _wgslsmith_add_vec4_i32(func_2(arg_0.b.b.yy, Struct_1(~arg_0.d.a, _wgslsmith_f_op_vec3_f32(-arg_0.d.b), true, vec2<u32>(78413u, u_input.c.x), ~arg_1)).d.e, vec4<i32>(_wgslsmith_add_i32(arg_0.d.e.x, _wgslsmith_add_i32(arg_1.x, arg_0.b.e.x)), 2147483647i, -1i, _wgslsmith_mult_i32(u_input.a.x | u_input.a.x, _wgslsmith_mod_i32(1i, -2147483647i)))));
    let var_1 = arg_0.b;
    var_0 = Struct_1(_wgslsmith_div_vec4_u32(arg_0.b.a, _wgslsmith_add_vec4_u32(var_1.a, max(vec4<u32>(var_1.a.x, 1u, 42857u, 49903u), ~var_0.a))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(exp2(var_1.b.zx)), Struct_1(~arg_0.d.a, arg_0.d.b, var_1.c | var_1.c, _wgslsmith_clamp_vec2_u32(var_1.d, vec2<u32>(var_0.a.x, 97292u), var_1.a.yw), var_0.e)).e.yxw * _wgslsmith_f_op_vec3_f32(ceil(arg_0.d.b))), !var_0.c, vec2<u32>(58781u, var_0.a.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.d.e, ~(-vec4<i32>(-2147483647i, arg_1.x, var_0.e.x, var_1.e.x))), ~(~(~var_1.e))));
    var var_2 = arg_0.d.e.x;
    let var_3 = arg_0;
    return var_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    let var_0 = !select(select(!(!vec3<bool>(arg_0.b.c, true, false)), select(vec3<bool>(false, arg_2, arg_0.c.x), vec3<bool>(true, true, true), func_5(arg_0, u_input.a, vec3<u32>(1u, u_input.c.x, 110611u)).c), all(select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(true, false, arg_1.b.c, true), vec4<bool>(arg_1.c.x, false, arg_1.d.c, arg_1.b.c)))), select(!vec3<bool>(true, arg_2, arg_1.c.x), vec3<bool>(true, arg_1.a.x > arg_1.d.d.x, 339f <= arg_0.d.b.x), true), true);
    var var_1 = arg_1.d;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -437f);
    var_1 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_0.a.x, countOneBits(_wgslsmith_mod_u32(4294967295u, arg_0.d.d.x))), 18450u, arg_1.d.a.x, var_1.a.x), vec3<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1.b.x)), 1000f)), -882f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f - arg_1.d.b.x)) + _wgslsmith_f_op_f32(-arg_0.e.x))), var_1.c, ~vec2<u32>(1u, 1u), arg_0.d.e);
    var_1 = Struct_1(vec4<u32>(func_5(arg_1, var_1.e, vec3<u32>(arg_0.a.x, max(4294967295u, 1u), _wgslsmith_mod_u32(var_1.a.x, arg_0.a.x))).d.x, u_input.c.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.a.x, 4294967295u, 4294967295u)), u_input.c), arg_0.b.a.x), vec3<f32>(-1312f, var_1.b.x, var_1.b.x), arg_2, ~firstLeadingBit(arg_1.b.d), -(~vec4<i32>(i32(-1i) * -1i, reverseBits(u_input.a.x), -3231i | u_input.b, firstTrailingBit(u_input.a.x))));
    return vec4<u32>(~(~var_1.d.x) >> (~u_input.c.x % 32u), ~42577u, firstLeadingBit(var_1.a.x), 0u);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = false;
    var_0 = true;
    var var_1 = !vec2<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)), true);
    var var_2 = Struct_1(func_6(Struct_2(u_input.c.xy, func_5(func_2(vec2<f32>(164f, -182f), Struct_1(vec4<u32>(arg_0, arg_0, 0u, 0u), vec3<f32>(1000f, 493f, -1020f), var_1.x, u_input.c.xx, vec4<i32>(arg_1, arg_1, -1i, 1i))), u_input.a, u_input.c & vec3<u32>(arg_0, arg_0, 0u)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, 867f)), func_5(Struct_2(vec2<u32>(9784u, u_input.c.x), Struct_1(vec4<u32>(12642u, u_input.c.x, arg_0, arg_0), vec3<f32>(335f, -1288f, 1509f), false, vec2<u32>(arg_0, arg_0), vec4<i32>(-36129i, -49124i, 28961i, 2147483647i)), vec2<bool>(var_1.x, false), Struct_1(vec4<u32>(arg_0, arg_0, 37848u, u_input.c.x), vec3<f32>(-842f, -1397f, 117f), false, u_input.c.zz, u_input.a), vec4<f32>(-821f, 104f, 307f, 633f)), u_input.a, u_input.c)).c, func_5(Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u), vec3<f32>(-494f, 568f, 738f), var_1.x, u_input.c.xy, vec4<i32>(arg_1, 24055i, u_input.b, 2936i)), vec2<bool>(var_1.x, false), Struct_1(vec4<u32>(17523u, 71572u, arg_0, arg_0), vec3<f32>(-531f, -155f, 991f), var_1.x, u_input.c.xy, u_input.a), vec4<f32>(1416f, -191f, -1427f, 476f)), vec4<i32>(u_input.b, 1i, u_input.a.x, 2147483647i), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c.x, arg_0), u_input.c, vec3<u32>(71249u, arg_0, arg_0))), vec4<f32>(-488f, 2189f, _wgslsmith_f_op_f32(1301f - -1158f), _wgslsmith_f_op_f32(1000f - -1385f))), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1829f, -366f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1282f, -1717f) + vec2<f32>(2090f, 621f))), func_5(func_2(vec2<f32>(494f, 2196f), Struct_1(vec4<u32>(u_input.c.x, arg_0, 0u, 0u), vec3<f32>(1431f, 607f, -2140f), true, vec2<u32>(106233u, 1u), u_input.a)), vec4<i32>(1i, u_input.a.x, -29723i, -7485i), u_input.c)), var_1.x || true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-268f, -792f, -1866f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1918f, 483f, -315f) + vec3<f32>(-166f, 473f, -932f)), false)))), all(!vec4<bool>(var_1.x, true, all(vec4<bool>(var_1.x, false, false, var_1.x)), var_1.x == var_1.x)), ~(~(abs(u_input.c.zy) >> (~u_input.c.zz % vec2<u32>(32u)))), u_input.a);
    let var_3 = !var_2.c;
    return Struct_2(abs((vec2<u32>(arg_0, 59404u) << (~u_input.c.zz % vec2<u32>(32u))) ^ ~(u_input.c.yx & u_input.c.xx)), Struct_1(_wgslsmith_mod_vec4_u32(reverseBits(var_2.a) << (min(var_2.a, vec4<u32>(0u, 31827u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(var_2.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, var_2.a.x), var_2.a), 0u, abs(1u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-315f)), _wgslsmith_f_op_f32(var_2.b.x * 334f), _wgslsmith_f_op_f32(1888f + -802f)) - vec3<f32>(_wgslsmith_f_op_f32(257f - var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x))), var_3, var_2.d, u_input.a), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, 114f))), _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(step(-877f, var_2.b.x)))), Struct_1(_wgslsmith_sub_vec4_u32(var_2.a, vec4<u32>(u_input.c.x, 0u, 0u, var_2.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, var_2.b.x, 671f)), _wgslsmith_f_op_vec3_f32(var_2.b - var_2.b)), var_1.x, vec2<u32>(arg_0, ~arg_0), var_2.e)).c, Struct_1(abs(vec4<u32>(1u, var_2.a.x, var_2.d.x, 97803u) & var_2.a), var_2.b, !var_2.c, ~vec2<u32>(func_2(var_2.b.zy, Struct_1(var_2.a, vec3<f32>(2182f, 179f, -1241f), true, vec2<u32>(arg_0, u_input.c.x), var_2.e)).a.x, u_input.c.x), func_2(var_2.b.zz, func_2(var_2.b.yy, func_5(Struct_2(vec2<u32>(u_input.c.x, 1u), Struct_1(var_2.a, vec3<f32>(var_2.b.x, var_2.b.x, 749f), true, u_input.c.zx, var_2.e), vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.c.x, arg_0, 75370u, u_input.c.x), var_2.b, var_1.x, vec2<u32>(1u, 4294967295u), vec4<i32>(-8106i, -8959i, var_2.e.x, 0i)), vec4<f32>(577f, var_2.b.x, 264f, var_2.b.x)), vec4<i32>(1i, var_2.e.x, 84128i, 45989i), u_input.c)).d).b.e), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f + var_2.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1076f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.b.x)), var_2.b.x), _wgslsmith_div_f32(-1000f, var_2.b.x), true))));
}

fn func_7(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.b.b.x, 2709f))))))))));
    let var_1 = arg_1.b;
    let var_2 = abs(arg_1.d.a.x);
    let var_3 = max(_wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(~u_input.a.x, var_1.e.x & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.x, u_input.a.x, 11431i, arg_1.d.e.x), u_input.a))), -1i);
    let var_4 = -1089f;
    return func_1(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, arg_1.a.x, u_input.c.x, arg_0) >> (vec4<u32>(6997u, var_1.a.x, 1u, var_2) % vec4<u32>(32u)), var_1.a ^ arg_1.b.a)), abs(var_3));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_1(~43159u >> (func_6(arg_0, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_2.x), vec2<f32>(arg_1.b.b.x, 1703f)), func_2(arg_0.e.yx, Struct_1(vec4<u32>(131445u, arg_0.b.d.x, arg_0.b.a.x, 34036u), arg_0.b.b, true, arg_1.b.d, arg_0.b.e)).b), arg_3.e.x < _wgslsmith_f_op_f32(arg_0.e.x - arg_3.e.x)).x % 32u), -43123i).b.c;
    let var_1 = Struct_1(~(vec4<u32>(~1u, ~u_input.c.x, arg_0.a.x, ~u_input.c.x) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(arg_0.d.a.x, 4626u)), ~u_input.c.x, ~u_input.c.x, _wgslsmith_add_u32(arg_1.a.x, arg_3.d.a.x)) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(trunc(func_2(arg_0.e.wy, arg_0.d).d.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f))), _wgslsmith_f_op_f32(-arg_0.d.b.x)), var_0, ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.a.x, 0u), func_6(arg_3, Struct_2(arg_0.d.a.zy, Struct_1(vec4<u32>(arg_3.b.d.x, arg_1.d.d.x, arg_1.d.a.x, 16677u), vec3<f32>(1119f, arg_3.d.b.x, arg_1.b.b.x), var_0, arg_3.d.a.zy, u_input.a), arg_0.c, arg_3.d, vec4<f32>(arg_1.e.x, arg_1.e.x, -1286f, arg_2.x)), 16611i != arg_1.d.e.x).xx), vec4<i32>(arg_3.b.e.x, reverseBits(_wgslsmith_clamp_i32(-34443i, func_1(u_input.c.x, arg_1.d.e.x).b.e.x, ~arg_1.d.e.x)), u_input.a.x, _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, ~arg_0.b.e.x), u_input.a.x)));
    var var_2 = func_1(28192u, ~1i).e.x;
    let var_3 = true;
    var_2 = 938f;
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b.x)))), var_1).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, ~abs(u_input.b)), -vec2<i32>(2147483647i, -u_input.b));
    let var_1 = u_input.a.wwz >> (u_input.c % vec3<u32>(32u));
    var var_2 = func_8(func_7(u_input.c.x | ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), func_1(7053u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 33240u), vec4<u32>(14248u, u_input.c.x, 22552u, u_input.c.x)), i32(-1i) * -69891i)), func_7(u_input.c.x, func_7(0u, func_1(u_input.c.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-func_7(u_input.c.x, Struct_2(vec2<u32>(u_input.c.x, 0u), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), vec3<f32>(-1517f, -1015f, -2073f), false, u_input.c.yz, vec4<i32>(-2147483647i, -2147483647i, u_input.b, 2147483647i)), vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec3<f32>(772f, 1426f, 1168f), false, vec2<u32>(41382u, u_input.c.x), u_input.a), vec4<f32>(-334f, -466f, 1067f, -311f))).d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f + -475f) - _wgslsmith_f_op_f32(-1000f * 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -901f)))), func_1(26873u, u_input.a.x));
    var_2 = func_5(func_2(var_2.b.zy, func_2(var_2.b.yy, func_7(func_7(0u, Struct_2(u_input.c.xx, Struct_1(vec4<u32>(6167u, 0u, 59055u, 4294967295u), vec3<f32>(var_2.b.x, 227f, -1042f), var_2.c, vec2<u32>(u_input.c.x, 30944u), u_input.a), vec2<bool>(false, var_2.c), Struct_1(var_2.a, var_2.b, var_2.c, var_2.d, vec4<i32>(97804i, 1i, -1721i, 1977i)), vec4<f32>(864f, 1000f, -308f, var_2.b.x))).a.x, Struct_2(u_input.c.xx, Struct_1(vec4<u32>(1u, var_2.a.x, 1u, u_input.c.x), vec3<f32>(1046f, -113f, var_2.b.x), var_2.c, var_2.d, var_2.e), vec2<bool>(var_2.c, false), Struct_1(var_2.a, var_2.b, var_2.c, vec2<u32>(u_input.c.x, u_input.c.x), vec4<i32>(var_0.x, var_2.e.x, -1i, -1i)), vec4<f32>(var_2.b.x, -896f, var_2.b.x, 627f))).d).d), u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(abs(func_2(var_2.b.yz, Struct_1(var_2.a, var_2.b, true, vec2<u32>(10597u, 1u), var_2.e)).a.x), ~0u, var_2.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(89507u, var_2.a.x, 1u), vec3<u32>(40341u, u_input.c.x, 1u)), vec3<u32>(1u, 1u, ~50108u))));
    var var_3 = func_7(~_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(53804u, var_2.a.x, u_input.c.x, var_2.a.x), var_2.a), func_5(Struct_2(vec2<u32>(var_2.d.x, 51370u), Struct_1(var_2.a, vec3<f32>(var_2.b.x, -1381f, var_2.b.x), var_2.c, u_input.c.zx, var_2.e), vec2<bool>(false, true), Struct_1(var_2.a, vec3<f32>(680f, var_2.b.x, var_2.b.x), false, vec2<u32>(var_2.a.x, 73002u), vec4<i32>(-27599i, var_1.x, u_input.b, 2147483647i)), vec4<f32>(var_2.b.x, 250f, var_2.b.x, 609f)), u_input.a, u_input.c).d.x & (0u & var_2.a.x)), Struct_2(vec2<u32>(~0u, ~var_2.d.x), func_5(Struct_2(select(vec2<u32>(var_2.a.x, 9328u), u_input.c.zy, vec2<bool>(false, false)), Struct_1(var_2.a, var_2.b, var_2.c, vec2<u32>(4294967295u, 22133u), var_2.e), vec2<bool>(var_2.c, true), Struct_1(var_2.a, vec3<f32>(var_2.b.x, var_2.b.x, 213f), true, u_input.c.zz, u_input.a), vec4<f32>(1285f, -581f, -1429f, var_2.b.x)), -vec4<i32>(-1i, 22782i, var_0.x, u_input.a.x), ~vec3<u32>(15739u, var_2.a.x, 16790u) << (vec3<u32>(1u, var_2.d.x, var_2.a.x) % vec3<u32>(32u))), select(vec2<bool>(false, var_2.b.x == var_2.b.x), vec2<bool>(true, var_2.c && var_2.c), true), Struct_1(~min(vec4<u32>(u_input.c.x, 34922u, var_2.d.x, var_2.d.x), var_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.b))), true, func_6(func_1(104088u, 72141i), func_2(vec2<f32>(-1327f, -141f), Struct_1(var_2.a, var_2.b, true, vec2<u32>(8973u, var_2.a.x), u_input.a)), all(vec4<bool>(true, false, true, var_2.c))).zw, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, 1674f) - vec4<f32>(-422f, var_2.b.x, var_2.b.x, var_2.b.x)) * vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(362f * -404f), _wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x)))).b.d;
    let var_4 = false;
    var var_5 = var_2.a.wwy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((u_input.c.yx ^ _wgslsmith_div_vec2_u32(var_2.a.wx, var_2.d)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 13788u), vec2<u32>(var_5.x, var_2.a.x)) % vec2<u32>(32u))), (_wgslsmith_mod_u32(~var_3.x, 4294967295u) & ~(~72646u)) >> (var_2.d.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1080f, -831f))), 4294967295u, -(~(31981i ^ firstTrailingBit(var_1.x))));
}

