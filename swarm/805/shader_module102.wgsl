struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = ~u_input.c;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1470f))))));
    var var_2 = arg_0;
    let var_3 = arg_0;
    var_2 = Struct_1(_wgslsmith_sub_i32(max(var_3.e.x >> (var_2.d % 32u), var_3.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(25599i, var_2.c, var_3.c, -9811i) | vec4<i32>(-11018i, arg_0.c, arg_0.e.x, 0i), ~u_input.a)) >= max(-arg_0.e.x, var_3.c), _wgslsmith_f_op_vec2_f32(var_3.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, var_2.b.x))) - var_2.b) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_2.b)), _wgslsmith_f_op_vec2_f32(var_2.b + arg_0.b), -736f <= arg_0.b.x)))), _wgslsmith_sub_i32(var_2.e.x, u_input.a.x), var_0.x, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~arg_0.e, -var_2.e), max(~vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-2147483647i, var_3.e.x))), countOneBits(-(vec2<i32>(var_3.e.x, -1i) << (var_0 % vec2<u32>(32u))))));
    return vec3<bool>(!all(vec3<bool>(var_2.a | false, true, true)), true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f * -221f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, 143f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(476f, 918f)))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-316f)), -159f))), _wgslsmith_dot_vec3_i32(u_input.a.www << (~_wgslsmith_mult_vec3_u32(arg_1.wwx, vec3<u32>(25602u, 4294967295u, arg_1.x)) % vec3<u32>(32u)), -vec3<i32>(-20863i, _wgslsmith_mult_i32(u_input.a.x, -1i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), countOneBits(~_wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(arg_1.x, 27135u))), u_input.a.zw);
    let var_1 = var_0.a;
    let var_2 = Struct_1(true, var_0.b, var_0.e.x, ~var_0.d, max(_wgslsmith_mult_vec2_i32(var_0.e, -u_input.a.yz) << ((select(u_input.c, u_input.c, vec2<bool>(var_0.a, arg_0.x)) << ((arg_1.zw >> (vec2<u32>(u_input.b, var_0.d) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.e));
    var_0 = var_2;
    let var_3 = var_2;
    return arg_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1958f, arg_2.b.x) * vec2<f32>(arg_2.b.x, arg_2.b.x)), arg_2.b, all(vec3<bool>(false, arg_2.a, arg_0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b * vec2<f32>(arg_2.b.x, -425f)))), vec2<f32>(637f, -721f))), max(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.xzx), vec3<i32>(u_input.a.x, 14198i, u_input.a.x)), u_input.a.x) << ((1u | arg_1) % 32u), _wgslsmith_mult_u32(u_input.c.x, select(max(_wgslsmith_mult_u32(arg_2.d, arg_2.d), abs(arg_2.d)), ~abs(arg_2.d), all(!vec2<bool>(arg_0.x, arg_2.a)))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(max(u_input.a.x, u_input.a.x), abs(u_input.a.x)), u_input.a.yz));
    var_0 = arg_2;
    var_0 = arg_2;
    var_0 = arg_2;
    var_0 = Struct_1(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x), _wgslsmith_add_i32(-arg_2.e.x, -arg_2.e.x), var_0.d, abs(u_input.a.yz));
    return 27901i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_u32(arg_1.x, 0u);
    let var_1 = (u_input.a.x ^ countOneBits(-(7858i | u_input.a.x))) > u_input.a.x;
    var var_2 = 1i | func_5(select(func_4(func_3(Struct_1(var_1, vec2<f32>(-941f, -514f), 0i, arg_0.x, u_input.a.ww)), arg_1), !(!vec3<bool>(var_1, false, true)), true), 11024u, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(913f, -792f), vec2<f32>(-631f, -1375f), true | var_1)), u_input.a.x, select(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(1u, var_0, 0u, 0u)), ~arg_1.x, var_1), vec2<i32>(_wgslsmith_mod_i32(0i, u_input.a.x), 0i)));
    var var_3 = u_input.a;
    let var_4 = ~(~u_input.c);
    return vec4<bool>(any(func_4(vec3<bool>(!var_1, var_1, func_3(Struct_1(true, vec2<f32>(583f, -491f), var_3.x, 4294967295u, u_input.a.zx)).x), ~arg_1).yz), any(select(func_4(vec3<bool>(false, true, var_1), reverseBits(arg_1)).zz, select(vec2<bool>(var_1, false), func_3(Struct_1(var_1, vec2<f32>(783f, -451f), -45727i, arg_1.x, vec2<i32>(7285i, u_input.a.x))).xx, !vec2<bool>(var_1, var_1)), true & (-57368i == var_3.x))), any(func_3(Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1683f, -636f))), max(38853i, 3788i), 4294967295u & arg_0.x, ~u_input.a.wy)).zx), false);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    var var_0 = Struct_1(all(func_2(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, 64948u, u_input.d), vec4<u32>(u_input.b, 1u, u_input.d, 1u))), vec4<u32>(reverseBits(u_input.d), ~u_input.c.x, ~u_input.b, u_input.d))), arg_0.yy, _wgslsmith_div_i32(u_input.a.x, ~select(-84577i, 54706i, true)), u_input.d, u_input.a.yy);
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.x, ~_wgslsmith_sub_i32(-60194i, 42074i), -14254i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.c, 2147483647i) & vec3<i32>(var_0.e.x, -1i, 2147483647i), vec3<i32>(-12619i, u_input.a.x, 2147483647i)) ^ abs(_wgslsmith_add_vec3_i32(u_input.a.yyy, vec3<i32>(0i, 19464i, u_input.a.x)))), 4294967295u, select(vec2<i32>(u_input.a.x, countOneBits(-1i) | -var_0.c), vec2<i32>(_wgslsmith_sub_i32(select(u_input.a.x, u_input.a.x, arg_1), reverseBits(var_0.c)), _wgslsmith_sub_i32(var_0.c, -27129i)), select(vec2<bool>(var_0.a, !arg_1), func_2(vec4<u32>(u_input.b, 1u, var_0.d, u_input.d) | vec4<u32>(var_0.d, 15724u, 2604u, 45043u), vec4<u32>(32400u, 2832u, 106956u, 0u)).xz, all(func_4(vec3<bool>(true, true, var_0.a), vec4<u32>(35437u, var_0.d, u_input.c.x, var_0.d)).xz))));
    var_0 = Struct_1(true, vec2<f32>(1312f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1107f + arg_0.x), _wgslsmith_f_op_f32(abs(1090f)))), -func_5(!vec3<bool>(var_0.a, var_0.a, true), ~4294967295u, var_1) ^ ~var_1.e.x, 36414u, -select(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_1.c) >> (vec2<u32>(u_input.c.x, 66577u) % vec2<u32>(32u)), countOneBits(vec2<i32>(var_1.c, u_input.a.x))), -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_0.c), var_1.e), select(func_3(Struct_1(false, var_0.b, -1i, var_1.d, vec2<i32>(var_0.e.x, 23713i))).xy, !vec2<bool>(var_1.a, false), func_2(vec4<u32>(u_input.c.x, var_1.d, var_0.d, 1u), vec4<u32>(1u, 9378u, var_1.d, 10333u)).zy)));
    var_0 = var_1;
    var_0 = Struct_1(var_0.a && (arg_1 & true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(arg_0.x, _wgslsmith_div_f32(var_0.b.x, var_0.b.x)))), u_input.a.x, ~u_input.b, select(abs(var_0.e), max(var_1.e, ~vec2<i32>(u_input.a.x, -1i)), arg_1));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(u_input.a, -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), max(u_input.a, ((vec4<i32>(0i, u_input.a.x, -39606i, u_input.a.x) << (vec4<u32>(4294967295u, u_input.d, u_input.d, 5682u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.d, 54707u, u_input.c.x, u_input.d) % vec4<u32>(32u))) & vec4<i32>(func_1(vec3<f32>(434f, 292f, -425f), false), 0i, 0i, func_1(vec3<f32>(-917f, -1236f, -613f), false))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1000f - 2468f), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, -470f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(951f, -881f) + vec2<f32>(1166f, -1000f)))))), var_0.x, 1u, var_0.wy);
    let x = u_input.a;
    s_output = StorageBuffer(-(select(select(u_input.a.wy, vec2<i32>(-52035i, var_0.x), var_1.a), ~var_1.e, vec2<bool>(var_1.a, var_1.a)) & (vec2<i32>(-1i) * -u_input.a.xw)));
}

