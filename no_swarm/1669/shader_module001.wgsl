struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: bool = true;

var<private> global2: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> vec2<i32> {
    return firstLeadingBit(arg_0.b.c | vec2<i32>(-54916i | firstTrailingBit(u_input.b), arg_0.c.c.x));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    global1 = !(true && arg_1.a);
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-arg_2.b.a, 2147483647i), ~abs(u_input.a.x)), arg_2.b.c.x), min(~firstLeadingBit(reverseBits(vec3<u32>(arg_1.e.b.x, arg_2.d, arg_0))), ~max(vec3<u32>(95185u, arg_1.e.b.x, 0u), vec3<u32>(arg_2.d, u_input.d.x, 26607u)) >> (arg_1.e.b % vec3<u32>(32u))), arg_1.c ^ _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.b, -2147483647i), arg_1.d.b.c.x), arg_2.b.c));
    let var_1 = Struct_2(firstTrailingBit(~_wgslsmith_add_u32(select(52255u, 4294967295u, true), u_input.d.x)), arg_1.e, Struct_1(abs(-1i), arg_2.c.b, u_input.a.zz), arg_1.e.b.x, u_input.d.zx);
    let var_2 = Struct_2(0u, arg_1.d.b, Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-7818i, firstTrailingBit(-1i)), -(~60371i)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(57893u, arg_1.e.b.x, arg_2.c.b.x), arg_1.e.b), arg_2.b.b), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.xx), _wgslsmith_sub_vec2_i32(arg_2.c.c, arg_2.c.c << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))))), _wgslsmith_div_u32(arg_0, reverseBits(40243u)), u_input.d.xz);
    let var_3 = select(vec3<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(arg_1.b, false), vec2<bool>(true, false), arg_1.b), true)), true, arg_1.b), !vec3<bool>(true, !all(vec3<bool>(false, arg_1.b, arg_1.b)), true), select(select(!(!vec3<bool>(false, false, arg_1.a)), select(vec3<bool>(true, arg_1.b, true), vec3<bool>(true, true, true), vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(arg_1.b, false, arg_1.a), !arg_1.b), !select(vec3<bool>(arg_1.b, true, false), !vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(true, true, arg_1.a))));
    return Struct_4(-_wgslsmith_mod_vec2_i32(arg_2.c.c, vec2<i32>(27454i, 23447i)), -1i);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-636f * 1218f), 2682f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), -472f, _wgslsmith_f_op_f32(floor(global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, 1050f, -522f)))), countOneBits(93426i) >= _wgslsmith_mod_i32(arg_0.a.x, ~4101i ^ arg_0.b)));
    let var_0 = -36493i <= _wgslsmith_div_i32(-8282i, u_input.c);
    var var_1 = Struct_3(any(!select(vec3<bool>(false, true, var_0), !vec3<bool>(true, var_0, true), select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, false, var_0), var_0))), !var_0 | (~(-u_input.c) == countOneBits(~u_input.b)), vec2<i32>(52482i, arg_0.b), Struct_2(_wgslsmith_dot_vec2_u32(u_input.d.yx, ~(~vec2<u32>(4294967295u, u_input.d.x))), Struct_1(-2147483647i, ~u_input.d, vec2<i32>(arg_0.a.x, 1i) ^ u_input.a.yy), Struct_1(1i, abs(u_input.d), vec2<i32>(-3408i, -arg_0.b)), u_input.d.x, vec2<u32>(~0u, u_input.d.x)), Struct_1(-6956i, _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.d.x, 61633u, u_input.d.x)), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_u32(u_input.d & vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d)), _wgslsmith_clamp_vec2_i32(arg_0.a, -(u_input.a.zy ^ vec2<i32>(0i, 2147483647i)), _wgslsmith_mult_vec2_i32(func_2(Struct_2(0u, Struct_1(arg_0.a.x, u_input.d, u_input.a.yx), Struct_1(-2147483647i, u_input.d, arg_0.a), 72718u, u_input.d.yy), u_input.c, global0.x), -vec2<i32>(-1i, 7150i)))));
    return Struct_3(all(select(!select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_1.a, false, true), var_0), vec4<bool>(any(vec4<bool>(true, false, false, false)), var_1.b, true, true), vec4<bool>(true, var_1.a, true, select(var_0, false, var_1.a)))), any(!vec2<bool>(false, all(vec4<bool>(var_1.a, true, false, true)))), vec2<i32>(u_input.c, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(arg_0.b, 0i, u_input.b, 1i)), firstLeadingBit(vec4<i32>(50074i, 1i, -1i, 17688i)))), Struct_2(~(~0u), var_1.e, var_1.e, 63228u, reverseBits(u_input.d.yx)), Struct_1(~_wgslsmith_mult_i32(-9680i, 1i), vec3<u32>(select(~u_input.d.x, ~4294967295u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.b.x, 1u, 22458u), vec3<u32>(var_1.d.b.b.x, u_input.d.x, 0u)), _wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(u_input.d.x, var_1.e.b.x)) << (4294967295u % 32u)), ~vec2<i32>(1i, _wgslsmith_sub_i32(arg_0.a.x, 0i))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = func_4(func_3(_wgslsmith_add_u32(71214u, 1u), Struct_3(any(vec3<bool>(true, false, true)), true, _wgslsmith_mult_vec2_i32(func_2(Struct_2(119814u, Struct_1(u_input.c, vec3<u32>(92373u, arg_0.x, u_input.d.x), vec2<i32>(u_input.b, u_input.a.x)), Struct_1(1i, u_input.d, u_input.a.xz), 21233u, u_input.d.xx), 9428i, global0.x), vec2<i32>(-5365i, u_input.c)), Struct_2(arg_0.x, Struct_1(20649i, u_input.d, vec2<i32>(-610i, u_input.a.x)), Struct_1(-15057i, u_input.d, vec2<i32>(u_input.c, u_input.b)), 1u & arg_0.x, vec2<u32>(arg_0.x, 0u)), Struct_1(u_input.a.x, vec3<u32>(u_input.d.x, 9933u, 0u), u_input.a.yz)), Struct_2(firstTrailingBit(u_input.d.x), Struct_1(abs(u_input.b), u_input.d, u_input.a.zy), Struct_1(_wgslsmith_clamp_i32(u_input.c, -1i, 2147483647i), vec3<u32>(0u, u_input.d.x, arg_0.x), -vec2<i32>(u_input.b, u_input.c)), ~29793u, vec2<u32>(arg_0.x, ~39296u))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * _wgslsmith_f_op_f32(-global0.x)) * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.x, -1315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 367f)))), global0.x);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-138f, 275f, global0.x, 1000f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, global0.x, var_1.x, 889f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(901f, var_1.x, -1360f, -172f), vec4<f32>(global0.x, var_1.x, global0.x, global0.x)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_1.x, -173f, var_1.x) - vec4<f32>(-368f, 772f, var_1.x, global0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 511f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(345f - _wgslsmith_div_f32(global0.x, 1017f)))), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(916f)) * _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-var_1.x))));
    let var_2 = var_0.a;
    var var_3 = var_0.d.b;
    return select(reverseBits(firstTrailingBit(~45601u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, var_3.b.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.e.b.x, arg_0.x), u_input.d.x & arg_0.x)), true) | reverseBits(4294967295u);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, global0.x, -1061f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, 508f, global0.x, 608f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, global0.x, 1359f, global0.x)))), true)));
    let var_3 = global0.yx;
    var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936f * var_2.x) * _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.x, global0.x)))), -2520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(trunc(1738f))))));
    return Struct_1(2147483647i | min(abs(arg_0.c.x ^ u_input.c), arg_0.a), vec3<u32>(~(~41962u >> (countOneBits(18042u) % 32u)), ~_wgslsmith_mult_u32(64100u, 0u), ~4294967295u), _wgslsmith_add_vec2_i32(abs(firstTrailingBit(u_input.a.zy) & vec2<i32>(43221i, arg_0.c.x)), ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, 2147483647i), _wgslsmith_mod_vec2_i32(u_input.a.zy, arg_0.c), u_input.a.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -459f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -222f), global0.x) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, 803f, 1059f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, -624f)))))), vec3<f32>(1631f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-162f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -169f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(728f * 1116f), _wgslsmith_f_op_f32(round(global0.x)))), global0.x));
    let var_0 = func_5(Struct_1(abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, 1i), u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), func_1(u_input.d.yx)), vec3<u32>(u_input.d.x & u_input.d.x, u_input.d.x, 1u)), vec2<i32>(u_input.b, ~u_input.b >> (18769u % 32u))));
    global2 = -1i;
    global1 = false;
    global2 = _wgslsmith_dot_vec2_i32(var_0.c, _wgslsmith_div_vec2_i32(u_input.a.xy, var_0.c)) >> (~_wgslsmith_sub_u32(~var_0.b.x >> ((var_0.b.x << (var_0.b.x % 32u)) % 32u), firstTrailingBit(1u)) % 32u);
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(func_5(var_0).b, vec3<u32>(abs(1u << (var_0.b.x % 32u)), 19764u, ~var_1.b.x | (var_0.b.x << (19493u % 32u)))), min(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(7146i, var_0.a, 35164i)), -var_1.a), _wgslsmith_mod_i32(2147483647i, u_input.a.x << (97198u % 32u))), -(~var_1.a)));
}

