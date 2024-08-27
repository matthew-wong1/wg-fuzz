struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-439f, -886f);

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    let var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + arg_0.a) - global0.x), 1f)), -929f, _wgslsmith_f_op_f32(f32(-1f) * -1027f));
    let var_1 = arg_0.b;
    let var_2 = Struct_4(arg_0.a, arg_0.b, (countOneBits(select(vec3<i32>(0i, 29437i, -39119i), vec3<i32>(-1i, -2147483647i, 2147483647i), false)) & min(firstLeadingBit(vec3<i32>(2147483647i, arg_0.b.a.x, var_1.a.x)), _wgslsmith_mult_vec3_i32(global3.c, vec3<i32>(global3.c.x, global3.c.x, global2.c)))) | reverseBits(vec3<i32>(u_input.a, global3.c.x, arg_0.d)), -global2.c);
    let var_3 = Struct_4(global3.b.d.d.x, var_1, vec3<i32>(var_1.c.c, ~_wgslsmith_mult_i32(14846i, -21766i) << (global3.b.c.b.x % 32u), global3.d), u_input.a);
    global3 = var_3;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5) -> Struct_5 {
    var var_0 = global3.b;
    var var_1 = firstTrailingBit(arg_1.b.b.xz) & firstTrailingBit(vec2<u32>(~(~global2.b.x), _wgslsmith_add_u32(1u, 1u >> (u_input.c.x % 32u))));
    let var_2 = global3.b.a >> (~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 68939u), arg_1.c.b.yzx, vec3<u32>(var_1.x, 1u, 4294967295u)))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.d, global2.d))));
    let var_4 = ~firstTrailingBit(min(vec4<i32>(-arg_1.a.x, arg_1.a.x, firstTrailingBit(u_input.a), -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b.c, 2147483647i, 31537i, -2147483647i) << (global3.b.c.b % vec4<u32>(32u)), vec4<i32>(var_0.d.c, 2147483647i, -4897i, var_0.d.c) | arg_1.a)));
    return Struct_5(-_wgslsmith_sub_vec4_i32(max(vec4<i32>(19574i, u_input.a, global2.c, var_4.x), vec4<i32>(1i, global3.c.x, var_0.b.c, 11487i)), vec4<i32>(-var_4.x, global2.c, arg_1.a.x, _wgslsmith_mod_i32(arg_1.c.c, var_2.x))), Struct_1(arg_1.c.a, var_0.b.b, u_input.a ^ -_wgslsmith_div_i32(var_4.x, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1106f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, var_3.x, arg_1.c.d.x)))), Struct_1(_wgslsmith_f_op_f32(ceil(1f)), vec4<u32>(arg_1.b.b.x, firstTrailingBit(countOneBits(0u)), _wgslsmith_add_u32(global3.b.d.b.x >> (arg_0.x % 32u), 1u), global2.b.x), var_4.x, vec3<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(func_3(Struct_4(global0.x, global3.b, var_2, -25458i), arg_1.b.d, false))), -720f, _wgslsmith_f_op_f32(max(1f, -427f)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.c.b.x, 1u), 43354u, _wgslsmith_add_u32(38968u, _wgslsmith_add_u32(~global3.b.d.b.x, _wgslsmith_sub_u32(u_input.b.x, global2.b.x)))), 23491u, _wgslsmith_sub_u32(1u, var_0.b.b.x));
    var_0 = Struct_5(firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15107i, -6279i, global2.c, 23468i), arg_0.a, arg_0.a), vec4<i32>(global2.c, 0i, arg_0.a.x, 17235i))) | (-(vec4<i32>(u_input.a, -2147483647i, -1i, arg_0.a.x) | vec4<i32>(-2147483647i, 2147483647i, u_input.a, arg_1.x)) >> (~global3.b.b.b % vec4<u32>(32u))), Struct_1(global0.x, ~(~vec4<u32>(44016u, global3.b.c.b.x, u_input.c.x, var_0.c.b.x)), u_input.a, global2.d), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))))), (~vec4<u32>(arg_0.b.b.x, var_0.b.b.x, 10873u, u_input.c.x) >> (global3.b.d.b % vec4<u32>(32u))) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b.x, var_0.c.b.x, 1u, arg_0.c.b.x), vec4<u32>(32740u, arg_0.c.b.x, arg_0.c.b.x, 83463u))) % vec4<u32>(32u)), global2.c, global1.xyx));
    let var_2 = _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(countOneBits(arg_0.c.b.x), 7634u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.b.x, global2.b.x, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global3.b.b.b.x, 4294967295u, arg_0.c.b.x), global3.b.c.b)) % 32u)));
    global2 = func_2(~vec2<u32>((var_2 ^ global2.b.x) | min(var_2, 46906u), arg_0.c.b.x), Struct_5(abs(func_2(arg_0.c.b.wz, arg_0).a) | (vec4<i32>(15675i, var_0.c.c, -40681i, arg_1.x) >> (~global3.b.b.b % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(ceil(-246f)), ~(vec4<u32>(1u, global3.b.d.b.x, global3.b.d.b.x, arg_0.b.b.x) >> (global3.b.b.b % vec4<u32>(32u))), 55842i, var_0.b.d), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_div_vec4_u32(select(vec4<u32>(18745u, var_1.x, global3.b.c.b.x, 8928u), var_0.c.b, false), ~global2.b), -global2.c >> (_wgslsmith_mod_u32(20510u, 4294967295u) % 32u), global2.d))).c;
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    global1 = vec4<f32>(-596f, arg_0.b.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(arg_0.b.d.b.xw, Struct_5(vec4<i32>(0i, -29127i, -2147483647i, 19925i), Struct_1(986f, arg_0.b.b.b, global2.c, vec3<f32>(1247f, global1.x, 786f)), global3.b.c)), _wgslsmith_mult_vec3_i32(arg_0.b.a, global3.b.a))) - global2.d.x)), _wgslsmith_f_op_f32(-871f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.d.a + global3.b.d.d.x), -644f)))));
    let var_0 = func_2(global2.b.ww, Struct_5(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, global3.d, -35689i, 1i), vec4<i32>(global3.b.b.c, -1i, global3.b.d.c, u_input.a)) | _wgslsmith_mult_vec4_i32(vec4<i32>(global3.d, 1i, -1i, 65359i), vec4<i32>(global3.d, global2.c, arg_0.c.x, global3.b.c.c) << (global2.b % vec4<u32>(32u))), arg_0.b.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2123f, global2.a))), _wgslsmith_div_vec4_u32(func_2(vec2<u32>(42953u, global3.b.d.b.x), Struct_5(vec4<i32>(global3.d, arg_0.b.d.c, -2147483647i, global3.d), arg_0.b.d, arg_0.b.d)).b.b, global2.b), global2.c >> (31974u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-294f, -976f, -1225f), vec3<f32>(global0.x, global2.d.x, arg_0.a))))))).c;
    let var_1 = vec2<u32>(reverseBits(global3.b.c.b.x), _wgslsmith_div_u32(48386u, countOneBits(~var_0.b.x ^ ~global3.b.d.b.x)));
    let var_2 = vec3<bool>(arg_1, arg_1, 0i < firstTrailingBit(-10379i));
    global2 = Struct_1(318f, vec4<u32>(4541u, ~(global2.b.x >> (arg_0.b.b.b.x % 32u)), ~(~global3.b.c.b.x), ~_wgslsmith_div_u32(u_input.b.x, 823u)), arg_0.b.d.c, _wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d.x, -745f))), _wgslsmith_f_op_f32(exp2(global2.d.x)), global3.a)));
    return func_2(vec2<u32>(18043u, _wgslsmith_dot_vec4_u32(~(~var_0.b), ~reverseBits(var_0.b))), func_2(reverseBits(~global2.b.zw), func_2(~(var_0.b.xw >> (var_1 % vec2<u32>(32u))), func_2(u_input.c, Struct_5(vec4<i32>(arg_0.c.x, var_0.c, global3.c.x, var_0.c), Struct_1(arg_0.a, vec4<u32>(0u, global2.b.x, 20741u, global2.b.x), var_0.c, var_0.d), arg_0.b.b))))).c;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    global2 = func_1(Struct_4(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f * 1362f))), Struct_2(arg_1.a.xxw, Struct_1(_wgslsmith_f_op_f32(func_4(arg_1, vec3<i32>(global2.c, 2147483647i, arg_1.a.x))), _wgslsmith_div_vec4_u32(global2.b, global2.b), _wgslsmith_add_i32(global3.d, global2.c), vec3<f32>(global0.x, 272f, 1045f)), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_4(-627f, global3.b, arg_1.a.xyw, -57959i), vec3<f32>(global1.x, -267f, global1.x), false)), ~global2.b, ~global2.c, arg_1.c.d), func_1(Struct_4(global3.a, Struct_2(vec3<i32>(u_input.a, -1i, arg_1.c.c), arg_1.c, global3.b.d, global3.b.c), arg_1.a.zyx, global3.d), any(arg_0.ww))), global3.c, func_2(arg_1.c.b.zw, func_2(global2.b.zx, arg_1)).c.c), arg_2);
    global0 = global1.ww;
    var var_0 = vec2<u32>(global3.b.b.b.x, (global2.b.x & global2.b.x) | _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_div_u32(arg_1.c.b.x, arg_3.x) << (~31543u % 32u), ~_wgslsmith_sub_u32(global2.b.x, 60816u)));
    var var_1 = select(vec2<bool>(!any(vec2<bool>(arg_0.x, arg_0.x)), all(vec3<bool>(true, false, true))), vec2<bool>(true, !((arg_2 | arg_0.x) & (global2.a > global1.x))), arg_2);
    let var_2 = Struct_2(arg_1.a.wyw, Struct_1(-1065f, vec4<u32>(u_input.c.x, global2.b.x, arg_1.b.b.x, ~max(1u, global3.b.b.b.x)), 1i, global1.yxw), Struct_1(global1.x, global3.b.b.b, ~0i & func_1(Struct_4(global2.a, Struct_2(arg_1.a.yzz, global3.b.c, arg_1.b, global3.b.c), global3.c, 9037i), var_1.x).c, _wgslsmith_f_op_vec3_f32(global2.d + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global0.x, 1902f)), global3.b.b.d))), global3.b.d);
    return global3.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(1000f, Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -26529i, 0i), global3.b.a), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x * -2337f))), ~select(vec4<u32>(1u, 0u, global2.b.x, global3.b.c.b.x), global2.b, vec4<bool>(true, true, false, true)), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global2.d)) * global3.b.b.d)), global3.b.c, func_5(vec4<bool>(true, true, true, true), Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(-11570i, global3.d, 2147483647i, global3.d), vec4<i32>(2147483647i, global3.b.b.c, -2147483647i, 0i)), global3.b.d, func_1(Struct_4(global2.a, global3.b, vec3<i32>(2147483647i, u_input.a, global3.c.x), global2.c), true)), ~4294967295u > u_input.b.x, firstTrailingBit(vec2<u32>(global3.b.c.b.x, u_input.c.x)))), global3.c, -(~(-55173i)));
    global3 = Struct_4(_wgslsmith_f_op_f32(ceil(global3.a)), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(func_1(Struct_4(global1.x, global3.b, vec3<i32>(0i, global3.d, global3.d), -43878i), true).c, _wgslsmith_div_i32(0i, -25651i), _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(27522i, 9006i, u_input.a), -vec3<i32>(u_input.a, -1i, global2.c))), func_2(countOneBits(global2.b.yy), func_2(~vec2<u32>(40551u, 1u), Struct_5(vec4<i32>(0i, u_input.a, -4785i, u_input.a), global3.b.c, global3.b.d))).c, func_5(vec4<bool>(true, false, true, true), Struct_5(select(vec4<i32>(global3.b.b.c, global3.b.a.x, 2147483647i, -2147483647i), vec4<i32>(u_input.a, global2.c, 2147483647i, -15417i), vec4<bool>(false, true, true, true)), func_2(vec2<u32>(global3.b.c.b.x, 34742u), Struct_5(vec4<i32>(49806i, 6845i, 2147483647i, 1i), global3.b.c, Struct_1(-255f, global3.b.b.b, -1i, global2.d))).b, func_1(Struct_4(-432f, Struct_2(global3.c, global3.b.c, Struct_1(global1.x, global3.b.b.b, 2799i, global1.wwy), Struct_1(127f, vec4<u32>(global3.b.d.b.x, global3.b.d.b.x, global2.b.x, global2.b.x), u_input.a, vec3<f32>(-1102f, global0.x, global0.x))), global3.b.a, -7109i), false)), -global3.d > ~0i, ~u_input.b.xy & abs(global3.b.b.b.xy)), func_2(vec2<u32>(0u, firstLeadingBit(global3.b.c.b.x)), Struct_5(vec4<i32>(2147483647i, -38261i, global2.c, u_input.a) << (vec4<u32>(global2.b.x, 1u, 4294967295u, 85814u) % vec4<u32>(32u)), global3.b.d, global3.b.b)).c), -(~max(-vec3<i32>(16591i, -2147483647i, global2.c), vec3<i32>(2147483647i, global2.c, u_input.a))), ~(-(~u_input.a)));
    global2 = func_2(global3.b.c.b.yw, Struct_5(abs(reverseBits(select(vec4<i32>(0i, u_input.a, 17804i, global2.c), vec4<i32>(2147483647i, 0i, 0i, 2147483647i), vec4<bool>(true, true, true, true)))), global3.b.b, global3.b.d)).c;
    let var_0 = vec2<i32>(global2.c, global2.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(Struct_4(542f, Struct_2(global3.c, global3.b.c, global3.b.c, Struct_1(global0.x, global2.b, global3.c.x, global1.xww)), global3.b.a, -1i), true).a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_4(global2.a, Struct_2(vec3<i32>(-2147483647i, var_0.x, var_0.x), Struct_1(-1213f, vec4<u32>(1u, 8964u, 21225u, 4294967295u), 2147483647i, global3.b.b.d), global3.b.d, Struct_1(global0.x, vec4<u32>(u_input.c.x, u_input.b.x, global2.b.x, u_input.b.x), -9028i, global2.d)), global3.c, 1469i), _wgslsmith_f_op_vec3_f32(-global3.b.b.d), true)))), true)), countOneBits(min(global2.b, ~(vec4<u32>(u_input.c.x, 70838u, 16391u, 77990u) ^ vec4<u32>(2650u, 0u, 39050u, 57250u)))), 55579i, global3.b.d.d);
    let var_2 = Struct_3(global2.b.x, var_1, vec2<bool>(true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), global3.b.d.a > global1.x), vec3<bool>(true, false, true), true & (_wgslsmith_f_op_f32(-444f + var_1.a) == global1.x)), abs(global2.b.yx));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec2<u32>(0u, u_input.c.x), Struct_5(vec4<i32>(var_2.b.c, var_1.c, var_1.c, 0i), Struct_1(global2.a, var_2.b.b, 27237i, global1.xzy), Struct_1(1390f, vec4<u32>(16404u, 0u, 0u, 22915u), var_0.x, vec3<f32>(var_2.b.d.x, var_2.b.d.x, 312f)))), vec3<i32>(-10217i, 1i, global3.c.x))) - _wgslsmith_f_op_f32(-global2.d.x))), Struct_2(global3.b.a, func_2(~(~vec2<u32>(global3.b.d.b.x, 4803u)), func_2(vec2<u32>(1u, global3.b.c.b.x), Struct_5(vec4<i32>(-2965i, u_input.a, var_0.x, var_0.x), global3.b.d, Struct_1(var_2.b.d.x, global3.b.d.b, -41456i, vec3<f32>(global2.a, 409f, -194f))))).b, var_2.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f + 364f) + _wgslsmith_f_op_f32(f32(-1f) * -1564f)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(22071u, 1u, global2.b.x, 1u)), vec4<u32>(1u, global2.b.x, global3.b.c.b.x, 8514u), _wgslsmith_clamp_vec4_u32(vec4<u32>(15931u, 4294967295u, global2.b.x, var_2.e.x), global2.b, var_2.b.b)), ~7973i, vec3<f32>(_wgslsmith_div_f32(global3.a, global2.a), _wgslsmith_f_op_f32(max(1000f, -1000f)), global0.x))), ~(countOneBits(firstTrailingBit(vec3<i32>(var_0.x, -2147483647i, 12342i))) >> (func_5(vec4<bool>(var_2.c.x, false, var_2.d.x, false), func_2(vec2<u32>(43933u, global3.b.d.b.x), Struct_5(vec4<i32>(u_input.a, 1i, -2147483647i, -2147483647i), global3.b.b, global3.b.d)), true, vec2<u32>(50238u, var_1.b.x)).b.yxz % vec3<u32>(32u))), abs(-2147483647i));
    var var_4 = vec2<u32>(~4294967295u, ~global2.b.x);
    let var_5 = _wgslsmith_sub_i32(var_0.x, func_1(Struct_4(_wgslsmith_f_op_f32(max(func_5(vec4<bool>(var_2.d.x, true, true, false), Struct_5(vec4<i32>(24056i, var_0.x, var_2.b.c, u_input.a), var_1, var_3.b.b), false, var_2.e).d.x, var_2.b.d.x)), Struct_2(vec3<i32>(var_3.d, -3346i, 0i), var_1, Struct_1(global2.d.x, global2.b, u_input.a, vec3<f32>(global1.x, global0.x, -1000f)), Struct_1(global0.x, vec4<u32>(var_3.b.b.b.x, var_1.b.x, 1u, 0u), 2147483647i, var_2.b.d)), ~func_2(vec2<u32>(2189u, 53442u), Struct_5(vec4<i32>(var_0.x, var_3.c.x, 13398i, global3.d), Struct_1(1000f, var_1.b, 62511i, vec3<f32>(var_3.a, var_3.b.d.a, var_3.a)), var_2.b)).a.xzx, min(func_2(u_input.b.zz, Struct_5(vec4<i32>(-1i, u_input.a, var_0.x, 1i), Struct_1(global1.x, global3.b.b.b, 1i, var_3.b.d.d), var_2.b)).a.x, i32(-1i) * -18008i)), !all(vec4<bool>(var_2.d.x, var_2.d.x, true, false)) && false).c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.yzx, vec4<u32>(20790u, 4294967295u, 4294967295u, _wgslsmith_mod_u32(var_2.e.x, ~_wgslsmith_sub_u32(25062u, global3.b.b.b.x))), ~(~var_2.b.b.yxy), global3.d, _wgslsmith_add_i32(u_input.a, -21356i));
}

