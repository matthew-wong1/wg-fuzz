struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<bool>(true, false), -1i, vec4<i32>(2147483647i, 1i, 33462i, -35816i), -9152i, 739f), Struct_1(vec2<bool>(false, false), 0i, vec4<i32>(1i, -1013i, 43333i, 1i), 9369i, -549f), Struct_1(vec2<bool>(true, true), -49421i, vec4<i32>(2147483647i, -1i, -1i, -1i), 36232i, 374f), Struct_1(vec2<bool>(true, true), -18672i, vec4<i32>(14796i, -1i, 0i, 1i), 21340i, 642f), Struct_1(vec2<bool>(true, false), -3799i, vec4<i32>(-1i, 1i, 1i, 0i), -1i, -878f), Struct_1(vec2<bool>(false, true), 55975i, vec4<i32>(-59818i, 30607i, -26166i, 39783i), -1i, 1036f), Struct_1(vec2<bool>(true, true), -1i, vec4<i32>(17160i, 17381i, 19477i, 28118i), -1i, -406f), Struct_1(vec2<bool>(false, false), 2147483647i, vec4<i32>(51487i, 0i, -31746i, -15963i), i32(-2147483648), 643f), Struct_1(vec2<bool>(false, false), 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 31143i), 13562i, -198f), Struct_1(vec2<bool>(false, false), i32(-2147483648), vec4<i32>(13246i, 1i, -28047i, -19729i), 0i, -1000f), Struct_1(vec2<bool>(false, true), 2285i, vec4<i32>(1i, -29614i, -38729i, 1i), 6779i, -1265f));

