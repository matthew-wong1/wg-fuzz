struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.d, 0u) >> (~abs(_wgslsmith_sub_u32(4294967295u, 75932u)) % 32u), arg_1.d);
    global0 = !select(select(vec4<bool>(arg_0.d || true, any(vec3<bool>(false, false, true)), all(global0.yw), any(vec4<bool>(false, true, true, false))), !vec4<bool>(arg_1.a.a, global0.x, arg_0.d, global0.x), select(false, true, arg_0.d)), vec4<bool>(arg_0.d, ~35059u == u_input.a.x, ~arg_2.b.x <= -11595i, all(select(vec4<bool>(global0.x, arg_0.d, true, true), vec4<bool>(true, arg_1.a.a, arg_1.a.a, true), true))), select(select(vec4<bool>(global0.x, arg_0.d, true, true), !vec4<bool>(true, arg_1.a.a, global0.x, arg_0.d), true), !(!vec4<bool>(true, false, global0.x, arg_0.d)), !select(vec4<bool>(arg_1.a.a, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, false, arg_1.a.a, true))));
    var var_1 = arg_0;
    var var_2 = Struct_5(false, vec2<u32>(~countOneBits(var_1.b), var_1.c) >> (u_input.a % vec2<u32>(32u)), var_0, _wgslsmith_f_op_f32(abs(-1298f)));
    return arg_0.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = ~firstLeadingBit(2379u);
    global0 = vec4<bool>(false, global0.x || global0.x, !func_3(Struct_4(u_input.b ^ -2147483647i, 35085u, 51181u, !global0.x), Struct_3(Struct_2(false), -1i, Struct_1(913f, vec3<i32>(0i, -5324i, arg_0.x)), _wgslsmith_clamp_u32(var_0, 31025u, 20550u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<i32>(-1i, 2147483647i, 9742i))), true);
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -26965i, ~(-1i), -1i, ~arg_0.x) | ~min(vec4<i32>(arg_0.x, 45867i, u_input.b, 18415i), vec4<i32>(77471i, u_input.b, arg_0.x, 14170i)), vec4<i32>(reverseBits(~1i), _wgslsmith_sub_i32(u_input.b, u_input.b) << (u_input.a.x % 32u), ~29111i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_0, arg_0), 43123i))));
    let var_2 = Struct_5(global0.x, select(vec2<u32>(4294967295u, 67328u), ~(u_input.a >> (vec2<u32>(0u, 4378u) % vec2<u32>(32u))), arg_0.x < arg_0.x), _wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(arg_1, arg_1, var_0, 0u)), vec4<u32>(4294967295u, arg_1, _wgslsmith_mod_u32(4294967295u, arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, 25970u))), any(select(global0.zz, vec2<bool>(global0.x, global0.x), global0.x))), vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u) >> (countOneBits(1u) % 32u), 22731u, firstTrailingBit(14932u) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, var_0, 1u, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), 0u)), 672f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f))), -802f)), -firstTrailingBit(vec3<i32>(u_input.b, var_1.x, -32886i)));
    return var_2.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = func_2(-arg_0.zzx, u_input.a.x);
    let var_1 = ~(~max(~firstLeadingBit(vec2<u32>(166049u, 0u)), max(vec2<u32>(u_input.a.x, 4294967295u), u_input.a) & ~vec2<u32>(4294967295u, 4294967295u)));
    var var_2 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(1u, 4294967295u, 4028u)), ~vec3<u32>(4294967295u, 0u, 11196u)) >> (select(abs(vec3<u32>(var_1.x, var_1.x, 14738u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 39151u), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), 2147483647i != arg_0.x) % vec3<u32>(32u)), vec3<u32>(34022u, 38809u, var_1.x));
    var_0 = global0.x;
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(78300u, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.a.x, 1u), min(var_2.x, min(u_input.a.x, u_input.a.x))), var_2.x), ~select(max(~vec3<u32>(u_input.a.x, var_1.x, var_2.x), vec3<u32>(1u, 1u, 1u)), ~abs(vec3<u32>(11887u, var_1.x, 2202u)), select(vec3<bool>(true, arg_1, false), vec3<bool>(false, false, arg_1), vec3<bool>(true, true, true))));
    return Struct_2(true);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = min(arg_2, arg_2);
    var var_1 = Struct_2(false | arg_3.a);
    var var_2 = Struct_5(func_2(_wgslsmith_mult_vec3_i32(min(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(u_input.b, 28611i, u_input.b))), -vec3<i32>(-12624i, u_input.b, u_input.b) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(0u, 79101u, 0u), vec3<u32>(1u, 12103u, 4294967295u)) % vec3<u32>(32u))), 8534u), ~firstTrailingBit(vec2<u32>(~u_input.a.x, ~52166u)), ~(~7183u), -563f);
    var var_3 = Struct_2(true);
    let var_4 = var_2.d;
    return arg_0;
}

