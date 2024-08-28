struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = arg_1;
    var var_2 = 7998u;
    var var_3 = vec2<i32>(2147483647i & u_input.c, u_input.c);
    return 1475f;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(22363u, 0u, arg_0.a.x) >> (~u_input.a % vec3<u32>(32u)), ~select(u_input.a, vec3<u32>(u_input.b, 23777u, 0u), arg_0.d)), arg_0.a.zwy) <= _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 1u, 4294967295u)), u_input.a);
    global0 = vec2<f32>(-1649f, _wgslsmith_f_op_f32(ceil(-2053f)));
    let var_1 = arg_0.d.xy;
    var var_2 = Struct_1(arg_0.a, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(u_input.a, u_input.a, var_0), ~u_input.a, _wgslsmith_mod_vec3_u32(arg_0.b, vec3<u32>(33365u, arg_0.b.x, arg_0.b.x))) >> (vec3<u32>(_wgslsmith_add_u32(90714u, arg_0.b.x), 4294967295u, arg_0.a.x) % vec3<u32>(32u)), firstTrailingBit(reverseBits(abs(arg_0.a.xyx)))), any(select(vec3<bool>(false, true, var_0), arg_0.d, true)), vec3<bool>(true, false, true));
    var var_3 = arg_0;
    return vec4<i32>(u_input.c, _wgslsmith_mult_i32(i32(-1i) * -5729i, 2008i), 48202i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, -2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)), u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, -1i)) & -vec2<i32>(u_input.c, u_input.c)));
}

