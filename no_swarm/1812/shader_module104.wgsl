struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(3784u, 12586u, 46219u, 7265u);

var<private> global1: vec4<f32> = vec4<f32>(-1094f, 1456f, 384f, -341f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<u32>) -> bool {
    var var_0 = arg_1;
    var var_1 = Struct_1(var_0.b.a, -1i, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.a.b.a.xxx, ~min(vec3<u32>(u_input.d, arg_1.b.c, arg_3.x), vec3<u32>(global0.x, 0u, 4294967295u)), vec3<u32>(var_0.b.a.x & 0u, arg_2.b.c, ~arg_1.a)), ~arg_1.b.a.xyy), vec4<bool>(var_0.b.d.x, any(vec3<bool>(true & var_0.c.x, arg_1.b.d.x, -1038f >= global1.x)), all(vec2<bool>(arg_1.b.b <= 52527i, all(vec3<bool>(arg_1.c.x, true, arg_2.b.d.x)))), any(!vec2<bool>(arg_1.c.x, true))), _wgslsmith_f_op_f32(arg_1.b.e + _wgslsmith_f_op_f32(select(863f, arg_1.b.e, true))));
    var var_2 = arg_2;
    let var_3 = arg_1;
    return 2151f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.e) + var_2.b.e)))));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(u_input.a, select(reverseBits(1i), 1i, true) & firstLeadingBit(1i), select(64069u, _wgslsmith_clamp_u32(~(u_input.a.x >> (0u % 32u)), global0.x, 49557u), all(vec3<bool>(true, true, true))), !vec4<bool>(all(vec2<bool>(true, false)) || false, func_3(vec3<bool>(false, false, true), Struct_2(0u, Struct_1(u_input.a, 2147483647i, u_input.c.x, vec4<bool>(true, true, true, false), -863f), vec3<bool>(false, true, false)), Struct_3(Struct_2(121028u, Struct_1(vec4<u32>(global0.x, u_input.a.x, u_input.b.x, global0.x), 16870i, 31014u, vec4<bool>(true, false, false, true), global1.x), vec3<bool>(true, true, false)), Struct_1(u_input.a, -5033i, 4294967295u, vec4<bool>(false, false, true, true), global1.x)), u_input.b.zy), true, global1.x != _wgslsmith_f_op_f32(select(global1.x, global1.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), global1.x)))), global1.x));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-894f, global1.x, 250f, 479f) - vec4<f32>(243f, var_0.e, 907f, global1.x)) + vec4<f32>(-302f, 1000f, global1.x, 1000f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(792f, 1449f, 736f, var_0.e) - vec4<f32>(736f, -607f, 576f, global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-global1.x)) - vec4<f32>(-206f, 707f, -807f, _wgslsmith_f_op_f32(select(369f, global1.x, false)))))));
    var_0 = Struct_1(~(~(~u_input.a)), -_wgslsmith_mod_i32(60079i, -(~65325i)), max(global0.x, firstLeadingBit(0u << (_wgslsmith_clamp_u32(global0.x, 24262u, 1u) % 32u))), !select(select(select(var_0.d, var_0.d, var_0.d.x), !vec4<bool>(false, var_0.d.x, false, false), all(vec2<bool>(false, false))), !vec4<bool>(true, false, var_0.d.x, true), true), global1.x);
    let var_1 = Struct_2(1u & min(reverseBits(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 50374u, 4294967295u) ^ vec3<u32>(1u, 0u, 41713u), _wgslsmith_mult_vec3_u32(var_0.a.xwx, vec3<u32>(19433u, global0.x, u_input.c.x)))), Struct_1(vec4<u32>(max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.c, 12539u, u_input.c.x), vec4<u32>(var_0.c, var_0.c, var_0.c, 22054u))), ~10893u | countOneBits(u_input.b.x), var_0.c, ~firstLeadingBit(var_0.c)), _wgslsmith_mod_i32(var_0.b, firstLeadingBit(~var_0.b)), ~(~(~1u)), vec4<bool>(!var_0.d.x, !var_0.d.x, !(!var_0.d.x), false), var_0.e), vec3<bool>(all(vec2<bool>(var_0.a.x <= 0u, all(vec2<bool>(var_0.d.x, var_0.d.x)))), select(!var_0.d.x, var_0.d.x, true), !(_wgslsmith_div_f32(208f, -403f) != var_0.e)));
    let var_2 = Struct_3(var_1, Struct_1(~min(~vec4<u32>(var_1.a, var_0.c, 15041u, var_1.a), ~u_input.a), var_1.b.b, u_input.a.x >> (var_0.c % 32u), select(select(!var_1.b.d, vec4<bool>(var_0.d.x, var_1.c.x, true, var_0.d.x), var_1.b.d.x), var_1.b.d, var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.e - -1980f)))));
    return var_1.b.d.ywz;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = arg_3.a.b;
    var_0 = Struct_1(var_0.a, ~(select(-var_0.b, max(var_0.b, 35530i), arg_0) & ~(~arg_3.b.b)), 10437u, vec4<bool>(select(all(arg_3.a.b.d.yx), 0i >= arg_3.a.b.b, arg_0 == var_0.d.x) || true, true, var_0.d.x, true), _wgslsmith_f_op_f32(abs(-869f)));
    var var_1 = arg_0;
    let var_2 = arg_3.a.b;
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x << (4294967295u % 32u), arg_3.b.c ^ 0u, 34518u), var_2.a.zwz >> (~(vec3<u32>(var_2.c, 1u, arg_3.a.b.a.x) | ~vec3<u32>(var_0.a.x, 28038u, 10164u)) % vec3<u32>(32u)));
    return max(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(global0.yxw, vec3<u32>(var_2.c, var_3.x, global0.x) ^ reverseBits(arg_2)), vec3<u32>(arg_2.x, ~_wgslsmith_dot_vec4_u32(var_0.a, var_2.a), 10090u), firstLeadingBit(u_input.a.ywz)), vec3<u32>(var_3.x, var_3.x, 1u) << (vec3<u32>(_wgslsmith_add_u32(var_2.a.x, var_3.x ^ 4294967295u), 32995u, arg_3.a.b.c) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global0 = ~vec4<u32>(global0.x, _wgslsmith_add_u32(arg_0.a.x, 72351u), 80591u, _wgslsmith_mult_u32(abs(arg_0.c), _wgslsmith_mod_u32(min(u_input.c.x, u_input.c.x), max(1u, u_input.c.x))));
    return func_4(arg_0.e <= 335f, (_wgslsmith_div_i32(abs(21647i), -arg_0.b) | (arg_0.b >> (_wgslsmith_clamp_u32(global0.x, 8569u, 1u) % 32u))) | arg_0.b, ~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.a, vec4<u32>(26675u, u_input.a.x, u_input.a.x, 59482u), arg_0.a), ~arg_0.a), _wgslsmith_mod_u32(abs(23410u), 1u), ~_wgslsmith_mult_u32(arg_0.a.x, arg_0.c)), Struct_3(Struct_2(_wgslsmith_mult_u32(select(22327u, 0u, true), abs(arg_0.a.x)), Struct_1(~vec4<u32>(0u, 1u, arg_0.a.x, 4294967295u), 17255i, _wgslsmith_sub_u32(4294967295u, u_input.b.x), arg_0.d, 694f), func_2()), arg_0));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_u32(min(arg_2.a.x, ~1u), _wgslsmith_mult_u32(arg_1.x, arg_1.x) << (_wgslsmith_sub_u32(3802u, arg_2.c) % 32u)), arg_2, var_0.d.wzx), arg_2);
    var var_2 = var_1.a;
    var_2 = var_1.a;
    let var_3 = !any(select(!select(vec2<bool>(false, var_2.b.d.x), var_1.b.d.yx, false), vec2<bool>(var_1.b.d.x & true, var_0.d.x), !arg_2.d.zy));
    return Struct_3(Struct_2(~7513u, var_1.a.b, vec3<bool>(select(!var_0.d.x, arg_2.d.x | arg_2.d.x, true), !var_3, true)), Struct_1(vec4<u32>(arg_2.a.x, ~global0.x, 0u, ~44755u), arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.a.x, u_input.a.x, global0.x), arg_2.a), ~71249u, abs(0u)) & ~_wgslsmith_add_u32(6230u, var_2.b.c), !(!vec4<bool>(var_1.b.d.x, var_0.d.x, false, var_1.a.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-2007f, _wgslsmith_f_op_f32(round(arg_2.e))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1661f, _wgslsmith_f_op_f32(global1.x + global1.x), -1053f));
    let var_0 = func_5(vec3<i32>(countOneBits(65563i), ~(-1i), 0i & firstTrailingBit(1i)), ~_wgslsmith_add_vec3_u32(func_1(Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 6981u), 38054i, 5244u, vec4<bool>(false, false, false, true), -1000f)), global0.yyx), Struct_1(_wgslsmith_div_vec4_u32(~u_input.a, ~abs(u_input.a)), i32(-1i) * -1333i, _wgslsmith_dot_vec2_u32(u_input.b.xz, global0.xz >> (select(u_input.c, vec2<u32>(67651u, 45576u), vec2<bool>(true, false)) % vec2<u32>(32u))), vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), func_3(vec3<bool>(true, true, true), Struct_2(39889u, Struct_1(vec4<u32>(1u, 35021u, 459u, u_input.a.x), -11121i, 0u, vec4<bool>(false, false, false, false), 527f), vec3<bool>(false, true, false)), Struct_3(Struct_2(global0.x, Struct_1(vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), 9878i, 47876u, vec4<bool>(false, false, false, false), global1.x), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(u_input.c.x, 20379u, 1u, 4294967295u), 2147483647i, u_input.c.x, vec4<bool>(false, true, true, true), global1.x)), global0.yx), all(vec3<bool>(true, false, false))), global1.x));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.b.e, 1191f, var_0.b.e, global1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-918f, -261f, global1.x, var_0.b.e), vec4<f32>(-1000f, global1.x, 583f, var_0.a.b.e), var_0.a.c.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, var_0.a.b.e)))));
    global0 = firstTrailingBit(countOneBits(~vec4<u32>(global0.x, 0u, 4294967295u, 20884u))) << (~_wgslsmith_sub_vec4_u32(u_input.a, firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(10869u, 42444u, var_0.b.a.x, var_0.a.a), vec4<u32>(global0.x, 0u, u_input.b.x, 17902u)))) % vec4<u32>(32u));
    let var_1 = Struct_1(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 33222u), abs(var_0.b.a))), _wgslsmith_clamp_i32(select(1i, var_0.b.b, true | var_0.a.c.x), var_0.a.b.b, 1i), ~1u, vec4<bool>(false && !(!var_0.b.d.x), func_2().x, var_0.a.c.x, any(!var_0.a.c.zx) & var_0.b.d.x), 1172f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, ~(~var_0.a.b.a.zx) & vec2<u32>(u_input.b.x, reverseBits(var_1.c)), var_0.a.b.b, vec4<u32>(_wgslsmith_add_u32(var_0.a.a, ~4294967295u), _wgslsmith_mult_u32(0u >> (u_input.b.x % 32u), _wgslsmith_sub_u32(0u, 0u)), ~global0.x >> ((global0.x | 4294967295u) % 32u), ~global0.x) & _wgslsmith_mult_vec4_u32(vec4<u32>(40052u, abs(var_1.a.x), func_4(var_0.b.d.x, var_1.b, u_input.a.ywy, var_0).x, var_1.a.x), vec4<u32>(47700u, 472u, 0u, 4294967295u) & (vec4<u32>(0u, 35843u, 8819u, var_0.b.a.x) << (vec4<u32>(22031u, 6204u, global0.x, global0.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f + _wgslsmith_f_op_f32(-1036f - _wgslsmith_f_op_f32(floor(var_1.e)))) + global1.x));
}

