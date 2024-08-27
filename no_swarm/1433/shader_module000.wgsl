struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec3<bool>(true, select(any(vec4<bool>(true, true, true, true)), false, !(u_input.c != u_input.d.x)) | select(true, select(true, true, true), true), true);
    var var_1 = vec3<f32>(971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(432f + _wgslsmith_f_op_f32(-2243f * -1000f)), _wgslsmith_f_op_f32(984f + -610f), var_0.x)) * _wgslsmith_f_op_f32(-690f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(569f, -164f)))))), -273f);
    let var_2 = Struct_1(abs(vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.b.x, select(u_input.b.x, 0i, false)), -1i)), -u_input.b, var_1.x, vec3<i32>(u_input.a, firstLeadingBit(max(u_input.a, ~u_input.b.x)), -38156i), firstTrailingBit(vec2<u32>(~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 4294967295u))) << (u_input.d % vec2<u32>(32u)));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(892f, var_1.x, var_1.x), vec3<f32>(var_2.c, var_1.x, -2511f), var_0)), vec3<f32>(var_2.c, var_1.x, var_1.x), vec3<bool>(false, false, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1000f, var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_2.c, var_2.c) * vec3<f32>(var_1.x, -1243f, var_1.x)))))))));
    let var_3 = Struct_2(var_2, var_2, var_0.x, Struct_1(var_2.d, max(-reverseBits(var_2.b), abs(var_2.d.xy)), 125f, var_2.d, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.e.x, 1u), u_input.d))));
    return var_2.e;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-276f, 813f), arg_2)) * _wgslsmith_f_op_vec2_f32(arg_2 - arg_2)) * arg_2) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1796f, arg_1.a.c) + arg_2))))))));
    var var_1 = 950f;
    let var_2 = Struct_1(abs(arg_1.a.a & arg_0.d), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_div_f32(1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f + arg_1.d.c)))), ~(-_wgslsmith_sub_vec3_i32(arg_0.a, arg_1.a.d ^ arg_1.a.a)), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.d.e.x, arg_1.a.e.x) >> (func_3() % vec2<u32>(32u)), arg_0.e));
    let var_3 = Struct_1(arg_0.d, ~firstLeadingBit(vec2<i32>(~(-2147483647i), -4901i)), _wgslsmith_f_op_f32(arg_1.a.c - 1956f), arg_0.d, (var_2.e | vec2<u32>(var_2.e.x ^ var_2.e.x, arg_0.e.x)) >> (arg_1.b.e % vec2<u32>(32u)));
    let var_4 = !(!arg_1.c);
    return Struct_1(select(vec3<i32>(reverseBits(max(-15291i, var_2.a.x)), -abs(2147483647i), -firstTrailingBit(arg_0.d.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, 2147483647i, 2800i, 1i) & vec4<i32>(arg_0.a.x, -19340i, var_2.d.x, var_3.b.x), ~vec4<i32>(u_input.b.x, var_2.b.x, 0i, -13809i)), arg_0.a.x, _wgslsmith_mod_i32(-22342i, _wgslsmith_dot_vec2_i32(arg_1.a.b, vec2<i32>(2147483647i, 1i)))), any(select(vec4<bool>(arg_1.c, arg_1.c, false, var_4), vec4<bool>(true, true, true, true), !vec4<bool>(var_4, arg_1.c, var_4, false)))), _wgslsmith_mod_vec2_i32(min(-vec2<i32>(1i, -29574i), -reverseBits(vec2<i32>(2147483647i, 1i))), vec2<i32>(1i, var_3.a.x)), var_0.x, reverseBits(vec3<i32>(49917i, 1430i, arg_0.d.x)), _wgslsmith_add_vec2_u32(~var_3.e, _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.e.x, 28293u), select(u_input.d, ~var_2.e, !vec2<bool>(var_4, var_4)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = select(!vec4<bool>(arg_2, true, false & any(arg_0), arg_0.x), select(!select(vec4<bool>(arg_2, false, true, arg_0.x), vec4<bool>(arg_2, arg_0.x, true, false), arg_2), select(!vec4<bool>(arg_2, arg_0.x, false, true), !(!vec4<bool>(true, true, arg_2, arg_0.x)), ~arg_1.e.x < u_input.d.x), select(true, true, true) && false), arg_2 & arg_0.x);
    let var_1 = -firstLeadingBit(countOneBits(-vec2<i32>(u_input.a, arg_1.b.x)));
    let var_2 = u_input.d.x;
    let var_3 = 1628f;
    let var_4 = Struct_2(Struct_1(arg_1.a, vec2<i32>(~1i, arg_1.b.x) >> (arg_1.e % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(-845f)), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(64297i, 1i, arg_1.d.x), select(arg_1.a, vec3<i32>(1i, var_1.x, arg_1.a.x), false))), countOneBits(min(vec2<u32>(1u, u_input.c), firstLeadingBit(vec2<u32>(0u, u_input.d.x))))), arg_1, reverseBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, u_input.d.x), u_input.c & 6498u)) >= arg_1.e.x, arg_1);
    return 30847u;
}

