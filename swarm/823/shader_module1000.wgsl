struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<i32>(22488i, 8659i), 1u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec2<i32> {
    global0 = Struct_1(u_input.b.x, ~vec2<i32>(i32(-1i) * -global0.b.x, _wgslsmith_div_i32(arg_1.x, abs(u_input.c.x))), _wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(global0.c, u_input.b.x) << (4294967295u % 32u)), 109539u ^ global0.a));
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -373f) >= _wgslsmith_f_op_f32(step(-1105f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-536f)), 788f)))), true, all(vec3<bool>(false, true || any(vec2<bool>(arg_0, true)), (false | arg_0) && arg_0)));
    let var_1 = countOneBits(u_input.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-474f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -375f))), _wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(max(195f, -1213f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1188f + 1693f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1557f, -306f)) * -862f) * 1f), -271f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(382f * 979f), _wgslsmith_f_op_f32(f32(-1f) * -154f)), -258f))));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x)));
    return reverseBits(vec2<i32>(-2147483647i, 14827i));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global0 = Struct_1(~4294967295u, global0.b, arg_1.c);
    var var_0 = u_input.b ^ _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 90113u, arg_1.a), vec3<u32>(global0.a, 1u, u_input.b.x)), u_input.b >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 7666u, arg_1.a), vec3<u32>(0u, arg_1.a, arg_1.c), u_input.b) % vec3<u32>(32u))), abs(u_input.b));
    var var_1 = -(1i | arg_1.b.x);
    global0 = Struct_1(1u, countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), -_wgslsmith_add_vec2_i32(global0.b, u_input.c.ww))), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(315u, arg_1.a, 112271u, arg_1.c) | vec4<u32>(global0.a, 1u, global0.c, arg_1.c))), vec4<u32>((arg_1.a << (57608u % 32u)) | 32716u, 1u >> (arg_1.a % 32u), 9380u ^ _wgslsmith_clamp_u32(7496u, arg_1.a, 1u), _wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x))));
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~(1i | u_input.c.x)), -_wgslsmith_mod_i32(-global0.b.x, i32(-1i) * -1i)), u_input.c.zz);
    return 9716u;
}

