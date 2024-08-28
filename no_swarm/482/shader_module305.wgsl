struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 7136u);

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = ~0u >> ((firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_2.a), arg_0.yzz))) ^ ~firstLeadingBit(reverseBits(1u))) % 32u);
    var var_1 = arg_2;
    var var_2 = ~vec2<i32>(abs(-14293i ^ select(2147483647i, 102935i, false)), ~arg_2.b);
    var var_3 = arg_3;
    let var_4 = arg_2;
    return arg_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(abs(global2.x)));
    let var_0 = _wgslsmith_clamp_u32(~arg_2.x, _wgslsmith_add_u32(min(abs(arg_0.a), _wgslsmith_mod_u32(~global1.a, u_input.a)), global1.a), _wgslsmith_mod_u32(~max(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 65722u, global1.a))), 19716u));
    return !select(func_3(~vec4<u32>(global0.x, 17026u, global0.x, arg_3.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(global2.zz)), _wgslsmith_f_op_vec2_f32(-global2.zx))), Struct_1(_wgslsmith_add_u32(arg_0.a, global0.x), -2147483647i, vec4<bool>(false, true, arg_0.c.x, global1.c.x)), select(abs(vec4<u32>(global0.x, 25013u, global1.a, arg_0.a)), ~vec4<u32>(var_0, 0u, u_input.a, 14808u), func_3(arg_2, global2.yz, arg_0, arg_2))).zzx, vec3<bool>(global1.c.x, arg_0.c.x, !(true | arg_0.c.x)), ~arg_1.x <= -1i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(global0.x ^ ~4294967295u, global1.b, select(global1.c, vec4<bool>(false, _wgslsmith_f_op_f32(round(464f)) < _wgslsmith_div_f32(1256f, 600f), !(global1.a >= 3782u), global1.c.x), global1.c.x));
    var var_1 = select(!func_4(Struct_1(4294967295u, -1i, vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b, var_0.b, global1.b, -31317i), vec4<i32>(global1.b, 0i, 57961i, -1i))), _wgslsmith_add_vec4_u32(min(vec4<u32>(0u, u_input.a, u_input.a, 13353u), vec4<u32>(var_0.a, 6744u, global1.a, 6859u)), vec4<u32>(global1.a, u_input.a, 0u, global0.x)), Struct_1(6170u, 32983i, func_3(vec4<u32>(1u, 896u, var_0.a, 54193u), arg_0.yy, Struct_1(2518u, var_0.b, vec4<bool>(false, false, var_0.c.x, global1.c.x)), vec4<u32>(global0.x, u_input.a, 0u, var_0.a)))), global1.c.yyz, all(select(vec4<bool>(!var_0.c.x, true, var_0.c.x, any(vec2<bool>(true, var_0.c.x))), vec4<bool>(true, true, true, true), var_0.c)));
    var_1 = vec3<bool>(var_1.x != !(_wgslsmith_sub_u32(global1.a, 17669u) < ~7861u), min(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.b), vec2<i32>(var_0.b, 1i))), global1.b) > 0i, all(func_3(abs(~vec4<u32>(67212u, u_input.a, global1.a, 34198u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.xz * vec2<f32>(678f, -1559f)))), Struct_1(~129123u, -30005i, !var_0.c), abs(~vec4<u32>(1u, var_0.a, var_0.a, 58667u)))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -553f, 1217f, -324f) - vec4<f32>(global2.x, 715f, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), arg_0.x, -1068f, _wgslsmith_f_op_f32(round(arg_0.x))))), !(!var_0.c))), vec4<f32>(_wgslsmith_f_op_f32(min(-671f, 183f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + 135f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-671f)))))));
    let var_3 = ~(~firstLeadingBit(30439u));
    return Struct_1(~(~(~161849u) & _wgslsmith_dot_vec3_u32(vec3<u32>(34025u, 21149u, var_0.a) >> (vec3<u32>(var_3, global0.x, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(var_3, 36489u, 1u))), (~(-var_0.b) ^ (1i & (var_0.b ^ 1747i))) & -(i32(-1i) * -var_0.b), !vec4<bool>(var_0.c.x, any(!vec3<bool>(true, var_0.c.x, true)), func_3(~vec4<u32>(9914u, 1u, global1.a, 9525u), vec2<f32>(-1170f, 1000f), Struct_1(global0.x, var_0.b, var_0.c), abs(vec4<u32>(global0.x, global1.a, 0u, 13525u))).x, all(var_0.c.yw)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global0 = vec2<u32>(4294967295u, global1.a);
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(197f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global2.x, global2.x)), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(-1451f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, -309f), vec3<f32>(936f, 175f, global2.x), false)))), vec3<f32>(-257f, _wgslsmith_f_op_f32(round(609f)), -176f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2372f)), -636f, -1144f)));
    let var_0 = select(arg_1.c.zwx, !(!select(vec3<bool>(true, false, false), !vec3<bool>(false, true, arg_1.c.x), select(vec3<bool>(arg_1.c.x, global1.c.x, global1.c.x), arg_1.c.wzw, false))), vec3<bool>(false, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, 263f, global2.x)))).c.x, true));
    var var_1 = _wgslsmith_mult_vec4_i32(max(-(reverseBits(vec4<i32>(arg_2.b, arg_2.b, -47340i, 6600i)) ^ (vec4<i32>(-41580i, global1.b, 0i, global1.b) & vec4<i32>(global1.b, arg_1.b, arg_1.b, 1i))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-42350i, 45760i, global1.b, 1i), vec4<i32>(5743i, arg_1.b, 18692i, -33415i) & vec4<i32>(arg_2.b, arg_2.b, 38448i, 1i)))), vec4<i32>(arg_1.b, _wgslsmith_clamp_i32(-11681i, 2147483647i, 21308i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, -27962i), vec3<i32>(arg_1.b, 10041i, arg_1.b)), global1.b, ~arg_1.b), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, arg_1.b, -2147483647i, 0i), ~vec4<i32>(-2147483647i, global1.b, -1i, -20558i))), i32(-1i) * -_wgslsmith_add_i32(14394i, arg_1.b)));
    let var_2 = func_3(~vec4<u32>(~1u, ~arg_2.a >> (firstTrailingBit(69678u) % 32u), 4294967295u, arg_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.yz, global2.zz, arg_0)), _wgslsmith_f_op_vec2_f32(step(global2.xy, global2.xz))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, -504f))))))) - global2.zx), func_2(vec3<f32>(_wgslsmith_f_op_f32(-2170f + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-206f)), _wgslsmith_f_op_f32(-508f - -541f))), global2.x)), vec4<u32>((u_input.a | 106733u) ^ _wgslsmith_clamp_u32(arg_1.a, _wgslsmith_mod_u32(65197u, u_input.a), ~arg_1.a), countOneBits(~68823u), _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.a, ~1u), global1.a), global0.x)).xwy;
    return ~(~(~(~vec3<u32>(global0.x, 1u, 4294967295u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, u_input.a, u_input.a), vec3<u32>(global0.x, arg_2.a, 0u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, 110f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_3, arg_3)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, arg_3, global2.x)))))));
    var var_1 = vec3<bool>((arg_2.x || false) || (arg_0.a < 0u), false != !global1.c.x, any(arg_2));
    var var_2 = ~(~arg_0.a);
    let var_3 = !global1.c;
    var var_4 = vec3<f32>(-726f, arg_3, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_3) + _wgslsmith_f_op_f32(-global2.x)));
    return func_5(false, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(287f)), _wgslsmith_f_op_f32(-912f - var_0.x)))), func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), 496f, _wgslsmith_f_op_f32(-var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(select(~firstLeadingBit(~vec3<u32>(u_input.a, global1.a, global0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, global0.x), 0u, 1u), vec3<u32>(~global1.a, countOneBits(62271u), ~28652u)), global1.c.x), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, ~global1.a), reverseBits(vec3<u32>(global1.a, global0.x, 44947u)) & func_1(Struct_1(49938u, global1.b, vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), global1.c.xwx, global1.c.wz, global2.x)), vec3<u32>(func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(522f, -1024f, global2.x)))).a, ~global1.a, _wgslsmith_add_u32(1u, ~u_input.a))));
    global0 = vec2<u32>(42329u, firstTrailingBit(4294967295u)) | var_0.zy;
    let var_1 = true;
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1121f, 959f)))))).c.yzw;
    global0 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.a, var_0.x), global0.x), ~var_0.x), var_0.yy), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(global1.a, 23177u), vec2<u32>(39561u, u_input.a), vec2<bool>(global1.c.x, var_2.x)), firstLeadingBit(vec2<u32>(global1.a, 17272u))), var_0.zy), firstLeadingBit(var_0.zy >> (~var_0.yx % vec2<u32>(32u))), var_0.yx));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_mult_i32(firstLeadingBit(1i), ~(-42298i) << (_wgslsmith_div_u32(~global1.a, 4294967295u) % 32u)));
}

