struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<i32>;

var<private> global2: u32 = 0u;

var<private> global3: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<u32> {
    let var_0 = ~countOneBits(u_input.d.x);
    var var_1 = global0.x | !all(vec4<bool>(true, true, true, global0.x));
    global2 = _wgslsmith_clamp_u32(u_input.b.x, var_0, var_0) ^ 7168u;
    global0 = select(select(vec2<bool>(!(false && global0.x), global0.x), vec2<bool>(global0.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(771f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f))), select(select(!(!vec2<bool>(global0.x, global0.x)), vec2<bool>(true, global0.x), vec2<bool>(any(vec3<bool>(false, true, true)), global0.x)), !select(select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), global0.x), vec2<bool>(true, false), global0.x && global0.x), global0.x), !(16222u != (~1u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), u_input.d.xx))));
    global2 = _wgslsmith_div_u32(~(~(~reverseBits(17240u))), u_input.a.x);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, 0u, u_input.e.x), _wgslsmith_add_vec4_u32(u_input.d, u_input.b)), var_0 & ~var_0, abs(u_input.a.x) & u_input.e.x), ~select(vec3<u32>(0u, u_input.d.x, var_0), vec3<u32>(4294967295u, 0u, var_0) & vec3<u32>(var_0, u_input.d.x, u_input.d.x), global0.x), abs(vec3<u32>(~4294967295u, select(1u, var_0, global0.x), 1u))) & (_wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(u_input.b.ywx, u_input.e)), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.d.x, 48909u), vec3<u32>(var_0, 4545u, 68155u)))) & countOneBits(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(8804u, u_input.d.x, var_0, u_input.d.x), u_input.b), ~u_input.e.x)));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(abs(func_3()), u_input.b.yzy << (~vec3<u32>(u_input.a.x, 36081u, u_input.a.x) % vec3<u32>(32u))), u_input.e), ~vec2<u32>(u_input.d.x << (max(u_input.e.x, u_input.b.x) % 32u), ~_wgslsmith_mult_u32(39969u, u_input.e.x)), !select(select(!vec4<bool>(global0.x, false, false, false), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, true)), !vec4<bool>(true, global0.x, global0.x, global0.x)), !vec4<bool>(true, false, global0.x, false), any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(137f - _wgslsmith_f_op_f32(1151f * -1000f)), -1826f))));
    let var_1 = (_wgslsmith_f_op_f32(floor(367f)) > 1684f) | false;
    global0 = select(!vec2<bool>(any(var_0.c.wx), var_0.c.x), select(vec2<bool>(any(var_0.c.yzw), select(true, select(var_0.c.x, var_1, false), select(var_1, global0.x, var_0.c.x))), !(!(!vec2<bool>(var_0.c.x, true))), !var_0.c.yz), !vec2<bool>(!(false | var_0.c.x), false));
    var var_2 = Struct_4(var_0.c.wyz, var_0.a.xz);
    global1 = ~u_input.c.xyz;
    return all(vec4<bool>(global0.x, any(select(var_0.c.yz, !var_2.a.yx, vec2<bool>(true, var_0.c.x))), true, var_0.c.x | (all(var_0.c) & false)));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = vec2<i32>(u_input.c.x, -select(-2147483647i, 0i, func_2()));
    global3 = arg_1.a.d;
    let var_1 = min(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(24866i, global1.x, var_0.x), vec3<i32>(-2147483647i, 42347i, 1i)), reverseBits(firstLeadingBit(u_input.c.yyw))), vec3<i32>(-1i) * -abs(vec3<i32>(global1.x, -1i, global1.x))), ((u_input.c.xyw & -u_input.c.wzw) ^ -firstTrailingBit(u_input.c.xww)) | u_input.c.wxz);
    global3 = 382f;
    global1 = var_1;
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.b.x, 42077u, arg_1.x), ~(~(~arg_3.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_3.b.x, 0u), arg_3.a) % vec3<u32>(32u))));
    return 1u;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    let var_0 = u_input.c;
    var var_1 = Struct_2(vec4<i32>(firstLeadingBit(min(global1.x, arg_3)), i32(-1i) * -global1.x, global1.x, _wgslsmith_dot_vec4_i32(max(var_0 & u_input.c, u_input.c), var_0)), arg_1, ~reverseBits(vec3<u32>(_wgslsmith_add_u32(arg_1, 23568u), _wgslsmith_add_u32(arg_0.x, arg_2.b.x), 42494u)), Struct_1(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.a, vec3<u32>(u_input.e.x, arg_1, arg_1)), firstTrailingBit(vec3<u32>(1131u, 1u, 4294967295u))), arg_2.b, select(arg_2.c, func_1(arg_0.x, func_1(66208u, Struct_3(arg_2), vec4<u32>(arg_0.x, 41164u, arg_2.b.x, arg_2.a.x)), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(1u, u_input.e.x, 26978u, 11173u))).a.c, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d - arg_2.d) - arg_2.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * _wgslsmith_f_op_f32(-arg_2.d)))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -982f)));
    var var_3 = _wgslsmith_f_op_f32(549f + -634f);
    let var_4 = Struct_2(u_input.c, ~1u, ~vec3<u32>(4294967295u, func_1(u_input.e.x, Struct_3(Struct_1(vec3<u32>(218u, 4942u, var_1.b), u_input.a.zz, arg_2.c, -556f)), u_input.b).a.a.x, var_1.c.x | u_input.a.x), Struct_1(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, arg_0.x, arg_2.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 84109u, arg_2.b.x) & vec3<u32>(4294967295u, arg_1, arg_0.x), u_input.a)), ~(~vec2<u32>(u_input.b.x, arg_0.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, arg_2.c.x, var_1.d.c.x), arg_2.c, vec4<bool>(false, true, global0.x, true)), var_1.d.c.x), 1059f));
    return !func_1(arg_1, Struct_3(func_1(~arg_1, func_1(u_input.d.x, Struct_3(arg_2), u_input.d), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(arg_0.x, arg_0.x, 4294967295u, var_4.b), u_input.d)).a), ~vec4<u32>(arg_2.a.x, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(41334u, 18197u, var_4.b), arg_0), firstTrailingBit(u_input.a.x))).a.c.zw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(any(vec4<bool>(true, true, u_input.c.x <= 42463i, global0.x)), select(false, any(vec3<bool>(false, global0.x, global0.x)), false)), func_5(vec3<u32>(9083u, u_input.e.x, firstLeadingBit(u_input.a.x)), func_4(func_1(~90736u, Struct_3(Struct_1(vec3<u32>(u_input.b.x, 1u, u_input.a.x), u_input.b.wx, vec4<bool>(global0.x, false, true, global0.x), -135f)), u_input.b), u_input.e.yy, func_1(abs(u_input.d.x), func_1(u_input.e.x, Struct_3(Struct_1(vec3<u32>(u_input.d.x, u_input.b.x, u_input.a.x), u_input.b.zy, vec4<bool>(false, global0.x, global0.x, true), -292f)), u_input.d), max(u_input.d, u_input.d)).a.c.yzy, func_1(~u_input.e.x, Struct_3(Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, 1u), vec2<u32>(u_input.d.x, 0u), vec4<bool>(false, global0.x, global0.x, global0.x), 842f)), countOneBits(u_input.d)).a), func_1(~u_input.d.x, func_1(func_3().x, func_1(u_input.b.x, Struct_3(Struct_1(u_input.d.zxz, vec2<u32>(u_input.a.x, 0u), vec4<bool>(global0.x, false, global0.x, global0.x), 600f)), u_input.b), ~vec4<u32>(u_input.b.x, 1u, u_input.e.x, u_input.a.x)), ~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 1349u, 33862u, 61017u))).a, u_input.c.x), vec2<bool>(global0.x, !any(func_5(vec3<u32>(u_input.e.x, u_input.a.x, u_input.d.x), 121529u, Struct_1(u_input.d.xyz, u_input.d.zy, vec4<bool>(global0.x, true, false, global0.x), -1477f), 68134i))));
    let var_0 = abs(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c >> (u_input.d % vec4<u32>(32u))) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), u_input.c.xx ^ vec2<i32>(24685i, 1i))) << (((u_input.a.x ^ u_input.a.x) ^ u_input.d.x) % 32u);
    global0 = !func_1(64431u, Struct_3(Struct_1(vec3<u32>(u_input.b.x, 0u, 76414u), u_input.b.yz, vec4<bool>(true, true, global0.x, false), _wgslsmith_f_op_f32(517f * 704f))), vec4<u32>(u_input.b.x, ~func_4(Struct_3(Struct_1(u_input.a, vec2<u32>(1u, 12577u), vec4<bool>(global0.x, global0.x, true, global0.x), 2148f)), vec2<u32>(4294967295u, u_input.e.x), vec3<bool>(global0.x, false, global0.x), Struct_1(vec3<u32>(0u, u_input.e.x, u_input.a.x), u_input.d.zz, vec4<bool>(global0.x, false, global0.x, true), -495f)), 1u, 10182u)).a.c.xx;
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(~(~(~vec3<u32>(u_input.a.x, 9210u, u_input.a.x))), ~vec3<u32>(u_input.d.x, 68919u, func_4(Struct_3(Struct_1(vec3<u32>(u_input.d.x, u_input.e.x, u_input.b.x), vec2<u32>(10710u, u_input.e.x), vec4<bool>(false, global0.x, true, false), 996f)), vec2<u32>(u_input.b.x, u_input.b.x), vec3<bool>(global0.x, false, global0.x), Struct_1(vec3<u32>(u_input.e.x, u_input.b.x, 24634u), u_input.b.zz, vec4<bool>(global0.x, global0.x, false, global0.x), -845f)))), func_3().xz << (func_3().zz % vec2<u32>(32u)), !(!(!vec4<bool>(global0.x, global0.x, global0.x, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-925f, -1640f, true))))));
    global2 = 2464u;
    var var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -461f, -870f, var_1.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, 1878f, -2169f, var_1.d) * vec4<f32>(var_1.d, var_1.d, var_1.d, 690f))))), var_0 >> (4294967295u % 32u), 26453u);
}

