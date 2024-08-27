struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(8744u, 33482u, 1u, 1u);

var<private> global1: array<vec3<f32>, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global1 = array<vec3<f32>, 31>();
    global1 = array<vec3<f32>, 31>();
    let var_0 = Struct_2(abs(1i));
    var var_1 = Struct_1(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), ~(-_wgslsmith_div_vec4_i32(-vec4<i32>(9464i, var_0.a, 1i, 0i), vec4<i32>(27601i, var_0.a, var_0.a, var_0.a))));
    var var_2 = Struct_1(vec3<bool>(select(true, false, var_1.a.x), true, any(select(vec2<bool>(true, true), var_1.a.zz, var_1.a.xx)) || any(var_1.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a, var_0.a, var_1.b.x), -vec3<i32>(5491i, var_0.a, var_0.a)), _wgslsmith_div_i32(-2147483647i, var_1.b.x), -1i, var_0.a), countOneBits(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, 0i, 10216i)), _wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(-21143i, 1i, var_1.b.x, 186i)), vec4<i32>(-27157i, 1i, -22256i, -25381i)))));
    return 47176u;
}

fn func_2() -> f32 {
    global0 = ~vec4<u32>(global0.x, 52920u | _wgslsmith_clamp_u32(u_input.c, u_input.c, global0.x | global0.x), global0.x, ~(_wgslsmith_sub_u32(7891u, 0u) << (_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.b) % 32u)));
    global0 = vec4<u32>(((1u << (1u % 32u)) >> (global0.x % 32u)) | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~global0.xzw, vec3<u32>(global0.x, 23202u, global0.x)), global0.x), ~abs(~(~global0.x)), 4294967295u, (1618u ^ _wgslsmith_sub_u32(1u, global0.x)) | countOneBits(1u >> (func_3() % 32u)));
    var var_0 = min(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(2147483647i), 1i), ~(~vec2<i32>(-1i, -1i))), ~(vec2<i32>(-1i) * -vec2<i32>(1i, 2147483647i))), max(max(select(vec2<i32>(-11976i, -2413i), vec2<i32>(1i, -15522i), vec2<bool>(false, true)), vec2<i32>(-15363i, -2147483647i) >> (global0.ww % vec2<u32>(32u))), vec2<i32>(21647i, -19383i) >> (firstLeadingBit(global0.yw) % vec2<u32>(32u))) ^ vec2<i32>(-36735i, 0i));
    var var_1 = !vec2<bool>(true, all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, true)))));
    let var_2 = Struct_1(!vec3<bool>(var_1.x, true, any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<i32>(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 51549i, var_0.x), select(vec3<i32>(var_0.x, var_0.x, -9776i), vec3<i32>(var_0.x, 1i, var_0.x), true))), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(var_0.x, 1i, var_0.x)), ~var_0.x), 17578i, 0i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-617f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -350f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(f32(-1f) * -2171f)))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(Struct_1(vec3<bool>(true, true, all(vec2<bool>(true, false))), reverseBits(vec4<i32>(-1i) * -vec4<i32>(arg_3.a, 19091i, arg_3.a, arg_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), any(vec4<bool>(true, false, global0.x == arg_2, any(vec3<bool>(false, false, false)))) && all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    var var_1 = var_0.b;
    var var_2 = select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_0.a.b.x, ~(~arg_3.a), _wgslsmith_add_i32(-1i, -3729i) & abs(var_0.a.b.x)), select(var_0.a.b, ~vec4<i32>(var_0.a.b.x, 2147483647i, 23083i, arg_3.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.a, -19466i, -1i, var_0.a.b.x), vec4<i32>(40110i, -2147483647i, arg_3.a, arg_3.a)), vec4<bool>(var_0.c, true, !var_0.c, select(var_0.a.a.x, false, var_0.c)))), ~vec4<i32>(-_wgslsmith_mod_i32(arg_3.a, -2629i), var_0.a.b.x, 1i, arg_3.a | ~(-2147483647i)), var_0.c);
    var_2 = vec4<i32>(~var_0.a.b.x, -40188i, _wgslsmith_div_i32(_wgslsmith_mod_i32(16951i, _wgslsmith_add_i32(-var_2.x, -57792i)), ~var_0.a.b.x), 6705i);
    global1 = array<vec3<f32>, 31>();
    return ~_wgslsmith_mod_i32(_wgslsmith_add_i32(firstLeadingBit(var_0.a.b.x), min(_wgslsmith_mult_i32(-55439i, arg_3.a), abs(var_2.x))), 1i);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = global0.x;
    let var_1 = _wgslsmith_div_f32(arg_2.b, -1000f);
    var var_2 = global0.zwx;
    let var_3 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-min(2147483647i, 0i), 0i), _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(arg_1.x, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -12269i), vec2<i32>(-1i, 34364i)), false), _wgslsmith_mod_i32(countOneBits(arg_1.x), -62714i)), arg_2.a.b.x));
    var_2 = global0.zyz;
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    let var_0 = vec2<i32>(~select(max(77523i, 50079i), 31001i, all(vec3<bool>(arg_2, true, false))) ^ (1i | _wgslsmith_clamp_i32(-2147483647i, -70706i, 1i)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(10197i, 0i) << (_wgslsmith_mod_vec2_u32(global0.yy, global0.zw) % vec2<u32>(32u))), -vec2<i32>(2147483647i, -10383i) & firstTrailingBit(vec2<i32>(1i, 1i))));
    let var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f))) - _wgslsmith_div_f32(106f, _wgslsmith_f_op_f32(190f * _wgslsmith_f_op_f32(round(-126f))))), vec3<i32>(func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -305f), global0.x, Struct_2(var_0.x)) << (~arg_0 % 32u), -8939i, _wgslsmith_mult_i32(-19628i, _wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(var_0.x, var_0.x)))), Struct_3(Struct_1(arg_3, vec4<i32>(-1i) * -vec4<i32>(var_0.x, 1i, 1i, 2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1237f)))), true)), all(vec2<bool>(true, true))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1181f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1524f)) - _wgslsmith_f_op_f32(func_1(u_input.b, vec2<u32>(u_input.c, global0.x), true, select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_2(_wgslsmith_mult_i32(select(~abs(1i), abs(-20866i << (u_input.b % 32u)), true), ~_wgslsmith_mult_i32(0i, 4440i)));
    let var_2 = -_wgslsmith_mod_i32(~(-var_1.a), _wgslsmith_add_i32(-1593i, -17369i));
    let var_3 = Struct_1(vec3<bool>(true, true, true), select(-firstTrailingBit(-vec4<i32>(var_1.a, -32615i, 42109i, 17680i)), -select(-vec4<i32>(1i, var_1.a, var_1.a, -2147483647i), vec4<i32>(var_2, -51635i, -8122i, var_1.a) & vec4<i32>(-1i, -1i, var_1.a, 0i), false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), ~u_input.c > 4294967295u)));
    let var_4 = Struct_1(vec3<bool>(true, all(vec2<bool>(true, true)), var_3.a.x), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(5570u), firstTrailingBit(~(~abs(global0.yxx))));
}

