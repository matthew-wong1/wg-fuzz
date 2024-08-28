struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    global0 = Struct_3(global0.a, firstTrailingBit(firstLeadingBit(global0.b)), _wgslsmith_mod_i32(-(global0.c & ~global0.b.x), _wgslsmith_add_i32(-18945i, global0.c)));
    var var_0 = vec3<i32>(1i, -(~global0.c), global0.b.x);
    var var_1 = Struct_2(Struct_1(1u & firstTrailingBit(47697u)), Struct_1(1u));
    var var_2 = vec2<u32>(abs(_wgslsmith_div_u32(~var_1.b.a, var_1.b.a)), var_1.a.a) & _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, var_1.a.a)), max(vec2<u32>(53171u, var_1.a.a), vec2<u32>(var_1.a.a, 45741u))), vec2<u32>(var_1.a.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a.a, var_1.a.a), _wgslsmith_clamp_u32(3542u, var_1.b.a, var_1.b.a))), vec2<u32>(var_1.a.a, _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.a.a, 31242u), var_1.b.a)));
    var_2 = abs(vec2<u32>(79192u >> (abs(var_2.x) % 32u), 1u)) ^ _wgslsmith_div_vec2_u32(abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_2.x, 1u), ~vec2<u32>(57279u, var_1.a.a))), vec2<u32>(~_wgslsmith_mod_u32(97580u, 6788u), var_2.x));
    return select(~u_input.a, vec4<i32>(min(min(firstTrailingBit(var_0.x), u_input.a.x), -10413i), select(var_0.x, abs(_wgslsmith_sub_i32(10694i, global0.c)), !any(vec3<bool>(true, false, false))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.c, var_0.x, global0.c), _wgslsmith_div_vec3_i32(vec3<i32>(-29542i, -5673i, -1i), vec3<i32>(u_input.a.x, var_0.x, -1i))), vec3<i32>(_wgslsmith_div_i32(-3304i, 2147483647i), global0.b.x, ~global0.b.x)), -65000i), !vec4<bool>(any(vec2<bool>(false, false)), true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: f32) -> i32 {
    global0 = Struct_3(global0.a, reverseBits(_wgslsmith_clamp_vec4_i32(func_3(), -arg_2.b, ~vec4<i32>(u_input.a.x, 40831i, 2147483647i, global0.b.x))), select(select(_wgslsmith_sub_i32(select(global0.b.x, 0i, arg_1.a.x), _wgslsmith_div_i32(-1i, 4256i)), 51564i, select(false, arg_1.a.x, all(vec4<bool>(true, true, arg_1.a.x, true)))), arg_2.c, all(!vec2<bool>(arg_1.a.x, arg_1.a.x)) || true));
    let var_0 = firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, -6019i, 1i, 48249i), arg_2.b) | ~arg_2.b) ^ global0.b;
    global0 = arg_2;
    global0 = Struct_3(_wgslsmith_f_op_f32(min(668f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)))), global0.b, ~_wgslsmith_add_i32(var_0.x, -25535i));
    var var_1 = u_input.a.x ^ _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.xz, -global0.b.zw)), reverseBits(~(~u_input.a.x)));
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: bool) -> Struct_2 {
    global0 = Struct_3(_wgslsmith_f_op_f32(step(1752f, _wgslsmith_f_op_f32(-global0.a))), vec4<i32>(_wgslsmith_div_i32(-2147483647i, -(arg_0 | u_input.a.x)), _wgslsmith_add_i32(~(~(-4403i)), min(-arg_0, global0.c)), 0i, _wgslsmith_add_i32(1i, max(-1i, u_input.a.x))), 36031i);
    global0 = Struct_3(169f, vec4<i32>(countOneBits(select(_wgslsmith_sub_i32(-1i, 0i), _wgslsmith_add_i32(u_input.a.x, 16195i), false)), -1i, _wgslsmith_mod_i32(min(countOneBits(-4800i), 38850i), ~(arg_0 & u_input.a.x)), 1i), global0.b.x);
    var var_0 = ~_wgslsmith_mod_u32(1u, firstLeadingBit(0u));
    global0 = Struct_3(1000f, global0.b, -2147483647i);
    let var_1 = arg_2;
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~abs(vec3<u32>(0u, 30556u, 1u)))), Struct_1(4294967295u));
}

