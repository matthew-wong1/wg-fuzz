struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

var<private> global2: i32 = 1187i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = max(_wgslsmith_clamp_vec2_u32(reverseBits(firstLeadingBit(arg_2.xx) << (arg_2.yz % vec2<u32>(32u))), arg_2.xz, _wgslsmith_mod_vec2_u32(abs(arg_2.zy), ~vec2<u32>(4294967295u, arg_2.x))), vec2<u32>(arg_2.x, ~(~(~arg_2.x))));
    var var_1 = 27686u;
    let var_2 = min(arg_2, vec3<u32>(abs(~1u), ~(arg_2.x >> (arg_2.x % 32u)), var_0.x)) >> (reverseBits(vec3<u32>(max(var_0.x, min(57450u, var_0.x)), ~4978u, abs(arg_2.x) ^ 19322u)) % vec3<u32>(32u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3.x, 871f, arg_3.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, 184f, 687f, arg_3.x), vec4<f32>(arg_3.x, arg_3.x, 1916f, arg_3.x), global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1532f, -1379f, arg_3.x)))), 468f, global0.a, true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x) * vec4<f32>(-700f, -856f, -661f, 862f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1479f, arg_3.x, arg_3.x, arg_3.x), vec4<f32>(arg_3.x, 828f, arg_3.x, -1441f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-601f)))), arg_3.x > arg_3.x)), false, true), 0i, Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_3.x + arg_3.x), arg_3.x, arg_3.x, _wgslsmith_f_op_f32(-1000f - arg_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, arg_3.x, -1453f, arg_3.x)))), _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1250f, -306f)), _wgslsmith_f_op_f32(round(-305f))))), all(select(vec4<bool>(arg_1.a.a, global0.a, arg_1.a.a, false), vec4<bool>(false, true, false, false), true)), all(vec2<bool>(true, true))), max(vec2<i32>(u_input.a, 0i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-42247i, arg_0.x), vec2<i32>(-3903i, arg_1.b), arg_0.xy)) ^ select(arg_0.zx, arg_0.yx, arg_1.a.a));
    var var_4 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1504f)) - _wgslsmith_f_op_f32(max(-1000f, 727f)))), _wgslsmith_f_op_f32(arg_3.x + var_3.a.b)), max(~min(vec3<u32>(var_2.x, var_0.x, var_0.x), arg_2), vec3<u32>(37009u, 7550u, arg_2.x)));
    return firstTrailingBit(44107i);
}

