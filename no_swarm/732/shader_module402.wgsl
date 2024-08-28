struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(73208i, 54410i, 1i, 1i), vec3<u32>(0u, 22702u, 35089u), true, 2147483647i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    global0 = arg_1.c;
    let var_0 = -(~vec3<i32>(1i, global0.b.x, _wgslsmith_mult_i32(arg_1.c.b.x, arg_1.e.e)));
    global0 = arg_1.e;
    return arg_1.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_2(global0.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 784f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1042f)), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(func_3(global0.d && false, Struct_2(true, vec2<f32>(364f, -679f), arg_1, true, arg_1)))), arg_1, all(select(vec2<bool>(true, any(global0.a.zw)), !(!vec2<bool>(global0.a.x, global0.d)), true)), Struct_1(vec4<bool>(any(vec3<bool>(global0.d, arg_1.d, arg_1.a.x)) | select(global0.a.x, true, global0.d), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, arg_1.c.x, 1u, global0.c.x)) >= global0.c.x, global0.a.x, firstLeadingBit(u_input.d) < _wgslsmith_div_u32(u_input.d, global0.c.x)), ~(~vec4<i32>(arg_1.b.x, -1i, -56854i, global0.b.x)), countOneBits(~u_input.b.wzz), any(!global0.a), _wgslsmith_sub_i32(-2147483647i, abs(-u_input.a.x))));
    global0 = arg_1;
    global0 = Struct_1(select(select(vec4<bool>(false, global0.d, global0.e >= 14594i, false), !vec4<bool>(var_0.e.a.x, global0.d, var_0.e.a.x, true), any(select(arg_1.a, var_0.c.a, vec4<bool>(arg_1.a.x, true, true, global0.a.x)))), !select(arg_1.a, select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(false, false, global0.a.x, false), false), select(vec4<bool>(arg_1.a.x, arg_1.d, false, global0.a.x), vec4<bool>(true, var_0.c.d, arg_1.d, true), global0.a)), var_0.e.a), reverseBits(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(32281i, global0.b.x, global0.e, var_0.c.b.x)) & vec4<i32>(var_0.c.e, arg_1.b.x, arg_1.b.x, 2147483647i), vec4<i32>(countOneBits(arg_1.e), ~(-1i), var_0.e.b.x, 38239i))), ~global0.c, any(!select(select(global0.a, vec4<bool>(var_0.e.a.x, global0.a.x, true, var_0.e.d), global0.a), vec4<bool>(global0.d, true, false, false), select(var_0.c.a, var_0.e.a, var_0.c.a))), (~global0.e & 2147483647i) ^ countOneBits(_wgslsmith_div_i32(-arg_1.e, _wgslsmith_dot_vec3_i32(vec3<i32>(23208i, -1i, arg_1.b.x), vec3<i32>(var_0.e.b.x, 47757i, 27943i)))));
    global0 = Struct_1(vec4<bool>(all(vec4<bool>(global0.a.x, false, !var_0.e.d, true)), true, false, all(var_0.c.a.xw) | select(true, global0.d, any(vec3<bool>(arg_1.a.x, false, false)))), vec4<i32>(-_wgslsmith_add_i32(countOneBits(-10246i), arg_1.b.x), u_input.a.x, -firstLeadingBit(global0.e), ~(abs(global0.b.x) | _wgslsmith_mult_i32(u_input.a.x, 16329i))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0.c.x, 1u), ~u_input.d, abs(0u)), select(u_input.b.wzx | vec3<u32>(arg_1.c.x, 0u, 1u), var_0.c.c, vec3<bool>(global0.a.x, arg_1.a.x, global0.a.x))), ~((var_0.c.c.x | 0u) & ~22320u), ~(~(~global0.c.x))), var_0.a, firstLeadingBit(global0.b.x));
    let var_1 = select(!vec4<bool>(!(true | global0.a.x), select(all(vec3<bool>(global0.a.x, true, true)), global0.a.x, true), arg_1.d, true), arg_1.a, all(var_0.c.a));
    return !global0.a.yxw;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global0 = Struct_1(global0.a, -(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(global0.b, vec4<i32>(-1i, 14052i, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, _wgslsmith_mult_u32(global0.c.x, arg_1), 21439u), select(vec3<u32>(34216u, ~3122u, 1u), select(~u_input.b.zxy, ~vec3<u32>(global0.c.x, arg_1, 58602u), all(vec3<bool>(global0.d, true, global0.a.x))), func_2(_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zx), Struct_1(global0.a, vec4<i32>(global0.e, -33244i, 30364i, global0.b.x), u_input.b.wwy, arg_0.x, u_input.a.x), -1385f)), vec3<u32>(29700u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, arg_1, 11433u), u_input.b.xxw), ~_wgslsmith_div_u32(4294967295u, u_input.d))), arg_0.x, u_input.a.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1778f)), _wgslsmith_div_f32(-579f, -1075f))));
    global0 = Struct_1(global0.a, global0.b, u_input.b.ywx, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.c, 4294967295u), ~4294967295u) > _wgslsmith_clamp_u32(~arg_1, 0u, ~74736u), 1i);
    global0 = Struct_1(!select(select(select(global0.a, vec4<bool>(global0.a.x, arg_0.x, false, false), global0.a), select(vec4<bool>(false, global0.a.x, true, arg_0.x), vec4<bool>(global0.d, global0.a.x, arg_0.x, true), true), all(global0.a)), global0.a, vec4<bool>(any(vec2<bool>(true, global0.d)), global0.d || arg_0.x, global0.d, arg_0.x)), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(-28632i, -40902i)), 2147483647i | u_input.a.x, 1i, -_wgslsmith_div_i32(min(-1i, -67406i), firstLeadingBit(u_input.a.x))), ~firstLeadingBit(firstTrailingBit(vec3<u32>(15483u, 1u, 38180u)) & vec3<u32>(0u, global0.c.x, 0u)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(6300i, u_input.a.x, global0.b.x), abs(vec3<i32>(-1i, 16050i, u_input.a.x)) | select(u_input.a, vec3<i32>(-13731i, -21421i, -2147483647i), arg_0.x)) & global0.e);
    let var_1 = global0.a.x;
    return Struct_1(select(!(!select(global0.a, vec4<bool>(arg_0.x, arg_0.x, global0.a.x, arg_0.x), true)), !vec4<bool>(true, true, arg_0.x & false, arg_0.x), global0.a), vec4<i32>(u_input.a.x, ~_wgslsmith_add_i32(abs(38705i), -1i), firstLeadingBit(global0.b.x), reverseBits(global0.b.x)), vec3<u32>(firstTrailingBit(~countOneBits(36352u)), ~(~u_input.c | arg_1), u_input.c), true, u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> i32 {
    global0 = func_4(select(select(select(select(global0.a.zww, global0.a.wzz, global0.a.wxz), func_2(1u, Struct_1(global0.a, global0.b, arg_2.wyy, global0.d, arg_0), 662f), !global0.d), vec3<bool>(2147483647i <= global0.b.x, global0.d, global0.a.x), global0.d), global0.a.zxy, true), _wgslsmith_mod_u32(arg_1.x, ~4294967295u));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 321f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(!global0.d, Struct_2(global0.a.x, vec2<f32>(-1001f, -323f), Struct_1(vec4<bool>(true, false, false, global0.a.x), global0.b, vec3<u32>(1u, 1u, arg_2.x), false, 1i), global0.a.x, Struct_1(vec4<bool>(true, global0.a.x, global0.a.x, false), global0.b, u_input.b.xxw, true, 9828i)))).x)));
    global0 = Struct_1(vec4<bool>(all(func_2(65030u, Struct_1(vec4<bool>(global0.d, true, global0.a.x, false), global0.b, u_input.b.ywz, global0.d, u_input.a.x), -935f).xx) && !global0.d, (true | (global0.c.x >= arg_2.x)) != global0.d, all(vec2<bool>(true, var_0.x <= 182f)), global0.d), _wgslsmith_clamp_vec4_i32(global0.b, vec4<i32>(global0.e | 20797i, _wgslsmith_add_i32(func_4(global0.a.zyx, 4294967295u).e, 25537i), ~(~(-1i)), 2147483647i), vec4<i32>(-2147483647i, -33889i, -_wgslsmith_mult_i32(2147483647i, 1i), 68364i)), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(12234u, 4294967295u, u_input.c), ~vec3<u32>(global0.c.x, arg_2.x, 4294967295u))), !any(vec3<bool>(true, false, all(global0.a.yw))), abs(max(arg_0, 1i)));
    let var_1 = global0.a.wx;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1673f, -102f) * _wgslsmith_f_op_f32(-2144f + 1792f)))) >= var_0.x, vec2<f32>(481f, _wgslsmith_f_op_f32(-var_0.x)), Struct_1(global0.a, global0.b, arg_2.yzw, true, select(arg_0, -8297i, any(global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -534f) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1f, -1000f, true)))), Struct_1(global0.a, global0.b, u_input.b.wzy, !(!(!global0.d)), u_input.a.x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec4<i32>(-global0.e, u_input.a.x, _wgslsmith_add_i32(0i, ~global0.b.x), global0.b.x), _wgslsmith_div_vec3_u32(firstTrailingBit(global0.c), firstTrailingBit(~vec3<u32>(1u, 3904u, global0.c.x) >> (~vec3<u32>(4294967295u, 4294967295u, 12614u) % vec3<u32>(32u)))), false, 2147483647i);
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2685f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f) + -682f))), Struct_1(global0.a, vec4<i32>(~_wgslsmith_mult_i32(u_input.a.x, global0.e), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.e, 1i, global0.e), vec4<i32>(u_input.a.x, global0.e, global0.b.x, global0.e)), func_1(~global0.e, select(global0.c.zz, vec2<u32>(1u, u_input.b.x), false), vec4<u32>(0u, global0.c.x, 14339u, u_input.c)), i32(-1i) * -1i), u_input.b.zzy, any(func_2(u_input.c, Struct_1(vec4<bool>(global0.d, global0.d, global0.d, global0.d), vec4<i32>(10896i, u_input.a.x, -37648i, -1i), global0.c, global0.d, global0.b.x), -1610f).zy), -u_input.a.x >> (u_input.b.x % 32u)), !select(any(global0.a.zxz), global0.a.x, global0.a.x), func_4(vec3<bool>(all(global0.a.yx) | global0.d, all(vec4<bool>(true, true, true, true)), false), 0u));
    let var_1 = var_0.b.x;
    var_0 = Struct_2(true, vec2<f32>(324f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_div_f32(1499f, var_0.b.x))) * var_0.b.x)), var_0.e, false, func_4(vec3<bool>(!(!var_0.e.d), any(!var_0.c.a.yzy), any(global0.a) | var_0.d), ~(1u << ((var_0.e.c.x & 43247u) % 32u))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(1577f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-290f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(261f, var_0.b.x) - 569f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-642f, -580f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + var_0.b.x)), var_0.b.x);
    global0 = func_4(select(global0.a.wwx, global0.a.zxz, !vec3<bool>(var_0.a && true, true, !var_0.c.a.x)), _wgslsmith_sub_u32(~var_0.e.c.x, ~(~67222u)));
    global0 = func_4(var_0.e.a.xxz, ~_wgslsmith_div_u32(~(~10539u), global0.c.x));
    let var_3 = Struct_2(all(var_0.c.a.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 659f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1528f, 1474f), vec2<f32>(-446f, var_2.x), global0.a.x & false)))), func_4(!(!var_0.e.a.zyy), ~_wgslsmith_sub_u32(~26027u, u_input.c)), false, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec2<u32>(41340u, var_0.e.c.x) & vec2<u32>(1u, 0u)) >> (var_3.c.c.yz % vec2<u32>(32u)), 73301u, firstLeadingBit(abs(vec2<i32>(var_0.c.e, var_3.c.b.x) & ~var_3.e.b.zz)), ~global0.c.x | (firstLeadingBit(1u) >> (var_0.e.c.x % 32u)));
}