fn func_1() -> Struct_4 {
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * 1410f) * global0.a))), ~(vec4<i32>(-1i) * -abs(vec4<i32>(-2147483647i, 2147483647i, -13323i, u_input.a.x))), 0i);
    var var_0 = func_4(i32(-1i) * -_wgslsmith_mult_i32(min(-2147483647i, 1i), func_2(vec2<u32>(3815u, 46784u), Struct_5(vec3<bool>(false, false, true)), Struct_3(global0.a, global0.b, 0i), 1143f)), Struct_5(vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec4<bool>(true, false, true, false)) | true)), true);
    global0 = Struct_3(-811f, firstLeadingBit(vec4<i32>(abs(_wgslsmith_sub_i32(1i, u_input.a.x)), -(-5560i | u_input.a.x), u_input.a.x, 0i)), -1i);
    let var_1 = global0.a;
    let var_2 = Struct_2(Struct_1(1u), var_0.a);
    return Struct_4(vec3<f32>(-1401f, global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1858f, -907f)))), Struct_2(func_4(~u_input.a.x >> (firstTrailingBit(4294967295u) % 32u), Struct_5(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), true).b, func_4(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, u_input.a.x), vec2<i32>(-1i, -2147483647i))), Struct_5(vec3<bool>(true, false, true)), false).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(abs(global0.a))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f), global0.a)), vec4<u32>(0u, var_0.b.a, ~var_0.a.a, 1u) | min(~vec4<u32>(1u, 15929u, var_0.a.a, 4294967295u) >> (~vec4<u32>(4294967295u, var_2.b.a, 4294967295u, var_2.b.a) % vec4<u32>(32u)), ~min(vec4<u32>(61668u, var_2.b.a, 1u, var_0.a.a), vec4<u32>(8292u, var_0.a.a, 1u, 7566u))), ~global0.b.x);
}

fn func_5(arg_0: Struct_4) -> u32 {
    global0 = Struct_3(1000f, _wgslsmith_mult_vec4_i32(vec4<i32>(-17712i, arg_0.e, _wgslsmith_add_i32(global0.c, 0i), -arg_0.e), ~(-global0.b)) & (select(global0.b, firstLeadingBit(vec4<i32>(arg_0.e, arg_0.e, arg_0.e, 25102i)), 1i > arg_0.e) ^ ~u_input.a), 17866i);
    var var_0 = ~(~func_1().b.b.a);
    return ~_wgslsmith_clamp_u32(arg_0.b.a.a, firstLeadingBit(19864u), abs(_wgslsmith_dot_vec4_u32(arg_0.d, vec4<u32>(arg_0.d.x, 12156u, arg_0.d.x, arg_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~vec4<u32>(6733u, ~(~0u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 6644u)), ~vec2<u32>(1u, 4294967295u)), func_5(func_1())));
    let var_1 = ~3232u;
    var var_2 = -min(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-33953i, global0.b.x, -1i, global0.b.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 106789u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 24070u, 1394u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(true, false, false, false)), global0.b)), _wgslsmith_add_vec4_i32(-(vec4<i32>(global0.b.x, -12331i, u_input.a.x, global0.c) << (vec4<u32>(0u, var_0.x, var_1, 10147u) % vec4<u32>(32u))), global0.b));
    let var_3 = ~u_input.a.zyx;
    var var_4 = Struct_1(0u);
    let var_5 = -1i;
    global0 = Struct_3(global0.a, -(~global0.b) & ~(~global0.b ^ vec4<i32>(0i, u_input.a.x, var_2.x, -2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(min(~vec4<i32>(1i, 0i, var_5, -16251i), vec4<i32>(1i, -25429i, u_input.a.x, 37397i) | global0.b), ~vec4<i32>(var_2.x, u_input.a.x, var_3.x, 3449i)), ~(~vec4<i32>(global0.b.x, -43093i, var_3.x, 0i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, u_input.a.x, -32810i, global0.c), vec4<i32>(69346i, 8209i, var_3.x, -1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~33678u, ~_wgslsmith_mult_u32(0u, ~89516u)), 45960u);
}

