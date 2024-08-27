struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(false, Struct_1(true), Struct_1(true)), Struct_2(true, Struct_1(true), Struct_1(true)), vec3<f32>(269f, 826f, -539f));

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, -11706i, -1i);

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, 113f, arg_0.d, global0.c.x), vec4<f32>(-861f, 1000f, -663f, global0.c.x), global0.b.b.a)) + _wgslsmith_div_vec4_f32(arg_1, arg_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, 561f, false)), 720f, global0.c.x, 597f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, arg_0.d, -570f, global0.c.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(global0.c.x, -1219f), _wgslsmith_f_op_f32(exp2(arg_0.d)), _wgslsmith_f_op_f32(-194f - -1460f))), any(vec2<bool>(!arg_0.b.a, !any(vec2<bool>(global0.b.b.a, global0.a.c.a))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1, vec4<f32>(arg_1.x, -397f, arg_1.x, 369f)))), arg_1))));
    global1 = ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-20446i, arg_3.x, arg_3.x, global1.x & arg_3.x), firstLeadingBit(~vec4<i32>(global1.x, global1.x, 17295i, arg_3.x)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 0i, 22931i), vec4<i32>(arg_3.x, u_input.b.x, global1.x, -1i)))));
    global0 = Struct_3(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_div_f32(var_0.x, -1903f))), arg_1.x, _wgslsmith_f_op_f32(trunc(722f))), _wgslsmith_f_op_vec3_f32(global0.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) + var_0.xwz)))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))), Struct_3(Struct_2(any(vec3<bool>(arg_0.b.a, arg_0.b.a, true)), Struct_1(!arg_2), Struct_1(arg_0.b.a)), global0.a, _wgslsmith_f_op_vec3_f32(-arg_1.ywx)));
    return arg_0.c.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = abs(~vec2<u32>(_wgslsmith_add_u32(func_3(Struct_4(vec4<u32>(4294967295u, 28287u, u_input.c.x, u_input.c.x), global0.a.c, vec3<u32>(u_input.c.x, 1u, u_input.a), global0.c.x), vec4<f32>(646f, global0.c.x, global0.c.x, global0.c.x), false, arg_0.xz), 11989u), ~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)));
    var_0 = vec2<u32>(0u, 2849u);
    var_0 = u_input.c;
    var var_1 = Struct_5(global0.c.x, Struct_3(Struct_2(any(vec2<bool>(false, false)), Struct_1(!global2.b.a), Struct_1(any(vec2<bool>(false, global0.a.c.a)))), Struct_2(global0.a.c.a, Struct_1(global2.b.a), Struct_1(all(vec2<bool>(true, global2.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.c), vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), _wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(max(-949f, global0.c.x))), select(vec3<bool>(true, true, true), vec3<bool>(global2.c.a, false, false), vec3<bool>(true, false, true))))));
    let var_2 = ~(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 1u | var_0.x)));
    return Struct_2(all(vec4<bool>(all(!vec4<bool>(true, true, global2.c.a, global0.a.c.a)), any(vec2<bool>(var_1.b.a.c.a, global0.a.b.a)), global2.c.a, global2.b.a)), Struct_1(false), var_1.b.b.b);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    global0 = Struct_3(arg_1, func_2(global1.zyy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))), vec3<f32>(503f, global0.c.x, _wgslsmith_f_op_f32(step(global0.c.x, 938f)))))));
    global1 = ~_wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, -18653i, -7891i << (arg_0 % 32u), 2634i), vec4<i32>(global1.x, global1.x, 1i, ~1i)), max(min(vec4<i32>(-31486i, u_input.b.x, u_input.b.x, global1.x) >> (vec4<u32>(56564u, u_input.c.x, 77808u, arg_0) % vec4<u32>(32u)), -vec4<i32>(-1i, 0i, 5723i, u_input.b.x)), vec4<i32>(8788i, u_input.b.x, 1i, -1i)));
    let var_0 = true;
    let var_1 = Struct_3(Struct_2(true, func_2(global1.zwz).b, func_2(_wgslsmith_mod_vec3_i32(global1.yzw, abs(vec3<i32>(1i, global1.x, u_input.b.x)))).b), Struct_2(!(!arg_1.c.a) | (global0.a.c.a && true), func_2(vec3<i32>(-2147483647i, u_input.b.x, global1.x) | -vec3<i32>(1i, u_input.b.x, global1.x)).b, Struct_1(all(select(vec3<bool>(true, false, false), vec3<bool>(true, global0.a.c.a, true), vec3<bool>(true, global0.a.b.a, global2.b.a))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -923f)))), global0.c));
    global0 = Struct_3(func_2(~(-vec3<i32>(-30566i, global1.x, u_input.b.x))), func_2(abs(-global1.xzy) | firstTrailingBit(firstTrailingBit(global1.yyw))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, -2117f, 644f), var_1.c)))))));
    return var_1;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> Struct_5 {
    global1 = vec4<i32>(global1.x, -6929i << (u_input.c.x % 32u), u_input.b.x, u_input.b.x);
    global2 = func_4(abs(abs(_wgslsmith_dot_vec3_u32(max(vec3<u32>(5449u, u_input.a, u_input.c.x), vec3<u32>(u_input.c.x, 5368u, 4294967295u)), vec3<u32>(arg_1, 19057u, 14138u)))), arg_2.b).b;
    global1 = -(~select(max(vec4<i32>(6018i, u_input.b.x, -26307i, global1.x) | vec4<i32>(global1.x, 1i, 76721i, -40091i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x) >> (vec4<u32>(arg_1, 24182u, 60214u, 65473u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, u_input.b.x, u_input.b.x, -37150i), vec4<i32>(21493i, 1i, 0i, 40946i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.x, global1.x, 2147483647i), vec4<i32>(u_input.b.x, -7085i, u_input.b.x, global1.x))), any(vec2<bool>(true, true))));
    var var_0 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(~abs(2147483647i), firstLeadingBit(-3803i), global1.x), -global1.wzx), global1.zwz);
    let var_1 = 2147483647i;
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(907f + arg_2.c.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1402f, global0.c.x)) - _wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1243f), arg_2.c.x))))), arg_2);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(firstTrailingBit(-7817i) > _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 2147483647i, 24809i, global1.x) & vec4<i32>(global1.x, global1.x, global1.x, -40820i), ~vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.b.x)), _wgslsmith_div_i32(-49312i, u_input.b.x) << (~u_input.c.x % 32u)), _wgslsmith_mult_u32(15554u ^ (~u_input.a << (0u % 32u)), firstTrailingBit(u_input.a)), func_4(20280u, func_2(firstTrailingBit(global1.wwz))), _wgslsmith_div_i32(~28121i << (u_input.c.x % 32u), select(942i, -2147483647i, true)) == ~u_input.b.x);
    var var_1 = reverseBits(~((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.c.x, 132131u, u_input.c.x)) << (abs(vec4<u32>(u_input.c.x, 54227u, 4294967295u, u_input.a)) % vec4<u32>(32u))) << ((~vec4<u32>(45311u, u_input.a, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c.x)) % vec4<u32>(32u))));
    let var_2 = var_0.a;
    global0 = Struct_3(Struct_2(global2.c.a, Struct_1(true), Struct_1(global2.c.a)), func_5(any(vec2<bool>(var_0.b.a.c.a, !global2.b.a)), 64859u, func_5(true, _wgslsmith_clamp_u32(u_input.a | 1u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~1u), func_5(false, _wgslsmith_mult_u32(u_input.a, var_1.x), Struct_3(var_0.b.b, Struct_2(global2.a, var_0.b.b.c, Struct_1(true)), vec3<f32>(693f, global0.c.x, -255f)), var_0.b.a.b.a).b, var_0.b.b.a).b, false).b.b, func_4(var_1.x, func_5(true, ~min(u_input.c.x, var_1.x), Struct_3(Struct_2(global0.a.b.a, Struct_1(var_0.b.a.c.a), var_0.b.b.b), var_0.b.b, _wgslsmith_f_op_vec3_f32(global0.c - vec3<f32>(global0.c.x, -1025f, global0.c.x))), false).b.b).c);
    var_1 = reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.c.x, 35640u, 13655u)), vec4<u32>(var_1.x, u_input.a, 1u, ~4294967295u)), 4294967295u, 62536u, abs(~1u)));
    return Struct_2(func_5(!(-2147483647i > u_input.b.x), ~(~38492u), func_4(min(1u, 42852u), func_5(var_0.b.a.b.a, 8458u, var_0.b, global2.c.a).b.a), _wgslsmith_f_op_f32(abs(1002f)) < var_0.b.c.x).b.b.b.a & select(func_4(min(var_1.x, var_1.x), Struct_2(var_0.b.b.a, Struct_1(global2.c.a), var_0.b.a.c)).b.b.a, _wgslsmith_f_op_f32(global0.c.x + global0.c.x) >= 314f, global2.c.a), func_4(var_1.x, func_2(vec3<i32>(firstLeadingBit(u_input.b.x), -global1.x, 2147483647i))).a.c, Struct_1(func_2(~select(global1.ywz, global1.zyw, vec3<bool>(false, global2.b.a, false))).a));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    let var_0 = ~0u ^ ~((u_input.a & (u_input.a << (4294967295u % 32u))) | ~select(59442u, 1u, global0.b.c.a));
    let var_1 = u_input.b.x;
    let var_2 = u_input.b.x;
    let var_3 = vec2<i32>(-23650i, _wgslsmith_div_i32(max(var_2, -global1.x), ~_wgslsmith_mod_i32(abs(global1.x), abs(2147483647i))));
    global2 = Struct_2(arg_0.b.a, Struct_1(arg_0.c.a), Struct_1(true));
    return Struct_3(func_2(_wgslsmith_mult_vec3_i32(global1.yxz, global1.xwz)), func_1(), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.c.x, global0.c.x, global0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(-272f - 1184f);
    global0 = func_6(func_1());
    global0 = Struct_3(Struct_2(true, Struct_1(true), func_1().b), func_4(_wgslsmith_sub_u32(~(18429u << (u_input.c.x % 32u)), firstLeadingBit(5046u)), Struct_2(func_4(6518u, func_5(global2.b.a, u_input.a, Struct_3(global0.b, Struct_2(global0.a.b.a, global2.c, Struct_1(global0.b.b.a)), vec3<f32>(464f, var_1, var_1)), true).b.b).a.b.a, Struct_1(global2.b.a), func_5(global0.a.b.a, ~2579u, func_4(u_input.c.x, global0.a), global2.a).b.b.c)).b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2111f, _wgslsmith_f_op_f32(-1327f + global0.c.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, -880f), func_5(false, u_input.a, Struct_3(global0.a, Struct_2(global2.c.a, global2.b, Struct_1(false)), vec3<f32>(var_1, -1000f, 957f)), true).b.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f * global0.c.x)), _wgslsmith_f_op_f32(max(1000f, var_1)), var_1), all(vec2<bool>(all(vec4<bool>(false, global0.b.b.a, false, false)), global0.c.x > var_1)))));
    let var_2 = Struct_4(reverseBits(max(vec4<u32>(abs(5265u), 0u, abs(2075u), _wgslsmith_sub_u32(1u, u_input.a)), min(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) >> (vec4<u32>(u_input.c.x, u_input.a, 0u, 12098u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.a)))), func_1().c, _wgslsmith_sub_vec3_u32((_wgslsmith_sub_vec3_u32(vec3<u32>(5796u, u_input.a, 14884u), vec3<u32>(4294967295u, 31636u, 39704u)) >> (abs(vec3<u32>(0u, 4294967295u, 1u)) % vec3<u32>(32u))) << (~(vec3<u32>(0u, 0u, u_input.c.x) & vec3<u32>(0u, u_input.a, 21484u)) % vec3<u32>(32u)), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.a) & vec3<u32>(~u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2322f)) * 1350f)));
    global2 = func_4(~(~var_2.c.x >> (_wgslsmith_div_u32(abs(4294967295u), _wgslsmith_sub_u32(0u, var_2.c.x)) % 32u)), Struct_2(reverseBits(u_input.b.x | -1i) == ~_wgslsmith_mod_i32(u_input.b.x, 0i), func_6(Struct_2(global0.a.c.a, global2.c, global0.a.c)).b.b, global0.a.c)).b;
    let x = u_input.a;
    s_output = StorageBuffer(~18611u);
}

