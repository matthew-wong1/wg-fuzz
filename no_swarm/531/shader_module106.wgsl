struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -20238i);

var<private> global2: vec3<bool>;

var<private> global3: vec4<i32> = vec4<i32>(1i, 7225i, -22757i, -11129i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    global1 = -vec2<i32>(arg_1, -1299i);
    global2 = select(!vec3<bool>(global0.x, any(global0.zxx), !(false || global2.x)), vec3<bool>(global0.x, any(!global2.zx), !global2.x), select(select(select(global0.yxx, vec3<bool>(true, true, true), global0.wyx), select(global0.zzx, vec3<bool>(global2.x, global0.x, true), false), false), !select(global0.wyx, global0.zyw, !global0.yyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) < _wgslsmith_f_op_f32(ceil(1f))));
    global3 = ~max(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -12653i, -4231i, 0i), vec4<i32>(global3.x, -countOneBits(2147483647i), 1i, -13422i));
    var var_0 = global0.x;
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(0u, u_input.a)), ~abs(select(vec2<u32>(36257u, u_input.a), vec2<u32>(u_input.a, 74659u), vec2<bool>(true, false)))), abs(_wgslsmith_add_vec2_u32(min(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(25364u, 34179u)), reverseBits(firstLeadingBit(vec2<u32>(1780u, u_input.a))))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), _wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(3847u, 19671u)), max(~vec2<u32>(69994u, u_input.a), ~vec2<u32>(23795u, 70750u)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(floor(-469f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(727f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-713f, arg_0))))));
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<bool>(global2.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f - 3401f))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(1f, u_input.b.x)))), global0.x);
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x), -vec2<i32>(global3.x, u_input.b.x)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(global3.wy, vec2<i32>(global3.x, 0i)), firstLeadingBit(vec2<i32>(-19645i, 0i)), _wgslsmith_clamp_vec2_i32(global3.yy, global3.zw, vec2<i32>(0i, 0i)))), u_input.b.x), vec4<i32>(-1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), ~vec2<u32>(u_input.a, 1u)) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, global3.x), abs(2147483647i)), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_add_i32(0i, u_input.b.x))), -(~1i), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(16480i, u_input.b.x, global1.x), vec3<i32>(1188i, u_input.b.x, u_input.b.x))) | abs(_wgslsmith_mult_i32(0i, 7365i))), Struct_1(vec4<i32>(2147483647i, reverseBits(-global1.x), min(firstLeadingBit(u_input.b.x), ~global1.x), 36195i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(585f * 118f), _wgslsmith_f_op_f32(func_3(406f, global1.x)))) - -1064f), _wgslsmith_mod_vec2_i32(vec2<i32>(~0i, global3.x), _wgslsmith_sub_vec2_i32(select(u_input.b.zy, u_input.b.xy, false), vec2<i32>(-3909i, 3397i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))))), Struct_1(select(~min(vec4<i32>(global1.x, u_input.b.x, global1.x, global1.x), vec4<i32>(global3.x, 2147483647i, global3.x, global1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-7694i, 22301i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, global3.x, -22386i, global1.x)) ^ -vec4<i32>(global1.x, 2147483647i, global3.x, -16260i), !vec4<bool>(global2.x, var_0.x, false, var_0.x)), 227f, ~(~abs(vec2<i32>(57769i, global1.x)))));
    global3 = select(-(~var_1.c.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 20559i, -16351i, countOneBits(-2147483647i)), ~(~var_1.c.a), vec4<i32>(var_1.b.x, _wgslsmith_div_i32(global3.x, var_1.b.x), abs(19564i), -6619i)), select(vec4<bool>(0i != var_1.c.c.x, !global2.x, global0.x, global0.x & global2.x), vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, true)), true, global3.x <= -14948i, false), select(!vec4<bool>(false, true, var_0.x, var_0.x), var_0, select(var_0, vec4<bool>(false, true, global2.x, global0.x), true)))) << (firstLeadingBit(vec4<u32>(4294967295u >> (u_input.a % 32u), select(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_div_u32(4294967295u, 27019u), global0.x && var_0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(66588u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_add_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 1u)))) % vec4<u32>(32u));
    global1 = vec2<i32>(-1i, -firstTrailingBit(reverseBits(_wgslsmith_clamp_i32(u_input.b.x, global1.x, u_input.b.x))));
    return Struct_4(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.a) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(25236u, u_input.a), vec2<u32>(43845u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(17223u, 1u))), vec2<u32>(4294967295u, u_input.a) & vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a))), Struct_1(vec4<i32>(~var_1.b.x, 31698i, ~(~1i), firstTrailingBit(1i) ^ (i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), vec2<i32>(-13243i, firstLeadingBit(i32(-1i) * -39239i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2093f, 596f, 385f)))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    return Struct_3(46594u, vec3<u32>(_wgslsmith_mod_u32(~1u, firstLeadingBit(arg_2)), ~(arg_2 << (4294967295u % 32u)), arg_1.a | select(21255u, 129766u, global0.x)) << (vec3<u32>(arg_1.a, ~47427u, arg_2) % vec3<u32>(32u)), ~(~(~_wgslsmith_div_u32(arg_2, arg_2))));
}

