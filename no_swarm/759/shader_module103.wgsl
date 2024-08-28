struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = countOneBits(_wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.a, -79374i, 1i)), reverseBits(vec3<i32>(-10157i, -4164i, u_input.d)) | vec3<i32>(u_input.b, u_input.b, 2147483647i)) >> (vec3<u32>(~(~u_input.c.x), select(min(0u, 1u), u_input.c.x ^ u_input.c.x, true), min(4294967295u, _wgslsmith_clamp_u32(arg_0, arg_0, 27801u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-860f, 1211f)) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1968f, -535f) * vec2<f32>(119f, -1053f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(522f, -1719f), vec2<f32>(1175f, 796f))), true))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, -114f) * vec2<f32>(-1572f, -629f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, -1043f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, 981f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-309f, 1265f)))), ~u_input.a > -var_0.x))));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 93114u, u_input.c.x), firstTrailingBit(u_input.c))), u_input.c.x, min(u_input.c.x ^ _wgslsmith_mod_u32(4294967295u, u_input.c.x), _wgslsmith_add_u32(~36554u, _wgslsmith_div_u32(u_input.c.x, arg_0))), arg_0) << (vec4<u32>(1u, ~arg_0, select(~(~4294967295u), 0u, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 13537u, arg_0, 4294967295u), abs(vec4<u32>(arg_0, 1u, arg_0, 0u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(10169u, u_input.c.x, arg_0, u_input.c.x), vec4<u32>(arg_0, 1u, 4294967295u, 150513u)))) % vec4<u32>(32u));
    var var_3 = firstTrailingBit(select(-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, 33262i, 66307i) >> (vec4<u32>(arg_0, 4294967295u, arg_0, 0u) % vec4<u32>(32u))), ~(vec4<i32>(-9185i, u_input.a, var_0.x, u_input.b) << (vec4<u32>(31765u, var_2.x, 4294967295u, u_input.c.x) % vec4<u32>(32u))), false));
    global0 = true;
    return select(!select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, true)))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false))), false), select(vec4<bool>(~50131u == ~arg_0, true, false, any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), (any(vec3<bool>(false, true, true)) | true) || true));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, _wgslsmith_f_op_f32(-394f - 134f), 1000f, -606f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(1000f - -838f), _wgslsmith_f_op_f32(141f + 1476f), 1085f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1296f, 530f, 1345f, -467f) * vec4<f32>(-991f, -590f, 1000f, 1415f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, 201f, -816f, 747f))) * vec4<f32>(1f, _wgslsmith_f_op_f32(max(690f, -1000f)), -877f, _wgslsmith_f_op_f32(floor(587f))))));
    let var_1 = vec4<u32>(u_input.c.x, ~(~(~24308u) << (select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 584u)), 68608u << (u_input.c.x % 32u), true || arg_0.x) % 32u)), u_input.c.x, 106275u);
    var var_2 = -(~abs(select(vec2<i32>(1i, -9752i) << (vec2<u32>(var_1.x, u_input.c.x) % vec2<u32>(32u)), -vec2<i32>(-57051i, 0i), vec2<bool>(true, arg_0.x))));
    var var_3 = Struct_2(_wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.a, var_2.x, 2147483647i) << (u_input.c % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.a, 2147483647i), vec3<i32>(u_input.b, -6355i, 1i))), _wgslsmith_add_vec3_i32(vec3<i32>(10446i, 11374i, -2147483647i), vec3<i32>(-1i, u_input.a, u_input.a)) | _wgslsmith_mult_vec3_i32(vec3<i32>(-1165i, 32449i, var_2.x), vec3<i32>(2147483647i, var_2.x, var_2.x)))), var_0.x);
    let var_4 = Struct_1(true);
    return vec4<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_3.a, vec3<i32>(-55264i, 2147483647i, 7451i)) << ((32620u >> (var_1.x % 32u)) % 32u), 17750i), ~max(_wgslsmith_mult_i32(var_2.x, 46425i) >> (42684u % 32u), arg_1), _wgslsmith_div_i32(abs(-9428i), u_input.a), 1i);
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = countOneBits(-func_4(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), func_3(arg_0), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)), abs(~(-30894i)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-430f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)), -405f)), _wgslsmith_f_op_f32(sign(378f))));
    let var_2 = vec2<u32>(select(23432u >> (1u % 32u), ~1944u ^ ~arg_0, false) ^ (arg_0 | _wgslsmith_add_u32(arg_0, abs(1u))), ~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.xz));
    var var_3 = !(!all(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true)));
    var_3 = ~u_input.c.x != firstLeadingBit(firstLeadingBit(125476u));
    return select(-25108i << (0u % 32u), 0i, !(!(var_1.x != var_1.x))) <= 1i;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>) -> bool {
    let var_0 = select(select(!select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x), all(arg_1)), !select(func_3(u_input.c.x).yxx, select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, true), vec3<bool>(true, true, true)), 34091u <= u_input.c.x), !all(vec3<bool>(arg_1.x, true, false))), !vec3<bool>(select(all(vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x, false), true, false), arg_1.x);
    global0 = var_0.x;
    global0 = true;
    var var_1 = Struct_3(select(vec3<bool>(var_0.x, u_input.c.x != 10291u, any(!vec2<bool>(arg_1.x, arg_1.x))), var_0, true), !func_3(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 58329u), vec2<u32>(0u, u_input.c.x)), u_input.c.x)), Struct_1(false), Struct_2(firstLeadingBit(-firstLeadingBit(vec3<i32>(-2147483647i, 45232i, u_input.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * -517f), -1104f)), arg_0.x))));
    var var_2 = abs(vec4<u32>(abs(1u), u_input.c.x, ~(~_wgslsmith_mod_u32(32421u, u_input.c.x)), select(~_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.zy), 1u, var_0.x)));
    return true;
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    global0 = false;
    global0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(842f, arg_0))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -637f), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1360f))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))), select(vec2<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)))), vec2<bool>(any(vec4<bool>(true, true, false, false)), true), false != func_2(33783u)));
    let var_0 = arg_0;
    var var_1 = Struct_3(vec3<bool>(any(func_3(u_input.c.x).zwx), _wgslsmith_f_op_f32(arg_0 - -525f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -1467f), any(vec4<bool>(true, true, true, any(vec2<bool>(false, false))))), vec4<bool>(!(countOneBits(4245i) < u_input.d), ~u_input.a != func_4(vec4<bool>(true, true, true, true), firstLeadingBit(-31976i), vec2<bool>(true, true)).x, func_2(arg_1), true), Struct_1(!(!any(vec2<bool>(true, true)))), Struct_2(-abs(vec3<i32>(50124i, u_input.b, 1i)) | vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.b), 1i, abs(2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(148f + var_0))))));
    var var_2 = ~36378u;
    return _wgslsmith_add_u32(abs(~43748u), _wgslsmith_dot_vec2_u32(~(~u_input.c.zz), ~vec2<u32>(arg_1, 5939u))) == firstTrailingBit(~(_wgslsmith_mult_u32(4294967295u, 0u) ^ abs(u_input.c.x)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_4 {
    global0 = arg_1.b.x | true;
    var var_0 = -_wgslsmith_dot_vec2_i32(arg_1.d.a.yy, arg_1.d.a.yz) << (min(~0u, _wgslsmith_sub_u32(4294967295u, max(2259u, 1u))) % 32u);
    let var_1 = firstTrailingBit(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.c.x, arg_0.x), _wgslsmith_mod_vec3_u32(arg_0.zyx, arg_0.yzz))));
    var var_2 = vec4<u32>(4294967295u, firstLeadingBit(max(arg_0.x, countOneBits(u_input.c.x))), u_input.c.x, u_input.c.x) ^ vec4<u32>(_wgslsmith_mod_u32(abs(~u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(23190u, arg_0.x), _wgslsmith_div_u32(4294967295u, 24967u), ~var_1)), 52986u, 12988u, var_1);
    let var_3 = Struct_4(!vec3<bool>(func_1(-1812f, 4294967295u), true, arg_1.c.a), Struct_2(select(vec3<i32>(u_input.b & -1243i, i32(-1i) * -40542i, arg_1.d.a.x), min(-arg_1.d.a, vec3<i32>(15814i, u_input.b, 1i)), vec3<bool>(arg_1.b.x, any(arg_1.b), arg_1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f + -2375f) - _wgslsmith_f_op_f32(-arg_1.d.b)), 1000f))), vec3<f32>(-431f, arg_1.d.b, _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(253f, 311f, arg_1.d.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, arg_1.d.b, -563f) + vec3<f32>(arg_1.d.b, -1025f, arg_1.d.b)) - vec3<f32>(arg_1.d.b, arg_1.d.b, 869f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, arg_1.d.b, arg_1.d.b))))), !arg_1.b.x);
    return Struct_4(!func_3(select(_wgslsmith_clamp_u32(21692u, var_2.x, 36895u), 1u, all(vec4<bool>(false, true, true, arg_1.b.x)))).zwz, Struct_2(-vec3<i32>(abs(arg_1.d.a.x), u_input.a, 2147483647i), _wgslsmith_f_op_f32(ceil(var_3.d.x))), var_3.d, _wgslsmith_f_op_vec3_f32(-var_3.d), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false && any(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true));
    let var_0 = func_6(abs(~reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 27949u))) ^ vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, ~u_input.c.x), u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(2998u, u_input.c.x), ~u_input.c.zx), 30506u), Struct_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(func_1(-416f, 1u), true, false), vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true), Struct_1(false & all(vec3<bool>(true, false, true))), Struct_2(countOneBits(min(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(u_input.a, 75064i, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -575f))));
    var var_1 = func_6(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, countOneBits(u_input.c.x), reverseBits(u_input.c.x)), vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) | firstTrailingBit(vec4<u32>(0u, 29156u, u_input.c.x, u_input.c.x))) | (~vec4<u32>(33141u, u_input.c.x, 0u, 0u) | vec4<u32>(firstTrailingBit(29999u), u_input.c.x ^ u_input.c.x, u_input.c.x, 34649u)), Struct_3(var_0.a, !(!(!vec4<bool>(var_0.e, true, var_0.a.x, true))), Struct_1(!var_0.e), Struct_2(var_0.b.a | ~var_0.b.a, -895f)));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, 2147483647i, -2147483647i) << (u_input.c.x % 32u), var_0.b.a.x, var_1.b.a.x), func_6(vec4<u32>(u_input.c.x | u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x), 4022u, ~4294967295u), Struct_3(vec3<bool>(var_1.a.x, true, var_0.e), vec4<bool>(true, true, true, true), Struct_1(false), var_1.b)).b.a, _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, 2147483647i, -9025i), ~select(var_0.b.a, var_1.b.a, true))) | vec3<i32>(_wgslsmith_mult_i32(-11076i, min(13359i, -2147483647i) << (_wgslsmith_clamp_u32(u_input.c.x, 43145u, u_input.c.x) % 32u)), func_4(func_3(~u_input.c.x), -var_1.b.a.x ^ ~490i, vec2<bool>(true, false)).x, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.b.a.x, 2147483647i), var_1.b.a.x, ~var_0.b.a.x));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1181f)))));
    let var_4 = func_6(select(vec4<u32>(u_input.c.x, u_input.c.x, 0u, _wgslsmith_sub_u32(4294967295u, u_input.c.x) & 56702u), vec4<u32>(abs(_wgslsmith_mod_u32(1u, u_input.c.x)), _wgslsmith_add_u32(0u, 57911u), u_input.c.x, u_input.c.x), vec4<bool>(false, func_5(_wgslsmith_f_op_vec2_f32(var_0.d.yy - var_0.d.yy), vec2<bool>(false, var_0.a.x)), var_0.a.x, var_0.a.x)), Struct_3(!var_0.a, vec4<bool>(true, var_1.a.x, !var_1.a.x || func_6(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), Struct_3(var_0.a, vec4<bool>(var_0.e, true, true, var_0.a.x), Struct_1(var_0.a.x), var_0.b)).e, true), Struct_1(true), var_0.b)).b;
    var_1 = var_0;
    let var_5 = vec2<u32>(u_input.c.x, u_input.c.x << (20640u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, var_1.d.x, 396f, select(var_4.a.zy, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_4.a.zy, vec2<i32>(var_1.b.a.x, var_1.b.a.x) & vec2<i32>(2147483647i, -53548i)), _wgslsmith_mult_vec2_i32(var_0.b.a.xx, -var_4.a.xx)), var_1.a.zx), 832f);
}

