struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, -5975i, vec2<bool>(true, false), vec3<i32>(-69393i, -1i, 0i), vec3<i32>(1i, 0i, -1i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = arg_0.d;
    global0 = Struct_1(global0.d.x & min(max(-global0.d.x, 1i), 21634i), abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(22753i, _wgslsmith_mult_i32(global0.a, global0.b)), -_wgslsmith_sub_i32(-21968i, arg_0.a))), !(!global0.c), global0.d << (_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, ~u_input.b.x, select(u_input.b.x, u_input.b.x, false))) % vec3<u32>(32u)), vec3<i32>(var_0.x, arg_0.d.x, var_0.x ^ 2147483647i));
    return _wgslsmith_add_i32(abs(global0.b), arg_0.d.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_1(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(func_3(Struct_1(arg_1.a, 2147483647i, arg_1.c, vec3<i32>(15603i, -367i, arg_2), vec3<i32>(arg_0, 0i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1056f)), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 13059i, 49274i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, global0.b, arg_0, -4777i), vec4<i32>(51442i, arg_0, arg_1.e.x, arg_0)))), _wgslsmith_add_vec3_i32(vec3<i32>(~arg_1.a, _wgslsmith_clamp_i32(0i, -1i, arg_2), arg_1.e.x), min(-global0.d, arg_1.e & vec3<i32>(arg_2, arg_0, global0.b)))), select(vec2<bool>(false, true), select(global0.c, vec2<bool>(select(false, global0.c.x, false), all(vec3<bool>(false, arg_1.c.x, arg_1.c.x))), arg_1.c.x | true), all(global0.c)), min(max(max(vec3<i32>(arg_0, arg_2, -2147483647i), vec3<i32>(-2147483647i, arg_2, arg_2)), global0.d) << (vec3<u32>(firstLeadingBit(arg_3.x), countOneBits(1u), ~u_input.b.x) % vec3<u32>(32u)), global0.e), arg_1.e);
    global0 = var_0;
    global0 = Struct_1(~arg_1.e.x, 19381i, vec2<bool>(var_0.c.x, !arg_1.c.x), vec3<i32>(func_3(Struct_1(-1i, min(2147483647i, -1i), vec2<bool>(false, global0.c.x), vec3<i32>(2147483647i, -28407i, 10397i) | global0.d, abs(var_0.e)), 214f), arg_1.b, arg_2), countOneBits(select(arg_1.d, vec3<i32>(-2147483647i, _wgslsmith_add_i32(arg_2, 95493i), -33145i), global0.c.x)));
    global0 = var_0;
    let var_1 = arg_1;
    return !vec2<bool>(_wgslsmith_div_f32(2425f, -929f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(435f)) * -945f), arg_1.c.x);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(i32(-1i) * -2147483647i, 47303i, global0.c, ~global0.d, global0.e | countOneBits(~global0.e & _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, -2147483647i, global0.a), vec3<i32>(-40912i, global0.a, -9782i))));
    global0 = Struct_1(-(i32(-1i) * -1i), global0.a, !select(global0.c, global0.c, global0.c), vec3<i32>(2147483647i, global0.d.x, global0.e.x), vec3<i32>(global0.e.x, _wgslsmith_div_i32(abs(select(global0.e.x, -31647i, true)), _wgslsmith_sub_i32(1i, 2147483647i)), ~(~global0.b)));
    global0 = Struct_1(_wgslsmith_mod_i32(global0.a | 2147483647i, -39884i), global0.d.x, select(global0.c, global0.c, global0.c), _wgslsmith_mult_vec3_i32(global0.d, vec3<i32>(-1i, global0.e.x, global0.e.x) | vec3<i32>(global0.d.x, global0.a, global0.a)) | global0.d, vec3<i32>(-1i, -(~2147483647i), global0.a) & countOneBits(~(vec3<i32>(global0.a, global0.e.x, global0.b) ^ vec3<i32>(global0.e.x, global0.b, -25809i))));
    var var_0 = Struct_1(global0.a, ~countOneBits(-global0.b), func_4(0i, Struct_1(func_3(Struct_1(global0.a, global0.d.x, global0.c, global0.d, global0.e), 1806f), global0.a, select(global0.c, select(vec2<bool>(global0.c.x, global0.c.x), vec2<bool>(global0.c.x, global0.c.x), true), false), -min(global0.d, global0.d), global0.d), ~global0.d.x, u_input.b), firstLeadingBit(-abs(vec3<i32>(global0.a, global0.a, 3439i) | global0.d)), countOneBits(abs(global0.d)));
    var var_1 = true & (func_4(reverseBits(-2339i), Struct_1(-var_0.b, var_0.b, global0.c, abs(vec3<i32>(0i, -46315i, 24051i)), global0.e), countOneBits(max(-2147483647i, global0.e.x)), max(countOneBits(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, 77642u, 4294967295u))).x | true);
    return Struct_1(_wgslsmith_add_i32(global0.e.x, -_wgslsmith_mod_i32(42187i, -2147483647i)), abs(-global0.d.x), var_0.c, -var_0.e, min(global0.e, var_0.d));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(~firstTrailingBit(_wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(4294967295u, 41923u)), min(u_input.b.x, _wgslsmith_mod_u32(u_input.a, ~min(u_input.a, u_input.b.x))));
    var_0 = firstLeadingBit(u_input.b);
    var var_1 = _wgslsmith_mult_u32(~0u << (_wgslsmith_mult_u32(0u, ~45510u) % 32u), ~u_input.a) <= u_input.b.x;
    global0 = arg_0;
    let var_2 = vec4<bool>(all(!select(!vec4<bool>(global0.c.x, true, true, arg_0.c.x), vec4<bool>(global0.c.x, true, global0.c.x, arg_0.c.x), any(vec3<bool>(arg_0.c.x, false, arg_0.c.x)))), true, func_2().c.x, func_2().b <= -1i);
    return arg_0;
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = func_5(func_2());
    var var_0 = func_2();
    global0 = func_2();
    global0 = func_5(func_5(Struct_1(var_0.e.x, func_3(func_2(), _wgslsmith_f_op_f32(-arg_0.x)), !var_0.c, global0.e, max(_wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(global0.b, global0.d.x, -41732i)), global0.d | vec3<i32>(-44153i, global0.b, 16180i)))));
    global0 = func_5(Struct_1(~(~(~18268i)), -16834i, var_0.c, reverseBits(select(global0.d, global0.e, vec3<bool>(false, true, var_0.c.x)) ^ (vec3<i32>(16425i, -2147483647i, 14836i) ^ vec3<i32>(global0.b, var_0.e.x, -1i))), vec3<i32>(1i, _wgslsmith_div_i32(global0.d.x, 1i), -3582i)));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(78436i, global0.d.x, global0.b, 1i) ^ (vec4<i32>(3816i, 0i, 21321i, global0.b) & vec4<i32>(-2147483647i, global0.e.x, global0.b, 23809i)), -vec4<i32>(global0.a, 1992i, 14600i, global0.d.x), global0.c.x), _wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, 0i, -2147483647i, global0.d.x), vec4<i32>(global0.e.x, global0.d.x, global0.d.x, global0.d.x), vec4<i32>(19352i, global0.b, global0.e.x, -14777i)), (vec4<i32>(global0.d.x, 2147483647i, -28516i, global0.d.x) | vec4<i32>(28776i, global0.e.x, global0.a, global0.d.x)) ^ firstLeadingBit(vec4<i32>(-13703i, global0.a, -26028i, global0.a)))), -32667i, select(!(!global0.c), func_1(vec2<f32>(-710f, _wgslsmith_f_op_f32(194f * 421f))), vec2<bool>(true, true)), ~(-(_wgslsmith_mod_vec3_i32(global0.e, vec3<i32>(global0.d.x, global0.a, global0.e.x)) | vec3<i32>(-1i, 2147483647i, 2147483647i))), vec3<i32>(abs(firstLeadingBit(max(global0.a, global0.a))), -1i, select(~global0.d.x, 0i, all(vec3<bool>(true, false, false)) && true)));
    var var_1 = any(!select(vec2<bool>(global0.c.x, global0.c.x), vec2<bool>(true, true), true));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(554f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -125f)))), -1035f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(184f, -305f)) - _wgslsmith_f_op_f32(394f + 1599f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(525f)), 273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)))))));
    var var_3 = func_2();
    let var_4 = Struct_1(-(~_wgslsmith_clamp_i32(-var_0.a, i32(-1i) * -2147483647i, -var_3.d.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-max(var_0.b, global0.a), ~global0.a, var_0.a), global0.d), vec2<bool>(var_3.c.x, func_5(Struct_1(var_0.b | global0.e.x, _wgslsmith_add_i32(18224i, -2147483647i), var_0.c, -vec3<i32>(var_0.d.x, -1i, var_3.b), vec3<i32>(-38798i, global0.a, 50098i))).c.x), firstTrailingBit(select(~global0.e, ~vec3<i32>(15502i, var_3.d.x, global0.d.x), vec3<bool>(true, true, true))), vec3<i32>(_wgslsmith_sub_i32(~var_0.e.x, var_3.d.x | _wgslsmith_mult_i32(-4719i, 1i)), global0.a, 30728i));
    let var_5 = var_4;
    let var_6 = u_input.b.x;
    let var_7 = abs(select(select(abs(vec4<u32>(1u, 96509u, 0u, 4294967295u)), vec4<u32>(44967u, 4294967295u, 20854u, 18742u), vec4<bool>(true, var_4.c.x, false, false)), vec4<u32>(u_input.a, 1u, 12587u, 0u), !(!vec4<bool>(var_4.c.x, false, true, true)))) ^ (~firstLeadingBit(vec4<u32>(71463u, 34992u, 0u, var_6)) & countOneBits(~vec4<u32>(4294967295u, 57097u, 14481u, 60971u)));
    var_0 = Struct_1(~abs(~(~global0.b)), _wgslsmith_sub_i32(var_3.d.x >> (var_6 % 32u), var_3.d.x), vec2<bool>(func_4(global0.a, func_2(), -_wgslsmith_dot_vec3_i32(vec3<i32>(-25749i, global0.a, -2147483647i), var_3.d), ~(~u_input.b)).x, (true & all(var_5.c)) | true), (-(vec3<i32>(global0.e.x, var_0.b, 1i) >> (var_7.zzy % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_add_u32(1u, 36901u), ~u_input.a, u_input.a) % vec3<u32>(32u))) & vec3<i32>(var_0.e.x, ~(-62500i), var_4.b), abs(-max(var_0.e, ~var_4.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-reverseBits(_wgslsmith_mult_i32(-27435i, var_4.b)), global0.e.x), _wgslsmith_f_op_f32(floor(-216f)), var_0.d, var_0.e.x ^ func_5(func_5(func_5(Struct_1(var_3.d.x, var_5.a, global0.c, var_0.d, var_0.d)))).a);
}

