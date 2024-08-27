struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), vec4<bool>(false, true, any(vec3<bool>(u_input.c != u_input.c, true, all(vec4<bool>(true, false, true, false)))), u_input.b == 1i), false);
    var_0 = !(!select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec4<bool>(var_0.x, var_0.x, true, var_0.x), all(!vec3<bool>(var_0.x, var_0.x, var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)))));
    var var_2 = -2147483647i;
    var var_3 = select(_wgslsmith_sub_vec3_u32(u_input.a, min(u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(~vec3<u32>(~4294967295u, u_input.a.x, ~34447u), ~(~(vec3<u32>(u_input.a.x, u_input.a.x, 0u) << (vec3<u32>(u_input.a.x, u_input.a.x, 36423u) % vec3<u32>(32u))))), !var_0.zxx);
    return all(vec3<bool>(any(var_0.zzx), true, !var_0.x));
}

fn func_2() -> u32 {
    let var_0 = abs(abs(vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<i32>(0i, 0i, 1i)), 2147483647i) >> (~u_input.a % vec3<u32>(32u))));
    var var_1 = Struct_2(all(vec3<bool>(true, u_input.a.x <= 80359u, true)), -abs(var_0.xy));
    var var_2 = ~select(_wgslsmith_sub_u32(u_input.a.x, abs(1u)), 102774u, !(var_1.a == false));
    let var_3 = any(select(!vec4<bool>(false | var_1.a, var_1.a, var_1.a, any(vec2<bool>(true, var_1.a))), vec4<bool>(!var_1.a || !var_1.a, var_1.a, false, var_1.a), func_3()));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
    return _wgslsmith_div_u32(~(~u_input.a.x), 130722u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32, arg_3: f32) -> Struct_3 {
    return Struct_3(vec4<u32>(countOneBits(arg_1.x), ~reverseBits(u_input.a.x), ~(~32330u), _wgslsmith_sub_u32(abs(1u), (5466u & arg_1.x) ^ (u_input.a.x ^ 1u))), Struct_2(false, select(arg_0.a.yz, vec2<i32>(-2147483647i, arg_0.d.x), false)), Struct_2(true & ((61998u < arg_0.b.x) | true), _wgslsmith_sub_vec2_i32(~arg_0.a.wy, -arg_0.d) >> (((arg_1.zx | vec2<u32>(4294967295u, 19344u)) ^ max(vec2<u32>(arg_2, arg_1.x), vec2<u32>(4294967295u, arg_0.b.x))) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> Struct_4 {
    let var_0 = ~(arg_0.a.x & _wgslsmith_mult_u32(1u, ~(~arg_1.x)));
    let var_1 = arg_0.b.a;
    var var_2 = abs(select(arg_0.c.b.x, u_input.b, true));
    let var_3 = 4294967295u;
    let var_4 = 92i | _wgslsmith_add_i32(~(-56677i), _wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(1187i, -39865i, -1i)), -vec3<i32>(41357i, -2147483647i, -1i), select(vec3<bool>(arg_0.c.a, false, var_1), vec3<bool>(var_1, true, false), false)), vec3<i32>(i32(-1i) * -2147483647i, u_input.c, u_input.b)));
    return Struct_4(arg_2, Struct_1(vec4<i32>(var_4, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0.b.b.x, 2147483647i, u_input.b), var_4 ^ -37102i), -(arg_0.b.b.x << (35356u % 32u)), max(u_input.c, -39282i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.b.x, var_4, 1i, -2147483647i), vec4<i32>(u_input.b, u_input.b, var_4, var_4))), ~(arg_0.a.xw & select(vec2<u32>(arg_1.x, 1u), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, var_1))), abs(select(vec2<i32>(73265i, arg_0.b.b.x), ~arg_0.c.b, true)), arg_0.b.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(706f * 913f), _wgslsmith_div_f32(1272f, 555f), _wgslsmith_f_op_f32(-145f + arg_2))))), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 457f)))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = arg_2;
    var var_1 = func_5(func_4(Struct_1(vec4<i32>(1i, 9916i, -1i, u_input.b), vec2<u32>(57280u, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_0.c) ^ vec2<i32>(arg_0.b.d.x, 30035i), vec2<i32>(u_input.c, arg_0.c)), arg_0.b.c, _wgslsmith_f_op_vec3_f32(round(arg_0.b.e))), vec3<u32>(~(0u << (arg_3 % 32u)), arg_0.b.b.x << (38193u % 32u), _wgslsmith_mult_u32(1u, 62038u) & reverseBits(arg_0.b.b.x)), _wgslsmith_add_u32(func_2(), ~arg_3 >> (4294967295u % 32u)), -1000f), max(firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a.xz, arg_0.b.b) ^ ~vec2<u32>(arg_3, 4294967295u)), u_input.a.zx), arg_0.d.x);
    let var_2 = select(!(!select(vec2<bool>(true, true), arg_1, vec2<bool>(true, false))), arg_1, select(vec2<bool>(true, arg_1.x), arg_1, vec2<bool>(arg_2 == 0i, arg_1.x)));
    var var_3 = select(vec4<u32>(~arg_0.b.b.x, _wgslsmith_sub_u32(~54323u, (4015u >> (arg_3 % 32u)) ^ var_1.b.b.x), ~(~(var_1.b.b.x & 4294967295u)), arg_0.b.b.x), vec4<u32>(abs(~0u), 12107u, _wgslsmith_div_u32(var_1.b.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.b.b.x, 50204u), u_input.a)), abs(~1u)) << (abs(firstTrailingBit(vec4<u32>(1u, var_1.b.b.x, arg_0.b.b.x, u_input.a.x) & vec4<u32>(58901u, var_1.b.b.x, arg_0.b.b.x, 52047u))) % vec4<u32>(32u)), vec4<bool>(var_2.x, true, all(vec3<bool>(func_3(), true, all(vec2<bool>(var_2.x, true)))), any(!select(vec4<bool>(var_2.x, true, var_2.x, arg_1.x), vec4<bool>(var_2.x, arg_1.x, arg_1.x, false), vec4<bool>(var_2.x, false, false, arg_1.x)))));
    var_1 = func_5(func_4(Struct_1(abs(_wgslsmith_mult_vec4_i32(arg_0.b.a, arg_0.b.a)), vec2<u32>(arg_3, _wgslsmith_div_u32(0u, arg_3)), -arg_0.b.c, reverseBits(var_1.b.d), vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-1000f + arg_0.a), -1131f)), _wgslsmith_mult_vec3_u32(var_3.zzy, vec3<u32>(19206u, ~arg_3, 4294967295u)), _wgslsmith_sub_u32(min(_wgslsmith_mult_u32(u_input.a.x, var_1.b.b.x), ~arg_0.b.b.x), _wgslsmith_mult_u32(4294967295u, var_1.b.b.x) ^ 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1311f, _wgslsmith_f_op_f32(max(981f, var_1.d.x)), true)) * -304f)), ~abs(~vec2<u32>(69521u, var_1.b.b.x)) >> (select(~firstLeadingBit(vec2<u32>(var_3.x, 41159u)), vec2<u32>(var_3.x | var_1.b.b.x, 80385u), select(var_2, arg_1, var_2.x)) % vec2<u32>(32u)), arg_0.b.e.x);
    return ~max(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, 14000u), var_3.wxw), ~1u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7537u, u_input.a.x, 0u, arg_3), vec4<u32>(1u, var_3.x, 1u, arg_3)), var_3.x & var_1.b.b.x)), 1u);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(~select(vec4<u32>(~17225u, ~arg_0.x, 0u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 89712u, arg_0.x, 2810u), arg_0) & arg_0, true), func_4(Struct_1((vec4<i32>(u_input.b, -43000i, u_input.b, u_input.c) << (vec4<u32>(u_input.a.x, 29021u, 1768u, arg_0.x) % vec4<u32>(32u))) ^ vec4<i32>(20293i, u_input.c, 0i, 1i), u_input.a.zy, vec2<i32>(_wgslsmith_div_i32(u_input.c, 30896i), ~0i), select(~vec2<i32>(1i, -2147483647i), select(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(42303i, 1i), false), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1178f, arg_1.x, -1672f), vec3<f32>(1102f, -187f, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -780f, 323f) + vec3<f32>(arg_1.x, arg_1.x, 216f))))), arg_0.wwx, _wgslsmith_div_u32(u_input.a.x, select(17708u, 1u, true) << (u_input.a.x % 32u)), arg_1.x).b, Struct_2(any(vec3<bool>(true, select(true, false, false), true)), vec2<i32>(u_input.c, ~func_4(Struct_1(vec4<i32>(u_input.b, 1i, 0i, u_input.b), arg_0.zx, vec2<i32>(u_input.b, u_input.b), vec2<i32>(-34989i, u_input.b), vec3<f32>(arg_1.x, arg_1.x, -798f)), vec3<u32>(u_input.a.x, 0u, arg_0.x), u_input.a.x, 626f).c.b.x)));
    var_0 = Struct_3(vec4<u32>(4294967295u, 0u, 17687u, 56351u), var_0.c, var_0.b);
    var_0 = func_4(func_5(func_4(func_5(Struct_3(var_0.a, var_0.c, Struct_2(var_0.c.a, vec2<i32>(u_input.b, var_0.b.b.x))), vec2<u32>(0u, 102027u), _wgslsmith_f_op_f32(-arg_1.x)).b, var_0.a.zyx, ~arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), ~(_wgslsmith_sub_vec2_u32(arg_0.xy, var_0.a.ww) ^ min(vec2<u32>(var_0.a.x, u_input.a.x), var_0.a.wx)), 236f).b, _wgslsmith_sub_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4833u), arg_0.wyy), arg_0.zzy, arg_1.x > arg_1.x), vec3<u32>(arg_0.x, var_0.a.x << (u_input.a.x % 32u), func_2())) ^ select(_wgslsmith_clamp_vec3_u32(u_input.a, arg_0.xwy, vec3<u32>(arg_0.x, 0u, 4294967295u)), vec3<u32>(var_0.a.x, var_0.a.x, ~arg_0.x), vec3<bool>(true, any(vec4<bool>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a)), all(vec2<bool>(var_0.b.a, var_0.b.a)))), _wgslsmith_add_u32(~4294967295u, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -494f))))));
    var var_1 = countOneBits(reverseBits(arg_0.x));
    let var_2 = max(reverseBits(func_4(Struct_1(min(vec4<i32>(39987i, var_0.c.b.x, u_input.c, -1i), vec4<i32>(2147483647i, u_input.b, u_input.c, -17431i)), var_0.a.wy, min(var_0.c.b, vec2<i32>(var_0.b.b.x, 1i)), vec2<i32>(var_0.c.b.x, var_0.b.b.x) << (arg_0.ww % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-556f, -1711f, -2068f) - vec3<f32>(arg_1.x, arg_1.x, -528f))), var_0.a.wwz, ~arg_0.x, -1579f).a.xyz), vec3<u32>(min(firstTrailingBit(9213u), arg_0.x) << (u_input.a.x % 32u), max(~0u, var_0.a.x ^ 89211u) & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, arg_0.x) & vec2<u32>(6766u, var_0.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(27780u, arg_0.x), var_0.a.wx)), 16229u));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(false, any(vec4<bool>(true, true, true, true)));
    let var_1 = func_6(vec4<u32>(u_input.a.x, ~(~(u_input.a.x << (1u % 32u))), func_1(Struct_4(-1062f, Struct_1(vec4<i32>(u_input.b, u_input.b, 30102i, -1i), vec2<u32>(0u, 67766u), vec2<i32>(u_input.c, u_input.b), vec2<i32>(2147483647i, 7493i), vec3<f32>(-790f, -1708f, 413f)), -29237i, vec3<f32>(956f, 1519f, -1000f)), vec2<bool>(var_0.x, false), -38282i, u_input.a.x) | reverseBits(_wgslsmith_mult_u32(121452u, 11264u)), 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1373f, -1000f))))));
    let var_2 = func_4(Struct_1(~(~vec4<i32>(u_input.b, 1i, u_input.b, var_1.b.x) | vec4<i32>(var_1.b.x, 0i, 73719i, -4631i)), ~_wgslsmith_clamp_vec2_u32(u_input.a.zz >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(0u, 0u), abs(u_input.a.zy)), var_1.b, vec2<i32>(21915i, 1i), _wgslsmith_f_op_vec3_f32(floor(func_5(func_4(Struct_1(vec4<i32>(1i, -1i, -31563i, u_input.b), u_input.a.xx, var_1.b, var_1.b, vec3<f32>(262f, -840f, -710f)), u_input.a, u_input.a.x, -1856f), max(u_input.a.yx, vec2<u32>(45675u, 33758u)), func_5(Struct_3(vec4<u32>(4294967295u, 4294967295u, 39608u, u_input.a.x), Struct_2(var_0.x, vec2<i32>(2147483647i, u_input.b)), var_1), u_input.a.yy, -567f).b.e.x).b.e))), firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(1u, u_input.a.x)), u_input.a.x, max(u_input.a.x, ~1u))), 38299u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(863f, _wgslsmith_f_op_f32(min(-1165f, 1000f)), true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-803f))))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_clamp_i32(var_2.b.x, -var_2.b.x, -1i), vec3<f32>(func_5(Struct_3(vec4<u32>(21916u, u_input.a.x, 1u, 0u), Struct_2(false, vec2<i32>(2147483647i, 14607i)), var_1), u_input.a.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f))).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2111f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-131f + 527f), _wgslsmith_f_op_f32(trunc(-669f)))))), _wgslsmith_f_op_f32(step(-685f, _wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1552f))))));
}

