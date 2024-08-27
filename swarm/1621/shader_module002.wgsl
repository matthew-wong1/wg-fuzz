struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, false, true));

var<private> global2: vec4<i32> = vec4<i32>(-1i, -16136i, -15003i, -12284i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(vec3<bool>(true, true, true));
    var var_1 = Struct_3(Struct_2(vec3<bool>(global0.a < _wgslsmith_f_op_f32(f32(-1f) * -279f), global0.b.x || false, all(vec4<bool>(false, true, true, global1.a.x)) || (u_input.a.x >= 1u))), var_0, vec2<f32>(_wgslsmith_f_op_f32(-global0.a), global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(652f, global0.a)), global0.a, _wgslsmith_f_op_f32(abs(global0.a)), 1381f)));
    global1 = var_1.a;
    var var_2 = Struct_3(Struct_2(!select(!global0.b, !vec3<bool>(var_0.a.x, var_1.a.a.x, true), select(global1.a, vec3<bool>(global0.b.x, var_1.a.a.x, true), false))), var_1.a, var_1.c, vec4<f32>(_wgslsmith_f_op_f32(global0.a * var_1.d.x), var_1.d.x, -1258f, -1684f));
    var var_3 = -select(-vec4<i32>(_wgslsmith_add_i32(u_input.b, arg_0), i32(-1i) * -38755i, ~(-2147483647i), 2147483647i), -select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1i, arg_0, -24764i), vec4<i32>(arg_1, -25522i, -28439i, arg_0)), abs(vec4<i32>(global2.x, 2147483647i, 0i, 19148i)), global0.b.x), vec4<bool>(true, true && var_2.a.a.x, _wgslsmith_mod_i32(-2147483647i, arg_0) != arg_1, any(vec3<bool>(global1.a.x, true, global0.b.x))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + var_1.c.x)) - var_1.d.x)), !(!vec3<bool>(global1.a.x, false, true)));
}

