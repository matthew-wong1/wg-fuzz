struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<u32>,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)) * _wgslsmith_f_op_f32(1000f * arg_2.b.x))))));
    var var_1 = vec3<i32>(reverseBits(-min(arg_1.b, 13928i)) | firstLeadingBit(arg_1.b), _wgslsmith_add_i32(min(-arg_2.a.b, 0i), u_input.a), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(i32(-1i) * -31524i, firstLeadingBit(u_input.b.x), u_input.b.x << (1u % 32u))), -1i));
    var_1 = firstLeadingBit(~vec3<i32>(~var_1.x, -arg_1.b, _wgslsmith_add_i32(u_input.a, i32(-1i) * -7753i)));
    var_1 = countOneBits(-abs(~vec3<i32>(arg_2.d.d, arg_1.b, arg_2.a.b)));
    var_1 = firstLeadingBit(select(vec3<i32>(arg_2.a.b, ~(-25078i), 2147483647i), ~vec3<i32>(35644i, arg_2.a.b, 1i), true));
    return 31150i;
}

fn func_2(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_5(Struct_2(true, ~u_input.b.x, Struct_1(func_3(vec4<bool>(true, false, false, false), Struct_2(true, 2147483647i, Struct_1(true, true)), Struct_5(Struct_2(true, 17141i, Struct_1(true, false)), vec2<f32>(-229f, 642f), Struct_1(true, false), Struct_4(Struct_3(Struct_1(true, true)), Struct_3(Struct_1(false, false)), vec2<u32>(0u, 4294967295u), u_input.a, Struct_2(true, u_input.a, Struct_1(false, true))))) != ~(-1i), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(459f * -574f) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-912f, -343f, false)) - -436f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-529f, -964f), vec2<f32>(1410f, 1000f), vec2<bool>(false, false))))))), Struct_1(!(!all(vec2<bool>(true, false))), select(all(vec3<bool>(true, false, false)), true, all(vec2<bool>(false, false)) && (arg_0.x == arg_0.x))), Struct_4(Struct_3(Struct_1(true, select(true, true, true))), Struct_3(Struct_1(true, true)), ~arg_0, abs(u_input.b.x), Struct_2(!all(vec3<bool>(true, false, true)), u_input.b.x, Struct_1(select(false, false, true), true))));
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1334f, _wgslsmith_f_op_f32(-var_0.b.x))))), Struct_1(false, u_input.a != _wgslsmith_dot_vec2_i32(abs(u_input.b), u_input.b)), var_0.d);
    var_0 = Struct_5(var_0.d.e, var_0.b, Struct_1(true, (var_0.d.e.b & _wgslsmith_clamp_i32(-16024i, var_0.a.b, -2147483647i)) < firstLeadingBit(17639i | u_input.a)), Struct_4(var_0.d.a, Struct_3(var_0.c), _wgslsmith_add_vec2_u32(firstLeadingBit(~arg_0), ~(vec2<u32>(0u, 0u) | vec2<u32>(var_0.d.c.x, 4294967295u))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a | u_input.a, 1i & var_0.d.e.b, 1i), select(var_0.a.b, var_0.d.e.b, 0i != u_input.a)), var_0.d.e));
    var_0 = Struct_5(Struct_2(true, 0i, var_0.d.b.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1262f * var_0.b.x), _wgslsmith_f_op_f32(abs(-1000f))))), var_0.b)), var_0.c, var_0.d);
    var_0 = Struct_5(var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.b), Struct_1(select(true, !(var_0.a.b <= var_0.a.b), true), !var_0.c.b), Struct_4(Struct_3(var_0.a.c), var_0.d.a, var_0.d.c, _wgslsmith_dot_vec4_i32(max(vec4<i32>(27616i, -2147483647i, 2147483647i, 8666i), vec4<i32>(u_input.b.x, var_0.d.d, -1i, -7061i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-18183i, 2147483647i, u_input.a, -5384i), vec4<i32>(-32832i, var_0.d.d, -1i, var_0.a.b), vec4<i32>(var_0.a.b, -2668i, -2147483647i, u_input.a)), -vec4<i32>(var_0.a.b, var_0.a.b, u_input.a, 23117i))), var_0.a));
    return Struct_5(var_0.a, var_0.b, Struct_1(any(vec2<bool>(!var_0.a.c.b, var_0.c.a != var_0.a.c.b)), true), Struct_4(Struct_3(Struct_1(var_0.c.a, !var_0.d.b.a.a)), var_0.d.b, var_0.d.c, -84501i ^ firstTrailingBit(abs(var_0.d.d)), Struct_2(true, firstLeadingBit(~var_0.d.e.b), Struct_1(!var_0.d.b.a.b, any(vec4<bool>(var_0.c.a, false, false, false))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(vec4<u32>(arg_0.d.c.x, min(arg_0.d.c.x, arg_0.d.c.x), 1u, ~1u) & _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(91401u, 1u, arg_0.d.c.x, arg_0.d.c.x), vec4<u32>(0u, 23250u, arg_0.d.c.x, 11066u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 42772u, 20457u, arg_0.d.c.x), vec4<u32>(1u, arg_0.d.c.x, 0u, arg_0.d.c.x)))) ^ max(_wgslsmith_add_vec4_u32(vec4<u32>(6803u, ~0u, 53745u, _wgslsmith_mod_u32(arg_0.d.c.x, 4294967295u)), select(abs(vec4<u32>(arg_0.d.c.x, arg_0.d.c.x, 4294967295u, arg_0.d.c.x)), min(vec4<u32>(arg_0.d.c.x, arg_0.d.c.x, arg_0.d.c.x, 48082u), vec4<u32>(arg_0.d.c.x, arg_0.d.c.x, 21042u, 12823u)), true)), vec4<u32>(arg_0.d.c.x, 4294967295u, _wgslsmith_mod_u32(arg_0.d.c.x, arg_0.d.c.x << (arg_0.d.c.x % 32u)), 0u));
    var var_1 = _wgslsmith_f_op_f32(171f * -1000f);
    let var_2 = true;
    var var_3 = Struct_2(arg_0.a.c.a, arg_0.d.e.b, arg_0.d.b.a);
    var var_4 = Struct_2(true, firstTrailingBit(23080i), Struct_1(false, arg_1.x < -174f));
    return select(vec3<bool>(any(vec4<bool>(!var_3.c.a, !var_2, true, true)), any(vec3<bool>(true, true, true)), arg_0.a.c.b), select(!(!vec3<bool>(false, true, arg_0.c.b)), vec3<bool>(any(select(vec4<bool>(true, arg_0.a.a, true, var_4.a), vec4<bool>(true, arg_0.a.a, var_4.c.b, true), vec4<bool>(false, var_4.a, true, true))), func_2(vec2<u32>(0u, var_0.x)).d.a.a.a, false), vec3<bool>(true, !(var_2 & var_4.c.a), true)), true);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_2(true, u_input.a, Struct_1(_wgslsmith_mult_i32(abs(22303i), max(u_input.b.x, u_input.b.x)) != arg_1.x, true));
    let var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(31769u, 27637u, _wgslsmith_mult_u32(36416u, 30481u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(73492u, 1u, 19842u, 4233u), vec4<u32>(7192u, 27118u, 44144u, 40374u)) % 32u), 0u), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 0u, 9286u, 29461u)), select(vec4<u32>(113465u, 31625u, 33220u, 4294967295u), vec4<u32>(4294967295u, 972u, 10049u, 1u), vec4<bool>(var_0.a, false, var_0.a, false))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    var var_2 = ~(~94505u);
    let var_3 = select(vec3<bool>(any(!(!vec2<bool>(var_0.a, false))), true, var_0.a), func_4(func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 14621u), var_1.xy)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(148f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -983f)))), var_0.a);
    let var_4 = ~firstTrailingBit(abs(select(vec2<i32>(17478i, arg_1.x), ~u_input.b, select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, true), var_3.xx))));
    return Struct_4(func_2(~var_1.wz).d.a, Struct_3(var_0.c), vec2<u32>(45310u, ~(~var_1.x) & var_1.x), ~(-2147483647i), func_2(vec2<u32>(4294967295u, 0u)).a);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) + -782f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1635f)) + -264f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(306f, _wgslsmith_f_op_f32(sign(-1585f))) + vec2<f32>(-597f, -1245f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1694f, 520f) * vec2<f32>(534f, -1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(171f, 1168f))), vec2<bool>(arg_3, arg_3))))), vec2<bool>(true, any(!func_4(Struct_5(Struct_2(false, 2147483647i, Struct_1(arg_3, false)), vec2<f32>(940f, 1219f), arg_0.e.c, arg_0), vec2<f32>(441f, 293f))))));
    let var_1 = func_2(~(~vec2<u32>(~0u, 39412u))).d;
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 127f)));
    var_2 = ~(-13284i);
    return var_1.b.a.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 0i, -21663i), vec3<i32>(-11217i, 33670i, 58078i))).e.a && true, func_4(func_2(min(vec2<u32>(1u, 1u), vec2<u32>(29044u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + vec2<f32>(arg_1.x, -101f)) + _wgslsmith_f_op_vec2_f32(arg_1.xy - vec2<f32>(382f, arg_1.x))))).x, false, false);
    let var_1 = reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(68133u, 24129u, 40882u, 92630u)) | vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 5525u)), _wgslsmith_dot_vec2_u32(func_2(vec2<u32>(1u, 30157u)).d.c, _wgslsmith_add_vec2_u32(vec2<u32>(23737u, 1u), vec2<u32>(85288u, 12240u))), ~0u));
    var_0 = select(!select(select(select(vec4<bool>(var_0.x, var_0.x, true, arg_0.a), vec4<bool>(arg_0.b, true, true, false), vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(true, true, arg_0.a, var_0.x), !vec4<bool>(true, var_0.x, false, true)), !(!vec4<bool>(var_0.x, false, false, false)), vec4<bool>(!arg_0.a, !var_0.x, true, !var_0.x)), vec4<bool>(!(true && var_0.x), any(!(!vec4<bool>(arg_0.a, arg_0.a, false, false))), var_0.x || false, false), vec4<bool>(var_0.x, var_0.x, (~64699u >= ~var_1.x) && true, all(!select(vec4<bool>(false, false, arg_0.b, var_0.x), vec4<bool>(var_0.x, true, true, arg_0.a), var_0.x))));
    var var_2 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-69114i), _wgslsmith_dot_vec2_i32(-vec2<i32>(10195i, 2147483647i), select(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b, arg_0.b))), vec2<i32>(2147483647i, _wgslsmith_mult_i32(i32(-1i) * -1i, -u_input.b.x))), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, abs(u_input.b.x), countOneBits(abs(u_input.a))), _wgslsmith_mod_i32(func_3(vec4<bool>(false, var_0.x, false, var_0.x), Struct_2(true, -7755i, Struct_1(var_0.x, true)), Struct_5(Struct_2(arg_0.b, -2147483647i, Struct_1(arg_0.b, true)), arg_1.zx, Struct_1(false, false), Struct_4(Struct_3(Struct_1(false, true)), Struct_3(arg_0), var_1.xz, u_input.b.x, Struct_2(arg_0.a, 33673i, Struct_1(true, true))))), -1i) & _wgslsmith_mult_i32(u_input.a & u_input.a, 79908i)));
    var_2 = -select(u_input.b << (func_2(vec2<u32>(42753u, var_1.x) | var_1.yx).d.c % vec2<u32>(32u)), -abs(vec2<i32>(u_input.a, -1i)), func_2(vec2<u32>(var_1.x | var_1.x, ~var_1.x)).d.a.a.b);
    return Struct_1(arg_0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f + _wgslsmith_f_op_f32(-750f - 1349f))), _wgslsmith_f_op_f32(step(-2881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 434f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(259f, -1403f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, _wgslsmith_f_op_f32(-546f * -290f), 147f))));
    var var_1 = Struct_3(func_6(Struct_1(func_5(func_1(var_0.x, vec3<i32>(u_input.a, -25133i, 2879i)), firstTrailingBit(1u), u_input.a, -964f > var_0.x), any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(448f, -1000f, var_0.x), var_0, vec3<bool>(false, false, true)))) - var_0)));
    var var_2 = vec2<bool>(1u != ~firstTrailingBit(func_1(var_0.x, vec3<i32>(-22621i, u_input.a, u_input.a)).c.x), all(select(!select(vec4<bool>(var_1.a.a, false, false, var_1.a.b), vec4<bool>(var_1.a.a, var_1.a.a, true, var_1.a.b), var_1.a.a), select(vec4<bool>(true, var_1.a.a, false, true), select(vec4<bool>(false, var_1.a.a, false, false), vec4<bool>(var_1.a.b, var_1.a.b, true, var_1.a.a), var_1.a.b), select(true, var_1.a.a, false)), !(u_input.a <= u_input.a))));
    let var_3 = func_2(vec2<u32>(~1u, _wgslsmith_add_u32(1u, ~63856u))).a.c;
    let var_4 = reverseBits(_wgslsmith_mod_vec4_i32(firstLeadingBit(firstLeadingBit(-vec4<i32>(-1i, -9034i, u_input.b.x, u_input.a))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(9726i, 1i, 0i, u_input.b.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -6716i, 0i, -59561i), vec4<i32>(-35048i, u_input.a, u_input.b.x, 14049i))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(385f, func_2(firstLeadingBit(vec2<u32>(0u, 0u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_2(vec2<u32>(4364u, 13688u)).b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-3401f)), 1f))), vec4<i32>(~1i, u_input.b.x, reverseBits(u_input.b.x), firstLeadingBit(var_4.x)) | ~_wgslsmith_mult_vec4_i32(~vec4<i32>(89482i, 0i, u_input.b.x, 1i), min(vec4<i32>(var_4.x, -66173i, -2147483647i, -1i), var_4)));
}

