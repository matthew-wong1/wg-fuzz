struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<bool>;

var<private> global2: u32 = 0u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = !select(vec3<bool>(any(select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, false, global1.x, false), vec4<bool>(true, true, global1.x, true))), global1.x, true), !select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x & global1.x), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -429f) == global0.b, all(vec3<bool>(global1.x, global1.x, true)), true));
    var var_0 = global1.xx;
    let var_1 = Struct_3(abs(firstTrailingBit(3058u)), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.a), 1u, ~vec2<u32>(global0.c >> (u_input.b.x % 32u), 36303u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1429f, 1092f, -990f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1235f, global0.a.x, -562f))))))));
    global1 = select(select(vec3<bool>(var_0.x, !global1.x, true), select(!vec3<bool>(var_0.x, true, true), !select(vec3<bool>(global1.x, var_0.x, global1.x), vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, true)), vec3<bool>(var_0.x, u_input.a.x < 1u, var_0.x)), !(countOneBits(-1i) == abs(global0.d.x))), select(select(vec3<bool>(true, 4294967295u > global0.c, false), vec3<bool>(true, true, true), var_0.x), vec3<bool>(var_0.x, var_0.x, !global1.x), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, global0.c == u_input.a.x, var_0.x), vec3<bool>(!var_0.x, -31309i >= global0.d.x, any(vec4<bool>(global1.x, false, global1.x, global1.x))))), var_0.x);
    let var_2 = Struct_1(_wgslsmith_add_u32(~(~reverseBits(0u)), ~global0.c), _wgslsmith_sub_u32(var_1.b.b, ~4294967295u), vec2<u32>(~var_1.b.c.x & ~_wgslsmith_clamp_u32(4294967295u, global0.c, global0.c), firstTrailingBit(global0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.x, -360f, global1.x)), _wgslsmith_f_op_f32(max(global0.a.x, var_1.b.d.x)), _wgslsmith_f_op_f32(global0.b - 2201f)))));
    return !select(select(select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, global1.x), vec3<bool>(var_0.x, true, false)), select(vec3<bool>(false, false, global1.x), vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, var_0.x)), 976u > u_input.b.x), !(!vec3<bool>(false, true, var_0.x)), global1.x), !vec3<bool>(all(vec4<bool>(global1.x, var_0.x, false, false)), false, 0u > var_2.b), !select(vec3<bool>(true, false, global1.x), !vec3<bool>(true, var_0.x, false), false));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = -656f;
    let var_2 = vec2<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(var_1 + -754f))));
    let var_3 = global0.c;
    global2 = arg_2.a;
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    let var_0 = firstLeadingBit(func_4(global0.d.yx, select(select(select(vec3<bool>(global1.x, arg_3.x, arg_3.x), vec3<bool>(true, true, arg_3.x), global1.x), vec3<bool>(true, global1.x, global1.x), !vec3<bool>(global1.x, arg_3.x, global1.x)), select(func_3(), select(vec3<bool>(false, true, arg_3.x), vec3<bool>(true, arg_3.x, global1.x), false), false), select(!vec3<bool>(false, true, global1.x), func_3(), select(vec3<bool>(true, false, arg_3.x), vec3<bool>(false, false, false), false))), Struct_1(1u, 1u, ~_wgslsmith_div_vec2_u32(u_input.b.yx, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -438f, 1951f))), global0.d.zz));
    global1 = func_3();
    var var_1 = Struct_3(4294967295u, Struct_1((62905u ^ _wgslsmith_mult_u32(arg_0, u_input.b.x)) >> (4294967295u % 32u), arg_0, abs(vec2<u32>(countOneBits(u_input.a.x), 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1708f), _wgslsmith_f_op_f32(round(156f)), global0.b))));
    global1 = vec3<bool>(false, global0.a.x <= global0.b, false);
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.d.x)), _wgslsmith_f_op_f32(max(1917f, _wgslsmith_f_op_f32(-var_1.b.d.x)))))), _wgslsmith_div_f32(373f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f - -627f) * 1f)))), reverseBits((1u >> (var_1.b.c.x % 32u)) >> (0u % 32u)), vec3<i32>(-(~(0i >> (u_input.b.x % 32u))), min(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-10491i, 16435i), vec2<i32>(arg_1, 8111i)), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), Struct_1(27656u, 1u, vec2<u32>(arg_0, 4294967295u), var_1.b.d), abs(vec2<i32>(global0.d.x, arg_1))).x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.d, global0.d), _wgslsmith_sub_i32(arg_1, global0.d.x))), global0.d.x));
    return 848f;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1426f, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4863u, 39915i, _wgslsmith_dot_vec3_i32(global0.d, vec3<i32>(global0.d.x, global0.d.x, global0.d.x)), !vec2<bool>(global1.x, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), -280f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) - -155f))))));
    let var_1 = vec3<u32>(arg_0.x, firstTrailingBit(arg_0.x) >> ((global0.c << ((~arg_0.x | global0.c) % 32u)) % 32u), abs(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(6113u, global0.c)), u_input.a)));
    var var_2 = ~_wgslsmith_clamp_vec3_u32(u_input.b.zzz, countOneBits(~vec3<u32>(19335u, 0u, var_1.x) | ~vec3<u32>(4294967295u, var_1.x, arg_0.x)), vec3<u32>(~48272u, 0u, var_1.x));
    var_2 = u_input.b.yzx;
    var var_3 = Struct_2(abs(_wgslsmith_dot_vec2_i32(~global0.d.xy, global0.d.yz)), -1294f, Struct_1(4294967295u, 31877u, var_1.yx, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 162f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1451f, global0.b, global0.b)))))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(global1.zz);
    let var_1 = func_1(u_input.b.wy, vec4<bool>(any(vec3<bool>(true, true, global1.x)), false, global1.x, global1.x));
    var var_2 = global0.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_div_f32(-1442f, _wgslsmith_f_op_f32(-global0.b))))));
    var var_4 = Struct_4(var_3.xy, global0.a.x, 0u, -global0.d);
    var var_5 = vec4<u32>(~((69223u | ~u_input.a.x) ^ 69828u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(41560u, firstTrailingBit(1u)), 1u), global0.c, select(~max(u_input.b.x, global0.c), min(var_1, ~var_1), select(var_4.d.x != var_4.d.x, func_3().x, false)) << (_wgslsmith_dot_vec3_u32(u_input.b.zwy & _wgslsmith_clamp_vec3_u32(u_input.b.zww, u_input.b.zzz, vec3<u32>(427u, 1u, u_input.a.x)), vec3<u32>(firstLeadingBit(u_input.b.x), ~var_4.c, 0u)) % 32u));
    var var_6 = 31465u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~11367u, global0.c), ~global0.c), firstTrailingBit(var_5.x), _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.a)), 18599u, min(_wgslsmith_add_vec4_i32(~(~vec4<i32>(global0.d.x, var_4.d.x, -1i, 32135i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_4.d.x, -16171i, var_4.d.x, var_4.d.x), vec4<i32>(2147483647i, var_4.d.x, 0i, -1i))), select(vec4<i32>(countOneBits(60929i), ~2147483647i, _wgslsmith_mod_i32(global0.d.x, var_4.d.x), ~global0.d.x), vec4<i32>(-1i) * -vec4<i32>(26341i, 30537i, var_4.d.x, -43202i), select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), true), select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), false), any(vec4<bool>(global1.x, global1.x, false, true))))));
}

