struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: vec3<f32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global0 = countOneBits(112608u);
    let var_0 = Struct_3(vec2<i32>(u_input.c.x, u_input.a.x), Struct_2(Struct_1(any(vec4<bool>(true, true, true, true)), 149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), u_input.a.x, vec4<u32>(0u | u_input.b.x, abs(u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(43572u, u_input.b.x)), ~u_input.b.x))), Struct_2(Struct_1(!all(vec2<bool>(false, true)), -387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, -254f, false))), u_input.a.x, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 22289u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, 8812u)), vec4<u32>(u_input.b.x, u_input.b.x, 24908u, u_input.b.x) & vec4<u32>(12425u, 1u, 23598u, 1u)))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - -810f), global2.x)) - var_0.b.a.c);
    var var_3 = abs(vec4<i32>(2147483647i, countOneBits(_wgslsmith_sub_i32(u_input.c.x, 1i)), -1i, var_0.b.a.d));
    return vec4<u32>(var_0.c.a.e.x, ~_wgslsmith_add_u32(~(~78976u), ~abs(var_0.b.a.e.x)), firstTrailingBit(~(0u >> (~u_input.b.x % 32u))), ~(var_0.b.a.e.x << (4294967295u % 32u)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    return Struct_3(~arg_2.xx, Struct_2(Struct_1(true, global2.x, _wgslsmith_f_op_f32(-arg_3), firstTrailingBit(_wgslsmith_mod_i32(arg_2.x, u_input.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, arg_1), ~vec4<u32>(arg_1, 4294967295u, 60504u, 68306u), func_3()))), Struct_2(Struct_1(true, 685f, _wgslsmith_f_op_f32(f32(-1f) * -1459f), select(~arg_2.x, arg_2.x, all(vec2<bool>(false, true))), select(select(vec4<u32>(arg_1, 4294967295u, 4294967295u, 2849u), vec4<u32>(0u, 5116u, 4294967295u, u_input.b.x), vec4<bool>(true, false, true, false)), ~vec4<u32>(arg_1, arg_0, 57564u, arg_0), vec4<bool>(true, true, true, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec4<u32> {
    global0 = 1u;
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(max(51076u, u_input.b.x), 1u, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_0.c.a.d, arg_2.x), arg_2.ywx), _wgslsmith_f_op_f32(-arg_0.b.a.c)).b.a.b, -1350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - 240f)))));
    var var_0 = _wgslsmith_f_op_f32(abs(global2.x));
    var_0 = _wgslsmith_f_op_f32(sign(global2.x));
    global0 = 45031u;
    return _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~arg_0.b.a.e.x, arg_3.x, func_2(arg_0.c.a.e.x, _wgslsmith_mod_u32(arg_3.x, arg_3.x), (arg_2.zyy << (vec3<u32>(1060u, arg_0.b.a.e.x, u_input.b.x) % vec3<u32>(32u))) | vec3<i32>(13963i, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x)))).c.a.e.x), arg_0.c.a.e);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = i32(-1i) * -2147483647i;
    global0 = ~_wgslsmith_add_u32(~0u, ~func_4(func_2(arg_2.x, 1u, u_input.c, 606f), !arg_0, vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), arg_1.xwx).x);
    var var_1 = arg_1.x;
    var_0 = 8402i;
    return vec3<i32>(~(-16323i & -(-1i << (arg_1.x % 32u))), -2147483647i, -(~(i32(-1i) * -u_input.a.x)));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = false;
    global1 = true;
    let var_1 = !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec3<bool>(false, true, false)), true), true));
    global0 = 1u;
    var var_2 = func_5(vec2<bool>(true, true), _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, _wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_div_u32(29343u, u_input.b.x), ~4294967295u), func_4(func_2(21942u, 48534u, vec3<i32>(-2147483647i, 28268i, 0i), arg_0), var_1, abs(vec4<i32>(u_input.c.x, u_input.a.x, -1i, 1i)), min(vec3<u32>(6826u, u_input.b.x, 78799u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 28064u) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(17098u, u_input.b.x, u_input.b.x, 47442u)) << (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), vec4<u32>(12944u, _wgslsmith_dot_vec2_u32(reverseBits(u_input.b), min(u_input.b, select(u_input.b, u_input.b, var_1))), _wgslsmith_div_u32(~u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b)), 17257u));
    return vec4<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1029f, arg_0)), -1059f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099f - arg_0) + func_2(15210u, 0u, u_input.c, -654f).b.a.c))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_5 {
    let var_0 = arg_0.x;
    var var_1 = (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(10465u, 4294967295u, 0u, 0u)) & ~vec4<u32>(1u, u_input.b.x << (u_input.b.x % 32u), ~0u, ~6675u)) ^ vec4<u32>(func_3().x, 0u, func_2(u_input.b.x, 4294967295u, abs(vec3<i32>(u_input.a.x, 2147483647i, 1i)), var_0).c.a.e.x, 52133u);
    let var_2 = arg_0.zxy;
    var var_3 = -(min(-(0i >> (0u % 32u)), abs(_wgslsmith_mult_i32(15258i, u_input.a.x))) << (func_3().x % 32u));
    var var_4 = ~(~vec3<u32>(0u, countOneBits(1u), u_input.b.x));
    return Struct_5(u_input.a.x, Struct_3(vec2<i32>(abs(_wgslsmith_div_i32(u_input.c.x, 1i)), 1i), Struct_2(func_2(u_input.b.x, u_input.b.x, u_input.c, arg_0.x).c.a), func_2(~u_input.b.x >> (_wgslsmith_add_u32(0u, u_input.b.x) % 32u), ~1u << (min(0u, var_1.x) % 32u), u_input.c, _wgslsmith_f_op_f32(round(1000f))).c));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> Struct_5 {
    var var_0 = vec4<i32>(-2147483647i, ~u_input.a.x, _wgslsmith_sub_i32(-55110i, ~1i), _wgslsmith_add_i32(max(~(-2147483647i), abs(_wgslsmith_sub_i32(9342i, 9379i))), 1i));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(848f, 816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-803f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1360f, -360f))), global2.x, all(vec4<bool>(arg_1.b.c.a.a, false, arg_1.b.c.a.a, arg_1.b.b.a.a)))), arg_1.b.c.a.b));
    var var_2 = true;
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.zzw * vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.c.zxw, arg_0.c.wwz, vec3<bool>(false, false, arg_1.b.b.a.a)))))))));
    let var_3 = arg_1.b.c.a.e.x;
    return arg_1;
}

