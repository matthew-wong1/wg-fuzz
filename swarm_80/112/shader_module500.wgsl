struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    let var_0 = ~global0.x;
    let var_1 = 11386u;
    var var_2 = Struct_1(vec3<bool>(true, true, true), arg_0, vec3<i32>(abs(1i), 13488i, _wgslsmith_add_i32(firstTrailingBit(abs(-19669i)), var_0 >> (~4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1408f * -1000f), _wgslsmith_f_op_f32(842f * 1720f)), _wgslsmith_f_op_f32(round(-2367f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1200f, -215f), _wgslsmith_f_op_f32(f32(-1f) * -587f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(round(-367f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-650f, 105f, -588f, -161f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(906f, 177f, 2180f, -735f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2194f, -1707f, -911f, 1888f) * vec4<f32>(-138f, 1022f, 1375f, -1041f))))), !(false || (firstLeadingBit(var_1) > 38795u)));
    let var_3 = var_2.a;
    var var_4 = firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.a | var_1, ~u_input.c), _wgslsmith_add_u32(1u, 50181u)));
    return ~vec3<i32>(-26498i, -1i & -var_0, -(i32(-1i) * -33135i));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    global0 = vec2<i32>(-1i) * -(~(-vec2<i32>(global0.x, global0.x)));
    global0 = vec2<i32>(arg_1.c, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i) * -arg_1.a.c), func_3(vec2<i32>(arg_1.c, ~1i))));
    let var_0 = firstLeadingBit(vec3<i32>(max(-2147483647i, min(-2147483647i, 8524i)), _wgslsmith_div_i32(max(global0.x, ~2147483647i), arg_1.c << (u_input.b % 32u)), ~global0.x));
    global0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(~var_0.x, var_0.x & ~arg_1.a.b.x), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(firstLeadingBit(2147483647i), _wgslsmith_mult_i32(var_0.x, -2147483647i))), select(select(arg_1.a.c.xz, vec2<i32>(var_0.x, 1i), false), ~_wgslsmith_clamp_vec2_i32(arg_1.a.b, arg_1.a.c.xx, var_0.yz), all(vec2<bool>(false, arg_1.b.x)))), ~reverseBits(var_0.zx));
    global1 = true;
    return arg_1.a.b.x;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    global1 = false;
    var var_0 = Struct_3(Struct_1(vec3<bool>(!all(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, true))), vec2<i32>(-9540i, 41133i), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(global0.x, arg_0, 2147483647i)), vec3<i32>(arg_0, -1i, -2147483647i)), vec4<f32>(1f, _wgslsmith_f_op_f32(-276f * 1389f), 1147f, _wgslsmith_f_op_f32(f32(-1f) * -1280f)), true), select(select(vec2<bool>(select(false, true, true), select(true, false, false)), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), vec2<bool>(true, true)), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec3<bool>(true, true, true))), true), -2147483647i, firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(32759u, 32592u, 12714u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 18652u))) << (~vec4<u32>(1u, u_input.a, 0u, ~u_input.b) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.a.d.x, _wgslsmith_f_op_f32(-1093f * 1f)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1375f);
    var var_2 = var_0.a.d.x;
    return var_0.a.a.yy;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(Struct_1(vec3<bool>(global0.x >= global0.x, arg_2.x, arg_2.x), vec2<i32>(-1i) * -vec2<i32>(13457i, -1i), vec3<i32>(i32(-1i) * -7307i, -54005i, global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-437f, 148f, arg_1.x, 447f), vec4<f32>(-200f, -679f, arg_1.x, -385f))), _wgslsmith_div_u32(30057u, arg_3) < _wgslsmith_add_u32(arg_3, 41013u)), arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, global0.x, global0.x, global0.x), reverseBits(vec4<i32>(global0.x, 8166i, global0.x, -10918i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-20080i, -25144i, global0.x, global0.x), vec4<i32>(493i, global0.x, 0i, global0.x))), vec4<u32>(~(u_input.a << (1u % 32u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(70795u, 0u)), max(1u, 0u), select(arg_2.x, arg_0.x, arg_0.x)), 21037u, ~min(1u, 4294967295u))), arg_0.x, firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(46352u, arg_3, arg_3, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, arg_3, u_input.b, u_input.a), vec4<u32>(u_input.c, u_input.a, 0u, u_input.c), vec4<u32>(93993u, 0u, 13937u, arg_3)))));
    var var_1 = Struct_4(Struct_3(Struct_1(select(var_0.a.a.a, select(vec3<bool>(false, true, false), vec3<bool>(arg_2.x, true, arg_0.x), var_0.a.a.a.x), false), vec2<i32>(-1i, var_0.a.a.c.x) | var_0.a.a.b, var_0.a.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.d.x, arg_1.x, 2332f, -786f) + var_0.a.a.d) - _wgslsmith_f_op_vec4_f32(-var_0.a.a.d)), arg_0.x), arg_0, global0.x, ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, u_input.a, var_0.a.d.x), var_0.a.d, var_0.c))), true, firstTrailingBit(~(vec4<u32>(48365u, arg_3, var_0.c.x, arg_3) ^ ~vec4<u32>(93591u, var_0.c.x, arg_3, u_input.c))));
    return Struct_4(Struct_3(Struct_1(var_1.a.a.a, -var_1.a.a.b, abs(min(var_0.a.a.c, vec3<i32>(global0.x, var_0.a.a.b.x, 0i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a.a.d + vec4<f32>(-453f, -2228f, -130f, 388f)), vec4<f32>(var_0.a.a.d.x, var_1.a.a.d.x, 401f, -828f), false & var_1.b)), arg_0.x), !arg_0, 11987i, vec4<u32>(var_1.a.d.x, arg_3, _wgslsmith_add_u32(var_1.c.x, var_0.a.d.x) >> (~16499u % 32u), 0u >> (var_1.c.x % 32u))), true, firstLeadingBit(var_0.c));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(221f, -2163f, any(select(select(arg_2.b, arg_3.a.a.yx, arg_3.a.a.zy), select(!vec2<bool>(arg_3.b.x, true), select(arg_2.a.a.xy, vec2<bool>(arg_1.b.x, arg_1.a.a.x), arg_1.a.a.yy), select(arg_1.b, vec2<bool>(arg_1.a.a.x, arg_1.b.x), arg_3.a.a.xy)), !vec2<bool>(arg_3.a.e, false)))));
    var_0 = arg_3.a.d.x;
    var_0 = _wgslsmith_f_op_f32(-arg_2.a.d.x);
    let var_1 = func_5(func_4(_wgslsmith_add_i32(2147483647i, func_2(vec4<f32>(arg_1.a.d.x, 610f, arg_2.a.d.x, arg_3.a.d.x), arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.d.x, arg_1.a.d.x, arg_2.a.d.x))))), select(!vec2<bool>(arg_1.d.x <= 10156u, !arg_3.a.e), arg_2.a.a.yy, select(vec2<bool>(true, true), vec2<bool>(true && arg_1.a.e, true), func_4(2147483647i))), ~u_input.b);
    global1 = !((~arg_3.d.x <= _wgslsmith_sub_u32(~u_input.c, 4294967295u)) || (arg_2.a.d.x <= arg_1.a.d.x));
    return any(!var_1.a.a.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    global1 = all(!vec3<bool>(func_1(-19178i, Struct_3(Struct_1(vec3<bool>(false, true, false), vec2<i32>(global0.x, global0.x), vec3<i32>(-44320i, global0.x, 0i), vec4<f32>(149f, -879f, 568f, 182f), false), vec2<bool>(false, false), global0.x, vec4<u32>(4294967295u, 6394u, u_input.b, 35113u)), Struct_3(Struct_1(vec3<bool>(true, false, true), vec2<i32>(global0.x, global0.x), vec3<i32>(-1i, global0.x, global0.x), vec4<f32>(1000f, -491f, 766f, 125f), true), vec2<bool>(true, true), global0.x, vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), Struct_3(Struct_1(vec3<bool>(true, true, true), vec2<i32>(global0.x, -111520i), vec3<i32>(global0.x, global0.x, global0.x), vec4<f32>(588f, 1000f, 264f, -341f), true), vec2<bool>(true, true), 2147483647i, vec4<u32>(8792u, 1u, 4294967295u, 4294967295u))) || true, any(vec4<bool>(true, true, true, true)), true));
    var_0 = -982f;
    var var_1 = firstTrailingBit(abs(vec4<i32>(_wgslsmith_clamp_i32(global0.x, -26753i, ~global0.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, 26830i), -2147483647i), abs(~0i), ~2147483647i)));
    var_1 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, var_1.x, 1i, global0.x) | vec4<i32>(global0.x, global0.x, -22462i, global0.x), ~vec4<i32>(global0.x, 1i, global0.x, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, 22250i), vec4<i32>(-1i, var_1.x, var_1.x, global0.x))) & vec4<i32>(global0.x | 0i, ~0i, global0.x | var_1.x, -65246i), vec4<i32>(0i & var_1.x, global0.x, 2147483647i, ~_wgslsmith_add_i32(-104468i, global0.x)));
    var var_2 = Struct_2(any(vec3<bool>(false, false, !any(vec2<bool>(false, true)))), true, -2147483647i, _wgslsmith_sub_u32(u_input.a, func_5(!func_5(vec2<bool>(false, true), vec3<f32>(360f, 558f, 775f), vec2<bool>(true, false), 41626u).a.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1489f, 271f), vec3<f32>(-2043f, 1093f, -1247f)))), func_5(vec2<bool>(true, true), vec3<f32>(518f, 1838f, 508f), vec2<bool>(false, true), max(u_input.b, u_input.c)).a.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, 1u), u_input.c)).a.d.x));
    var var_3 = Struct_2(var_2.b, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2181f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1064f * -2243f)))) & func_4(-_wgslsmith_sub_i32(-1i, global0.x)).x, _wgslsmith_div_i32((770i ^ var_1.x) << (_wgslsmith_add_u32(67982u, u_input.b) % 32u), global0.x) | 1i, _wgslsmith_add_u32(~var_2.d, ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(reverseBits(20515i), -global0.x, var_3.c, ~var_2.c)), ~(~17843u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1507f, -609f)), vec4<u32>(9580u, ~(~29336u), min(50807u, u_input.c), var_3.d) & ~vec4<u32>(var_2.d, var_2.d, u_input.a, ~16477u), vec3<u32>(~u_input.a, 1u, ~var_2.d << (var_3.d % 32u)));
}

