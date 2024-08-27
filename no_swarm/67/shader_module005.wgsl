struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<u32>(1u, 28997u), vec2<u32>(55607u, 3761u), -14566i, 0u), Struct_1(vec2<u32>(1u, 12201u), vec2<u32>(3663u, 34077u), -778i, 23248u), vec4<i32>(-1i, 0i, -48818i, -19935i), 2147483647i);

var<private> global1: vec3<f32> = vec3<f32>(-132f, 584f, -411f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.b.ww >> (_wgslsmith_mod_vec2_u32(~(~global0.a.b), ~(~vec2<u32>(11524u, 4294967295u))) % vec2<u32>(32u)), u_input.b.wz, 2147483647i | min(-(~u_input.a.x), -u_input.a.x), _wgslsmith_add_u32(25427u, firstLeadingBit(~42447u)));
    let var_1 = global0.c;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1010f, -412f, 1001f) * vec3<f32>(global1.x, global1.x, -1971f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, global1.x, 166f)))) * vec3<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_div_f32(745f, global1.x), _wgslsmith_div_f32(global1.x, -400f))), vec3<bool>(_wgslsmith_mult_i32(var_0.c, var_1.x) < ~u_input.a.x, true, all(vec2<bool>(true, true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-752f)), _wgslsmith_f_op_f32(floor(-652f)), _wgslsmith_f_op_f32(-global1.x)) * vec3<f32>(global1.x, _wgslsmith_div_f32(2692f, global1.x), _wgslsmith_f_op_f32(global1.x + global1.x)))));
    var var_2 = Struct_1(reverseBits(~vec2<u32>(1u, global0.b.a.x)), ~var_0.b, 2147483647i, var_0.a.x);
    var_0 = Struct_1(vec2<u32>(global0.a.b.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, ~4201u, min(4294967295u, var_0.b.x)), ~(~1u))), global0.b.a, _wgslsmith_sub_i32(-select(2147483647i, -2147483647i, false), _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, u_input.a.x), var_1.yy, false) | vec2<i32>(u_input.a.x, 2147483647i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_1.zz, vec2<i32>(20405i, var_0.c)), vec2<i32>(4703i, u_input.a.x)))), ~var_2.b.x);
    return Struct_1(select(global0.b.a, vec2<u32>(0u, reverseBits(33000u)), vec2<bool>(true, true | (var_2.d <= u_input.b.x))), vec2<u32>(var_0.a.x, countOneBits(1u)), reverseBits(~(~var_0.c << (abs(var_0.b.x) % 32u))), global0.a.d);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -747f, global1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1227f, global1.x, -1000f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2296f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1031f, 553f, false))), -970f));
    let var_0 = -countOneBits(~(-u_input.a.x >> (select(1u, u_input.b.x, false) % 32u)));
    var var_1 = Struct_5(abs(arg_0.c), -1530f, Struct_3(arg_0, Struct_1(_wgslsmith_div_vec2_u32(~global0.a.a, max(vec2<u32>(arg_0.a.x, arg_0.b.x), arg_0.b)), abs(max(vec2<u32>(arg_1, arg_1), arg_0.a)), firstLeadingBit(-18314i), u_input.b.x), -(global0.c >> ((u_input.b << (vec4<u32>(u_input.b.x, arg_1, arg_1, arg_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), 2147483647i), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, -1439f)))), func_2()));
    global0 = var_1.c;
    var var_2 = var_1.d;
    return Struct_4(-_wgslsmith_mult_i32(1i >> (~4294967295u % 32u), -firstLeadingBit(1i)), func_2(), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-490f)) + _wgslsmith_f_op_f32(abs(var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-659f)) * -365f), _wgslsmith_div_f32(233f, _wgslsmith_f_op_f32(sign(var_1.b))), var_2.a.x), vec4<f32>(-802f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * 335f), var_2.a.x)), -(min(~global0.c.wyx, vec3<i32>(global0.b.c, 0i, -24794i)) & (vec3<i32>(-1i) * -vec3<i32>(arg_0.c, global0.b.c, arg_0.c))), global0.a.d);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<bool>(arg_2.x, arg_2.x);
    let var_1 = _wgslsmith_div_vec4_f32(arg_1.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -630f, arg_3.a.x, arg_3.a.x) - vec4<f32>(374f, -1812f, arg_1.c.x, global1.x)) - vec4<f32>(arg_1.c.x, -175f, 235f, -132f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c - vec4<f32>(arg_1.c.x, 554f, 594f, 2604f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -1000f, -854f, arg_1.c.x))))))));
    var var_2 = ~(~u_input.b.xzx | (_wgslsmith_div_vec3_u32(u_input.b.yyy >> (u_input.b.zww % vec3<u32>(32u)), max(vec3<u32>(93212u, 36014u, 1u), u_input.b.xxy)) & ~u_input.b.zwz));
    return func_2().a.x;
}

