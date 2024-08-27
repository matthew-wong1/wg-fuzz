struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_4, 1>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = !(!(!arg_1));
    let var_1 = 860u;
    global0 = array<Struct_4, 1>();
    var var_2 = Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, arg_3), arg_2.a.ww) | _wgslsmith_sub_i32(1i, arg_2.a.x), ~(-29612i), i32(-1i) * -arg_2.a.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), firstLeadingBit(vec3<u32>(1u, u_input.a, var_1)))) % vec3<u32>(32u)), Struct_3(Struct_2(vec4<i32>(reverseBits(1i), firstLeadingBit(-2147483647i), _wgslsmith_div_i32(arg_2.a.x, arg_3), abs(-53792i))), arg_2, Struct_1(~(u_input.a | var_1)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(580f + -1077f), _wgslsmith_f_op_f32(-1646f * -521f))))), arg_0);
    var var_3 = !(!(!(!select(vec2<bool>(true, arg_1), vec2<bool>(true, false), true))));
    return ~(-1i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_4, 1>();
    var var_0 = false;
    let var_1 = Struct_1(_wgslsmith_sub_u32(firstTrailingBit(56074u), ~1u));
    var var_2 = Struct_3(Struct_2(vec4<i32>(0i, _wgslsmith_mod_i32(-1i, i32(-1i) * -3020i), -22064i, 1i)), Struct_2(-vec4<i32>(2147483647i, -6455i, 1i, func_3(true, true, Struct_2(vec4<i32>(-2147483647i, 6944i, 1i, 80452i)), -1i))), var_1, vec2<f32>(_wgslsmith_f_op_f32(983f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -855f)))), _wgslsmith_f_op_f32(-arg_0.x)));
    var var_3 = Struct_4(abs(_wgslsmith_clamp_vec3_i32(-var_2.b.a.yyw, vec3<i32>(~var_2.b.a.x, _wgslsmith_mult_i32(var_2.a.a.x, var_2.b.a.x), var_2.b.a.x), -(vec3<i32>(var_2.b.a.x, 2147483647i, 0i) & var_2.a.a.zyx))), Struct_3(Struct_2(var_2.b.a | _wgslsmith_mod_vec4_i32(var_2.a.a, vec4<i32>(var_2.b.a.x, -45033i, -2749i, -30943i))), Struct_2(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, var_2.b.a.x, 0i, -7793i), ~vec4<i32>(var_2.a.a.x, var_2.b.a.x, 19470i, 8996i))), var_2.c, var_2.d), any(select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(any(vec4<bool>(true, false, true, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), false))));
    return Struct_2(var_2.b.a);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2.x, u_input.a), _wgslsmith_sub_vec2_u32(arg_2.yy, arg_2.yx & arg_2.xw)), 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1045f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-593f, -1462f))) + _wgslsmith_f_op_f32(-351f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-777f, -483f)))))));
    global0 = array<Struct_4, 1>();
    var var_1 = arg_0;
    global0 = array<Struct_4, 1>();
    var var_2 = (var_1.a >> (firstTrailingBit(~1u) % 32u)) <= ~var_1.a;
    return select(abs(15135i), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 278f, -288f)), vec3<f32>(162f, -1162f, 372f))).a.x << (var_1.a % 32u), arg_1.x);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec4<i32> {
    var var_0 = -136f;
    var var_1 = Struct_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_2.x, -87952i, 0i) << (vec4<u32>(16319u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), arg_1));
    var var_2 = !(!(!vec3<bool>(false, true, any(vec3<bool>(false, true, false)))));
    var var_3 = Struct_4(vec3<i32>(arg_1.x, ~(~var_1.a.x ^ min(-4802i, arg_0)), func_5(func_4(7717i, !var_2.x, vec4<u32>(4294967295u, 1u, u_input.a, 43081u), func_2(vec3<f32>(788f, -361f, -1011f))), !select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, true)))), Struct_3(Struct_2(firstLeadingBit(~vec4<i32>(arg_3.x, 0i, arg_0, arg_1.x))), Struct_2(min(vec4<i32>(14217i, arg_1.x, 0i, arg_3.x), vec4<i32>(-3449i, 2147483647i, -1i, -41925i))), func_4(-(~(-2147483647i)), true, vec4<u32>(0u, u_input.a, 34622u, 1u) | vec4<u32>(u_input.a, 1u, 1u, 0u), func_2(vec3<f32>(-184f, 942f, -175f))), vec2<f32>(1289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1856f + 1760f) - -368f))), var_2.x);
    let var_4 = ~(~countOneBits(vec3<i32>(21707i, 44529i, var_3.a.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(func_5(var_3.b.c, vec3<bool>(false, var_3.c, true)), select(var_3.a.x, -19307i, var_3.c), arg_0), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_3.b.a.a.zzy, vec3<i32>(arg_1.x, 7991i, -1i), var_1.a.yxy), ~var_3.a)));
    return max(vec4<i32>(28806i, _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 2147483647i, arg_3.x), var_1.a.xzw)), ~(arg_2.x & 0i)), _wgslsmith_clamp_i32(arg_0, _wgslsmith_add_i32(15030i, var_3.b.b.a.x) ^ -2147483647i, arg_0), var_3.a.x), select(vec4<i32>(firstLeadingBit(26128i), ~var_4.x, countOneBits(-42097i), arg_2.x), _wgslsmith_clamp_vec4_i32(var_1.a, arg_1, arg_1) ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(5413i, arg_0, -10142i, var_1.a.x), vec4<i32>(arg_1.x, -26430i, 17174i, arg_2.x)) | vec4<i32>(-1i, 46678i, arg_3.x, 8602i)), (var_3.b.d.x < _wgslsmith_f_op_f32(floor(var_3.b.d.x))) | false));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> StorageBuffer {
    global0 = array<Struct_4, 1>();
    var var_0 = Struct_5(!select(vec4<bool>(true, arg_2.x < arg_1.a, true, all(vec3<bool>(true, true, true))), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), u_input.a < arg_1.a), false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1127f))))))));
    var var_1 = func_4(-2147483647i, !(!(arg_2.x >= arg_1.a)) && (!(!var_0.a.x) & false), vec4<u32>(_wgslsmith_mult_u32(1u, ~arg_2.x), abs(_wgslsmith_div_u32(arg_2.x, 32512u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, arg_1.a, u_input.a), vec4<u32>(arg_1.a, 28005u, arg_2.x, u_input.a)), firstTrailingBit(vec4<u32>(2407u, 1u, arg_1.a, u_input.a))), 2104u), ~(~min(arg_2.x, 58768u))), Struct_2(_wgslsmith_div_vec4_i32(func_1(0i, countOneBits(vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 0i), arg_0.zzx), vec3<i32>(-2147483647i, arg_0.x, arg_0.x)), arg_0)));
    var_0 = Struct_5(!(!var_0.a), var_0.b);
    var var_2 = Struct_2(-countOneBits(arg_0));
    return StorageBuffer(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    let x = u_input.a;
    s_output = func_6(~func_1(_wgslsmith_mult_i32(33735i, 36182i) >> (_wgslsmith_add_u32(1u, u_input.a) % 32u), max(vec4<i32>(-12883i, 62781i, 1i, -28760i), select(vec4<i32>(22763i, 0i, 2147483647i, 0i), vec4<i32>(-36020i, 1i, 0i, 0i), false)), vec3<i32>(i32(-1i) * -76533i, ~61234i, ~(-22275i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -1i, 49552i), vec3<i32>(1i, 5154i, -8642i)), vec3<i32>(-22298i, 2147483647i, -5144i) >> (vec3<u32>(14835u, 1u, u_input.a) % vec3<u32>(32u)))), Struct_1(1u), select(~(~vec2<u32>(26727u, 36028u)), ~vec2<u32>(u_input.a, ~66154u), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
}

