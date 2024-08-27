struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = 889f;
    var var_1 = Struct_1(vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, var_0))))), 37124u, arg_0.x << (~_wgslsmith_clamp_u32(~arg_0.x, 0u, arg_0.x) % 32u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, _wgslsmith_f_op_f32(f32(-1f) * -1659f), -1756f, _wgslsmith_f_op_f32(var_0 - 1000f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, 360f), vec4<f32>(1000f, 751f, -671f, -1265f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-871f, var_0, var_0, -240f), vec4<f32>(var_0, var_0, -998f, 2407f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, 582f), vec4<f32>(-151f, -1007f, -1000f, var_0)))))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(-1059f, _wgslsmith_f_op_f32(round(var_0)))), _wgslsmith_f_op_f32(385f - _wgslsmith_f_op_f32(var_1.d.x - 1597f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), _wgslsmith_div_f32(var_0, -982f))))), -1000f);
    let var_3 = -1492f;
    var_2 = var_1.a;
    return var_2.zzw;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x)) + -1463f), arg_2.x, arg_2.x)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2.zy)), vec2<f32>(2006f, _wgslsmith_f_op_f32(ceil(315f)))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(~vec4<u32>(arg_1.c.x, arg_1.c.x, 32470u, 10649u))).x, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_vec2_f32(arg_2.xx + arg_2.yz));
    let var_2 = Struct_2(!select(arg_1.a, !(arg_1.c.x == 110u), arg_1.d.x && select(false, arg_1.d.x, false)), countOneBits(arg_1.b), vec4<u32>(arg_1.c.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, arg_1.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(28295u, arg_1.c.x, arg_1.c.x, 91751u), arg_1.c)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 75243u, arg_1.c.x), vec3<u32>(19989u, 98067u, 4294967295u)), ~1u), reverseBits(arg_1.c.x)), select(arg_1.d, arg_1.d, vec4<bool>(all(vec3<bool>(arg_1.d.x, true, arg_1.a)) & arg_1.a, true || (arg_1.a == true), true, arg_1.a)), -1i);
    let var_3 = arg_1;
    let var_4 = 1587f;
    return var_0.x;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(~(~8459u), Struct_2(true, vec3<i32>(u_input.a.x, u_input.a.x, -1i), ~vec4<u32>(arg_0, 14036u, 58041u, 30090u), vec4<bool>(true, true, true, true), 1i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(74429u, arg_0, arg_0, 17983u))), vec3<f32>(-1000f, 826f, 120f)))))), 1303f);
    var var_1 = _wgslsmith_dot_vec3_u32(~(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, 35597u), vec3<u32>(4294967295u, 15768u, 0u)) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)))), abs(vec3<u32>(firstTrailingBit(arg_0), 17480u, ~arg_0)));
    var var_2 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(firstLeadingBit(17393i)), ~(-27962i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), u_input.a.x >> (4294967295u % 32u)), max(6157i, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b.x, max(21792i, -8429i), u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, 83153i, ~u_input.a.x))));
    var var_3 = 4609i;
    let var_4 = (_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(28926u, 76313u, arg_0)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(93645u, 10239u, arg_0), vec3<u32>(arg_0, arg_0, 0u)), vec3<u32>(arg_0, arg_0, arg_0) >> (vec3<u32>(arg_0, 1444u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(0u, arg_0, 31231u)), vec3<u32>(1u, arg_0, 0u))) >> ((vec3<u32>(arg_0 >> (0u % 32u), arg_0, arg_0) << (select(vec3<u32>(21419u, 1u, 1u), firstTrailingBit(vec3<u32>(arg_0, arg_0, arg_0)), vec3<bool>(true, true, true)) % vec3<u32>(32u))) % vec3<u32>(32u))) >> ((_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(arg_0, arg_0, arg_0)), select(~vec3<u32>(0u, 4294967295u, arg_0), vec3<u32>(arg_0, 17928u, 107015u), true)) ^ select(_wgslsmith_mult_vec3_u32(vec3<u32>(71571u, 4294967295u, arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 49889u, 4294967295u), vec3<u32>(14632u, 0u, 1u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), min(vec3<u32>(arg_0, 110730u, arg_0), vec3<u32>(25179u, arg_0, arg_0))), vec3<bool>(true, false, all(vec4<bool>(true, true, true, false))))) % vec3<u32>(32u));
    return Struct_2(-2112f != var_0.x, vec3<i32>(~var_2.x << (var_4.x % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, ~u_input.b.x), var_2.x), u_input.b.x), vec4<u32>(~_wgslsmith_mult_u32(89405u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, arg_0, 4294967295u), ~vec4<u32>(arg_0, var_4.x, 3957u, var_4.x)), _wgslsmith_add_u32(arg_0, var_4.x) >> (var_4.x % 32u), ~var_4.x), !select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)), true), -1i);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec3<i32>(countOneBits(arg_1.e), firstTrailingBit(_wgslsmith_div_i32(u_input.b.x, arg_1.e)), 7158i);
    var var_1 = false;
    var var_2 = true;
    var var_3 = arg_1.c;
    var var_4 = ~2090i;
    return !arg_1.d;
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -544f);
    var var_1 = Struct_2(true, abs(_wgslsmith_div_vec3_i32(~(-u_input.a), u_input.a)), ~(~vec4<u32>(_wgslsmith_sub_u32(49214u, 45032u), ~18655u, ~50176u, 16518u)), !func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1214f * -142f)), func_2(~4294967295u), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -307f, -602f, 266f), vec4<f32>(-476f, var_0, var_0, var_0)), ~4294967295u, func_2(3153u).c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, var_0, var_0, var_0)))), 0i);
    var var_2 = any(select(vec3<bool>(all(!vec3<bool>(var_1.a, var_1.d.x, var_1.a)), false, u_input.a.x != firstTrailingBit(u_input.b.x)), !vec3<bool>(false, false & var_1.d.x, var_1.d.x), var_1.d.wyz));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), -1000f, var_0, _wgslsmith_f_op_f32(-var_0)), 1u, var_1.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(975f, _wgslsmith_div_f32(var_0, -454f))), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -631f), var_0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(139f, 484f, 834f, var_0), vec4<f32>(var_0, -958f, -299f, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, var_0, 778f, 124f)), vec4<bool>(true, var_1.a, var_1.d.x, true))))));
    return -vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(2147483647i, var_1.e, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(0i, u_input.a.x, var_1.e)))), ~var_1.b.x & 2147483647i, 25560i & _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -11961i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_1.e), var_1.b.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(func_1(), abs(vec4<i32>(u_input.b.x, -1i, 0i, 28403i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.b.x, -37998i, -2767i), ~vec4<i32>(0i, u_input.b.x, 1i, -37408i))) <= u_input.a.x, u_input.a, vec4<u32>(42694u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1612u, 19577u, 0u)) & firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u)), max(abs(vec3<u32>(4527u, 115377u, 1u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 43779u), 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7741u, 31265u), vec3<u32>(1u, 1u, 1u))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_5(-769f, Struct_2(true, vec3<i32>(29419i, 1i, u_input.a.x), vec4<u32>(17718u, 4294967295u, 4294967295u, 0u), vec4<bool>(false, true, true, false), 2052i), Struct_1(vec4<f32>(593f, -511f, 903f, -975f), 0u, 88087u, vec4<f32>(1900f, 1000f, 1952f, 1716f))).x), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), 1i == u_input.b.x, true), true), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(-u_input.a.x, -22550i)), -(~(-u_input.b.zx))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 392f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1315f)) * -144f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1108f * 550f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1126f, _wgslsmith_f_op_f32(floor(-854f))))));
    var_1 = -1079f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-470f - _wgslsmith_f_op_f32(ceil(-1566f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-270f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-105f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(904f, 1566f), _wgslsmith_f_op_f32(106f * 492f))))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(var_0.c.x, var_0.c.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, 0u), var_0.c.zy)), ~var_0.c.zw), 44756u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(255f, -660f, 1703f, -1603f) - vec4<f32>(2226f, -1021f, -165f, 750f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, -2180f, -2036f), vec4<f32>(-1821f, 1582f, 742f, 1653f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1232f, -1356f, 1270f, -284f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-812f * -1696f), -720f, 442f))));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(710f)) * _wgslsmith_f_op_f32(-var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(var_2.b, abs(var_0.c.x))), min(-8538i, select(_wgslsmith_mod_i32(u_input.a.x, ~var_0.e), -5592i, all(var_0.d.zy))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~var_2.c, var_0.c.x) & 0u, 9223u), var_2.a.yw, _wgslsmith_f_op_f32(var_2.d.x + var_2.d.x));
}