fn func_8(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_4) -> Struct_3 {
    let var_0 = true;
    global1 = false;
    let var_1 = !select(!(!(!vec3<bool>(arg_1.b.c.a.a, true, false))), select(select(!vec3<bool>(arg_1.b.b.a.a, var_0, arg_1.b.c.a.a), select(vec3<bool>(var_0, arg_1.b.c.a.a, arg_1.b.b.a.a), vec3<bool>(true, var_0, true), false), var_0), !select(vec3<bool>(false, true, var_0), vec3<bool>(false, arg_1.b.b.a.a, arg_1.b.b.a.a), vec3<bool>(var_0, arg_1.b.b.a.a, true)), !all(vec4<bool>(false, arg_1.b.c.a.a, arg_1.b.c.a.a, false))), select(vec3<bool>(arg_1.b.c.a.a, true, arg_1.b.b.a.a && arg_1.b.b.a.a), !select(vec3<bool>(true, false, false), vec3<bool>(var_0, true, var_0), true), select(vec3<bool>(arg_1.b.b.a.a, false, true), vec3<bool>(true, var_0, arg_1.b.b.a.a), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, arg_1.b.c.a.a), vec3<bool>(var_0, arg_1.b.b.a.a, true)))));
    return Struct_3(-_wgslsmith_add_vec2_i32(min(~arg_1.b.a, arg_1.b.a), vec2<i32>(arg_0.e.x, abs(u_input.c.x))), Struct_2(arg_1.b.b.a), Struct_2(arg_1.b.c.a));
}

