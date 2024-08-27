struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<i32>(-2147483647i, 1i, 15127i, arg_3.x)), abs(vec4<i32>(arg_0.c, arg_0.c, arg_3.x, arg_0.c))), vec4<i32>(abs(-2147483647i), 35481i, -36197i, firstTrailingBit(arg_0.c))));
    var var_1 = arg_2.d.xy;
    let var_2 = _wgslsmith_f_op_f32(arg_0.a.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, 918f)));
    var_1 = arg_2.d.yx;
    return arg_0.b;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_3(Struct_1(arg_1, !select(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), vec3<bool>(false, false, arg_1.x), select(vec3<bool>(false, true, arg_1.x), vec3<bool>(true, false, true), arg_1.x)), vec2<u32>(45308u, arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(764f * _wgslsmith_f_op_f32(sign(473f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -1145f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(515f, -1000f)), 651f, arg_1.x && arg_1.x))), select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1, true), select(arg_1, arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), !arg_1, true)), Struct_2(~1u), _wgslsmith_sub_i32(0i, 4071i), u_input.a.x > _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(49076u, arg_0.a, 0u), ~vec3<u32>(1u, 0u, 33122u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.b.zxz, u_input.b.yzy))), func_2(Struct_3(Struct_1(select(arg_1, arg_1, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1.zzz, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c), u_input.b.wx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-412f, 1000f, -537f)), !arg_1), arg_0, max(-62934i, 2816i), true, func_2(Struct_3(Struct_1(arg_1, arg_1.wzy, vec2<u32>(arg_0.a, 4294967295u), vec3<f32>(605f, 2461f, 140f), arg_1), arg_0, 17127i, true, Struct_2(13136u)), all(vec2<bool>(arg_1.x, false)), Struct_1(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1.yww, u_input.a, vec3<f32>(-1565f, 1063f, -1288f), arg_1), vec2<i32>(-2147483647i, 27902i) << (u_input.a % vec2<u32>(32u)))), all(select(vec3<bool>(true, true, true), select(arg_1.yxx, vec3<bool>(false, true, arg_1.x), vec3<bool>(false, arg_1.x, false)), arg_1.yzy)), Struct_1(arg_1, arg_1.xwz, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u) ^ u_input.b.ww, firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(803f, -1497f, -130f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2812f, 1306f, -189f))), arg_1.x || arg_1.x)), arg_1), ~vec2<i32>(1i, 1i)));
    let var_2 = 730f;
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2227f)));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = func_3(func_3(arg_3.e, arg_3.a.e), arg_2.e);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a.d.x)), _wgslsmith_f_op_f32(1115f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(489f)))), -253f);
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -290f, arg_2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(min(-527f, arg_3.a.d.x))) + arg_2.d)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(-449f)), _wgslsmith_f_op_f32(arg_3.a.d.x + 381f));
    let var_3 = _wgslsmith_mult_i32(-93068i, 2469i);
    return func_2(Struct_3(arg_2, func_3(Struct_2(u_input.b.x), arg_2.a), firstTrailingBit(-firstTrailingBit(-1i)), arg_3.a.a.x, arg_3.b), arg_3.b.a <= countOneBits(arg_2.c.x >> (66779u % 32u)), Struct_1(vec4<bool>(!arg_1, _wgslsmith_f_op_f32(-218f * var_2.x) == _wgslsmith_f_op_f32(abs(var_2.x)), true, true), !select(!arg_2.e.ywz, arg_3.a.e.zyw, false), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_3.e.a, 26544u), ~vec2<u32>(4294967295u, 4294967295u)) << (~(~vec2<u32>(arg_3.a.c.x, var_0.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(146f, -1556f, _wgslsmith_f_op_f32(step(var_2.x, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 109f, arg_3.a.d.x), arg_3.a.d)) + _wgslsmith_f_op_vec3_f32(ceil(arg_3.a.d))), true)), select(arg_3.a.a, !(!vec4<bool>(true, arg_2.a.x, false, false)), arg_2.e)), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c, -1i, var_3, var_3), vec4<i32>(-26823i, arg_3.c, -2147483647i, arg_3.c)), arg_3.c));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    let var_1 = func_2(arg_0, !all(vec4<bool>(arg_0.c < arg_2.x, !arg_0.a.a.x, false, false)), arg_0.a, min(firstLeadingBit(_wgslsmith_clamp_vec2_i32(arg_2.yy, vec2<i32>(arg_0.c, arg_0.c) << (u_input.a % vec2<u32>(32u)), vec2<i32>(2147483647i, arg_2.x))), _wgslsmith_mod_vec2_i32(arg_2.yz, vec2<i32>(1i, 3334i))));
    var var_2 = Struct_3(arg_0.a, arg_0.e, arg_2.x, all(select(select(vec4<bool>(arg_0.d, arg_0.a.a.x, true, arg_0.d), select(arg_0.a.a, arg_0.a.a, true), !vec4<bool>(arg_0.d, false, arg_0.a.e.x, arg_0.d)), !select(vec4<bool>(arg_0.d, arg_0.d, arg_0.a.b.x, arg_0.d), vec4<bool>(true, arg_0.d, arg_0.a.a.x, arg_0.d), arg_0.d), all(arg_0.a.e))), func_3(var_1, select(arg_0.a.e, select(!vec4<bool>(arg_0.d, false, arg_0.a.e.x, arg_0.a.e.x), select(vec4<bool>(arg_0.d, arg_0.a.e.x, arg_0.a.e.x, arg_0.d), arg_0.a.a, arg_0.a.e), true), vec4<bool>(all(vec4<bool>(true, arg_0.a.b.x, true, arg_0.a.e.x)), !arg_0.a.a.x, arg_0.a.b.x, arg_0.d | false))));
    var var_3 = ~(~abs(~(~var_1.a)));
    return func_4(Struct_2(~8570u), countOneBits(1i) == var_2.c, arg_0.a, Struct_3(Struct_1(select(vec4<bool>(false, true, false, false), vec4<bool>(var_2.d, var_2.d, true, true), !var_2.a.b.x), !arg_0.a.b, vec2<u32>(var_2.b.a, 1u), arg_0.a.d, vec4<bool>(any(vec3<bool>(true, false, true)), any(var_2.a.a.xz), true, arg_2.x == 0i)), func_4(var_1, var_2.d, Struct_1(arg_0.a.e, select(vec3<bool>(arg_0.d, false, false), var_2.a.b, true), firstTrailingBit(u_input.b.zx), _wgslsmith_f_op_vec3_f32(floor(var_2.a.d)), select(vec4<bool>(var_2.d, var_2.d, false, true), arg_0.a.e, vec4<bool>(arg_0.d, true, var_2.a.b.x, var_2.d))), Struct_3(Struct_1(var_2.a.e, vec3<bool>(arg_0.a.a.x, true, var_2.a.e.x), vec2<u32>(u_input.a.x, var_2.a.c.x), vec3<f32>(-582f, var_2.a.d.x, var_2.a.d.x), vec4<bool>(false, arg_0.a.a.x, arg_0.d, var_2.a.a.x)), Struct_2(arg_0.e.a), _wgslsmith_mult_i32(arg_0.c, 2147483647i), any(var_2.a.e.xxw), Struct_2(0u))), 1i, any(vec4<bool>(!arg_0.d, true, any(var_2.a.a.yw), var_2.d)), arg_0.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    let var_0 = func_5(Struct_3(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), max(u_input.b.zz & vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(25828u, 31415u)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 813f, arg_1), vec3<f32>(-198f, 1177f, -2172f)), vec4<bool>(true, true, true, true)), func_4(func_3(func_2(Struct_3(Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), u_input.b.zw, vec3<f32>(arg_1, arg_1, -970f), vec4<bool>(false, false, true, true)), Struct_2(64875u), 12367i, false, Struct_2(11102u)), false, Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, true, true), vec2<u32>(u_input.b.x, 8776u), vec3<f32>(arg_1, 1291f, 965f), vec4<bool>(true, false, false, true)), vec2<i32>(arg_0.x, arg_0.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)), false, Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 36730u), u_input.b.xx, u_input.b.wy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 331f, 1437f)), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), vec2<u32>(u_input.c, u_input.b.x), vec3<f32>(-309f, 1000f, 2026f), vec4<bool>(true, true, false, true)), func_2(Struct_3(Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec2<u32>(15424u, u_input.a.x), vec3<f32>(316f, arg_1, arg_1), vec4<bool>(true, true, true, true)), Struct_2(u_input.a.x), arg_0.x, false, Struct_2(57945u)), false, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), vec2<u32>(u_input.a.x, 12546u), vec3<f32>(arg_1, arg_1, -367f), vec4<bool>(true, true, false, false)), vec2<i32>(arg_0.x, arg_0.x)), 13740i, false, func_3(Struct_2(u_input.a.x), vec4<bool>(true, true, true, true)))), arg_0.x & -2147483647i, -166f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, arg_1))), Struct_2(_wgslsmith_mult_u32(~1u, 78402u ^ u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0);
    return 1604f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var var_1 = vec4<f32>(411f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1723f * _wgslsmith_f_op_f32(ceil(-109f))), 309f)), 748f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec4<i32>(25644i, 2147483647i, 1i, 6052i), 437f)), _wgslsmith_f_op_f32(-735f - 460f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f + -1727f) - -476f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c), u_input.a.x)), vec4<u32>(u_input.c, abs(~(~1u)), _wgslsmith_mod_u32(abs(u_input.a.x), func_5(Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, false), vec2<u32>(1u, 41521u), var_1.zyy, vec4<bool>(true, false, true, false)), Struct_2(0u), -2147483647i, true, Struct_2(4294967295u)), var_1.x, vec4<i32>(-10177i, 1i, 2147483647i, 1i) << (vec4<u32>(u_input.c, 1u, 28704u, 0u) % vec4<u32>(32u))).a), _wgslsmith_sub_u32(~abs(6949u), u_input.c)), ~(~1u), abs(vec2<i32>(1i, 1i)), 4294967295u);
}