fn func_2() -> vec4<u32> {
    var var_0 = -(~(0i & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 29255i), vec2<i32>(32528i, u_input.c))) ^ ~u_input.c);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -802f)));
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.c, u_input.c, 19209i, -2147483647i) << ((vec4<u32>(7673u, u_input.b, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 61639u, 17023u, 71740u)) % vec4<u32>(32u))), vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, -2147483647i, 28987i), -vec3<i32>(u_input.c, u_input.c, -36893i)), 2147483647i | u_input.c, ~(-20836i))), func_4(Struct_1(vec4<u32>(11222u, 4693u, ~4294967295u, ~u_input.b), ~vec3<u32>(64207u, 1u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x) > reverseBits(31724u), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, true), global0.x >= 367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-398f * 1495f))) * _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 1u), vec3<u32>(4294967295u, u_input.b, 1u), true, vec3<bool>(true, false, false)), Struct_1(vec4<u32>(35899u, u_input.b, 27147u, 1u), u_input.a, false, vec3<bool>(true, false, true)))))));
    let var_1 = u_input.a.zx;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-602f))), global0.x, 1337f))), vec3<f32>(-1150f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(f32(-1f) * -396f)))), global0.x));
    return ~vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(select(u_input.a.yz, vec2<u32>(var_1.x, 15347u), false)), vec2<u32>(1u, 35274u) | var_1), ~var_1.x, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(countOneBits(var_1.x), var_1.x)), 5455u);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = !(!any(vec4<bool>(true, true, true, true)));
    var_0 = true;
    var var_1 = Struct_1(~func_2(), ~u_input.a, !select(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), select(any(vec4<bool>(true, true, true, false)), 66264i > u_input.c, all(vec3<bool>(true, true, true))), true & any(vec2<bool>(false, false))), select(!vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, false), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(false, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, -374f > arg_1.x, false))));
    var_0 = var_1.c;
    var var_2 = !vec2<bool>(false, select(true, true, var_1.d.x) && (-u_input.c < u_input.c));
    return Struct_1(_wgslsmith_add_vec4_u32(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0, 36520u, 4294967295u), vec4<u32>(arg_0, 1u, arg_0, 4294967295u)), vec4<u32>(4294967295u, arg_0, var_1.b.x, 4294967295u), !var_2.x), countOneBits(abs(vec4<u32>(0u, var_1.a.x, 51249u, u_input.a.x))) >> (func_2() % vec4<u32>(32u))), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, var_1.b.x) & ~arg_0, 9254u | arg_0, _wgslsmith_add_u32(1u, 53548u))), !(!any(select(var_1.d, vec3<bool>(true, true, var_2.x), var_1.d))), !(!var_1.d));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(180f, global0.x) - vec2<f32>(global0.x, -536f))))))))));
    var var_0 = vec2<i32>(1i, -u_input.c);
    var_0 = firstTrailingBit(arg_3);
    var var_1 = vec4<bool>(!select(true, all(!vec3<bool>(arg_1.d.x, arg_0.c, arg_1.d.x)), all(select(vec4<bool>(false, arg_0.d.x, arg_0.d.x, false), vec4<bool>(false, arg_0.c, arg_1.c, false), vec4<bool>(arg_1.d.x, true, true, true)))), !(!arg_1.c), all(func_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1454f, 1859f, 259f))).d.zy), arg_0.c);
    let var_2 = arg_1;
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~(~max(vec4<i32>(-12722i, 0i, -2147483647i, 12111i), vec4<i32>(-54151i, u_input.c, 1i, 1i))), vec4<i32>(select(u_input.c, max(u_input.c, 33763i), true), i32(-1i) * -1i, u_input.c, u_input.c), select(~vec4<i32>(-25789i, 1i, 2147483647i, var_0.x), select(vec4<i32>(-2147483647i, u_input.c, u_input.c, arg_3.x), vec4<i32>(u_input.c, var_0.x, u_input.c, 2147483647i), vec4<bool>(false, var_2.d.x, true, var_1.x)) >> (vec4<u32>(arg_2.x, u_input.b, arg_2.x, 55429u) % vec4<u32>(32u)), vec4<bool>(true, false, arg_0.d.x, var_1.x))), countOneBits(func_4(func_1(~arg_2.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-393f, -539f, -823f, global0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1252f + global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * vec2<f32>(global0.x, -294f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(-560f, 528f)))))));
    let var_0 = _wgslsmith_add_vec4_i32(-func_5(Struct_1(~vec4<u32>(53320u, 8244u, 4294967295u, u_input.a.x), ~vec3<u32>(u_input.b, 66213u, u_input.a.x), false, vec3<bool>(true, false, true)), func_1(_wgslsmith_sub_u32(10675u, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -882f, global0.x, -1000f))), vec3<u32>(~23913u, u_input.a.x & u_input.b, countOneBits(69256u)), ~(~vec2<i32>(-35714i, -13937i))), vec4<i32>(u_input.c, firstLeadingBit(u_input.c), _wgslsmith_mult_i32(-36364i, _wgslsmith_div_i32(u_input.c << (8494u % 32u), -2147483647i)), -1i));
    let var_1 = vec2<i32>(-38840i, _wgslsmith_mod_i32(abs(var_0.x), countOneBits(-_wgslsmith_div_i32(6809i, var_0.x))));
    let var_2 = Struct_1(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 7853u, ~u_input.a.x)) << ((countOneBits(func_2()) << (~(vec4<u32>(58763u, u_input.a.x, u_input.a.x, 0u) ^ vec4<u32>(u_input.b, 0u, 33481u, 25253u)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a, true, vec3<bool>(false, all(select(func_1(1u, vec4<f32>(global0.x, global0.x, -1182f, global0.x)).d, func_1(u_input.a.x, vec4<f32>(-1745f, 1147f, 1483f, global0.x)).d, true)), 1u >= _wgslsmith_div_u32(~u_input.b, u_input.a.x & u_input.a.x)));
    global0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), 2709f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -780f) - vec2<f32>(global0.x, global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(50061i), var_0.x), select(var_0.x, _wgslsmith_sub_i32(var_0.x, var_1.x), any(var_2.d))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * -1726f), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -277f)))), ~4294967295u, vec3<u32>(_wgslsmith_add_u32(90101u, _wgslsmith_add_u32(0u, u_input.b) | (u_input.a.x & 24536u)), ~39551u, reverseBits(_wgslsmith_dot_vec4_u32(~var_2.a, ~var_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1543f, global0.x, _wgslsmith_f_op_f32(exp2(global0.x)), global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2354f, global0.x, global0.x, 351f)))))));
}

