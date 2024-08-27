struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = ~1u & _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.b), _wgslsmith_mod_u32(_wgslsmith_add_u32(~17699u, ~u_input.b), _wgslsmith_add_u32(u_input.b, 98937u) << (70820u % 32u)));
    var var_1 = _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(-(arg_2.b.zw ^ u_input.a.yz), -arg_0.b.ww)), ~vec2<i32>(i32(-1i) * -1i, 0i));
    let var_2 = true;
    var_0 = _wgslsmith_mod_u32(abs(1u), ~u_input.b);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1052f), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(-13282i, -28036i, arg_2.b.x, var_1.x), ~(-vec4<i32>(arg_2.b.x, var_1.x, -2147483647i, arg_0.b.x)), select(vec4<i32>(-1i, arg_0.b.x, arg_2.b.x, arg_0.b.x), ~vec4<i32>(-1i, 1i, 0i, 56301i), vec4<bool>(var_2, var_2, var_2, var_2))));
    return !vec2<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u)) < _wgslsmith_mult_u32(1u, 4294967295u)) || var_2, all(select(vec4<bool>(var_2, var_2, var_2, var_2), !vec4<bool>(true, false, var_2, var_2), any(vec3<bool>(false, var_2, true)))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = ~(select(_wgslsmith_mult_vec2_i32(arg_2.b.zy, u_input.a.yy), u_input.a.xx, func_3(Struct_1(-423f, arg_2.b), Struct_1(arg_2.a, vec4<i32>(34357i, -2147483647i, arg_2.b.x, 1i)), arg_2)) & ~abs(arg_2.b.zw));
    var_0 = arg_2.b.xz;
    var_0 = vec2<i32>(-45052i, -1i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), vec4<i32>(var_0.x, -2147483647i, 40061i ^ -_wgslsmith_mod_i32(var_0.x, var_0.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -16615i, arg_2.b.x, 19920i)), arg_2.b)));
    var var_2 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> f32 {
    let var_0 = countOneBits(0u);
    var var_1 = vec4<bool>(any(select(!select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, false, arg_1.x), vec3<bool>(true, arg_1.x, false)), !select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), countOneBits(43017u) < u_input.b)), all(select(select(select(vec4<bool>(true, arg_1.x, true, false), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(false, arg_1.x, true, false)), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), vec4<bool>(arg_1.x, var_0 <= 0u, u_input.b >= 42959u, true), !any(vec4<bool>(arg_1.x, false, arg_1.x, true)))), true, all(!arg_1));
    var var_2 = !var_1.zw;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) * -531f), arg_0.b);
    let var_4 = arg_2.zw;
    return _wgslsmith_f_op_f32(var_4.x + var_3.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = ~(~(~(vec4<u32>(u_input.b, 4294967295u, 19567u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 1212u, u_input.b) % vec4<u32>(32u))) << (~(~vec4<u32>(36887u, 4294967295u, 48634u, u_input.b)) % vec4<u32>(32u))));
    var var_1 = ~(~(~(~u_input.b)));
    var var_2 = vec2<bool>(!((7188i < (arg_3.b.x << (1u % 32u))) & (u_input.a.x != ~arg_1.b.x)), false);
    let var_3 = arg_3;
    var var_4 = arg_2;
    return -(~arg_3.b) >> ((var_0 >> (~vec4<u32>(u_input.b, ~0u, ~var_0.x, _wgslsmith_dot_vec2_u32(var_0.zz, var_0.xz)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, 267f, 2176f, -365f)), vec4<f32>(_wgslsmith_f_op_f32(1792f * -1000f), 3607f, _wgslsmith_f_op_f32(abs(-492f)), _wgslsmith_f_op_f32(trunc(1000f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), func_5(Struct_1(_wgslsmith_f_op_f32(func_4(func_2(24425u, false, Struct_1(var_0.x, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), var_0)), vec4<i32>(reverseBits(-17617i), 1i, u_input.a.x, _wgslsmith_div_i32(1280i, 2147483647i))), func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(38912u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 32445u, 0u, 25515u), vec4<u32>(7419u, 26234u, 39406u, u_input.b))), !all(vec2<bool>(false, false)), Struct_1(var_0.x, func_2(46557u, false, Struct_1(var_0.x, vec4<i32>(u_input.a.x, 6853i, u_input.a.x, u_input.a.x)), true).b), true), func_2(firstLeadingBit(0u), ~(-1i) < u_input.a.x, func_2(~u_input.b, all(vec2<bool>(true, false)), func_2(u_input.b, true, Struct_1(598f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), true), true), true), Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, -1i, u_input.a.x) | vec4<i32>(9676i, -44128i, -2147483647i, u_input.a.x), abs(vec4<i32>(0i, -16852i, u_input.a.x, 62977i))))));
    let var_2 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)) || true, (u_input.b ^ 3549u) == ~64343u, true, !any(vec4<bool>(false, true, false, false))), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), all(vec4<bool>(true, true, true, false)), true, true), vec4<bool>((var_1.b.x == 0i) | any(vec4<bool>(true, true, false, true)), _wgslsmith_div_f32(1660f, 406f) != func_2(u_input.b, true, Struct_1(-1572f, var_1.b), false).a, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false)), vec4<bool>(true, true, true, true), true & func_3(func_2(u_input.b, true, func_2(u_input.b, false, Struct_1(var_1.a, var_1.b), true), all(vec4<bool>(true, true, false, true))), func_2(72913u, all(vec2<bool>(true, false)), Struct_1(var_1.a, var_1.b), true), func_2(~u_input.b, true, func_2(62865u, false, Struct_1(1000f, var_1.b), false), true)).x);
    let var_3 = u_input.b;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-837f, var_1.a))))), vec4<i32>(~_wgslsmith_add_i32(countOneBits(u_input.a.x), -28585i), ~(-1i) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 4160u, 1u, u_input.b)) % 32u), -_wgslsmith_mod_i32(abs(2147483647i), var_1.b.x), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -(~u_input.a);
    var var_2 = vec2<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))) || any(vec3<bool>(all(vec2<bool>(false, false)), true, true)), select(true, true, !func_3(var_0, func_1(), Struct_1(-1486f, vec4<i32>(-1i, 0i, 30725i, var_0.b.x))).x));
    let var_3 = vec3<i32>(~_wgslsmith_dot_vec2_i32(~var_0.b.wx, min(vec2<i32>(-30555i, -46614i) | vec2<i32>(var_1.x, 22807i), var_0.b.wy)), ~(_wgslsmith_add_i32(-9883i << (u_input.b % 32u), abs(var_1.x)) | (i32(-1i) * -var_0.b.x)), -firstLeadingBit(2439i));
    var var_4 = select(var_3, abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_3, u_input.a), u_input.a, vec3<i32>(48816i, 35003i, var_0.b.x))) & ~vec3<i32>(_wgslsmith_mult_i32(var_3.x, 1i), abs(var_1.x), u_input.a.x), vec3<bool>(true, -1654f != _wgslsmith_f_op_f32(-var_0.a), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-var_4.x, var_4.x), max(~(~_wgslsmith_mod_i32(var_0.b.x, var_0.b.x)), var_4.x), var_0.a, vec2<i32>(1i, ~func_2(~u_input.b, true, var_0, any(vec4<bool>(var_2.x, var_2.x, true, var_2.x))).b.x));
}

