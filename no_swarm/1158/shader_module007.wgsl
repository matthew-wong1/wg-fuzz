struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true), Struct_1(9055i, 12991u, vec3<bool>(false, false, true), vec3<f32>(136f, 113f, 877f)), true);

var<private> global1: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = select(global0.c.c, !(!select(global0.c.c, !vec3<bool>(false, true, global0.d), arg_1.c)), arg_1.c);
    var var_1 = Struct_2(~arg_2.zw, select(!arg_1.c.zx, select(select(vec2<bool>(arg_0.c.x, arg_1.c.x), select(vec2<bool>(arg_0.c.x, global0.c.c.x), vec2<bool>(false, true), vec2<bool>(arg_1.c.x, arg_1.c.x)), arg_0.c.x), select(vec2<bool>(true, arg_0.c.x), vec2<bool>(var_0.x, true), all(vec2<bool>(true, false))), var_0.x), vec2<bool>(true, arg_0.c.x)), global0.c, false);
    var var_2 = Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(arg_2.xz, arg_3), vec2<bool>(!any(arg_0.c.xz), var_1.d), Struct_1(_wgslsmith_mod_i32(-var_1.c.a, arg_0.a), u_input.a, var_1.c.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1677f, -516f, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(var_1.c.d + var_1.c.d))), false), arg_2, vec2<bool>(!arg_1.c.x, true), -(i32(-1i) * -reverseBits(arg_1.a)), true);
    var var_3 = arg_1.c;
    let var_4 = Struct_1(arg_0.a, u_input.b, var_1.c.c, arg_1.d);
    return _wgslsmith_mult_u32(arg_3.x & _wgslsmith_mult_u32(min(~var_1.c.b, global1.x), 82012u), min(0u, arg_2.x));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_2 {
    global1 = vec2<u32>(~4294967295u, 79596u);
    let var_0 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(29609u, global0.a.x, global1.x), (vec3<u32>(0u, 33633u, 50488u) << (vec3<u32>(4294967295u, global1.x, u_input.b) % vec3<u32>(32u))) & ~vec3<u32>(global0.c.b, 25381u, global1.x), vec3<u32>(_wgslsmith_mod_u32(global1.x, 1u), select(88840u, 48432u, arg_3.x), 11435u)));
    let var_1 = Struct_2(global0.a, arg_3, Struct_1(_wgslsmith_add_i32(i32(-1i) * -2147483647i, min(_wgslsmith_dot_vec2_i32(arg_2, arg_2), -arg_2.x)), (~var_0.x >> (1u % 32u)) ^ 42642u, !vec3<bool>(global0.c.c.x, false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.c.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2731f, global0.c.d.x, arg_0) + vec3<f32>(-604f, 266f, arg_1.x)), false)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -587f, 582f) - vec3<f32>(-976f, global0.c.d.x, arg_0))))), arg_3.x & !(func_3(global0.c, global0.c, vec4<u32>(u_input.a, var_0.x, 1u, 1u), vec2<u32>(u_input.a, 1u)) > _wgslsmith_add_u32(17130u, 1u)));
    let var_2 = select(vec3<u32>(func_3(var_1.c, Struct_1(global0.c.a, 20863u, var_1.c.c, global0.c.d), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.a.x, 63227u, global0.c.b), vec4<u32>(0u, 771u, global0.a.x, global1.x)), vec2<u32>(var_0.x, 37763u)) >> (1u % 32u), 4294967295u, ~101414u), vec3<u32>(var_1.a.x, 108306u, ~global0.c.b >> (~var_0.x % 32u)), global0.d);
    let var_3 = u_input.b;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = vec4<u32>(countOneBits(32258u), firstLeadingBit(~arg_2.a.x), 0u, 4294967295u);
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(127f, global0.c.d.x), _wgslsmith_f_op_f32(1745f * -963f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.d.x), _wgslsmith_f_op_f32(abs(arg_0.c.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d.x - global0.c.d.x)), global0.c.d.x), countOneBits(vec2<i32>(arg_2.c.a, arg_0.c.a) ^ vec2<i32>(arg_0.c.a, arg_2.c.a)) << ((vec2<u32>(arg_2.a.x, 4294967295u) & _wgslsmith_div_vec2_u32(arg_2.a, var_0.yy)) % vec2<u32>(32u)), !arg_2.b), countOneBits(var_0), func_2(arg_2.c.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.d.yz), _wgslsmith_f_op_vec2_f32(global0.c.d.yy - vec2<f32>(-1000f, arg_2.c.d.x)))), vec2<i32>(_wgslsmith_clamp_i32(arg_0.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(38606i, 42315i)), ~arg_2.c.a), abs(-14952i)), vec2<bool>(arg_2.c.a > -39905i, arg_1)).b, _wgslsmith_div_i32(-3670i, 1i) >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(var_0.yx, vec2<u32>(4294967295u, arg_2.c.b)), ~(~vec2<u32>(global0.a.x, 0u))) % 32u), true);
    var var_2 = abs(~(vec3<i32>(_wgslsmith_sub_i32(2147483647i, var_1.d), _wgslsmith_mod_i32(-13218i, global0.c.a), arg_0.c.a) & -vec3<i32>(arg_2.c.a, 48589i, var_1.d)));
    var_2 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(15670i, global0.c.a), abs(var_2.xz)), abs(-var_1.a.c.a), ~13081i), func_2(140f, vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.d.x)), _wgslsmith_f_op_f32(-arg_0.c.d.x)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_2.c.a), var_2.zz)), !global0.b).c.a), firstTrailingBit(abs(1i)), -_wgslsmith_mod_i32(select(arg_2.c.a, arg_2.c.a, true) ^ ~arg_0.c.a, -1i));
    var var_3 = select(select(vec3<bool>(true, arg_2.c.c.x, true), !func_2(global0.c.d.x, var_1.a.c.d.yy, -vec2<i32>(1i, arg_0.c.a), var_1.c).c.c, var_1.a.b.x), select(select(!vec3<bool>(var_1.e, false, true), !arg_2.c.c, var_1.a.c.c), var_1.a.c.c, func_2(_wgslsmith_f_op_f32(1f * var_1.a.c.d.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.c.d.yx))), var_2.xz, arg_2.c.c.xy).c.c.x), var_1.a.c.c);
    return var_1.a.a.x;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(max(global1.x, global1.x), _wgslsmith_mult_u32(global0.c.b, global0.a.x), reverseBits(1u)), 82601u) & 84802u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.d.yx));
    return Struct_2(_wgslsmith_mod_vec2_u32((vec2<u32>(arg_3.x, 4294967295u) ^ abs(vec2<u32>(global1.x, 4294967295u))) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(0u, global1.x), vec2<u32>(350u, global0.a.x)) % vec2<u32>(32u)), ~(~vec2<u32>(4294967295u, arg_1.a.x))), !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.d.x, arg_1.c.d.x))), global0.c.d.yz, max(-vec2<i32>(arg_1.c.a, global0.c.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c.a, global0.c.a), vec2<i32>(global0.c.a, arg_1.c.a))), vec2<bool>(global0.b.x && global0.d, true)).b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f - var_1.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1104f, global0.c.d.x), _wgslsmith_div_f32(603f, var_1.x)))), -_wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i, arg_1.c.a), vec2<i32>(global0.c.a, global0.c.a), true), countOneBits(vec2<i32>(1i, global0.c.a))), !global0.c.c.xy).c, !(u_input.b < global1.x));
}

