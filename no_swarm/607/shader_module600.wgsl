struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(28000u, u_input.a, max(u_input.b.x, 0u)), firstTrailingBit(arg_0.xxw)), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, arg_0), 1u)), u_input.c);
    let var_1 = Struct_1(select(global0.yzw, arg_0.zxx, vec3<bool>(false, ~var_0.b.x != (1i >> (global0.x % 32u)), false)), ~(-_wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.b.x, var_0.b.x, 126i), var_0.b)));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(var_1.a << (select(~u_input.b.xzy, ~var_1.a, true) % vec3<u32>(32u)), vec3<u32>(global0.x, firstTrailingBit(26444u), ~min(arg_0.x, u_input.a))), ~var_1.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(764f, 127f) - vec2<f32>(1081f, -344f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(727f, 1157f) * vec2<f32>(1000f, -516f)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1016f, 244f))) * vec2<f32>(784f, -243f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(715f, -1276f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, 368f)), any(vec3<bool>(true, false, false))))))));
    global0 = ~arg_0;
    return _wgslsmith_add_vec4_u32(vec4<u32>(83272u, 4294967295u >> (0u % 32u), 27931u, ~_wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(0u, 42956u, 64643u))) & (_wgslsmith_mod_vec4_u32(vec4<u32>(26195u, arg_0.x, 1u, 0u), vec4<u32>(arg_0.x, 103439u, var_1.a.x, 4294967295u)) | select(arg_0, arg_0, all(vec2<bool>(true, true)))), vec4<u32>(abs(4294967295u), _wgslsmith_clamp_u32(u_input.a, 45609u, _wgslsmith_sub_u32(select(4294967295u, 4294967295u, true), ~global0.x)), reverseBits(~0u << (_wgslsmith_dot_vec4_u32(arg_0, arg_0) % 32u)), var_2.a.x));
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    global0 = abs(_wgslsmith_add_vec4_u32(func_3(~vec4<u32>(global0.x, u_input.b.x, global0.x, global0.x)), func_3(vec4<u32>(_wgslsmith_sub_u32(18691u, global0.x), 1u, ~arg_0.x, ~0u))));
    var var_0 = !vec2<bool>(false, u_input.b.x > (0u << (1u % 32u)));
    var var_1 = -1228f;
    var_0 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0.x), !var_0.x), vec2<bool>(true, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec2<bool>(var_0.x, -1i > u_input.d)), !(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), true)), vec2<bool>(all(vec3<bool>(true, true, true)), false)), vec2<bool>(any(select(select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false)), vec3<bool>(true, true, true), true)), var_0.x));
    let var_2 = _wgslsmith_mult_vec4_u32(u_input.b ^ _wgslsmith_mult_vec4_u32(min(~vec4<u32>(4517u, 53358u, arg_0.x, u_input.a), ~u_input.b), vec4<u32>(u_input.a ^ arg_0.x, arg_0.x, select(27336u, u_input.b.x, var_0.x), select(global0.x, 4294967295u, var_0.x))), u_input.b);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 856f)) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(124f + 447f) + _wgslsmith_f_op_f32(round(-1155f))), -764f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> bool {
    global0 = ~_wgslsmith_mod_vec4_u32(~(~u_input.b), vec4<u32>(~global0.x, 4566u >> (global0.x % 32u), ~1u, _wgslsmith_dot_vec3_u32(u_input.b.zyy, vec3<u32>(arg_3.d.a.x, 1u, arg_3.d.a.x)))) & ((u_input.b & ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, arg_3.d.a.x, arg_3.d.a.x, 0u), u_input.b)) << ((_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global0.x, 11046u, global0.x, u_input.a)), ~u_input.b) >> (vec4<u32>(~45246u, global0.x, ~global0.x, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1035f, arg_2, 807f, arg_1.x) - vec4<f32>(arg_1.x, -2587f, -2666f, arg_2))), vec4<f32>(-1076f, _wgslsmith_f_op_f32(step(-814f, 144f)), _wgslsmith_f_op_f32(arg_1.x * 1547f), 2285f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-313f + arg_2), arg_2, -404f, -1000f), _wgslsmith_f_op_vec4_f32(func_2(u_input.b.yx))))));
    global0 = u_input.b;
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(reverseBits(31523u)), 1u, ~(global0.x | _wgslsmith_div_u32(arg_3.d.a.x, global0.x)), ~(~(1u >> (u_input.a % 32u)))), u_input.b);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(6823u, countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.wz, global0.xx)), 4294967295u), ~u_input.b.yxz);
    let var_1 = select(vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), false)), all(vec3<bool>(false, any(vec4<bool>(true, false, true, true)), true)), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec4<bool>(!any(vec2<bool>(false, false)), any(vec2<bool>(true, true)), !(80468u != global0.x), any(vec3<bool>(false, true, true))), vec4<bool>(!any(vec2<bool>(false, true)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), true, true & any(vec2<bool>(false, false))), func_1(Struct_2(true), vec2<f32>(788f, _wgslsmith_f_op_f32(f32(-1f) * -768f)), 1000f, Struct_3(true, Struct_2(true), _wgslsmith_div_i32(u_input.d, u_input.d), Struct_1(vec3<u32>(global0.x, var_0.x, var_0.x), u_input.c)))), select(vec4<bool>(any(vec2<bool>(false, false)), true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), false), vec4<bool>(true, true, _wgslsmith_div_i32(u_input.c.x, 5004i) < u_input.d, func_1(Struct_2(true), vec2<f32>(-696f, -203f), 1074f, Struct_3(false, Struct_2(true), u_input.d, Struct_1(vec3<u32>(u_input.a, 11385u, 1u), u_input.c))) | true), any(vec3<bool>(true, select(false, true, false), func_1(Struct_2(false), vec2<f32>(487f, -718f), 965f, Struct_3(true, Struct_2(false), 0i, Struct_1(vec3<u32>(u_input.a, 89908u, global0.x), u_input.c)))))));
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(global0.zz)).x + -834f)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1411f)), _wgslsmith_f_op_f32(f32(-1f) * -1744f))));
    var var_3 = any(!(!vec4<bool>(true, true, true, any(var_1.xx))));
    var var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 35695u, ~select(20603u, var_0.x & 1u, var_1.x)), vec3<u32>(~global0.x, 1u, _wgslsmith_add_u32(firstLeadingBit(global0.x), var_0.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global0.x, 4294967295u), vec3<u32>(var_0.x, 0u, 0u)))));
    var_2 = var_1.x;
    var var_5 = Struct_3(any(!(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, false, var_1.x, true), var_1))), Struct_2(true), -1i, Struct_1(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global0.x, 14036u, var_4.x)), var_0) | var_0, _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c, vec3<i32>(-1i, -60215i, u_input.d)), vec3<i32>(firstTrailingBit(u_input.c.x), ~(-2147483647i), 24214i), -u_input.c ^ vec3<i32>(-2147483647i, u_input.d, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(1i, 0i)), vec2<i32>(16333i >> (var_0.x % 32u), u_input.d << (10144u % 32u))), select(var_5.d.b.zz, ~firstTrailingBit(vec2<i32>(2147483647i, var_5.c)), true)), 1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1378f - -1082f)), 461f, -212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1014f) * -1007f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(min(-364f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-864f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(273f))))))));
}