fn func_9(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_4 {
    let var_0 = Struct_5(u_input.c.x, Struct_3(-func_2(0u, u_input.b.x << (1u % 32u), -vec3<i32>(-2147483647i, -1i, u_input.c.x), arg_2.b.a.b).a, arg_2.c, Struct_2(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.b, arg_2.c.a.c, arg_0.x, arg_2.c.a.c))).b.b.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.xy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-168f - _wgslsmith_f_op_f32(901f - var_0.b.b.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.a.c - var_0.b.c.a.c)))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(4808u, 1u), 0u) <= _wgslsmith_sub_u32(~_wgslsmith_sub_u32(0u, u_input.b.x & u_input.b.x), reverseBits(u_input.b.x ^ 4294967295u) & u_input.b.x);
    global1 = arg_2.c.a.a;
    global2 = _wgslsmith_f_op_vec4_f32(func_1(arg_2.c.a.b)).yxy;
    return Struct_4(u_input.c.x, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -751f, 214f, 908f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-665f, var_1.x, 222f, 167f) + vec4<f32>(1186f, var_0.b.c.a.c, -1481f, arg_0.x))), vec4<f32>(152f, _wgslsmith_f_op_f32(-183f + arg_0.x), _wgslsmith_f_op_f32(floor(-972f)), var_1.x), var_2))), -u_input.c.x, -firstLeadingBit(reverseBits(vec4<i32>(u_input.a.x, var_0.b.c.a.d, var_0.b.a.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * 266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(288f, global2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-572f + global2.x), -226f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1080f, global2.x, global2.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(663f, 876f, 1018f) + vec3<f32>(global2.x, global2.x, 303f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, -532f, global2.x)), vec3<bool>(true, true, true))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true)), func_8(Struct_4(firstLeadingBit(-2147483647i), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1995f, global2.x, -2117f, global2.x) * vec4<f32>(-160f, global2.x, -508f, -511f)) + vec4<f32>(709f, -914f, 507f, 1115f)), select(0i, u_input.a.x, true), vec4<i32>(-u_input.a.x, u_input.c.x, 44272i, u_input.a.x)), func_7(Struct_4(0i, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, global2.x, -1173f, global2.x)), -1i & u_input.c.x, ~vec4<i32>(u_input.a.x, 3366i, 39039i, u_input.a.x)), func_6(_wgslsmith_f_op_vec4_f32(func_1(487f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -357f))), Struct_4(~4109i, max(-vec2<i32>(6080i, 17042i), ~vec2<i32>(u_input.c.x, 2147483647i)), vec4<f32>(global2.x, _wgslsmith_f_op_f32(max(global2.x, global2.x)), global2.x, 1016f), -abs(67965i), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a.x, 21049i, 10762i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, -2147483647i)))), false);
    global2 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(exp2(global2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-539f + global2.x), func_6(_wgslsmith_f_op_vec4_f32(-var_0.c)).b.c.a.b) + global2.x));
    let var_1 = func_7(Struct_4(82576i, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.xz, vec2<i32>(2147483647i, u_input.a.x)) | func_6(var_0.c).b.a, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(global2.x * var_0.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))), ~max(~0i, reverseBits(var_0.b.x)), abs(vec4<i32>(_wgslsmith_mod_i32(-21044i, var_0.a), var_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.d), var_0.b), _wgslsmith_div_i32(1i, 1i)))), Struct_5(1i, func_8(func_9(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-142f, 1118f, 681f), vec3<f32>(global2.x, 679f, 1142f), true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), Struct_3(var_0.e.wx, Struct_2(Struct_1(false, var_0.c.x, global2.x, u_input.c.x, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u))), Struct_2(Struct_1(true, var_0.c.x, var_0.c.x, -67751i, vec4<u32>(0u, 4294967295u, 1802u, u_input.b.x)))), true), Struct_5(0i, func_6(var_0.c).b), Struct_4(u_input.c.x, var_0.e.wy, func_9(var_0.c.wzx, vec4<bool>(false, false, false, false), Struct_3(vec2<i32>(var_0.a, -77077i), Struct_2(Struct_1(false, var_0.c.x, 389f, var_0.b.x, vec4<u32>(29144u, 1041u, u_input.b.x, 0u))), Struct_2(Struct_1(true, 266f, 422f, u_input.a.x, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 40100u)))), false).c, 6458i, -vec4<i32>(2147483647i, var_0.d, 2147483647i, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)));
    var var_2 = 21722i;
    let var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(func_8(Struct_4(var_0.a, var_0.b, var_0.c, var_0.a, var_0.e), func_7(Struct_4(1i, vec2<i32>(var_1.b.c.a.d, var_1.b.b.a.d), var_0.c, 0i, vec4<i32>(var_1.a, 74674i, var_1.b.c.a.d, var_1.b.b.a.d)), var_1, 489f), Struct_4(1i, var_1.b.a, vec4<f32>(508f, 1990f, -582f, var_1.b.b.a.b), var_0.d, var_0.e)).c.a.e.x, ~(u_input.b.x >> (18304u % 32u)), u_input.b.x)), func_4(var_1.b, select(select(vec2<bool>(var_1.b.b.a.a, var_1.b.c.a.a), vec2<bool>(false, false), vec2<bool>(var_1.b.b.a.a, var_1.b.c.a.a)), select(vec2<bool>(var_1.b.b.a.a, true), vec2<bool>(true, var_1.b.b.a.a), vec2<bool>(true, true)), vec2<bool>(false, var_1.b.b.a.a)), vec4<i32>(2018i, _wgslsmith_clamp_i32(-37613i, var_1.a, var_1.b.a.x), max(var_0.d, u_input.a.x), var_0.d), var_1.b.b.a.e.zxz).wyx & ~vec3<u32>(~1u, firstLeadingBit(var_1.b.c.a.e.x), ~0u));
    let var_4 = var_1.b.b.a.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}

