struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14883u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = ~reverseBits(countOneBits(vec3<i32>(arg_2.a.x, arg_1.b.x, 33221i)) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))) << (~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, arg_0) >> (vec3<u32>(24199u, arg_0, arg_0) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 1601u, arg_0)), firstLeadingBit(firstLeadingBit(vec3<u32>(arg_0, arg_0, 49959u)))) % vec3<u32>(32u));
    let var_1 = abs(arg_2.a.x);
    var var_2 = arg_2;
    var_2 = arg_1;
    return _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(abs(u_input.a), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, 19945i, 1i), vec3<i32>(var_1, var_1, 4211i) >> (vec3<u32>(arg_0, 0u, 42349u) % vec3<u32>(32u))), var_0)), vec3<i32>(arg_2.a.x, -_wgslsmith_sub_i32(var_2.b.x, -var_2.b.x), 50480i));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec2<f32> {
    let var_0 = arg_1;
    global0 = arg_0;
    var var_1 = Struct_1(vec3<i32>(~(~0i), 1i, reverseBits(7812i)), ~u_input.a.zy, var_0.c, _wgslsmith_f_op_vec4_f32(abs(arg_1.d)));
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_add_i32(var_0.b.x, -var_0.a.x), max(0i, -31254i), -2147483647i), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-17069i, 1784i), var_1.b, arg_1.a.zz), abs(-var_1.b), select(vec2<bool>(true, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), false), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(175f, -525f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, 1f, arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-848f * 1443f), _wgslsmith_f_op_f32(-248f * arg_1.d.x))))));
    let var_3 = _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(2147483647i, -35644i, 16553i, var_1.a.x)) ^ vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x), arg_1.a.x, var_1.b.x | -1i, arg_1.b.x), -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, arg_1.b.x, -29110i, var_0.a.x), vec4<i32>(16518i, var_1.a.x, 0i, -55209i)), vec4<i32>(arg_1.b.x, 33867i, -27754i, 46770i), ~vec4<i32>(u_input.a.x, 2147483647i, arg_1.a.x, 12860i))) < max(i32(-1i) * -151i, ~(-16986i));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-370f, 1384f)), arg_1.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) + _wgslsmith_f_op_vec2_f32(var_1.c + arg_1.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_2.c, vec2<f32>(var_1.d.x, -822f)), _wgslsmith_f_op_vec2_f32(max(var_1.c, vec2<f32>(1000f, var_1.d.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c)), var_3 & (_wgslsmith_f_op_f32(floor(var_0.d.x)) < -119f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1460f, _wgslsmith_f_op_f32(-1f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(0u, Struct_1(~max(func_3(arg_0.x, Struct_1(u_input.a, arg_1, vec2<f32>(var_0.x, var_0.x), vec4<f32>(var_0.x, 654f, 1000f, var_0.x)), Struct_1(u_input.a, vec2<i32>(-65853i, arg_1.x), vec2<f32>(1061f, 3090f), vec4<f32>(var_0.x, var_0.x, var_0.x, 1562f)), vec2<bool>(false, false)), select(u_input.a, u_input.a, vec3<bool>(true, false, false))), (vec2<i32>(arg_1.x, arg_2) << (reverseBits(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) << ((arg_0.zz ^ select(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, 0u), vec2<bool>(false, true))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -723f) * vec2<f32>(737f, 2378f))) - vec2<f32>(1000f, -1190f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1556f, -1000f, var_0.x, 362f))))), vec4<f32>(var_0.x, -584f, _wgslsmith_f_op_f32(-var_0.x), -738f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + -944f), _wgslsmith_f_op_f32(420f * -2214f))) + _wgslsmith_f_op_f32(f32(-1f) * -1118f)))), _wgslsmith_mod_u32(1u, (1u >> (arg_0.x % 32u)) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 6651u), arg_0.xz))));
    global0 = 91235u;
    var var_1 = 778f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x)))), var_0.x);
    var var_2 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec3<bool>(false, false, false))), vec2<bool>(true, true), any(vec3<bool>(true, true, true)));
    return Struct_1(-_wgslsmith_mult_vec3_i32(-u_input.a, ~vec3<i32>(arg_2, arg_1.x, u_input.a.x)) & _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(-23564i, u_input.a.x, arg_2, u_input.a.x), vec4<i32>(u_input.a.x, 44386i, -2147483647i, -49191i)), 2147483647i)), u_input.a.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, var_0.x))))), vec4<f32>(1000f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1741f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -803f));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(arg_3.a, arg_0.a), vec2<i32>(0i, countOneBits(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(arg_0.b.x, 24481i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(vec4<u32>(arg_1, arg_1, 0u, arg_1), arg_0.b, 2147483647i).d.zw), _wgslsmith_f_op_vec2_f32(-arg_3.c)) * func_2(firstLeadingBit(vec4<u32>(arg_1, arg_1, 22291u, 1u)), abs(countOneBits(arg_3.a.yy)), -4595i).d.wx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1153f, arg_3.d.x, arg_0.c.x, -221f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(278f, arg_3.d.x, arg_2.d.x, arg_2.c.x), vec4<f32>(-918f, 138f, -195f, -1667f), true)))))), vec4<f32>(1f, -1200f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(-1000f, -609f))), _wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(arg_0.c.x * -1563f)))));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, ~arg_1 & _wgslsmith_clamp_u32(1u, arg_1, arg_1), arg_1) << (~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 1u, 4294967295u, 9982u), vec4<u32>(39747u, 40122u, 1u, 11730u)), min(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(0u, 2054u, 19980u, 1969u)), vec4<u32>(76047u, arg_1, 0u, arg_1)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, ~arg_1, min(88978u, arg_1), ~2879u), vec4<u32>(~4715u, arg_1, 3905u, arg_1)));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_2.d.x));
    let var_2 = func_2(~(~(~vec4<u32>(1u, 50121u, arg_1, arg_1))), arg_2.a.zz << (~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(arg_1, arg_1))) % vec2<u32>(32u)), func_2(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1, arg_1, arg_1) << (vec4<u32>(arg_1, 38753u, arg_1, arg_1) % vec4<u32>(32u)), ~vec4<u32>(arg_1, arg_1, 0u, arg_1)), (vec4<u32>(arg_1, 10483u, 10u, 31786u) << (vec4<u32>(3754u, arg_1, arg_1, arg_1) % vec4<u32>(32u))) & ~vec4<u32>(0u, 53612u, arg_1, 22445u), all(vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), arg_0.b, var_0.a.zz), i32(-1i) * -2147483647i).a.x);
    var_0 = func_2(~(~abs(firstLeadingBit(vec4<u32>(47962u, arg_1, 60479u, 4294967295u)))), -arg_0.a.zx | _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_2.a.x, 2147483647i)) ^ ~vec2<i32>(-1i, var_2.b.x), vec2<i32>(1i, 31986i ^ arg_2.b.x), ~firstTrailingBit(arg_0.a.xz)), arg_0.b.x);
    return Struct_1((vec3<i32>(2147483647i, u_input.a.x << (1u % 32u), abs(71722i)) ^ vec3<i32>(arg_3.b.x, -2147483647i, var_0.b.x)) >> (vec3<u32>(~17922u & _wgslsmith_mod_u32(arg_1, arg_1), _wgslsmith_clamp_u32(~arg_1, ~arg_1, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(36617u, 39897u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, 9514u)))) % vec3<u32>(32u)), ~(~_wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(18050i, var_0.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.d.x, arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f))) * var_2.d.xz), _wgslsmith_f_op_vec4_f32(var_0.d + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_2.c.x + arg_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + var_2.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1112f * 273f), arg_0.d.x, true)), _wgslsmith_div_f32(864f, _wgslsmith_f_op_f32(-arg_0.c.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = abs(vec2<u32>(arg_1, _wgslsmith_mult_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(1u, arg_1))));
    global0 = ~1u;
    let var_1 = abs(24292i);
    global0 = firstLeadingBit(1u);
    let var_2 = func_2(max(~vec4<u32>(~arg_1, 4294967295u, _wgslsmith_sub_u32(1u, arg_1), 1u), vec4<u32>(~var_0.x, _wgslsmith_mult_u32(~4294967295u, arg_1), 4294967295u, var_0.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, u_input.a.x), vec2<i32>(2147483647i, -1i))), func_2(vec4<u32>(4294967295u, arg_1, arg_1, 0u), select(arg_0.a.zz, u_input.a.xy, vec2<bool>(true, false)), -u_input.a.x).b), abs(func_2(vec4<u32>(arg_1, var_0.x, 30481u, var_0.x) & vec4<u32>(21629u, arg_1, arg_1, arg_1), u_input.a.zz, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 1i), vec4<i32>(-13929i, 1i, u_input.a.x, var_1))).a.zz)), 1i);
    return func_2(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, arg_1, arg_1), vec4<u32>(var_0.x, 1u, 1975u, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1, 1u, 4294967295u), vec4<u32>(arg_1, 33451u, arg_1, arg_1)), true) ^ ~vec4<u32>(arg_1 >> (5135u % 32u), max(4294967295u, 10148u), max(var_0.x, arg_1), max(0u, var_0.x)), arg_0.b, var_2.a.x ^ func_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_1, 55429u, 4294967295u), vec4<u32>(arg_1, 64866u, 1u, var_0.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(-2147483647i, u_input.a.x)), abs(arg_0.a.zx)), -1i).b.x);
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_2.c.x;
    let var_1 = arg_1.d;
    let var_2 = 0u;
    let var_3 = any(vec3<bool>(true, any(!vec4<bool>(arg_0, true, false, arg_0)), select(arg_0, ~0u > _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, var_2), vec3<u32>(49626u, var_2, 4294967295u)), any(vec3<bool>(true, arg_0, false)))));
    global0 = _wgslsmith_mod_u32(~var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, reverseBits(4294967295u), 1u, reverseBits(~1u)), select(~vec4<u32>(63312u, var_2, 2982u, 1u) & abs(vec4<u32>(1u, var_2, 17854u, 4294967295u)), countOneBits(vec4<u32>(var_2, var_2, 43576u, var_2)), false)));
    return Struct_1(~vec3<i32>(~firstLeadingBit(0i), 46936i, _wgslsmith_sub_i32(~arg_1.b.x, arg_2.b.x)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_2.b.x ^ arg_2.b.x, abs(1i)), (u_input.a.zy << (vec2<u32>(14689u, var_2) % vec2<u32>(32u))) << (vec2<u32>(var_2, var_2) % vec2<u32>(32u)), vec2<bool>(true, false)), arg_2.a.xz), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1213f), -1679f, false))))), vec4<f32>(660f, _wgslsmith_f_op_f32(-arg_1.c.x), 307f, arg_1.d.x));
}

