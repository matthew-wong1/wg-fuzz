struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 2147483647i);

var<private> global1: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = vec2<u32>(u_input.c.x, _wgslsmith_div_u32(1u, ~u_input.d.x));
    var var_1 = _wgslsmith_f_op_f32(arg_0 - 2615f);
    var_1 = -524f;
    var var_2 = Struct_2(32839u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1740f, -701f, arg_2, arg_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1155f, -1092f, -1721f, arg_0) + vec4<f32>(1000f, -177f, -463f, arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-207f, 1094f, arg_2, arg_0), vec4<f32>(arg_2, arg_0, arg_2, -1141f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1028f, arg_0, arg_0, arg_0)))))))), Struct_1(firstTrailingBit(~_wgslsmith_sub_i32(global0.x, -1i)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), arg_2 == arg_0)), true, !all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec4<f32>(arg_0, -1778f, _wgslsmith_f_op_f32(min(-227f, _wgslsmith_div_f32(arg_2, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)))), ~(abs(~u_input.d) ^ (vec3<u32>(1303u, var_0.x, var_0.x) & ~u_input.d)), false);
    global1 = reverseBits(max(max(abs(4294967295u), var_0.x), 10590u)) != abs(~(~1u));
    return vec2<i32>(36292i, reverseBits(2147483647i));
}

fn func_2() -> Struct_2 {
    global1 = !any(vec2<bool>(_wgslsmith_sub_i32(0i, global0.x) < -1i, false));
    var var_0 = vec2<bool>(!any(vec3<bool>(true, true, true)), true);
    global1 = var_0.x;
    let var_1 = Struct_3(firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, -2147483647i, -2147483647i, -1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, 4294967295u, 4294967295u), vec4<u32>(160u, u_input.b, 1u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-16254i, global0.x, -1i, global0.x), abs(vec4<i32>(0i, 0i, 42897i, 40269i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -504f, 482f, -368f) - vec4<f32>(-299f, 883f, 952f, -568f)))))), false, _wgslsmith_clamp_vec2_i32(vec2<i32>(-global0.x >> (~1096u % 32u), -56873i >> (max(94636u, u_input.c.x) % 32u)), min(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -3923i), vec2<i32>(global0.x, -870i)), vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, global0.x)), func_3(_wgslsmith_div_f32(-760f, -1402f), global0.x, 266f, vec3<i32>(global0.x, 0i, global0.x))), -((vec2<i32>(1i, global0.x) >> (u_input.d.zy % vec2<u32>(32u))) | ~vec2<i32>(global0.x, -2147483647i))));
    let var_2 = Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(-var_1.b), Struct_1(select(global0.x, firstLeadingBit(i32(-1i) * -22345i), true | (var_0.x || true)), true, var_0.x, !var_1.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.b), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(max(-332f, var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x) <= _wgslsmith_f_op_f32(f32(-1f) * -402f)))), ~(~u_input.d), false);
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(true, arg_0.c.c, any(select(vec3<bool>(true, any(vec3<bool>(arg_0.c.b, arg_0.e, false)), arg_0.c.c), vec3<bool>(true, true, arg_0.e), select(select(vec3<bool>(false, arg_0.c.b, arg_0.e), vec3<bool>(arg_0.e, true, arg_0.c.b), vec3<bool>(arg_0.e, arg_0.c.c, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0.e, false), true), select(vec3<bool>(arg_0.e, arg_0.e, true), vec3<bool>(true, arg_0.e, arg_0.c.b), arg_0.e)))), arg_0.e);
    let var_1 = arg_0.c.e.yy;
    var var_2 = vec4<i32>(-1i, -960i, ~firstTrailingBit(-(~(-25653i))), abs(-1i));
    let var_3 = !(!func_2().e);
    var var_4 = func_2();
    return Struct_1(arg_2.x, !(!var_0.x), any(var_0.zw), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.c.e * arg_0.c.e))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, 1108f, -689f, 493f) - var_4.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_4.c.e.x, var_1.x, var_4.b.x))) + _wgslsmith_f_op_vec4_f32(round(var_4.c.e))))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = !vec4<bool>(select(func_4(Struct_2(72016u, arg_1.e, arg_1, u_input.d, arg_3.x), ~14967u, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, arg_1.a, arg_2.x, global0.x), vec4<i32>(global0.x, 37397i, global0.x, arg_1.a))).d, false, !arg_1.d), all(!(!arg_3.xy)), any(vec4<bool>(arg_3.x, arg_1.b, arg_3.x, func_2().c.c)), !(!arg_1.c | (arg_3.x & true)));
    global0 = vec2<i32>(reverseBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(global0.x, arg_2.x), arg_1.a)) ^ (global0.x | arg_2.x), ~global0.x);
    var var_1 = select(select(vec4<bool>(func_4(Struct_2(arg_0, vec4<f32>(arg_1.e.x, arg_1.e.x, arg_1.e.x, 947f), arg_1, vec3<u32>(arg_0, arg_0, 0u), arg_3.x), firstLeadingBit(arg_0), ~vec4<i32>(1i, global0.x, 0i, 1i)).b, !all(vec4<bool>(arg_1.d, false, false, true)), true, !var_0.x), vec4<bool>(arg_3.x, any(!vec4<bool>(arg_3.x, arg_1.b, arg_1.c, arg_1.b)), true, arg_3.x), all(vec4<bool>(!arg_3.x, !var_0.x, true, arg_1.b))), !select(!(!vec4<bool>(false, true, arg_1.d, true)), vec4<bool>(true, false, true, arg_1.e.x != 282f), select(vec4<bool>(false, arg_1.b, arg_3.x, false), !vec4<bool>(true, true, arg_3.x, false), select(vec4<bool>(true, false, arg_3.x, false), vec4<bool>(arg_3.x, arg_1.c, arg_1.c, false), false))), _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1908f)) - arg_1.e.x)) <= arg_1.e.x);
    let var_2 = Struct_3(-vec4<i32>(_wgslsmith_mult_i32(global0.x, -2147483647i) & func_3(arg_1.e.x, arg_1.a, arg_1.e.x, vec3<i32>(1i, arg_2.x, arg_2.x)).x, global0.x, -global0.x, arg_1.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_1.e), vec4<f32>(arg_1.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1750f * 767f), _wgslsmith_f_op_f32(exp2(arg_1.e.x))), arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f * arg_1.e.x))))), arg_3.x, arg_2 >> (vec2<u32>(select(1u, 64485u, all(vec2<bool>(false, arg_3.x))), ~_wgslsmith_div_u32(1u, 4294967295u)) % vec2<u32>(32u)));
    let var_3 = !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b.x, 283f)), var_2.b.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) - 1050f), true, all(!vec4<bool>(true, false, var_2.c, var_1.x)), any(vec2<bool>(arg_1.b, true && arg_3.x)));
    return func_4(Struct_2(_wgslsmith_sub_u32(arg_0, 85003u) >> (firstLeadingBit(~u_input.a) % 32u), arg_1.e, Struct_1(-1i, var_2.c, arg_1.c, 0u >= arg_0, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.e)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, arg_0, 0u), ~u_input.d), !all(var_3)), ~arg_0, var_2.a);
}

