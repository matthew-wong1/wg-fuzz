struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    return ~reverseBits(_wgslsmith_clamp_u32(countOneBits(arg_1.a), _wgslsmith_div_u32(arg_0.c.x, _wgslsmith_clamp_u32(u_input.c, arg_0.e.x, u_input.d.x)), ~min(u_input.b.x, arg_0.e.x)));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = ~(~vec3<u32>(0u, arg_0, func_3(Struct_1(1i, false, vec4<u32>(18755u, 31177u, u_input.c, 8924u), arg_1, u_input.b.yx), Struct_2(u_input.b.x, Struct_1(arg_1, true, vec4<u32>(u_input.c, 4294967295u, u_input.a, 56404u), arg_1, vec2<u32>(arg_0, 0u)), Struct_1(arg_1, false, vec4<u32>(40657u, 31875u, u_input.c, 33947u), 0i, u_input.d.zx), u_input.c, -627f))));
    var var_1 = 0i;
    var_1 = ~(1i | countOneBits(abs(arg_1)));
    let var_2 = ~(~abs(min(arg_1, arg_1) & _wgslsmith_div_i32(arg_1, 1i)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(-540f)), -871f, -703f);
    return Struct_2(39587u, Struct_1(_wgslsmith_div_i32(var_2, firstTrailingBit(-arg_1)), true, min(countOneBits(vec4<u32>(4294967295u, var_0.x, arg_0, arg_0) << (vec4<u32>(1u, arg_0, 27018u, u_input.b.x) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 100190u, 0u, 15779u), vec4<u32>(4294967295u, arg_0, u_input.a, 1u))), select(-var_2, -1i, false), countOneBits(abs(var_0.xy << (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))))), Struct_1(var_2, ~countOneBits(u_input.c) != 4294967295u, ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, 58951u, 0u), firstTrailingBit(vec4<u32>(44182u, 0u, u_input.d.x, u_input.a))), max(-11900i << ((arg_0 & 4294967295u) % 32u), ~var_2), u_input.d.xz), u_input.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.x + 495f), _wgslsmith_f_op_f32(max(-198f, -819f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, true)) + _wgslsmith_f_op_f32(var_3.x + 1428f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = func_2(~0u, arg_3.b.a);
    let var_1 = arg_3;
    var_0 = Struct_2(57731u, func_2(firstTrailingBit(~func_3(Struct_1(11645i, var_1.b.b, arg_3.b.c, var_1.c.a, var_0.c.e), Struct_2(arg_3.a, var_1.c, Struct_1(0i, false, vec4<u32>(u_input.a, arg_3.c.c.x, 52378u, 29638u), arg_3.b.d, vec2<u32>(arg_3.c.e.x, arg_3.b.c.x)), var_1.b.c.x, -392f))), func_2(u_input.a, 0i).b.a).b, Struct_1(var_1.b.d, func_2(countOneBits(arg_3.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_3.c.d, var_1.b.d, var_0.b.d), vec4<i32>(3830i, var_0.c.a, 1i, -1i))).b.b | false, vec4<u32>(24983u, 1u, ~max(u_input.b.x, 0u), ~abs(17027u)), arg_3.c.a, vec2<u32>(var_1.c.e.x, func_3(var_1.b, Struct_2(69311u, Struct_1(-39703i, arg_3.b.b, vec4<u32>(var_0.c.e.x, 4294967295u, 4294967295u, 13126u), arg_3.c.d, var_1.b.c.yx), Struct_1(-33628i, var_1.c.b, var_1.b.c, -2147483647i, vec2<u32>(var_1.a, var_1.b.c.x)), 21428u, -424f)))), ~_wgslsmith_sub_u32(~_wgslsmith_div_u32(var_0.d, 7201u), func_2(94264u, arg_3.b.a).c.e.x), var_1.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, arg_3.e));
    var var_3 = var_1.c;
    return -arg_3.b.d;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(272f, -400f))));
    let var_1 = any(!vec4<bool>((arg_2 ^ arg_3.b.a) > (arg_0.d << (arg_0.c.x % 32u)), !arg_3.c.b || any(vec4<bool>(arg_1, true, arg_0.b, arg_1)), arg_1 & true, arg_3.c.b));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(-27144i, 8110i), arg_0.d, 14476i);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.e), -248f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.e + arg_3.e), 816f))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_3.e)), _wgslsmith_div_f32(arg_3.e, -869f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0))))));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e + var_3.x))))));
    return !(!(!(!vec2<bool>(true, arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(Struct_1(~max(-48431i, 1i), any(vec2<bool>(true, true)), ~vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 82865u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 68687u), vec4<u32>(1u, u_input.c, u_input.b.x, 1u)), _wgslsmith_mult_i32(~7218i, 1i), countOneBits(reverseBits(u_input.d.yy))), true, ~func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1198f, 698f, -1000f, 870f), vec4<f32>(-450f, 460f, 114f, -435f))), _wgslsmith_f_op_f32(543f - 1021f), ~vec3<u32>(u_input.b.x, u_input.c, u_input.c), Struct_2(1u, Struct_1(22707i, true, vec4<u32>(4294967295u, 0u, u_input.c, 0u), -9958i, u_input.b.xy), Struct_1(-2147483647i, true, vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, u_input.c), 54960i, u_input.d.yx), 52327u, -750f)), Struct_2(abs(~u_input.d.x), Struct_1(1i, true, vec4<u32>(u_input.b.x, 64193u, 1u, 88315u) | vec4<u32>(2746u, 47684u, u_input.a, 17017u), firstLeadingBit(48957i), u_input.d.zx), Struct_1(-2147483647i, false, vec4<u32>(u_input.d.x, u_input.a, u_input.a, 1u), 0i, vec2<u32>(u_input.a, u_input.b.x)), u_input.d.x, _wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(f32(-1f) * -858f)))), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true)) || false), func_2(43146u & _wgslsmith_mod_u32(u_input.d.x, 1u), min(0i, abs(0i))).b.b), all(select(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !all(vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u), vec4<u32>(2553u, u_input.d.x, 4294967295u, 8233u)), ~vec4<u32>(0u, 1u, 36922u, u_input.d.x)) & _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c, 1u, u_input.d.x, u_input.a), vec4<u32>(u_input.d.x, 2956u, 4294967295u, 23801u), false), abs(vec4<u32>(u_input.d.x, u_input.c, 41794u, 8656u))), vec4<u32>(30966u, u_input.a, u_input.d.x, 61927u)), max(firstLeadingBit(firstLeadingBit(~vec4<u32>(4477u, 37661u, u_input.c, 0u))), min(vec4<u32>(u_input.d.x ^ u_input.c, ~18030u, 4294967295u, u_input.d.x >> (u_input.d.x % 32u)), ~func_2(4294967295u, 27778i).b.c)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -573f)));
    let var_3 = ~vec2<u32>(~(~1u) << (select(u_input.c, u_input.a, any(vec2<bool>(var_0.x, true))) % 32u), _wgslsmith_mod_u32(38967u, ~var_1));
    var_2 = 1013f;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(1u, -2147483647i).e, vec2<u32>(~max(3428u, 38163u), ~var_1), u_input.c >> (_wgslsmith_div_u32(~(~24877u), ~_wgslsmith_div_u32(22214u, var_1)) % 32u), _wgslsmith_add_u32(~firstTrailingBit(firstLeadingBit(101479u)), u_input.b.x));
}

