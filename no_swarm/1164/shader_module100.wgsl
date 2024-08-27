struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = ~arg_0 & select(vec2<u32>(~arg_0.x << (min(u_input.b, 37351u) % 32u), arg_0.x), ~firstTrailingBit(~vec2<u32>(u_input.b, 4294967295u)), vec2<bool>(true, true));
    let var_1 = vec3<bool>(true, !(!(!(41506i != u_input.c))), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-516f, 570f), _wgslsmith_div_vec2_f32(vec2<f32>(-784f, 1696f), vec2<f32>(-1182f, -257f))), vec2<f32>(_wgslsmith_f_op_f32(821f + 512f), _wgslsmith_f_op_f32(-724f - -1135f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -762f)) * _wgslsmith_div_vec2_f32(vec2<f32>(326f, -651f), vec2<f32>(807f, -718f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), any(vec4<bool>(all(var_1), false, 0u >= u_input.b, true)))), _wgslsmith_add_vec3_u32(select(vec3<u32>(arg_0.x, reverseBits(arg_0.x), ~var_0.x), ~select(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(18035u, 0u, 2174u), vec3<bool>(false, true, var_1.x)), _wgslsmith_f_op_f32(sign(var_2.x)) < var_2.x), ~(~vec3<u32>(30235u, 0u, 39877u))), var_0.x, min(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(54615i, -2147483647i, u_input.a), vec3<i32>(u_input.c, u_input.a, u_input.c)), max(vec3<i32>(0i, 7390i, u_input.a), vec3<i32>(u_input.c, u_input.c, u_input.a))), vec3<i32>(-8787i, -u_input.c, u_input.c), vec3<i32>(~u_input.c, ~u_input.a, -2147483647i)), -(~firstTrailingBit(vec3<i32>(3161i, u_input.c, 1i)))), select(vec2<i32>(-u_input.c, u_input.c) >> (vec2<u32>(0u, _wgslsmith_sub_u32(arg_0.x, 17301u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.a, -1i) & vec2<i32>(u_input.c, 0i)), firstTrailingBit(-vec2<i32>(-23173i, 0i))), false));
    var var_4 = Struct_1(var_3.a, (~(vec3<u32>(46496u, 0u, 92557u) ^ vec3<u32>(4294967295u, var_3.c, 34246u)) ^ (vec3<u32>(var_3.b.x, 77882u, arg_0.x) >> (max(vec3<u32>(u_input.b, 118647u, var_0.x), vec3<u32>(arg_0.x, var_3.b.x, 4294967295u)) % vec3<u32>(32u)))) | _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, 68491u, 10105u)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, 0u, 4294967295u), ~var_3.b)), countOneBits(1961u), reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(23533i, u_input.c, 5445i), var_3.d)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.c & var_3.c, 1u << (u_input.b % 32u), arg_0.x << (u_input.b % 32u)), ~firstTrailingBit(vec3<u32>(38270u, arg_0.x, u_input.b)), reverseBits(~vec3<u32>(1u, u_input.b, var_0.x))) % vec3<u32>(32u)), firstLeadingBit(countOneBits(min(~vec2<i32>(u_input.a, u_input.a), var_3.d.zx))));
    return all(!select(!var_1, select(vec3<bool>(var_1.x, false, false), !vec3<bool>(true, false, var_1.x), true), vec3<bool>(56403u > var_3.c, var_1.x, select(false, var_1.x, var_1.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(891f, 1199f) + arg_2.yz)))), arg_2.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2.xx)))) * _wgslsmith_f_op_vec2_f32(arg_2.yz - vec2<f32>(arg_0.b.a, arg_1.a.a))));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.xy);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.c.a);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = arg_1;
    return vec3<u32>(0u, var_2.a.b.x, _wgslsmith_dot_vec2_u32(abs(~(~var_2.a.b.xy)), abs(arg_1.a.b.yx)));
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1257f)))), ~firstTrailingBit(arg_0.xwz), u_input.b, firstLeadingBit(vec3<i32>(-2147483647i, 23592i, u_input.c)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 24172i), select(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, -2147483647i), false), countOneBits(vec2<i32>(2147483647i, 0i))))), 83683u, func_4(Struct_2(select(any(vec2<bool>(false, true)), func_3(vec2<u32>(arg_0.x, 28358u)), true), Struct_1(1291f, ~vec3<u32>(u_input.b, u_input.b, u_input.b), arg_0.x | 24820u, abs(vec3<i32>(u_input.a, u_input.c, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(-19819i, u_input.c), vec2<i32>(u_input.c, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(step(181f, 881f)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_0.x, 12094u), vec3<u32>(u_input.b, u_input.b, u_input.b)), firstTrailingBit(arg_0.x), vec3<i32>(u_input.a, 34430i, u_input.a), vec2<i32>(u_input.c, u_input.c) | vec2<i32>(-41584i, u_input.a)), Struct_1(_wgslsmith_f_op_f32(771f - -845f), firstLeadingBit(arg_0.zzz), abs(arg_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.c), vec3<i32>(16007i, -23108i, u_input.a)), vec2<i32>(u_input.a, u_input.a)), 19540u), Struct_3(Struct_1(_wgslsmith_f_op_f32(max(114f, 1000f)), countOneBits(vec3<u32>(27597u, 0u, u_input.b)), ~4294967295u, -vec3<i32>(u_input.c, -8312i, -52335i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.a, 0i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2438f, 640f, 1492f) + vec3<f32>(130f, 1363f, -820f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, -343f, 597f) * vec3<f32>(629f, -1000f, -812f)))), all(vec3<bool>(false, false, true))))));
    var var_1 = var_0;
    var var_2 = true;
    var var_3 = arg_0;
    return !(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(false, true, false)))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = vec3<bool>(true, all(select(!vec2<bool>(true, arg_3.a), vec2<bool>(arg_3.a, all(vec2<bool>(arg_3.a, arg_3.a))), func_2(max(vec4<u32>(arg_3.c.b.x, u_input.b, arg_3.e, arg_3.c.c), vec4<u32>(0u, arg_3.c.b.x, 17733u, arg_3.d.c))))), any(func_2((vec4<u32>(17175u, arg_3.d.b.x, u_input.b, arg_3.e) & vec4<u32>(7799u, 22751u, arg_3.e, 4294967295u)) ^ vec4<u32>(76493u, u_input.b, u_input.b, 7930u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1832f + _wgslsmith_f_op_f32(min(1000f, arg_2.x))) * _wgslsmith_div_f32(1428f, _wgslsmith_f_op_f32(max(arg_3.c.a, arg_2.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-559f)))))));
    var_0 = vec3<bool>(any(!vec3<bool>(!arg_3.a, false, all(vec4<bool>(var_0.x, var_0.x, arg_3.a, false)))), true, (~(~4294967295u) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 46038u), vec2<u32>(arg_3.c.b.x, 5387u))) > _wgslsmith_mod_u32(countOneBits(27488u) >> (u_input.b % 32u), ~_wgslsmith_mod_u32(u_input.b, arg_3.b.c)));
    var var_2 = ~_wgslsmith_dot_vec2_i32(arg_3.c.d.xx, vec2<i32>(min(arg_3.c.e.x, _wgslsmith_div_i32(1018i, arg_3.b.d.x)), -50724i));
    var var_3 = _wgslsmith_f_op_f32(max(2252f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-arg_2.x)), -793f, arg_3.a))))));
    return ~vec2<i32>(0i, 29425i | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_3.d.d, vec3<i32>(arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_div_i32(u_input.a, arg_0)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = ~(~11545i);
    var var_1 = select(vec4<i32>(arg_1.a.e.x, (~1i << ((u_input.b & 98533u) % 32u)) << (u_input.b % 32u), -(abs(u_input.a) | 0i), arg_0.x), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.d.x, 2877i) | arg_0, arg_1.a.d.zx), u_input.c, ~(~6759i), arg_0.x), arg_2);
    let var_2 = arg_1.a;
    let var_3 = _wgslsmith_div_f32(267f, _wgslsmith_f_op_f32(-arg_1.a.a));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec4<bool>(false, var_0, false, var_0);
    let var_2 = Struct_3(func_5(vec2<i32>(~63407i, ~(i32(-1i) * -1i)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-191f * -261f), vec3<u32>(u_input.b, 0u, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(82295u, 2872u), vec2<u32>(u_input.b, u_input.b)), vec3<i32>(u_input.a, 33293i, u_input.a), func_1(u_input.a, vec4<i32>(u_input.a, 23795i, u_input.a, 17867i), vec2<f32>(153f, 984f), Struct_2(var_0, Struct_1(-479f, vec3<u32>(80916u, u_input.b, 72386u), u_input.b, vec3<i32>(2147483647i, -10769i, 0i), vec2<i32>(u_input.c, -5263i)), Struct_1(1368f, vec3<u32>(u_input.b, 56035u, u_input.b), u_input.b, vec3<i32>(u_input.a, -2147483647i, u_input.a), vec2<i32>(-14626i, -41101i)), Struct_1(425f, vec3<u32>(1602u, u_input.b, 13853u), 1u, vec3<i32>(u_input.a, 1i, -1i), vec2<i32>(3600i, u_input.c)), u_input.b)))), vec4<bool>(all(!var_1.zw), ~4294967295u > min(u_input.b, 0u), var_0, func_3(vec2<u32>(u_input.b, u_input.b)) | true), u_input.b));
    let var_3 = var_2.a;
    let var_4 = max(~vec2<u32>(~u_input.b, 1u), reverseBits(vec2<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(103448u, 39379u)))) ^ vec2<u32>(var_3.b.x, var_2.a.b.x);
    let var_5 = vec2<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, u_input.c, -6768i, -32612i), vec4<i32>(94i, 15772i, var_2.a.d.x, -1i) ^ vec4<i32>(var_3.e.x, 0i, u_input.c, 29383i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.e.x, -2147483647i, 32989i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.c, var_3.d.x))), -func_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_2.a.e.x, -2147483647i, 0i)), ~var_2.a.d), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(4055i, u_input.a, 1i, var_2.a.d.x), vec4<i32>(var_2.a.d.x, var_3.d.x, -22714i, var_2.a.d.x)), vec4<i32>(var_3.d.x, var_3.d.x, -3287i, var_2.a.e.x) | vec4<i32>(-2728i, u_input.c, var_2.a.e.x, u_input.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a, var_3.a)), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.a, 1528f), vec2<f32>(-241f, 883f))), Struct_2(var_2.a.d.x < 0i, var_2.a, func_5(var_3.e, Struct_3(var_2.a), var_1, 1u), func_5(vec2<i32>(-2147483647i, var_2.a.d.x), Struct_3(Struct_1(2915f, var_3.b, 0u, vec3<i32>(3524i, -28525i, -1i), vec2<i32>(var_3.e.x, var_2.a.d.x))), vec4<bool>(var_0, true, var_1.x, false), 1u), _wgslsmith_div_u32(13809u, var_3.b.x))).x);
    let var_6 = Struct_2(any(var_1.yz), var_3, func_5(reverseBits(var_3.d.xy), var_2, vec4<bool>(all(var_1.xwz), true, true, true), func_4(Struct_2(true, var_2.a, var_2.a, var_3, u_input.b), var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(311f, var_2.a.a, var_2.a.a), vec3<f32>(var_2.a.a, -627f, var_3.a))))).x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))) - var_3.a), var_2.a.b, _wgslsmith_mult_u32(~var_3.c, var_3.b.x), _wgslsmith_add_vec3_i32(var_2.a.d, var_2.a.d), min(var_5, var_3.d.yx << (var_3.b.zz % vec2<u32>(32u))) & (var_2.a.d.zx << (~var_4 % vec2<u32>(32u)))), var_4.x);
    let var_7 = !vec4<bool>(false, -350f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a)), !(false && any(vec4<bool>(var_0, var_0, var_1.x, var_6.a))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_add_i32(var_3.d.x, var_6.c.d.x));
}

