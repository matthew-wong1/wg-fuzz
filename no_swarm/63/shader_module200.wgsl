struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(global0.a, global0.a, 10650u), ~vec3<u32>(4294967295u, global0.a, 7286u)), vec3<u32>(global0.a, 39818u, 20261u)));
    let var_1 = Struct_1(1u);
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(0u, global0.a >> (11493u % 32u))), (~var_1.a << (var_1.a % 32u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(8906u, 20778u, 85122u), vec3<u32>(1u, 4294967295u, 4294967295u))), 15202u, abs(_wgslsmith_mult_u32(u_input.b, global0.a)));
    global0 = var_0;
    var var_3 = Struct_1(global0.a);
    return _wgslsmith_f_op_f32(-968f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(824f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -918f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = vec3<bool>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(35254u, 0u, 1u), vec3<u32>(u_input.b, arg_2.a, arg_2.a) & vec3<u32>(23600u, 5263u, arg_2.a)), u_input.b) != (1u >> ((63967u << (arg_2.a % 32u)) % 32u)), (select(any(vec2<bool>(false, false)), true, true) && false) | true, !any(vec2<bool>(true, true)));
    var var_1 = arg_0.x;
    global0 = arg_2;
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(20080u, 75377u, 1u), vec3<u32>(20422u, u_input.b, 11867u)));
    global0 = arg_2;
    return _wgslsmith_add_vec2_u32((_wgslsmith_div_vec2_u32(~vec2<u32>(arg_2.a, 4294967295u), vec2<u32>(1763u, u_input.b)) & abs(firstTrailingBit(vec2<u32>(18222u, arg_2.a)))) >> (~(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global0.a, 79683u), var_0.x) >> ((vec2<u32>(4294967295u, global0.a) | vec2<u32>(1u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(41755u, ~_wgslsmith_mod_u32(u_input.b, 4294967295u)));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<u32> {
    global0 = Struct_1(4294967295u);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f))));
    var var_1 = _wgslsmith_f_op_f32(max(656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(10921u, arg_1));
    var var_3 = _wgslsmith_add_i32(-2147483647i, u_input.a);
    return firstLeadingBit(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(func_3()), 826f)), -2147483647i, Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(1u, 4294967295u, 1u)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -select(_wgslsmith_div_vec4_i32(-vec4<i32>(11032i, 40734i, u_input.a, u_input.a) << (_wgslsmith_mod_vec4_u32(vec4<u32>(43581u, 0u, 4294967295u, arg_1.a), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u)), vec4<i32>(-61295i, 1i, 1i, firstTrailingBit(11400i))), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -48136i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 13363i, 2808i))), vec4<bool>(arg_0.x, all(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), any(vec4<bool>(arg_0.x, true, arg_0.x, true)), any(vec4<bool>(arg_0.x, true, arg_0.x, false)) == arg_0.x));
    var var_1 = (i32(-1i) * -9364i) == u_input.a;
    let var_2 = arg_3;
    global0 = arg_3;
    global0 = arg_3;
    return arg_1;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(reverseBits(global0.a));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -2228f, _wgslsmith_f_op_f32(step(923f, 659f)))))));
    return func_5(select(vec2<bool>(~u_input.b > countOneBits(u_input.b), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), false), !any(vec3<bool>(true, true, false))), Struct_1(~(~_wgslsmith_mult_u32(1u, u_input.b))), ~func_2(~46675u, 1u) ^ ~(vec2<u32>(0u, u_input.b) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a, u_input.b), vec2<u32>(global0.a, 25446u)) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_u32(1u, 1u)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = arg_3;
    global0 = func_1();
    let var_0 = _wgslsmith_clamp_vec2_u32(select(abs(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0.a), vec2<u32>(35982u, 58830u), vec2<u32>(global0.a, u_input.b)))), vec2<u32>(arg_0.a, arg_3.a), vec2<bool>(false, true)), (vec2<u32>(u_input.b & arg_3.a, 0u) ^ vec2<u32>(7821u, _wgslsmith_mod_u32(global0.a, 0u))) << (vec2<u32>(firstTrailingBit(1u), u_input.b) % vec2<u32>(32u)), func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1684f, -252f, -385f, -2351f)), vec4<f32>(291f, 810f, 1680f, -1394f))))), ~(~(-arg_2)), func_1()));
    let var_1 = ~vec3<u32>(firstLeadingBit(var_0.x), max(_wgslsmith_dot_vec2_u32(var_0, ~var_0), ~abs(1u)), arg_0.a);
    global0 = func_5(select(select(!arg_1.yz, select(select(arg_1.wy, vec2<bool>(false, false), false), arg_1.zw, all(arg_1)), vec2<bool>(arg_1.x, 1u >= u_input.b)), arg_1.wy, !arg_1.xw), func_1(), _wgslsmith_mod_vec2_u32(~vec2<u32>(48144u, ~0u), var_0), func_1());
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(4571u);
    global0 = Struct_1(func_6(func_1(), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), u_input.a, Struct_1(global0.a)) >> (17297u % 32u));
    let var_0 = true;
    var var_1 = func_5(select(select(select(!vec2<bool>(true, var_0), select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), var_0)), vec2<bool>(all(vec4<bool>(var_0, var_0, true, var_0)), !var_0), !vec2<bool>(var_0, var_0)), select(vec2<bool>(all(vec2<bool>(var_0, false)), false), select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0)), vec2<bool>(false, true)), all(select(select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(var_0, false, var_0), !vec3<bool>(false, true, var_0)))), Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(80294u, u_input.b, 69986u), vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(16858u, 54574u, 0u))), max(_wgslsmith_div_vec3_u32(vec3<u32>(34052u, global0.a, 107194u), vec3<u32>(48763u, 0u, 4000u)), vec3<u32>(u_input.b, 1u, 4294967295u) >> (vec3<u32>(1u, 4294967295u, u_input.b) % vec3<u32>(32u))))), select(vec2<u32>(u_input.b, ~(~44407u)), vec2<u32>(global0.a, _wgslsmith_div_u32(28265u << (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 11211u)))), var_0 | all(!vec2<bool>(var_0, false))), func_5(!(!(!vec2<bool>(var_0, true))), Struct_1(80908u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, 57024u) >> (vec2<u32>(4294967295u, 4839u) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(13736u, 65988u)), select(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), false)), Struct_1(func_5(vec2<bool>(var_0, var_0), func_5(vec2<bool>(var_0, var_0), Struct_1(global0.a), vec2<u32>(u_input.b, global0.a), Struct_1(u_input.b)), vec2<u32>(u_input.b, 1u) & vec2<u32>(58000u, 1u), func_1()).a)));
    global0 = Struct_1(countOneBits(109550u));
    var_1 = func_5(!vec2<bool>(var_0, !var_0), func_5(!select(vec2<bool>(var_0, false), !vec2<bool>(true, var_0), !var_0), Struct_1(var_1.a), ~(~abs(vec2<u32>(0u, 4155u))), Struct_1(0u)), vec2<u32>(u_input.b, var_1.a), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, 610f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -992f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(488f, _wgslsmith_f_op_f32(-1112f - -497f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1568f, -541f), vec2<f32>(-233f, 613f))))), func_5(vec2<bool>(var_0 & var_0, false), Struct_1(~(~var_1.a)), vec2<u32>(func_6(Struct_1(0u), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, true), vec4<bool>(true, var_0, var_0, false)), i32(-1i) * -2147483647i, Struct_1(global0.a)), ~_wgslsmith_div_u32(global0.a, 95291u)), Struct_1(~_wgslsmith_div_u32(0u, 4294967295u))).a, _wgslsmith_dot_vec3_i32(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.a, 1i, -17133i), vec3<i32>(-1i, -37138i, u_input.a)) | (vec3<i32>(74808i, 17742i, 0i) ^ vec3<i32>(u_input.a, 1i, u_input.a))), _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, var_0, var_0)), vec3<i32>(u_input.a, -1966i, u_input.a) & vec3<i32>(u_input.a, -2147483647i, u_input.a)) >> (vec3<u32>(20436u, 1u, global0.a) % vec3<u32>(32u))), _wgslsmith_sub_u32(firstTrailingBit(~(18485u & u_input.b)), u_input.b));
}