fn func_1(arg_0: i32) -> f32 {
    global0 = ~70122u;
    let var_0 = func_7(false, Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -14046i), vec2<i32>(u_input.a.x, 2147483647i)), reverseBits(vec2<i32>(arg_0, arg_0))), arg_0, 1i | _wgslsmith_sub_i32(u_input.a.x, 4564i)), vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -1i, arg_0), _wgslsmith_dot_vec2_i32(u_input.a.zx, firstLeadingBit(u_input.a.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, -594f)) + vec2<f32>(-656f, 664f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1318f, -580f, -648f, 835f)) + vec4<f32>(662f, -126f, -517f, -1285f)))), func_6(func_5(func_2(~vec4<u32>(7661u, 32065u, 14763u, 51966u), u_input.a.xx, abs(0i)), 60085u, Struct_1(vec3<i32>(u_input.a.x, -44714i, u_input.a.x), u_input.a.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-334f, -809f) - vec2<f32>(534f, 1341f)), vec4<f32>(2709f, 1785f, 1435f, 1002f)), Struct_1(-u_input.a, abs(vec2<i32>(9858i, u_input.a.x)), vec2<f32>(164f, 795f), vec4<f32>(1015f, -1000f, -484f, 1177f))), ~(~abs(4294967295u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, false, true)), false, true), true));
    var var_1 = func_6(Struct_1(u_input.a, (_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -54086i), vec2<i32>(var_0.b.x, u_input.a.x), vec2<i32>(2147483647i, var_0.b.x)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) & ~(-u_input.a.yz), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.d.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(430f, var_0.d.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + 1198f), _wgslsmith_div_f32(-1483f, var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x + 537f), _wgslsmith_f_op_f32(var_0.d.x * 1000f)))), ~max(countOneBits(_wgslsmith_mult_u32(1u, 4525u)), 1u)).b.x;
    var_1 = var_0.b.x;
    var var_2 = !(!(_wgslsmith_add_i32(8602i, func_5(Struct_1(u_input.a, vec2<i32>(-65058i, u_input.a.x), var_0.c, var_0.d), 57157u, var_0, Struct_1(vec3<i32>(-2147483647i, arg_0, -46819i), u_input.a.yx, var_0.d.yz, vec4<f32>(var_0.d.x, var_0.c.x, -670f, 1333f))).a.x) != _wgslsmith_sub_i32(24357i, 1i)));
    return func_5(Struct_1(_wgslsmith_mult_vec3_i32(-var_0.a << (~vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), u_input.a), -var_0.b, var_0.d.wy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(828f, var_0.c.x, var_0.d.x, 399f))), func_5(Struct_1(vec3<i32>(-2147483647i, arg_0, 5968i), vec2<i32>(arg_0, u_input.a.x), var_0.d.zx, vec4<f32>(var_0.c.x, 431f, var_0.d.x, -608f)), 26746u, var_0, var_0).d, any(vec3<bool>(true, false, true)))))), 0u, var_0, Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xy << (vec2<u32>(0u, 55423u) % vec2<u32>(32u))), ~func_2(vec4<u32>(1u, 53994u, 0u, 4294967295u), u_input.a.xx, var_0.a.x).a.x, ~(-arg_0)), var_0.a.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -967f), -1303f)), _wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.d.x, 350f, -973f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, 1000f, 591f, var_0.c.x), vec4<f32>(var_0.c.x, var_0.d.x, var_0.c.x, 1092f), vec4<bool>(false, false, true, true))))))).c.x;
}

