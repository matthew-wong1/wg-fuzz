struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(731f, 380f, -338f);

var<private> global1: array<vec2<f32>, 10>;

var<private> global2: f32 = -2179f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.b;
    var var_1 = 4294967295u;
    var var_2 = Struct_2(Struct_1(~(~(~vec3<u32>(u_input.d, 1411u, 4294967295u))), countOneBits(~vec2<u32>(u_input.d, u_input.d)), false, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), select(all(vec3<bool>(true, true, true)), true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)))), !vec3<bool>(false, true, all(vec4<bool>(true, true, true, true))));
    global2 = global0.x;
    global1 = array<vec2<f32>, 10>();
    return select(select(vec4<bool>(465f < _wgslsmith_f_op_f32(exp2(global0.x)), any(var_2.c), all(vec3<bool>(var_2.b, false, false)), !var_2.a.c), var_2.a.d, true), select(select(vec4<bool>(false, true, false, var_2.a.d.x), !vec4<bool>(var_2.b, var_2.c.x, false, false), var_2.a.d), var_2.a.d, var_2.a.d), true);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = !all(vec3<bool>(any(vec2<bool>(true, arg_2.c.b)), !arg_2.b.d.x, arg_1.a.c)) & false;
    let var_1 = select(!arg_1.b.d.zzw, select(vec3<bool>(arg_1.c.b, false, true), select(arg_1.a.d.wyz, !func_3().wyw, !(false || arg_0)), arg_2.c.c.x), !all(arg_1.c.a.d));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + -948f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) - _wgslsmith_f_op_f32(sign(1000f))), -450f, _wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(-global0.x)))));
    var var_3 = abs((select(vec4<u32>(20917u, arg_1.c.a.a.x, arg_1.a.a.x, 8432u), vec4<u32>(0u, arg_2.a.b.x, 25585u, 1u), arg_2.b.d) << (vec4<u32>(0u, arg_1.b.a.x, arg_2.c.a.a.x, 3728u) % vec4<u32>(32u))) & ~vec4<u32>(u_input.d, 1u, u_input.d, arg_2.a.a.x)) | _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 78481u, u_input.d, 88556u), ~vec4<u32>(arg_2.a.b.x, 4941u, 0u, 14396u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, arg_2.c.a.b.x, u_input.d, u_input.d), vec4<u32>(u_input.d, 954u, 0u, arg_2.b.b.x))));
    let var_4 = _wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.b, reverseBits(-1i), u_input.a, 1i)), vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, 15177i), vec3<i32>(3196i, u_input.a, u_input.b))) | u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, u_input.a), vec4<i32>(1i, u_input.c, -1i, 29710i)), ~vec4<i32>(-1i, u_input.a, 30489i, u_input.b)), vec4<i32>(u_input.c | u_input.b, u_input.c, u_input.c, -17515i >> (arg_2.a.a.x % 32u))), u_input.a, -9358i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_2.xyz, var_2.yxz)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec3<u32> {
    global1 = array<vec2<f32>, 10>();
    var var_0 = any(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), true))));
    var var_1 = _wgslsmith_f_op_f32(sign(global0.x));
    global1 = array<vec2<f32>, 10>();
    global0 = _wgslsmith_f_op_vec3_f32(func_4(all(vec3<bool>(true, false, global0.x == _wgslsmith_f_op_f32(-global0.x))), Struct_3(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d, 65750u), vec3<u32>(3440u, u_input.d, u_input.d)) >> (vec3<u32>(14779u, 1u, 6565u) % vec3<u32>(32u)), _wgslsmith_mult_vec2_u32(~arg_0, select(vec2<u32>(u_input.d, 1u), vec2<u32>(23328u, arg_0.x), false)), global0.x > -771f, func_3()), Struct_1(vec3<u32>(arg_0.x, abs(0u), _wgslsmith_sub_u32(u_input.d, u_input.d)), vec2<u32>(firstLeadingBit(1u), u_input.d), true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), Struct_2(Struct_1(~vec3<u32>(4294967295u, u_input.d, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(34590u, 4299u), arg_0), true, select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false)), all(vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), Struct_3(Struct_1(select(vec3<u32>(u_input.d, 6088u, 436u) << (vec3<u32>(arg_0.x, 7002u, 0u) % vec3<u32>(32u)), ~vec3<u32>(arg_0.x, arg_0.x, 43460u), select(false, true, true)), vec2<u32>(abs(35967u), 4294967295u), any(vec4<bool>(false, true, true, true)), vec4<bool>(true, true, any(vec2<bool>(false, false)), true)), Struct_1(~abs(vec3<u32>(0u, 12195u, arg_0.x)), firstTrailingBit(select(arg_0, vec2<u32>(33555u, 4540u), vec2<bool>(false, false))), true, vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, true)), Struct_2(Struct_1(vec3<u32>(0u, arg_0.x, 1u) ^ vec3<u32>(u_input.d, 0u, arg_0.x), arg_0, any(vec4<bool>(true, false, false, true)), func_3()), false, vec3<bool>(true, true, true)))));
    return ~vec3<u32>(16550u, u_input.d | ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(4294967295u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 51068u, max(4294967295u, 0u)), ~vec3<u32>(4294967295u, u_input.d, u_input.d)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(~(~func_2(vec2<u32>(43520u, 0u), vec4<i32>(u_input.b, 2147483647i, u_input.a, u_input.b)))), select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, 1u), vec2<u32>(49760u, u_input.d)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_1) & vec2<u32>(arg_1, arg_1), select(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.d), arg_3.x)) % vec2<u32>(32u)), func_2(~vec2<u32>(arg_1, 0u), vec4<i32>(2147483647i, -2147483647i, 2147483647i, 20149i) >> (vec4<u32>(39755u, 22925u, u_input.d, 677u) % vec4<u32>(32u))).zy & ~vec2<u32>(arg_1, arg_1), !func_3().x), false, func_3());
    let var_1 = reverseBits(vec3<u32>(reverseBits(firstTrailingBit(~19805u)), 0u, ~(u_input.d ^ arg_1)));
    var var_2 = vec3<u32>(var_1.x, _wgslsmith_add_u32(var_1.x, ~_wgslsmith_mult_u32(u_input.d, _wgslsmith_div_u32(24776u, arg_1))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.d, var_0.a.x), _wgslsmith_mod_u32(~var_1.x, ~16073u)) | _wgslsmith_add_u32(arg_1, ~(0u ^ u_input.d)));
    var_0 = Struct_1(var_0.a, var_2.xy, true, !(!(!arg_3)));
    var var_3 = Struct_3(Struct_1(var_0.a, vec2<u32>(arg_1, arg_1), all(vec4<bool>(any(arg_3), true, global0.x > global0.x, true)), var_0.d), Struct_1(var_1, vec2<u32>(_wgslsmith_add_u32(var_1.x, var_2.x), 33498u), true, var_0.d), Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(~var_0.a, var_0.a, var_1), countOneBits(var_1.yy), arg_0, vec4<bool>(var_0.c, all(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)), true, !arg_2)), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, 2147483647i), u_input.b) <= (_wgslsmith_mult_i32(84939i, u_input.a) >> (_wgslsmith_mod_u32(95885u, arg_1) % 32u)), !arg_3.yyy));
    return Struct_1(func_2(select(~_wgslsmith_mult_vec2_u32(var_0.a.yy, var_1.xx), ~var_3.b.b, !var_0.d.wy), select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -12157i, u_input.c, -2147483647i), vec4<i32>(u_input.a, u_input.b, u_input.a, 1164i)), 1i, u_input.b, u_input.b), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, -465i, u_input.b, u_input.a), vec4<i32>(0i, -2147483647i, -1i, 2147483647i), vec4<bool>(var_0.c, true, arg_0, arg_2)), ~vec4<i32>(u_input.b, 5173i, -28172i, u_input.c)), vec4<bool>(func_3().x, var_0.c || false, var_3.c.a.c, arg_0))), var_3.b.b, true, arg_3);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<f32> {
    global1 = array<vec2<f32>, 10>();
    var var_0 = Struct_2(arg_0, false, arg_1.d.xyx);
    let var_1 = !(!vec3<bool>(true, true, all(vec3<bool>(true, var_0.c.x, arg_1.c))));
    global2 = -540f;
    let var_2 = -16946i;
    return global1[_wgslsmith_index_u32(41236u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_1(false, ~firstLeadingBit(abs(u_input.d)), true, vec4<bool>(true, global0.x == global0.x, -1i >= (-22509i ^ u_input.a), any(vec4<bool>(true, true, true, true)))), Struct_1(((vec3<u32>(u_input.d, u_input.d, u_input.d) | vec3<u32>(4294967295u, u_input.d, u_input.d)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(4138u, 82805u, 0u)) % vec3<u32>(32u))) >> (vec3<u32>(select(u_input.d, u_input.d, false), ~u_input.d, countOneBits(u_input.d)) % vec3<u32>(32u)), ~vec2<u32>(func_1(true, u_input.d, true, vec4<bool>(false, false, true, true)).b.x, u_input.d), true, !(!func_3())), vec2<u32>(abs(~(~u_input.d)), 82251u)));
    let var_1 = select(func_3(), vec4<bool>(any(vec2<bool>(all(vec2<bool>(true, false)), false)), select(false, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(0u, 3374u, 1u)) <= (u_input.d >> (1u % 32u)), any(vec2<bool>(false, true)) & true), any(func_1(45491u <= u_input.d, ~u_input.d, all(vec2<bool>(false, false)), func_1(true, u_input.d, false, vec4<bool>(true, false, true, true)).d).d.xw), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true)))), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1034f, _wgslsmith_f_op_f32(round(682f))))) >= var_0.x;
    global2 = -814f;
    let var_3 = Struct_3(Struct_1(vec3<u32>(abs(_wgslsmith_mod_u32(u_input.d, u_input.d)), func_1(var_0.x < -224f, 1u, false, !var_1).a.x, ~(~1u)), func_1(any(vec3<bool>(var_2, var_1.x, var_2)), ~1u, false, vec4<bool>(var_1.x, false, var_1.x, false)).a.zx & min(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 35236u), vec2<u32>(u_input.d, u_input.d)), vec2<u32>(3417u, 4294967295u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))), false, vec4<bool>(false, true, var_2, var_2)), Struct_1(~(~vec3<u32>(31327u, 0u, 1u)) & ~(~vec3<u32>(1u, u_input.d, u_input.d)), vec2<u32>(20286u, 46415u), (_wgslsmith_f_op_f32(min(238f, -971f)) == _wgslsmith_f_op_f32(-global0.x)) != !(18937u < u_input.d), var_1), Struct_2(func_1(_wgslsmith_add_u32(u_input.d, u_input.d) == ~24490u, 4294967295u, true & (u_input.c < -27345i), vec4<bool>(var_2, true, var_1.x, false)), select(all(vec4<bool>(true, var_1.x, true, true)), !var_1.x & any(var_1.zwx), false), !vec3<bool>(false, false, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1402f, var_0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-803f, -880f)))) + vec2<f32>(-926f, _wgslsmith_f_op_f32(-var_0.x)))), -_wgslsmith_add_i32(countOneBits(-u_input.c), _wgslsmith_add_i32(-17034i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -232f), func_2(func_1(true, ~50926u, true, select(var_3.c.a.d, var_1, vec4<bool>(var_2, var_3.c.a.d.x, var_1.x, false))).b, select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, u_input.b, u_input.b), vec4<i32>(u_input.c, u_input.a, 18861i, u_input.a)), -vec4<i32>(0i, u_input.b, -377i, 78582i), true)).x & var_3.a.b.x);
}

