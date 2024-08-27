struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1382f, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(global0.a)), all(select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(global0.b, false, false, global0.b), true))), u_input.b.zy, select(_wgslsmith_mod_i32(-52189i, ~0i), -7915i, true) ^ max(-66115i, ~(-1i)), vec2<i32>(20281i, (~0i ^ u_input.a) << (max(18567u, ~42297u) % 32u)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -1459f)))), true), ~u_input.b.xz, 24878i, select(countOneBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(-7022i, 13377i), firstTrailingBit(vec2<i32>(1i, 1i)))), -(_wgslsmith_add_vec2_i32(u_input.b.yy, var_0.d) ^ u_input.b.xy), !vec2<bool>(var_0.a.b, true)));
    var_0 = Struct_2(var_0.a, max(u_input.b.zx, _wgslsmith_sub_vec2_i32(~(~u_input.b.xx), var_0.d)), u_input.a, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.a, 1i), _wgslsmith_mod_vec3_i32(u_input.b, u_input.b)), ~(-2147483647i)), _wgslsmith_div_i32(abs(u_input.c), _wgslsmith_mult_i32(var_0.c, ~var_0.d.x))));
    var var_1 = _wgslsmith_div_f32(944f, global0.a);
    var var_2 = var_0.a.b | var_0.a.b;
    return (65247u | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 5021u, 38376u), vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, ~4294967295u), _wgslsmith_mod_u32(34174u, 22525u)), _wgslsmith_sub_vec2_u32(firstTrailingBit(select(vec2<u32>(26904u, 1u), vec2<u32>(26263u, 4294967295u), false)), min(_wgslsmith_div_vec2_u32(vec2<u32>(72426u, 45179u), vec2<u32>(49786u, 4294967295u)), ~vec2<u32>(4294967295u, 47075u)))) % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = Struct_3(arg_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a)), 1141f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(925f)))))), arg_1);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1608f)), var_0.a.a))), -1733f, _wgslsmith_add_u32(arg_0.x, 0u) <= 62591u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(trunc(arg_1.a.a))) * _wgslsmith_f_op_f32(round(475f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a - -348f)))))));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(-(~var_0.c.d.x | arg_1.b.x), ~0i), 0i, i32(-1i) * -_wgslsmith_div_i32(u_input.b.x, -var_0.c.b.x), -arg_2);
    global0 = arg_1.a;
    let var_3 = !select(!(!select(vec2<bool>(global0.b, var_0.c.a.b), vec2<bool>(true, var_0.c.a.b), global0.b)), !vec2<bool>(arg_1.a.b, true), vec2<bool>(all(select(vec2<bool>(var_0.a.b, true), vec2<bool>(arg_1.a.b, var_0.a.b), vec2<bool>(false, true))), true));
    return _wgslsmith_f_op_f32(f32(-1f) * -2855f);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1088f * global0.a), global0.b);
    let var_1 = Struct_3(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_mult_u32(arg_2, arg_2), ~arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 25266u), vec3<u32>(1u, 67366u, 2869u)), func_3(arg_3.x)), Struct_2(var_0, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0), arg_3.yw), -9169i, -vec2<i32>(31433i, -2147483647i)), -2147483647i)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a)))), Struct_2(var_0, firstLeadingBit(~(~vec2<i32>(u_input.b.x, -2147483647i))), 1i, abs(select(~arg_3.yx, vec2<i32>(-1i, arg_3.x), global0.b))));
    let var_2 = vec4<u32>(1u ^ ~(~_wgslsmith_mod_u32(1u, arg_2)), 1756u, _wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, arg_2, 0u)), vec3<u32>(~arg_2, arg_2, 4294967295u)) >> (4294967295u % 32u));
    global0 = Struct_1(-489f, !(!any(select(vec4<bool>(true, var_1.c.a.b, global0.b, global0.b), vec4<bool>(false, var_1.c.a.b, var_0.b, var_1.c.a.b), vec4<bool>(var_1.a.b, true, arg_1.x, true)))));
    global0 = Struct_1(global0.a, true);
    return var_1;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    let var_0 = func_2(_wgslsmith_add_i32(-22787i, -u_input.c), !vec3<bool>(global0.b, any(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), arg_0.b)), true), 1u, vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.b.x), u_input.c, ~(-1i), _wgslsmith_add_i32(-1i, u_input.b.x) | 1i) << ((min(~vec4<u32>(1u, 4294967295u, 4294967295u, 27091u), vec4<u32>(1u, 1u, 1u, 1u)) << (firstTrailingBit(~vec4<u32>(7744u, 1u, 88772u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = 8584u;
    let var_2 = -_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-893i, 6838i, var_0.c.d.x, -1i), vec4<i32>(var_0.c.d.x, -3724i, 49830i, u_input.c)), ~vec4<i32>(8470i, var_0.c.b.x, 0i, 1i))), reverseBits(abs(vec4<i32>(u_input.c, -2147483647i, u_input.a, -6538i)) | vec4<i32>(1i, -1i, 1i, 1i)), abs(reverseBits(vec4<i32>(var_0.c.d.x, 38300i, var_0.c.d.x, var_0.c.c))));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(ceil(-410f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(395f, u_input.c == u_input.a))), global0.b), select(u_input.b.xy, vec2<i32>(14642i, u_input.b.x), select(vec2<bool>(global0.b, true), vec2<bool>(true, false), global0.b)) ^ select(min(-vec2<i32>(0i, u_input.c), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -18922i), vec2<i32>(u_input.c, 5610i))), ~(-vec2<i32>(u_input.a, -7186i)), !global0.b), u_input.c, u_input.b.yy);
    var var_1 = vec3<bool>(1u == _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 104768u, ~28249u, _wgslsmith_sub_u32(1u, 0u)), ~vec4<u32>(11766u, 1u, 1u, 4294967295u)), global0.b, all(select(!vec2<bool>(false, var_0.a.b), vec2<bool>(true, true), !(!vec2<bool>(var_0.a.b, true)))));
    let var_2 = var_1.yz;
    var_1 = vec3<bool>(!((max(6216i, var_0.b.x) ^ var_0.d.x) > ~(-u_input.b.x)), false, global0.b || !any(select(var_1.zz, vec2<bool>(var_2.x, var_2.x), var_1.yy)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(abs(func_2(u_input.b.x, vec3<bool>(var_2.x, true, true), 9891u, vec4<i32>(u_input.a, var_0.b.x, 0i, u_input.c)).b)), true))));
    global0 = var_0.a;
    var var_4 = Struct_2(func_2(u_input.a, !select(!vec3<bool>(var_1.x, true, var_2.x), vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(var_1.x, var_1.x, global0.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 72682u, 4294967295u, 0u), vec4<u32>(0u, 41372u, 16923u, 29262u)), vec4<u32>(1u, 0u, 48371u, 36486u)), select(abs(1u), _wgslsmith_add_u32(48548u, 1u), global0.b)), vec4<i32>(select(0i | u_input.b.x, countOneBits(u_input.b.x), true), var_0.d.x, _wgslsmith_mult_i32(2702i, var_0.c), _wgslsmith_sub_i32(-18000i, _wgslsmith_mod_i32(-20592i, -10332i)))).c.a, max(u_input.b.zz, u_input.b.zy), max(u_input.a, -u_input.a), u_input.b.yx);
    var_4 = Struct_2(func_2(var_4.c, !select(vec3<bool>(var_0.a.b, var_4.a.b, true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, var_1.x, true))), min(_wgslsmith_mult_u32(1u, ~1343u), ~1u | _wgslsmith_dot_vec3_u32(vec3<u32>(19626u, 25814u, 4294967295u), vec3<u32>(30255u, 6251u, 2069u))), select(~vec4<i32>(-7445i, var_4.b.x, var_4.b.x, var_4.b.x), countOneBits(vec4<i32>(var_0.b.x, var_0.b.x, var_4.c, -19431i)), !(var_2.x | true))).a, _wgslsmith_mod_vec2_i32(~(~abs(u_input.b.yz)), vec2<i32>(-min(-781i, 0i), ~(-1i))), func_2(reverseBits(var_4.c >> (firstTrailingBit(0u) % 32u)), vec3<bool>(true, true, true), _wgslsmith_sub_u32(~21764u, min(select(1u, 0u, var_1.x), 4294967295u)), -(vec4<i32>(-32184i, 2147483647i, -2147483647i, u_input.c) << (reverseBits(vec4<u32>(27395u, 4294967295u, 0u, 3315u)) % vec4<u32>(32u)))).c.d.x, -(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b, u_input.b.xz), firstLeadingBit(var_4.d)) | vec2<i32>(var_4.b.x, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-14519i << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(~28860u, ~14037u, 0u), ~1u) % 32u), min(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, global0.a))), _wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(-var_4.a.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, _wgslsmith_f_op_f32(f32(-1f) * -706f))))), _wgslsmith_clamp_u32(~abs(_wgslsmith_sub_u32(4294967295u, 49399u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(10153u, 4294967295u), vec2<u32>(11072u, 29394u), vec2<u32>(31460u, 32879u)), vec2<u32>(5591u, 14440u))), 61292u));
}

