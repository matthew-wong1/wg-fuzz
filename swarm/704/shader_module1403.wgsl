struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    return ~global0.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, 141f)), global0.a.c, -848f, _wgslsmith_f_op_f32(-global0.a.c)))), ~vec3<i32>(2147483647i, -arg_3.x, func_3()), _wgslsmith_f_op_f32(-global0.a.a.x)), global0.b);
    var var_1 = -(~(-1i));
    let var_2 = ~(~(_wgslsmith_mod_u32(arg_1, _wgslsmith_add_u32(4294967295u, arg_1)) ^ u_input.b.x));
    var var_3 = Struct_3(global0.a, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_f_op_f32(min(var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_f32(ceil(1378f)))), global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -1087f))), -1i, !vec4<bool>(!(-279f > global0.a.c), false == any(vec2<bool>(false, true)), true, true), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.a.a, vec4<f32>(global0.a.c, var_0.a.a.x, var_0.a.a.x, global0.a.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, global0.a.c, 1246f, global0.a.c))), vec3<i32>(_wgslsmith_mod_i32(arg_0.x, -28390i), 1i, ~arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -472f)), -global0.b));
    var_1 = _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.b.x, 2147483647i, u_input.a, 69725i) ^ var_0.b), -abs(vec4<i32>(-1i, arg_3.x, u_input.d, arg_3.x))), -1i);
    return global0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(global0.a, func_2(global0.a.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 54476u, u_input.e, 4294967295u), vec4<u32>(0u, u_input.e, u_input.b.x, u_input.b.x)), ~u_input.e), 0i, abs(abs(global0.b ^ vec4<i32>(32731i, global0.b.x, -6064i, u_input.d)))), ~global0.a.b.x, vec4<bool>(true, true, !all(vec2<bool>(false, false)), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true))), Struct_2(global0.a, _wgslsmith_mult_vec4_i32(vec4<i32>(~(-25310i), _wgslsmith_dot_vec3_i32(vec3<i32>(-28020i, 946i, 2147483647i), global0.a.b), u_input.a, abs(u_input.c)), ~(-vec4<i32>(u_input.a, global0.b.x, 23475i, 10482i)))));
    let var_1 = Struct_1(vec4<f32>(var_0.b.c, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x), -1348f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-628f, global0.a.a.x)), _wgslsmith_f_op_f32(trunc(1874f)), all(var_0.d.wwz))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.a.x)) + global0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) * _wgslsmith_f_op_f32(-1682f - _wgslsmith_f_op_f32(global0.a.a.x * 564f)))), _wgslsmith_add_vec3_i32(countOneBits(func_2(var_0.e.b.zxw, ~u_input.e, countOneBits(1i), select(var_0.e.b, global0.b, var_0.d)).b), countOneBits(vec3<i32>(u_input.d, -var_0.a.b.x, reverseBits(-1i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.c - -2796f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x))), !var_0.d.x)));
    let var_2 = _wgslsmith_sub_u32(~1721u, 1u);
    var var_3 = !select(!(!vec3<bool>(var_0.d.x, false, true)), !select(var_0.d.wxz, !vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), select(var_0.d.zwz, var_0.d.yyx, var_0.d.zzx)), select(select(!var_0.d.wyz, !var_0.d.yxy, var_2 >= 0u), select(vec3<bool>(true, true, true), var_0.d.yyy, select(vec3<bool>(false, var_0.d.x, false), var_0.d.wzz, var_0.d.x)), var_0.d.zxx));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-769f, var_0.e.a.a.x), global0.a.a.x, 1000f, _wgslsmith_f_op_f32(-global0.a.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a.a + vec4<f32>(global0.a.a.x, var_0.e.a.a.x, 3119f, global0.a.c)) * _wgslsmith_f_op_vec4_f32(ceil(var_1.a))))), reverseBits(var_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + var_1.c))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c, global0.a.c, 411f, -578f), vec4<f32>(global0.a.c, -189f, -2048f, var_0.e.a.c)), global0.a.a)), ~(vec3<i32>(func_2(var_4.b, u_input.b.x, var_0.e.b.x, global0.b).b.x, -var_1.b.x, var_1.b.x) | (_wgslsmith_div_vec3_i32(var_4.b, var_0.e.a.b) >> (u_input.b.xzx % vec3<u32>(32u)))), func_2(_wgslsmith_add_vec3_i32(var_0.a.b, var_4.b), firstLeadingBit(min(57409u, 1u)), 10335i, _wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(5240i, var_0.a.b.x, 2147483647i, 71735i), vec4<i32>(-49418i, global0.b.x, var_4.b.x, -60678i)), _wgslsmith_mod_vec4_i32(vec4<i32>(64144i, global0.a.b.x, 29823i, var_4.b.x), reverseBits(global0.b)))).a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_1 {
    global0 = Struct_2(func_2(abs(global0.b.xyz), _wgslsmith_div_u32(~u_input.b.x, abs(u_input.b.x)) << (~countOneBits(38791u) % 32u), select(-19434i, global0.a.b.x, !(1i <= arg_0.x)), vec4<i32>(2147483647i, ~(-arg_0.x), 0i, countOneBits(0i))), global0.b);
    global0 = Struct_2(global0.a, abs(-(~reverseBits(vec4<i32>(global0.a.b.x, -2147483647i, 73622i, u_input.c)))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a.a - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-718f, 492f, -1000f, 1259f) + vec4<f32>(470f, -1299f, arg_2.e.a.c, 2026f))))), ~arg_2.e.a.b, arg_1.x), (vec4<i32>(reverseBits(-2147483647i), ~arg_2.c, -40776i << (u_input.b.x % 32u), 1i) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 26725u, 135806u, 14355u) ^ u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) | arg_2.e.b);
    global0 = Struct_2(func_2(select(global0.a.b, _wgslsmith_mod_vec3_i32(arg_2.e.a.b, vec3<i32>(global0.b.x, arg_0.x, -1i)), !vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)) & vec3<i32>(firstTrailingBit(global0.a.b.x), global0.a.b.x << (39505u % 32u), _wgslsmith_mult_i32(-54593i, arg_0.x)), _wgslsmith_sub_u32(4294967295u, 1u) >> ((0u ^ countOneBits(u_input.b.x)) % 32u), 1i, -global0.b), ~global0.b);
    global0 = arg_2.e;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(global0.a.a)), vec4<f32>(644f, global0.a.a.x, 351f, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1318f, arg_1.x, global0.a.c, 1158f), global0.a.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, arg_2.e.a.a.x, -1437f, global0.a.a.x)))))), vec3<i32>(-2147483647i, ~func_1().b.x, reverseBits(1i)), _wgslsmith_f_op_f32(f32(-1f) * -445f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_4(vec2<i32>(global0.b.x, u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.a.a.ywx)), vec3<f32>(global0.a.c, -498f, _wgslsmith_f_op_f32(global0.a.a.x * -1049f))), Struct_3(func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.c, -1561f, -779f, 237f))), vec3<i32>(0i, 33780i, u_input.c), _wgslsmith_f_op_f32(901f * 782f)), 0i, vec4<bool>(true, true, true, true), Struct_2(func_2(vec3<i32>(1i, global0.b.x, global0.a.b.x), 62770u, u_input.a, global0.b), ~vec4<i32>(37722i, 1i, global0.b.x, 0i)))), global0.b);
    global0 = Struct_2(global0.a, vec4<i32>(-22263i, -41240i, 2147483647i, -_wgslsmith_sub_i32(-79567i << (1u % 32u), 50888i)));
    global0 = Struct_2(func_2(~global0.b.yxy & -(~vec3<i32>(u_input.d, global0.b.x, -1i)), 0u, 1i, ~((global0.b << (u_input.b % vec4<u32>(32u))) ^ ~global0.b)), -select(~(~vec4<i32>(13411i, global0.a.b.x, -17857i, -45993i)), -vec4<i32>(-59508i, -2147483647i, u_input.a, -13723i), vec4<bool>(u_input.e == 0u, true, true, 72963u <= u_input.e)));
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(reverseBits(~u_input.b.xyw), ~abs(vec3<u32>(27534u, 25159u, 4294967295u))), u_input.b.xww), ~vec3<u32>(84171u, ~u_input.e, _wgslsmith_clamp_u32(u_input.b.x, 32733u, 39065u)) >> (u_input.b.ywx % vec3<u32>(32u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)))), func_4(global0.b.zy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.a.a.yxy - _wgslsmith_div_vec3_f32(global0.a.a.yzx, global0.a.a.wwz)))), Struct_3(func_1(), func_4(abs(vec2<i32>(2147483647i, -18814i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, global0.a.c, -1080f)), Struct_3(global0.a, Struct_1(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.c, global0.a.c), global0.a.b, global0.a.c), -44879i, vec4<bool>(false, false, true, false), Struct_2(global0.a, global0.b))), ~global0.a.b.x, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), Struct_2(Struct_1(vec4<f32>(-1656f, 2097f, 850f, -282f), vec3<i32>(u_input.d, 0i, global0.a.b.x), global0.a.c), select(vec4<i32>(global0.b.x, u_input.c, 2147483647i, -2147483647i), global0.b, true)))).a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(abs(global0.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