fn func_8(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    global0 = 0u;
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, countOneBits(select(~26536u, 1u, true))), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(reverseBits(53977u << (0u % 32u)), 0u, 47297u)));
    global0 = 1u;
    let var_0 = func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(~38507u, max(48203u, 4294967295u), 1u, firstLeadingBit(1u)), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 0u, 4294967295u, 1u)) & (vec4<u32>(max(40044u, 18962u), ~25426u, min(7448u, 101196u), abs(22672u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), u_input.a.xz, -2537i);
    var var_1 = -18724i;
    return var_0.a.yy;
}

fn func_9(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global0 = select(1u, 1u, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_5(Struct_1(vec3<i32>(u_input.a.x, -47246i, arg_1.b.x), vec2<i32>(2147483647i, -17892i), vec2<f32>(-109f, 212f), vec4<f32>(1877f, arg_1.c.x, 436f, 600f)), 0u, func_6(arg_1, 16309u), func_5(Struct_1(arg_1.a, vec2<i32>(-67889i, 1i), arg_1.d.zz, arg_1.d), 34027u, Struct_1(u_input.a, vec2<i32>(1i, 2147483647i), vec2<f32>(arg_0, -111f), vec4<f32>(-744f, 561f, 493f, arg_0)), Struct_1(u_input.a, vec2<i32>(arg_1.a.x, -2147483647i), vec2<f32>(2459f, -262f), vec4<f32>(arg_1.d.x, -2560f, -2087f, 2401f)))).d.xzx, _wgslsmith_div_vec3_f32(arg_1.d.wwy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1000f, 1743f), vec3<f32>(114f, -1416f, -1602f), vec3<bool>(false, true, true)))))));
    let var_1 = Struct_1(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), arg_1.d.xx, _wgslsmith_f_op_vec4_f32(round(arg_1.d)));
    global0 = ~(~(~(~688u)));
    global0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(22978u, 24316u), countOneBits(vec2<u32>(4294967295u, 52511u))), countOneBits(min(~vec2<u32>(38813u, 1u), ~vec2<u32>(71664u, 14307u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(~1u, abs(28217u), 16951u, firstLeadingBit(0u)), firstLeadingBit(vec4<u32>(1u, 0u, 1243u, 0u)))));
    return func_7(false, var_1, Struct_1(arg_1.a, vec2<i32>(max(func_5(Struct_1(arg_1.a, vec2<i32>(-26720i, 46914i), var_0.yy, vec4<f32>(-830f, arg_1.c.x, -1422f, arg_1.c.x)), 4294967295u, Struct_1(var_1.a, var_1.b, var_0.xx, vec4<f32>(arg_1.d.x, 1000f, arg_1.d.x, 385f)), Struct_1(var_1.a, u_input.a.xx, var_1.d.wz, arg_1.d)).a.x, firstTrailingBit(-43461i)), func_6(var_1, 90316u).b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1821f, -593f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(487f, arg_1.c.x) - vec2<f32>(1000f, 1273f)), all(vec3<bool>(false, true, false))))), func_5(Struct_1(-arg_1.a, arg_1.a.yy, arg_1.c, vec4<f32>(arg_0, var_0.x, arg_0, arg_1.d.x)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 0u)), vec2<u32>(1u, 1u)), Struct_1(var_1.a, vec2<i32>(1i, 1i), vec2<f32>(arg_1.d.x, arg_1.c.x), arg_1.d), func_6(arg_1, ~0u)).d), vec4<bool>(true, true, true, any(vec2<bool>(all(vec4<bool>(false, true, false, false)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f * 1107f)))), Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), u_input.a), u_input.a), u_input.a), func_8(Struct_1(~u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, -692f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, 740f, -2188f, -527f))), _wgslsmith_f_op_f32(func_1(u_input.a.x))), vec2<f32>(942f, -1899f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1089f, 976f, -325f) - vec4<f32>(799f, 2032f, -2203f, -132f)), _wgslsmith_div_vec4_f32(vec4<f32>(455f, 167f, 1000f, -934f), vec4<f32>(-352f, 1635f, -816f, -1336f)), true)), vec4<f32>(_wgslsmith_f_op_f32(503f - -920f), -720f, _wgslsmith_f_op_f32(-1177f + 147f), _wgslsmith_div_f32(-2466f, 913f)))), -vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yy), reverseBits(u_input.a.x), _wgslsmith_mod_i32(-2884i, 1i)) >> (vec3<u32>(~43871u, _wgslsmith_add_u32(~4294967295u, ~0u), min(66468u, _wgslsmith_sub_u32(78955u, 1u))) % vec3<u32>(32u)));
    let var_1 = func_6(func_9(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)), -744f), Struct_1(vec3<i32>(~var_0.a.x, -5462i, 30804i), firstTrailingBit(u_input.a.xy) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), func_2(max(vec4<u32>(28369u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 24453u, 0u, 52333u)), vec2<i32>(1i, 1i), var_0.b.x).c, vec4<f32>(496f, _wgslsmith_f_op_f32(step(-315f, -1781f)), -135f, var_0.c.x)), max(vec3<i32>(u_input.a.x, ~var_0.a.x, u_input.a.x >> (30230u % 32u)), vec3<i32>(-79950i, u_input.a.x, -78804i))), _wgslsmith_mult_u32(~46238u, 1u));
    let var_2 = _wgslsmith_f_op_f32(1652f * var_1.c.x);
    let var_3 = true;
    let var_4 = _wgslsmith_mod_i32(var_0.b.x, func_9(_wgslsmith_f_op_vec2_f32(func_4(49476u, Struct_1(u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b.x, u_input.a.x), var_1.a.yy, var_0.b), _wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(200f, -1285f)), _wgslsmith_f_op_vec4_f32(round(var_1.d))), _wgslsmith_f_op_f32(var_0.c.x - 630f), 1u)).x, Struct_1(~func_7(var_3, Struct_1(var_1.a, var_0.a.yz, vec2<f32>(var_1.c.x, 527f), vec4<f32>(var_2, 447f, var_1.c.x, -1219f)), var_1, vec4<bool>(var_3, var_3, var_3, false)).a, var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-830f, var_1.c.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1489f, 341f), var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 1022f, var_2, var_2))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-59928i, var_1.a.x, -4465i), var_1.a | vec3<i32>(var_0.b.x, 20805i, var_0.b.x), vec3<i32>(var_1.b.x, 0i, var_0.a.x)), -(~u_input.a))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.x, var_0.c.x, var_2, var_1.d.x))))))), var_0.a.zy, -426f, ~abs(_wgslsmith_div_u32(1u, ~77814u)));
}