fn func_5(arg_0: u32, arg_1: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec4_i32(~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, -31724i, u_input.b.x), -vec4<i32>(-67122i, -34067i, u_input.b.x, 2147483647i)) & -(~vec4<i32>(15515i, u_input.a, 1i, u_input.b.x))), select(select(~vec4<i32>(u_input.b.x, u_input.a, 0i, u_input.a), vec4<i32>(-4269i, u_input.a, u_input.b.x, 1i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, 0u, u_input.d.x), vec4<u32>(arg_0, 72261u, 99297u, 0u)) % vec4<u32>(32u)), all(vec4<bool>(false, false, true, true)) && all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), ~vec4<i32>(u_input.b.x ^ u_input.b.x, i32(-1i) * -22162i, u_input.a & 45527i, 1i), arg_1));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(169f - 172f)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -405f))), _wgslsmith_f_op_f32(-1136f + _wgslsmith_f_op_f32(1760f + 2169f))))));
    let var_2 = Struct_2(func_2(Struct_1(vec3<i32>(1i, 2147483647i, var_0.x) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(u_input.c, u_input.d.x, 59217u)) % vec3<u32>(32u)), select(var_0.xx, u_input.b, vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), ~(vec3<i32>(-26035i, u_input.b.x, 1i) >> (vec3<u32>(32465u, arg_0, 32532u) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0, 0u), _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(14789u, 1u)), ~vec2<u32>(63717u, 50025u))), Struct_2(Struct_1(countOneBits(vec3<i32>(2147483647i, 0i, 75708i)), vec2<i32>(67779i, var_0.x) & vec2<i32>(var_0.x, -1i), _wgslsmith_f_op_f32(sign(var_1)), ~var_0.yxy, func_2(Struct_1(vec3<i32>(u_input.b.x, var_0.x, 0i), u_input.b, 694f, var_0.yzx, u_input.d), Struct_2(Struct_1(var_0.xyw, vec2<i32>(var_0.x, var_0.x), var_1, var_0.zwx, vec2<u32>(u_input.d.x, 0u)), Struct_1(vec3<i32>(-2147483647i, 18178i, u_input.a), vec2<i32>(52772i, -9094i), var_1, vec3<i32>(68040i, u_input.a, var_0.x), vec2<u32>(u_input.d.x, u_input.c)), arg_1, Struct_1(vec3<i32>(var_0.x, 35512i, u_input.a), var_0.ww, var_1, vec3<i32>(-1i, u_input.a, 20129i), u_input.d)), vec2<f32>(var_1, var_1)).e), func_2(func_2(Struct_1(var_0.xyx, var_0.zx, 196f, var_0.xxw, vec2<u32>(arg_0, 0u)), Struct_2(Struct_1(var_0.wxy, var_0.xy, 296f, var_0.wzw, vec2<u32>(u_input.d.x, 0u)), Struct_1(var_0.xwx, u_input.b, var_1, vec3<i32>(1i, var_0.x, u_input.b.x), vec2<u32>(arg_0, arg_0)), arg_1, Struct_1(var_0.yyz, var_0.yx, var_1, vec3<i32>(30291i, var_0.x, var_0.x), u_input.d)), vec2<f32>(-1233f, var_1)), Struct_2(Struct_1(var_0.zxz, u_input.b, var_1, vec3<i32>(var_0.x, -15331i, 1i), vec2<u32>(1u, 1u)), Struct_1(var_0.xzz, vec2<i32>(u_input.b.x, -41933i), -651f, vec3<i32>(var_0.x, -2147483647i, u_input.b.x), vec2<u32>(u_input.d.x, 0u)), false, Struct_1(vec3<i32>(7181i, 55648i, u_input.a), vec2<i32>(u_input.b.x, u_input.b.x), 102f, vec3<i32>(var_0.x, u_input.a, var_0.x), vec2<u32>(0u, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), any(vec3<bool>(false, arg_1, arg_1)) & (arg_1 & true), Struct_1(vec3<i32>(var_0.x, 0i, var_0.x) << (vec3<u32>(arg_0, 4294967295u, arg_0) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -1i), vec2<i32>(2147483647i, var_0.x)), -375f, vec3<i32>(-7479i, -52529i, 7865i), abs(vec2<u32>(u_input.d.x, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1584f)), -1704f)), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(34662i), var_0.x, -2091i), vec3<i32>(min(-85920i, -2147483647i), firstTrailingBit(u_input.b.x), var_0.x), func_2(func_2(Struct_1(vec3<i32>(0i, 81508i, 8178i), vec2<i32>(u_input.a, u_input.a), var_1, vec3<i32>(-1i, u_input.b.x, var_0.x), u_input.d), Struct_2(Struct_1(vec3<i32>(18807i, u_input.a, u_input.a), var_0.zy, 2151f, vec3<i32>(-22367i, u_input.b.x, 5947i), u_input.d), Struct_1(var_0.xxx, u_input.b, -982f, vec3<i32>(u_input.a, u_input.a, u_input.a), u_input.d), arg_1, Struct_1(var_0.xyw, vec2<i32>(var_0.x, 73666i), var_1, vec3<i32>(2147483647i, -2147483647i, u_input.b.x), u_input.d)), vec2<f32>(var_1, var_1)), Struct_2(Struct_1(var_0.wzy, u_input.b, -194f, var_0.xxy, vec2<u32>(arg_0, arg_0)), Struct_1(vec3<i32>(u_input.b.x, -11758i, var_0.x), var_0.xz, var_1, var_0.ywx, u_input.d), arg_1, Struct_1(var_0.zwz, vec2<i32>(var_0.x, u_input.a), 745f, var_0.yww, u_input.d)), vec2<f32>(975f, 420f)).a), firstTrailingBit(~vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2649f, var_1)) - 381f)), min(vec3<i32>(1i, 15404i, 44647i), vec3<i32>(-1i) * -var_0.wyx), ~u_input.d), arg_1, func_2(func_2(func_2(func_2(Struct_1(var_0.xxz, vec2<i32>(u_input.b.x, -37664i), var_1, var_0.yww, vec2<u32>(u_input.c, u_input.d.x)), Struct_2(Struct_1(vec3<i32>(var_0.x, u_input.b.x, var_0.x), var_0.xz, var_1, var_0.wzy, vec2<u32>(arg_0, 4294967295u)), Struct_1(vec3<i32>(63930i, -22804i, var_0.x), u_input.b, var_1, vec3<i32>(4411i, 34177i, 36389i), u_input.d), arg_1, Struct_1(vec3<i32>(var_0.x, u_input.b.x, var_0.x), vec2<i32>(var_0.x, var_0.x), var_1, var_0.wwz, vec2<u32>(arg_0, 1u))), vec2<f32>(1201f, var_1)), Struct_2(Struct_1(vec3<i32>(-20365i, u_input.a, 54i), var_0.wy, 259f, vec3<i32>(1350i, var_0.x, 2147483647i), u_input.d), Struct_1(var_0.wyy, vec2<i32>(var_0.x, var_0.x), 184f, var_0.zwy, u_input.d), arg_1, Struct_1(var_0.xxz, u_input.b, 804f, var_0.wwz, vec2<u32>(1u, u_input.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-898f, -304f))), Struct_2(func_2(Struct_1(var_0.zwx, vec2<i32>(1i, var_0.x), var_1, var_0.wwx, u_input.d), Struct_2(Struct_1(var_0.zwy, vec2<i32>(u_input.b.x, 6135i), var_1, var_0.wxz, vec2<u32>(arg_0, arg_0)), Struct_1(var_0.xww, vec2<i32>(0i, -63062i), 689f, vec3<i32>(-19830i, -2147483647i, -1i), u_input.d), arg_1, Struct_1(vec3<i32>(31072i, u_input.b.x, 1i), vec2<i32>(67041i, 45897i), var_1, vec3<i32>(-26777i, 2147483647i, var_0.x), vec2<u32>(0u, 25632u))), vec2<f32>(-280f, 702f)), func_2(Struct_1(vec3<i32>(1i, 0i, u_input.b.x), var_0.wx, -645f, var_0.wzy, u_input.d), Struct_2(Struct_1(vec3<i32>(u_input.a, u_input.a, -1i), u_input.b, var_1, vec3<i32>(var_0.x, 23618i, -26565i), u_input.d), Struct_1(vec3<i32>(2147483647i, u_input.b.x, -25147i), vec2<i32>(u_input.b.x, var_0.x), var_1, vec3<i32>(-20654i, var_0.x, 49044i), vec2<u32>(arg_0, u_input.c)), arg_1, Struct_1(var_0.yxx, u_input.b, var_1, var_0.wyz, vec2<u32>(4294967295u, u_input.d.x))), vec2<f32>(var_1, 234f)), true, Struct_1(var_0.zyy, vec2<i32>(77739i, var_0.x), var_1, var_0.zyz, vec2<u32>(1u, u_input.c))), vec2<f32>(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(327f + var_1))), Struct_2(Struct_1(vec3<i32>(u_input.b.x, -14307i, 0i), select(u_input.b, u_input.b, vec2<bool>(arg_1, arg_1)), 597f, abs(vec3<i32>(2147483647i, var_0.x, var_0.x)), vec2<u32>(u_input.c, u_input.d.x)), Struct_1(var_0.xww | var_0.zxx, vec2<i32>(u_input.b.x, var_0.x), _wgslsmith_f_op_f32(round(var_1)), vec3<i32>(-2147483647i, 2147483647i, 47587i), u_input.d), all(vec4<bool>(arg_1, arg_1, false, arg_1)), func_2(func_2(Struct_1(vec3<i32>(-2147483647i, 1i, var_0.x), vec2<i32>(-1i, 23261i), 550f, vec3<i32>(25106i, -1i, -2147483647i), u_input.d), Struct_2(Struct_1(vec3<i32>(var_0.x, -38998i, 12924i), vec2<i32>(-17925i, -71472i), var_1, var_0.yzy, vec2<u32>(arg_0, arg_0)), Struct_1(vec3<i32>(21195i, -1i, -1i), var_0.yy, var_1, var_0.xyx, u_input.d), false, Struct_1(vec3<i32>(-30545i, var_0.x, 0i), var_0.zz, -823f, vec3<i32>(u_input.a, u_input.b.x, -1i), u_input.d)), vec2<f32>(-890f, -184f)), Struct_2(Struct_1(vec3<i32>(1i, var_0.x, -7265i), vec2<i32>(u_input.a, var_0.x), var_1, vec3<i32>(-2683i, u_input.a, 2147483647i), u_input.d), Struct_1(var_0.zww, u_input.b, var_1, vec3<i32>(36169i, 0i, u_input.a), vec2<u32>(arg_0, 90073u)), arg_1, Struct_1(var_0.xzy, vec2<i32>(-2147483647i, u_input.a), -803f, var_0.xwz, vec2<u32>(arg_0, 1u))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(252f, 706f), vec2<f32>(619f, var_1))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 676f) * vec2<f32>(501f, var_1)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(355f, 366f))))))));
    let var_3 = vec4<i32>(-21097i, func_2(var_2.b, Struct_2(var_2.a, func_2(var_2.b, Struct_2(var_2.b, var_2.b, arg_1, Struct_1(var_2.b.a, vec2<i32>(2147483647i, var_0.x), var_1, vec3<i32>(u_input.b.x, var_0.x, -1i), var_2.a.e)), vec2<f32>(var_2.a.c, 1006f)), !arg_1, var_2.d), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1971f, -276f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1023f, 1000f) + vec2<f32>(var_2.d.c, var_2.a.c))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b.c, 278f)))))))).b.x, u_input.a, var_2.a.d.x);
    let var_4 = Struct_1(~firstTrailingBit(var_0.yzy), vec2<i32>(var_3.x, 6636i), _wgslsmith_f_op_f32(floor(396f)), reverseBits(var_2.b.d), vec2<u32>(var_2.d.e.x, _wgslsmith_mult_u32(34726u >> (arg_0 % 32u), 1u) | _wgslsmith_mod_u32(1u, func_4(vec3<bool>(var_2.c, true, false), var_2.b, true, 1496f))));
    return _wgslsmith_div_vec3_i32(var_0.xzw, -var_2.a.d);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.d.x ^ u_input.c;
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, 356f, 2012f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f - -558f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_div_f32(-1000f, -1000f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(-477f, 1000f))))), ~_wgslsmith_mult_u32(0u, 62120u) != max(0u, _wgslsmith_sub_u32(u_input.d.x, 2435u))));
    var_1 = 1u;
    var_1 = 0u;
    return Struct_1(func_5(_wgslsmith_clamp_u32(15211u, func_4(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), func_2(Struct_1(vec3<i32>(-1i, 2147483647i, u_input.b.x), vec2<i32>(2147483647i, -2147483647i), var_2.x, vec3<i32>(2147483647i, -19379i, u_input.b.x), vec2<u32>(15020u, 19356u)), Struct_2(Struct_1(vec3<i32>(0i, 3527i, u_input.b.x), u_input.b, 584f, vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<u32>(u_input.c, u_input.d.x)), Struct_1(vec3<i32>(3008i, u_input.b.x, u_input.a), u_input.b, 1000f, vec3<i32>(0i, -2147483647i, u_input.b.x), u_input.d), false, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 28011i), u_input.b, var_2.x, vec3<i32>(-1i, -45896i, 2147483647i), u_input.d)), var_2.xz), true, -3131f), u_input.d.x), !(_wgslsmith_f_op_f32(f32(-1f) * -2184f) == _wgslsmith_f_op_f32(sign(-1143f)))), u_input.b, -602f, abs(abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(-1i, -29667i, u_input.a), vec3<bool>(true, true, false)), vec3<i32>(u_input.a, u_input.b.x, u_input.a) ^ vec3<i32>(1i, u_input.a, u_input.a)))), ~(~vec2<u32>(_wgslsmith_mod_u32(0u, var_0), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1979f, var_0.c, var_0.c, var_0.c) * vec4<f32>(var_0.c, var_0.c, var_0.c, 432f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, -127f, 1088f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1231f, var_0.c, var_0.c, 740f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1250f, var_0.c, var_0.c, var_0.c))))), 39006i >= (max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.d.x, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, 2147483647i, 93204i, var_0.d.x)), ~u_input.b.x) | _wgslsmith_mult_i32(-var_0.d.x, -1i))));
    var var_2 = var_0.d.xx << (select(u_input.d, vec2<u32>(max(4294967295u, u_input.d.x), 4294967295u) >> (~var_0.e % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, true)), false), vec2<bool>(var_0.e.x < 0u, true))) % vec2<u32>(32u));
    let var_3 = 4294967295u;
    let var_4 = var_0.e;
    let var_5 = vec3<bool>(false, !(!(select(0i, -2147483647i, true) >= u_input.a)), !(~var_4.x > select(4294967295u, 3483u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