fn func_1() -> i32 {
    var var_0 = func_5(~u_input.c.x, func_4(func_2(), 38092u, vec4<i32>(firstLeadingBit(~global0.x), 14627i, abs(~global0.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -27236i, -6069i), vec3<i32>(-1i, global0.x, global0.x)), max(vec3<i32>(14523i, global0.x, global0.x), vec3<i32>(-29823i, global0.x, 0i))))), reverseBits(select(vec2<i32>(-global0.x, 1i), firstTrailingBit(countOneBits(vec2<i32>(19737i, global0.x))), true)), !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), all(vec2<bool>(true, false)))));
    let var_1 = vec4<bool>(true, !var_0.d, var_0.b, !(firstLeadingBit(func_4(Struct_2(u_input.a, var_0.e, Struct_1(1i, true, false, false, var_0.e), u_input.d, true), 1u, vec4<i32>(var_0.a, 6581i, -756i, 1i)).a) < ~(var_0.a << (u_input.c.x % 32u))));
    var var_2 = ~(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.c), firstTrailingBit(0u))));
    global0 = -vec2<i32>(global0.x, -1501i);
    var_0 = func_2().c;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, true, !(!(global0.x <= global0.x)), _wgslsmith_mod_i32(global0.x | func_1(), global0.x) < (2147483647i | -_wgslsmith_clamp_i32(global0.x, 2147483647i, 2147483647i)), vec4<f32>(475f, 830f, 452f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(689f)), _wgslsmith_f_op_f32(max(1617f, _wgslsmith_f_op_f32(406f + -108f)))))));
    var var_1 = -(~_wgslsmith_mod_i32(firstLeadingBit(-26144i), var_0.a));
    var var_2 = any(vec3<bool>(true, func_2().e, var_0.c));
    var_2 = -518f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -708f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e.x))) * _wgslsmith_f_op_f32(1850f * _wgslsmith_f_op_f32(abs(var_0.e.x)))));
    let var_3 = firstTrailingBit(~46325i);
    global1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(25973u, Struct_1(global0.x, false, true, true, var_0.e), countOneBits(vec2<i32>(20217i, -32882i)), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, var_0.b, true), false)).e.x + var_0.e.x)));
}

