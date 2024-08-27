struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_1(select(vec3<bool>(all(vec3<bool>(arg_0.x, arg_2.d, false)), any(select(arg_2.a.zy, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false))), true), select(vec3<bool>(arg_0.x, true, !arg_2.d), select(!vec3<bool>(false, arg_2.a.x, arg_2.d), select(arg_0, arg_0, vec3<bool>(true, true, true)), !arg_2.a.x), true), !select(select(arg_2.a, vec3<bool>(false, false, false), true), !vec3<bool>(arg_2.a.x, arg_2.d, arg_3.x), true)), 11165i, arg_1, false, -16958i);
    let var_1 = reverseBits(~select(firstLeadingBit(~vec2<u32>(1u, 4294967295u)), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), abs(vec2<u32>(16222u, 1u))), select(var_0.a.zz, vec2<bool>(true, var_0.a.x), arg_2.a.x || true)));
    let var_2 = -1i;
    var var_3 = Struct_2(!(!any(select(vec4<bool>(arg_0.x, var_0.d, true, false), vec4<bool>(true, var_0.a.x, arg_0.x, arg_0.x), vec4<bool>(true, var_0.d, arg_3.x, true)))), Struct_1(!vec3<bool>(false, any(var_0.a), true), u_input.d, 470f, any(arg_3), u_input.a.x), var_1.x, Struct_1(select(!(!arg_0), select(select(vec3<bool>(false, false, arg_3.x), arg_0, false), var_0.a, select(var_0.a, arg_0, vec3<bool>(arg_0.x, true, true))), true), -1i, arg_2.c, all(vec2<bool>(all(vec4<bool>(arg_0.x, true, arg_0.x, var_0.a.x)), select(var_0.a.x, true, false))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.xxx, u_input.b.zwy), i32(-1i) * -7099i)), vec4<i32>(firstLeadingBit(~countOneBits(var_0.b)), ~min(52363i, -1i), ~(~var_0.e) | _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.b, 2147483647i), arg_2.b | arg_2.e), arg_2.b));
    var var_4 = Struct_3(Struct_2(arg_0.x, Struct_1(arg_0, 49914i, 873f, arg_0.x, -var_3.e.x << (var_3.c % 32u)), _wgslsmith_sub_u32(firstLeadingBit(var_3.c), ~var_1.x) >> (var_3.c % 32u), var_0, select(-select(vec4<i32>(2147483647i, 0i, 2147483647i, arg_2.e), var_3.e, vec4<bool>(true, true, var_3.d.a.x, false)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(var_3.e, u_input.b, u_input.b), u_input.b & var_3.e), select(select(vec4<bool>(true, false, var_0.d, arg_3.x), vec4<bool>(true, true, var_3.b.d, true), vec4<bool>(false, false, arg_3.x, true)), vec4<bool>(true, arg_0.x, var_3.d.a.x, true), arg_2.a.x))), Struct_2(arg_3.x, var_0, 1u, Struct_1(vec3<bool>(any(vec4<bool>(var_0.a.x, var_0.a.x, arg_0.x, var_0.d)), true, arg_3.x), ~(~u_input.e), _wgslsmith_f_op_f32(step(-688f, _wgslsmith_f_op_f32(-arg_2.c))), true, ~_wgslsmith_mult_i32(18434i, -42265i)), vec4<i32>(-1i, -_wgslsmith_mult_i32(var_2, 0i), countOneBits(var_0.b), min(~42498i, -var_0.e))), ~u_input.b.yzz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.d.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-138f, var_4.a.d.c, var_4.a.b.a.x)))))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_2(any(vec2<bool>(all(vec4<bool>(true, true, true, true)), arg_1 == arg_1)), Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), _wgslsmith_f_op_f32(f32(-1f) * -1178f), Struct_1(vec3<bool>(true, false, false), u_input.e, -1051f, false, 32507i), vec2<bool>(true, false))) * -1000f), true, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.e, 13743i << (arg_1 % 32u)), firstTrailingBit(_wgslsmith_clamp_i32(arg_0.x, 18255i, arg_0.x)))), 22680u, Struct_1(vec3<bool>(false, true, false), 1i | (max(14419i, -21473i) << (_wgslsmith_clamp_u32(arg_1, 33934u, 48749u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1756f)))), true, 0i), arg_0);
    let var_1 = Struct_1(!vec3<bool>(true, true, !var_0.a), _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(arg_0, u_input.a))), abs(max(-1i, 10636i)) | _wgslsmith_div_i32(~var_0.e.x, ~var_0.e.x)), -272f, true, select(_wgslsmith_clamp_i32(arg_0.x, u_input.e, _wgslsmith_mult_i32(u_input.b.x, max(-8354i, 2147483647i))), _wgslsmith_dot_vec2_i32(min(u_input.b.zy, var_0.e.wy), _wgslsmith_mult_vec2_i32(arg_0.xy, abs(var_0.e.zw))), max(arg_1, ~var_0.c) <= arg_1));
    var_0 = Struct_2(false, var_1, 1u, Struct_1(select(var_1.a, vec3<bool>(select(var_0.b.a.x, true, true), select(var_1.d, false, var_1.d), any(vec2<bool>(var_0.d.d, true))), select(select(var_0.d.a, vec3<bool>(false, false, true), var_1.a.x), var_0.b.a, vec3<bool>(false, false, var_1.d))), min(_wgslsmith_add_i32(countOneBits(var_1.b), var_1.e), min(_wgslsmith_add_i32(arg_0.x, 1i), _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, -1i))), 1f, ((17657i ^ var_1.e) << (reverseBits(var_0.c) % 32u)) == _wgslsmith_add_i32(u_input.d, var_0.b.b), -(~firstLeadingBit(u_input.d))), ~arg_0);
    var_0 = Struct_2(var_1.d, var_0.b, ~var_0.c, Struct_1(var_1.a, -firstTrailingBit(_wgslsmith_div_i32(1i, arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(max(-1052f, 1364f))))), var_1.d, firstLeadingBit(max(-29278i, arg_0.x))), countOneBits(u_input.a));
    var var_2 = Struct_1(select(vec3<bool>(false, all(select(vec4<bool>(var_1.d, var_1.d, true, var_1.a.x), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, var_1.a.x))), var_0.b.d), vec3<bool>(var_0.a, all(var_0.b.a.xy), var_0.d.d), all(select(select(var_1.a.yz, var_1.a.zz, vec2<bool>(var_0.d.a.x, var_1.d)), vec2<bool>(var_0.a, var_0.b.a.x), var_0.d.a.zz))), 0i << (max(arg_1, var_0.c) % 32u), var_1.c, any(select(vec4<bool>(var_0.c > 0u, !var_0.a, all(vec4<bool>(false, var_1.d, var_0.a, var_0.d.d)), false), select(vec4<bool>(false, false, false, var_1.d), select(vec4<bool>(var_0.b.d, false, var_1.d, var_1.d), vec4<bool>(var_1.d, var_1.a.x, true, true), vec4<bool>(var_0.a, true, var_1.d, false)), !var_1.a.x), !all(var_1.a.xz))), -reverseBits(var_0.e.x));
    return select(!vec3<bool>(var_1.a.x, any(var_1.a.xy), !all(vec2<bool>(true, var_0.a))), select(vec3<bool>(!var_0.b.a.x & var_1.d, !any(var_0.b.a.zy), true), vec3<bool>(true, true, var_0.b.d), all(select(select(vec4<bool>(true, var_1.d, true, true), vec4<bool>(true, var_1.d, false, var_1.a.x), var_1.a.x), select(vec4<bool>(true, var_1.d, var_0.d.d, false), vec4<bool>(var_2.a.x, false, false, var_2.d), var_0.d.a.x), vec4<bool>(false, var_1.a.x, false, var_2.a.x)))), !vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_1, arg_1)) < ~arg_1, var_2.a.x, all(var_2.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = arg_3.b.b;
    var var_1 = Struct_1(select(vec3<bool>(!(!var_0.d), true, false), !func_2(u_input.a, ~4294967295u), vec3<bool>(!arg_2.a, true, !arg_3.a.d.d == false)), ~u_input.a.x, -1029f, arg_2.d.a.x, min(-u_input.c.x, (_wgslsmith_add_i32(0i, var_0.b) >> (_wgslsmith_add_u32(arg_1.x, 26997u) % 32u)) >> (1u % 32u)));
    var var_2 = arg_3.b.b;
    var_1 = arg_2.d;
    var_1 = Struct_1(select(!(!(!var_2.a)), !vec3<bool>(all(vec2<bool>(false, arg_2.d.d)), arg_3.a.b.a.x, any(vec2<bool>(true, false))), !select(vec3<bool>(var_2.a.x, true, var_0.d), arg_2.b.a, false)), 35758i, arg_0.x, all(select(select(!vec4<bool>(var_0.a.x, var_1.d, false, true), !vec4<bool>(true, var_1.a.x, true, var_1.d), func_2(vec4<i32>(-18450i, var_0.b, 1i, -14946i), 98374u).x), !(!vec4<bool>(true, arg_3.b.d.d, var_0.a.x, var_0.d)), !vec4<bool>(true, var_1.d, false, var_1.d))), -2147483647i);
    return ~arg_1.x;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-584f - _wgslsmith_f_op_f32(1362f * 1574f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(533f))), Struct_1(vec3<bool>(u_input.b.x < u_input.b.x, arg_0, arg_0), -(u_input.d ^ u_input.c.x), _wgslsmith_f_op_f32(abs(-2157f)), arg_0, u_input.d), arg_1.x, Struct_1(func_2(vec4<i32>(-13087i, 0i, 30522i, u_input.d), ~25238u), min(u_input.e, 1i) | u_input.b.x, 599f, any(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), false)), 60875i), -vec4<i32>(u_input.a.x, -58220i, _wgslsmith_clamp_i32(-12113i, 4168i, 2147483647i), u_input.e | 7585i)), Struct_2(true, Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, false, arg_0), any(vec2<bool>(false, arg_0))), ~(~u_input.a.x), 1000f, arg_0 || (arg_0 | arg_0), reverseBits(2147483647i) & u_input.e), ~(~_wgslsmith_clamp_u32(arg_1.x, 1u, arg_1.x)), Struct_1(vec3<bool>(true, any(vec3<bool>(true, arg_0, arg_0)), arg_0), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -2121f), arg_0, u_input.e), u_input.b), u_input.a.zxz);
    var_0 = Struct_3(Struct_2(!all(var_0.b.b.a.xz) | var_0.b.a, var_0.a.b, firstLeadingBit(~(~var_0.b.c)), Struct_1(var_0.b.d.a, -abs(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -169f), all(func_2(vec4<i32>(var_0.a.e.x, u_input.a.x, u_input.d, 0i), var_0.a.c).xz), u_input.c.x), var_0.b.e), var_0.a, var_0.b.e.zzz & -(countOneBits(var_0.c) ^ ~vec3<i32>(var_0.b.e.x, u_input.d, 2147483647i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.b.c, var_0.a.b.c)), var_0.a.b.c);
    var_0 = Struct_3(var_0.a, var_0.a, -(abs(u_input.b.wzy) ^ (u_input.b.yzy ^ (vec3<i32>(-17554i, u_input.a.x, -28332i) & var_0.a.e.yyx))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -600f), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-669f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1440f, var_0.a.d.c) * vec3<f32>(170f, var_0.b.d.c, var_0.a.d.c)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-320f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0.a.b.c, -1090f), vec3<f32>(1128f, 663f, 1605f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, -699f)))))) + vec3<f32>(var_0.b.d.c, -220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_0.a.b.c))))));
    return Struct_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a.c, arg_1.x, 24343u, arg_1.x) >> (vec4<u32>(var_0.a.c, 31628u, arg_1.x, 39085u) % vec4<u32>(32u)), vec4<u32>(var_0.b.c, var_0.a.c, var_0.b.c, 19716u), select(vec4<bool>(var_0.a.d.d, var_0.a.b.a.x, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, false, false, true))), ~vec4<u32>(var_0.a.c, 1u, var_0.b.c, 34767u)) <= _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1 | arg_1, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(var_0.a.c, var_0.a.c, 1u)), max(vec3<u32>(0u, 51285u, var_0.a.c), arg_1)), vec3<u32>(var_0.b.c, arg_1.x, _wgslsmith_add_u32(40281u, 41504u))), var_0.a.d, 41512u, Struct_1(func_2(vec4<i32>(-1i, -42809i, countOneBits(var_0.a.d.e), u_input.c.x), _wgslsmith_dot_vec2_u32(arg_1.yy, arg_1.yy)), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0, arg_0, true), var_0.b.d.c, Struct_1(vec3<bool>(arg_0, arg_0, true), var_0.c.x, var_2.x, true, 1i), func_2(var_0.a.e, arg_1.x).yz))), !select(false, true, true) | true, -42757i), _wgslsmith_mult_vec4_i32(u_input.a, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, u_input.d, -9447i), vec4<i32>(-13681i, var_0.b.d.e, 1i, var_0.c.x)) ^ _wgslsmith_clamp_vec4_i32(reverseBits(var_0.b.e), _wgslsmith_clamp_vec4_i32(var_0.a.e, var_0.a.e, var_0.a.e), -vec4<i32>(1i, -1i, 3633i, 21005i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(true, _wgslsmith_clamp_vec3_u32(vec3<u32>(func_1(vec3<f32>(1000f, 1194f, 954f), vec3<u32>(57482u, 106267u, 0u), Struct_2(true, Struct_1(vec3<bool>(true, true, true), u_input.a.x, -467f, true, u_input.b.x), 0u, Struct_1(vec3<bool>(false, false, true), u_input.a.x, 1400f, true, -59530i), u_input.a), Struct_3(Struct_2(false, Struct_1(vec3<bool>(true, false, true), u_input.d, -1944f, false, u_input.e), 1u, Struct_1(vec3<bool>(true, true, false), -2624i, -286f, false, u_input.d), vec4<i32>(u_input.a.x, 1i, u_input.d, -14686i)), Struct_2(true, Struct_1(vec3<bool>(false, false, false), u_input.d, -183f, true, u_input.c.x), 0u, Struct_1(vec3<bool>(true, true, false), -2147483647i, -171f, true, u_input.c.x), vec4<i32>(0i, -49330i, 1i, 1i)), vec3<i32>(u_input.c.x, 0i, -58117i))), firstTrailingBit(23510u), 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(22635u, 41382u, 61081u), vec3<u32>(9489u, 0u, 0u)), ~select(vec3<u32>(25207u, 0u, 33388u), vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(true, true, true)))), func_4(any(vec2<bool>(true, func_4(true, vec3<u32>(29201u, 4294967295u, 12407u)).b.a.x)), ~vec3<u32>(func_4(false, vec3<u32>(0u, 103786u, 20277u)).c, abs(47653u), max(1u, 1u))), vec3<i32>(1i, 1i, 1i));
    let var_1 = var_0.b.c;
    var var_2 = Struct_1(vec3<bool>(true, var_0.a.a, var_0.a.b.d), abs(~(-_wgslsmith_add_i32(-466i, var_0.a.b.e))), _wgslsmith_f_op_f32(var_0.b.d.c * _wgslsmith_f_op_f32(-475f + 1459f)), var_0.b.a, _wgslsmith_sub_i32(var_0.c.x, countOneBits(~firstTrailingBit(-2147483647i))));
    var_2 = Struct_1(var_0.a.d.a, _wgslsmith_mod_i32(max(_wgslsmith_sub_i32(abs(u_input.c.x), var_0.b.e.x), ~u_input.e & ~16217i), ~var_0.b.b.b), _wgslsmith_f_op_f32(step(var_0.b.d.c, _wgslsmith_f_op_f32(step(803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(828f))))))), var_2.a.x, var_0.a.b.e & abs(42351i));
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(abs(-var_0.a.b.b)), _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.a.x, -var_2.e), max(var_0.c.x, -4293i))), vec2<i32>(max(~(~1i), u_input.d), u_input.a.x), -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, 1i), countOneBits(var_0.c.xx)), ~(-vec2<i32>(var_0.b.b.b, var_0.a.b.b))));
    let var_4 = any(var_2.a);
    var var_5 = Struct_2(-_wgslsmith_dot_vec4_i32(func_4(true, vec3<u32>(1u, var_0.a.c, 31037u)).e, -vec4<i32>(-5710i, 55299i, 1i, -22780i)) <= ((firstLeadingBit(2147483647i) << (~var_1 % 32u)) << (var_1 % 32u)), Struct_1(select(vec3<bool>(true, var_2.a.x & true, !var_0.a.b.d), !var_2.a, var_4), -27126i, _wgslsmith_div_f32(var_0.b.d.c, var_0.a.b.c), true, firstTrailingBit(~var_0.a.d.e)), min(var_1, ~var_1), func_4(true, vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 47532u, var_1, var_1), vec4<u32>(var_0.b.c, var_1, 0u, 5902u), vec4<u32>(5630u, 30131u, var_0.a.c, var_1)), firstLeadingBit(vec4<u32>(4294967295u, 73296u, 19383u, var_0.a.c))), var_0.a.c, abs(var_1))).b, -u_input.b << (vec4<u32>(4294967295u ^ ~var_0.a.c, ~(~1u), func_4(!var_0.b.d.d, vec3<u32>(30703u, var_1, 1u) | vec3<u32>(1u, var_1, 49350u)).c, 3039u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1104f, var_0.a.d.c, 1000f, -303f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_5.d.c, 1329f, 2001f, -1000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5.d.c, 279f, var_2.c, -1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1146f, -1096f, var_5.d.c, 1187f), vec4<f32>(-901f, 2279f, -674f, 210f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3607f, -568f, -1423f, -154f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.d.c, -1582f, -750f, 783f), vec4<f32>(-821f, 1943f, 451f, var_2.c))))), _wgslsmith_div_u32(var_0.b.c, var_0.b.c), _wgslsmith_div_u32(var_1, var_0.b.c));
}

