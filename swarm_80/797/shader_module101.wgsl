struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = select(abs(select(-abs(vec4<i32>(2147483647i, -5292i, 6032i, arg_1.a)), firstLeadingBit(vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.a, -17583i)) ^ ~vec4<i32>(arg_1.a, -13799i, 0i, arg_1.c.x), select(!vec4<bool>(false, arg_0.x, global0.x, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_3.a.x, true), vec4<bool>(true, true, arg_3.a.x, arg_1.b), true), arg_0.x))), firstLeadingBit(max(arg_1.c, vec4<i32>(_wgslsmith_mod_i32(77148i, 15024i), _wgslsmith_mult_i32(1i, 34124i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, -1i), vec2<i32>(arg_1.c.x, -2147483647i)), arg_1.c.x & 2147483647i))), !(!vec4<bool>(true, arg_0.x, true, arg_1.b)));
    var var_1 = max(-2147483647i, max(1i, var_0.x));
    let var_2 = Struct_2(4449i, false, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~arg_1.c, ~vec4<i32>(1i, var_0.x, 2147483647i, arg_1.a), firstLeadingBit(~vec4<i32>(var_0.x, var_0.x, 2147483647i, -2147483647i))), _wgslsmith_div_vec4_i32(~(-arg_1.c), abs(~arg_1.c)), ~(vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, -1i, 0i))), arg_2, !select(arg_1.e, vec3<bool>(!global0.x, true, any(vec3<bool>(true, arg_3.a.x, false))), vec3<bool>(true, arg_1.e.x, true)));
    var var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~(~49394u), 0u, select(u_input.a, ~u_input.a, true)), vec3<u32>(_wgslsmith_clamp_u32(~u_input.a, ~4294967295u, firstTrailingBit(u_input.a)), _wgslsmith_clamp_u32(~1u, u_input.a << (u_input.a % 32u), u_input.a), 1u));
    let var_4 = !select(!select(!vec4<bool>(var_2.b, false, global0.x, global0.x), vec4<bool>(arg_3.a.x, true, var_2.e.x, arg_1.e.x), false), !vec4<bool>(!global0.x, false, false, any(vec2<bool>(arg_0.x, false))), !(!vec4<bool>(false, true, arg_3.a.x, arg_1.e.x)));
    return vec2<f32>(arg_2, -1211f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = select(17736i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_1.c << (vec4<u32>(u_input.a, 32231u, u_input.a, 1u) % vec4<u32>(32u)), ~vec4<i32>(930i, 5221i, arg_1.a, 12023i)), countOneBits(~0i))), any(select(select(!vec2<bool>(true, global0.x), select(arg_1.e.yy, arg_2.xx, vec2<bool>(true, false)), arg_1.e.xx), vec2<bool>(36435u < u_input.a, true), select(!vec2<bool>(true, global0.x), arg_1.e.zz, !arg_2.xy))));
    var var_1 = -2147483647i;
    var_1 = 24667i;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_0.x, arg_3)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, arg_0.x, arg_1.d, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-885f)), arg_3, arg_3, _wgslsmith_f_op_f32(sign(-1022f))))), vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(sign(-483f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2344f * arg_1.d), 932f))), arg_3, arg_0.x)));
    let var_3 = Struct_2(select(i32(-1i) * -34348i, _wgslsmith_mod_i32(0i, firstTrailingBit(_wgslsmith_clamp_i32(arg_1.a, -16113i, arg_1.c.x))), !(!(global0.x && false))), arg_1.e.x, -vec4<i32>(_wgslsmith_add_i32(arg_1.a, 0i) >> (countOneBits(u_input.a) % 32u), max(var_0, arg_1.c.x), 15758i, abs(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), arg_1.e);
    return arg_1.c.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = ~vec2<i32>(-54681i, max(27561i, -72254i)) >> (vec2<u32>(~1u, _wgslsmith_mod_u32(~4294967295u | arg_0.x, ~arg_1)) % vec2<u32>(32u));
    let var_1 = -1i;
    var_0 = vec2<i32>(var_1, max(_wgslsmith_add_i32(47321i, ~(-var_0.x)), var_1));
    let var_2 = ~vec4<i32>(func_4(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, global0.x, true), Struct_2(-27001i, global0.x, vec4<i32>(var_0.x, -59284i, var_0.x, 1i), 449f, vec3<bool>(true, true, global0.x)), -430f, Struct_1(vec2<bool>(global0.x, false)))), Struct_2(var_1 >> (u_input.a % 32u), global0.x, ~vec4<i32>(1i, var_1, var_1, var_0.x), _wgslsmith_f_op_f32(241f - -411f), vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(true, global0.x, false), select(vec3<bool>(false, false, global0.x), vec3<bool>(false, true, true), vec3<bool>(true, global0.x, false)), true), _wgslsmith_f_op_f32(-1f)), 0i, -(abs(var_0.x) ^ (i32(-1i) * -1i)), -1i);
    let var_3 = 0u;
    return Struct_1(!vec2<bool>(all(vec4<bool>(global0.x, false, true, true)) | all(vec3<bool>(global0.x, false, global0.x)), 1f == _wgslsmith_f_op_f32(floor(879f))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1055f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1520f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1193f))))) - _wgslsmith_f_op_f32(-155f + _wgslsmith_f_op_f32(-729f + 961f))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(reverseBits(-48171i), -2147483647i, 1i, 17648i);
    global0 = vec2<bool>(var_0.x < _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.x, 1i, var_0.x, var_0.x) & var_0, -var_0, vec4<bool>(global0.x, true, global0.x, false)), var_0), !global0.x | ((-var_0.x | ~var_0.x) <= ~(~var_0.x)));
    var var_1 = firstTrailingBit(-(~(-_wgslsmith_sub_i32(-1i, var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(select(max(vec2<u32>(u_input.a, 27559u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(0u, 13712u), vec2<bool>(global0.x, true)), func_2(select(vec2<u32>(73123u, u_input.a), vec2<u32>(1u, 1u), global0.x), 1u))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(f32(-1f) * -415f))));
    var_1 = -18188i;
    return Struct_1(vec2<bool>(func_2(reverseBits(vec2<u32>(u_input.a, u_input.a)), abs(1u)).a.x, !(global0.x || global0.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = vec3<u32>(4294967295u, select(~u_input.a, _wgslsmith_add_u32(firstTrailingBit(~u_input.a), 1u), global0.x), u_input.a);
    global0 = arg_0.a;
    global0 = arg_3.e.zy;
    global0 = !func_2(var_0.yy, _wgslsmith_sub_u32(abs(countOneBits(var_0.x)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, 28732u, 39854u, var_0.x), vec4<u32>(var_0.x, 69865u, var_0.x, u_input.a)), vec4<u32>(26816u, var_0.x, 4294967295u, 1u) | vec4<u32>(u_input.a, 4294967295u, 0u, 72415u)))).a;
    let var_1 = 777i;
    return -38619i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_i32(71914i, 1i);
    var var_1 = Struct_2((countOneBits(1i) << (~u_input.a % 32u)) & _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -31802i), ~vec2<i32>(2147483647i, -2147483647i)), ~18323i << (firstTrailingBit(101122u) % 32u)), all(vec2<bool>(true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -28906i, 11688i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, 0i), vec4<i32>(-1i, -2147483647i, -19668i, -3804i), vec4<i32>(2147483647i, -19339i, -17696i, -66038i))), 2147483647i, reverseBits(_wgslsmith_sub_i32(-1i, 1i)), func_6(func_1(), vec4<bool>(true, true, false, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, global0.x)), Struct_2(16302i, global0.x, vec4<i32>(-2147483647i, 31571i, -1i, 1i), -627f, vec3<bool>(true, true, true)))), countOneBits(~reverseBits(vec4<i32>(-2147483647i, 26668i, -2147483647i, 2147483647i))), _wgslsmith_sub_vec4_i32(abs(firstTrailingBit(vec4<i32>(15181i, 2147483647i, 59769i, 0i))), vec4<i32>(-1i) * -vec4<i32>(33777i, 84315i, -10513i, 0i))), _wgslsmith_f_op_f32(f32(-1f) * -1899f), select(select(vec3<bool>(u_input.a <= u_input.a, global0.x || global0.x, true), select(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false), !vec3<bool>(false, true, global0.x)), vec3<bool>(global0.x | false, !global0.x, false)), !select(!vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global0.x, false), all(vec3<bool>(false, true, global0.x))), !select(vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, false, true), global0.x)));
    var var_2 = ~(-(var_1.c.yww >> (~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))));
    var var_3 = select(vec4<bool>(false, var_1.b, var_1.b, func_2(~vec2<u32>(1u, u_input.a) & ~vec2<u32>(22699u, u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(17884u, 4588u, 4294967295u), vec3<u32>(0u, 1809u, u_input.a))).a.x), select(!vec4<bool>(any(vec2<bool>(var_1.b, global0.x)), all(vec4<bool>(true, var_1.b, global0.x, var_1.e.x)), 3009u != u_input.a, true), select(vec4<bool>(var_1.e.x, true, any(vec2<bool>(false, false)), !var_1.e.x), select(!vec4<bool>(var_1.b, global0.x, false, global0.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, global0.x, var_1.b, global0.x), vec4<bool>(false, var_1.b, true, var_1.b)), var_1.e.x), global0.x), select(!select(vec4<bool>(global0.x, global0.x, false, var_1.b), vec4<bool>(true, var_1.e.x, false, true), true), !select(vec4<bool>(global0.x, var_1.b, false, false), vec4<bool>(false, var_1.b, global0.x, false), false), !select(vec4<bool>(var_1.e.x, var_1.e.x, var_1.b, global0.x), vec4<bool>(var_1.e.x, global0.x, var_1.e.x, global0.x), false))), select(select(vec4<bool>(true, true, true, var_1.b), select(!vec4<bool>(true, global0.x, var_1.e.x, false), !vec4<bool>(true, false, var_1.b, global0.x), !vec4<bool>(true, global0.x, var_1.b, var_1.b)), _wgslsmith_f_op_f32(min(1742f, -472f)) >= _wgslsmith_f_op_f32(-var_1.d)), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, var_1.e.x), global0.x, true, false), var_1.e.x), !(!select(vec4<bool>(global0.x, var_1.b, var_1.b, false), vec4<bool>(var_1.b, var_1.e.x, false, true), vec4<bool>(var_1.b, var_1.b, true, false)))));
    let var_4 = -var_1.c.xwy;
    let var_5 = select(reverseBits(vec3<u32>(u_input.a, 15688u, 70056u)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 47692u, u_input.a, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 42094u, 4294967295u))), ~(~vec4<u32>(u_input.a, 104578u, u_input.a, u_input.a))), select(~countOneBits(1u), ~46467u, any(!vec3<bool>(false, global0.x, false))), 4294967295u), vec3<bool>(true, true, true));
    let var_6 = Struct_2(abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.a, var_1.a), abs(vec2<i32>(var_1.a, var_2.x) >> (var_5.zz % vec2<u32>(32u))))), var_3.x, max(abs(vec4<i32>(-1i) * -var_1.c), min(var_1.c, ~firstTrailingBit(var_1.c))), -1000f, select(select(vec3<bool>(any(vec3<bool>(var_3.x, false, false)), true, global0.x), var_3.xzw, select(vec3<bool>(true, var_1.b, false), select(var_3.zwz, var_1.e, vec3<bool>(var_3.x, true, var_1.e.x)), vec3<bool>(true, var_1.b, false))), var_1.e, true));
    var_2 = -vec3<i32>(var_1.a >> (u_input.a % 32u), countOneBits(_wgslsmith_mult_i32(var_1.a, 1i)) & ~(var_4.x & var_4.x), _wgslsmith_div_i32(~0i, var_1.c.x) >> (abs(var_5.x) % 32u));
    var_3 = vec4<bool>(var_5.x <= _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_5.x, 4294967295u), vec2<u32>(u_input.a, var_5.x))), any(var_3.xzz), (_wgslsmith_div_f32(218f, 1531f) <= _wgslsmith_div_f32(-1070f, var_6.d)) | var_6.b, !global0.x && !var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_5.x & u_input.a), ~vec4<u32>(0u, countOneBits(_wgslsmith_mod_u32(var_5.x, var_5.x)), u_input.a, countOneBits(var_5.x)), -1124f, ~vec4<u32>(u_input.a & 51196u, ~98678u, var_5.x & 1u, _wgslsmith_mod_u32(4294967295u, u_input.a)), -11539i);
}

