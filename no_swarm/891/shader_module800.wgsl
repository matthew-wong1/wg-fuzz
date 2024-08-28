struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_4(Struct_3(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(!vec4<bool>(arg_0, arg_0, arg_0, false))), Struct_1(~0i, false, !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, true), true)), any(vec4<bool>(arg_0, arg_0 | arg_0, false, any(vec4<bool>(arg_0, true, arg_0, false))))), Struct_1(countOneBits(-80907i), all(!vec2<bool>(arg_0, false)), vec3<bool>(arg_0, !arg_0, true)), arg_0);
    let var_1 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.d, firstLeadingBit(u_input.d)), ~u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(144541u, u_input.d, 4294967295u), vec3<u32>(10482u, 0u, u_input.d), vec3<u32>(u_input.d, 77608u, u_input.d)), min(vec3<u32>(1u, 0u, 1u), vec3<u32>(12969u, 99502u, 4294967295u))), u_input.d), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), ~vec4<u32>(0u, u_input.d, 2218u, u_input.d)))));
    var_0 = Struct_4(var_0.a, Struct_1(-2147483647i, !var_0.a.b.c.x, !var_0.a.b.c), all(!select(select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(var_0.b.c.x, true, arg_0, false), vec4<bool>(false, var_0.c, var_0.a.c, false)), !vec4<bool>(var_0.a.c, true, arg_0, false), select(vec4<bool>(arg_0, false, false, true), vec4<bool>(false, false, false, true), true))));
    var_0 = Struct_4(var_0.a, Struct_1(select(-u_input.b.x, -_wgslsmith_add_i32(var_0.a.b.a, 33191i), arg_0), arg_0 & true, !(!select(var_0.a.b.c, var_0.a.b.c, true))), (false | var_0.c) | (_wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(14810i, var_0.a.b.a, 14434i), arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(-52435i, -19761i, 2147483647i), u_input.c)) != var_0.b.a));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-611f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(134f + arg_1) + _wgslsmith_div_f32(arg_1, 818f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1582f)))))))), 265f));
    return select(!(!select(select(vec2<bool>(true, false), var_0.b.c.zz, var_0.b.c.x), !vec2<bool>(true, arg_0), select(var_0.a.b.c.zx, var_0.b.c.xx, var_0.a.a.x))), select(!vec2<bool>(any(var_0.a.a), !var_0.a.c), select(vec2<bool>(select(arg_0, false, true), select(var_0.a.c, var_0.b.b, var_0.c)), select(var_0.a.a, select(vec2<bool>(false, arg_0), var_0.b.c.xx, true), var_0.b.c.xx), select(var_0.a.b.c.zz, var_0.a.b.c.zx, arg_0 || arg_0)), !(!(!vec2<bool>(false, arg_0)))), !select(arg_0, true, arg_0));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = firstTrailingBit(~vec4<u32>(select(arg_0.x, 0u, true), arg_0.x, ~arg_0.x | (u_input.d | arg_1), 59405u));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~arg_0), vec3<u32>(~_wgslsmith_dot_vec3_u32(~var_0.wyw, vec3<u32>(14411u, 0u, arg_0.x)), _wgslsmith_dot_vec3_u32(~arg_0 ^ vec3<u32>(0u, 72578u, var_0.x), select(~vec3<u32>(44945u, u_input.d, arg_0.x), ~vec3<u32>(var_0.x, 4294967295u, 40314u), arg_3.b.c)), _wgslsmith_div_u32(29654u, 30221u)));
    var var_2 = select(!func_3(arg_3.b.c.x, _wgslsmith_f_op_f32(956f - 1000f)), arg_3.b.c.xz, vec2<bool>(all(!arg_3.a.b.c.xz), arg_3.a.a.x));
    var var_3 = arg_1;
    var var_4 = arg_3;
    return select(!select(vec4<bool>(u_input.b.x >= 2147483647i, true, any(vec3<bool>(false, var_2.x, arg_3.b.b)), select(true, false, true)), select(select(vec4<bool>(false, var_2.x, arg_3.a.c, arg_3.c), vec4<bool>(false, true, true, true), vec4<bool>(true, var_2.x, false, true)), select(vec4<bool>(false, true, true, arg_3.a.b.c.x), vec4<bool>(false, arg_3.c, var_2.x, arg_3.a.b.c.x), false), -55177i != u_input.b.x), !(!var_4.b.c.x)), !(!(!vec4<bool>(arg_3.b.b, true, arg_3.a.b.c.x, arg_3.c))), vec4<bool>(false, true, arg_3.a.b.a >= select(-33408i, min(u_input.b.x, -1i), !arg_3.a.a.x), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = select(vec4<i32>(~2147483647i, 48546i, u_input.c.x, -1i) ^ vec4<i32>(arg_0.x, u_input.b.x, 1i, arg_1.b.a ^ -33501i), vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c.yy), abs(arg_0.zz)) >> (_wgslsmith_sub_u32(abs(25149u), u_input.d) % 32u), 1i, 34938i, ~u_input.a.x), !(!(!func_2(vec3<u32>(u_input.d, 12156u, u_input.d), 0u, vec4<f32>(-1056f, -754f, -678f, 872f), Struct_4(Struct_3(arg_1.b.c.yz, Struct_1(arg_0.x, true, arg_1.b.c), false), arg_1.b, arg_1.a.b.b)))));
    var_0 = vec4<i32>(firstTrailingBit(arg_0.x), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1211i, 1i), u_input.c.zz)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-(~var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(13039i, arg_1.b.a, -2147483647i, 13010i) | vec4<i32>(arg_1.a.b.a, arg_0.x, -2147483647i, u_input.b.x), min(vec4<i32>(arg_1.b.a, -2147483647i, var_0.x, 2147483647i), vec4<i32>(5786i, arg_1.a.b.a, arg_1.b.a, arg_1.b.a)))), 1i), 2147483647i);
    var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(var_0.x) | (-1i ^ arg_1.b.a), 48952i, _wgslsmith_dot_vec3_i32(~var_0.zyz, -u_input.b), -var_0.x), abs(~vec4<i32>(arg_1.b.a, 31524i, var_0.x, 11014i)));
    let var_1 = -20676i;
    let var_2 = Struct_3(vec2<bool>((arg_1.a.b.a >= ~arg_1.b.a) & arg_1.c, any(arg_1.b.c.yx) || (true || all(vec4<bool>(true, true, true, true)))), Struct_1(~0i, any(!vec4<bool>(true, arg_1.b.b, arg_1.a.a.x, arg_1.b.c.x)) & !any(vec3<bool>(false, arg_1.a.b.b, true)), select(select(!arg_1.a.b.c, vec3<bool>(arg_1.a.a.x, arg_1.c, true), true), !(!arg_1.b.c), !any(vec3<bool>(arg_1.a.c, arg_1.c, true)))), select(49940u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 17626u), vec3<u32>(7556u, u_input.d, u_input.d)) & ~26300u, arg_1.a.a.x) >= u_input.d);
    return Struct_1(var_0.x, false, !select(!(!arg_1.b.c), vec3<bool>(var_2.b.c.x, u_input.d < u_input.d, false), true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -987f) + vec2<f32>(-728f, 1378f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1938f, 482f))), any(vec2<bool>(false, arg_1.b))))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(182f)), 812f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1770f));
    var_1 = var_0;
    let var_2 = !func_2(_wgslsmith_add_vec3_u32(~arg_3.a.zww, arg_1.a.zzw), u_input.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(464f, var_1.x, var_0.x, -1576f) - vec4<f32>(var_0.x, 301f, 873f, 322f))))), arg_2);
    let var_3 = 1i;
    return arg_2.a;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = -748f;
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(arg_0, 38907u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 83766u), vec2<u32>(33130u, 131540u), ~vec2<u32>(arg_0, arg_0)), select(vec2<u32>(6567u, arg_0), reverseBits(vec2<u32>(arg_0, u_input.d)), true)), vec2<u32>(u_input.d >> (~73234u % 32u), u_input.d)), ~vec2<u32>(~4294967295u, 0u), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(103312u, 4294967295u), vec2<u32>(48098u, 0u)), (vec2<u32>(1u, 18603u) | vec2<u32>(u_input.d, arg_0)) >> (countOneBits(vec2<u32>(9316u, u_input.d)) % vec2<u32>(32u))), abs(~(~vec2<u32>(u_input.d, u_input.d)))));
    let var_2 = vec2<bool>(true, all(select(select(arg_2.b.c, vec3<bool>(arg_1.b.b, true, arg_1.b.b), !arg_1.b.c), arg_1.b.c, arg_1.b.c)));
    var var_3 = (_wgslsmith_mult_vec2_u32(max(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, 11062u)) & ~vec2<u32>(4294967295u, var_1.x), ~vec2<u32>(41835u, arg_0) << ((vec2<u32>(4294967295u, 41271u) | vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))) >> (~vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))) ^ vec2<u32>(abs(u_input.d), min(arg_0, select(4294967295u, max(var_1.x, u_input.d), var_2.x)));
    var_0 = _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * arg_3.x));
    return func_4(func_4(arg_1, Struct_2(vec4<u32>(0u, 4294967295u, 33149u, _wgslsmith_div_u32(var_3.x, 4294967295u)), arg_2.c && (60223u == var_1.x), 650i, Struct_1(-1i, true, vec3<bool>(true, false, arg_1.a.x)), -24522i), Struct_4(func_4(Struct_3(arg_2.b.c.xz, arg_2.b, true), Struct_2(vec4<u32>(var_3.x, 109340u, 21943u, 70366u), var_2.x, u_input.a.x, arg_2.b, u_input.a.x), Struct_4(arg_2, arg_2.b, true), Struct_2(vec4<u32>(var_1.x, var_3.x, u_input.d, 40828u), true, arg_1.b.a, Struct_1(arg_1.b.a, arg_1.a.x, vec3<bool>(false, var_2.x, true)), u_input.b.x)), Struct_1(_wgslsmith_mod_i32(arg_2.b.a, u_input.c.x), all(vec2<bool>(arg_1.b.c.x, arg_1.b.c.x)), arg_2.b.c), any(func_3(false, 193f))), Struct_2(vec4<u32>(~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(36812u, arg_0, u_input.d), vec3<u32>(var_1.x, 2905u, var_3.x)), ~1u, _wgslsmith_div_u32(4294967295u, u_input.d)), !(true && arg_1.b.c.x), 0i, func_1(~vec3<i32>(22576i, u_input.b.x, 13839i), Struct_4(arg_1, Struct_1(arg_1.b.a, false, vec3<bool>(false, false, true)), true)), u_input.c.x)), Struct_2((vec4<u32>(24941u, arg_0, 2002u, var_1.x) | (vec4<u32>(0u, var_3.x, 102199u, u_input.d) | vec4<u32>(68881u, 40478u, 4294967295u, 104537u))) ^ abs(vec4<u32>(u_input.d, 4294967295u, 0u, arg_0) >> (vec4<u32>(1u, 0u, u_input.d, 67322u) % vec4<u32>(32u))), any(!vec2<bool>(arg_1.a.x, var_2.x)), -62819i ^ (arg_1.b.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.d, u_input.d, arg_0), vec4<u32>(4294967295u, 0u, arg_0, 4233u)) % 32u)), Struct_1(u_input.c.x, true, func_1(min(vec3<i32>(2147483647i, 4268i, 1i), vec3<i32>(arg_2.b.a, 2147483647i, -2147483647i)), Struct_4(Struct_3(arg_1.b.c.xz, arg_2.b, var_2.x), Struct_1(-3165i, true, vec3<bool>(var_2.x, arg_1.c, true)), var_2.x)).c), -1i), Struct_4(Struct_3(!arg_2.a, func_4(func_4(arg_2, Struct_2(vec4<u32>(u_input.d, 61946u, var_3.x, var_3.x), var_2.x, 2147483647i, Struct_1(arg_2.b.a, true, vec3<bool>(var_2.x, arg_1.b.b, false)), arg_1.b.a), Struct_4(Struct_3(vec2<bool>(arg_1.c, true), Struct_1(arg_2.b.a, var_2.x, arg_2.b.c), arg_2.a.x), arg_2.b, var_2.x), Struct_2(vec4<u32>(0u, var_1.x, u_input.d, 4294967295u), arg_2.a.x, -1i, Struct_1(0i, arg_1.a.x, vec3<bool>(true, arg_2.c, false)), 6941i)), Struct_2(vec4<u32>(22967u, 9684u, 20273u, var_3.x), var_2.x, u_input.c.x, Struct_1(u_input.a.x, false, arg_2.b.c), -22059i), Struct_4(arg_2, arg_2.b, arg_1.b.b), Struct_2(vec4<u32>(1u, 4294967295u, 0u, var_1.x), false, u_input.b.x, Struct_1(2147483647i, var_2.x, arg_1.b.c), -2147483647i)).b, arg_2.b.b), func_1(u_input.b << (vec3<u32>(arg_0, 4294967295u, arg_0) % vec3<u32>(32u)), Struct_4(Struct_3(vec2<bool>(arg_1.b.c.x, false), arg_2.b, true), Struct_1(17969i, false, arg_2.b.c), false)), func_3(var_2.x, _wgslsmith_f_op_f32(arg_3.x - arg_3.x)).x), Struct_2(vec4<u32>(0u, var_1.x, 10465u, ~var_1.x) & vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.x, 4294967295u, arg_0), vec4<u32>(arg_0, 0u, var_1.x, arg_0)), 0u, ~var_3.x), func_4(Struct_3(vec2<bool>(true, true), Struct_1(u_input.c.x, false, arg_1.b.c), arg_2.c || arg_1.b.c.x), Struct_2(~vec4<u32>(76117u, arg_0, var_1.x, var_3.x), true, ~20168i, func_4(Struct_3(vec2<bool>(arg_2.c, arg_2.a.x), arg_1.b, true), Struct_2(vec4<u32>(22173u, 18981u, 0u, 4294967295u), true, -16025i, Struct_1(1i, true, vec3<bool>(false, true, true)), 2147483647i), Struct_4(arg_2, arg_1.b, arg_2.c), Struct_2(vec4<u32>(6076u, arg_0, 16379u, 30670u), true, u_input.c.x, arg_1.b, arg_2.b.a)).b, max(arg_2.b.a, 12646i)), Struct_4(Struct_3(vec2<bool>(true, var_2.x), arg_1.b, false), arg_2.b, true), Struct_2(reverseBits(vec4<u32>(var_3.x, 0u, 19918u, var_3.x)), any(arg_2.a), arg_2.b.a, func_4(Struct_3(arg_1.a, Struct_1(arg_2.b.a, true, vec3<bool>(true, true, true)), false), Struct_2(vec4<u32>(u_input.d, 4294967295u, arg_0, var_1.x), true, u_input.c.x, arg_1.b, -28826i), Struct_4(arg_2, arg_2.b, var_2.x), Struct_2(vec4<u32>(var_3.x, 0u, 14462u, 13256u), arg_2.b.b, arg_1.b.a, Struct_1(-2147483647i, false, arg_2.b.c), -2147483647i)).b, arg_2.b.a)).c, ~55322i, func_1(vec3<i32>(~arg_1.b.a, -22459i, arg_1.b.a), Struct_4(arg_1, func_4(Struct_3(arg_2.a, Struct_1(arg_1.b.a, true, vec3<bool>(true, arg_1.a.x, true)), var_2.x), Struct_2(vec4<u32>(u_input.d, 32479u, var_3.x, arg_0), var_2.x, arg_1.b.a, arg_1.b, arg_1.b.a), Struct_4(Struct_3(vec2<bool>(true, true), arg_2.b, arg_2.a.x), arg_2.b, arg_1.b.b), Struct_2(vec4<u32>(arg_0, 53115u, u_input.d, 0u), true, -38408i, arg_2.b, -2147483647i)).b, true)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(firstTrailingBit(62528u), func_4(Struct_3(vec2<bool>(true, true), func_1(u_input.b, Struct_4(Struct_3(vec2<bool>(true, false), Struct_1(u_input.b.x, true, vec3<bool>(true, false, true)), true), Struct_1(-2147483647i, true, vec3<bool>(false, true, false)), true)), any(vec2<bool>(false, false))), Struct_2(vec4<u32>(0u, u_input.d, u_input.d, 0u), func_3(false, 1359f).x, -u_input.b.x, func_1(u_input.c, Struct_4(Struct_3(vec2<bool>(true, true), Struct_1(-16830i, true, vec3<bool>(false, true, true)), true), Struct_1(1i, true, vec3<bool>(true, false, false)), false)), firstTrailingBit(-42250i)), Struct_4(Struct_3(vec2<bool>(false, false), Struct_1(u_input.c.x, false, vec3<bool>(false, true, true)), true), Struct_1(u_input.a.x, false, vec3<bool>(false, false, false)), true), Struct_2(vec4<u32>(1u, u_input.d, 27500u, u_input.d), all(vec2<bool>(true, true)), max(u_input.c.x, u_input.b.x), Struct_1(-26760i, false, vec3<bool>(false, true, true)), ~u_input.a.x)), Struct_3(vec2<bool>(select(false, false, false), u_input.d > 1u), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(4405i, 0i, -2147483647i, 157i), vec4<i32>(-30395i, u_input.c.x, 2147483647i, 1i)), 66088u > u_input.d, vec3<bool>(true, true, true)), all(vec2<bool>(true, true)) & false), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, 531f, -1442f)), vec3<f32>(-446f, -872f, -899f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1076f, -267f, 1000f)))), Struct_1(-37015i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(floor(-175f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1003f, 1199f))), vec3<bool>(true, true, ~u_input.d != (0u | u_input.d))), !any(!func_5(1u, Struct_3(vec2<bool>(false, false), Struct_1(u_input.a.x, false, vec3<bool>(true, false, false)), false), Struct_3(vec2<bool>(false, true), Struct_1(u_input.c.x, true, vec3<bool>(true, false, false)), false), vec3<f32>(401f, 1658f, 576f)).b.c));
    var var_1 = func_4(func_5(((u_input.d | 48785u) ^ _wgslsmith_mult_u32(1u, u_input.d)) | select(firstTrailingBit(1u), 1921u, var_0.b.b), func_5(min(countOneBits(0u), 38279u), Struct_3(vec2<bool>(var_0.c, var_0.c), var_0.b, !var_0.a.a.x), func_5(u_input.d, Struct_3(var_0.b.c.yx, Struct_1(u_input.b.x, true, var_0.b.c), var_0.c), Struct_3(vec2<bool>(true, var_0.b.c.x), Struct_1(u_input.a.x, var_0.c, var_0.a.b.c), true), vec3<f32>(851f, 300f, 2229f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(743f, 1021f, -2341f), vec3<f32>(1000f, 511f, 591f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-778f, 1000f, 1027f)), true))), var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2578f, -1242f, 533f) - vec3<f32>(547f, -2176f, 947f))))), Struct_2(vec4<u32>(75982u, abs(abs(u_input.d)), _wgslsmith_mult_u32(u_input.d, 0u ^ u_input.d), 1u), true, -1i, func_4(func_4(var_0.a, Struct_2(vec4<u32>(1u, 62425u, u_input.d, 13513u), var_0.b.c.x, var_0.b.a, var_0.a.b, 29781i), var_0, Struct_2(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), var_0.a.a.x, -10855i, Struct_1(var_0.a.b.a, true, vec3<bool>(true, true, var_0.c)), -6564i)), Struct_2(vec4<u32>(u_input.d, u_input.d, 65355u, u_input.d), true, -1i, Struct_1(u_input.c.x, true, vec3<bool>(var_0.b.b, true, var_0.a.a.x)), -1i), var_0, Struct_2(vec4<u32>(70459u, 1u, 0u, u_input.d), func_4(Struct_3(var_0.a.b.c.xx, Struct_1(-46571i, var_0.c, vec3<bool>(true, false, true)), var_0.a.b.b), Struct_2(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), var_0.b.c.x, u_input.a.x, var_0.a.b, -264i), var_0, Struct_2(vec4<u32>(4294967295u, u_input.d, u_input.d, 0u), true, 0i, var_0.b, var_0.a.b.a)).a.x, _wgslsmith_mult_i32(0i, 11521i), Struct_1(var_0.a.b.a, true, var_0.a.b.c), 1i)).b, _wgslsmith_add_i32(i32(-1i) * -1i, -var_0.b.a)), var_0, Struct_2(~select(vec4<u32>(27850u, u_input.d, u_input.d, u_input.d), min(vec4<u32>(u_input.d, 1u, 1u, 10648u), vec4<u32>(u_input.d, u_input.d, 1u, 3174u)), vec4<bool>(false, true, var_0.c, true)), var_0.a.b.c.x, -2147483647i, func_5(countOneBits(firstTrailingBit(u_input.d)), func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), func_4(Struct_3(var_0.a.a, var_0.a.b, var_0.a.c), Struct_2(vec4<u32>(0u, u_input.d, u_input.d, u_input.d), var_0.a.b.c.x, u_input.a.x, Struct_1(-2147483647i, true, vec3<bool>(var_0.a.c, var_0.b.c.x, false)), -21657i), var_0, Struct_2(vec4<u32>(u_input.d, u_input.d, 2713u, u_input.d), var_0.a.c, 1i, var_0.a.b, var_0.b.a)), Struct_3(var_0.b.c.xx, Struct_1(0i, var_0.c, var_0.b.c), var_0.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(1354f, -1000f, -1877f) + vec3<f32>(-1000f, 1412f, -543f))), func_4(var_0.a, Struct_2(vec4<u32>(u_input.d, u_input.d, u_input.d, 16437u), var_0.c, u_input.b.x, Struct_1(u_input.a.x, true, var_0.a.b.c), var_0.b.a), var_0, Struct_2(vec4<u32>(u_input.d, u_input.d, u_input.d, 40832u), var_0.a.b.c.x, -17187i, Struct_1(1i, var_0.a.b.b, vec3<bool>(var_0.c, true, false)), 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, -328f, -1612f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1070f, 463f, -1489f), vec3<f32>(-1803f, -462f, -908f)))).b, 1i)).b;
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, u_input.a.x, -(~1i)), vec3<i32>(var_0.a.b.a, func_1(u_input.c, var_0).a, ~(-2147483647i)));
    var var_3 = 0i != var_1.a;
    var_1 = func_1(vec3<i32>(func_1(reverseBits(vec3<i32>(var_2.x, var_1.a, u_input.a.x) ^ u_input.c), var_0).a, func_4(Struct_3(vec2<bool>(false, var_0.b.b), func_1(vec3<i32>(var_0.b.a, var_0.a.b.a, var_0.a.b.a), var_0), true), Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.d, 15771u), vec4<u32>(37227u, 0u, u_input.d, 5922u)), true, -var_0.b.a, Struct_1(var_1.a, true, var_1.c), firstTrailingBit(var_0.b.a)), Struct_4(var_0.a, var_0.b, var_1.b), Struct_2(firstLeadingBit(vec4<u32>(10052u, u_input.d, 4294967295u, u_input.d)), true, 2147483647i, func_4(var_0.a, Struct_2(vec4<u32>(u_input.d, 70213u, u_input.d, u_input.d), false, -18962i, var_0.a.b, u_input.c.x), Struct_4(var_0.a, var_0.a.b, var_0.b.b), Struct_2(vec4<u32>(u_input.d, 1u, u_input.d, 10145u), true, var_2.x, var_0.a.b, -4660i)).b, u_input.b.x)).b.a, -2147483647i), Struct_4(func_4(var_0.a, Struct_2(vec4<u32>(22082u, u_input.d, 68864u, 0u), var_0.c, var_0.a.b.a, Struct_1(-1i, var_0.c, var_0.b.c), u_input.b.x), var_0, Struct_2(firstTrailingBit(vec4<u32>(u_input.d, 14018u, 4294967295u, u_input.d)), false, 2147483647i, var_0.a.b, 1i)), func_5(u_input.d, Struct_3(func_2(vec3<u32>(1038u, u_input.d, 6483u), u_input.d, vec4<f32>(583f, -532f, -639f, -737f), var_0).wy, func_1(var_2, var_0), true), var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, -733f, 284f))).b, false));
    var_3 = true;
    var var_4 = Struct_2(select(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, u_input.d), vec4<u32>(17474u, u_input.d, 107491u, 4921u), vec4<u32>(45461u, u_input.d, u_input.d, u_input.d)), ~vec4<u32>(0u, u_input.d, u_input.d, 27653u)), vec4<u32>(4294967295u, 32188u, u_input.d, 0u), var_1.b), all(!select(func_2(vec3<u32>(1u, 27887u, u_input.d), 48000u, vec4<f32>(2045f, 230f, 436f, -1000f), var_0), func_2(vec3<u32>(1u, u_input.d, u_input.d), u_input.d, vec4<f32>(1899f, -531f, -1000f, -1594f), var_0), true)), var_0.b.a, var_0.b, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_4.c, 5516i, var_2.x, var_2.x), vec4<i32>(countOneBits(var_0.b.a), _wgslsmith_mult_i32(var_2.x, -48994i), _wgslsmith_sub_i32(var_1.a, var_4.e), firstLeadingBit(1i)))), 1i);
}

