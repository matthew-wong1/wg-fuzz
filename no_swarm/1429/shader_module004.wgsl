struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(max(arg_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f))));
    let var_2 = 1u;
    let var_3 = var_2;
    var var_4 = vec4<i32>(arg_0.e, var_0.b.x, ~(~(arg_0.e | 1i)), ~abs(_wgslsmith_dot_vec2_i32(arg_3.b.yy, var_0.b.xy))) << (~vec4<u32>(0u, firstTrailingBit(~61783u), u_input.a, u_input.a) % vec4<u32>(32u));
    return ~var_3;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(820f - 923f)), 864f)));
    var var_1 = Struct_1(any(!vec3<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)), false)), vec3<i32>(arg_2.x, firstLeadingBit(arg_3.x), 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))), vec3<bool>((~arg_0 & u_input.a) == 4294967295u, -2147483647i < (19274i ^ min(arg_2.x, 0i)), all(vec3<bool>(select(false, false, true), all(vec4<bool>(true, true, false, true)), true))), -(~max(_wgslsmith_mod_i32(1i, -2147483647i), -8622i)));
    let var_2 = vec2<u32>(abs(reverseBits(select(1u, 1u, true))), 42713u);
    var var_3 = Struct_1(true, vec3<i32>(countOneBits(0i), -10829i, _wgslsmith_mod_i32((var_1.e ^ var_1.b.x) ^ max(19630i, var_1.b.x), _wgslsmith_dot_vec2_i32(arg_2.zz, -vec2<i32>(var_1.e, arg_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))))) - -284f), var_1.d, arg_2.x);
    var_1 = Struct_1(false, -arg_2, _wgslsmith_f_op_f32(-var_1.c), vec3<bool>(all(vec2<bool>(true, arg_1 == 414u)), arg_0 >= ~(4294967295u ^ arg_1), !var_1.d.x), -1i);
    return _wgslsmith_div_u32(arg_1, ~u_input.a) ^ _wgslsmith_mult_u32(arg_1, arg_0);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 1u), arg_0), min(4294967295u, ~7240u)) == reverseBits(func_4(~14499u, func_3(Struct_1(arg_1, vec3<i32>(28400i, 26416i, -1i), 842f, vec3<bool>(false, true, true), -32705i), 1367f, true, Struct_1(false, vec3<i32>(2147483647i, 58637i, -4491i), 762f, vec3<bool>(true, arg_1, arg_1), -7020i)), abs(vec3<i32>(0i, 33592i, 23915i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-33208i, 1i), vec2<i32>(-63901i, -24812i), vec2<i32>(-25553i, -25808i)))), vec3<i32>(-1i, 0i, ~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-589f + 857f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(775f * -114f))))), select(!vec3<bool>(select(false, true, true), any(vec4<bool>(true, arg_1, false, arg_1)), any(vec3<bool>(arg_1, arg_1, false))), !(!(!vec3<bool>(arg_1, arg_1, arg_1))), true), reverseBits(max(1i, select(-2147483647i, 0i, any(vec4<bool>(false, arg_1, arg_1, true))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)) != 911f, ~vec3<i32>(~(var_1.b.x >> (u_input.a % 32u)), min(min(2147483647i, var_1.e), 2147483647i), var_1.e), _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(var_1.c * 578f))), !(!select(vec3<bool>(true, arg_1, false), select(vec3<bool>(arg_1, var_1.a, arg_1), vec3<bool>(true, true, var_1.d.x), vec3<bool>(true, false, var_1.a)), true)), var_1.b.x);
    var_0 = var_2.a;
    let var_3 = Struct_1((false && !any(var_2.d)) | true, var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.c))), select(var_1.d, vec3<bool>(!all(vec3<bool>(var_1.a, var_1.d.x, true)), var_1.a | any(vec4<bool>(var_1.d.x, true, var_2.d.x, var_1.d.x)), false), vec3<bool>(false, var_1.a, var_2.a)), -(~(0i)));
    return var_3;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = i32(-1i) * -arg_1.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1015f - 291f))));
    var var_2 = reverseBits(select(-4264i, 1i ^ countOneBits(var_0), !func_2(39299u, arg_1.d.x).a == func_2(_wgslsmith_add_u32(u_input.a, u_input.a), arg_0).a));
    let var_3 = func_2(u_input.a, arg_0);
    let var_4 = select(true, func_2(0u, any(vec2<bool>(false, arg_0)) && any(select(vec3<bool>(true, var_3.d.x, arg_0), vec3<bool>(var_3.d.x, arg_0, true), vec3<bool>(arg_0, true, var_3.d.x)))).d.x, true);
    return 22026i;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-984f)) - _wgslsmith_f_op_f32(f32(-1f) * -1421f))));
    let var_1 = var_0;
    var var_2 = min(~(~(~(vec3<u32>(43445u, 0u, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a)))), ~vec3<u32>(~(~36478u), _wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_mult_u32(u_input.a, 41343u)), ~u_input.a >> ((u_input.a | 27269u) % 32u)));
    var_2 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(12760u, ~1u, u_input.a), max(select(vec3<u32>(var_2.x, var_2.x, 48907u), vec3<u32>(var_2.x, var_2.x, u_input.a), true) >> (~vec3<u32>(u_input.a, 72410u, var_2.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(0u, u_input.a), ~19408u, ~0u))));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(~5230i, max(func_5(0u <= u_input.a, func_2(1u, false), ~var_2.x), -1i), 2147483647i), ~reverseBits(max(i32(-1i) * -1i, 12547i)));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec3<i32>(0i, -1i, abs(func_1())));
    var var_1 = -select(_wgslsmith_dot_vec3_i32(-min(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(0i, 2147483647i, var_0.x)), var_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.x, 23792i, 0i, var_0.x), vec4<i32>(_wgslsmith_clamp_i32(var_0.x, 9092i, -1i), 15697i, var_0.x | var_0.x, 7459i)), !(_wgslsmith_f_op_f32(round(413f)) != 850f));
    var_1 = _wgslsmith_add_i32(reverseBits(-28815i & (var_0.x >> (4939u % 32u))) ^ abs(var_0.x), 21487i);
    var var_2 = min(_wgslsmith_mult_u32(u_input.a, ~select(1008u, 22828u, true)), 28785u);
    let var_3 = Struct_1(func_2(~u_input.a, func_2(u_input.a, true).d.x).d.x, reverseBits(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, var_0.x, -8257i)), vec3<i32>(-3098i, _wgslsmith_clamp_i32(var_0.x, -2147483647i, var_0.x), -1i))), 569f, select(vec3<bool>(false, false, true), !vec3<bool>(select(false, true, false), true, true), false), max(-34346i, 11681i));
    var var_4 = var_3.b.xy;
    let var_5 = ~select(firstTrailingBit(min(-var_3.b.zx, ~vec2<i32>(var_3.b.x, -1i))), -vec2<i32>(abs(var_3.e), var_4.x), select(vec2<bool>(all(vec4<bool>(true, var_3.d.x, true, var_3.d.x)), true), vec2<bool>(true, true), var_3.d.x));
    var var_6 = ~vec4<i32>(var_4.x, 50149i, -16184i, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_3.e, var_6.x), var_0), var_0, vec3<bool>(false, false, var_3.d.x)), -(~var_6.wwz)), ~u_input.a, ~vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(36273u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 4294967295u, u_input.a)), ~4294967295u, reverseBits(~4294967295u)), _wgslsmith_mult_vec4_i32(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(16575i, var_3.b.x, var_5.x, var_5.x), vec4<i32>(-43694i, var_6.x, var_6.x, 2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_6.x, ~(-10903i), 1i & var_5.x, reverseBits(15113i)), ~select(vec4<i32>(var_5.x, var_0.x, var_4.x, 2147483647i), vec4<i32>(var_6.x, var_3.b.x, var_3.b.x, var_4.x), vec4<bool>(var_3.d.x, var_3.d.x, var_3.d.x, var_3.a)))), vec2<i32>(var_5.x, 1i));
}

