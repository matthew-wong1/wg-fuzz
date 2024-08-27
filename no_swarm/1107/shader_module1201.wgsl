struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(18026u, 0u, 0u), vec2<bool>(true, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec2<bool> {
    return vec2<bool>((1880f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1333f)) * 721f)) & false, select(true, false, u_input.b.x != _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b.x, u_input.d.x), vec2<i32>(u_input.c, -2147483647i)), vec2<i32>(-14642i, u_input.d.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = u_input.d.x;
    var var_1 = vec4<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, var_0, 2147483647i), vec4<i32>(0i, 0i, u_input.b.x, var_0))), 15777i, reverseBits(~1i), min(~2147483647i, arg_2.x));
    global0 = Struct_3(~_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, 0u, _wgslsmith_mult_u32(0u, arg_1.a)), vec3<u32>(u_input.a.x, ~0u, 0u)), select(!(!(!global0.b)), vec2<bool>(!(global0.b.x | false), true), select(global0.b, func_3(~vec3<u32>(18973u, 1028u, arg_0.a), !global0.b), all(!vec3<bool>(global0.b.x, global0.b.x, global0.b.x)))));
    var var_2 = global0.b.x;
    let var_3 = Struct_1(countOneBits(~abs(0u)) >> (1u % 32u));
    return vec3<u32>(select(global0.a.x, firstLeadingBit(~u_input.a.x), true), global0.a.x, 0u);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = select(vec3<bool>(true, arg_0.b.x, global0.b.x), !vec3<bool>(arg_0.b.x, true, false), !(_wgslsmith_mult_i32(~u_input.d.x, countOneBits(u_input.c)) <= u_input.b.x));
    let var_1 = Struct_2(_wgslsmith_sub_vec2_i32(u_input.b.zx, u_input.d.yz), Struct_1(_wgslsmith_div_u32(~arg_3.x, u_input.a.x)), Struct_1(~u_input.a.x), Struct_1(~arg_0.a.x | arg_0.a.x));
    return Struct_3(vec3<u32>(global0.a.x, arg_1.x, ~_wgslsmith_div_u32(firstTrailingBit(arg_0.a.x), ~arg_3.x)), var_0.xz);
}