fn func_1() -> vec2<i32> {
    let var_0 = vec2<u32>(func_4(~global0.c, func_3(func_2(), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, global0.a.b.x), 65277u)), vec2<bool>(true, !any(vec2<bool>(false, false))), Struct_2(global1.xx, Struct_1(~vec2<u32>(global0.a.d, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 670u), global0.b.a), -global0.d, reverseBits(u_input.b.x)))), ~(~12711u));
    var var_1 = func_2();
    var_1 = global0.a;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 1000f) + 529f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1190f, -894f)) + 886f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f - -493f) - 355f), global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-444f, -1172f))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(962f + -748f), _wgslsmith_f_op_f32(floor(global1.x))), 1959f)));
    return u_input.a.zy;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = arg_2.yx;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -317f))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_f32(min(global1.x, global1.x)))), func_2());
    var var_2 = _wgslsmith_clamp_vec2_i32(min((_wgslsmith_sub_vec2_i32(u_input.a.yx, u_input.a.xz) | func_1()) & _wgslsmith_mult_vec2_i32(select(vec2<i32>(arg_0.x, 11864i), vec2<i32>(global0.a.c, 10731i), false), abs(global0.c.yz)), select(arg_2.yz ^ arg_0, max(arg_0 | arg_2.xy, vec2<i32>(5525i, -1i)), vec2<bool>(true, any(vec4<bool>(false, false, false, true))))), vec2<i32>(-(~_wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(var_1.b.c, 2147483647i, arg_0.x, 10172i))), -12418i), select(arg_2.zy, ~(vec2<i32>(-2147483647i, var_1.b.c) << (vec2<u32>(arg_3, 4294967295u) % vec2<u32>(32u))), vec2<bool>(1i != arg_0.x, (4294967295u >= var_1.b.d) | true)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1777f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f + var_1.a.x) * func_3(global0.b, 54571u).c.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-235f, 958f, global1.x)))))) + vec3<f32>(1280f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), 460f)) - _wgslsmith_f_op_f32(f32(-1f) * -170f))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-309f * 844f), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-func_3(global0.b, u_input.b.x).c.x)) + vec2<f32>(_wgslsmith_f_op_f32(round(func_3(Struct_1(vec2<u32>(4294967295u, 109904u), global0.a.a, -33177i, 6322u), arg_1).c.x)), var_1.a.x)), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = func_5(func_1(), abs(~65760u), global0.c.xzz, global0.b.a.x);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global1.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.x, var_1.a.x))) * _wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(-1629f, global1.x), true)))), var_0.x)), func_2());
    let var_2 = countOneBits(countOneBits(~(vec2<u32>(0u, global0.a.a.x) & vec2<u32>(0u, var_1.b.d)))) & ~var_1.b.b;
    var var_3 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(var_1.b.d, var_1.b.d)), vec2<u32>(1u, ~7871u)), select(~(~var_1.b.b), ~vec2<u32>(94433u, var_2.x) ^ (vec2<u32>(var_2.x, var_1.b.b.x) & vec2<u32>(40997u, var_2.x)), !var_0), func_2().c, u_input.b.x & select(88112u >> (var_1.b.d % 32u), var_1.b.a.x, !var_0.x)), func_5(abs(-(~u_input.a.zz)), var_2.x, _wgslsmith_mult_vec3_i32(global0.c.yxx, ~_wgslsmith_mult_vec3_i32(vec3<i32>(-18676i, -1i, var_1.b.c), global0.c.yyx)), u_input.b.x).b, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(select(global0.c, _wgslsmith_div_vec4_i32(global0.c, global0.c), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)), max(vec4<i32>(-6266i, global0.d, u_input.a.x, -53425i), global0.c) & ~vec4<i32>(0i, 0i, global0.d, -26381i)), ~global0.c), u_input.a.x);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(835f, global1.x, 536f), vec3<f32>(-277f, 1431f, var_1.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1732f, var_1.a.x) - vec3<f32>(global1.x, var_1.a.x, 642f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.x, 323f, 259f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(-global1.x), -1000f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, global1.x, var_1.a.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, -540f)) + vec3<f32>(global1.x, 1900f, global1.x))))));
    var var_4 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(min(firstLeadingBit(var_1.b.c), -1i), abs(var_1.b.c), abs(1i), var_1.b.c | firstTrailingBit(global0.c.x)), global0.c), var_3.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(sign(var_1.a.x)), -177f, _wgslsmith_f_op_f32(min(-648f, _wgslsmith_f_op_f32(f32(-1f) * -360f)))) * vec4<f32>(885f, global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(852f)))), -146f)), -countOneBits(vec3<i32>(countOneBits(var_3.a.c), _wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(u_input.a.x, u_input.a.x, var_3.b.c, var_3.c.x)), global0.c.x)), var_3.b.d);
    var var_5 = Struct_3(var_1.b, func_3(Struct_1(var_3.b.a, global0.b.b, countOneBits(-2147483647i), global0.a.d), ~_wgslsmith_add_u32(global0.a.b.x, var_4.b.b.x)).b, _wgslsmith_mod_vec4_i32(var_3.c, select(var_3.c, vec4<i32>(58092i >> (var_1.b.b.x % 32u), ~var_4.d.x, 19053i, ~23187i), !vec4<bool>(var_0.x, true, false, false))), 1i);
    let var_6 = Struct_5(var_5.d, _wgslsmith_f_op_f32(sign(-1589f)), Struct_3(Struct_1(func_3(func_3(Struct_1(vec2<u32>(var_1.b.d, 33164u), u_input.b.wy, 0i, 55u), var_4.e).b, var_4.b.b.x).b.b, firstLeadingBit(vec2<u32>(var_4.e, 30992u)), i32(-1i) * -2147483647i, 1u), func_2(), -vec4<i32>(_wgslsmith_sub_i32(var_1.b.c, 0i), _wgslsmith_div_i32(u_input.a.x, var_4.d.x), var_4.d.x | var_3.c.x, _wgslsmith_div_i32(var_5.b.c, global0.b.c)), ~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(u_input.a.x, 40629i))), func_5(var_3.c.yx, _wgslsmith_clamp_u32(~6253u | var_3.a.a.x, ~abs(1u), abs(~84689u)), vec3<i32>(_wgslsmith_sub_i32(global0.c.x, var_4.b.c), 47296i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-16737i, var_5.a.c), countOneBits(global0.d))), firstTrailingBit(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.x), var_4.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-32327i, ~global0.d), u_input.b);
}