fn func_1() -> vec2<i32> {
    global0 = func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(func_4(func_2(global0.c.d.x, vec2<f32>(global0.c.d.x, 392f), vec2<i32>(global0.c.a, 1i), vec2<bool>(true, true)), true, func_2(global0.c.d.x, vec2<f32>(391f, -2463f), vec2<i32>(1i, 0i), global0.b)), u_input.b, 4294967295u, ~abs(global0.a.x)), ~firstLeadingBit(vec4<u32>(global0.c.b, 24952u, global1.x, global1.x))), Struct_2(~global0.a, select(vec2<bool>(!global0.d, false), select(vec2<bool>(global0.c.c.x, true), func_2(-809f, global0.c.d.zx, vec2<i32>(global0.c.a, -25086i), vec2<bool>(global0.b.x, true)).c.c.zz, global0.c.c.zy), true & all(vec3<bool>(global0.b.x, false, global0.b.x))), func_2(_wgslsmith_div_f32(-1332f, 166f), vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.c.d.x)), _wgslsmith_f_op_f32(-1137f * global0.c.d.x)), countOneBits(vec2<i32>(global0.c.a, -18884i)) & _wgslsmith_div_vec2_i32(vec2<i32>(global0.c.a, 1i), vec2<i32>(global0.c.a, -2314i)), global0.c.c.zz).c, global0.c.c.x), Struct_4(any(global0.c.c), global0.c.c.x), _wgslsmith_div_vec4_u32(abs(vec4<u32>(119680u << (global1.x % 32u), ~global0.c.b, abs(global1.x), select(u_input.a, global1.x, global0.c.c.x))), firstLeadingBit(vec4<u32>(72847u & global1.x, _wgslsmith_mod_u32(global1.x, 8181u), _wgslsmith_clamp_u32(global0.a.x, 0u, 34382u), 1u))));
    return _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(min(8402i, global0.c.a), firstTrailingBit(-2147483647i)) >> (vec2<u32>(global1.x, _wgslsmith_clamp_u32(global1.x, 22814u, u_input.a)) % vec2<u32>(32u))), ~vec2<i32>(-_wgslsmith_clamp_i32(global0.c.a, 1i, global0.c.a), ~_wgslsmith_div_i32(global0.c.a, -26094i)));
}