fn func_2(arg_0: u32) -> u32 {
    global0 = Struct_1(arg_0, -countOneBits(global0.b), 4294967295u);
    return select(select(u_input.b.x, func_4(true, Struct_1(select(u_input.b.x, 14273u, true), func_3(true, vec3<i32>(-1i, 23687i, u_input.c.x)), 7432u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, -569f, 1000f)))), !any(vec3<bool>(true, true, true))), _wgslsmith_mult_u32(0u, ~(~firstLeadingBit(arg_0))), false);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = min(func_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(6698u, u_input.b.x) >> (global0.c % 32u), min(~78927u, 13098u))), max(u_input.b.x, u_input.b.x));
    var var_1 = Struct_1(_wgslsmith_mod_u32(u_input.b.x << (abs(1u) % 32u), min(global0.a, ~(~0u))), global0.b, _wgslsmith_add_u32(~abs(4294967295u), global0.c ^ ~firstTrailingBit(u_input.b.x)));
    let var_2 = ~_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(18914u, 11287u, 4294967295u, global0.a)), _wgslsmith_div_vec4_u32(vec4<u32>(20566u, 28602u, global0.c, 4294967295u), max(vec4<u32>(var_1.c, 54101u, 4294967295u, u_input.b.x), vec4<u32>(0u, global0.a, global0.c, 0u)))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(vec4<u32>(7857u, var_1.a, var_1.c, 16796u) | vec4<u32>(33163u, 5692u, 1u, 49625u)), vec4<u32>(func_4(false, Struct_1(var_1.a, vec2<i32>(u_input.c.x, u_input.c.x), 4294967295u), vec3<f32>(arg_0, 1571f, arg_0)), ~u_input.b.x, func_2(68818u), u_input.b.x)), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, var_1.a, global0.a), vec4<u32>(var_1.c, 23690u, u_input.b.x, 4294967295u), false), vec4<u32>(var_1.a, u_input.b.x, 0u, 0u))) % vec4<u32>(32u));
    global0 = Struct_1(~_wgslsmith_div_u32(30087u, _wgslsmith_mult_u32(global0.c, var_1.c) & ~117699u), _wgslsmith_mult_vec2_i32(global0.b >> (min(vec2<u32>(var_2.x, global0.c) ^ vec2<u32>(u_input.b.x, var_2.x), vec2<u32>(global0.a, u_input.b.x)) % vec2<u32>(32u)), vec2<i32>(global0.b.x, -_wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(-17616i, 0i)))), _wgslsmith_div_u32(min(_wgslsmith_mult_u32(4294967295u << (u_input.b.x % 32u), ~23406u), ~(u_input.b.x >> (1u % 32u))), 30487u));
    global0 = Struct_1(min(abs(global0.a | ~0u), 4294967295u), vec2<i32>(global0.b.x, -1i), abs(3805u));
    return select(vec2<bool>(true, arg_0 > _wgslsmith_div_f32(arg_0, 2780f)), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), vec2<bool>(true, true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), !vec2<bool>(any(vec2<bool>(true, true)) && true, false));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>) -> u32 {
    global0 = Struct_1(global0.a, vec2<i32>(u_input.a, -7520i) >> (vec2<u32>(~global0.c, global0.c) % vec2<u32>(32u)), ~global0.c);
    var var_0 = _wgslsmith_f_op_f32(trunc(-671f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1848f)))), _wgslsmith_f_op_f32(abs(479f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-612f)))) * 1f));
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(global0.a, 20631u, _wgslsmith_clamp_u32(u_input.b.x, 0u, 72106u), select(4294967295u, func_4(true, Struct_1(global0.c, global0.b, u_input.b.x), vec3<f32>(971f, 1434f, 801f)), all(vec2<bool>(arg_0.x, true)))), reverseBits((vec4<u32>(0u, 4294967295u, 0u, u_input.b.x) | vec4<u32>(65u, 0u, 1333u, global0.a)) ^ vec4<u32>(u_input.b.x, 76264u, 25560u, 76243u))) << (~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14744u, 200u, u_input.b.x, u_input.b.x), vec4<u32>(1u, global0.c, global0.a, global0.c)), _wgslsmith_div_u32(u_input.b.x, 21854u), abs(29162u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) << (vec4<u32>(1u, firstTrailingBit(3997u), global0.c, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = Struct_1(0u, vec2<i32>(global0.b.x, u_input.a) << (u_input.b.yx % vec2<u32>(32u)), firstLeadingBit(~abs(global0.c)) ^ countOneBits(~var_1.x));
    return ~u_input.b.x;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(arg_0.c, arg_0.b, arg_0.a);
    global0 = arg_0;
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = 0i;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1634f);
    var var_1 = func_6(Struct_1(38274u, global0.b, func_5(!func_1(var_0), vec4<bool>(true, true, true, true))), vec4<bool>(all(vec3<bool>(false, true, true)), 0u == (_wgslsmith_mult_u32(0u, u_input.b.x) ^ min(u_input.b.x, u_input.b.x)), true, !any(vec2<bool>(true, true)) == func_1(-150f).x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(max(var_0, var_0)))))) - _wgslsmith_f_op_f32(167f * var_0)) - _wgslsmith_f_op_f32(-var_0));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2085f), -1537f), -187f, var_0);
    var_1 = func_6(Struct_1(_wgslsmith_sub_u32(max(min(u_input.b.x, var_1.c), u_input.b.x ^ var_1.c), global0.c), vec2<i32>(1i, ~1i), func_2(~select(1u, 1u, true))), select(!vec4<bool>(true, u_input.c.x <= 30726i, 87625u >= global0.c, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), false));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(27550i | u_input.c.x)));
}

