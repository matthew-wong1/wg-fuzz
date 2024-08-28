struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~arg_1.b, arg_1.b & arg_1.b)), -16246i, select(vec2<bool>(all(vec4<bool>(false, true, arg_1.a.c.x, true)), all(vec3<bool>(false, false, true))), arg_1.a.c, select(vec2<bool>(global0.x, arg_1.a.c.x), arg_1.a.c, select(global0.x, arg_1.a.c.x, arg_1.a.c.x))), arg_1.d.x, arg_1.d.x), vec4<u32>(arg_1.a.a.x, 36959u, u_input.b >> (~_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), abs(~62242u) ^ arg_0.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(~arg_2, select(arg_2, u_input.d.x, arg_1.a.c.x), arg_1.c.x, countOneBits(arg_2)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.c, vec4<i32>(arg_1.a.b, -2147483647i, arg_1.a.b, -1i)), arg_1.c) ^ vec4<i32>(2147483647i, arg_1.a.b, u_input.d.x, i32(-1i) * -1294i)), vec2<f32>(839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -868f))))));
    var var_1 = Struct_2(var_0.a.c, var_0.a, 1419f, Struct_1(vec2<u32>(56118u, abs(~22992u)), u_input.d.x, arg_1.a.c, var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d))))));
    let var_2 = var_1.b.e;
    var_1 = Struct_2(vec2<bool>(global0.x, !any(select(vec2<bool>(false, false), var_1.d.c, var_0.a.c))), var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.b.d, 586f))) * 1000f), _wgslsmith_f_op_f32(-var_1.e))), Struct_1(vec2<u32>(_wgslsmith_div_u32(20657u, var_0.b.x & 4294967295u), _wgslsmith_mult_u32(min(49926u, 3978u), u_input.a.x)), select(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-432i, var_0.a.b)), arg_2 >> (~arg_1.a.a.x % 32u), !all(vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_1.a.x))), select(vec2<bool>(any(vec3<bool>(arg_1.a.c.x, false, arg_1.a.c.x)), false && arg_1.a.c.x), arg_1.a.c, var_0.a.c.x), _wgslsmith_f_op_f32(-var_1.c), var_1.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d.e), 2332f)));
    var var_3 = arg_1.c.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(270f, _wgslsmith_f_op_f32(arg_1.a.d + 546f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.e)))) + arg_1.a.e), _wgslsmith_f_op_f32(-var_1.b.e)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = ~(~(max(vec4<u32>(u_input.a.x, u_input.a.x, 10829u, u_input.b) << (vec4<u32>(u_input.b, 12433u, arg_0.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(35032u, 28058u, u_input.c, 15276u)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 1u, u_input.b, u_input.c), vec4<u32>(u_input.a.x, u_input.b, arg_0.x, u_input.c)) % vec4<u32>(32u))));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, firstLeadingBit(var_0.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_0.x, 68854u, 1u), vec4<u32>(arg_0.x, 30415u, var_0.x, 4294967295u)), 1u))), u_input.d.x, vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f - -1119f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(402f + -1959f) - _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, arg_0.x, 0u), Struct_3(Struct_1(arg_0, u_input.d.x, vec2<bool>(true, global0.x), 529f, 427f), vec4<u32>(arg_0.x, 14149u, 85323u, 11513u), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 326i), vec2<f32>(153f, 777f)), 37340i)))), 1252f, -1794f);
    let var_2 = 2147483647i < (-countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, 23348i), u_input.d.zx)) << (_wgslsmith_div_u32(max(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(45191u, 18879u, arg_0.x, 75722u), vec4<u32>(86723u, 23892u, var_1.a.x, var_1.a.x))), u_input.c) % 32u));
    var var_3 = Struct_2(!(!select(var_1.c, select(var_1.c, vec2<bool>(arg_1, arg_1), vec2<bool>(false, var_2)), select(vec2<bool>(true, global0.x), var_1.c, false))), Struct_1(var_1.a, abs(var_1.b), vec2<bool>(true, true), var_1.d, 191f), var_1.d, Struct_1(~var_0.yz, _wgslsmith_add_i32(u_input.d.x, ~1i), select(!(!vec2<bool>(false, var_1.c.x)), var_1.c, select(vec2<bool>(true, false), !var_1.c, global0.x | arg_1)), _wgslsmith_f_op_f32(385f + 408f), -991f), var_1.e);
    let var_4 = vec4<i32>(abs(-49206i), var_3.d.b, firstTrailingBit(1i), -var_1.b);
    return Struct_2(vec2<bool>(true, true), var_3.d, _wgslsmith_div_f32(-311f, -1022f), Struct_1(~var_1.a, var_1.b, vec2<bool>(!(1i > var_4.x), var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(427f)) + -853f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e, var_1.d) * _wgslsmith_f_op_f32(-var_1.e)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c, var_1.d) * _wgslsmith_f_op_f32(-1f)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> vec2<f32> {
    return arg_2.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = -106f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d + _wgslsmith_f_op_f32(-var_0))))));
    global0 = !select(!select(!vec3<bool>(false, arg_2.a.c.x, global0.x), select(vec3<bool>(true, global0.x, false), vec3<bool>(true, arg_2.a.c.x, global0.x), true), func_2(vec2<u32>(arg_1, u_input.b), global0.x).d.c.x), !select(vec3<bool>(false, true, global0.x), !vec3<bool>(arg_2.a.c.x, arg_2.a.c.x, true), arg_2.a.c.x || false), vec3<bool>(all(global0.yx), false, true));
    let var_2 = func_2(vec2<u32>(firstLeadingBit(~(arg_1 | arg_2.b.x)), ~69425u), any(!(!(!arg_2.a.c))));
    return func_2(arg_2.b.wx, func_2(arg_2.a.a, global0.x).d.c.x && false).b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(411f, -1117f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-354f))), _wgslsmith_f_op_f32(min(955f, _wgslsmith_f_op_f32(select(-283f, 1000f, true)))), -763f)));
    let var_2 = Struct_3(func_5(abs(u_input.d), ~29262u, Struct_3(Struct_1(u_input.a | vec2<u32>(u_input.c, 33207u), _wgslsmith_mult_i32(-1i, 30125i), vec2<bool>(true, true), _wgslsmith_f_op_f32(-230f - var_1.x), var_1.x), ~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(-u_input.d.x, arg_0.x, var_0, ~var_0), _wgslsmith_f_op_vec2_f32(func_4(abs(arg_0.x), func_2(u_input.a, true), Struct_3(Struct_1(u_input.a, -36813i, vec2<bool>(global0.x, global0.x), var_1.x, -798f), vec4<u32>(21114u, 8720u, 29677u, u_input.c), vec4<i32>(-1i, -21501i, 33057i, var_0), vec2<f32>(var_1.x, var_1.x)))))), vec4<u32>(48122u, ~(~0u), u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -13161i, -21750i), vec4<i32>(arg_0.x, 0i, var_0, arg_0.x), vec4<i32>(var_0, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 3826i, 23652i, -1i), vec4<i32>(var_0, u_input.d.x, 2147483647i, 9585i))), vec4<i32>(2147483647i, max(~(-68129i), ~var_0), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(1i, 48374i, arg_0.x)), select(vec3<i32>(arg_0.x, arg_0.x, u_input.d.x), vec3<i32>(-15775i, 32540i, arg_0.x), global0.x)), 2147483647i)), var_1.xw);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1123f);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, func_2(var_2.b.yx, var_2.a.c.x).b.e)), var_1.x));
    return var_2;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_3(func_5(vec3<i32>(abs(arg_0.c.x), min(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, -1i), u_input.d.xx)) >> (arg_0.b.wxw % vec3<u32>(32u)), 0u, func_1(vec2<i32>(u_input.d.x, arg_0.a.b))), ~(~(~arg_1)), -abs(vec4<i32>(u_input.d.x, -u_input.d.x, -1i, func_2(arg_0.b.xz, true).d.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d - _wgslsmith_f_op_vec2_f32(-arg_0.d))));
    var var_1 = Struct_1(func_5(vec3<i32>(u_input.d.x, ~23321i, var_0.a.b), arg_1.x, Struct_3(var_0.a, arg_0.b ^ vec4<u32>(13728u, var_0.a.a.x, u_input.b, 1625u), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.a.b, var_0.c.x), vec2<f32>(-1313f, var_0.d.x))).a ^ ~(~vec2<u32>(1u, var_0.a.a.x)), 1i, vec2<bool>(false, all(select(global0.xy, arg_0.a.c, !arg_0.a.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(abs(-892f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
    var var_2 = func_2(var_0.b.yx, true);
    var var_3 = var_0.b;
    let var_4 = -1090f;
    return func_2(~(~var_3.yw), !(!arg_0.a.c.x) && func_2(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 82677u), u_input.a) ^ u_input.a, 18359i < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.b, 1948i), u_input.d.yx)).b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(~u_input.d.xz), vec4<u32>(u_input.c ^ (_wgslsmith_div_u32(u_input.b, 0u) | firstTrailingBit(u_input.a.x)), _wgslsmith_add_u32(1u, ~firstTrailingBit(68737u)), u_input.c, ~29628u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_div_f32(-1851f, -117f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(319f, _wgslsmith_f_op_f32(ceil(-2117f))) - -397f));
    var var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(reverseBits(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<u32>(1u, 189u, 0u)))), vec3<u32>(~0u, ~(u_input.a.x >> (37890u % 32u)), countOneBits(func_6(Struct_3(Struct_1(u_input.a, -1i, var_0.d.c, -1217f, var_0.c), vec4<u32>(u_input.a.x, var_0.d.a.x, 2466u, u_input.b), vec4<i32>(var_0.d.b, 18378i, -10851i, -8836i), vec2<f32>(854f, var_0.c)), vec4<u32>(12474u, u_input.b, u_input.b, 18214u), -570f, var_0.b.e).d.a.x))));
    global0 = select(vec3<bool>(global0.x, var_0.d.c.x, !(_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, u_input.b, var_1.x), Struct_3(Struct_1(u_input.a, 2147483647i, vec2<bool>(false, global0.x), -741f, -1049f), vec4<u32>(0u, 4294967295u, u_input.a.x, 31206u), vec4<i32>(var_0.d.b, 18232i, u_input.d.x, u_input.d.x), vec2<f32>(-321f, var_0.d.e)), -1i)) >= -433f)), select(select(!vec3<bool>(global0.x, var_0.d.c.x, global0.x), vec3<bool>(var_0.d.c.x, false, any(vec3<bool>(true, false, var_0.d.c.x))), var_0.c > _wgslsmith_f_op_f32(sign(463f))), select(vec3<bool>(false, func_5(vec3<i32>(u_input.d.x, var_0.b.b, var_0.d.b), 0u, Struct_3(Struct_1(var_0.b.a, var_0.b.b, var_0.b.c, 1000f, 432f), vec4<u32>(u_input.b, u_input.b, var_1.x, 0u), vec4<i32>(u_input.d.x, -1i, u_input.d.x, u_input.d.x), vec2<f32>(-181f, -1000f))).c.x, true), !select(vec3<bool>(var_0.d.c.x, true, global0.x), vec3<bool>(false, var_0.d.c.x, var_0.d.c.x), vec3<bool>(true, false, false)), false), !select(select(vec3<bool>(false, var_0.a.x, global0.x), vec3<bool>(false, true, global0.x), var_0.d.c.x), select(vec3<bool>(global0.x, var_0.d.c.x, false), vec3<bool>(true, var_0.d.c.x, global0.x), true), true)), func_6(Struct_3(Struct_1(vec2<u32>(40169u, 0u) ^ u_input.a, var_0.d.b, global0.zx, var_0.c, var_0.e), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.c, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, var_1.x, var_1.x), vec4<u32>(103586u, 4294967295u, var_1.x, 0u)), vec4<u32>(u_input.a.x, 32215u, 1u, u_input.c) << (vec4<u32>(3196u, 48674u, 4294967295u, var_0.b.a.x) % vec4<u32>(32u))), vec4<i32>(2147483647i, -7050i, u_input.d.x, func_1(vec2<i32>(0i, var_0.d.b)).c.x), _wgslsmith_f_op_vec2_f32(min(func_1(vec2<i32>(-2147483647i, 36700i)).d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, 1395f) - vec2<f32>(547f, var_0.b.d))))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b, 16466u, u_input.b), vec4<u32>(var_1.x, var_0.d.a.x, 72365u, 84648u)) | ~vec4<u32>(u_input.a.x, var_0.b.a.x, var_1.x, var_1.x), vec4<u32>(~u_input.b, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b, var_1.x), vec3<u32>(6190u, 1134u, var_1.x)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-var_0.d.d)) - _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.d)) - 2236f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) + var_0.c)))).d.c.x);
    let var_2 = -_wgslsmith_sub_vec3_i32(~(vec3<i32>(u_input.d.x, 2247i, -2147483647i) ^ vec3<i32>(-2147483647i, var_0.d.b, var_0.d.b)) << (~(~vec3<u32>(82779u, 21490u, u_input.c)) % vec3<u32>(32u)), u_input.d);
    let var_3 = Struct_2(vec2<bool>(var_0.b.c.x, true), func_5(_wgslsmith_div_vec3_i32(u_input.d, var_2), ~firstLeadingBit(func_2(vec2<u32>(var_1.x, 35340u), var_0.b.c.x).b.a.x), func_1(vec2<i32>(reverseBits(var_0.d.b), 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-416f)))), func_2(vec2<u32>(u_input.c << (countOneBits(51943u) % 32u), var_0.b.a.x), true).b, 530f);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3.b.b & var_3.b.b));
}