fn func_1() -> bool {
    let var_0 = 2040f;
    global0 = func_4(Struct_3(~func_2(Struct_1(19999u), Struct_1(11663u), abs(u_input.d.zy)), !select(vec2<bool>(global0.b.x, false), select(vec2<bool>(true, global0.b.x), global0.b, global0.b.x), global0.b.x)), vec4<u32>(56042u, global0.a.x, _wgslsmith_mult_u32(57112u, ~u_input.a.x), ~4294967295u) ^ _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 28284u, u_input.a.x, 4294967295u), vec4<u32>(global0.a.x, 49309u, global0.a.x, 4294967295u))), _wgslsmith_add_vec4_u32(~vec4<u32>(global0.a.x, 44373u, 1u, 48240u), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, 43482u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, global0.a.zx), global0.a.x, ~1u, abs(10777u))), 480f, vec3<u32>(~_wgslsmith_div_u32(4294967295u & global0.a.x, 11289u), 1u, 0u));
    var var_1 = Struct_1(~(~20134u));
    global0 = func_4(func_4(func_4(Struct_3(~global0.a, vec2<bool>(global0.b.x, false)), ~vec4<u32>(global0.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), ~vec3<u32>(1u, u_input.a.x, var_1.a)), reverseBits(vec4<u32>(~1u, u_input.a.x, ~29784u, ~var_1.a)), _wgslsmith_f_op_f32(-var_0), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, 1u, var_1.a), countOneBits(vec4<u32>(77839u, 72622u, 0u, u_input.a.x))), max(~26008u, _wgslsmith_div_u32(18000u, 58749u)), 0u)), ~(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, 4294967295u, 1u, 39726u), vec4<u32>(26168u, global0.a.x, u_input.a.x, 55912u)))), _wgslsmith_f_op_f32(-1826f - _wgslsmith_f_op_f32(-var_0)), ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.a, 1u, 0u), vec4<u32>(32000u, 4294967295u, var_1.a, 1u)), 4294967295u), 4294967295u, min(global0.a.x << (u_input.a.x % 32u), 0u)));
    var var_2 = ~_wgslsmith_mod_vec3_u32(global0.a, ~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 37366u, 4294967295u), global0.a)));
    return global0.b.x;
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    global0 = Struct_3(~global0.a, arg_0.zy);
    let var_0 = Struct_2(u_input.d.yz, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(func_2(Struct_1(1u), Struct_1(u_input.a.x), vec2<i32>(u_input.d.x, 12500i)), abs(vec3<u32>(19965u, global0.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, 2677u, global0.a.x)), vec3<u32>(~1u, 48850u, 1u))), Struct_1(u_input.a.x), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, global0.a.x), ~(~global0.a.yx))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1316f * -1000f))));
    var var_2 = Struct_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-3636i, var_0.a.x, var_0.a.x, u_input.d.x), vec4<i32>(u_input.b.x, 34203i, var_0.a.x, u_input.d.x)), -1i), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_0.a.x), var_0.a) << (select(vec2<u32>(global0.a.x, 0u), vec2<u32>(29719u, u_input.a.x), arg_0.x) % vec2<u32>(32u)))), var_0.c, Struct_1(global0.a.x), var_0.b);
    let var_3 = Struct_1(~_wgslsmith_add_u32(~var_0.c.a, 20738u) ^ var_0.d.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(global0.b.x, func_1(), u_input.b.x > ~_wgslsmith_mod_i32(u_input.d.x, 46200i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-158f, -561f) - -739f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-428f, 604f, false)))));
    let var_1 = func_5(select(vec4<bool>(func_3(vec3<u32>(global0.a.x, u_input.a.x, u_input.a.x), global0.b).x, func_3(vec3<u32>(var_0.a, 1u, 4294967295u), global0.b).x && false, func_3(vec3<u32>(u_input.a.x, u_input.a.x, var_0.a), !vec2<bool>(true, global0.b.x)).x, any(select(vec3<bool>(false, true, global0.b.x), vec3<bool>(false, false, global0.b.x), global0.b.x))), !vec4<bool>(func_4(Struct_3(vec3<u32>(global0.a.x, 478u, 55025u), global0.b), vec4<u32>(var_0.a, 0u, 4294967295u, u_input.a.x), -425f, vec3<u32>(var_0.a, var_0.a, 69895u)).b.x, all(vec3<bool>(false, true, false)), true, func_4(Struct_3(global0.a, global0.b), vec4<u32>(var_0.a, global0.a.x, 11270u, 4294967295u), 1304f, vec3<u32>(4294967295u, var_0.a, 0u)).b.x), select(!select(vec4<bool>(true, global0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), false), select(vec4<bool>(true, global0.b.x, true, global0.b.x), select(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, global0.b.x, false)), select(vec4<bool>(true, global0.b.x, true, false), vec4<bool>(false, global0.b.x, false, global0.b.x), vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x))), func_3(firstTrailingBit(vec3<u32>(11704u, 1u, global0.a.x)), !vec2<bool>(global0.b.x, global0.b.x)).x)));
    global0 = Struct_3(func_4(func_4(func_4(func_4(Struct_3(global0.a, vec2<bool>(global0.b.x, true)), vec4<u32>(35972u, var_1.a, global0.a.x, 34941u), 393f, global0.a), vec4<u32>(0u, 4294967295u, 9788u, var_1.a) ^ vec4<u32>(global0.a.x, u_input.a.x, 45665u, var_1.a), _wgslsmith_f_op_f32(floor(1287f)), global0.a), select(vec4<u32>(10080u, 1u, u_input.a.x, 11260u), ~vec4<u32>(var_1.a, 90347u, 0u, 1u), select(vec4<bool>(true, global0.b.x, global0.b.x, false), vec4<bool>(true, true, global0.b.x, true), global0.b.x)), 1000f, ~(~global0.a)), ~vec4<u32>(select(0u, 0u, true), 1u, 82405u, ~var_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(993f + -1103f))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, var_0.a)), vec3<u32>(61039u, ~u_input.a.x, _wgslsmith_sub_u32(21934u, 1u)))).a, vec2<bool>(false, true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(414f, 244f))), all(global0.b))), -467f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(592f, 1374f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-678f - -1410f), _wgslsmith_f_op_f32(-314f - 2768f)))), !global0.b.x)));
    global0 = func_4(Struct_3(vec3<u32>(~1u, ~(~u_input.a.x), ~_wgslsmith_sub_u32(50973u, 12471u)), vec2<bool>(false, global0.b.x)), vec4<u32>(_wgslsmith_div_u32(~(1u & global0.a.x), 17403u), var_0.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.a.x, 158783u), min(~var_1.a, 4294967295u), 1u), func_5(select(!vec4<bool>(true, global0.b.x, global0.b.x, true), select(vec4<bool>(true, global0.b.x, false, false), vec4<bool>(true, global0.b.x, true, false), vec4<bool>(false, false, false, true)), true)).a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-787f, 281f)) - _wgslsmith_f_op_f32(-178f - _wgslsmith_f_op_f32(1000f - 880f)))), global0.a);
    var var_3 = -firstTrailingBit(max(_wgslsmith_add_i32(u_input.d.x ^ u_input.b.x, u_input.b.x << (4294967295u % 32u)), -12923i));
    var_0 = func_5(select(vec4<bool>(true, global0.b.x, !global0.b.x, any(func_4(Struct_3(global0.a, global0.b), vec4<u32>(global0.a.x, u_input.a.x, 65981u, u_input.a.x), -441f, global0.a).b)), !select(!vec4<bool>(false, global0.b.x, false, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, false, false), u_input.c > u_input.b.x), func_4(func_4(func_4(Struct_3(vec3<u32>(u_input.a.x, global0.a.x, 1u), vec2<bool>(true, global0.b.x)), vec4<u32>(var_0.a, 0u, u_input.a.x, u_input.a.x), 253f, vec3<u32>(261u, 16096u, var_1.a)), ~vec4<u32>(0u, 77462u, 4294967295u, 4467u), 1f, global0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 55302u, global0.a.x, var_0.a), vec4<u32>(0u, 56615u, u_input.a.x, var_1.a)) & vec4<u32>(4294967295u, 0u, 4294967295u, var_0.a), 825f, (global0.a >> (global0.a % vec3<u32>(32u))) >> (func_2(var_1, var_1, vec2<i32>(-1i, 0i)) % vec3<u32>(32u))).b.x));
    var var_4 = -939f;
    var var_5 = Struct_3(~global0.a, global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, u_input.b.x, -(i32(-1i) * -2147483647i), u_input.d.x);
}