fn func_3() -> bool {
    let var_0 = global1.a.x;
    let var_1 = Struct_3(Struct_2(global0.b), Struct_2(!vec3<bool>(true, true, 4294967295u <= u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(floor(892f))) * global0.a), _wgslsmith_f_op_f32(-global0.a)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -489f), global0.a, -560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + 383f))));
    var var_2 = Struct_3(var_1.a, Struct_2(vec3<bool>(func_2(-5548i, _wgslsmith_dot_vec3_i32(global2.wxy, global2.wxx), ~38416u, ~4294967295u).b.x, !(u_input.a.x != u_input.a.x), any(func_2(u_input.b, u_input.b, u_input.a.x, u_input.a.x).b.yy))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2407f, -1311f))) + _wgslsmith_f_op_vec2_f32(-var_1.c)), _wgslsmith_f_op_vec2_f32(floor(var_1.c)), true)), vec2<f32>(_wgslsmith_f_op_f32(step(2461f, _wgslsmith_f_op_f32(abs(var_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(310f * var_1.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1181f)) + _wgslsmith_f_op_f32(global0.a - var_1.c.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - _wgslsmith_f_op_f32(var_1.c.x * global0.a))), _wgslsmith_f_op_f32(min(746f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), 155f))))));
    let var_3 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(u_input.b, global2.x, u_input.b, 64378i)), vec4<i32>(global2.x, _wgslsmith_div_i32(12223i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.b, -1i, 82183i), vec4<i32>(global2.x, -1i, 1i, -11391i)), _wgslsmith_sub_i32(global2.x, global2.x)))), abs(~vec4<i32>(-19440i, 2147483647i, -2147483647i, _wgslsmith_div_i32(global2.x, -24904i))));
    global2 = _wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -global2.x, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, var_3, -21161i, 2147483647i), vec4<i32>(-30546i, var_3, var_3, var_3)), i32(-1i) * -var_3), -26196i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3 ^ (global2.x << (4294967295u % 32u)), var_3, -firstTrailingBit(-1i), -(global2.x ^ u_input.b)), vec4<i32>(_wgslsmith_dot_vec3_i32(-global2.yzz, vec3<i32>(global2.x, var_3, global2.x) & global2.xyx), _wgslsmith_mod_i32(~var_3, _wgslsmith_dot_vec2_i32(global2.zz, global2.xz)), ~u_input.b << (firstLeadingBit(u_input.a.x) % 32u), -6878i)));
    return true;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = func_2(_wgslsmith_dot_vec3_i32(reverseBits(-(~vec3<i32>(u_input.b, u_input.b, global2.x))), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, -25757i >> (u_input.a.x % 32u), _wgslsmith_mult_i32(-2147483647i, -1i)), ~vec3<i32>(global2.x, 11804i, global2.x))), -2147483647i, 6710u, ~34207u);
    let var_0 = any(!vec3<bool>(select(global0.b.x, global1.a.x, global1.a.x), global1.a.x, -2147483647i <= -arg_0));
    return Struct_3(Struct_2(vec3<bool>(true, global0.b.x, func_3())), Struct_2(select(global0.b, global0.b, false)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(550f, arg_1.x), arg_1.wx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 464f)) + _wgslsmith_f_op_vec2_f32(arg_1.yx - arg_1.yw))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1475f), -1157f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = true;
    global2 = -max(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -59495i, global2.x, global2.x), vec4<i32>(global2.x, global2.x, u_input.b, u_input.b), min(vec4<i32>(15557i, 10200i, 15801i, -42463i), vec4<i32>(10453i, global2.x, global2.x, global2.x))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -12283i, u_input.b, global2.x), firstTrailingBit(vec4<i32>(-2147483647i, global2.x, -2147483647i, 22607i)))), vec4<i32>(global2.x, min(global2.x, u_input.b), ~firstLeadingBit(global2.x), select(global2.x, -global2.x, global0.b.x)));
    global2 = _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, global2.x, u_input.b, u_input.b), vec4<i32>(global2.x, -30894i, 2147483647i, u_input.b)), -vec4<i32>(u_input.b, 11608i, 31527i, u_input.b)), -(~vec4<i32>(-1i, 23372i, 2147483647i, u_input.b))), ~(-vec4<i32>(2147483647i, firstLeadingBit(global2.x), u_input.b, -29274i)));
    var var_1 = 0i;
    var var_2 = func_2(43037i, -global2.x, ~_wgslsmith_add_u32(abs(u_input.a.x) | ~10984u, 65248u), 58358u);
    return Struct_2(!arg_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(u_input.a, func_1(min(global2.x, -39440i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1000f, global0.a, global0.a)))))));
    global1 = func_1(~(-(~global2.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -787f), 580f, func_1(_wgslsmith_add_i32(~u_input.b, -36712i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-304f, global0.a, 410f, global0.a), vec4<f32>(-635f, 983f, -762f, global0.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(315f, -233f, global0.a, -589f)))))).c.x, _wgslsmith_f_op_f32(f32(-1f) * -587f))).b;
    global1 = Struct_2(select(global0.b, func_1(i32(-1i) * -1616i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -146f, 498f, 2156f)), func_1(-32455i, vec4<f32>(-1886f, 790f, global0.a, 733f)).d)).a.a, global1.a));
    global2 = ~_wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(12790i, u_input.b, u_input.b, 19495i), vec4<i32>(0i, global2.x, 0i, global2.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, 0i, u_input.b, u_input.b), vec4<i32>(0i, -1i, 32486i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, 24063i, global2.x), vec4<i32>(-26235i, 0i, -1i, u_input.b)), select(vec4<i32>(u_input.b, global2.x, global2.x, global2.x), vec4<i32>(global2.x, global2.x, u_input.b, 2147483647i), vec4<bool>(global1.a.x, true, global1.a.x, global0.b.x))), vec4<i32>(reverseBits(u_input.b), u_input.b, u_input.b | u_input.b, 7322i)) >> (_wgslsmith_clamp_vec4_u32(min(vec4<u32>(62554u, min(3058u, 1u), reverseBits(32905u), 0u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec4<u32>(41592u, ~4294967295u, u_input.a.x, ~46865u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, 76822u, 38543u), abs(vec4<u32>(4294967295u, 56085u, 43235u, 4294967295u)) >> (vec4<u32>(u_input.a.x, 60938u, u_input.a.x, 20883u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_0 = countOneBits(_wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, u_input.a.x, 20052u, 58939u) % vec4<u32>(32u))), vec4<u32>(firstLeadingBit(u_input.a.x), reverseBits(76099u), ~u_input.a.x, ~1674u)) | ~select(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4056u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 11781u)), global0.b.x));
    var var_1 = func_4(~vec2<u32>(u_input.a.x, abs(23812u)), Struct_3(Struct_2(vec3<bool>(global1.a.x, global0.b.x, false)), Struct_2(func_1(global2.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-494f, global0.a, global0.a, global0.a), vec4<f32>(global0.a, -1944f, -194f, -124f)))).b.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, global0.a))) + vec2<f32>(_wgslsmith_f_op_f32(min(global0.a, global0.a)), func_2(global2.x, 1i, u_input.a.x, var_0.x).a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, -509f, global0.a, 1640f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, firstLeadingBit(countOneBits(reverseBits(global2.x))) | firstLeadingBit(_wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(u_input.b, -25664i))));
}

