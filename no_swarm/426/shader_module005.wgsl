struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: Struct_2;

var<private> global1: f32 = 792f;

var<private> global2: array<vec3<i32>, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = 0u;
    let var_1 = global0.c;
    let var_2 = global0.d;
    var var_3 = ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(62219u, 30u)], ~vec3<i32>(arg_3.x, 44623i, global0.d.x)), vec3<i32>(_wgslsmith_div_i32(~u_input.d.x, var_2.x), ~12338i, global0.d.x));
    global1 = arg_1;
    return _wgslsmith_f_op_f32(-global0.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1688f + _wgslsmith_f_op_f32(-global0.a.x))));
    let var_1 = Struct_2(vec4<f32>(478f, -613f, _wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-608f - 480f)), global0.e, Struct_1(global0.c.a, 2324u), u_input.d.wy, Struct_1(true, 58299u));
    let var_2 = _wgslsmith_f_op_f32(func_3(!vec3<bool>(!arg_1.x, !global0.b.a && !arg_1.x, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<u32>(var_1.e.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.b, u_input.b, var_1.c.b) ^ vec3<u32>(17482u, 16012u, 1u), min(u_input.a, u_input.a)) ^ ~1991u), vec2<i32>(1i, ~(~u_input.d.x)) << (~u_input.a.yy % vec2<u32>(32u))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 564f, 2102f, -1065f), vec4<f32>(-163f, arg_0.x, global0.a.x, 1322f))), var_1.a)))) - var_1.a), Struct_1((_wgslsmith_f_op_f32(select(655f, -299f, arg_1.x)) > _wgslsmith_f_op_f32(floor(-1005f))) && false, _wgslsmith_div_u32(countOneBits(countOneBits(var_1.b.b)), ~46169u >> ((var_1.e.b ^ 32026u) % 32u))), Struct_1((_wgslsmith_f_op_f32(var_1.a.x - 512f) == _wgslsmith_f_op_f32(-var_1.a.x)) & (all(vec4<bool>(false, true, global0.b.a, true)) | !global0.b.a), 1u), vec2<i32>(_wgslsmith_add_i32(var_1.d.x, -_wgslsmith_sub_i32(global0.d.x, u_input.d.x)), var_1.d.x >> (_wgslsmith_clamp_u32(14698u ^ u_input.c, ~69136u, ~var_1.b.b) % 32u)), Struct_1(global0.b.a, u_input.b));
    return Struct_1(!(!arg_1.x), var_1.c.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(global0.a, func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), 360f, _wgslsmith_f_op_f32(-global0.a.x)), global0.a)), vec2<bool>(true, false)), func_2(global0.a, vec2<bool>(-358f == _wgslsmith_f_op_f32(select(-737f, 953f, global0.e.a)), global0.e.a)), vec2<i32>(-max(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(1i, global0.d.x, 2147483647i, -23124i)), 1i), 29947i), global0.b);
    global1 = global0.a.x;
    var var_1 = ~0u;
    var_1 = ~(arg_1.b >> (65309u % 32u));
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), Struct_1(var_0.c.a | !var_0.b.a, ~(~select(arg_0.x, arg_1.b, true))), arg_1, vec2<i32>(-73150i, ~2147483647i ^ global0.d.x), Struct_1(false, abs(~1u)));
    return select(vec2<bool>(!arg_1.a, arg_1.a | true), vec2<bool>(all(vec4<bool>(true, var_2.e.a, true, true)), var_0.c.a), false);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -163f, -512f, global0.a.x)), select(arg_2, arg_2, vec2<bool>(arg_1.a, false))).b >> (~(~4294967295u) % 32u), ~arg_1.b, u_input.c), ~(u_input.a | vec3<u32>(~u_input.a.x, ~4294967295u, ~11114u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))))), global0.b, arg_1, global0.d, Struct_1(false, ~4294967295u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * 346f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f + -725f) * _wgslsmith_f_op_f32(-global0.a.x)));
    var var_4 = (91256u == var_0.x) || select(true, true, arg_2.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(191f, var_3)))), false)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 915f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = arg_0.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_5(select(vec2<bool>(true, any(vec3<bool>(arg_1, arg_2.a, arg_2.a))), func_4(~(~vec4<u32>(57798u, arg_0.b.b, arg_0.b.b, 0u)), func_2(vec4<f32>(510f, -1000f, 3286f, 203f), !vec2<bool>(arg_1, arg_0.e.a))), any(!select(vec4<bool>(arg_2.a, arg_0.c.a, false, true), vec4<bool>(arg_0.b.a, true, arg_1, false), true))), Struct_1(true, _wgslsmith_dot_vec3_u32(abs(u_input.a), countOneBits(vec3<u32>(u_input.a.x, 49588u, 1u))) | firstLeadingBit(arg_2.b)), vec2<bool>(false & all(select(vec2<bool>(false, arg_0.b.a), vec2<bool>(arg_0.c.a, arg_0.e.a), vec2<bool>(true, arg_1))), all(vec3<bool>(false, true, arg_2.a)) || true)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.b;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a), Struct_1(true, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(82406u, global0.c.b, 23279u, 4294967295u), vec4<u32>(global0.c.b, 95u, u_input.c, 4294967295u)), ~vec4<u32>(global0.c.b, 0u, u_input.a.x, global0.b.b))), Struct_1(all(!vec2<bool>(false, global0.c.a)), global0.c.b), vec2<i32>(-72684i, ~func_1(Struct_2(vec4<f32>(706f, global0.a.x, global0.a.x, global0.a.x), Struct_1(false, 60684u), Struct_1(global0.c.a, u_input.a.x), vec2<i32>(-22011i, global0.d.x), Struct_1(false, global0.e.b)), global0.b.a, Struct_1(false, u_input.c))) & firstTrailingBit(vec2<i32>(reverseBits(2147483647i), _wgslsmith_mult_i32(-1i, -1i))), func_2(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(round(global0.a))), vec2<bool>(global0.e.a, false)));
    let var_2 = select(global2[_wgslsmith_index_u32(global0.b.b, 30u)], u_input.d.wzw, select(!(!(!vec3<bool>(global0.b.a, false, global0.c.a))), select(!vec3<bool>(var_1.c.a, global0.b.a, var_1.c.a), vec3<bool>(true, false, !global0.b.a), select(!vec3<bool>(true, false, global0.e.a), vec3<bool>(var_1.c.a, true, global0.c.a), func_4(vec4<u32>(4294967295u, u_input.c, global0.b.b, 0u), var_1.b).x)), false));
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -492f)), _wgslsmith_f_op_f32(global0.a.x - 610f), _wgslsmith_f_op_vec4_f32(func_5(select(func_4(vec4<u32>(0u, u_input.b, 0u, u_input.a.x), var_1.c), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global0.b.a, global0.e.a), vec2<bool>(false, global0.e.a))), Struct_1(any(vec3<bool>(true, false, var_1.c.a)), countOneBits(72390u)), select(func_4(vec4<u32>(var_1.b.b, 4294967295u, 0u, 0u), Struct_1(var_1.c.a, u_input.b)), vec2<bool>(true, true), func_2(vec4<f32>(global0.a.x, -1442f, global0.a.x, global0.a.x), vec2<bool>(global0.c.a, global0.b.a)).a))).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.a.x, global0.a.x)))), global0.c, Struct_1(any(func_4(vec4<u32>(global0.e.b, var_1.c.b, 0u, 4294967295u), func_2(var_1.a, vec2<bool>(true, true)))), (~4294967295u & _wgslsmith_div_u32(global0.e.b, global0.e.b)) & ~_wgslsmith_mult_u32(u_input.b, u_input.a.x)), -u_input.d.xz, func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(598f, var_1.a.x, 1691f, 814f) + vec4<f32>(global0.a.x, global0.a.x, 1054f, 506f)) - global0.a))), !select(!vec2<bool>(global0.c.a, false), !vec2<bool>(global0.b.a, false), func_4(vec4<u32>(global0.b.b, global0.c.b, 1u, 34538u), global0.c))));
    let var_4 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 491f, 219f, global0.a.x) * var_1.a)) * var_1.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-927f, var_3.a.x, -1079f, 809f)), var_1.a))))), Struct_1(any(!(!vec4<bool>(global0.e.a, global0.b.a, var_1.b.a, global0.b.a))), u_input.b), func_2(var_1.a, !(!(!vec2<bool>(true, global0.c.a)))), -(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.yw, vec2<i32>(var_1.d.x, var_1.d.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.d.x, global0.d.x), global0.d), ~var_1.d) >> (~vec2<u32>(var_3.b.b, 14254u) % vec2<u32>(32u))), func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a * var_3.a) - _wgslsmith_f_op_vec4_f32(var_3.a - var_1.a)))), func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(48446u, global0.e.b, var_1.e.b, var_1.e.b), abs(vec4<u32>(9116u, 44914u, 43944u, u_input.b))), func_2(var_1.a, vec2<bool>(false, false)))));
    global0 = Struct_2(vec4<f32>(-194f, -1266f, -1000f, var_3.a.x), Struct_1(!any(!vec2<bool>(var_3.e.a, false)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(35347u, var_1.b.b, 1u) >> (1u % 32u), max(_wgslsmith_clamp_u32(15629u, 1u, 28951u), u_input.c))), Struct_1(var_1.e.a, 4294967295u), vec2<i32>(-4453i, -min(~(-15689i), 1i)), Struct_1(true, _wgslsmith_mod_u32(~global0.c.b, ~reverseBits(0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(344f, 281f)), global0.a.x) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.a.xy + _wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(false, var_4.e.a), Struct_1(false, 0u), vec2<bool>(var_3.b.a, global0.c.a))).yy), vec2<f32>(_wgslsmith_div_f32(var_4.a.x, global0.a.x), var_1.a.x)))));
}