fn func_2() -> vec2<bool> {
    global0 = Struct_4(true, func_3(~vec3<i32>(1i, global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, global0.b), vec2<i32>(u_input.a, -1i))), Struct_5(Struct_4(all(vec4<bool>(true, global0.a, true, global0.a)), ~(-24224i)), 36532i), ~reverseBits(vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1514f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -860f), -301f))));
    var var_0 = firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b, 1i), ~firstTrailingBit(vec2<i32>(1i, 2147483647i))));
    global0 = Struct_4(global0.a, abs(global0.b));
    var var_1 = vec2<u32>(1u, 1u);
    return select(vec2<bool>(select(_wgslsmith_f_op_f32(f32(-1f) * -2245f) >= _wgslsmith_f_op_f32(floor(393f)), any(vec2<bool>(global0.a, true)) && any(vec4<bool>(global0.a, global0.a, global0.a, global0.a)), true), any(!(!vec3<bool>(global0.a, false, false)))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.a), !vec2<bool>(global0.a, global0.a), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), global0.a), !vec2<bool>(global0.a, any(vec2<bool>(true, global0.a))), !(!select(vec2<bool>(false, true), vec2<bool>(false, global0.a), true))), global0.a);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_2 {
    global2 = select(2147483647i, ~abs(_wgslsmith_dot_vec4_i32(arg_1 | arg_1, arg_1)), !all(vec4<bool>(global0.a, !global0.a, all(vec3<bool>(false, global0.a, true)), any(vec2<bool>(global0.a, global0.a)))));
    var var_0 = select(vec2<bool>(false, global0.a), vec2<bool>(!select(!global0.a, global0.a, true), false), func_2());
    let var_1 = ~(~abs(_wgslsmith_add_i32(-2147483647i | arg_1.x, arg_1.x)));
    var var_2 = -(arg_1.wy << ((vec2<u32>(arg_0, ~42037u) | _wgslsmith_mult_vec2_u32(vec2<u32>(28754u, arg_0), vec2<u32>(arg_0, 0u))) % vec2<u32>(32u)));
    let var_3 = func_2();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1085f, -330f, 999f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1116f, 559f, 162f, 535f) * vec4<f32>(622f, -601f, -1147f, -310f))) * vec4<f32>(_wgslsmith_f_op_f32(-1266f - 338f), -506f, _wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(max(536f, 1073f)))), _wgslsmith_f_op_f32(-434f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 627f), _wgslsmith_f_op_f32(f32(-1f) * -201f))), func_2().x, global0.a), Struct_1(vec4<f32>(-653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * 600f)), _wgslsmith_f_op_f32(sign(-1428f)), _wgslsmith_f_op_f32(round(-1309f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f * -970f) + _wgslsmith_f_op_f32(-1000f - -2082f))), !var_0.x, 33334i < _wgslsmith_mod_i32(-53371i | global0.b, var_2.x)), _wgslsmith_mod_i32(min(~u_input.a, var_1), 0i), Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(step(-186f, 1535f)), -2423f, -1172f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1261f, 713f)))), !(var_0.x && any(var_3)), any(select(vec3<bool>(false, global0.a, true), vec3<bool>(false, true, global0.a), global0.a)) || false), arg_1.yw);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = 67104u;
    global0 = Struct_4(global0.a, -1i);
    let var_1 = arg_3.d;
    var var_2 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(reverseBits(1u), min(28387u, 18744u))), 14537u);
    let var_3 = Struct_4(func_2().x, min(998i, arg_0.b));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b - arg_2)))))), _wgslsmith_f_op_f32(471f * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(16200i, _wgslsmith_mult_i32(-1i, u_input.a)));
    global0 = Struct_4(false, _wgslsmith_clamp_i32(i32(-1i) * -(u_input.a >> (26915u % 32u)), -(~global0.b << (~20347u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, reverseBits(u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.b, -1i), vec2<i32>(global0.b, 5999i)) ^ vec2<i32>(-9697i, u_input.a))));
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~((21613u >> (0u % 32u)) >> (1u % 32u)), _wgslsmith_mult_u32(~1u, select(1u, select(0u, 4294967295u, false), all(vec2<bool>(true, true)))), ~(~(~0u)), 1u), ~select(~vec4<u32>(1u, 1475u, 6942u, 1u), vec4<u32>(1u, 1u, 1u, 1u), true), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(33944u, 51330u, 33405u, select(47692u, 4294967295u, global0.a)), vec4<u32>(0u, 4294967295u, 125926u, 41901u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = !(!vec2<bool>(true, any(vec3<bool>(true, false, false)) && true));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(325f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(Struct_4(true, global0.b), 0i), firstTrailingBit(vec2<i32>(global0.b, -1i)), _wgslsmith_f_op_f32(min(-213f, -1000f)), func_1(0u, vec4<i32>(79561i, 2147483647i, u_input.a, u_input.a)))))), 114f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))));
    let var_3 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy, -select(vec3<i32>(~u_input.a, -global0.b, global0.b & u_input.a), vec3<i32>(_wgslsmith_div_i32(-18625i, -30683i), -2147483647i, -36136i ^ u_input.a), vec3<bool>(all(vec3<bool>(var_1.x, true, var_1.x)), all(vec3<bool>(var_1.x, global0.a, var_1.x)), -530f <= var_2.x)));
}