fn func_1() -> Struct_5 {
    let var_0 = 227f;
    var var_1 = !(!global0.wy);
    global0 = vec4<bool>(_wgslsmith_div_i32(-u_input.b, _wgslsmith_mult_i32(-2147483647i, max(-1i, u_input.b))) != u_input.b, !(((global0.x && false) | (1414f <= var_0)) || var_1.x), any(global0.xyz), any(func_5(vec4<bool>(var_1.x || global0.x, true, all(vec4<bool>(global0.x, var_1.x, false, false)), !var_1.x), select(vec4<bool>(false, global0.x, var_1.x, var_1.x), vec4<bool>(false, false, true, true), vec4<bool>(false, true, var_1.x, false)), ~(u_input.a.x ^ 30895u), func_4(-vec4<i32>(33442i, 1i, u_input.b, 2147483647i), func_2(vec3<i32>(-1i, u_input.b, -2147483647i), 0u)))));
    let var_2 = max(~(vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(21027u, 4294967295u))) ^ countOneBits(u_input.a)), u_input.a);
    global0 = select(!(!func_5(!vec4<bool>(var_1.x, global0.x, false, global0.x), !vec4<bool>(true, global0.x, false, global0.x), firstLeadingBit(var_2.x), Struct_2(false))), !vec4<bool>(var_2.x != 1u, select(func_5(vec4<bool>(false, var_1.x, false, false), vec4<bool>(global0.x, false, var_1.x, global0.x), var_2.x, Struct_2(global0.x)).x, false, global0.x), 0u > _wgslsmith_clamp_u32(1u, var_2.x, u_input.a.x), var_1.x), var_1.x);
    return Struct_5(func_5(!(!vec4<bool>(global0.x, global0.x, true, true)), func_5(vec4<bool>(!global0.x, false, any(vec4<bool>(true, false, true, global0.x)), any(vec3<bool>(var_1.x, true, var_1.x))), vec4<bool>(!var_1.x, -1000f >= var_0, false, all(vec3<bool>(false, global0.x, true))), 72341u, func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(-8934i, 34730i, u_input.b, -57137i), vec4<i32>(u_input.b, 14067i, -31676i, u_input.b)), !var_1.x)), _wgslsmith_clamp_u32(min(var_2.x, ~var_2.x), select(4294967295u, countOneBits(var_2.x), true), 0u), func_4(-(~vec4<i32>(-21526i, u_input.b, 1i, u_input.b)), true)).x, vec2<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), 83145u), var_2.x, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global0.xxx, !(!vec3<bool>(global0.x, false, any(vec3<bool>(false, global0.x, global0.x)))), !select(select(vec3<bool>(true, true, global0.x), select(global0.wxy, global0.ywx, global0.x), false), select(vec3<bool>(false, global0.x, global0.x), !global0.yyw, global0.zzw), true));
    global0 = !(!select(select(!vec4<bool>(var_0.x, false, global0.x, global0.x), !vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(global0.x, true, global0.x, true)), vec4<bool>(true, u_input.b > -32397i, true, var_0.x | true), !vec4<bool>(var_0.x, false, global0.x, global0.x)));
    var_0 = select(!vec3<bool>(true, !(var_0.x || true), global0.x), vec3<bool>(global0.x, !any(vec4<bool>(false, var_0.x, global0.x, var_0.x)), all(select(global0.wxy, !vec3<bool>(true, var_0.x, false), global0.x | false))), var_0.x);
    var var_1 = ~4294967295u;
    var var_2 = func_1();
    let var_3 = !global0.xxz;
    var_0 = vec3<bool>(true, true, !(!var_0.x) & (true && !(var_2.d > var_2.d)));
    global0 = select(vec4<bool>(!global0.x, var_2.a | true, true, false), !(!(!func_5(vec4<bool>(true, var_2.a, var_3.x, var_3.x), vec4<bool>(true, global0.x, var_2.a, var_3.x), 17676u, Struct_2(false)))), !vec4<bool>(true, func_5(vec4<bool>(var_2.a, false, var_3.x, var_3.x), select(vec4<bool>(var_2.a, var_2.a, true, var_3.x), vec4<bool>(true, global0.x, var_0.x, true), var_3.x), ~var_2.b.x, Struct_2(global0.x)).x, !global0.x, _wgslsmith_f_op_f32(-var_2.d) < var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, 1256f, -1192f)), vec3<f32>(696f, -624f, var_2.d))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-464f, 891f, -622f) - vec3<f32>(var_2.d, -1325f, var_2.d))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x >> (1u % 32u), min(4294967295u, u_input.a.x)), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.d - var_2.d), 1242f, _wgslsmith_f_op_f32(f32(-1f) * -1819f), _wgslsmith_f_op_f32(exp2(var_2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.d, 211f, var_2.d))))));
}