fn func_5(arg_0: Struct_3) -> f32 {
    global0 = !(!(!select(vec4<bool>(global0.x, false, false, global0.x), !vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global2.x, global0.x, true))));
    var var_0 = vec3<u32>(48116u, ~reverseBits(countOneBits(1u)), arg_0.c) >> (vec3<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(~arg_0.a, arg_0.b.x & arg_0.a, u_input.a)), 2679u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a, 144375u, 1u) ^ vec4<u32>(arg_0.a, arg_0.a, u_input.a, 8296u), ~(vec4<u32>(u_input.a, 59750u, u_input.a, arg_0.b.x) << (vec4<u32>(arg_0.a, arg_0.b.x, 8876u, 4294967295u) % vec4<u32>(32u))))) % vec3<u32>(32u));
    let var_1 = global2.yy;
    var var_2 = global0.xxy;
    var var_3 = func_2();
    return var_3.b.b;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = !select(!global0.yw, global2.zy, !global2.yx);
    var_0 = global0.xx;
    global1 = u_input.b.yz;
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(-54864i, global3.x >> (((arg_0 & 0u) >> (arg_0 % 32u)) % 32u)), 10247i);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(u_input.b.xz, func_2(), 14982u))))));
    return func_2().b;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = -1158f;
    global3 = abs(vec4<i32>(max(-(~(-2147483647i)), u_input.b.x), _wgslsmith_add_i32(global3.x & global1.x, -34084i << (u_input.a % 32u)) << (~4294967295u % 32u), abs(_wgslsmith_dot_vec4_i32(arg_3.b, -arg_3.b)), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(1i, global1.x), firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x)))));
    let var_1 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(arg_2.x, _wgslsmith_mod_u32(93064u, ~(~arg_0.a))));
    var var_2 = _wgslsmith_div_vec2_i32(u_input.b.zx, u_input.b.zz);
    global3 = vec4<i32>(arg_3.a.x, abs(min(global3.x, i32(-1i) * -u_input.b.x)), -var_2.x, _wgslsmith_mult_i32(var_2.x, var_2.x));
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<i32>(-1i) * -func_6(Struct_3(39090u, firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a)), ~0u), global2.x, vec3<u32>(~u_input.a, 23105u, 29091u), Struct_2(~global3.xy, vec4<i32>(global3.x, 0i, global1.x, 1i), func_1(4294967295u), func_1(1u)));
    let var_0 = Struct_1(vec4<i32>(0i, select(-30417i, ~min(6828i, global3.x), any(select(vec2<bool>(global2.x, global0.x), vec2<bool>(false, true), global2.yz))), 2147483647i, -19984i), _wgslsmith_f_op_f32(step(685f, _wgslsmith_div_f32(638f, -1494f))), -func_2().b.c);
    global2 = global0.xzy;
    global1 = ~vec2<i32>(func_6(Struct_3(~u_input.a, vec3<u32>(6616u, u_input.a, 53564u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_add_u32(u_input.a, u_input.a)), ~global3.x > 0i, _wgslsmith_div_vec3_u32(~vec3<u32>(100610u, 0u, 4294967295u), vec3<u32>(6301u, 44472u, 218u) & vec3<u32>(4294967295u, u_input.a, 0u)), Struct_2(-vec2<i32>(global3.x, global1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-38518i, 1i, var_0.c.x, -1i), vec4<i32>(-21607i, global1.x, u_input.b.x, -1i)), Struct_1(vec4<i32>(0i, 2147483647i, -767i, global1.x), 396f, var_0.c), func_1(1u))).x, -33842i);
    var var_1 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, 2269f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, var_0.b))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1580f))), vec2<bool>(global0.x, true)))), countOneBits(u_input.a), -u_input.b.x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(vec2<i32>(u_input.b.x, u_input.b.x), func_2(), u_input.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) - _wgslsmith_f_op_f32(step(1936f, -793f))))));
}

