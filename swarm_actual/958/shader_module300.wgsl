struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = arg_0.b.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, arg_1.x, arg_0.a.a, 842f)))), ~vec4<u32>(abs(0u), 1u, u_input.b.x, 23163u), arg_0.c.zx, arg_0.a);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-421f)), _wgslsmith_f_op_f32(-1106f * var_1.d.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a))))), arg_0.a.a);
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(max(_wgslsmith_add_i32(arg_0.c.x, var_1.c.x), -33076i), -_wgslsmith_sub_i32(0i, var_0) >> (max(~1u, 61636u) % 32u), -2147483647i), ~40646i);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - 1852f), arg_0.a.a, -1450f, _wgslsmith_f_op_f32(-arg_1.x))) - vec4<f32>(-216f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_1.d.a * 352f)), arg_0.a.a, var_1.a.x)), vec4<u32>(var_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_1.b.x), 37105u), u_input.b.xz), firstLeadingBit(var_1.b.x), _wgslsmith_dot_vec2_u32(~u_input.b.zx, u_input.b.zz)), _wgslsmith_clamp_vec2_i32(reverseBits(arg_0.b.yx), vec2<i32>(31943i, ~(~(-2147483647i))), -var_1.c << (var_1.b.yx % vec2<u32>(32u))), var_1.d);
    return arg_0.b;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) + _wgslsmith_f_op_f32(max(1523f, 272f))), _wgslsmith_div_f32(-1045f, _wgslsmith_div_f32(-799f, 2542f)), 943f, -527f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1164f, _wgslsmith_f_op_f32(floor(286f)), _wgslsmith_f_op_f32(832f + 233f), -281f) + vec4<f32>(-974f, -1000f, -732f, _wgslsmith_f_op_f32(-1339f + -366f))))), ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(12832u, u_input.a, u_input.b.x, 25053u), vec4<u32>(1u, u_input.c, u_input.b.x, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 29775u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 6654u, u_input.c), vec4<u32>(18545u, 54551u, u_input.c, u_input.b.x)))), ~(~(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(0i, 1i)) ^ ~vec2<i32>(u_input.d, u_input.d))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(round(1000f))))));
    let var_1 = _wgslsmith_mult_vec4_i32(select(firstTrailingBit(-vec4<i32>(u_input.d, 2147483647i, u_input.d, -5772i)) & (func_3(Struct_3(Struct_1(392f), vec4<i32>(var_0.c.x, u_input.d, 1i, 2147483647i), vec3<i32>(2147483647i, 1i, 1i)), vec4<f32>(var_0.d.a, -1454f, var_0.d.a, var_0.d.a)) << (vec4<u32>(var_0.b.x, 59532u, var_0.b.x, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.c.x, -22532i, 18906i, 1i)), -(vec4<i32>(u_input.d, 47600i, var_0.c.x, var_0.c.x) | vec4<i32>(-29625i, var_0.c.x, u_input.d, var_0.c.x)), vec4<i32>(33538i, 23542i, 2147483647i, -2147483647i) ^ vec4<i32>(-1i, 1i, -2147483647i, u_input.d)), select(vec4<bool>(false, var_0.d.a != var_0.d.a, true, true), vec4<bool>(var_0.a.x != -586f, all(vec3<bool>(true, true, true)), false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true))), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(-2147483647i), ~0i, u_input.d, ~1i), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.d, var_0.c.x, u_input.d, u_input.d)), min(countOneBits(vec4<i32>(0i, u_input.d, u_input.d, var_0.c.x)), vec4<i32>(u_input.d, -2147483647i, -23079i, -64836i) << (vec4<u32>(32556u, 96073u, u_input.c, 4294967295u) % vec4<u32>(32u))))));
    var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a))), _wgslsmith_f_op_f32(trunc(1f)), var_0.d.a, _wgslsmith_f_op_f32(sign(1000f))), ~(vec4<u32>(11051u, var_0.b.x, _wgslsmith_clamp_u32(var_0.b.x, u_input.a, 4294967295u), select(u_input.c, 12413u, true)) ^ vec4<u32>(u_input.a, firstTrailingBit(0u), ~6461u, u_input.b.x ^ var_0.b.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, 1i), var_0.c), var_0.c), var_0.d);
    var var_2 = select(select(vec2<bool>(true, any(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !all(vec3<bool>(false, false, true)) & any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false))), select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.b.x > var_0.b.x), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), vec2<bool>(false, all(vec4<bool>(false, true, false, false))), all(vec2<bool>(true, true))), !(-29178i != max(1i, _wgslsmith_add_i32(var_0.c.x, var_0.c.x))));
    let var_3 = vec2<i32>(0i, u_input.d);
    return Struct_3(var_0.d, ~vec4<i32>(-15703i, _wgslsmith_mult_i32(var_1.x, _wgslsmith_add_i32(-16393i, -5449i)), -2147483647i, 4056i), countOneBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1i, -2147483647i), func_3(Struct_3(var_0.d, var_1, var_1.zwz), var_0.a).zzw, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.x, -1i, -1i), vec3<i32>(var_0.c.x, var_0.c.x, var_1.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, 1i, -1i) >> (vec3<u32>(var_0.b.x, var_0.b.x, 10041u) % vec3<u32>(32u)), vec3<i32>(u_input.d, 79152i, var_3.x)), !vec3<bool>(true, false, var_2.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = select(firstTrailingBit(min(vec4<u32>(44986u, ~u_input.c, ~15655u, u_input.c), vec4<u32>(1u, abs(u_input.a), max(u_input.b.x, 815u), countOneBits(u_input.c)))), _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, 25683u, 14711u), vec4<u32>(u_input.a, 4294967295u, u_input.c, 1u))) << (vec4<u32>(u_input.c, ~(1u >> (1u % 32u)), ~u_input.c, 68255u) % vec4<u32>(32u)), true);
    let var_1 = arg_0.a.a;
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-927f, arg_0.a.a))), _wgslsmith_f_op_f32(-var_1), var_1, arg_0.a.a), _wgslsmith_div_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, var_0.x, 7138u, u_input.b.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, var_0.x, var_0.x), vec4<u32>(21885u, 0u, 28916u, u_input.b.x))) << (~vec4<u32>(38978u, ~1u, u_input.c, ~1u) % vec4<u32>(32u)), arg_0.c.xx, arg_0.a);
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, var_1)) - _wgslsmith_f_op_f32(arg_0.a.a * var_2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1326f))), var_1, _wgslsmith_f_op_f32(abs(-1523f))))), max(vec4<u32>(~34051u, 43719u, var_2.b.x | var_0.x, 30431u) ^ vec4<u32>(var_0.x, u_input.c, _wgslsmith_mod_u32(33242u, 4294967295u), firstTrailingBit(4294967295u)), ~vec4<u32>(u_input.a, 17858u & var_0.x, var_2.b.x, ~var_0.x)), ~_wgslsmith_sub_vec2_i32(var_2.c, -vec2<i32>(u_input.d, u_input.d)) & vec2<i32>(_wgslsmith_add_i32(var_2.c.x & arg_0.b.x, arg_0.b.x & u_input.d), 0i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * var_1))))));
    let var_3 = _wgslsmith_add_i32(~0i, firstTrailingBit(min(2147483647i, ~6539i) << (~_wgslsmith_add_u32(var_2.b.x, 0u) % 32u)));
    return Struct_2(vec4<f32>(var_1, arg_0.a.a, _wgslsmith_f_op_f32(floor(811f)), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_add_vec4_u32(reverseBits(var_2.b), var_2.b), arg_0.b.xz, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    return min(vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(abs(12333i)), arg_1), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, -12626i, 0i, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, arg_1, arg_3.c.x, 0i), vec4<i32>(9461i, arg_0.c.x, 1i, -1i))), _wgslsmith_sub_i32(~(-11590i), ~arg_0.c.x)), _wgslsmith_dot_vec2_i32(func_4(func_2()).c, ~_wgslsmith_mult_vec2_i32(arg_3.c, vec2<i32>(arg_3.c.x, -2147483647i))), -18630i), -vec4<i32>(_wgslsmith_add_i32(arg_3.c.x, -19891i), _wgslsmith_add_i32(22843i, -40361i), abs(arg_1), ~arg_3.c.x) << (max(arg_3.b, countOneBits(arg_0.b)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = ~min(select(vec3<i32>(2147483647i, u_input.d, u_input.d), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -2147483647i) << (vec3<u32>(arg_3.x, 9367u, 1u) % vec3<u32>(32u)), ~vec3<i32>(u_input.d, 1i, -1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(-1i, u_input.d, u_input.d)) << (select(arg_3.wzx, vec3<u32>(57u, var_0, arg_1), vec3<bool>(false, false, false)) % vec3<u32>(32u)), max(vec3<i32>(32217i, u_input.d, 22080i), vec3<i32>(-1i, u_input.d, -1i) ^ vec3<i32>(-1i, 27311i, 0i))));
    let var_2 = firstLeadingBit(vec3<u32>(arg_1, arg_2.x, u_input.c));
    var var_3 = Struct_3(Struct_1(-413f), func_5(func_4(func_2()), 2147483647i, ~0u, Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, 887f, arg_0.x, -121f), vec4<f32>(arg_0.x, -333f, -797f, arg_0.x))), arg_3, func_2().b.zy, Struct_1(1670f))) ^ (abs(-vec4<i32>(1i, 11399i, var_1.x, u_input.d)) | (func_5(Struct_2(vec4<f32>(-1425f, -199f, 3126f, arg_0.x), arg_3, var_1.xx, Struct_1(arg_0.x)), -2147483647i, arg_2.x, Struct_2(vec4<f32>(arg_0.x, -1321f, 537f, 638f), vec4<u32>(arg_1, 4294967295u, 30515u, 4294967295u), vec2<i32>(-18344i, u_input.d), Struct_1(1000f))) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_1.x, -66218i, 8869i), vec4<i32>(u_input.d, 30514i, u_input.d, var_1.x)))), vec3<i32>(abs(u_input.d), _wgslsmith_mult_i32(-(~u_input.d), select(-15496i, 0i, 88646u > arg_2.x)), var_1.x));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(531f, arg_0.x, 161f, arg_0.x))))))), ~vec4<u32>(~(~arg_2.x), 0u & arg_3.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1297u, u_input.c), u_input.b.zx), reverseBits(1u)), _wgslsmith_mult_vec2_i32(vec2<i32>(func_2().c.x, var_3.c.x), func_4(Struct_3(var_3.a, _wgslsmith_sub_vec4_i32(vec4<i32>(-12951i, u_input.d, 0i, 2147483647i), vec4<i32>(-1i, -27435i, u_input.d, var_3.c.x)), -vec3<i32>(var_1.x, var_1.x, -1i))).c), var_3.a);
    return func_4(Struct_3(var_4.d, var_3.b, var_1)).d;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.zzy + _wgslsmith_f_op_vec3_f32(-arg_0.a.ywy)) + vec3<f32>(-1172f, -167f, _wgslsmith_f_op_f32(-2507f * arg_0.a.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(arg_1).a.ywx + _wgslsmith_f_op_vec3_f32(-arg_0.a.yzz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1515f, -238f, 423f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(465f, 1000f, -144f)))), arg_0.b.x <= 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.a.yzz)), vec3<f32>(_wgslsmith_f_op_f32(-588f + arg_1.a.a), arg_1.a.a, _wgslsmith_f_op_f32(-arg_1.a.a))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1240f, 1587f), _wgslsmith_f_op_f32(arg_0.a.x * 2108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2044f - 1464f)), -532f))));
    let var_1 = countOneBits(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(~(~u_input.c), ~_wgslsmith_clamp_u32(19092u, arg_0.b.x, 5260u)), ~1u));
    let var_2 = firstTrailingBit(arg_0.b.wwz);
    var var_3 = -_wgslsmith_mod_i32(arg_1.c.x, arg_1.c.x);
    var var_4 = true;
    return arg_0;
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    var var_0 = 517f;
    let var_1 = Struct_2(arg_3.a, firstLeadingBit(arg_3.b), countOneBits(arg_3.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.a) - 1000f) + -159f)));
    let var_2 = 0u;
    return ~_wgslsmith_sub_i32(-1i, 559i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(~(-u_input.d & -u_input.d), -u_input.d);
    var var_1 = !any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)));
    let var_2 = func_7(func_6(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, -417f, 1000f, 942f)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 2534u) ^ vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.c), ~vec4<u32>(u_input.c, 83321u, 28007u, 33930u)), vec2<i32>(49297i, ~u_input.d), func_1(vec2<f32>(310f, 626f), 0u, vec4<u32>(u_input.c, u_input.b.x, u_input.a, 33668u), min(vec4<u32>(34517u, 0u, u_input.b.x, 13237u), vec4<u32>(4294967295u, 68069u, 98006u, 27209u)))), func_2()), vec3<f32>(_wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(func_1(vec2<f32>(-589f, -647f), u_input.b.x, vec4<u32>(74782u, u_input.b.x, u_input.c, u_input.a), vec4<u32>(u_input.c, 0u, u_input.a, 24787u)).a * -1000f)), _wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(ceil(-591f))), _wgslsmith_f_op_f32(round(1115f))), vec3<bool>(true, !all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false)), !(_wgslsmith_mult_i32(var_0.x, var_0.x) >= _wgslsmith_div_i32(0i, var_0.x))), func_6(func_4(func_2()), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -328f)), vec4<i32>(~var_0.x, 1i, 1i >> (u_input.a % 32u), u_input.d & u_input.d), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, -44051i), vec3<i32>(var_0.x, 648i, var_0.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_6(func_4(Struct_3(Struct_1(-623f), vec4<i32>(var_0.x, var_0.x, 19246i, var_2), vec3<i32>(0i, 2147483647i, -1i))), func_2()).d.a))));
    var_0 = vec2<i32>(max(reverseBits(_wgslsmith_mod_i32(var_0.x, -2147483647i >> (0u % 32u))), _wgslsmith_clamp_i32(~func_2().c.x, _wgslsmith_mult_i32(firstTrailingBit(u_input.d), ~u_input.d), _wgslsmith_add_i32(-2147483647i, var_0.x) >> (u_input.a % 32u))), var_0.x);
    var_0 = func_6(func_4(Struct_3(func_6(Struct_2(vec4<f32>(var_3, 150f, var_3, var_3), vec4<u32>(26567u, 101718u, 0u, 4294967295u), vec2<i32>(var_0.x, var_0.x), Struct_1(128f)), Struct_3(Struct_1(var_3), vec4<i32>(-26154i, 27289i, -2147483647i, var_2), vec3<i32>(2147483647i, var_0.x, u_input.d))).d, reverseBits(vec4<i32>(4638i, 2147483647i, var_2, 15649i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, u_input.c), vec4<u32>(u_input.a, 115992u, 4294967295u, 1u)) % vec4<u32>(32u)), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -26358i), vec2<i32>(-1i, var_2)), min(var_2, var_2)))), Struct_3(func_4(func_2()).d, vec4<i32>(~var_0.x, ~var_2, var_0.x, 2147483647i), -(vec3<i32>(u_input.d, var_2, -2147483647i) ^ vec3<i32>(-28884i, -2147483647i, var_0.x)) & countOneBits(~vec3<i32>(var_0.x, -2147483647i, 0i)))).c;
    var_0 = countOneBits(min(abs(-(~vec2<i32>(-62637i, -25915i))), -vec2<i32>(_wgslsmith_mult_i32(var_0.x, u_input.d), var_2 & -28850i)));
    let var_4 = _wgslsmith_f_op_f32(-var_3);
    let var_5 = ~(-1i ^ -(var_0.x >> (_wgslsmith_sub_u32(u_input.b.x, u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-317f, -179f, var_3) - vec3<f32>(var_3, -2127f, var_4))) + vec3<f32>(_wgslsmith_f_op_f32(max(170f, var_3)), _wgslsmith_f_op_f32(round(var_4)), _wgslsmith_div_f32(var_4, -356f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, 619f)) - vec3<f32>(437f, var_3, -957f))))), max(func_6(func_4(Struct_3(Struct_1(var_3), vec4<i32>(var_0.x, -1i, var_0.x, var_2), vec3<i32>(-8841i, 1i, var_5))), func_2()).b.yzz, ~vec3<u32>(4294967295u, _wgslsmith_div_u32(0u, u_input.b.x), ~u_input.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 31997u, u_input.a), u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 35797u))) & firstTrailingBit(~u_input.b), vec3<u32>(firstLeadingBit(~94982u), _wgslsmith_mod_u32(29880u, ~u_input.a), 26929u)), u_input.b);
}

