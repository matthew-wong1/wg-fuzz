struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -17255i, -57730i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<i32> {
    let var_0 = 0u;
    global0 = abs(firstTrailingBit(vec3<i32>(2147483647i, -16442i, (0i >> (arg_1 % 32u)) | (global0.x & -1i))));
    let var_1 = countOneBits(-(~global0.zz & -vec2<i32>(u_input.d.x, global0.x))) & reverseBits(u_input.d << (min(firstTrailingBit(vec2<u32>(1u, 1u)), ~vec2<u32>(50979u, 23576u)) % vec2<u32>(32u)));
    global0 = vec3<i32>(var_1.x, -46758i, 2147483647i) >> ((vec3<u32>(0u, 60882u << (var_0 % 32u), 129490u) >> ((~(~u_input.c) >> (countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(75068u, u_input.e, u_input.c.x), u_input.c)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = vec3<i32>(2147483647i ^ u_input.d.x, -2147483647i, -19329i);
    return select(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 66139i, ~global0.x), vec3<i32>(1i, -1i, i32(-1i) * -10536i)), vec3<i32>(~(-2147483647i), firstLeadingBit(1i), global0.x), arg_0.b.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    global0 = firstTrailingBit(abs(vec3<i32>(countOneBits(1i), -47693i, min(27056i, select(10965i, arg_2, arg_1.a)))));
    let var_0 = u_input.c.yz;
    global0 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(arg_2 & 27375i, 18418i, ~u_input.b), vec3<i32>(global0.x | _wgslsmith_add_i32(arg_2, arg_2), firstLeadingBit(1i), u_input.d.x)), ~_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, global0.x, arg_2), _wgslsmith_div_vec3_i32(func_3(arg_1, var_0.x), countOneBits(vec3<i32>(u_input.b, 0i, 0i)))));
    global0 = -(vec3<i32>(_wgslsmith_sub_i32(-arg_2, -15992i), u_input.d.x, global0.x) >> (abs(abs(~vec3<u32>(60747u, var_0.x, 4294967295u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(711f, -1067f, arg_0)) + 568f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f - 446f)))), select(vec2<bool>(true, true || arg_0), vec2<bool>(true, true), true), select(!arg_1.c, arg_1.c, false));
    return !(!(!var_1.b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(any(vec2<bool>((u_input.e != 34038u) != any(vec4<bool>(false, true, arg_0.c.x, arg_0.b.x)), _wgslsmith_sub_i32(global0.x, 29108i) >= ~0i)), func_2(var_0.b.x, arg_1, -2147483647i), !select(arg_0.c, !select(var_0.c, var_0.c, true), var_0.a));
    var var_2 = Struct_1(false, select(arg_0.b, !(!(!arg_1.b)), false), !arg_0.c);
    let var_3 = Struct_1(any(select(arg_0.c.zzx, select(vec3<bool>(true, false, false), vec3<bool>(var_1.b.x, true, var_1.b.x), false), var_1.c.xzx)) & false, !(!func_2(global0.x > 25443i, arg_1, min(-1i, 27474i))), select(select(var_1.c, !select(vec4<bool>(false, var_2.a, true, true), var_0.c, vec4<bool>(true, arg_0.c.x, arg_0.c.x, true)), _wgslsmith_add_i32(-4877i, u_input.d.x) < ~56607i), vec4<bool>(var_1.a && all(vec2<bool>(false, false)), var_2.c.x, !(u_input.d.x == 1i), true), true));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1469f * 2018f)), -1779f, 1310f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(802f, 273f, 187f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(144f, 190f, -664f) - vec3<f32>(-369f, -407f, -1000f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(106f, -874f, -304f) + vec3<f32>(-1012f, 476f, 578f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(375f, 1222f, 1200f) - vec3<f32>(271f, -287f, 216f)))))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = func_1(arg_0, func_1(Struct_1(arg_3 >= u_input.a, !arg_0.c.xx, vec4<bool>(true, arg_0.c.x, arg_0.c.x, true)), arg_0));
    var_0 = func_1(func_1(arg_0, func_1(func_1(func_1(arg_0, Struct_1(var_0.a, vec2<bool>(arg_0.b.x, var_0.c.x), var_0.c)), func_1(arg_0, Struct_1(false, vec2<bool>(var_0.c.x, true), vec4<bool>(var_0.a, arg_0.a, false, false)))), func_1(arg_0, Struct_1(arg_0.c.x, arg_0.b, vec4<bool>(false, var_0.b.x, arg_0.b.x, arg_0.a))))), func_1(arg_0, func_1(arg_0, arg_0)));
    let var_1 = func_1(func_1(Struct_1(true, arg_0.c.ww, select(vec4<bool>(false, arg_0.a, true, arg_0.b.x), var_0.c, !arg_0.c)), func_1(func_1(arg_0, arg_0), func_1(arg_0, func_1(Struct_1(arg_0.c.x, vec2<bool>(var_0.a, arg_0.b.x), var_0.c), arg_0)))), arg_0);
    let var_2 = var_1;
    var var_3 = vec2<bool>(var_0.a, func_2(var_0.a, arg_0, ~(_wgslsmith_sub_i32(0i, u_input.d.x) << (0u % 32u))).x);
    return Struct_1(any(var_0.c), vec2<bool>(func_2(var_1.b.x, func_1(Struct_1(var_3.x, vec2<bool>(false, false), vec4<bool>(var_1.a, false, var_3.x, var_1.b.x)), var_1), ~2147483647i).x, any(!vec4<bool>(var_2.b.x, var_0.a, arg_0.b.x, var_3.x)) != (true || all(vec4<bool>(var_1.a, var_3.x, true, false)))), vec4<bool>((global0.x >> (4294967295u % 32u)) <= func_3(func_1(arg_0, var_1), arg_3).x, var_1.b.x, false, !(arg_1.x >= _wgslsmith_f_op_f32(627f - -996f))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, -387f), _wgslsmith_f_op_f32(ceil(2272f))))), _wgslsmith_f_op_f32(-arg_3), 231f);
    var var_1 = func_1(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, global0.x, 0i), vec3<i32>(u_input.b, -1i, u_input.d.x), vec3<i32>(u_input.b, u_input.d.x, global0.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -13067i, global0.x), vec3<i32>(-25106i, 0i, global0.x), vec3<i32>(-36726i, -5786i, 1i))) < _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), i32(-1i) * -7345i), !(!arg_1.b), select(vec4<bool>(all(arg_1.c.wwy), arg_2.c.x | arg_2.c.x, arg_2.a, arg_2.a), !arg_2.c, !vec4<bool>(arg_2.c.x, arg_2.c.x, true, arg_1.c.x))), arg_1);
    global0 = ~(-_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -1i, u_input.d.x), max(vec3<i32>(-1i, global0.x, 10486i), vec3<i32>(0i, u_input.b, 0i))), max(vec3<i32>(global0.x, -2147483647i, global0.x), vec3<i32>(global0.x, -1i, 1056i)) << (u_input.c % vec3<u32>(32u))));
    var var_2 = vec3<bool>(~abs(10157u) == ~_wgslsmith_div_u32(arg_0 << (4294967295u % 32u), ~u_input.a), true, arg_2.b.x);
    var var_3 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, 36362u, 46065u), vec4<u32>(4294967295u, 4294967295u, 6093u, arg_0) | vec4<u32>(18457u, 20325u, arg_0, 18098u)), vec4<u32>(reverseBits(arg_0), ~_wgslsmith_add_u32(4377u, 8709u), _wgslsmith_div_u32(0u, arg_0), 1u));
    return select(func_4(func_1(Struct_1(true, vec2<bool>(false, arg_1.b.x), select(vec4<bool>(true, arg_1.b.x, true, var_1.a), vec4<bool>(arg_2.b.x, true, true, arg_1.a), arg_1.c)), func_4(Struct_1(arg_2.a, arg_2.c.xy, vec4<bool>(true, arg_1.c.x, arg_1.a, false)), var_0, 4294967295u, arg_0)), var_0, 97581u, 62316u).b, vec2<bool>(true, func_1(arg_1, arg_2).c.x), -(~(-19719i)) != ~_wgslsmith_clamp_i32(0i, global0.x, -global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -u_input.d.x, -1i), min(vec3<i32>(global0.x, -21768i, global0.x), vec3<i32>(2147483647i, -9831i, u_input.b)))), -((-vec3<i32>(40926i, global0.x, u_input.d.x) & select(vec3<i32>(u_input.b, global0.x, 50208i), vec3<i32>(u_input.b, 9309i, -2313i), vec3<bool>(false, false, false))) << (u_input.c % vec3<u32>(32u))), any(vec2<bool>(false, true)));
    global0 = (_wgslsmith_div_vec3_i32(~countOneBits(vec3<i32>(-611i, u_input.d.x, 0i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -29593i, 67920i), vec3<i32>(33390i, global0.x, global0.x))) << (countOneBits(u_input.c) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, 0i), vec3<i32>(1i, u_input.b, -2147483647i))), vec3<i32>(u_input.d.x, 1566i, _wgslsmith_div_i32(reverseBits(1i), -2147483647i)), -reverseBits(select(vec3<i32>(-2147483647i, u_input.b, -28635i), vec3<i32>(1i, -1i, u_input.d.x), false)));
    let var_0 = Struct_1(true, !func_5(4294967295u, func_4(func_1(Struct_1(true, vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_1(false, vec2<bool>(true, true), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1206f, 486f, -255f)), 69393u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.e), vec4<u32>(1u, 4294967295u, u_input.c.x, 1u))), Struct_1(true, vec2<bool>(false, true), vec4<bool>(true, false, true, true)), -452f), vec4<bool>(func_2(func_5(u_input.a, Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, false, false, false)), Struct_1(false, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -450f)).x, Struct_1(all(vec4<bool>(false, false, false, false)), func_4(Struct_1(true, vec2<bool>(false, false), vec4<bool>(false, true, false, false)), vec3<f32>(397f, -604f, -1007f), 1u, u_input.a).c.yw, vec4<bool>(true, true, true, true)), ~(i32(-1i) * -1i)).x, false, !(!any(vec3<bool>(true, false, true))), true));
    global0 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(1864i, ~select(u_input.d.x, global0.x, var_0.c.x), 19638i), vec3<i32>(firstTrailingBit(-1062i) << (u_input.e % 32u), global0.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.x, u_input.d.x, u_input.d.x, global0.x)), vec4<i32>(global0.x, u_input.b, u_input.d.x, 52712i)))), countOneBits(-vec3<i32>(u_input.d.x, firstTrailingBit(global0.x), _wgslsmith_div_i32(-2147483647i, global0.x))));
    var var_1 = var_0;
    let var_2 = ~(u_input.b & global0.x);
    let var_3 = func_1(func_4(func_1(Struct_1(var_0.c.x, func_2(var_0.b.x, var_0, -16563i), vec4<bool>(var_0.b.x, false, var_0.a, var_0.a)), Struct_1(var_2 == -54036i, vec2<bool>(false, true), !var_1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1124f, -1499f)), 611f, _wgslsmith_f_op_f32(trunc(-649f)))), u_input.a, u_input.c.x), var_0);
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(121427u, abs(u_input.e), 0u, u_input.a), vec4<u32>(24465u, 0u, _wgslsmith_clamp_u32(0u, u_input.c.x, u_input.e), reverseBits(u_input.c.x))) >> (vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(27787u), u_input.a & 0u), 4294967295u, ~u_input.c.x, ~82305u << (_wgslsmith_mult_u32(u_input.c.x, u_input.e) % 32u)) % vec4<u32>(32u)));
}

