struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(28083i, -28110i, i32(-2147483648)), false, vec4<bool>(false, true, true, true), vec2<bool>(true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    global2 = Struct_1(vec3<i32>(~(~global2.a.x) | (i32(-1i) * -global2.a.x), global2.a.x, (global2.a.x << (abs(u_input.d.x) % 32u)) & _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 7533i, global2.a.x), global2.a)), !(global2.b | false), !global2.c, select(vec2<bool>(true, global1.x), vec2<bool>(!global2.b, false), vec2<bool>(true & any(global2.c.wwy), false)));
    var var_0 = Struct_1(select(-select(vec3<i32>(global2.a.x, 15301i, 23155i), -vec3<i32>(38905i, 41155i, 4722i), global2.c.zxw), global2.a, global2.c.xxx), !global1.x, vec4<bool>(reverseBits(global2.a.x) < global2.a.x, !all(!global2.c.yxy), !global1.x, any(select(!global2.d, select(global2.c.yy, vec2<bool>(false, global1.x), global1.x), global2.b || false))), select(vec2<bool>(true, true), global2.d, !global1.yz));
    let var_1 = global2.c.xxz;
    var_0 = Struct_1(vec3<i32>(global2.a.x, 5415i, _wgslsmith_mod_i32(global2.a.x, ~(-39921i)) & ~global2.a.x), all(select(!select(global1.zx, var_0.d, vec2<bool>(var_0.c.x, true)), vec2<bool>(false, any(vec2<bool>(var_0.c.x, true))), vec2<bool>(any(global2.c.xxx), var_0.b))), select(select(global2.c, !var_0.c, global2.c.x), !(!vec4<bool>(global2.b, true, global2.c.x, global2.d.x)), select(vec4<bool>(var_0.a.x >= -28904i, var_0.c.x, !global1.x, any(vec2<bool>(false, false))), !select(var_0.c, var_0.c, false), false)), select(global2.d, select(!vec2<bool>(global1.x, global2.b), vec2<bool>(global1.x && true, true), false), false));
    var_0 = Struct_1(vec3<i32>(-1i) * -var_0.a, true, select(!select(select(vec4<bool>(false, global2.b, var_0.b, global1.x), global2.c, var_1.x), !vec4<bool>(false, global2.c.x, false, true), global2.c), vec4<bool>(global1.x, global1.x, false, select(!var_1.x, false, global2.a.x < -1i)), !(!(!global2.c))), select(global1.xy, select(vec2<bool>(global2.a.x > 22849i, !global2.b), !select(vec2<bool>(false, true), vec2<bool>(var_1.x, false), var_1.zx), vec2<bool>(true || var_0.b, global2.b)), select(!var_0.c.x & all(vec2<bool>(global1.x, var_0.d.x)), false, any(!vec3<bool>(true, global1.x, var_1.x)))));
    return vec4<bool>(true && global2.c.x, true, true, (var_0.a.x > abs(firstLeadingBit(1i))) & any(!var_0.c));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = global1.x || (1f > arg_1);
    var var_1 = Struct_1(global2.a, false, select(select(!(!vec4<bool>(true, global2.c.x, true, false)), func_3(), false), vec4<bool>(true, global1.x, global1.x, global2.d.x), !func_3()), vec2<bool>(any(select(global1.xy, func_3().yx, global2.c.x)), any(select(vec3<bool>(true, false, global1.x), func_3().xxw, func_3().x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(1050f + 460f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(-627f, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))))) + vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-594f, _wgslsmith_f_op_f32(arg_1 + -1210f))), _wgslsmith_f_op_f32(-2753f - -655f))), arg_1));
    global0 = _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, arg_0.x, u_input.b.x) & vec4<u32>(44742u, arg_0.x, 51329u, 2370u), abs(vec4<u32>(1u, 20359u, 49461u, 4294967295u)))), abs(~abs(vec4<u32>(1u, arg_0.x, u_input.c, 0u)))) ^ select(~select(0u, arg_0.x, false), u_input.c, !(var_1.d.x && true));
    return ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_0.x, 103619u, u_input.d.x), max(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 0u), vec4<u32>(4294967295u, 10641u, arg_0.x, 37654u))), _wgslsmith_clamp_u32(u_input.b.x & arg_0.x, ~u_input.c, ~73673u)), u_input.b.x, 15025u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = u_input.b.x | (((firstTrailingBit(4294967295u) >> (0u % 32u)) & select(28299u, _wgslsmith_sub_u32(u_input.b.x, 28334u), true)) >> (func_2(~vec3<u32>(u_input.b.x, 67627u, u_input.a), 193f) % 32u));
    global0 = _wgslsmith_sub_u32(var_1, 3380u);
    let var_2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, countOneBits(arg_2.a.a.x) << (~u_input.c % 32u), -_wgslsmith_add_i32(0i, arg_2.a.a.x)), vec3<i32>(~arg_1.a.x | global2.a.x, arg_1.a.x, ~(~global2.a.x)));
    var var_3 = arg_1;
    return -1605f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_1(firstTrailingBit(max(global2.a, _wgslsmith_sub_vec3_i32(~vec3<i32>(global2.a.x, -1i, 0i), reverseBits(vec3<i32>(87713i, global2.a.x, global2.a.x))))), func_3().x, !select(select(func_3(), func_3(), false), global2.c, global1.x), vec2<bool>(any(func_3().yw), true));
    var var_1 = Struct_1(select(vec3<i32>(0i, -35930i, 2147483647i), global2.a, false), var_0.d.x, global2.c, !vec2<bool>(true, arg_0.x < 2103f));
    var var_2 = Struct_1(vec3<i32>(global2.a.x, var_0.a.x, -13513i), true, var_0.c, func_3().yz);
    let var_3 = max(~(~(vec4<u32>(11799u, 0u, u_input.d.x, u_input.b.x) << (~vec4<u32>(31227u, 73540u, 4294967295u, u_input.b.x) % vec4<u32>(32u)))), ~(~firstTrailingBit(~vec4<u32>(u_input.c, 1u, 10033u, 5526u))));
    var var_4 = Struct_2(Struct_1(vec3<i32>(17544i, 20940i, ~0i), func_3().x, func_3(), func_3().ww), var_2.a.x, -714f, -1000f);
    return Struct_2(var_4.a, 1i, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -698f))))), _wgslsmith_f_op_f32(-1180f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1809f)) - 869f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-391f - 220f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(479f))), _wgslsmith_f_op_f32(1165f + _wgslsmith_f_op_f32(-242f + -274f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec3<f32>(765f, 658f, 304f), Struct_1(global2.a, global2.d.x, global2.c, vec2<bool>(true, false)), Struct_2(Struct_1(vec3<i32>(global2.a.x, global2.a.x, global2.a.x), global1.x, vec4<bool>(true, true, global1.x, false), vec2<bool>(true, true)), global2.a.x, -1115f, -1000f))))), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(990f, 1564f, global1.x)))))));
    global2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.c, 1236f) - vec3<f32>(-658f, 914f, -128f))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), var_0.d, _wgslsmith_f_op_f32(var_0.c * 305f)))))).a;
    var var_1 = Struct_2(var_0.a, select(i32(-1i) * -7096i, _wgslsmith_div_i32(41048i, var_0.a.a.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<f32>(var_0.c, -909f, -148f)).d + 1311f), var_0.c));
    global2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(158f, -658f)), _wgslsmith_f_op_f32(-var_0.c), -264f), vec3<f32>(_wgslsmith_f_op_f32(sign(-696f)), -767f, var_1.d))) * vec3<f32>(_wgslsmith_f_op_f32(-413f + 181f), var_0.d, _wgslsmith_f_op_f32(ceil(var_0.c))))).a;
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 442f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, -745f) - vec2<f32>(var_0.c, -248f))))))));
}