var<private> global1: array<f32, 26>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), -14798i, vec4<i32>(3795i, 2147483647i, 0i, 50895i), 2147483647i, 916f);

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    global2 = global0[_wgslsmith_index_u32(~(~u_input.a), 11u)];
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1321f, 549f), vec2<f32>(global2.e, arg_1.e), arg_1.a.x)))))));
    let var_1 = u_input.c;
    let var_2 = select(select(vec4<bool>(true, global2.a.x, false & all(global2.a), true), select(vec4<bool>(global2.a.x || global2.a.x, true, !global2.a.x, global2.d != u_input.e), vec4<bool>(select(true, true, global2.a.x), true, true, !global2.a.x), true), vec4<bool>(any(vec2<bool>(arg_1.a.x, global2.a.x)) || false, (u_input.a << (u_input.a % 32u)) != (u_input.d << (u_input.c % 32u)), true, !select(global2.a.x, arg_1.a.x, false))), vec4<bool>(global2.a.x, (~u_input.c <= countOneBits(u_input.a)) || false, !global2.a.x, !any(!vec4<bool>(arg_1.a.x, false, global2.a.x, false))), false);
    let var_3 = 63410i;
    return abs(~u_input.d ^ u_input.c);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32) -> vec3<u32> {
    let var_0 = abs(2147483647i);
    let var_1 = Struct_1(!select(vec2<bool>(all(vec3<bool>(global2.a.x, global2.a.x, global2.a.x)), 0u < arg_2), vec2<bool>(global2.a.x, false), !vec2<bool>(global2.a.x, global2.a.x)), ~30307i, _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, _wgslsmith_div_i32(u_input.e, 0i), global2.c.x, -u_input.b), firstLeadingBit(global2.c)), _wgslsmith_add_i32(-_wgslsmith_add_i32(-2147483647i, u_input.e << (27573u % 32u)), _wgslsmith_div_i32(~1i, var_0)), -563f);
    var var_2 = var_1.c.wx;
    let var_3 = var_1;
    let var_4 = vec2<u32>(4294967295u, (max(0u, arg_2) >> (20529u % 32u)) ^ ~0u) << (vec2<u32>(47405u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0, 4294967295u, u_input.a, 0u)), (vec4<u32>(1u, 3269u, 0u, 2964u) | vec4<u32>(27617u, 20085u, u_input.d, u_input.c)) & abs(vec4<u32>(u_input.d, arg_0, arg_2, 4294967295u)))) % vec2<u32>(32u));
    return min(vec3<u32>(var_4.x, var_4.x, (4294967295u ^ ~arg_2) >> (_wgslsmith_mod_u32(4294967295u, firstLeadingBit(var_4.x)) % 32u)), firstTrailingBit(~(~(~vec3<u32>(var_4.x, 24012u, u_input.d)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    global1 = array<f32, 26>();
    global3 = -629f;
    var var_0 = (vec2<u32>(73802u, 7140u) >> (~(~arg_2.xy) % vec2<u32>(32u))) >> (~abs(vec2<u32>(18005u >> (u_input.a % 32u), ~1u)) % vec2<u32>(32u));
    return i32(-1i) * -_wgslsmith_add_i32(~arg_1 & ~u_input.e, arg_0.d >> (65085u % 32u));
}

fn func_2() -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.a), 11u)];
    let var_1 = u_input.b;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1325f)) * _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(-var_0.e)));
    global2 = global0[_wgslsmith_index_u32(22947u, 11u)];
    var var_2 = Struct_1(vec2<bool>(!(var_0.a.x && !global2.a.x), true), 0i, var_0.c, func_5(global0[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_add_i32(-16580i, -18648i) & u_input.e, func_4(func_3(var_1, global0[_wgslsmith_index_u32(~u_input.d, 11u)], -22291i, global2.c.yx), var_0.e, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e - global2.e))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e)))));
    return ~abs(-vec4<i32>(var_1, ~15597i, _wgslsmith_mult_i32(-2147483647i, var_0.c.x), -4877i));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(arg_0.a, arg_0.a, vec2<bool>(!(!arg_0.a.x), !global2.a.x)), -23669i, func_2(), 7291i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(117f, arg_0.e)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.e, 215f, false))))))));
    global0 = array<Struct_1, 11>();
    var var_1 = any(select(vec3<bool>(all(vec2<bool>(true, true)), global2.a.x, (var_0.c.x ^ 52229i) == _wgslsmith_clamp_i32(-1i, 4853i, arg_0.b)), vec3<bool>(_wgslsmith_f_op_f32(min(-2085f, 172f)) >= _wgslsmith_f_op_f32(select(arg_0.e, global2.e, global2.a.x)), all(vec3<bool>(arg_0.a.x, true, false)), true), !(!(!vec3<bool>(arg_0.a.x, global2.a.x, var_0.a.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e));
    let var_3 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~30873u, 11u)];
    let var_1 = _wgslsmith_sub_i32(max(~9879i, ~countOneBits(u_input.b)), ~(var_0.b ^ ~var_0.b)) & ~min(-30905i, 1i);
    let var_2 = global2.e;
    global2 = func_1(global0[_wgslsmith_index_u32(u_input.d, 11u)]);
    global1 = array<f32, 26>();
    var var_3 = Struct_1(global2.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.c.xy, firstLeadingBit(vec2<i32>(2147483647i, -2147483647i))), 65745i), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~func_1(Struct_1(vec2<bool>(false, var_0.a.x), 2147483647i, vec4<i32>(-1i, -1i, var_1, 12677i), 1i, 1185f)).c, -_wgslsmith_div_vec4_i32(var_0.c, vec4<i32>(-2147483647i, var_0.c.x, var_0.b, u_input.b))), global2.c), _wgslsmith_add_i32(44832i, _wgslsmith_div_i32(global2.c.x, countOneBits(-2147483647i))), var_0.e);
    global1 = array<f32, 26>();
    let var_4 = min(_wgslsmith_add_vec4_u32((vec4<u32>(u_input.a, 1u, u_input.d, 57269u) & ~vec4<u32>(u_input.a, 41885u, 0u, 0u)) & min(select(vec4<u32>(u_input.d, 21562u, 16535u, u_input.a), vec4<u32>(0u, u_input.c, 4294967295u, 4294967295u), vec4<bool>(true, var_3.a.x, false, var_0.a.x)), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.d, 4294967295u), vec4<u32>(u_input.a, 12932u, 0u, u_input.a)), ~vec4<u32>(u_input.d, 4123u, 4294967295u, 16321u)), ~(~vec4<u32>(35064u, u_input.d, u_input.a, u_input.a)))), ~abs(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.a, 1u, u_input.c), vec4<u32>(u_input.a, u_input.d, 33048u, 35105u)), vec4<u32>(u_input.c, 35787u, 44592u, 15606u) & vec4<u32>(48725u, 1u, 4294967295u, u_input.c))));
    var_3 = global0[_wgslsmith_index_u32(5843u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-329f, 1060f), vec2<f32>(var_3.e, -418f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(813f, global1[_wgslsmith_index_u32(1u, 26u)]))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.e * var_3.e), 298f)), vec2<f32>(var_0.e, -161f))));
}