fn func_6(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    let var_0 = Struct_3(func_2(1277f, _wgslsmith_f_op_vec2_f32(exp2(global0.c.d.zy)), firstLeadingBit(~(-arg_0)), global0.c.c.yy), ~min(firstTrailingBit(vec4<u32>(arg_1, global0.c.b, arg_1, arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b, 59780u, arg_1), vec4<u32>(34794u, arg_1, 4294967295u, u_input.b))) & ~min(countOneBits(vec4<u32>(arg_1, 1u, 3976u, u_input.a)), max(vec4<u32>(4294967295u, global0.a.x, 10256u, 1825u), vec4<u32>(2984u, global1.x, global0.a.x, global1.x))), vec2<bool>(select(_wgslsmith_clamp_i32(6687i, 1i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(4694i, arg_0.x), arg_0), arg_1 > u_input.a) != arg_0.x, (arg_0.x != ~arg_0.x) && (global0.c.a > global0.c.a)), ~arg_0.x, _wgslsmith_div_i32(44014i & global0.c.a, ~1i) < countOneBits(~(~15638i)));
    var var_1 = var_0.a.c.d.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1106f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(1581f - global0.c.d.x)))) + _wgslsmith_f_op_f32(var_0.a.c.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.d.x, 1000f)))));
    var var_2 = max(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.a.c.a, _wgslsmith_div_i32(arg_0.x, -11272i), global0.c.a), firstLeadingBit(vec3<i32>(arg_0.x, var_0.a.c.a, func_2(-458f, global0.c.d.xz, vec2<i32>(arg_0.x, -28893i), var_0.a.c.c.zz).c.a))), -vec3<i32>(1i, -(~11054i), -arg_0.x));
    let var_3 = _wgslsmith_f_op_f32(var_0.a.c.d.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d.x) - -1197f))));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-916f, 1202f)) * _wgslsmith_f_op_f32(var_0.a.c.d.x * global0.c.d.x))))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(380f - global0.c.d.x)))) + _wgslsmith_div_f32(global0.c.d.x, global0.c.d.x)));
    var var_1 = global0.c.a ^ ~0i;
    let var_2 = vec4<i32>(global0.c.a, func_6(func_1(), global0.a.x), (i32(-1i) * -func_6(vec2<i32>(-33220i, 18098i), 40876u)) ^ global0.c.a, 34085i);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(global0.c.d));
    var var_4 = func_5(_wgslsmith_div_u32(~_wgslsmith_add_u32(func_5(64039u, Struct_2(vec2<u32>(1u, 76277u), global0.b, global0.c, true), Struct_4(true, global0.b.x), vec4<u32>(30809u, 28564u, 0u, u_input.a)).c.b, firstLeadingBit(global1.x)), 29312u), Struct_2(global0.a, select(vec2<bool>(true, true), func_5(~u_input.a, Struct_2(vec2<u32>(4294967295u, 11432u), vec2<bool>(global0.c.c.x, global0.c.c.x), global0.c, global0.b.x), Struct_4(false, false), firstTrailingBit(vec4<u32>(global0.c.b, 0u, global1.x, 0u))).c.c.zy, func_5(93455u, Struct_2(global0.a, vec2<bool>(true, global0.b.x), Struct_1(-2147483647i, 1u, vec3<bool>(global0.c.c.x, global0.c.c.x, false), global0.c.d), false), Struct_4(global0.d, global0.c.c.x), vec4<u32>(global1.x, u_input.b, global1.x, 1701u)).b), func_2(var_0, _wgslsmith_f_op_vec2_f32(-func_2(var_0, vec2<f32>(var_0, var_3.x), vec2<i32>(var_2.x, 2147483647i), vec2<bool>(global0.d, global0.c.c.x)).c.d.zz), -min(var_2.yx, vec2<i32>(-47218i, 2147483647i)), global0.c.c.zx).c, false), Struct_4(false, !(!global0.c.c.x)), vec4<u32>(global0.c.b, 1u, 16267u, firstLeadingBit(global0.c.b)));
    var var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.a, var_4.c.a << (63127u % 32u)), ~_wgslsmith_mod_vec2_i32(var_2.zz, -var_2.ww) | var_2.yx);
    var_5 = _wgslsmith_dot_vec3_i32(var_2.xwy, vec3<i32>(-2147483647i, _wgslsmith_add_i32(-var_4.c.a, 33695i), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, global0.c.a, global0.c.a), var_2))));
    var var_6 = vec2<u32>(3080u, min(0u, func_4(func_5(4294967295u, func_2(var_0, vec2<f32>(-1278f, global0.c.d.x), var_2.xw, global0.b), Struct_4(global0.c.c.x, global0.c.c.x), ~vec4<u32>(0u, 4294967295u, global1.x, 76809u)), any(!vec2<bool>(var_4.b.x, false)), func_2(-1000f, global0.c.d.xz, -var_2.zy, global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))))), global0.c.d.x), _wgslsmith_f_op_f32(max(var_0, var_0)), vec2<i32>(~(-2147483647i), select(global0.c.a, _wgslsmith_clamp_i32(var_4.c.a, ~var_2.x, 0i), func_2(-1641f, vec2<f32>(1703f, global0.c.d.x), vec2<i32>(var_2.x, global0.c.a), func_5(var_6.x, Struct_2(global0.a, var_4.c.c.zy, var_4.c, true), Struct_4(var_4.c.c.x, false), vec4<u32>(97815u, 1u, 1u, var_4.c.b)).c.c.yx).d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.d.x))));
}

