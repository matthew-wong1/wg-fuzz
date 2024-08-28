struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 0u;

var<private> global2: vec2<f32>;

var<private> global3: vec3<i32> = vec3<i32>(-1i, 1i, -1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    global1 = max(~16778u ^ global0.a, global0.a);
    global0 = arg_0.b.b;
    let var_0 = select(vec3<bool>(false, (arg_0.c.b || !arg_0.c.b) | all(arg_0.b.a), true), select(!select(!vec3<bool>(false, false, global0.b), vec3<bool>(arg_0.c.b, true, global0.b), !vec3<bool>(global0.b, false, true)), !vec3<bool>(arg_0.b.c == u_input.b, 81057u < global0.a, !arg_0.b.b.b), !select(!vec3<bool>(false, arg_0.b.a.x, global0.b), vec3<bool>(false, arg_0.b.b.b, true), true)), select(select(vec3<bool>(global0.b, global0.b, global0.b), select(select(vec3<bool>(arg_0.b.b.b, true, arg_0.c.b), vec3<bool>(true, false, arg_0.c.b), vec3<bool>(false, global0.b, true)), !vec3<bool>(global0.b, arg_0.b.b.b, false), select(vec3<bool>(arg_0.c.b, global0.b, arg_0.c.b), vec3<bool>(global0.b, true, global0.b), vec3<bool>(true, false, false))), !(!vec3<bool>(true, true, global0.b))), !select(!vec3<bool>(arg_0.c.b, true, true), !vec3<bool>(global0.b, arg_0.c.b, false), all(vec4<bool>(arg_0.b.b.b, false, false, false))), all(arg_0.b.a)));
    global1 = u_input.a;
    var var_1 = vec3<f32>(-472f, global2.x, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))))));
    return firstTrailingBit(1i >> ((min(36497u, u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.b.a, 54748u), vec2<u32>(4294967295u, 4294967295u)) % 32u)) % 32u)) < _wgslsmith_dot_vec2_i32(select(~(-global3.zz), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b.c, 35779i) >> (vec2<u32>(arg_0.c.a, 0u) % vec2<u32>(32u)), vec2<i32>(2147483647i, 2147483647i)), arg_0.c.a != ~39797u), -vec2<i32>(u_input.b, _wgslsmith_add_i32(1i, global3.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(vec2<bool>(true, !any(vec4<bool>(global0.b, global0.b, global0.b, false))), Struct_1(firstLeadingBit(26915u << (countOneBits(u_input.a) % 32u)), all(!select(vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(false, false, true, true), vec4<bool>(global0.b, true, global0.b, global0.b)))), -global3.x & 3084i);
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(~u_input.a, reverseBits(global0.a), 0u, _wgslsmith_add_u32(30182u, 0u))), (_wgslsmith_div_vec4_u32(vec4<u32>(global0.a, 1u, 72625u, 41026u), vec4<u32>(61453u, u_input.a, u_input.a, 1u)) & abs(vec4<u32>(4294967295u, var_0.b.a, var_0.b.a, 4294967295u))) >> (vec4<u32>(0u, var_0.b.a, _wgslsmith_mult_u32(u_input.a, 4294967295u), var_0.b.a) % vec4<u32>(32u))), var_0.a.x);
    var var_1 = min(-global3.x, -2147483647i);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(global2.x, global2.x, !(var_0.c >= global3.x) && global0.b)), Struct_2(vec2<bool>(false, var_0.a.x), Struct_1(0u, global0.b), ~(-13162i)), var_0.b);
    let var_3 = false;
    return Struct_1(select(global0.a, ~u_input.a, func_3(Struct_3(925f, Struct_2(var_2.b.a, var_0.b, var_0.c), var_0.b), vec4<i32>(u_input.c, var_2.b.c, global3.x, u_input.c)) & func_3(Struct_3(-149f, var_2.b, Struct_1(var_0.b.a, false)), vec4<i32>(var_2.b.c, -19432i, u_input.c, var_0.c) | vec4<i32>(-43122i, u_input.b, u_input.c, 0i))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 0u), 1u << (_wgslsmith_clamp_u32(u_input.a, u_input.a, global0.a) % 32u)) < ((_wgslsmith_add_u32(u_input.a, 0u) << (~1194u % 32u)) << (abs(~var_2.c.a) % 32u)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = vec2<f32>(1247f, 1000f);
    let var_1 = abs(~13244i);
    let var_2 = select(select(select(vec2<bool>(true, false), select(vec2<bool>(global0.b, arg_0.b), select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, false), vec2<bool>(arg_0.b, false)), !global0.b), select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b), true), vec2<bool>(global0.b, false), arg_0.b)), !select(vec2<bool>(false, arg_0.b), vec2<bool>(global0.b, true), select(false, arg_0.b, global0.b)), func_3(Struct_3(_wgslsmith_div_f32(-341f, var_0.x), Struct_2(vec2<bool>(false, arg_0.b), arg_0, -2257i), Struct_1(84610u, global0.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -1i, var_1, 7970i), vec4<i32>(global3.x, 0i, -1i, -2147483647i)) ^ (vec4<i32>(u_input.c, u_input.b, var_1, -2147483647i) >> (vec4<u32>(77954u, 0u, global0.a, 8229u) % vec4<u32>(32u))))), vec2<bool>(arg_0.b, arg_0.b), arg_0.b);
    var var_3 = Struct_1(arg_0.a, false);
    global3 = firstLeadingBit(-(~(~abs(vec3<i32>(var_1, var_1, -1i)))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2459f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))), Struct_2(select(vec2<bool>(true, any(var_2)), select(var_2, !var_2, false), !vec2<bool>(var_2.x, global0.b)), Struct_1(global0.a, all(vec2<bool>(false, false))), -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(19132i, var_1, -18582i), vec3<i32>(2147483647i, 15888i, -26033i)), vec3<i32>(-1i, 1i, var_1))), func_2());
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = func_4(func_2());
    let var_1 = !select(select(!select(vec3<bool>(false, var_0.c.b, arg_0.b.b), vec3<bool>(true, var_0.b.b.b, false), vec3<bool>(var_0.c.b, global0.b, arg_0.a.x)), vec3<bool>(true, true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global3.x, -2147483647i), vec3<i32>(10646i, 2147483647i, arg_0.c)) == 1i), !(!vec3<bool>(false, false, arg_0.a.x)), false);
    global3 = abs(firstLeadingBit(vec3<i32>(var_0.b.c, global3.x, -1i)));
    global1 = 4294967295u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), func_4(func_4(var_0.b.b).c).b, Struct_1(0u, true));
    return func_4(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_0.b.b.a, 0u, arg_0.b.a, u_input.a), vec4<u32>(arg_0.b.a, 1u, 63706u, u_input.a)), ~vec4<u32>(0u, u_input.a, 47598u, 34114u)), ~vec4<u32>(9111u, u_input.a, 143464u, 42618u)), false)).b;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0, 1221f))))), Struct_1(0u, arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -1851f) - -427f)), u_input.b);
    var var_1 = _wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(1i, var_0.c, arg_1.c, u_input.b) >> (vec4<u32>(0u, arg_1.b.a, 0u, global0.a) % vec4<u32>(32u))) ^ vec4<i32>(-max(arg_1.c, 1i), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, u_input.c, 35683i) << (vec3<u32>(var_0.b.a, 1u, 24855u) % vec3<u32>(32u)), vec3<i32>(-6565i, -18438i, 0i) ^ vec3<i32>(8899i, u_input.c, global3.x)), 0i), -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.c, u_input.b, 2147483647i, global3.x)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, global3.x, global3.x)), vec4<i32>(var_0.c, -41871i, -1i, var_0.c))));
    global1 = ~(u_input.a << (firstTrailingBit(reverseBits(var_0.b.a) << (reverseBits(u_input.a) % 32u)) % 32u));
    global3 = vec3<i32>(1i, countOneBits(func_4(var_0.b).b.c) >> (0u % 32u), u_input.b);
    var var_2 = func_1(func_4(var_0.b).b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 480f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-137f, _wgslsmith_f_op_f32(-global2.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1179f * _wgslsmith_f_op_f32(f32(-1f) * -1306f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(-375f, func_1(Struct_2(vec2<bool>(global0.b, global0.b), Struct_1(global0.a, global0.b), -1i)))))))));
    var var_0 = global3.zz;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, ~reverseBits(reverseBits(vec3<u32>(u_input.a, 1u, 0u) >> (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global2.x * 1000f), global2.x, 1465f, _wgslsmith_f_op_f32(max(global2.x, global2.x))), vec4<f32>(func_4(Struct_1(9517u, false)).a, _wgslsmith_f_op_f32(global2.x - -292f), -1234f, _wgslsmith_f_op_f32(min(global2.x, -1000f)))))));
}

