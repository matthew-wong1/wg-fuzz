struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !select(select(!select(vec4<bool>(false, arg_0.c.b, false, false), vec4<bool>(true, arg_0.c.b, arg_0.c.b, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, arg_0.c.b)), select(select(vec4<bool>(arg_0.c.b, false, arg_0.c.b, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, false), vec4<bool>(arg_0.c.b, false, true, arg_0.c.b), false), select(vec4<bool>(true, arg_0.c.b, arg_0.c.b, false), vec4<bool>(false, false, arg_0.c.b, arg_0.c.b), vec4<bool>(arg_0.c.b, false, true, true))), -881f >= arg_0.b.x), vec4<bool>(arg_0.c.b, !(arg_0.a.x <= 129210u), false || arg_0.c.b, all(select(vec2<bool>(arg_0.c.b, arg_0.c.b), vec2<bool>(arg_0.c.b, arg_0.c.b), arg_0.c.b))), !select(!vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, arg_0.c.b), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, arg_0.c.b), !arg_0.c.b));
    var_0 = select(select(vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, false, arg_0.c.b)) || true, true, any(vec2<bool>(true, var_0.x)), all(select(vec2<bool>(var_0.x, false), var_0.yw, vec2<bool>(true, var_0.x)))), !select(select(vec4<bool>(var_0.x, false, arg_0.c.b, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), false), vec4<bool>(true, true, false, true), !vec4<bool>(arg_0.c.b, arg_0.c.b, true, true)), !(!(!vec4<bool>(var_0.x, arg_0.c.b, var_0.x, false)))), !select(vec4<bool>(arg_0.c.b || var_0.x, -278f == arg_0.b.x, arg_0.c.b && var_0.x, true), vec4<bool>(arg_0.c.b & var_0.x, true, !var_0.x, false), select(!vec4<bool>(arg_0.c.b, true, false, true), !vec4<bool>(false, true, true, var_0.x), all(var_0.ww))), true);
    var var_1 = Struct_3(_wgslsmith_mod_i32(i32(-1i) * -42989i, reverseBits(arg_0.c.a.x) ^ -(arg_0.c.a.x ^ arg_0.c.a.x)), arg_0.c.a.xyz);
    var_1 = Struct_3((-3769i >> (abs(firstLeadingBit(arg_0.a.x)) % 32u)) | firstLeadingBit(abs(var_1.a)), vec3<i32>(_wgslsmith_sub_i32(var_1.b.x, ~(-arg_0.c.a.x)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, arg_0.c.a.x, arg_0.c.a.x) ^ vec3<i32>(-50725i, 1i, arg_0.c.a.x), vec3<i32>(2147483647i, var_1.a, arg_0.c.a.x)), -2147483647i), abs(_wgslsmith_dot_vec2_i32(arg_0.c.a.yz, abs(arg_0.c.a.wz)))));
    var_1 = Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(select(-var_1.b.x, _wgslsmith_mult_i32(-1i, var_1.b.x), var_0.x), _wgslsmith_div_i32(1i, var_1.a)), var_1.b.x), vec3<i32>(firstTrailingBit((i32(-1i) * -2147483647i) & abs(var_1.a)), var_1.b.x, ~abs(min(arg_0.c.a.x, 0i))));
    return _wgslsmith_mult_u32(29974u, abs(arg_0.a.x));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.a, reverseBits(vec3<u32>(func_3(Struct_2(vec4<u32>(121015u, 4294967295u, 11214u, 75172u), vec2<f32>(-1735f, 470f), Struct_1(vec4<i32>(-61664i, 34487i, -2147483647i, -2159i), false))), ~u_input.a.x, u_input.a.x)));
    var_0 = ~(~reverseBits(min(~vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(14420u, var_0.x, 55741u))));
    var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, 1u, u_input.a.x))), firstTrailingBit(~u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(6016u, var_0.x, u_input.a.x), u_input.a) | firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 33307u))), u_input.a);
    let var_1 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(-28719i, 10866i, -13142i, -27913i), vec4<i32>(9334i, 2147483647i, -2147483647i, -6174i)))));
    var var_2 = vec2<u32>(~u_input.a.x, min(min(3183u, 18540u) << ((_wgslsmith_mod_u32(4294967295u, 75824u) >> ((var_0.x | 34513u) % 32u)) % 32u), ~(~1u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-810f)), _wgslsmith_f_op_f32(max(325f, 1318f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(382f)), _wgslsmith_f_op_f32(round(1048f)))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(f32(-1f) * -694f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec3<i32> {
    let var_0 = u_input.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -759f)), 678f);
    let var_2 = 75468u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1292f, -150f, var_1.x, var_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(select(1109f, var_1.x, arg_1.x)), _wgslsmith_f_op_f32(func_2()), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -344f))))));
    var var_4 = Struct_3(_wgslsmith_div_i32(14552i, 1i), firstTrailingBit(vec3<i32>(-1i, -1i, -firstLeadingBit(1i))));
    return vec3<i32>(33479i, var_4.a & var_4.a, _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.b.x, var_4.b.x, 2147483647i, -19442i), reverseBits(vec4<i32>(-2147483647i, var_4.a, var_4.a, var_4.a))), _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(38997i, 1537i, -43960i, -30950i), vec4<i32>(var_4.a, -2147483647i, -2147483647i, 2147483647i)), -vec4<i32>(var_4.b.x, -2147483647i, var_4.a, var_4.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(u_input.a.x, ~firstTrailingBit(4294967295u));
    var var_1 = !select(vec4<bool>(true, true, _wgslsmith_mult_u32(u_input.a.x, 1167u) >= ~u_input.a.x, !all(vec2<bool>(true, false))), vec4<bool>(any(vec2<bool>(true, true)), true, false, all(vec4<bool>(true, false, false, false)) && true), false);
    var var_2 = Struct_2(vec4<u32>(1u, u_input.a.x, u_input.a.x, ~(u_input.a.x & ~54571u)), arg_2, Struct_1(max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.a, arg_0, arg_0), ~vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_0)), -min(vec4<i32>(arg_1.a, arg_0, arg_1.b.x, -1i), vec4<i32>(arg_1.a, 2147483647i, -1i, arg_1.b.x))), (-55714i != arg_0) & false));
    var_2 = Struct_2(vec4<u32>(_wgslsmith_div_u32(1u, 89573u), u_input.a.x, func_3(Struct_2(vec4<u32>(33796u, 47470u, 33795u, 1u), _wgslsmith_f_op_vec2_f32(step(var_2.b, vec2<f32>(arg_2.x, arg_2.x))), Struct_1(vec4<i32>(var_2.c.a.x, arg_0, 0i, arg_1.b.x), true))), ~var_2.a.x), _wgslsmith_f_op_vec2_f32(var_2.b - _wgslsmith_f_op_vec2_f32(exp2(var_2.b))), Struct_1(vec4<i32>(var_2.c.a.x, firstTrailingBit(arg_1.b.x) << (_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xy) % 32u), 7754i, ~firstTrailingBit(arg_1.b.x)), -26342i != (-1i >> (var_2.a.x % 32u))));
    var var_3 = ~abs(~vec4<u32>(firstTrailingBit(15660u), 1u, ~var_2.a.x, ~1u));
    return Struct_1(vec4<i32>(var_2.c.a.x & arg_0, _wgslsmith_div_i32(0i, arg_0), ~1i >> (_wgslsmith_clamp_u32(abs(30303u), u_input.a.x, ~1u) % 32u), 1i), !(var_2.c.b || true));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5785u)), ~1u & u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.zx, _wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_0) + arg_2))))), Struct_1(~countOneBits(arg_3.a), arg_3.b));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(func_1(vec4<u32>(u_input.a.x, 25986u, 0u, u_input.a.x), !vec3<bool>(false, var_0.c.b, true)).x, firstTrailingBit(reverseBits(-5927i))) << (~(~(var_0.a.x >> (13921u % 32u))) % 32u), _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(arg_3.a.x, var_0.c.a.x)), 65742i));
    var_0 = Struct_2(vec4<u32>(~u_input.a.x, var_0.a.x | ~var_0.a.x, 4294967295u, u_input.a.x) << (firstLeadingBit(var_0.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-arg_2), func_4(max(-func_1(var_0.a, vec3<bool>(false, arg_3.b, true)).x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.a.x, 1i, arg_3.a.x), vec3<i32>(11088i, 2147483647i, arg_3.a.x), vec3<i32>(arg_3.a.x, -1i, arg_3.a.x)), arg_3.a.wyx)), Struct_3(0i, abs(reverseBits(vec3<i32>(arg_3.a.x, arg_3.a.x, var_0.c.a.x)))), var_0.b));
    let var_2 = -(func_1(_wgslsmith_clamp_vec4_u32(~var_0.a, ~var_0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.x, 64836u, var_0.a.x), var_0.a, vec4<u32>(4294967295u, 1u, 45737u, 0u))), !select(vec3<bool>(false, arg_3.b, var_0.c.b), vec3<bool>(var_0.c.b, false, var_0.c.b), true)).x >> (u_input.a.x % 32u));
    var var_3 = vec3<i32>(-11653i, func_4(_wgslsmith_clamp_i32(-min(var_0.c.a.x, 6202i), _wgslsmith_div_i32(-2147483647i, var_0.c.a.x), ~42817i), Struct_3(var_0.c.a.x, vec3<i32>(func_1(vec4<u32>(u_input.a.x, 2027u, 23196u, 14572u), vec3<bool>(false, var_0.c.b, false)).x, var_0.c.a.x, func_1(vec4<u32>(var_0.a.x, u_input.a.x, 4294967295u, var_0.a.x), vec3<bool>(true, false, true)).x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2, _wgslsmith_f_op_vec2_f32(step(var_0.b, var_0.b)))))).a.x, abs(~_wgslsmith_div_i32(func_1(var_0.a, vec3<bool>(true, false, false)).x, ~(-1i))));
    return select(!select(!select(vec2<bool>(arg_3.b, arg_3.b), vec2<bool>(var_0.c.b, false), vec2<bool>(var_0.c.b, true)), vec2<bool>(true, true), all(vec2<bool>(var_0.c.b, var_0.c.b)) && (0i == var_2)), select(!vec2<bool>(!var_0.c.b, !var_0.c.b), vec2<bool>(all(vec4<bool>(true, false, true, var_0.c.b)), true), true), select(vec2<bool>(var_0.c.b, false), select(!(!vec2<bool>(var_0.c.b, var_0.c.b)), !(!vec2<bool>(arg_3.b, true)), var_0.c.b), all(select(vec4<bool>(true, arg_3.b, true, true), select(vec4<bool>(var_0.c.b, arg_3.b, arg_3.b, var_0.c.b), vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.b, true), vec4<bool>(true, var_0.c.b, var_0.c.b, var_0.c.b)), select(vec4<bool>(false, true, false, arg_3.b), vec4<bool>(arg_3.b, false, arg_3.b, true), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec4<bool>(false, ((min(-28600i, -4478i) << (var_0.x % 32u)) <= ~(~64242i)) || !(45606u <= var_0.x), true, false);
    var_1 = vec4<bool>(!select(~7928i == firstTrailingBit(-1i), var_1.x, var_1.x), var_1.x, any(var_1.wxx), true);
    var var_2 = select(var_1.yz, func_5(563f, _wgslsmith_div_vec2_f32(vec2<f32>(-1710f, _wgslsmith_f_op_f32(max(246f, -346f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(f32(-1f) * -952f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-966f, 1f))), func_4(1i, Struct_3(~(-16730i), func_1(vec4<u32>(1u, 1u, 56358u, var_0.x), vec3<bool>(var_1.x, var_1.x, true))), vec2<f32>(_wgslsmith_div_f32(1624f, -1752f), -328f))), var_1.x);
    var_2 = vec2<bool>(var_2.x, var_1.x);
    var_2 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-139f)) - _wgslsmith_f_op_f32(trunc(518f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-951f, 598f) * vec2<f32>(556f, -501f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -221f), vec2<f32>(614f, -578f), var_1.x)), func_5(-1547f, vec2<f32>(-1589f, -671f), vec2<f32>(-156f, -212f), Struct_1(vec4<i32>(0i, 2147483647i, 6475i, 49523i), var_1.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(132f, -342f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(393f, 890f), vec2<f32>(1844f, -2398f), var_1.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, -425f))))), func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, -2147483647i), vec2<i32>(12984i, -16070i), vec2<bool>(false, true)), vec2<i32>(-13i, -11247i)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, 28949i)), ~vec2<i32>(-2147483647i, -2147483647i))), Struct_3(func_4(~(-13491i), Struct_3(89133i, vec3<i32>(-2147483647i, 1i, 31065i)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1974f, 667f)))).a.x, vec3<i32>(~(-70306i), 25345i, _wgslsmith_dot_vec4_i32(vec4<i32>(7281i, 23309i, 20787i, -51740i), vec4<i32>(0i, 53351i, 2147483647i, -22004i)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1346f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-722f, -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_0.x)));
}

