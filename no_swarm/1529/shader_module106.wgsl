struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = arg_0.d.d.x;
    let var_1 = Struct_2(~(-arg_0.c.b.b), Struct_1(arg_0.d.a, -9242i << (~_wgslsmith_dot_vec3_u32(arg_0.d.a.yzx, arg_0.d.c.yzy) % 32u), min(~arg_0.c.b.a >> (~arg_0.c.b.c % vec4<u32>(32u)), vec4<u32>(arg_1.x, arg_0.d.a.x, ~0u, ~12450u)), select(select(arg_0.c.b.d, vec2<bool>(arg_0.d.d.x, true), arg_0.d.d.x), vec2<bool>(arg_0.d.d.x, true), arg_0.c.b.d), vec2<i32>(arg_0.c.a, i32(-1i) * -370i)), 1444f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.d.x, arg_0.c.d.x, -1045f))))), 17985u);
    var_0 = true;
    var var_2 = select(vec3<bool>(true, true, !(select(true, true, arg_0.c.b.d.x) || any(arg_0.d.d))), vec3<bool>(select(all(arg_0.c.b.d), var_1.b.d.x, false), arg_0.c.b.d.x, false), !(any(select(vec3<bool>(false, var_1.b.d.x, var_1.b.d.x), vec3<bool>(var_1.b.d.x, false, false), vec3<bool>(false, false, arg_0.d.d.x))) || !arg_0.d.d.x));
    return ~u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(arg_0.b.c.xz, ~(~(~vec2<u32>(u_input.b, 0u))));
    var var_1 = vec3<bool>(false, arg_0.b.d.x, !any(arg_1.xzx));
    let var_2 = _wgslsmith_clamp_vec2_u32(abs(~var_0), vec2<u32>(~2525u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(arg_0.e, ~u_input.b))), vec2<u32>(func_3(Struct_3(vec4<f32>(arg_0.c, -303f, arg_0.d.x, arg_0.d.x), 88097u, arg_0, Struct_1(arg_0.b.c, 10067i, vec4<u32>(98654u, 5863u, var_0.x, 1u), arg_1.yw, vec2<i32>(u_input.a.x, 1i)), 2077u), arg_0.b.c.yw), _wgslsmith_div_u32(min(26350u, 4294967295u), arg_0.e)) | ~(~arg_0.b.c.ww));
    var var_3 = Struct_2(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-arg_0.a, max(2147483647i, u_input.a.x), select(arg_0.a, arg_0.b.e.x, arg_1.x), -8359i)), vec4<i32>(_wgslsmith_mod_i32(-arg_0.b.b, -arg_0.a), firstLeadingBit(0i), ~(~u_input.a.x), -1i)), arg_0.b, -546f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d, arg_0.d)))), _wgslsmith_mod_u32(reverseBits(~var_2.x), 4294967295u));
    var_1 = vec3<bool>(true, var_3.c > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) + _wgslsmith_f_op_f32(max(-483f, var_3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f + -457f) * -149f))), var_3.b.d.x);
    return Struct_3(vec4<f32>(404f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), -1673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1907f, var_3.c))), arg_0.c), (var_2.x >> ((arg_0.b.a.x & 0u) % 32u)) << (_wgslsmith_add_u32(var_2.x, _wgslsmith_sub_u32(func_3(Struct_3(vec4<f32>(484f, var_3.d.x, arg_0.d.x, arg_0.d.x), u_input.b, arg_0, Struct_1(var_3.b.a, arg_0.b.e.x, arg_0.b.c, vec2<bool>(var_3.b.d.x, arg_0.b.d.x), var_3.b.e), var_2.x), var_0), _wgslsmith_clamp_u32(1u, 42062u, 10309u))) % 32u), arg_0, var_3.b, ~countOneBits(var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    let var_0 = func_2(Struct_2(min(~0i, 733i), func_2(Struct_2(-2147483647i << (0u % 32u), Struct_1(arg_1.c.b.c, 45939i, arg_1.d.a, vec2<bool>(true, arg_2.x), vec2<i32>(-1i, u_input.a.x)), _wgslsmith_f_op_f32(ceil(-376f)), _wgslsmith_div_vec3_f32(arg_1.a.wzw, arg_1.a.zxz), _wgslsmith_add_u32(1u, u_input.b)), vec4<bool>(arg_2.x, arg_1.c.b.d.x != arg_0.d.x, all(vec3<bool>(false, true, arg_0.d.x)), any(arg_0.d))).c.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1537f)) - _wgslsmith_f_op_f32(step(arg_1.c.c, arg_1.c.c))))), _wgslsmith_f_op_vec3_f32(-arg_1.c.d), ~func_3(arg_1, vec2<u32>(77444u, arg_1.c.e))), select(vec4<bool>(func_2(func_2(arg_1.c, vec4<bool>(arg_1.d.d.x, arg_1.c.b.d.x, arg_1.c.b.d.x, arg_2.x)).c, !vec4<bool>(false, true, false, arg_2.x)).d.d.x, !arg_1.c.b.d.x, false, arg_0.d.x), select(select(select(vec4<bool>(false, true, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_0.d.x, arg_1.c.b.d.x), arg_0.d.x), vec4<bool>(false, arg_2.x, arg_0.d.x, arg_1.d.d.x), arg_1.c.b.d.x), vec4<bool>(!arg_1.d.d.x, arg_2.x, arg_1.d.d.x, any(arg_2)), _wgslsmith_f_op_f32(arg_1.a.x * arg_1.c.c) != _wgslsmith_f_op_f32(832f - arg_1.c.d.x)), !vec4<bool>(false, false, arg_0.d.x, arg_1.d.d.x)));
    return 27320u;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(-49378i, Struct_1(vec4<u32>(select(u_input.b, ~50385u, true), u_input.b, _wgslsmith_add_u32(~u_input.b, ~11428u), u_input.b), -37278i, vec4<u32>(~0u, func_4(Struct_1(vec4<u32>(3004u, 3821u, 4294967295u, 1u), 2147483647i, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(arg_0.x, arg_0.x), u_input.a), func_2(Struct_2(u_input.a.x, Struct_1(vec4<u32>(14981u, 18292u, u_input.b, u_input.b), u_input.a.x, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(false, true), vec2<i32>(u_input.a.x, -13374i)), 1094f, vec3<f32>(2349f, 922f, 214f), u_input.b), vec4<bool>(true, false, true, arg_0.x)), vec2<bool>(arg_0.x, true)), ~0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, 26451u, 4294967295u))), select(select(arg_0.yx, select(vec2<bool>(arg_0.x, false), arg_0.yy, true), select(vec2<bool>(false, true), arg_0.zx, arg_0.zx)), vec2<bool>(any(vec4<bool>(arg_0.x, false, true, false)), true), arg_0.xy), -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-806f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-174f)) - _wgslsmith_f_op_f32(-2739f * 746f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(840f - _wgslsmith_f_op_f32(-1922f - -2749f)), -822f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1211f - _wgslsmith_f_op_f32(-1000f + 741f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(400f * 1000f))), _wgslsmith_f_op_f32(abs(-1000f)))), 10949u);
    var_0 = func_2(Struct_2(2147483647i, var_0.b, -200f, var_0.d, ~(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, var_0.e), var_0.b.c.xzz))), select(vec4<bool>(!var_0.b.d.x, var_0.b.d.x, false, var_0.b.d.x), select(!vec4<bool>(true, false, arg_0.x, true), select(!vec4<bool>(arg_0.x, var_0.b.d.x, false, arg_0.x), select(vec4<bool>(arg_0.x, var_0.b.d.x, var_0.b.d.x, false), vec4<bool>(true, var_0.b.d.x, var_0.b.d.x, var_0.b.d.x), vec4<bool>(var_0.b.d.x, var_0.b.d.x, arg_0.x, true)), false), select(!vec4<bool>(var_0.b.d.x, false, arg_0.x, false), select(vec4<bool>(true, var_0.b.d.x, true, true), vec4<bool>(false, var_0.b.d.x, var_0.b.d.x, true), vec4<bool>(var_0.b.d.x, var_0.b.d.x, true, true)), select(false, true, arg_0.x))), !select(select(vec4<bool>(var_0.b.d.x, true, arg_0.x, var_0.b.d.x), vec4<bool>(false, arg_0.x, true, true), vec4<bool>(true, false, false, arg_0.x)), select(vec4<bool>(var_0.b.d.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, var_0.b.d.x, arg_0.x), arg_0.x), select(vec4<bool>(var_0.b.d.x, false, var_0.b.d.x, var_0.b.d.x), vec4<bool>(arg_0.x, arg_0.x, var_0.b.d.x, var_0.b.d.x), true)))).c;
    let var_1 = func_2(func_2(Struct_2(~_wgslsmith_mult_i32(1i, 2147483647i), func_2(func_2(Struct_2(u_input.a.x, var_0.b, var_0.c, var_0.d, u_input.b), vec4<bool>(var_0.b.d.x, true, true, var_0.b.d.x)).c, select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(true, var_0.b.d.x, var_0.b.d.x, var_0.b.d.x), arg_0.x)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)) - -1521f), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(var_0.c - var_0.d.x)), func_4(func_2(Struct_2(-41371i, var_0.b, 447f, vec3<f32>(var_0.c, 741f, var_0.c), 1u), vec4<bool>(true, var_0.b.d.x, arg_0.x, var_0.b.d.x)).d, func_2(Struct_2(25264i, var_0.b, -942f, var_0.d, 30698u), vec4<bool>(arg_0.x, var_0.b.d.x, true, false)), var_0.b.d)), select(!(!vec4<bool>(arg_0.x, false, true, var_0.b.d.x)), !select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(arg_0.x, var_0.b.d.x, false, var_0.b.d.x), vec4<bool>(false, false, var_0.b.d.x, arg_0.x)), _wgslsmith_sub_i32(var_0.a, -2147483647i) > abs(u_input.a.x))).c, select(select(vec4<bool>(!arg_0.x, arg_0.x, all(vec4<bool>(false, var_0.b.d.x, var_0.b.d.x, arg_0.x)), var_0.b.d.x | arg_0.x), select(select(vec4<bool>(arg_0.x, true, arg_0.x, var_0.b.d.x), vec4<bool>(true, var_0.b.d.x, true, arg_0.x), vec4<bool>(arg_0.x, true, false, var_0.b.d.x)), vec4<bool>(true, true, true, true), false), true), vec4<bool>(false, var_0.b.d.x, var_0.b.d.x, true), select(!select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, true, false, true), arg_0.x), vec4<bool>(true, true, arg_0.x, true), any(vec3<bool>(false, false, false)))));
    var var_2 = var_1.d.d.x;
    var var_3 = Struct_4(_wgslsmith_div_f32(func_2(func_2(func_2(var_1.c, vec4<bool>(true, false, arg_0.x, var_0.b.d.x)).c, !vec4<bool>(var_1.c.b.d.x, arg_0.x, var_0.b.d.x, true)).c, vec4<bool>(false, arg_0.x | arg_0.x, false, !arg_0.x)).c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))))), Struct_1(~(func_2(Struct_2(var_1.c.b.e.x, Struct_1(var_0.b.a, 2147483647i, var_0.b.c, vec2<bool>(arg_0.x, true), var_1.d.e), -218f, var_1.c.d, u_input.b), vec4<bool>(false, false, true, true)).c.b.c >> (abs(var_0.b.a) % vec4<u32>(32u))), 53644i, var_0.b.c, func_2(var_1.c, !vec4<bool>(var_1.c.b.d.x, var_0.b.d.x, arg_0.x, false)).d.d, vec2<i32>(-16732i, -func_2(Struct_2(0i, Struct_1(vec4<u32>(var_1.d.c.x, var_0.e, 4294967295u, 0u), var_1.c.a, var_0.b.c, vec2<bool>(var_1.d.d.x, true), var_0.b.e), var_0.c, var_0.d, var_0.e), vec4<bool>(arg_0.x, arg_0.x, false, var_0.b.d.x)).c.b.e.x)), _wgslsmith_f_op_f32(-func_2(Struct_2(~(-23212i), func_2(Struct_2(var_1.d.e.x, Struct_1(vec4<u32>(0u, 4294967295u, var_1.d.c.x, 18297u), var_1.d.b, var_0.b.c, vec2<bool>(false, false), u_input.a), var_1.a.x, vec3<f32>(var_0.d.x, var_1.c.c, var_0.d.x), 29297u), vec4<bool>(var_1.d.d.x, arg_0.x, true, var_1.d.d.x)).d, _wgslsmith_f_op_f32(floor(-2215f)), var_1.a.zwx, _wgslsmith_sub_u32(u_input.b, 2963u)), select(!vec4<bool>(var_0.b.d.x, true, arg_0.x, true), !vec4<bool>(false, arg_0.x, var_0.b.d.x, true), !vec4<bool>(false, true, var_1.c.b.d.x, var_1.c.b.d.x))).a.x), (~(~u_input.b) << (~4957u % 32u)) >> ((min(var_0.e, ~var_0.b.c.x) ^ ~1u) % 32u));
    return var_1.c;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_mult_i32(-2147483647i, ~_wgslsmith_add_i32(u_input.a.x, 0i >> (min(15673u, u_input.b) % 32u)));
    var var_1 = vec4<f32>(-349f, arg_0.d.x, -603f, arg_0.d.x);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 321f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -759f) + _wgslsmith_div_f32(-959f, -445f)), arg_0.d.x)));
    var var_2 = arg_0.b;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, var_1.x, var_1.x, arg_0.c) - vec4<f32>(arg_0.d.x, -183f, var_1.x, -1594f)) + vec4<f32>(-1000f, var_1.x, 1228f, arg_0.c)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d.x, 1044f, -1306f, -352f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -1447f, 271f, arg_0.d.x)))))));
    return 266f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2080f, 1939f, true))), _wgslsmith_f_op_f32(func_5(func_1(vec3<bool>(true, false, true)), u_input.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -586f))))));
    let var_1 = true;
    var var_2 = vec2<bool>(u_input.a.x >= u_input.a.x, func_2(func_2(func_2(func_2(Struct_2(-43613i, Struct_1(vec4<u32>(64352u, 4294967295u, u_input.b, 0u), u_input.a.x, vec4<u32>(1u, u_input.b, 38530u, 1u), vec2<bool>(false, var_1), u_input.a), var_0.x, vec3<f32>(176f, var_0.x, 565f), 59953u), vec4<bool>(true, false, var_1, var_1)).c, !vec4<bool>(true, var_1, false, var_1)).c, vec4<bool>(all(vec2<bool>(var_1, var_1)), -1607f <= var_0.x, u_input.a.x <= 1i, all(vec2<bool>(var_1, false)))).c, !select(select(vec4<bool>(true, var_1, false, var_1), vec4<bool>(true, var_1, true, false), var_1), vec4<bool>(false, true, true, true), vec4<bool>(var_1, var_1, var_1, false))).d.d.x);
    var var_3 = !select(!select(select(vec4<bool>(true, false, var_1, var_2.x), vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false)), select(vec4<bool>(true, var_1, var_2.x, var_2.x), vec4<bool>(var_1, var_2.x, var_1, true), vec4<bool>(false, var_1, var_2.x, var_1)), !vec4<bool>(false, var_2.x, var_2.x, var_2.x)), select(vec4<bool>(true, var_2.x, true, !var_2.x), select(select(vec4<bool>(true, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(true, var_2.x, false, var_1)), vec4<bool>(true, var_2.x, true, true), true), var_2.x), vec4<bool>(all(!vec2<bool>(false, var_1)), var_1, func_1(vec3<bool>(true, true, true)).b.d.x, func_1(select(vec3<bool>(false, var_2.x, var_1), vec3<bool>(var_2.x, var_1, var_1), false)).b.d.x));
    let var_4 = reverseBits(u_input.b);
    let var_5 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(!var_3.wzz).d.zz - var_0), vec2<f32>(_wgslsmith_div_f32(func_1(vec3<bool>(false, var_3.x, var_1)).c, var_0.x), var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-716f, 1159f))));
    var_2 = var_3.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_5.x)) - _wgslsmith_f_op_f32(-414f + 1285f))), -812f, var_3.x)), var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1169f, _wgslsmith_f_op_f32(var_0.x + var_5.x)), 613f)));
}

