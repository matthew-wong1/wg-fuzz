struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec4<bool> {
    let var_0 = select(!vec4<bool>(!(arg_0.x != u_input.b), false, true, true), select(vec4<bool>(true, true, false, !(-1015f <= arg_1)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true | any(vec4<bool>(false, true, false, false)), true)), !(true && !all(vec3<bool>(false, true, false))));
    var var_1 = Struct_2(Struct_1(~(select(0u, arg_0.x, var_0.x) ^ 36121u)), arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -390f, arg_1, arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, -2015f) - vec4<f32>(arg_1, arg_1, arg_1, 242f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1533f, arg_1, arg_1, arg_1))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(761f - arg_1), _wgslsmith_f_op_f32(max(1105f, arg_1)), _wgslsmith_f_op_f32(select(977f, -1354f, var_0.x)), arg_1)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_1, arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(-134f)), -380f, arg_1)))));
    var_1 = Struct_2(var_1.a, arg_0);
    var var_3 = Struct_4(1u);
    return select(select(var_0, vec4<bool>(any(!var_0), all(select(var_0, var_0, var_0)), false || all(var_0.yxy), true), select(vec4<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), any(var_0.wzw), !var_0.x, var_0.x), var_0, var_0.x)), vec4<bool>(!(!var_0.x & false), var_0.x, true, var_0.x), vec4<bool>(~var_3.a < ~43007u, var_0.x, var_0.x, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = func_3(vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(1u, 8647u, 56155u)), 24950u), _wgslsmith_dot_vec3_u32(~arg_3, arg_3)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) - arg_1.e))))));
    var var_1 = Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-44812i, 2147483647i, arg_1.a, 0i), vec4<i32>(1i, arg_1.a, 0i, arg_1.a))), 2147483647i), true || any(!(!var_0.zwz)), true, _wgslsmith_add_vec2_u32(arg_3.xx, _wgslsmith_mult_vec2_u32(max(_wgslsmith_add_vec2_u32(arg_3.yx, arg_3.yy), abs(arg_3.zy)), arg_1.d & (vec2<u32>(arg_3.x, arg_3.x) << (vec2<u32>(u_input.b, 33811u) % vec2<u32>(32u))))), arg_1.e);
    var_1 = arg_1;
    let var_2 = false;
    var_1 = arg_1;
    return -max(max(-(~var_1.a), 1i), var_1.a);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_4(1u);
    var var_1 = Struct_3(2058i, true, func_3(vec2<u32>(var_0.a, firstLeadingBit(77210u)), -1400f).x, _wgslsmith_div_vec2_u32(abs(select(reverseBits(vec2<u32>(12937u, 73024u)), ~vec2<u32>(15175u, 15876u), 1u <= u_input.b)), _wgslsmith_add_vec2_u32(select(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(31198u, u_input.b), vec2<bool>(false, false)), vec2<u32>(4294967295u, ~4294967295u))), 1f);
    var_1 = Struct_3(_wgslsmith_sub_i32(arg_1.x, _wgslsmith_mult_i32(arg_0, 0i)), 72486u <= ~select(_wgslsmith_mod_u32(9779u, 8131u), _wgslsmith_mult_u32(57924u, var_0.a), var_1.c), true, vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), var_1.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2396f)) * 351f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1096f))), _wgslsmith_f_op_f32(max(-621f, 1000f)), any(!vec3<bool>(true, var_1.c, var_1.b))))));
    var_1 = Struct_3(~arg_0, select(false, true, true), select(true, true, var_1.b), vec2<u32>(~countOneBits(~1u), 73873u), var_1.e);
    let var_2 = vec3<bool>((23449i & max(_wgslsmith_mod_i32(var_1.a, 53509i), _wgslsmith_add_i32(-52291i, arg_1.x))) > func_2(Struct_1(1u), Struct_3(~arg_1.x, any(vec2<bool>(false, var_1.b)), all(vec4<bool>(var_1.c, true, var_1.b, var_1.b)), var_1.d & var_1.d, var_1.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e - var_1.e))), ~(vec3<u32>(var_0.a, u_input.b, 4294967295u) & vec3<u32>(49936u, 4294967295u, 66076u))), all(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(-1i, var_1.a, 1i)) <= ~(-27198i), all(func_3(vec2<u32>(86522u, var_1.d.x), var_1.e)), true, true)), var_1.c);
    return Struct_2(Struct_1(107861u), var_1.d);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = -2753i;
    var var_1 = func_4(-_wgslsmith_div_i32(func_2(Struct_1(u_input.a), Struct_3(var_0, true, true, vec2<u32>(arg_0, 4294967295u), -324f), -370f, ~vec3<u32>(arg_0, 0u, arg_0)), abs(-13967i)), countOneBits(-abs(vec2<i32>(-12446i, var_0))) & ~vec2<i32>(var_0 >> (u_input.a % 32u), var_0));
    let var_2 = !(!(!vec2<bool>(true, all(vec2<bool>(false, true)))));
    let var_3 = var_2;
    var var_4 = var_2.x;
    return min(~vec4<i32>(var_0, var_0, max(-var_0, -var_0), var_0), vec4<i32>(_wgslsmith_sub_i32(max(var_0, var_0 << (u_input.a % 32u)), 1035i), ~(~54588i) << (arg_0 % 32u), ~(-4653i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0) >> ((var_1.b << (var_1.b % vec2<u32>(32u))) % vec2<u32>(32u)), ~vec2<i32>(var_0, var_0))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_4(func_4(arg_0.x, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_0.x, 2147483647i), arg_0.x), vec2<i32>(arg_0.x | arg_2.a, ~arg_2.a))).b.x);
    let var_1 = ~max(111693u, 0u) ^ (arg_1.x | min(u_input.b, reverseBits(var_0.a)));
    var var_2 = any(select(vec2<bool>(arg_2.b, _wgslsmith_add_i32(arg_2.a, arg_2.a) > arg_2.a), !(!select(vec2<bool>(arg_2.b, false), vec2<bool>(true, false), vec2<bool>(arg_2.b, true))), true));
    var var_3 = arg_2;
    let var_4 = vec4<bool>(true, !(_wgslsmith_clamp_u32(arg_2.d.x, abs(4294967295u), ~var_1) == reverseBits(34375u)), all(vec3<bool>(true, all(!vec4<bool>(arg_2.b, arg_2.b, true, false)), all(vec2<bool>(arg_2.c, true)))), arg_2.c);
    return func_4(1i, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -34303i), vec2<i32>(-arg_0.x, 5193i)), max(firstTrailingBit(max(arg_0.ww, vec2<i32>(arg_2.a, arg_0.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(175i, var_3.a), vec2<i32>(arg_2.a, arg_2.a)), arg_2.a)), arg_0.zx)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5((~vec4<i32>(38926i, -2147483647i, -2147483647i, -10424i) >> (~vec4<u32>(89947u, u_input.b, 103762u, u_input.b) % vec4<u32>(32u))) ^ (func_1(u_input.b) & abs(vec4<i32>(1467i, -189i, -1i, 13786i))), firstLeadingBit(~(vec2<u32>(u_input.a, u_input.b) & vec2<u32>(4294967295u, u_input.a))), Struct_3(countOneBits(_wgslsmith_sub_i32(44629i, 17241i)), all(vec2<bool>(false, false)), true, vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), abs(0u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-128f))))), 38829u), vec2<u32>(~_wgslsmith_clamp_u32(u_input.b, firstTrailingBit(4294967295u), func_5(vec4<i32>(0i, -27343i, 2147483647i, 32996i), vec2<u32>(0u, u_input.b), Struct_3(-45382i, true, false, vec2<u32>(u_input.b, u_input.b), -964f), 0u).a), firstTrailingBit(4294967295u)));
    let var_1 = -(~firstTrailingBit(firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, -27207i)))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.b, ~vec2<u32>(4294967295u, 71766u)), _wgslsmith_clamp_u32(func_4(-4485i, max(vec2<i32>(32585i, 1i), vec2<i32>(-50511i, 2147483647i))).a.a, select(_wgslsmith_div_u32(u_input.b, 5096u), _wgslsmith_add_u32(1u, 75201u), true), ~var_0.b.x), var_0.b.x) % vec3<u32>(32u));
    let var_2 = var_0;
    let var_3 = min(var_1.x, abs(~var_1.x ^ _wgslsmith_clamp_i32(13649i, var_1.x, var_1.x))) | var_1.x;
    var var_4 = vec4<u32>(abs(countOneBits(69719u)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.a.a, ~4294967295u, ~0u)), vec3<u32>(u_input.b, _wgslsmith_sub_u32(var_2.b.x, 0u), 4294967295u) | select(max(vec3<u32>(var_2.a.a, 1u, 59371u), vec3<u32>(0u, 0u, 109681u)), ~vec3<u32>(var_2.b.x, var_0.b.x, var_2.b.x), any(vec2<bool>(false, false)))), countOneBits(u_input.b), ~0u);
    var var_5 = vec4<bool>(false, true, select(any(vec2<bool>(true, true)), _wgslsmith_div_i32(-21374i, -2147483647i) == abs(~var_3), !any(vec2<bool>(false, false)) && any(vec3<bool>(false, true, false))), true);
    var var_6 = Struct_4(_wgslsmith_add_u32(~(1u & var_4.x), u_input.a ^ ~firstTrailingBit(0u)));
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(37733u, firstLeadingBit(min((var_3 & 0i) | var_1.x, i32(-1i) * -38910i)));
}

